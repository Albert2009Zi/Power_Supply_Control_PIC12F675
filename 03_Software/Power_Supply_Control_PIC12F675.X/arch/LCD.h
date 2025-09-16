/* 
 * File:   LCD.h
 * Author: User
 *
 * Created on 16 ??????? 2022 ?., 20:48
 */

#ifndef LCD_H
#define	LCD_H

#include <xc.h> 
#define _XTAL_FREQ 4000000

// Define Pins
#define LCD_E    GP0   // Enable pin for LCD
#define LCD_CLK  GP1   // Serial clock pin
#define LCD_D    GP2   // Serial data pin

// Define Pins direction registers
#define LCD_E_Dir      TRISIO0
#define LCD_CLK_Dir    TRISIO1
#define LCD_D_Dir      TRISIO2


// Constants
#define E_Delay       150   // micro seconds


// Function Declarations
void WriteCommandToLCD(unsigned char);
void WriteDataToLCD(char);
void InitLCD(void);
void ClearLCDScreen(void);
void WriteStringToLCD(unsigned char *s);


#endif	/* LCD_H */


