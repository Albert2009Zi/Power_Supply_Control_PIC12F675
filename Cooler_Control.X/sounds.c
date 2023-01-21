#include "sounds.h"
#include <xc.h>

#define _XTAL_FREQ   4000000 

void SimpleTone() {
  GP2 = 1;
  __delay_ms(10);
  GP2 = 0;
  __delay_ms(10);  
}

void LongSound(){
   for(int cnt = 0; cnt < 65; cnt++){
     SimpleTone();  
   }   
}

void ShortSound(){
   for(int cnt = 0; cnt < 65; cnt++){
     SimpleTone();  
   }   
}

void TwoShortOneLong(){
   ShortSound();
    __delay_ms(200); 
   ShortSound();
    __delay_ms(200);
   LongSound();
}

void TwoShortTwoLong(){
   ShortSound();
    __delay_ms(200); 
   ShortSound();
    __delay_ms(200);
   LongSound();
    __delay_ms(200);
   LongSound();
}

void TwoShort(){
   ShortSound();
    __delay_ms(200); 
   ShortSound();
}

void ThreeShort(){
   ShortSound();
    __delay_ms(200); 
   ShortSound();
    __delay_ms(200); 
   ShortSound();
}

void ThreeLong(){
   LongSound();
    __delay_ms(200);
   LongSound();
    __delay_ms(200);
   LongSound();
}

void ThreeLongOneShort(){
   LongSound();
    __delay_ms(200);
   LongSound();
    __delay_ms(200);
   LongSound();
    __delay_ms(200); 
   ShortSound();
}