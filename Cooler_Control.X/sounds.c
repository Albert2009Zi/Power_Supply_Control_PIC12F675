#include "sounds.h"
#include <xc.h>

#define _XTAL_FREQ   4000000 

void LongSound(){
   GP2 = 1;
    __delay_ms(200);
   GP2 = 0; 
    __delay_ms(100);
}

void ShortSound(){
   GP2 = 1;
    __delay_ms(500);
   GP2 = 0; 
    __delay_ms(100); 
}

void TwoShortOneLong(){
   ShortSound();
   ShortSound();
   LongSound();
   __delay_ms(700);
}

void TwoShortTwoLong(){
   ShortSound();
   ShortSound();
   LongSound();
   LongSound();
   __delay_ms(700);
}

void TwoShort(){
   ShortSound(); 
   ShortSound();
   __delay_ms(700);
}

void ThreeShort(){
   ShortSound();
   ShortSound();
   ShortSound();
   __delay_ms(700);
}

void ThreeLong(){
   LongSound();
   LongSound();
   LongSound();
   __delay_ms(700);
}

void ThreeLongOneShort(){
   LongSound();
   LongSound();
   LongSound(); 
   ShortSound();
   __delay_ms(700);
}