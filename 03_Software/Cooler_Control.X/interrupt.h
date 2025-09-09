/* 
 * File:   interrupt.h
 * Author: User
 *
 * Created on 28 ??????? 2022 ?., 16:38
 */

#ifndef INTERRUPT_H
#define	INTERRUPT_H

#include <stdint.h>

#define ERROR_OK               0
#define ERROR_NOK              1

#define READY     1
#define NOT_READY 0

#define STATE_MEASURE_VOLTAGE     0
#define STATE_MEASURE_TEMPERATURE 1

typedef struct {
    unsigned usPause              : 1;  
    unsigned errorUnderVoltage    : 1;
    unsigned errorOverVoltage     : 1;
    unsigned errorHighTemperature : 1;
    unsigned alarmState           : 1;
    unsigned playLong             : 1;
} ParameterFlags;

extern volatile ParameterFlags prmFlags;

typedef enum {
    ADC_CHANNEL0 = 0,
    ADC_CHANNEL1 = 1
} adc_channel_t;

void MuxVoltage(void);

void MuxTemp(void);

void __interrupt() ISR(void);

void ADCProcessing(void);

#endif	/* INTERRUPT_H */

