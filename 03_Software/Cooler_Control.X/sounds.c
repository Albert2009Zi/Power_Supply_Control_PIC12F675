#include "sounds.h"

void LongSound(){
   GP2 = 1;
    __delay_ms(150);
   GP2 = 0; 
    __delay_ms(80);
}

void ShortSound(){
   GP2 = 1;
    __delay_ms(60);
   GP2 = 0; 
    __delay_ms(80); 
}

void TwoShortOneLong(){
   ShortSound();
   ShortSound();
   LongSound();
   __delay_ms(300);
}

void TwoShortTwoLong(){
   ShortSound();
   ShortSound();
   LongSound();
   LongSound();
   __delay_ms(300);
}

void ThreeLongOneShort(){
   LongSound();
   LongSound();
   LongSound(); 
   ShortSound();
   __delay_ms(300);
}  


