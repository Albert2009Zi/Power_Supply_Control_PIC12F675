#include <xc.h>
#include "sounds.h"

#define _XTAL_FREQ   4000000

extern uint16_t cnt1;

void ShortSound(){
    GP2 = 1;
    __delay_ms(120);
    GP2 = 0;
    __delay_ms(80);  
}

void LongSound(){
       GP2 = 1;
    __delay_ms(200);
       GP2 = 0;
    __delay_ms(80);    
}

void TimeOut(){
   while (cnt1 <= 1000) GP2 = 0;
    cnt1 = 0;  
}


void TwoShortOneLong(){
   ShortSound();
   ShortSound();       
   LongSound();   
   cnt1 = 0;  
   TimeOut();
}

void TwoShortTwoLong(){

   ShortSound();
   ShortSound();       
   LongSound();       
   LongSound();
   cnt1 = 0;  
   TimeOut();  
}

void ThreeShort(){
   ShortSound();
   ShortSound();       
   ShortSound();   
   cnt1 = 0; 
   TimeOut(); 
}