/**                                                  
 *  ==============================================================================
 *  PROJECT NAME: Cooler Control Hobby Project
 *  ==============================================================================
 * 
 *  @Filename           :   main.c 
 *  @Date               :   19.11.2021
 *  @Reference          :   No reference
 *  @HW Compatibility   :   Microchip PIC12F675, 8bit, 8 Pin
 *  @Code reference     :   No reference
 *  @Specification      :   Technical Task from Alex Talko
 *  @SW Owner           :   Albert Ziatdinov/Alex Talko, Open Non-commercial use 
 *                          only  
 *  @Author             :   Albert Ziatdinov
 * 
 * ================================================================================
 * System clock is configured to 4MHz
 * ================================================================================
 *
 *
 */

#include "Defines_And_Prototypes.h"
#include "Configuration.h"



void main(void) 
{
   Init_uC();
   
    while (1) 
    {
        System_Start_Control();
        Temperature_Control();
    }
  
}
