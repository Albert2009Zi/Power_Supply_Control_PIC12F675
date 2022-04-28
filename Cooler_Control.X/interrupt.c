#include "interrupt.h"
#include <xc.h>

extern unsigned int PWM_Value;
unsigned int pulsePerTakt = 0;

void __interrupt() ISR(void)
{      
      TMR0 = 200;
      pulsePerTakt++;
	  if(T0IF)  //If Timer0 Interrupt
	   {
        if (pulsePerTakt < PWM_Value)
         {GP4 = 1;}
        else               
		 {GP4 = 0;} 
		T0IF = 0;   // Clear the interrupt
	   }  
      if (pulsePerTakt > 100)
       {
         pulsePerTakt = 0; 
       }
}
