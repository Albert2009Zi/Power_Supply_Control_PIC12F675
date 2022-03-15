#include "interrupt.h"
#include <xc.h>

extern unsigned char PWM_Value;

void __interrupt() ISR(void)
{      
      TMR0 = PWM_Value;
	  if(T0IF)  //If Timer0 Interrupt
	   {
        if (PWM_Value == 0)
        {GP4 = 0;}
        else if (PWM_Value != 0)                
		{GP4 = ~GP4;} // Toggle GP4 pin
		T0IF = 0;   // Clear the interrupt
	   }   
}
