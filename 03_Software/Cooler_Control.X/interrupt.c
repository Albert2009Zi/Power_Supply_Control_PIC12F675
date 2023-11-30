#include "interrupt.h"
#include <xc.h>
#include <stdint.h>

#define _XTAL_FREQ   4000000

extern uint8_t pwmValue;
extern uint16_t adcValue;
uint8_t pulsePerTakt = 0;

void __interrupt() ISR(void)
{      
//      TMR0 = 200; 
//      pulsePerTakt++;
//	  if(T0IF)  //If Timer0 Interrupt
//	   {
//        if (pulsePerTakt < pwmValue)
//         {GP4 = 1;}
//        else               
//		 {GP4 = 0;} 
//		T0IF = 0;   // Clear the interrupt
//	   }  
//      if (pulsePerTakt > 100)
//       {
//         pulsePerTakt = 0; 
//       }
     if (T0IE && T0IF){ 
     pulsePerTakt++;
	 // if(T0IF)  //If Timer0 Interrupt
	 //  {
        if (pulsePerTakt < pwmValue) GP4 = 1;
         else GP4 = 0; 
	  T0IF = 0;   // Clear the interrupt    
      if (pulsePerTakt > 100) pulsePerTakt = 0; 
     }
     
     
     
     if (ADIF == 1){
     
   
     adcValue = (uint16_t) ((ADRESH << 8) + ADRESL); /* ADC result */     
       
     if ((adcValue > 190) && (adcValue < 285)){
         GP5 = 0;
       }           
      else if (adcValue <= 190) { 
         GP5 = 1; 
	// TwoShortOneLong();    
       }
      else if (adcValue >= 285){
         GP5 = 1;
	// TwoShortTwoLong();   
     } 
         
       ADIF = 0;
       __delay_us(30);
       GO     = 1; 
     }
      
      
      
}

