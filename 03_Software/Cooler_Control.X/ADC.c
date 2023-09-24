#include "ADC.h"
#include <xc.h>
#include "sounds.h"
#include <stdint.h>

#define _XTAL_FREQ   4000000 

extern unsigned int pwmValue;
extern int adcValue;

uint8_t errorFlag = 0;

void Init_uC(){    
	CMCON  = 0x07;		   /* Shut down the Comparator                        */
    VRCON  = 0x00;         /* Shut down Comparator reference Voltage          */
    
    /* Sets all Pins of chip as digital output  */
    TRISIO  = 0;
    GPIO    = 0;
    
    /* Sets GP2 (Pin 5) in nessesary conditions */
    TRISIO2 = 0;           /* Sets GP2 (Pin 5) as output                      */
    GP2     = 0;           /* Low level on GP2 (Pin 5)                        */
    
    /* Sets GP5 (Pin 2) in nessesary conditions */
    TRISIO5 = 0;           /* Sets GP5 (Pin 2) as output                      */
    GP5     = 1;           /* High level on GP5 (Pin 2)                       */
    
    /* Sets GP4 (Pin 3) in nessesary conditions */
    TRISIO4 = 0;           /* Sets GP4 (Pin 3) as output                      */
    GP4     = 0;           /* High level on GP4 (Pin 3)                       */
    
    
    /*Sets Pin4 of chip as ADC input  */
    ADON    = 1;           /* ADC is ON                                       */
    
    VCFG    = 1;           /* Sets Vref = Vpin6                                 */
    TRISIO0 = 1;           /* Sets GP0 (Pin 7) as input. Temperature control  */
    TRISIO1 = 1;           /* Sets GP1 (Pin 6) as input. Button control       */
    
    ANSEL   = 0b00110011;  /* Sets Tosc = 4us (RC Generator)                  **
                                                       */  
                
    GIE  = 1;			   /* Enable global interrupts                        */
    
    LongSound();
    __delay_ms(700);
    
}


void Pin6VoltageControl (void){
    
   MeasureVoltage();
     
     if ((adcValue > 185) && (adcValue < 278)){
         if (errorFlag == 0) GP5 = 0;
          else 
         if (errorFlag == 1){     
           if ((adcValue > 250) && (adcValue < 260)){
             GP5       = 0;    
	         errorFlag = 0;
             }
         }
         }
     else 
         if (adcValue <= 190) { 
         GP5 = 1;
         errorFlag = 1;
         TwoShortOneLong(); 
        }
     else if (adcValue >= 285){
         GP5 = 1;
         errorFlag = 1;
         TwoShortTwoLong();    
     }  
}

void Pin7ThermoControl (void){
    
       MeasureTemp();
             
             if (adcValue < 200)  /* Pin 7 Signal is in low level < 1V. Error */
	        {
		      GP5             = 1;  /* Error on termocontrol and outer comparator Pin */
              pwmValue        = 0;      
	          do{
		      MeasureTemp();
		      ThreeLongOneShort();
		     } 
		  while(adcValue < 200);
		  
		  }
                
             else if ((adcValue >= 200) && (adcValue < 880)){ /* Temperature is good, cooler is off */
                        //GP5      = 0; 
                        pwmValue = 0;
                       }
             else if ((adcValue >= 880) && (adcValue < 910)){ /* Temperature is between 43 and 57 degrees Celsium */
                        //GP5      = 0;                                       /* Cooler PWM is 30% */
                        pwmValue = 30;
                       }
             else if ((adcValue >= 910) && (adcValue < 940)){ /* Temperature is between 57 and 71 degrees Celsium */
                        //GP5      = 0; 
                        pwmValue = 45;                        /* Cooler PWM is 45% */ 
                       }
             else if ((adcValue >= 940) && (adcValue < 970)){ /* Temperature is between 71 and 85 degrees Celsium */
                        //GP5      = 0; 
                        pwmValue = 55;                        /* Cooler PWM is 55% */
                        ThreeShort();
                       }
             else  {
	                GP5      = 1;
                        pwmValue = 85;   
	           do { /* Temperature is high than 85 degrees Celsium. Error */
                        MeasureTemp();
			ThreeShort();
		      }	
		   while (adcValue >= 970);
		   }
}

int MeasureTemp(void){

       ADCON0 = 0x00;   
       ADFM = 1;               /* ADC results is right justified                            */
       ADON = 1;               /* ADC channel 0 (AN0) "Thermal control" by default, ADC is ON    */ 
    
       __delay_ms(5); 
       GO   = 1;
       while(!ADIF);  /* make ADC Measurement */
       __delay_ms(5);
    
       adcValue = (int) ((ADRESH << 8) + ADRESL); /* ADC result */

       return adcValue;

}

int MeasureVoltage(void){
    
    ADCON0 = 0x00;  
    ADFM = 1;               /* ADC results is right justified                            */
    CHS1 = 0;   
    CHS0 = 1;              /* Enable ADC channel 1 (AN1) "Power ON button", ADC is ON    */    
    ADON = 1;   
    
     __delay_ms(10); 
     
       GO   = 1;
       while(!ADIF);       /* make ADC Measurement */
     __delay_ms(10);
     
       adcValue = (int) ((ADRESH<<8)+ADRESL); /* ADC result*/
       
       return adcValue;
}
