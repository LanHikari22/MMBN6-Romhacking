#ifndef TEXT_GENERATOR_H
#define TEXT_GENERATOR_H

#include "structs/inttypes.h"
#include "scriptCommands.h"
#include "main.h"

#define tg_max_str_len 255
extern void chatbox_runScript(u16*, u8);

// This is an array specifying a conversion between ASCII and game text
static const char tg_ascii2GameText[128] =
{ 0xE7, 0xE6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA2, 0xAA, 0x00, 0x00, 0x9C, 0xA3,
  0xA9, 0xAD, 0xAE, 0x25, 0x9E, 0xA4, 0x98, 0xA6, 0xAC, 0x01, 0x02, 0x03, 0x04,
  0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x9B, 0xA8, 0x00, 0x9A, 0x00, 0x9D, 0x00,
  0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
  0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24,
  0x00, 0x00, 0x00, 0x00, 0xB2, 0x00, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C,
  0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39,
  0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F, 0x00, 0x00, 0x00, 0xAB, 0x00
};

void tg_startBattle(u16 index);

/**
 * Prints a message using the chatbox!
 * @param str       ASCII string to print in GameText
 * @param mugshot   mugshot to be used in the chatbox
 */
void tg_chatPrint(const char* str, uint8_t mugshot);

/**
 * Returns the first script associated with a Script list that links to its script components.
 * currScript = script + (script + 2 * offset)[0]
 *
 * @param scriptList	This array should contain enough space for 9 + strlen(str)
 */
sc_script* tg_setupScriptList(uint16_t *scriptList);

void tg_invoke_script_engine(uint16_t *scriptList);

/**
 * Determines if given r1_pScript is at its start.
 * This is done by checking by checking if it's currently at
 * the command msgOpen (0xE8 0x00).
 * @param r1_pScript
 * @return r0_atScriptStart (false: 0, true: 1)
*/
extern bool_t tg_atScriptStart(char* pScript);

/**
 * Converts a r1_pText to gametext. Generates gametext at specified r2_pGameText
 * [side-effects]
 * @param r2_pText
 * @param r3_pGameText
 * @return
*/

extern void tg_toGameText(const char* pText, char* pGameText);

/**
 *
 * @param r1_asciiChar
 * @return r0_gameChar
*/
extern char tg_toGameChar(char asciiChar);

#endif // TEXT_GENERATOR_H
