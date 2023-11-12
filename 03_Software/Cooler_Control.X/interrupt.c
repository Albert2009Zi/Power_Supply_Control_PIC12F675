#include "interrupt.h"

extern uint8_t pwmValue;
uint8_t pulsePerTakt = 0;

void __interrupt() ISR(void)
{      
      TMR0 = 200; 
      pulsePerTakt++;
	  if(T0IF)  //If Timer0 Interrupt
	   {
        if (pulsePerTakt < pwmValue)
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
