#include <xc.h>
#include <stdint.h>
#include "interrupt.h"

#define _XTAL_FREQ   4000000 

uint16_t       highLevelCounter = 0;
extern uint8_t pwmValue; 

void __interrupt() ISR(void)
{       
    TMR0 = 200;                                          // Timer0 overload after every 200us 
    if (T0IE && T0IF){                                   // Timer0 is overload 
         highLevelCounter++;                             //  
	   if (highLevelCounter < pwmValue)  GP4 = 1;
             else GP4 = 0; 
	 T0IF = 0;                                            // Clear the interrupt    
      if (highLevelCounter > 100) highLevelCounter = 0;         
     } 
    
}


