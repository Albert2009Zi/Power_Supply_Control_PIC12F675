#include "Defines_And_Prototypes.h"

#define _XTAL_FREQ 4000000

extern unsigned char PWM;
extern int ADC_value;

void Init_uC()
{
    
    /* Begin */
//    /*Sets Pin2 of chip as digital output */
//    TRISIO5 = 0;     /* Sets GP5 as output                          */
//    GP5     = 1;     /* Sets on GP5 high level                      */
//    
//    /*Sets Pin5 of chip as digital output*/
//    TRISIO2 = 0;     /* Sets GP2 as output                          */
//    GP2     = 0;     /* Sets on GP2 low level                      */
//    
//    /*Sets Pin6, Pin7 of chip as ADC inputs  */
//    ADON    = 1;           /* ADC is ON                                   */
//    ADFM    = 1;
//    VCFG    = 0;           /* Sets Vref = Vdd                             */
//    TRISIO0 = 1;           /* Sets GP0 as input                           */
//    TRISIO1 = 1;           /* Sets GP1 as input                           */
//    ANSEL   = 0b01010011;  /* Sets Tosc = 4 us and GP0, GP1 as analog     */     
    /* End */
    
    /*Sets all Pins of chip as digital output */
    TRISIO  = 0;
    GPIO    = 0;
    
    /*Sets Pin4 of chip as ADC input  */
    ADON    = 1;           /* ADC is ON                                   */
    ADFM    = 1;
    VCFG    = 0;           /* Sets Vref = Vdd                             */
    TRISIO4 = 1;           /* Sets GP4 as input                           */
    ANSEL   = 0b01011000;  /* Sets Tosc = 4 us and GP4 as analog     */  
    CHS1 = 1;
    CHS0 = 1; 
    
    
}



/* ADC measurement Begin */
void Get_Voltage (/* uint8_t Chanel_Number */)
{    
//    switch(Chanel_Number)
//    {
//            case CH0:        
//              ADC0;
//              break;
//            case CH1:
//              ADC1;
//              break;
//            case CH3:
//              ADC3;
//              break;
//            default:
//              break; 
//    }         
    GO = 1;
    while(GO);
    __delay_us(10);    /* Pause = 2Tad*/
    
}
/* ADC measurement End */

/**/
void System_Start_Control()
{
    Get_Voltage();
    
//    ADC_Result = ((uint16_t)(ADRESH << 8) + ADRESL);
//    ADC_Result = (ADC_Result*5)/1024;
   
//       if ((ADRESH  > BUTTON_LOW_VALUE) && (ADRESH < BUTTON_HIGH_VALUE))
//       {
//         GP5 = 0; /* Turns ON our device */
//         Temperature_Control();
//       }  
//       else if ((ADRESH <= BUTTON_LOW_VALUE) || (ADRESH >= BUTTON_HIGH_VALUE))
//       {
//         GP5 = 1; /* Device states us shuts down */  
//       }     
//       
   
}


 void Temperature_Control()
 {
    
   // Get_Voltage();
    
    
    
     
         if ((ADC_value >= 460) && (ADC_value < 614))
         {PWM = 127;}
         else if ((ADC_value >= 614) && (ADC_value < 737))
         {PWM = 191;}
         else if (ADC_value >= 737)
         {PWM = 255;}
         else if (ADC_value < 460)
         {PWM = 64;}    
     
 
 }
 
 
