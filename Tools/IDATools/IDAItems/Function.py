#
# @Author Lan
# This module abstracts operations on Functions and CFunctions in IDAPython.
# It allows easy modification of propreties related to functions, and the
# abiility to save all modifications easily.
#

import idautils
import idaapi
import idc

from IDAItems import Data

idaapi.require("IDAItems.Data")



def isFunction(ea):
    return idc.get_func_flags(ea) != -1

class FunctionException(Exception):
    def __init__(self, s):
        super(Exception, self).__init__(s)
        pass


class Function:
    func = None  # func_t
    func_ea = None  # ea_t

    def __init__(self, func_ea):
        """
        :raises: InvalidFunctionException if func_ea does not live within a function, or the function is not defined.
        :param func_ea: long: Effective Address of function to manipulate
        """
        # If the current address is a function process it
        if idc.get_func_flags(func_ea) != -1:

            self.func = idaapi.get_func(func_ea)
            self.func_ea = self.func.startEA
        else:
            raise (FunctionException("Address %08x does not live within a function" % func_ea))

    def getName(self):
        return idaapi.get_func_name(self.func_ea)

    def setName(self, funcName):
        # type: (str) -> None
        """
        Same as in Head. Kept for reference.
        :param funcName:  (str) name of the function
        """
        idc.MakeName(self.func_ea, funcName)

    def getPrototype(self):
        """
        :return: (str) representing the return type
        :raises idaapi.DecompilationFailure: if function is not decompilable
        """
        # return idc.get_type(self.func_ea) Only works if type is defined with 'y' in disassembly
        cfunc = idaapi.decompile(self.func)
        retType = idaapi.tinfo_t()
        cfunc.get_func_type(retType)
        return str(retType)

    def getFuncPtrCMacro(self):
        """
        Will return the Prototype of the function in the format:
        #define <funcName> ((<retType> (*) (<params>)) (<funcAddr>+1))
        Example:
        #define sound_play ((void (*)(int a1, int a2, int a3))(0x080005CC+1))
        this DOES assume that the function is THUMB.
        TODO: Support ARM Functions too!
        :return: (str) Function pointer in a CMacro definition.
        """
        try:
            prototype = self.getPrototype()
            retType = prototype[0:prototype.index('(')]
            params = prototype[prototype.index('(') : prototype.index(')')+1]
            funcAddr = '0x%08X' % self.func_ea
            output = '#define ' + self.getName() + ' ((' + retType + ' (*) ' + params + ') (' + funcAddr + ' +1))'
        except idaapi.DecompilationFailure:
            funcAddr = '0x%08X' % self.func_ea
            output = '#define ' + self.getName() + ' ((void (*) () (' + funcAddr + ' +1))'
        return output

    def ongoing_getParameters(self):
        """
        :return: A list of tuples of (typeName, paramName)
                 int a2 would give ('int, 'a2')
        """
        raise(NotImplemented())

    def getXRefsTo(self):
        """
        Computes a list of the names of the xrefs to the function.
        This includes all functions that call this, but also data xrefs.
        :returns: a tuple of two lists: crefs and drefs
        """
        # type: () -> (list[int], list[int])
        crefs = []
        drefs = []
        # If the current address is function process it
        if idc.get_func_flags(self.func_ea) != -1:
            # Find all code references to func
            ref = idc.get_first_cref_to(self.func_ea)
            while ref != idaapi.BADADDR:
                # name = get_func_name(ref)
                # if not name: name = "ROM:%08X" % ref
                crefs.append(ref)
                ref = idaapi.get_next_cref_to(self.func_ea, ref)
            # Find all data references to func
            for ref in idautils.DataRefsTo(self.func_ea):
                drefs.append(ref)
            for ref in idautils.DataRefsTo(self.func_ea + 1):
                drefs.append(ref)

            return crefs, drefs

    def getXRefsFrom(self):
        # type: () -> (list[int], list[int])
        """
        computes code references called from this function, and data references accessed
        if the data reference accessed is a pool variable, and it's a pointer,
        the pointer is given instead (as compliant with the LDR RX =<refInPool> syntax)
        This defines all data and code dependencies in the function
        :return:
        """
        crefs = []
        drefs = []


        # normalFlow = True
        # for ref in idautils.CodeRefsFrom(self.func_ea, normalFlow):  # XrefsFrom
        #     crefs.append(ref)
        # for ref in idautils.CodeRefsFrom(self.func_ea, not normalFlow):  # XrefsFrom
        #     crefs.append(ref)
        # for ref in idautils.CodeRefsFrom(self.func_ea-1, normalFlow):  # XrefsFrom
        #     crefs.append(ref)
        # for ref in idautils.CodeRefsFrom(self.func_ea-1, not normalFlow):  # XrefsFrom
        #     crefs.append(ref)

        # needed to identify pool variables. drefs accessing the pool may access pointers
        # in the pool. the pointers should be retrieved instead
        size_pool = self.getSize(withPool=True)

        # for each instruction
        for i in idautils.FuncItems(self.func_ea):
            for xref in idautils.XrefsFrom(i, 0):
                # if the xref is to a far or near called function
                if xref.type == idc.fl_CN or xref.type == idc.fl_CF:
                    if xref.to not in crefs:
                        crefs.append(xref.to)
                # if the xref is to a read or write data access
                if xref.type == idc.dr_W or xref.type == idc.dr_R:
                    print("%08X: %08X" % (i, xref.to))
                    if xref.to not in drefs:
                        # if xref.to is in the pool, then retrieve content if it's a pointer
                        if xref.to < self.func_ea + size_pool:
                            # those are the references found at the pool location
                            iteratedOnce = False
                            for poolRef in idautils.XrefsFrom(xref.to, 0):
                                if iteratedOnce:
                                    raise(FunctionException("%08X: there should only be one data xref in pool variable"
                                                            % (self.func_ea)))
                                # there should only be one in the pool refernce
                                if poolRef.to not in drefs:
                                    drefs.append(poolRef.to)
                                iteratedOnce = True
                        else:
                            drefs.append(xref.to)

        # for ref in idautils.DataRefsFrom(self.func_ea):
        #     drefs.append(ref)
        # for ref in idautils.DataRefsFrom(self.func_ea - 1):
        #     drefs.append(ref)
        return crefs, drefs

    def getComment(self):
        # type: () -> str
        """
        TODO: Sometimes the comment is repeatable (created through decomp) or not (created through disass).
        What to return???? Why not whichever works?
        """
        cmt = idc.get_func_cmt(self.func_ea, 1)
        if not cmt: cmt = idc.get_func_cmt(self.func_ea, 0)
        return cmt

    def setComment(self, cmt):
        # type: (str) -> ()
        """
        TODO: repeatable or not???
        :param cmt: Comment to be set as a function comment
        :return:
        """
        idaapi.set_func_cmt(self.func, cmt, 1)

    def getSize(self, withPool=False):
        """
        Computes the size of the function the first time this is called, and caches that computation for later
        :param withPool: (bool) somewhat of a heuristic. Computes the pool size as simply the amount of bytes since
                         the function's code portion finished (endEA) until a new code head is detected
        :return:  Returns the size of the Function in bytes: EndEA - StartEA (if no pool selected, otherwise + pool)
        """
        if not withPool: return self.func.end_ea - self.func.start_ea
        try:
            return self._size
        except AttributeError:
            head = self.func.end_ea
            while not idc.isCode(idc.GetFlags(head)):
                head += idc.get_item_size(head)
            self._size = head - self.func.start_ea
            return self._size

    def getBoundaries(self):
        """
        :return: Tuple of Start address and end address of function
        """
        return self.func.start_ea, self.func.end_ea

    def getPoolData(self):
        # type: () -> (list[Data.Data])
        """
        Using the computed pool size algorithm, all data items within the pool can be identified and
        created.
        :return: A list of all data items in the pool of this function
        """
        output = []
        # start from the beginning of the pool area
        ea = self.getSize(withPool=False)
        while ea < self.getSize(withPool=True):
            # create and append the data item
            data = Data.Data(ea)
            output.append(data)
            # advance ea by the size of the curr data item
            ea += data.getSize()
        return output


def printRefs(crefs, drefs):
    s = ''
    s += '['
    for ref in crefs:
        s += str(hex(ref)) + ', '
    s = (len(s) > 8) and s[0:-2] + '] ' or s + '] '
    len1 = len(s)

    s += '['
    for ref in drefs:
        s += str(hex(ref)) + ', '
    s = (len(s) - len1 > 8) and s[0:-2] + '] ' or s + '] '

    print(s)


def RunTesting():
    func = Function(idc.here())
    print(func.getComment())
    func.enumerateCrossReferences()
    # crefs, drefs = func.ongoing_getXRefsFrom()
    # printRefs(crefs, drefs)


if __name__ == '__main__':
    RunTesting()
