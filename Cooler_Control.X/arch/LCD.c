#include "LCD.h"

void ToggleEpinOfLCD(void)
{
	LCD_E = 1;                // Give a pulse on E pin
	__delay_us(E_Delay);      // so that LCD can latch the
	LCD_E = 0;                // data from data bus
	__delay_us(E_Delay); 	
}

void WriteByteToLCD(unsigned Byte)
{
	unsigned char BitCount = 0;

	for(BitCount=0; BitCount<8; BitCount++)
	{
		LCD_D = (((Byte>>BitCount)&0x1)!=0);   // Write bit value

		LCD_CLK = 1;                           // Toggle Clock pin to transfer it
		__delay_us(10);
		LCD_CLK = 0;
		__delay_us(10);
	}
}

void WriteCommandToLCD(unsigned char Command)  
{
	WriteByteToLCD((Command&0xF0)>>4);   // Write Upper nibble
	ToggleEpinOfLCD();
	WriteByteToLCD(Command&0x0F);        // Write Lower nibble
	ToggleEpinOfLCD();
}

void WriteDataToLCD(char LCDChar)  
{
	WriteByteToLCD(((LCDChar&0xF0)>>4)|0x80);   // Write Upper nibble
	ToggleEpinOfLCD();
	WriteByteToLCD((LCDChar&0x0F)|0x80);        // Write Lower nibble
	ToggleEpinOfLCD();
}

void WriteStringToLCD(unsigned char *s)
{
	while(*s)
		WriteDataToLCD(*s++);   // print first character on LCD 
}

void InitLCD(void)
{ 
	// Firstly make all pins output
	LCD_E    = 0;        // E = 0
	LCD_D    = 0;        // D = 0
	LCD_CLK  = 0;		 // CLK = 0
	LCD_E_Dir   = 0;     // Make Output
	LCD_D_Dir   = 0;     // Make Output
	LCD_CLK_Dir = 0;     // Make Output

  ///////////////// Reset process from datasheet //////////////
   __delay_ms(40);

	WriteByteToLCD(0x03);    
	ToggleEpinOfLCD();

   __delay_ms(6);

	WriteByteToLCD(0x03);    
	ToggleEpinOfLCD();

   __delay_us(300);

	WriteByteToLCD(0x03);    
	ToggleEpinOfLCD();

   __delay_ms(2);

	WriteByteToLCD(0x02);    
	ToggleEpinOfLCD();

   __delay_ms(2);
  /////////////// Reset Process End ////////////////
	WriteCommandToLCD(0x28);    //function set
	WriteCommandToLCD(0x0c);    //display on,cursor off,blink off
	WriteCommandToLCD(0x01);    //clear display
	WriteCommandToLCD(0x06);    //entry mode, set increment
}

void ClearLCDScreen(void)       // Clear the Screen and return cursor to zero position
{
	WriteCommandToLCD(0x01);    // Clear the screen
	__delay_ms(2);              // Delay for cursor to return at zero position
}