#include "interrupt.h"
#include <xc.h>
#include <stdint.h>

extern   uint8_t pwmValue;
volatile uint8_t highLevelTime = 0;

void __interrupt() ISR(void){  
   
             TMR0 = 200;                                 /* Timer0 interval 200us   */
             highLevelTime++;                            /* highLevelTime increment */ 
	          if(T0IF){                                  /* If Timer0 Interrupt     */
	           if (highLevelTime < pwmValue) GP4 = 1;    /* High level on GP4 until */
                                                         /* pwmValue                */ 
                 else GP4 = 0;                           /* after low Level on GP4  */
       
	           T0IF = 0;                                 /* Clear the interrupt     */
              }      
      
             if (highLevelTime > 100) highLevelTime = 0; /* Next cycle of pwm       */ 
 
}    
