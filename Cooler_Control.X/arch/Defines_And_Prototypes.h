/* 
 * File:   Defines_And_Prototypes.h
 * Author: Albert Ziatdinov
 *
 * Created on 19 ?????? 2021 ?., 13:47
 */

#ifndef DEFINES_AND_PROTOTYPES_H
#define	DEFINES_AND_PROTOTYPES_H

#include <xc.h> 
 
#define CH0 0
#define CH1 1  
    
#define CH3 3    
    
#define ADC0 CHS1 = 0;\
             CHS0 = 0
            
    
#define ADC1 CHS1 = 0;\
             CHS0 = 1   
    
#define ADC3 CHS1 = 1;\
             CHS0 = 1   
                    
    
/* Button voltage limits   */    
#define BUTTON_LOW_VALUE  0x00
#define BUTTON_HIGH_VALUE 0xFF
    
/* iniialization of our uC after power on*/    
    void Init_uC(void);


    
/* 3525 control Pin2*/
/* ON Button status control **
 * ADC Pin6                 **/
    void System_Start_Control(void);    
    
/* Temperature control **
 * ADC Pin7            **/
    
    void Temperature_Control(void);
    
/* Buzzer              **
 * GPIO Out Pin5       **/
    void Buzzer(void);    

/* Getting voltage     */
void Get_Voltage (/*uint8_t Chanel_Number*/);



#endif	/* DEFINES_AND_PROTOTYPES_H */

