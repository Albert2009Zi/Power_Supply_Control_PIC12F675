#include "Defines_And_Prototypes.h"

#define _XTAL_FREQ 4000000

volatile uint16_t ADC_Result = 0;

void Init_uC()
{
    /*Sets Pin2 of chip as digital output */
    TRISIO5 = 0;     /* Sets GP5 as output                          */
    GP5     = 1;     /* Sets on GP5 high level                      */
    
    /*Sets Pin5 of chip as digital output*/
    TRISIO2 = 0;     /* Sets GP2 as output                          */
    GP2     = 0;     /* Sets on GP2 low level                      */
    
    /*Sets Pin6, Pin7 of chip as ADC inputs  */
    ADON    = 1;           /* ADC is ON                                   */
    ADFM    = 1;
    VCFG    = 0;           /* Sets Vref = Vdd                             */
    TRISIO0 = 1;           /* Sets GP0 as input                           */
    TRISIO1 = 1;           /* Sets GP1 as input                           */
    ANSEL   = 0b01010011;  /* Sets Tosc = 4 us and GP0, GP1 as analog     */     
   
}

void Get_Voltage (uint8_t Chanel_Number)
{    
    switch(Chanel_Number)
    {
            case CH0:        
              ADC0;
              break;
            case CH1:
              ADC1;
              break;
           default:
              break; 
    }         
    GO = 1;
    while(GO);
    __delay_us(8);    /* Pause = 2Tad*/
    
}


uint8_t System_Start_Control()
{
    static uint8_t Pwr_Good = 0;
    Get_Voltage(CH1);
    
    ADC_Result = (uint16_t)(ADRESH << 8) + ADRESL;
    ADC_Result = (ADC_Result*5)/1024;
   
       if (((float)ADC_Result  > BUTTON_LOW_VALUE) && ((float)ADC_Result < BUTTON_HIGH_VALUE))
       {
         GP5 = 0; /* Turns ON our device */
         Pwr_Good = 1;  
       }  
       else if (((float)ADC_Result <= BUTTON_LOW_VALUE) || ((float)ADC_Result >= BUTTON_HIGH_VALUE))
       {
         GP5 = 1; /* Device states us shuted down */  
         Pwr_Good = 0;  
       }     
       
    return Pwr_Good;
}


 void Temperature_Control()
 {
    
    Get_Voltage(CH0);
    
    ADC_Result = (uint16_t)(ADRESH << 8) + ADRESL;
    
     if (System_Start_Control() != 0)
     {
         if (((float)ADC_Result >= 45.5f) && ((float)ADC_Result < 60.5f))
         {GP2 = 1;}
         else if (((float)ADC_Result >= 60.0f) && ((float)ADC_Result < 75.5f))
         {GP2 = 1;}
         else if ((float)ADC_Result >= 75.5f)
         {GP2 = 1;}
         else if ((float)ADC_Result < 45.5f)
         {GP2 = 0;}    
     }
 
 }
 