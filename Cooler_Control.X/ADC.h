/* 
 * File:   ADC.h
 * Author: User
 *
 * Created on 5 ????? 2022 ?., 12:35
 */

#ifndef ADC_H
#define	ADC_H

#include <stdbool.h>

void Init_uC(void);

void ButtonEvent (void);

bool Pin7ThermoControl (void);

bool Pin6VoltageControl (void);

#endif	/* ADC_H */

