#include <xc.h>
#include "sounds.h"
#include "interrupt.h"

extern   uint16_t cnt1;
volatile uint8_t soundModeSwitch = 0;

void ShortSound(){
   if(cnt1 <= 120) GP2 = 1;
    else if ((cnt1 > 120) && (cnt1 <= 200)) GP2 = 0;
     else if (cnt1 > 200){ 
      cnt1 = 0; 
      soundModeSwitch++;
      } 
}

void LongSound(){
   if(cnt1 <= 200) GP2 = 1;
    else if ((cnt1 > 200) && (cnt1 <= 350)) GP2 = 0;
     else if (cnt1 > 350){
      cnt1 = 0;
      soundModeSwitch++;
      }
}

void TimeOut(){
   if (cnt1 <= 1000) GP2 = 0;
    else {
    cnt1 = 0;
    soundModeSwitch = 0;    
    }
}


void TwoShortOneLong(){
       
       if (soundModeSwitch == 0){
          ShortSound();  
       }
       if (soundModeSwitch == 1){
          ShortSound();
       }
       if (soundModeSwitch == 2){
          LongSound();
       } 
       if (soundModeSwitch > 2) {
       TimeOut();
       }
      
}

void TwoShortTwoLong(){
  
       if (soundModeSwitch == 0){
          ShortSound();  
       }
       if (soundModeSwitch == 1){
          ShortSound();
       }
       if (soundModeSwitch == 2){
          LongSound();
       }
       if (soundModeSwitch == 3){
          LongSound();
       }
       if (soundModeSwitch > 3) {
         TimeOut(); 
        }      
}

void ThreeShort(){
  
       if (soundModeSwitch == 0){
          ShortSound();  
       }
       if (soundModeSwitch == 1){
          ShortSound();
       }
       if (soundModeSwitch == 2){
          ShortSound();
       }
       if (soundModeSwitch > 2) {
         TimeOut(); 
        }      
}

