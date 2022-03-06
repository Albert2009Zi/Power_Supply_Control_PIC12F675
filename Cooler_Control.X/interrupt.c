#include "interrupt.h"
#include <xc.h>

#define _XTAL_FREQ   4000000 

unsigned char  PWM_Value = 0;
int  ADC_Value = 0;

void __interrupt() ISR(void)
{    
    __delay_us(10);
    GO = 1;
    while(!ADIF);  // make ADC Measurement
    __delay_us(10);
    
    ADC_Value = (int) ((ADRESH<<8)+ADRESL); // ADC result
    
    if (ADC_Value > 470)
          {GP5 = 0;}
    else  {GP5 = 1;}              
    
//    if (GP5)
//    {
//    CHS0 = 1;      //Temperature control channel on
//    GO = 1;
//    while(!ADIF);  // make ADC Measurement
//    __delay_us(10);
//    
//    ADC_Value = (int) ((ADRESH<<8)+ADRESL); // ADC result
//    
//             if (ADC_Value < 460)
//                       {PWM_Value = 0;}
//             else if ((ADC_Value >= 460) && (ADC_Value < 614))
//                       {PWM_Value = 127;}
//             else if ((ADC_Value >= 614) && (ADC_Value < 737))
//                       {PWM_Value = 185;}
//             else if ((ADC_Value >= 737) && (ADC_Value < 1023))
//                       {PWM_Value = 230;}
//   
//    }
    
    if(GP5 == 0)
    {
    PWM_Value = 127;    
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
}
