opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 6446"

opt pagewidth 120

	opt pm

	processor	12F1840
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 6 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	dw 0xFFFC & 0xFFEF & 0xFFFF & 0xFFBF & 0xFFFF & 0xFFFF & 0xF9FF & 0xFFFF & 0xEFFF & 0xDFFF ;#
# 7 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	dw 0xFFFF & 0xFDFF & 0xFFFF & 0xFFFF & 0xBFFF ;#
# 8 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	psect idloc,class=IDLOC,delta=2 ;#
# 8 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	global	idloc_word ;#
# 8 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
idloc_word ;#
# 8 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	irpc	__arg,0000 ;#
# 8 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	dw 0&__arg&h ;#
# 8 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	endm ;#
DABS 1,288,80	;_gBuffer
DABS 1,230,10	;_gBuffer
	FNCALL	_main,_measureBattery
	FNCALL	_main,_fatal
	FNCALL	_main,_sdInit
	FNCALL	_main,_ufatInit
	FNCALL	_main,_ufatMount
	FNCALL	_main,_ufatGetNthFile
	FNCALL	_main,_rnd
	FNCALL	_main,___lwmod
	FNCALL	_main,_ufatOpen
	FNCALL	_main,_secListWrite
	FNCALL	_main,_ufatGetNextSectorRange
	FNCALL	_main,_ufatExtReadTerminate
	FNCALL	_main,_play
	FNCALL	_main,_sleep
	FNCALL	_ufatGetNextSectorRange,_ufatGetNextClus
	FNCALL	_ufatGetNextSectorRange,___lmul
	FNCALL	_ufatMount,_ufatExtRead
	FNCALL	_ufatMount,_ufatParsePartitionTable
	FNCALL	_ufatMount,_ufatGetU16
	FNCALL	_ufatMount,___wmul
	FNCALL	_ufatGetNextClus,_ufatExtRead
	FNCALL	_ufatGetNextClus,_ufatGetU16
	FNCALL	_ufatParsePartitionTable,_ufatExtRead
	FNCALL	_ufatParsePartitionTable,_ufatMount
	FNCALL	_ufatGetNthFile,_ufatExtRead
	FNCALL	_ufatGetNthFile,_ufatGetU16
	FNCALL	_ufatGetNthFile,_ufatGetU32
	FNCALL	_sdInit,_sdSpiInit
	FNCALL	_sdInit,_sdClockSpeed
	FNCALL	_sdInit,_sdSpiByte
	FNCALL	_sdInit,_sdSpiResync
	FNCALL	_sdInit,_sdPrvSimpleCommand
	FNCALL	_sdInit,_sdPrvCardInit
	FNCALL	_ufatExtReadTerminate,_ufatExtRead
	FNCALL	_sdPrvCardInit,_sdPrvSimpleCommand
	FNCALL	_sdPrvCardInit,_sdPrvACMD
	FNCALL	_play,_audioOn
	FNCALL	_play,_secListRead
	FNCALL	_play,_sdReadStart
	FNCALL	_play,_fatal
	FNCALL	_play,_hdrProcess
	FNCALL	_play,_sdSecReadStop
	FNCALL	_play,_sdNextSec
	FNCALL	_play,_sdSpiByte
	FNCALL	_play,_audioOff
	FNCALL	_ufatExtRead,_sdSpiByte
	FNCALL	_ufatExtRead,_sdSecReadStop
	FNCALL	_ufatExtRead,_sdReadStart
	FNCALL	_sdPrvACMD,_sdPrvSimpleCommand
	FNCALL	_hdrProcess,_spiCmp
	FNCALL	_hdrProcess,_byte
	FNCALL	_hdrProcess,___bmul
	FNCALL	_hdrProcess,___lldiv
	FNCALL	_hdrProcess,_sdSpiByte
	FNCALL	_sdReadStart,_sdPrvSimpleCommand
	FNCALL	_sdReadStart,_log
	FNCALL	_sdReadStart,_sdSpiByte
	FNCALL	_sdSecReadStop,_sdPrvSimpleCommand
	FNCALL	_sdPrvSimpleCommand,_sdSpiByte
	FNCALL	_sdPrvSimpleCommand,_sdPrvSendCmd
	FNCALL	_sdPrvSimpleCommand,_sdPrvReadResp
	FNCALL	_spiCmp,_byte
	FNCALL	_sdPrvReadResp,_sdSpiByte
	FNCALL	_sdPrvSendCmd,_sdCrc7
	FNCALL	_sdPrvSendCmd,_sdSpiByte
	FNCALL	_measureBattery,___aldiv
	FNCALL	_sdNextSec,_sdSpiByte
	FNCALL	_byte,_sdSpiByte
	FNCALL	_secListWrite,___bmul
	FNCALL	_secListWrite,_eeWrite
	FNCALL	_secListRead,___bmul
	FNCALL	_secListRead,_eeRead
	FNCALL	_log,_eeWrite
	FNCALL	_rnd,_eeRead
	FNCALL	_rnd,___lmul
	FNCALL	_rnd,_eeWrite
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_gWrite
	global	ufatExtRead@curSec
	global	_curClus
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	65

;initializer for _gWrite
	retlw	01h
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	201

;initializer for ufatExtRead@curSec
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh

	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	21

;initializer for _curClus
	retlw	0FFh
	retlw	0FFh

	global	hdrProcess@riff
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
	global    __stringtab
__stringtab:
	retlw	0
psect	strings
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	252
hdrProcess@riff:
	retlw	052h
	retlw	049h
	retlw	046h
	retlw	046h
	global	hdrProcess@wave
psect	strings
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	253
hdrProcess@wave:
	retlw	057h
	retlw	041h
	retlw	056h
	retlw	045h
	global	hdrProcess@riff
	global	hdrProcess@wave
	global	_diskOffset
	global	_gRead
	global	_gBuffer
	global	_tmrReload
	global	_dataSec
	global	_fatSec
	global	_rootDirEntries
	global	_rootSec
	global	_sectorsPerFat
	global	ufatExtRead@curPos
	global	_byteStride
	global	_secPerClus
	global	log@addr
	global	_INTCON
_INTCON	set	11
	global	_INTCONbits
_INTCONbits	set	11
	global	_PR2
_PR2	set	27
	global	_T2CON
_T2CON	set	28
	global	_TMR0
_TMR0	set	21
	global	_RA0
_RA0	set	96
	global	_RA5
_RA5	set	101
	global	_ADRES
_ADRES	set	155
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON0bits
_ADCON0bits	set	157
	global	_ADCON1
_ADCON1	set	158
	global	_OPTION_REG
_OPTION_REG	set	149
	global	_OSCCON
_OSCCON	set	153
	global	_OSCTUNE
_OSCTUNE	set	152
	global	_TRISA
_TRISA	set	140
	global	_TRISAbits
_TRISAbits	set	140
	global	_WDTCON
_WDTCON	set	151
	global	_SWDTEN
_SWDTEN	set	1208
	global	_APFCON
_APFCON	set	285
	global	_FVRCON
_FVRCON	set	279
	global	_LATA1
_LATA1	set	2145
	global	_LATA4
_LATA4	set	2148
	global	_ANSELA
_ANSELA	set	396
	global	_EEADRL
_EEADRL	set	401
	global	_EECON1
_EECON1	set	405
	global	_EECON1bits
_EECON1bits	set	405
	global	_EECON2
_EECON2	set	406
	global	_EEDATL
_EEDATL	set	403
	global	_SSP1ADD
_SSP1ADD	set	530
	global	_SSP1BUF
_SSP1BUF	set	529
	global	_SSP1CON1
_SSP1CON1	set	533
	global	_SSP1STAT
_SSP1STAT	set	532
	global	_SSP1STATbits
_SSP1STATbits	set	532
	global	_SSPEN
_SSPEN	set	4269
	global	_CCP1CON
_CCP1CON	set	659
	global	_CCPR1H
_CCPR1H	set	658
	global	_CCPR1L
_CCPR1L	set	657
	file	"Player.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

_gBuffer  equ     8342	;BIGRAM
psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_tmrReload:
       ds      1

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	65
_gWrite:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_diskOffset:
       ds      4

_gRead:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_dataSec:
       ds      2

_fatSec:
       ds      2

_rootDirEntries:
       ds      2

_rootSec:
       ds      2

_sectorsPerFat:
       ds      2

ufatExtRead@curPos:
       ds      2

_byteStride:
       ds      1

_secPerClus:
       ds      1

log@addr:
       ds      1

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	201
ufatExtRead@curSec:
       ds      4

psect	dataBANK1
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	21
_curClus:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR0 containing the base address, and
;	btemp/btemp+1 has the size to clear
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	movlw	1
	subwf	btemp,f
	movlw	0
	subwfb btemp+1,f
	movf btemp+1,w
	iorwf btemp,w
	skipz
	goto clrloop	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BIGRAM
psect cinit,class=CODE,delta=2
	global __pbssBIGRAM
	movlw	low(__pbssBIGRAM)
	movwf	fsr0l
	movlw	high(__pbssBIGRAM)
	movwf	fsr0h
	movlw	low(05Ah)
	movwf	btemp
	movlw	high(05Ah)
	movwf	btemp+1
	fcall	clear_ram
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	low(0Fh)
	movwf	btemp
	movlw	high(0Fh)
	movwf	btemp+1
	fcall	clear_ram
; Initialize objects allocated to COMMON
	global __pidataCOMMON,__pdataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2
	movlb 1	; select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
	fcall	__pidataBANK1+5		;fetch initializer
	movwf	__pdataBANK1+5&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
	global	main@name
main@name:	; 11 bytes @ 0x4
	ds	11
	global	_main$2046
_main$2046:	; 4 bytes @ 0xF
	ds	4
	global	main@numFiles
main@numFiles:	; 2 bytes @ 0x13
	ds	2
	global	main@sec
main@sec:	; 4 bytes @ 0x15
	ds	4
	global	main@j
main@j:	; 1 bytes @ 0x19
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x1A
	ds	2
	global	main@sv
main@sv:	; 2 bytes @ 0x1C
	ds	2
	global	main@n
main@n:	; 2 bytes @ 0x1E
	ds	2
	global	main@id
main@id:	; 2 bytes @ 0x20
	ds	2
	global	main@ret
main@ret:	; 1 bytes @ 0x22
	ds	1
	global	main@flags
main@flags:	; 1 bytes @ 0x23
	ds	1
	global	main@sz
main@sz:	; 4 bytes @ 0x24
	ds	4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_sdSecReadStop
?_sdSecReadStop:	; 0 bytes @ 0x0
	global	?_sdNextSec
?_sdNextSec:	; 0 bytes @ 0x0
	global	?_ufatInit
?_ufatInit:	; 0 bytes @ 0x0
	global	?_log
?_log:	; 0 bytes @ 0x0
	global	?_fatal
?_fatal:	; 0 bytes @ 0x0
	global	?_audioOn
?_audioOn:	; 0 bytes @ 0x0
	global	?_audioOff
?_audioOff:	; 0 bytes @ 0x0
	global	?_ufatExtReadTerminate
?_ufatExtReadTerminate:	; 0 bytes @ 0x0
	global	?_play
?_play:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	??_isr
??_isr:	; 0 bytes @ 0x0
	global	?_sdClockSpeed
?_sdClockSpeed:	; 0 bytes @ 0x0
	global	?_sdSpiInit
?_sdSpiInit:	; 0 bytes @ 0x0
	global	?_sdSpiResync
?_sdSpiResync:	; 0 bytes @ 0x0
	global	?_sdSpiByte
?_sdSpiByte:	; 1 bytes @ 0x0
	global	?_sdInit
?_sdInit:	; 1 bytes @ 0x0
	global	?_ufatMount
?_ufatMount:	; 1 bytes @ 0x0
	global	?_eeRead
?_eeRead:	; 1 bytes @ 0x0
	global	?_byte
?_byte:	; 1 bytes @ 0x0
	global	?_hdrProcess
?_hdrProcess:	; 1 bytes @ 0x0
	global	?_sdPrvReadResp
?_sdPrvReadResp:	; 1 bytes @ 0x0
	global	?_sdPrvCardInit
?_sdPrvCardInit:	; 1 bytes @ 0x0
	global	?_ufatParsePartitionTable
?_ufatParsePartitionTable:	; 1 bytes @ 0x0
	global	isr@v1
isr@v1:	; 1 bytes @ 0x0
	ds	1
	global	isr@v
isr@v:	; 1 bytes @ 0x1
	ds	1
	global	??_sdSpiByte
??_sdSpiByte:	; 0 bytes @ 0x2
	global	??_ufatInit
??_ufatInit:	; 0 bytes @ 0x2
	global	??_eeRead
??_eeRead:	; 0 bytes @ 0x2
	global	?_eeWrite
?_eeWrite:	; 0 bytes @ 0x2
	global	??_fatal
??_fatal:	; 0 bytes @ 0x2
	global	??_audioOn
??_audioOn:	; 0 bytes @ 0x2
	global	??_audioOff
??_audioOff:	; 0 bytes @ 0x2
	global	?_sleep
?_sleep:	; 0 bytes @ 0x2
	global	??_sdClockSpeed
??_sdClockSpeed:	; 0 bytes @ 0x2
	global	??_sdSpiInit
??_sdSpiInit:	; 0 bytes @ 0x2
	global	??_sdSpiResync
??_sdSpiResync:	; 0 bytes @ 0x2
	global	?_ufatOpen
?_ufatOpen:	; 1 bytes @ 0x2
	global	?_sdCrc7
?_sdCrc7:	; 1 bytes @ 0x2
	global	?___bmul
?___bmul:	; 1 bytes @ 0x2
	global	?_ufatGetU16
?_ufatGetU16:	; 2 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?_ufatGetU32
?_ufatGetU32:	; 4 bytes @ 0x2
	global	?___lmul
?___lmul:	; 4 bytes @ 0x2
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x2
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x2
	global	eeRead@addr
eeRead@addr:	; 1 bytes @ 0x2
	global	eeWrite@data
eeWrite@data:	; 1 bytes @ 0x2
	global	sdClockSpeed@fast
sdClockSpeed@fast:	; 1 bytes @ 0x2
	global	sdSpiByte@byte
sdSpiByte@byte:	; 1 bytes @ 0x2
	global	sdCrc7@cnt
sdCrc7@cnt:	; 1 bytes @ 0x2
	global	ufatGetU16@idx
ufatGetU16@idx:	; 1 bytes @ 0x2
	global	ufatGetU32@idx
ufatGetU32@idx:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	ufatOpen@id
ufatOpen@id:	; 2 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	sleep@ms
sleep@ms:	; 4 bytes @ 0x2
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x2
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x2
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x2
	ds	1
	global	??_sdNextSec
??_sdNextSec:	; 0 bytes @ 0x3
	global	??_eeWrite
??_eeWrite:	; 0 bytes @ 0x3
	global	??_byte
??_byte:	; 0 bytes @ 0x3
	global	??_sdPrvReadResp
??_sdPrvReadResp:	; 0 bytes @ 0x3
	global	??___bmul
??___bmul:	; 0 bytes @ 0x3
	global	?_spiCmp
?_spiCmp:	; 1 bytes @ 0x3
	global	eeWrite@addr
eeWrite@addr:	; 1 bytes @ 0x3
	global	spiCmp@len
spiCmp@len:	; 1 bytes @ 0x3
	global	sdCrc7@crc
sdCrc7@crc:	; 1 bytes @ 0x3
	global	sdPrvReadResp@i
sdPrvReadResp@i:	; 1 bytes @ 0x3
	global	sdNextSec@v
sdNextSec@v:	; 1 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	global	_sdClockSpeed$3322
_sdClockSpeed$3322:	; 2 bytes @ 0x3
	ds	1
	global	??_ufatOpen
??_ufatOpen:	; 0 bytes @ 0x4
	global	??_log
??_log:	; 0 bytes @ 0x4
	global	??_spiCmp
??_spiCmp:	; 0 bytes @ 0x4
	global	??_sdCrc7
??_sdCrc7:	; 0 bytes @ 0x4
	global	??_ufatGetU16
??_ufatGetU16:	; 0 bytes @ 0x4
	global	log@val
log@val:	; 1 bytes @ 0x4
	global	sdPrvReadResp@v
sdPrvReadResp@v:	; 1 bytes @ 0x4
	global	ufatGetU16@v
ufatGetU16@v:	; 1 bytes @ 0x4
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	ds	1
	global	?_secListRead
?_secListRead:	; 0 bytes @ 0x5
	global	?_secListWrite
?_secListWrite:	; 0 bytes @ 0x5
	global	secListRead@start
secListRead@start:	; 1 bytes @ 0x5
	global	fatal@val
fatal@val:	; 1 bytes @ 0x5
	global	audioOn@i
audioOn@i:	; 1 bytes @ 0x5
	global	spiCmp@with
spiCmp@with:	; 1 bytes @ 0x5
	global	sdCrc7@chr
sdCrc7@chr:	; 1 bytes @ 0x5
	global	secListWrite@start
secListWrite@start:	; 3 bytes @ 0x5
	ds	1
	global	??_sleep
??_sleep:	; 0 bytes @ 0x6
	global	??___wmul
??___wmul:	; 0 bytes @ 0x6
	global	secListRead@len
secListRead@len:	; 1 bytes @ 0x6
	global	fatal@k
fatal@k:	; 1 bytes @ 0x6
	global	sdCrc7@Data
sdCrc7@Data:	; 1 bytes @ 0x6
	global	ufatGetU32@v
ufatGetU32@v:	; 1 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x6
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	ds	1
	global	fatal@i
fatal@i:	; 1 bytes @ 0x7
	global	sdCrc7@i
sdCrc7@i:	; 1 bytes @ 0x7
	ds	1
	global	fatal@j
fatal@j:	; 1 bytes @ 0x8
	global	sdCrc7@a
sdCrc7@a:	; 1 bytes @ 0x8
	global	secListWrite@len
secListWrite@len:	; 2 bytes @ 0x8
	ds	1
	global	??_sdPrvSendCmd
??_sdPrvSendCmd:	; 0 bytes @ 0x9
	ds	1
	global	??_sdSecReadStop
??_sdSecReadStop:	; 0 bytes @ 0xA
	global	??_sdReadStart
??_sdReadStart:	; 0 bytes @ 0xA
	global	??_sdInit
??_sdInit:	; 0 bytes @ 0xA
	global	??_ufatGetNthFile
??_ufatGetNthFile:	; 0 bytes @ 0xA
	global	??_secListWrite
??_secListWrite:	; 0 bytes @ 0xA
	global	??_ufatExtRead
??_ufatExtRead:	; 0 bytes @ 0xA
	global	??_ufatExtReadTerminate
??_ufatExtReadTerminate:	; 0 bytes @ 0xA
	global	??_sdPrvSimpleCommand
??_sdPrvSimpleCommand:	; 0 bytes @ 0xA
	global	??_sdPrvACMD
??_sdPrvACMD:	; 0 bytes @ 0xA
	global	??_sdPrvCardInit
??_sdPrvCardInit:	; 0 bytes @ 0xA
	global	??_ufatGetNextClus
??_ufatGetNextClus:	; 0 bytes @ 0xA
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xA
	global	??___lmul
??___lmul:	; 0 bytes @ 0xA
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0xA
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_secListRead
??_secListRead:	; 0 bytes @ 0x0
	global	?_sdPrvSendCmd
?_sdPrvSendCmd:	; 0 bytes @ 0x0
	global	??_ufatGetU32
??_ufatGetU32:	; 0 bytes @ 0x0
	global	secListWrite@which
secListWrite@which:	; 1 bytes @ 0x0
	global	sleep@oldClkCfg
sleep@oldClkCfg:	; 1 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	sdPrvSendCmd@param
sdPrvSendCmd@param:	; 4 bytes @ 0x0
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x0
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x0
	ds	1
	global	secListWrite@i
secListWrite@i:	; 1 bytes @ 0x1
	global	sleep@oldTris
sleep@oldTris:	; 1 bytes @ 0x1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	sleep@v
sleep@v:	; 4 bytes @ 0x2
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	global	sdPrvSendCmd@send
sdPrvSendCmd@send:	; 6 bytes @ 0x4
	ds	1
	global	??_hdrProcess
??_hdrProcess:	; 0 bytes @ 0x5
	ds	1
	global	?_measureBattery
?_measureBattery:	; 2 bytes @ 0x6
	global	sleep@i
sleep@i:	; 1 bytes @ 0x6
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x6
	global	secListRead@t24
secListRead@t24:	; 3 bytes @ 0x6
	ds	2
	global	??_measureBattery
??_measureBattery:	; 0 bytes @ 0x8
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x8
	ds	1
	global	?_rnd
?_rnd:	; 2 bytes @ 0x9
	global	secListRead@t16
secListRead@t16:	; 2 bytes @ 0x9
	ds	1
	global	sdPrvSendCmd@cmd
sdPrvSendCmd@cmd:	; 1 bytes @ 0xA
	ds	1
	global	??_rnd
??_rnd:	; 0 bytes @ 0xB
	global	?_sdPrvSimpleCommand
?_sdPrvSimpleCommand:	; 1 bytes @ 0xB
	global	secListRead@which
secListRead@which:	; 1 bytes @ 0xB
	global	sdPrvSimpleCommand@param
sdPrvSimpleCommand@param:	; 4 bytes @ 0xB
	ds	1
	global	secListRead@i
secListRead@i:	; 1 bytes @ 0xC
	ds	1
	global	hdrProcess@hdr
hdrProcess@hdr:	; 4 bytes @ 0xD
	ds	2
	global	measureBattery@i
measureBattery@i:	; 1 bytes @ 0xF
	global	sdPrvSimpleCommand@cmdDone
sdPrvSimpleCommand@cmdDone:	; 1 bytes @ 0xF
	global	rnd@x
rnd@x:	; 4 bytes @ 0xF
	ds	1
	global	sdPrvSimpleCommand@cmd
sdPrvSimpleCommand@cmd:	; 1 bytes @ 0x10
	global	measureBattery@t
measureBattery@t:	; 3 bytes @ 0x10
	ds	1
	global	sdPrvSimpleCommand@ret
sdPrvSimpleCommand@ret:	; 1 bytes @ 0x11
	global	_hdrProcess$2012
_hdrProcess$2012:	; 2 bytes @ 0x11
	ds	1
	global	?_sdReadStart
?_sdReadStart:	; 1 bytes @ 0x12
	global	?_sdPrvACMD
?_sdPrvACMD:	; 1 bytes @ 0x12
	global	sdReadStart@sec
sdReadStart@sec:	; 3 bytes @ 0x12
	global	sdPrvACMD@param
sdPrvACMD@param:	; 4 bytes @ 0x12
	ds	1
	global	hdrProcess@csz
hdrProcess@csz:	; 1 bytes @ 0x13
	ds	1
	global	hdrProcess@i
hdrProcess@i:	; 1 bytes @ 0x14
	ds	1
	global	sdReadStart@v
sdReadStart@v:	; 1 bytes @ 0x15
	global	hdrProcess@t32
hdrProcess@t32:	; 4 bytes @ 0x15
	ds	1
	global	?_ufatExtRead
?_ufatExtRead:	; 1 bytes @ 0x16
	global	sdPrvACMD@cmd
sdPrvACMD@cmd:	; 1 bytes @ 0x16
	global	ufatExtRead@sector
ufatExtRead@sector:	; 4 bytes @ 0x16
	ds	1
	global	sdPrvACMD@ret
sdPrvACMD@ret:	; 1 bytes @ 0x17
	ds	1
	global	sdPrvCardInit@sd
sdPrvCardInit@sd:	; 1 bytes @ 0x18
	ds	1
	global	hdrProcess@j
hdrProcess@j:	; 1 bytes @ 0x19
	global	sdPrvCardInit@time
sdPrvCardInit@time:	; 2 bytes @ 0x19
	ds	1
	global	??_play
??_play:	; 0 bytes @ 0x1A
	global	ufatExtRead@offset
ufatExtRead@offset:	; 2 bytes @ 0x1A
	ds	1
	global	_sdPrvCardInit$3364
_sdPrvCardInit$3364:	; 2 bytes @ 0x1B
	ds	1
	global	ufatExtRead@len
ufatExtRead@len:	; 1 bytes @ 0x1C
	ds	1
	global	ufatExtRead@buf
ufatExtRead@buf:	; 1 bytes @ 0x1D
	global	sdPrvCardInit@first
sdPrvCardInit@first:	; 1 bytes @ 0x1D
	ds	1
	global	??_ufatParsePartitionTable
??_ufatParsePartitionTable:	; 0 bytes @ 0x1E
	global	?_ufatGetNthFile
?_ufatGetNthFile:	; 1 bytes @ 0x1E
	global	?_ufatGetNextClus
?_ufatGetNextClus:	; 2 bytes @ 0x1E
	global	play@ret
play@ret:	; 1 bytes @ 0x1E
	global	ufatGetNthFile@n
ufatGetNthFile@n:	; 2 bytes @ 0x1E
	global	ufatGetNextClus@clus
ufatGetNextClus@clus:	; 2 bytes @ 0x1E
	global	sdPrvCardInit@param
sdPrvCardInit@param:	; 4 bytes @ 0x1E
	ds	1
	global	play@start
play@start:	; 1 bytes @ 0x1F
	ds	1
	global	play@secListIdx
play@secListIdx:	; 1 bytes @ 0x20
	global	ufatGetNthFile@name
ufatGetNthFile@name:	; 1 bytes @ 0x20
	global	ufatGetNextClus@buf
ufatGetNextClus@buf:	; 2 bytes @ 0x20
	ds	1
	global	ufatGetNthFile@sz
ufatGetNthFile@sz:	; 1 bytes @ 0x21
	global	play@sec
play@sec:	; 3 bytes @ 0x21
	ds	1
	global	sdPrvCardInit@resp
sdPrvCardInit@resp:	; 1 bytes @ 0x22
	global	ufatGetNthFile@flags
ufatGetNthFile@flags:	; 1 bytes @ 0x22
	global	ufatGetNextClus@sec
ufatGetNextClus@sec:	; 4 bytes @ 0x22
	global	ufatParsePartitionTable@record
ufatParsePartitionTable@record:	; 16 bytes @ 0x22
	ds	1
	global	sdInit@tries
sdInit@tries:	; 1 bytes @ 0x23
	global	ufatGetNthFile@id
ufatGetNthFile@id:	; 1 bytes @ 0x23
	ds	1
	global	play@t
play@t:	; 1 bytes @ 0x24
	global	sdInit@SD
sdInit@SD:	; 1 bytes @ 0x24
	global	ufatGetNthFile@i
ufatGetNthFile@i:	; 2 bytes @ 0x24
	ds	1
	global	play@j
play@j:	; 1 bytes @ 0x25
	global	sdInit@v
sdInit@v:	; 1 bytes @ 0x25
	ds	1
	global	play@i
play@i:	; 1 bytes @ 0x26
	global	_ufatGetNthFile$3417
_ufatGetNthFile$3417:	; 2 bytes @ 0x26
	global	ufatGetNextClus@offset
ufatGetNextClus@offset:	; 2 bytes @ 0x26
	ds	1
	global	play@firstSec
play@firstSec:	; 3 bytes @ 0x27
	ds	1
	global	?_ufatGetNextSectorRange
?_ufatGetNextSectorRange:	; 1 bytes @ 0x28
	global	ufatGetNextSectorRange@len
ufatGetNextSectorRange@len:	; 1 bytes @ 0x28
	global	ufatGetNthFile@buf
ufatGetNthFile@buf:	; 4 bytes @ 0x28
	ds	1
	global	??_ufatGetNextSectorRange
??_ufatGetNextSectorRange:	; 0 bytes @ 0x29
	ds	1
	global	play@numSec
play@numSec:	; 2 bytes @ 0x2A
	ds	1
	global	ufatGetNextSectorRange@first
ufatGetNextSectorRange@first:	; 1 bytes @ 0x2B
	ds	1
	global	ufatGetNextSectorRange@prev
ufatGetNextSectorRange@prev:	; 2 bytes @ 0x2C
	global	ufatGetNthFile@sec
ufatGetNthFile@sec:	; 4 bytes @ 0x2C
	ds	2
	global	ufatGetNextSectorRange@next
ufatGetNextSectorRange@next:	; 2 bytes @ 0x2E
	ds	2
	global	ufatGetNthFile@offset
ufatGetNthFile@offset:	; 2 bytes @ 0x30
	global	ufatGetNextSectorRange@t
ufatGetNextSectorRange@t:	; 4 bytes @ 0x30
	ds	2
	global	ufatParsePartitionTable@offset
ufatParsePartitionTable@offset:	; 2 bytes @ 0x32
	ds	2
	global	??_ufatMount
??_ufatMount:	; 0 bytes @ 0x34
	ds	8
	global	ufatMount@buf
ufatMount@buf:	; 13 bytes @ 0x3C
	ds	13
;;Data sizes: Strings 0, constant 8, data 7, bss 21, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      12
;; BANK0           80     73      78
;; BANK1           70     40      61
;; BANK2            0      0       0

;;
;; Pointer list with targets:

;; ?_ufatGetNextClus	unsigned short  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_ufatGetU32	unsigned long  size(1) Largest target is 0
;;
;; ?_ufatGetU16	unsigned short  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_measureBattery	unsigned short  size(1) Largest target is 3
;;		 -> measureBattery@t(BANK0[3]), 
;;
;; ?___aldiv	long  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?_rnd	unsigned short  size(1) Largest target is 0
;;
;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; ufatGetNextSectorRange@first	PTR unsigned long  size(1) Largest target is 4
;;		 -> main@sec(BANK1[4]), 
;;
;; ufatGetNextSectorRange@len	PTR unsigned long  size(1) Largest target is 4
;;		 -> main@sz(BANK1[4]), 
;;
;; ufatGetNthFile@sz	PTR unsigned long  size(1) Largest target is 4
;;		 -> main@sz(BANK1[4]), 
;;
;; ufatGetNthFile@id	PTR unsigned short  size(1) Largest target is 2
;;		 -> main@id(BANK1[2]), 
;;
;; ufatGetNthFile@flags	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@flags(BANK1[1]), 
;;
;; ufatGetNthFile@name	PTR unsigned char  size(1) Largest target is 11
;;		 -> main@name(BANK1[11]), 
;;
;; ufatGetU32@v	PTR const unsigned char  size(1) Largest target is 4
;;		 -> ufatGetNthFile@buf(BANK0[4]), 
;;
;; ufatGetU16@v	PTR const unsigned char  size(1) Largest target is 13
;;		 -> ufatGetNextClus@buf(BANK0[2]), ufatGetNthFile@buf(BANK0[4]), ufatMount@buf(BANK0[13]), 
;;
;; sdCrc7@chr	PTR unsigned char  size(1) Largest target is 6
;;		 -> sdPrvSendCmd@send(BANK0[6]), 
;;
;; spiCmp@with	PTR const unsigned char  size(1) Largest target is 4
;;		 -> hdrProcess@wave(CODE[4]), hdrProcess@riff(CODE[4]), 
;;
;; ufatExtRead@buf	PTR unsigned char  size(1) Largest target is 128
;;		 -> ufatGetNextClus@buf(BANK0[2]), ufatGetNthFile@buf(BANK0[4]), ufatMount@buf(BANK0[13]), ufatParsePartitionTable@record(BANK0[16]), 
;;		 -> main@name(BANK1[11]), main@flags(BANK1[1]), RAM(NULL[128]), 
;;
;; secListRead@len	PTR unsigned short  size(1) Largest target is 2
;;		 -> play@numSec(BANK0[2]), 
;;
;; secListRead@start	PTR unsigned um size(1) Largest target is 3
;;		 -> play@firstSec(BANK0[3]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_secListWrite
;;   _ufatGetNextSectorRange->___lmul
;;   _hdrProcess->___lldiv
;;   _sdPrvSimpleCommand->_sdPrvSendCmd
;;   _sdPrvReadResp->_sdSpiByte
;;   _sdPrvSendCmd->_sdCrc7
;;   _measureBattery->___aldiv
;;   _sdNextSec->_sdSpiByte
;;   _byte->_sdSpiByte
;;   _secListWrite->___bmul
;;   _secListRead->___bmul
;;   _log->_eeWrite
;;   _rnd->___lmul
;;   ___lwmod->___lmul
;;
;; Critical Paths under _isr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ufatMount
;;   _ufatGetNextSectorRange->_ufatGetNextClus
;;   _ufatMount->_ufatParsePartitionTable
;;   _ufatGetNextClus->_ufatExtRead
;;   _ufatParsePartitionTable->_ufatExtRead
;;   _ufatGetNthFile->_ufatExtRead
;;   _sdInit->_sdPrvCardInit
;;   _ufatExtReadTerminate->_ufatExtRead
;;   _sdPrvCardInit->_sdPrvACMD
;;   _play->_hdrProcess
;;   _ufatExtRead->_sdReadStart
;;   _sdPrvACMD->_sdPrvSimpleCommand
;;   _hdrProcess->___lldiv
;;   _sdReadStart->_sdPrvSimpleCommand
;;   _sdSecReadStop->_sdPrvSimpleCommand
;;   _sdPrvSimpleCommand->_sdPrvSendCmd
;;   _measureBattery->___aldiv
;;   _rnd->___lwmod
;;   ___lwmod->___lmul
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                40    40      0   30734
;;                                              0 BANK1     40    40      0
;;                     _measureBattery
;;                              _fatal
;;                             _sdInit
;;                           _ufatInit
;;                          _ufatMount
;;                     _ufatGetNthFile
;;                                _rnd
;;                            ___lwmod
;;                           _ufatOpen
;;                       _secListWrite
;;             _ufatGetNextSectorRange
;;               _ufatExtReadTerminate
;;                               _play
;;                              _sleep
;; ---------------------------------------------------------------------------------
;; (1) _ufatGetNextSectorRange                              12    11      1    3639
;;                                             40 BANK0     12    11      1
;;                    _ufatGetNextClus
;;                             ___lmul
;; ---------------------------------------------------------------------------------
;; (1) _ufatMount                                           21    21      0    6971
;;                                             52 BANK0     21    21      0
;;                        _ufatExtRead
;;            _ufatParsePartitionTable
;;                         _ufatGetU16
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (2) _ufatGetNextClus                                     10     8      2    3117
;;                                             30 BANK0     10     8      2
;;                        _ufatExtRead
;;                         _ufatGetU16
;; ---------------------------------------------------------------------------------
;; (2) _ufatParsePartitionTable                             22    22      0    3644
;;                                             30 BANK0     22    22      0
;;                        _ufatExtRead
;;                          _ufatMount
;; ---------------------------------------------------------------------------------
;; (1) _ufatGetNthFile                                      20    14      6    4024
;;                                             30 BANK0     20    14      6
;;                        _ufatExtRead
;;                         _ufatGetU16
;;                         _ufatGetU32
;; ---------------------------------------------------------------------------------
;; (1) _sdInit                                               3     3      0    4243
;;                                             35 BANK0      3     3      0
;;                          _sdSpiInit
;;                       _sdClockSpeed
;;                          _sdSpiByte
;;                        _sdSpiResync
;;                 _sdPrvSimpleCommand
;;                      _sdPrvCardInit
;; ---------------------------------------------------------------------------------
;; (1) _ufatExtReadTerminate                                 0     0      0    2769
;;                        _ufatExtRead
;; ---------------------------------------------------------------------------------
;; (2) _sdPrvCardInit                                       11    11      0    2725
;;                                             24 BANK0     11    11      0
;;                 _sdPrvSimpleCommand
;;                          _sdPrvACMD
;; ---------------------------------------------------------------------------------
;; (1) _play                                                18    18      0    5659
;;                                             26 BANK0     18    18      0
;;                            _audioOn
;;                        _secListRead
;;                        _sdReadStart
;;                              _fatal
;;                         _hdrProcess
;;                      _sdSecReadStop
;;                          _sdNextSec
;;                          _sdSpiByte
;;                           _audioOff
;; ---------------------------------------------------------------------------------
;; (2) _ufatExtRead                                          8     0      8    2769
;;                                             22 BANK0      8     0      8
;;                          _sdSpiByte
;;                      _sdSecReadStop
;;                        _sdReadStart
;; ---------------------------------------------------------------------------------
;; (3) _sdPrvACMD                                            6     2      4    1321
;;                                             18 BANK0      6     2      4
;;                 _sdPrvSimpleCommand
;; ---------------------------------------------------------------------------------
;; (2) _hdrProcess                                          21    21      0    1513
;;                                              5 BANK0     21    21      0
;;                             _spiCmp
;;                               _byte
;;                             ___bmul
;;                            ___lldiv
;;                          _sdSpiByte
;; ---------------------------------------------------------------------------------
;; (2) _sdReadStart                                          4     1      3    1386
;;                                             18 BANK0      4     1      3
;;                 _sdPrvSimpleCommand
;;                                _log
;;                          _sdSpiByte
;; ---------------------------------------------------------------------------------
;; (2) _sdSecReadStop                                        0     0      0    1132
;;                 _sdPrvSimpleCommand
;; ---------------------------------------------------------------------------------
;; (3) _sdPrvSimpleCommand                                   7     2      5    1132
;;                                             11 BANK0      7     2      5
;;                          _sdSpiByte
;;                       _sdPrvSendCmd
;;                      _sdPrvReadResp
;; ---------------------------------------------------------------------------------
;; (3) _spiCmp                                               3     2      1      93
;;                                              3 COMMON     3     2      1
;;                               _byte
;; ---------------------------------------------------------------------------------
;; (4) _sdPrvReadResp                                        2     2      0     130
;;                                              3 COMMON     2     2      0
;;                          _sdSpiByte
;; ---------------------------------------------------------------------------------
;; (4) _sdPrvSendCmd                                        12     8      4     844
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0     11     7      4
;;                             _sdCrc7
;;                          _sdSpiByte
;; ---------------------------------------------------------------------------------
;; (2) _sdSpiResync                                          1     1      0       0
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _measureBattery                                      13    11      2     470
;;                                              6 BANK0     13    11      2
;;                            ___aldiv
;; ---------------------------------------------------------------------------------
;; (2) _sdNextSec                                            1     1      0      65
;;                                              3 COMMON     1     1      0
;;                          _sdSpiByte
;; ---------------------------------------------------------------------------------
;; (3) _byte                                                 0     0      0      31
;;                          _sdSpiByte
;; ---------------------------------------------------------------------------------
;; (2) _fatal                                                7     7      0     138
;;                                              2 COMMON     7     7      0
;; ---------------------------------------------------------------------------------
;; (1) _secListWrite                                         7     2      5     591
;;                                              5 COMMON     5     0      5
;;                                              0 BANK0      2     2      0
;;                             ___bmul
;;                            _eeWrite
;; ---------------------------------------------------------------------------------
;; (2) _secListRead                                         15    13      2     687
;;                                              5 COMMON     2     0      2
;;                                              0 BANK0     13    13      0
;;                             ___bmul
;;                             _eeRead
;; ---------------------------------------------------------------------------------
;; (3) _log                                                  1     1      0      93
;;                                              4 COMMON     1     1      0
;;                            _eeWrite
;; ---------------------------------------------------------------------------------
;; (1) _rnd                                                 10     8      2     470
;;                                              9 BANK0     10     8      2
;;                             _eeRead
;;                             ___lmul
;;                            _eeWrite
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___aldiv                                             14     6      8     300
;;                                              2 COMMON     8     0      8
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             13     5      8     162
;;                                              2 COMMON     8     0      8
;;                                              0 BANK0      5     5      0
;; ---------------------------------------------------------------------------------
;; (2) ___lmul                                              12     4      8      92
;;                                              2 COMMON     8     0      8
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              5     1      4     232
;;                                              4 BANK0      5     1      4
;;                             _eeRead (ARG)
;;                             ___lmul (ARG)
;;                            _eeWrite (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              2 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1     136
;;                                              2 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (2) _ufatGetU32                                          17    13      4     111
;;                                              2 COMMON     5     1      4
;;                                              0 BANK0     12    12      0
;; ---------------------------------------------------------------------------------
;; (3) _ufatGetU16                                           3     1      2      67
;;                                              2 COMMON     3     1      2
;; ---------------------------------------------------------------------------------
;; (5) _sdCrc7                                               7     5      2     303
;;                                              2 COMMON     7     5      2
;; ---------------------------------------------------------------------------------
;; (2) _sdSpiInit                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _sdClockSpeed                                         3     3      0      46
;;                                              2 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _ufatOpen                                             2     0      2      22
;;                                              2 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _ufatInit                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _sdSpiByte                                            1     1      0      31
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _sleep                                               11     7      4     183
;;                                              2 COMMON     4     0      4
;;                                              0 BANK0      7     7      0
;; ---------------------------------------------------------------------------------
;; (2) _audioOff                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _audioOn                                              4     4      0      68
;;                                              2 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (4) _eeWrite                                              2     1      1      62
;;                                              2 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (3) _eeRead                                               1     1      0      22
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (8) _isr                                                  2     2      0      69
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 8
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _measureBattery
;;     ___aldiv
;;   _fatal
;;   _sdInit
;;     _sdSpiInit
;;     _sdClockSpeed
;;     _sdSpiByte
;;     _sdSpiResync
;;     _sdPrvSimpleCommand
;;       _sdSpiByte
;;       _sdPrvSendCmd
;;         _sdCrc7
;;         _sdSpiByte
;;       _sdPrvReadResp
;;         _sdSpiByte
;;     _sdPrvCardInit
;;       _sdPrvSimpleCommand
;;         _sdSpiByte
;;         _sdPrvSendCmd
;;           _sdCrc7
;;           _sdSpiByte
;;         _sdPrvReadResp
;;           _sdSpiByte
;;       _sdPrvACMD
;;         _sdPrvSimpleCommand
;;           _sdSpiByte
;;           _sdPrvSendCmd
;;             _sdCrc7
;;             _sdSpiByte
;;           _sdPrvReadResp
;;             _sdSpiByte
;;   _ufatInit
;;   _ufatMount
;;     _ufatExtRead
;;       _sdSpiByte
;;       _sdSecReadStop
;;         _sdPrvSimpleCommand
;;           _sdSpiByte
;;           _sdPrvSendCmd
;;             _sdCrc7
;;             _sdSpiByte
;;           _sdPrvReadResp
;;             _sdSpiByte
;;       _sdReadStart
;;         _sdPrvSimpleCommand
;;           _sdSpiByte
;;           _sdPrvSendCmd
;;             _sdCrc7
;;             _sdSpiByte
;;           _sdPrvReadResp
;;             _sdSpiByte
;;         _log
;;           _eeWrite
;;         _sdSpiByte
;;     _ufatParsePartitionTable
;;       _ufatExtRead
;;         _sdSpiByte
;;         _sdSecReadStop
;;           _sdPrvSimpleCommand
;;             _sdSpiByte
;;             _sdPrvSendCmd
;;               _sdCrc7
;;               _sdSpiByte
;;             _sdPrvReadResp
;;               _sdSpiByte
;;         _sdReadStart
;;           _sdPrvSimpleCommand
;;             _sdSpiByte
;;             _sdPrvSendCmd
;;               _sdCrc7
;;               _sdSpiByte
;;             _sdPrvReadResp
;;               _sdSpiByte
;;           _log
;;             _eeWrite
;;           _sdSpiByte
;;     _ufatGetU16
;;     ___wmul
;;   _ufatGetNthFile
;;     _ufatExtRead
;;       _sdSpiByte
;;       _sdSecReadStop
;;         _sdPrvSimpleCommand
;;           _sdSpiByte
;;           _sdPrvSendCmd
;;             _sdCrc7
;;             _sdSpiByte
;;           _sdPrvReadResp
;;             _sdSpiByte
;;       _sdReadStart
;;         _sdPrvSimpleCommand
;;           _sdSpiByte
;;           _sdPrvSendCmd
;;             _sdCrc7
;;             _sdSpiByte
;;           _sdPrvReadResp
;;             _sdSpiByte
;;         _log
;;           _eeWrite
;;         _sdSpiByte
;;     _ufatGetU16
;;     _ufatGetU32
;;   _rnd
;;     _eeRead
;;     ___lmul
;;     _eeWrite
;;     ___lwmod (ARG)
;;       _eeRead (ARG)
;;       ___lmul (ARG)
;;       _eeWrite (ARG)
;;   ___lwmod
;;     _eeRead (ARG)
;;     ___lmul (ARG)
;;     _eeWrite (ARG)
;;   _ufatOpen
;;   _secListWrite
;;     ___bmul
;;     _eeWrite
;;   _ufatGetNextSectorRange
;;     _ufatGetNextClus
;;       _ufatExtRead
;;         _sdSpiByte
;;         _sdSecReadStop
;;           _sdPrvSimpleCommand
;;             _sdSpiByte
;;             _sdPrvSendCmd
;;               _sdCrc7
;;               _sdSpiByte
;;             _sdPrvReadResp
;;               _sdSpiByte
;;         _sdReadStart
;;           _sdPrvSimpleCommand
;;             _sdSpiByte
;;             _sdPrvSendCmd
;;               _sdCrc7
;;               _sdSpiByte
;;             _sdPrvReadResp
;;               _sdSpiByte
;;           _log
;;             _eeWrite
;;           _sdSpiByte
;;       _ufatGetU16
;;     ___lmul
;;   _ufatExtReadTerminate
;;     _ufatExtRead
;;       _sdSpiByte
;;       _sdSecReadStop
;;         _sdPrvSimpleCommand
;;           _sdSpiByte
;;           _sdPrvSendCmd
;;             _sdCrc7
;;             _sdSpiByte
;;           _sdPrvReadResp
;;             _sdSpiByte
;;       _sdReadStart
;;         _sdPrvSimpleCommand
;;           _sdSpiByte
;;           _sdPrvSendCmd
;;             _sdCrc7
;;             _sdSpiByte
;;           _sdPrvReadResp
;;             _sdSpiByte
;;         _log
;;           _eeWrite
;;         _sdSpiByte
;;   _play
;;     _audioOn
;;     _secListRead
;;       ___bmul
;;       _eeRead
;;     _sdReadStart
;;       _sdPrvSimpleCommand
;;         _sdSpiByte
;;         _sdPrvSendCmd
;;           _sdCrc7
;;           _sdSpiByte
;;         _sdPrvReadResp
;;           _sdSpiByte
;;       _log
;;         _eeWrite
;;       _sdSpiByte
;;     _fatal
;;     _hdrProcess
;;       _spiCmp
;;         _byte
;;           _sdSpiByte
;;       _byte
;;         _sdSpiByte
;;       ___bmul
;;       ___lldiv
;;       _sdSpiByte
;;     _sdSecReadStop
;;       _sdPrvSimpleCommand
;;         _sdSpiByte
;;         _sdPrvSendCmd
;;           _sdCrc7
;;           _sdSpiByte
;;         _sdPrvReadResp
;;           _sdSpiByte
;;     _sdNextSec
;;       _sdSpiByte
;;     _sdSpiByte
;;     _audioOff
;;   _sleep
;;
;; _isr (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM              F0      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      A       C       2       85.7%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       7       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0      97       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50     49      4E       6       97.5%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BITBANK1            50      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BANK1               46     28      3D       8       87.1%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BITBANK2            50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BANK2                0      0       0      10        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;DATA                 0      0      9E      11        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 425 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sv              2   28[BANK1 ] unsigned short 
;;  j               1   25[BANK1 ] unsigned char 
;;  name           11    4[BANK1 ] unsigned char [11]
;;  sz              4   36[BANK1 ] unsigned long 
;;  sec             4   21[BANK1 ] unsigned long 
;;  id              2   32[BANK1 ] unsigned short 
;;  n               2   30[BANK1 ] unsigned short 
;;  i               2   26[BANK1 ] unsigned short 
;;  numFiles        2   19[BANK1 ] unsigned short 
;;  flags           1   35[BANK1 ] unsigned char 
;;  ret             1   34[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0      36       0
;;      Temps:          0       0       4       0
;;      Totals:         0       0      40       0
;;Total ram usage:       40 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_measureBattery
;;		_fatal
;;		_sdInit
;;		_ufatInit
;;		_ufatMount
;;		_ufatGetNthFile
;;		_rnd
;;		___lwmod
;;		_ufatOpen
;;		_secListWrite
;;		_ufatGetNextSectorRange
;;		_ufatExtReadTerminate
;;		_play
;;		_sleep
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	425
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 16
; Regs used in _main: [allreg]
	line	430
	
l6725:	
;main.c: 427: Boolean ret;
;main.c: 428: char name[11];
;main.c: 429: UInt8 flags;
;main.c: 430: UInt16 n, i = 0, id, numFiles = 0;
	movlb 1	; select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	clrf	(main@numFiles)^080h
	clrf	(main@numFiles+1)^080h
	line	433
	
l6727:	
;main.c: 431: UInt32 sec, sz;
;main.c: 433: OSCCON = 0b11110000;
	movlw	(0F0h)
	movwf	(153)^080h	;volatile
	line	434
	
l6729:	
;main.c: 434: OSCTUNE = 0x1F;
	movlw	(01Fh)
	movwf	(152)^080h	;volatile
	line	435
	
l6731:	
;main.c: 435: INTCON = 0b10000000;
	movlw	(080h)
	movwf	(11)	;volatile
	line	436
	
l6733:	
;main.c: 436: APFCON = 0b01000001;
	movlw	(041h)
	movlb 2	; select bank2
	movwf	(285)^0100h	;volatile
	line	437
	
l6735:	
;main.c: 437: TRISA = 0b11001100;
	movlw	(0CCh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	438
	
l6737:	
;main.c: 438: ANSELA = 0;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	439
;main.c: 439: OPTION_REG = 0b10000000;
	movlw	(080h)
	movlb 1	; select bank1
	movwf	(149)^080h	;volatile
	line	441
	
l6739:	
;main.c: 441: SWDTEN = 0;
	bcf	(1208/8)^080h,(1208)&7
	line	443
;main.c: 443: _delay((unsigned long)((64)*(33000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)^080h+0+2),f
movlw	172
movwf	((??_main+0)^080h+0+1),f
	movlw	179
movwf	((??_main+0)^080h+0),f
u5037:
	decfsz	((??_main+0)^080h+0),f
	goto	u5037
	decfsz	((??_main+0)^080h+0+1),f
	goto	u5037
	decfsz	((??_main+0)^080h+0+2),f
	goto	u5037
	clrwdt
opt asmopt_on

	line	444
;main.c: 444: _delay((unsigned long)((500)*(33000000/4000.0)));
	opt asmopt_off
movlw  21
	movlb 1	; select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	218
movwf	((??_main+0)^080h+0+1),f
	movlw	32
movwf	((??_main+0)^080h+0),f
u5047:
	decfsz	((??_main+0)^080h+0),f
	goto	u5047
	decfsz	((??_main+0)^080h+0+1),f
	goto	u5047
	decfsz	((??_main+0)^080h+0+2),f
	goto	u5047
	nop2
opt asmopt_on

	line	446
	
l6741:	
;main.c: 446: n = measureBattery();
	fcall	_measureBattery
	movf	(1+(?_measureBattery)),w
	movlb 1	; select bank1
	movwf	(main@n+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_measureBattery)),w
	movlb 1	; select bank1
	movwf	(main@n)^080h
	line	447
	
l6743:	
;main.c: 447: if(n > 3600) fatal(10);
	movlw	high(0E11h)
	subwf	(main@n+1)^080h,w
	movlw	low(0E11h)
	skipnz
	subwf	(main@n)^080h,w
	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l6747
u4820:
	
l6745:	
	movlw	(0Ah)
	fcall	_fatal
	line	448
	
l6747:	
;main.c: 448: if(n < 2500) fatal(11);
	movlw	high(09C4h)
	movlb 1	; select bank1
	subwf	(main@n+1)^080h,w
	movlw	low(09C4h)
	skipnz
	subwf	(main@n)^080h,w
	skipnc
	goto	u4831
	goto	u4830
u4831:
	goto	l6751
u4830:
	
l6749:	
	movlw	(0Bh)
	fcall	_fatal
	line	450
	
l6751:	
;main.c: 450: RA0 = 1;
	movlb 0	; select bank0
	bsf	(96/8),(96)&7
	line	451
	
l6753:	
;main.c: 451: ret = sdInit();
	fcall	_sdInit
	movlb 1	; select bank1
	movwf	(main@ret)^080h
	line	452
	
l6755:	
;main.c: 452: if(!ret) fatal(1);
	movf	(main@ret)^080h,f
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l6759
u4840:
	
l6757:	
	movlw	(01h)
	fcall	_fatal
	line	454
	
l6759:	
;main.c: 454: ufatInit();
	fcall	_ufatInit
	line	455
	
l6761:	
;main.c: 455: ret = ufatMount();
	fcall	_ufatMount
	movlb 1	; select bank1
	movwf	(main@ret)^080h
	line	456
	
l6763:	
;main.c: 456: if(!ret) fatal(6);
	movf	(main@ret)^080h,f
	skipz
	goto	u4851
	goto	u4850
u4851:
	goto	l6781
u4850:
	
l6765:	
	movlw	(06h)
	fcall	_fatal
	goto	l6781
	line	459
	
l6767:	
;main.c: 459: i++;
	movlb 1	; select bank1
	incf	(main@i)^080h,f
	skipnz
	incf	(main@i+1)^080h,f
	line	460
	
l6769:	
;main.c: 460: if(flags & (16 | 2)) continue;
	movf	(main@flags)^080h,w
	andlw	012h
	btfsc	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l6773
u4860:
	goto	l6781
	line	461
	
l6773:	
;main.c: 461: if(name[8] !='W' || name[9] != 'A' || name[10] != 'V') continue;
	movf	0+(main@name)^080h+08h,w
	xorlw	057h&0ffh
	skipz
	goto	u4871
	goto	u4870
u4871:
	goto	l6781
u4870:
	
l6775:	
	movf	0+(main@name)^080h+09h,w
	xorlw	041h&0ffh
	skipz
	goto	u4881
	goto	u4880
u4881:
	goto	l6781
u4880:
	
l6777:	
	movf	0+(main@name)^080h+0Ah,w
	xorlw	056h&0ffh
	skipnz
	goto	u4891
	goto	u4890
u4891:
	goto	l6779
u4890:
	goto	l6781
	line	462
	
l6779:	
;main.c: 462: numFiles++;
	incf	(main@numFiles)^080h,f
	skipnz
	incf	(main@numFiles+1)^080h,f
	line	458
	
l6781:	
	movlb 1	; select bank1
	movf	(main@i+1)^080h,w
	movlb 0	; select bank0
	movwf	(?_ufatGetNthFile+1)
	movlb 1	; select bank1
	movf	(main@i)^080h,w
	movlb 0	; select bank0
	movwf	(?_ufatGetNthFile)
	movlw	(main@name)&0ffh
	movwf	(0+?_ufatGetNthFile+02h)
	movlw	(main@sz)&0ffh
	movwf	(0+?_ufatGetNthFile+03h)
	movlw	(main@flags)&0ffh
	movwf	(0+?_ufatGetNthFile+04h)
	movlw	(main@id)&0ffh
	movwf	(0+?_ufatGetNthFile+05h)
	fcall	_ufatGetNthFile
	iorlw	0
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l6767
u4900:
	line	465
	
l6783:	
;main.c: 463: }
;main.c: 465: if(!numFiles) fatal(3);
	movlb 1	; select bank1
	movf	((main@numFiles+1)^080h),w
	iorwf	((main@numFiles)^080h),w
	skipz
	goto	u4911
	goto	u4910
u4911:
	goto	l1267
u4910:
	
l6785:	
	movlw	(03h)
	fcall	_fatal
	line	467
;main.c: 467: while(1){
	
l1267:	
	line	471
;main.c: 469: UInt8 j;
;main.c: 471: n = rnd() % numFiles;
	movlb 1	; select bank1
	movf	(main@numFiles+1)^080h,w
	movlb 0	; select bank0
	movwf	(?___lwmod+1)
	movlb 1	; select bank1
	movf	(main@numFiles)^080h,w
	movlb 0	; select bank0
	movwf	(?___lwmod)
	fcall	_rnd
	movf	(1+(?_rnd)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?_rnd)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movlb 1	; select bank1
	movwf	(main@n+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___lwmod)),w
	movlb 1	; select bank1
	movwf	(main@n)^080h
	line	473
	
l6787:	
;main.c: 473: i = 0;
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	line	474
;main.c: 474: while(ufatGetNthFile(i, name, &sz, &flags, &id)){
	goto	l6805
	line	475
	
l6789:	
;main.c: 475: i++;
	movlb 1	; select bank1
	incf	(main@i)^080h,f
	skipnz
	incf	(main@i+1)^080h,f
	line	476
	
l6791:	
;main.c: 476: if(flags & (16 | 2)) continue;
	movf	(main@flags)^080h,w
	andlw	012h
	btfsc	status,2
	goto	u4921
	goto	u4920
u4921:
	goto	l6795
u4920:
	goto	l6805
	line	477
	
l6795:	
;main.c: 477: if(name[8] !='W' || name[9] != 'A' || name[10] != 'V') continue;
	movf	0+(main@name)^080h+08h,w
	xorlw	057h&0ffh
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l6805
u4930:
	
l6797:	
	movf	0+(main@name)^080h+09h,w
	xorlw	041h&0ffh
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l6805
u4940:
	
l6799:	
	movf	0+(main@name)^080h+0Ah,w
	xorlw	056h&0ffh
	skipnz
	goto	u4951
	goto	u4950
u4951:
	goto	l6801
u4950:
	goto	l6805
	line	478
	
l6801:	
;main.c: 478: if(!n--) goto found;
	movlw	low(01h)
	subwf	(main@n)^080h,f
	movlw	high(01h)
	subwfb	(main@n+1)^080h,f
	incf	((main@n)^080h),w
	skipnz
	incf	((main@n+1)^080h),w

	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l6805
u4960:
	goto	l6809
	line	474
	
l6805:	
	movf	(main@i+1)^080h,w
	movlb 0	; select bank0
	movwf	(?_ufatGetNthFile+1)
	movlb 1	; select bank1
	movf	(main@i)^080h,w
	movlb 0	; select bank0
	movwf	(?_ufatGetNthFile)
	movlw	(main@name)&0ffh
	movwf	(0+?_ufatGetNthFile+02h)
	movlw	(main@sz)&0ffh
	movwf	(0+?_ufatGetNthFile+03h)
	movlw	(main@flags)&0ffh
	movwf	(0+?_ufatGetNthFile+04h)
	movlw	(main@id)&0ffh
	movwf	(0+?_ufatGetNthFile+05h)
	fcall	_ufatGetNthFile
	iorlw	0
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l6789
u4970:
	line	481
	
l6807:	
;main.c: 479: }
;main.c: 481: fatal(9);
	movlw	(09h)
	fcall	_fatal
	line	484
	
l6809:	
;main.c: 484: if(!ufatOpen(id)) fatal(7);
	movlb 1	; select bank1
	movf	(main@id+1)^080h,w
	movwf	(?_ufatOpen+1)
	movf	(main@id)^080h,w
	movwf	(?_ufatOpen)
	fcall	_ufatOpen
	iorlw	0
	skipz
	goto	u4981
	goto	u4980
u4981:
	goto	l6813
u4980:
	
l6811:	
	movlw	(07h)
	fcall	_fatal
	line	486
	
l6813:	
;main.c: 486: j = 0;
	movlb 1	; select bank1
	clrf	(main@j)^080h
	line	487
;main.c: 487: while(ufatGetNextSectorRange(&sec, &sz)){
	goto	l6829
	line	489
	
l6815:	
;main.c: 489: UInt16 sv = sz > 65535 ? 65535 : sz;
	movf	(main@sz+3)^080h,w
	movwf	(_main$2046+3)^080h
	movf	(main@sz+2)^080h,w
	movwf	(_main$2046+2)^080h
	movf	(main@sz+1)^080h,w
	movwf	(_main$2046+1)^080h
	movf	(main@sz)^080h,w
	movwf	(_main$2046)^080h

	movf	0+(((main@sz)^080h)+1),w
	movwf	((??_main+0)^080h+0)
	movf	1+(((main@sz)^080h)+1),w
	movwf	((??_main+0)^080h+0+1)
	movf	2+(((main@sz)^080h)+1),w
	movwf	((??_main+0)^080h+0+2)
	movf	(??_main+0)^080h+1,w
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+2,w
	movwf	(??_main+0)^080h+1
	clrf	(??_main+0)^080h+2
	movf	(1+(0+(??_main+0)^080h+0)),w
	iorwf	(0+(0+(??_main+0)^080h+0)),w
	skipnz
	goto	u4991
	goto	u4990
u4991:
	goto	l1283
u4990:
	
l6817:	
	movlw	0
	movwf	(_main$2046+3)^080h
	movlw	0
	movwf	(_main$2046+2)^080h
	movlw	0FFh
	movwf	(_main$2046+1)^080h
	movlw	0FFh
	movwf	(_main$2046)^080h

	
l1283:	
	movf	(_main$2046+1)^080h,w
	movwf	(main@sv+1)^080h
	movf	(_main$2046)^080h,w
	movwf	(main@sv)^080h
	line	490
	
l6819:	
;main.c: 490: secListWrite(j++, sec, sv);
	movf	(main@sec)^080h,w
	movwf	(?_secListWrite)
	movf	(main@sec+1)^080h,w
	movwf	(?_secListWrite+1)
	movf	(main@sec+2)^080h,w
	movwf	(?_secListWrite+2)
	movf	(main@sv+1)^080h,w
	movwf	1+(?_secListWrite)+03h
	movf	(main@sv)^080h,w
	movwf	0+(?_secListWrite)+03h
	movf	(main@j)^080h,w
	fcall	_secListWrite
	
l6821:	
	movlb 1	; select bank1
	incf	(main@j)^080h,f
	line	491
	
l6823:	
;main.c: 491: sec += sv;
	movf	(main@sv)^080h,w
	addwf	(main@sec)^080h,f
	movf	(main@sv+1)^080h,w
	addwfc	(main@sec+1)^080h,f
	movlw	0
	addwfc	(main@sec+2)^080h,f
	addwfc	(main@sec+3)^080h,f
	line	492
	
l6825:	
;main.c: 492: sz -= sv;
	movf	(main@sv)^080h,w
	movwf	((??_main+0)^080h+0)
	movf	(main@sv+1)^080h,w
	movwf	((??_main+0)^080h+0+1)
	clrf	((??_main+0)^080h+0+2)
	clrf	((??_main+0)^080h+0+3)
	movf	0+(??_main+0)^080h+0,w
	subwf	(main@sz)^080h,f
	movf	1+(??_main+0)^080h+0,w
	subwfb	(main@sz+1)^080h,f
	movf	2+(??_main+0)^080h+0,w
	subwfb	(main@sz+2)^080h,f
	movf	3+(??_main+0)^080h+0,w
	subwfb	(main@sz+3)^080h,f
	line	488
	
l6827:	
	movf	(main@sz+3)^080h,w
	iorwf	(main@sz+2)^080h,w
	iorwf	(main@sz+1)^080h,w
	iorwf	(main@sz)^080h,w
	skipz
	goto	u5001
	goto	u5000
u5001:
	goto	l6815
u5000:
	line	487
	
l6829:	
	movlw	(main@sz)&0ffh
	movlb 0	; select bank0
	movwf	(?_ufatGetNextSectorRange)
	movlw	(main@sec)&0ffh
	fcall	_ufatGetNextSectorRange
	iorlw	0
	skipz
	goto	u5011
	goto	u5010
u5011:
	goto	l6827
u5010:
	line	495
	
l6831:	
;main.c: 493: }
;main.c: 494: }
;main.c: 495: secListWrite(j, 0, 0);
	clrf	(?_secListWrite)
	clrf	(?_secListWrite+1)
	clrf	(?_secListWrite+2)
	clrf	0+(?_secListWrite)+03h
	clrf	1+(?_secListWrite)+03h
	movf	(main@j)^080h,w
	fcall	_secListWrite
	line	496
	
l6833:	
;main.c: 496: ufatExtReadTerminate();
	fcall	_ufatExtReadTerminate
	line	498
	
l6835:	
;main.c: 498: play();
	fcall	_play
	line	499
	
l6837:	
;main.c: 499: RA0 = 0;
	bcf	(96/8),(96)&7
	line	501
;main.c: 501: sleep(30000);
	movlw	0
	movwf	(?_sleep+3)
	movlw	0
	movwf	(?_sleep+2)
	movlw	075h
	movwf	(?_sleep+1)
	movlw	030h
	movwf	(?_sleep)

	fcall	_sleep
	line	503
	
l6839:	
;main.c: 503: RA0 = 1;
	movlb 0	; select bank0
	bsf	(96/8),(96)&7
	line	504
	
l6841:	
;main.c: 504: ret = sdInit();
	fcall	_sdInit
	movlb 1	; select bank1
	movwf	(main@ret)^080h
	line	505
	
l6843:	
;main.c: 505: if(!ret) fatal(1);
	movf	(main@ret)^080h,f
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l1267
u5020:
	
l6845:	
	movlw	(01h)
	fcall	_fatal
	goto	l1267
	line	508
	
l1290:	
	goto	l1290
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

psect	maintext
	line	509
	signat	_main,88
	global	_ufatGetNextSectorRange
psect	text1555,local,class=CODE,delta=2
global __ptext1555
__ptext1555:

;; *************** function _ufatGetNextSectorRange *****************
;; Defined at:
;;		line 161 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;  first           1    wreg     PTR unsigned long 
;;		 -> main@sec(4), 
;;  len             1   40[BANK0 ] PTR unsigned long 
;;		 -> main@sz(4), 
;; Auto vars:     Size  Location     Type
;;  first           1   43[BANK0 ] PTR unsigned long 
;;		 -> main@sec(4), 
;;  t               4   48[BANK0 ] unsigned long 
;;  next            2   46[BANK0 ] unsigned short 
;;  prev            2   44[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       9       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ufatGetNextClus
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1555
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	161
	global	__size_of_ufatGetNextSectorRange
	__size_of_ufatGetNextSectorRange	equ	__end_of_ufatGetNextSectorRange-_ufatGetNextSectorRange
	
_ufatGetNextSectorRange:	
	opt	stack 15
; Regs used in _ufatGetNextSectorRange: [wreg-status,0+pclath+cstack]
;ufatGetNextSectorRange@first stored from wreg
	line	163
	movwf	(ufatGetNextSectorRange@first)
	
l6691:	
;ufat.c: 163: u16 next = curClus, prev;
	movlb 1	; select bank1
	movf	(_curClus+1)^080h,w
	movlb 0	; select bank0
	movwf	(ufatGetNextSectorRange@next+1)
	movlb 1	; select bank1
	movf	(_curClus)^080h,w
	movlb 0	; select bank0
	movwf	(ufatGetNextSectorRange@next)
	line	167
;ufat.c: 164: u32 t;
;ufat.c: 167: if(curClus == 0xffff) return 0;
	movlb 1	; select bank1
	incf	(_curClus)^080h,w
	skipnz
	incf	(_curClus+1)^080h,w

	skipz
	goto	u4791
	goto	u4790
u4791:
	goto	l6697
u4790:
	
l6693:	
	movlw	(0)
	goto	l2514
	line	171
	
l6697:	
;ufat.c: 171: prev = next;
	movlb 0	; select bank0
	movf	(ufatGetNextSectorRange@next+1),w
	movwf	(ufatGetNextSectorRange@prev+1)
	movf	(ufatGetNextSectorRange@next),w
	movwf	(ufatGetNextSectorRange@prev)
	line	172
	
l6699:	
;ufat.c: 172: next = ufatGetNextClus(prev);
	movf	(ufatGetNextSectorRange@prev+1),w
	movwf	(?_ufatGetNextClus+1)
	movf	(ufatGetNextSectorRange@prev),w
	movwf	(?_ufatGetNextClus)
	fcall	_ufatGetNextClus
	movf	(1+(?_ufatGetNextClus)),w
	movwf	(ufatGetNextSectorRange@next+1)
	movf	(0+(?_ufatGetNextClus)),w
	movwf	(ufatGetNextSectorRange@next)
	line	173
	
l6701:	
;ufat.c: 173: }while(next == prev + 1 && next != 0xffff);
	movf	(ufatGetNextSectorRange@prev),w
	addlw	low(01h)
	movwf	(??_ufatGetNextSectorRange+0)+0
	movlw	high(01h)
	addwfc	(ufatGetNextSectorRange@prev+1),w
	movwf	1+(??_ufatGetNextSectorRange+0)+0
	movf	(ufatGetNextSectorRange@next+1),w
	xorwf	1+(??_ufatGetNextSectorRange+0)+0,w
	skipz
	goto	u4805
	movf	(ufatGetNextSectorRange@next),w
	xorwf	0+(??_ufatGetNextSectorRange+0)+0,w
u4805:

	skipz
	goto	u4801
	goto	u4800
u4801:
	goto	l6705
u4800:
	
l6703:	
	incf	(ufatGetNextSectorRange@next),w
	skipnz
	incf	(ufatGetNextSectorRange@next+1),w

	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l6697
u4810:
	line	178
	
l6705:	
;ufat.c: 178: t = prev + 1 - curClus;
	movlb 1	; select bank1
	movf	(_curClus)^080h,w
	movlb 0	; select bank0
	subwf	(ufatGetNextSectorRange@prev),w
	movwf	(??_ufatGetNextSectorRange+0)+0
	movlb 1	; select bank1
	movf	(_curClus+1)^080h,w
	movlb 0	; select bank0
	subwfb	(ufatGetNextSectorRange@prev+1),w
	movwf	1+(??_ufatGetNextSectorRange+0)+0
	movf	0+(??_ufatGetNextSectorRange+0)+0,w
	addlw	low(01h)
	movwf	(ufatGetNextSectorRange@t)
	movlw	high(01h)
	addwfc	1+(??_ufatGetNextSectorRange+0)+0,w
	movwf	1+(ufatGetNextSectorRange@t)
	clrf	2+(ufatGetNextSectorRange@t)
	clrf	3+(ufatGetNextSectorRange@t)
	line	179
	
l6707:	
;ufat.c: 179: t *= secPerClus;
	movlb 1	; select bank1
	movf	(_secPerClus)^080h,w
	movwf	(?___lmul)
	clrf	(?___lmul+1)
	clrf	(?___lmul+2)
	clrf	(?___lmul+3)

	movlb 0	; select bank0
	movf	(ufatGetNextSectorRange@t+3),w
	movwf	3+(?___lmul)+04h
	movf	(ufatGetNextSectorRange@t+2),w
	movwf	2+(?___lmul)+04h
	movf	(ufatGetNextSectorRange@t+1),w
	movwf	1+(?___lmul)+04h
	movf	(ufatGetNextSectorRange@t),w
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(ufatGetNextSectorRange@t+3)
	movf	(2+(?___lmul)),w
	movwf	(ufatGetNextSectorRange@t+2)
	movf	(1+(?___lmul)),w
	movwf	(ufatGetNextSectorRange@t+1)
	movf	(0+(?___lmul)),w
	movwf	(ufatGetNextSectorRange@t)

	line	180
	
l6709:	
;ufat.c: 180: *len = t;
	movf	(ufatGetNextSectorRange@len),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(ufatGetNextSectorRange@t),w
	movwi	[0]fsr1
	movf	(ufatGetNextSectorRange@t+1),w
	movwi	[1]fsr1
	movf	(ufatGetNextSectorRange@t+2),w
	movwi	[2]fsr1
	movf	(ufatGetNextSectorRange@t+3),w
	movwi	[3]fsr1
	line	182
	
l6711:	
;ufat.c: 182: t = (curClus - 2);
	movlb 1	; select bank1
	movf	(_curClus)^080h,w
	addlw	low(0FFFEh)
	movlb 0	; select bank0
	movwf	(ufatGetNextSectorRange@t)
	movlw	high(0FFFEh)
	movlb 1	; select bank1
	addwfc	(_curClus+1)^080h,w
	movlb 0	; select bank0
	movwf	1+(ufatGetNextSectorRange@t)
	clrf	2+(ufatGetNextSectorRange@t)
	clrf	3+(ufatGetNextSectorRange@t)
	line	183
	
l6713:	
;ufat.c: 183: t *= secPerClus;
	movlb 1	; select bank1
	movf	(_secPerClus)^080h,w
	movwf	(?___lmul)
	clrf	(?___lmul+1)
	clrf	(?___lmul+2)
	clrf	(?___lmul+3)

	movlb 0	; select bank0
	movf	(ufatGetNextSectorRange@t+3),w
	movwf	3+(?___lmul)+04h
	movf	(ufatGetNextSectorRange@t+2),w
	movwf	2+(?___lmul)+04h
	movf	(ufatGetNextSectorRange@t+1),w
	movwf	1+(?___lmul)+04h
	movf	(ufatGetNextSectorRange@t),w
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(ufatGetNextSectorRange@t+3)
	movf	(2+(?___lmul)),w
	movwf	(ufatGetNextSectorRange@t+2)
	movf	(1+(?___lmul)),w
	movwf	(ufatGetNextSectorRange@t+1)
	movf	(0+(?___lmul)),w
	movwf	(ufatGetNextSectorRange@t)

	line	184
	
l6715:	
;ufat.c: 184: t += dataSec;
	movlb 1	; select bank1
	movf	(_dataSec)^080h,w
	movlb 0	; select bank0
	addwf	(ufatGetNextSectorRange@t),f
	movlb 1	; select bank1
	movf	(_dataSec+1)^080h,w
	movlb 0	; select bank0
	addwfc	(ufatGetNextSectorRange@t+1),f
	movlw	0
	addwfc	(ufatGetNextSectorRange@t+2),f
	addwfc	(ufatGetNextSectorRange@t+3),f
	line	185
	
l6717:	
;ufat.c: 185: t += diskOffset;
	movf	(_diskOffset),w
	addwf	(ufatGetNextSectorRange@t),f
	movf	(_diskOffset+1),w
	addwfc	(ufatGetNextSectorRange@t+1),f
	movf	(_diskOffset+2),w
	addwfc	(ufatGetNextSectorRange@t+2),f
	movf	(_diskOffset+3),w
	addwfc	(ufatGetNextSectorRange@t+3),f
	line	186
;ufat.c: 186: *first = t;
	movf	(ufatGetNextSectorRange@first),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(ufatGetNextSectorRange@t),w
	movwi	[0]fsr1
	movf	(ufatGetNextSectorRange@t+1),w
	movwi	[1]fsr1
	movf	(ufatGetNextSectorRange@t+2),w
	movwi	[2]fsr1
	movf	(ufatGetNextSectorRange@t+3),w
	movwi	[3]fsr1
	line	188
	
l6719:	
;ufat.c: 188: curClus = next;
	movf	(ufatGetNextSectorRange@next+1),w
	movlb 1	; select bank1
	movwf	(_curClus+1)^080h
	movlb 0	; select bank0
	movf	(ufatGetNextSectorRange@next),w
	movlb 1	; select bank1
	movwf	(_curClus)^080h
	line	190
	
l6721:	
;ufat.c: 190: return 1;
	movlw	(01h)
	line	191
	
l2514:	
	return
	opt stack 0
GLOBAL	__end_of_ufatGetNextSectorRange
	__end_of_ufatGetNextSectorRange:
;; =============== function _ufatGetNextSectorRange ends ============

	signat	_ufatGetNextSectorRange,8313
	global	_ufatMount
psect	text1556,local,class=CODE,delta=2
global __ptext1556
__ptext1556:

;; *************** function _ufatMount *****************
;; Defined at:
;;		line 64 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buf            13   60[BANK0 ] unsigned char [13]
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      13       0       0
;;      Temps:          0       8       0       0
;;      Totals:         0      21       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ufatExtRead
;;		_ufatParsePartitionTable
;;		_ufatGetU16
;;		___wmul
;; This function is called by:
;;		_main
;;		_ufatParsePartitionTable
;; This function uses a non-reentrant model
;;
psect	text1556
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	64
	global	__size_of_ufatMount
	__size_of_ufatMount	equ	__end_of_ufatMount-_ufatMount
	
_ufatMount:	
	opt	stack 15
; Regs used in _ufatMount: [allreg]
	line	68
	
l6641:	
;ufat.c: 66: char buf[13];
;ufat.c: 68: if(!ufatExtRead(diskOffset, 0x36, 4, buf)) return 0;
	movf	(_diskOffset+3),w
	movwf	(?_ufatExtRead+3)
	movf	(_diskOffset+2),w
	movwf	(?_ufatExtRead+2)
	movf	(_diskOffset+1),w
	movwf	(?_ufatExtRead+1)
	movf	(_diskOffset),w
	movwf	(?_ufatExtRead)

	movlw	036h
	movwf	0+(?_ufatExtRead)+04h
	clrf	1+(?_ufatExtRead)+04h
	movlw	(04h)
	movwf	0+(?_ufatExtRead)+06h
	movlw	(ufatMount@buf)&0ffh
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l6647
u4700:
	
l6643:	
	movlw	(0)
	goto	l2476
	line	69
	
l6647:	
;ufat.c: 69: if(buf[0] !='F' || buf[1] !='A' || buf[2] != 'T' || buf[3] != '1'){
	movlb 0	; select bank0
	movf	(ufatMount@buf),w
	xorlw	046h&0ffh
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l6655
u4710:
	
l6649:	
	movf	0+(ufatMount@buf)+01h,w
	xorlw	041h&0ffh
	skipz
	goto	u4721
	goto	u4720
u4721:
	goto	l6655
u4720:
	
l6651:	
	movf	0+(ufatMount@buf)+02h,w
	xorlw	054h&0ffh
	skipz
	goto	u4731
	goto	u4730
u4731:
	goto	l6655
u4730:
	
l6653:	
	movf	0+(ufatMount@buf)+03h,w
	xorlw	031h&0ffh
	skipnz
	goto	u4741
	goto	u4740
u4741:
	goto	l6659
u4740:
	line	71
	
l6655:	
;ufat.c: 71: return ufatParsePartitionTable();
	fcall	_ufatParsePartitionTable
	goto	l2476
	line	74
	
l6659:	
;ufat.c: 72: }
;ufat.c: 74: if(!ufatExtRead(diskOffset, 0x0B, 13, buf)) return 0;
	movf	(_diskOffset+3),w
	movwf	(?_ufatExtRead+3)
	movf	(_diskOffset+2),w
	movwf	(?_ufatExtRead+2)
	movf	(_diskOffset+1),w
	movwf	(?_ufatExtRead+1)
	movf	(_diskOffset),w
	movwf	(?_ufatExtRead)

	movlw	0Bh
	movwf	0+(?_ufatExtRead)+04h
	clrf	1+(?_ufatExtRead)+04h
	movlw	(0Dh)
	movwf	0+(?_ufatExtRead)+06h
	movlw	(ufatMount@buf)&0ffh
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l6665
u4750:
	goto	l6643
	line	75
	
l6665:	
;ufat.c: 75: if(ufatGetU16(buf, 0x0B - 0x0B) != 512) return 0;
	clrf	(?_ufatGetU16)
	movlw	(ufatMount@buf)&0ffh
	fcall	_ufatGetU16
		movf	(1+(?_ufatGetU16)),w
	xorlw	2
	iorwf	(0+(?_ufatGetU16)),w

	skipnz
	goto	u4761
	goto	u4760
u4761:
	goto	l6671
u4760:
	goto	l6643
	line	76
	
l6671:	
;ufat.c: 76: secPerClus = buf[0x0D - 0x0B];
	movlb 0	; select bank0
	movf	0+(ufatMount@buf)+02h,w
	movlb 1	; select bank1
	movwf	(_secPerClus)^080h
	line	77
	
l6673:	
;ufat.c: 77: fatSec = ufatGetU16(buf, 0x0E - 0x0B);
	movlw	(03h)
	movwf	(?_ufatGetU16)
	movlw	(ufatMount@buf)&0ffh
	fcall	_ufatGetU16
	movf	(1+(?_ufatGetU16)),w
	movwf	(_fatSec+1)^080h
	movf	(0+(?_ufatGetU16)),w
	movwf	(_fatSec)^080h
	line	78
	
l6675:	
;ufat.c: 78: rootDirEntries = ufatGetU16(buf, 0x11 - 0x0B);
	movlw	(06h)
	movwf	(?_ufatGetU16)
	movlw	(ufatMount@buf)&0ffh
	fcall	_ufatGetU16
	movf	(1+(?_ufatGetU16)),w
	movwf	(_rootDirEntries+1)^080h
	movf	(0+(?_ufatGetU16)),w
	movwf	(_rootDirEntries)^080h
	line	79
	
l6677:	
;ufat.c: 79: sectorsPerFat = ufatGetU16(buf, 0x16 - 0x0B);
	movlw	(0Bh)
	movwf	(?_ufatGetU16)
	movlw	(ufatMount@buf)&0ffh
	fcall	_ufatGetU16
	movf	(1+(?_ufatGetU16)),w
	movwf	(_sectorsPerFat+1)^080h
	movf	(0+(?_ufatGetU16)),w
	movwf	(_sectorsPerFat)^080h
	line	81
	
l6679:	
;ufat.c: 81: rootSec = fatSec + sectorsPerFat * (u16)(buf[0x10 - 0x0B]);
	movlb 0	; select bank0
	movf	0+(ufatMount@buf)+05h,w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlb 1	; select bank1
	movf	(_sectorsPerFat+1)^080h,w
	movwf	1+(?___wmul)+02h
	movf	(_sectorsPerFat)^080h,w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(_rootSec+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(_rootSec)^080h
	
l6681:	
	movf	(_fatSec)^080h,w
	addwf	(_rootSec)^080h,f
	movf	(_fatSec+1)^080h,w
	addwfc	(_rootSec+1)^080h,f
	line	82
	
l6683:	
;ufat.c: 82: dataSec = rootSec + (((u32)rootDirEntries) * 32 + 512 - 1) / 512;
	movlw	0FFh
	movlb 0	; select bank0
	movwf	((??_ufatMount+0)+0)
	movlw	01h
	movwf	((??_ufatMount+0)+0+1)
	movlw	0
	movwf	((??_ufatMount+0)+0+2)
	movlw	0
	movwf	((??_ufatMount+0)+0+3)
	movlb 1	; select bank1
	movf	(_rootDirEntries)^080h,w
	movlb 0	; select bank0
	movwf	((??_ufatMount+4)+0)
	movlb 1	; select bank1
	movf	(_rootDirEntries+1)^080h,w
	movlb 0	; select bank0
	movwf	((??_ufatMount+4)+0+1)
	clrf	((??_ufatMount+4)+0+2)
	clrf	((??_ufatMount+4)+0+3)
	movlw	05h
u4775:
	lslf	(??_ufatMount+4)+0,f
	rlf	(??_ufatMount+4)+1,f
	rlf	(??_ufatMount+4)+2,f
	rlf	(??_ufatMount+4)+3,f
u4770:
	decfsz	wreg,f
	goto	u4775
	movf	0+(??_ufatMount+4)+0,w
	addwf	(??_ufatMount+0)+0,f
	movf	1+(??_ufatMount+4)+0,w
	addwfc	(??_ufatMount+0)+1,f
	movf	2+(??_ufatMount+4)+0,w
	addwfc	(??_ufatMount+0)+2,f
	movf	3+(??_ufatMount+4)+0,w
	addwfc	(??_ufatMount+0)+3,f
	movlw	09h
u4785:
	lsrf	(??_ufatMount+0)+3,f
	rrf	(??_ufatMount+0)+2,f
	rrf	(??_ufatMount+0)+1,f
	rrf	(??_ufatMount+0)+0,f
u4780:
	decfsz	wreg,f
	goto	u4785
	movf	1+(??_ufatMount+0)+0,w
	movlb 1	; select bank1
	movwf	(_dataSec+1)^080h
	movlb 0	; select bank0
	movf	0+(??_ufatMount+0)+0,w
	movlb 1	; select bank1
	movwf	(_dataSec)^080h
	
l6685:	
	movf	(_rootSec)^080h,w
	addwf	(_dataSec)^080h,f
	movf	(_rootSec+1)^080h,w
	addwfc	(_dataSec+1)^080h,f
	line	84
	
l6687:	
;ufat.c: 84: return 1;
	movlw	(01h)
	line	85
	
l2476:	
	return
	opt stack 0
GLOBAL	__end_of_ufatMount
	__end_of_ufatMount:
;; =============== function _ufatMount ends ============

	signat	_ufatMount,89
	global	_ufatGetNextClus
psect	text1557,local,class=CODE,delta=2
global __ptext1557
__ptext1557:

;; *************** function _ufatGetNextClus *****************
;; Defined at:
;;		line 145 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;  clus            2   30[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  sec             4   34[BANK0 ] unsigned long 
;;  buf             2   32[BANK0 ] unsigned char [2]
;;  offset          2   38[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2   30[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       8       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ufatExtRead
;;		_ufatGetU16
;; This function is called by:
;;		_ufatGetNextSectorRange
;; This function uses a non-reentrant model
;;
psect	text1557
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	145
	global	__size_of_ufatGetNextClus
	__size_of_ufatGetNextClus	equ	__end_of_ufatGetNextClus-_ufatGetNextClus
	
_ufatGetNextClus:	
	opt	stack 14
; Regs used in _ufatGetNextClus: [wreg-status,0+pclath+cstack]
	line	148
	
l6623:	
;ufat.c: 147: char buf[2];
;ufat.c: 148: u32 sec = diskOffset + fatSec;
	movlb 1	; select bank1
	movf	(_fatSec)^080h,w
	movlb 0	; select bank0
	movwf	(ufatGetNextClus@sec)
	movlb 1	; select bank1
	movf	(_fatSec+1)^080h,w
	movlb 0	; select bank0
	movwf	((ufatGetNextClus@sec))+1
	clrf	2+((ufatGetNextClus@sec))
	clrf	3+((ufatGetNextClus@sec))
	movf	(_diskOffset),w
	addwf	(ufatGetNextClus@sec),f
	movf	(_diskOffset+1),w
	addwfc	(ufatGetNextClus@sec+1),f
	movf	(_diskOffset+2),w
	addwfc	(ufatGetNextClus@sec+2),f
	movf	(_diskOffset+3),w
	addwfc	(ufatGetNextClus@sec+3),f
	line	151
;ufat.c: 149: u16 offset;
;ufat.c: 151: sec += clus / (512 / 2);
	movf	(ufatGetNextClus@clus+1),w
	addwf	(ufatGetNextClus@sec),f
	movlw	1
	skipnc
	addwf	(ufatGetNextClus@sec+1),f
	skipnc
	addwf	(ufatGetNextClus@sec+2),f
	skipnc
	addwf	(ufatGetNextClus@sec+3),f
	line	152
;ufat.c: 152: offset = (clus % (512 / 2)) * 2;
	movf	(ufatGetNextClus@clus+1),w
	movwf	(ufatGetNextClus@offset+1)
	movf	(ufatGetNextClus@clus),w
	movwf	(ufatGetNextClus@offset)
	movlw	0FFh
	andwf	(ufatGetNextClus@offset),f
	clrf	(ufatGetNextClus@offset+1)
	
l6625:	
	lslf	(ufatGetNextClus@offset),f
	rlf	(ufatGetNextClus@offset+1),f
	line	154
	
l6627:	
;ufat.c: 154: if(!ufatExtRead(sec, offset, 2, buf)) return 0xffff;
	movf	(ufatGetNextClus@sec+3),w
	movwf	(?_ufatExtRead+3)
	movf	(ufatGetNextClus@sec+2),w
	movwf	(?_ufatExtRead+2)
	movf	(ufatGetNextClus@sec+1),w
	movwf	(?_ufatExtRead+1)
	movf	(ufatGetNextClus@sec),w
	movwf	(?_ufatExtRead)

	movf	(ufatGetNextClus@offset+1),w
	movwf	1+(?_ufatExtRead)+04h
	movf	(ufatGetNextClus@offset),w
	movwf	0+(?_ufatExtRead)+04h
	movlw	(02h)
	movwf	0+(?_ufatExtRead)+06h
	movlw	(ufatGetNextClus@buf)&0ffh
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l6633
u4680:
	
l6629:	
	movlw	low(0FFFFh)
	movlb 0	; select bank0
	movwf	(?_ufatGetNextClus)
	movlw	high(0FFFFh)
	movwf	((?_ufatGetNextClus))+1
	goto	l2509
	line	156
	
l6633:	
;ufat.c: 156: clus = ufatGetU16(buf, 0);
	clrf	(?_ufatGetU16)
	movlw	(ufatGetNextClus@buf)&0ffh
	fcall	_ufatGetU16
	movf	(1+(?_ufatGetU16)),w
	movlb 0	; select bank0
	movwf	(ufatGetNextClus@clus+1)
	movf	(0+(?_ufatGetU16)),w
	movwf	(ufatGetNextClus@clus)
	line	157
	
l6635:	
;ufat.c: 157: if(clus >= 0xfff8) return 0xffff;
	movlw	high(0FFF8h)
	subwf	(ufatGetNextClus@clus+1),w
	movlw	low(0FFF8h)
	skipnz
	subwf	(ufatGetNextClus@clus),w
	skipc
	goto	u4691
	goto	u4690
u4691:
	goto	l2510
u4690:
	goto	l6629
	
l2510:	
	line	159
;ufat.c: 159: return clus;
	line	160
	
l2509:	
	return
	opt stack 0
GLOBAL	__end_of_ufatGetNextClus
	__end_of_ufatGetNextClus:
;; =============== function _ufatGetNextClus ends ============

	signat	_ufatGetNextClus,4218
	global	_ufatParsePartitionTable
psect	text1558,local,class=CODE,delta=2
global __ptext1558
__ptext1558:

;; *************** function _ufatParsePartitionTable *****************
;; Defined at:
;;		line 24 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  record         16   34[BANK0 ] unsigned char [16]
;;  offset          2   50[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      18       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      22       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ufatExtRead
;;		_ufatMount
;; This function is called by:
;;		_ufatMount
;; This function uses a non-reentrant model
;;
psect	text1558
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	24
	global	__size_of_ufatParsePartitionTable
	__size_of_ufatParsePartitionTable	equ	__end_of_ufatParsePartitionTable-_ufatParsePartitionTable
	
_ufatParsePartitionTable:	
	opt	stack 14
; Regs used in _ufatParsePartitionTable: [allreg]
	line	29
	
l6579:	
;ufat.c: 26: char record[16];
;ufat.c: 27: u16 offset;
;ufat.c: 29: if(diskOffset) return 0;
	movf	(_diskOffset+3),w
	iorwf	(_diskOffset+2),w
	iorwf	(_diskOffset+1),w
	iorwf	(_diskOffset),w
	skipnz
	goto	u4581
	goto	u4580
u4581:
	goto	l6585
u4580:
	
l6581:	
	movlw	(0)
	goto	l2457
	line	31
	
l6585:	
;ufat.c: 31: for(offset = 0x1BE; offset < 0x1FE; offset += 16){
	movlw	low(01BEh)
	movwf	(ufatParsePartitionTable@offset)
	movlw	high(01BEh)
	movwf	((ufatParsePartitionTable@offset))+1
	line	33
	
l6589:	
;ufat.c: 33: if(!ufatExtRead(0, offset, 16, record)) return 0;
	clrf	(?_ufatExtRead)
	clrf	(?_ufatExtRead+1)
	clrf	(?_ufatExtRead+2)
	clrf	(?_ufatExtRead+3)
	movf	(ufatParsePartitionTable@offset+1),w
	movwf	1+(?_ufatExtRead)+04h
	movf	(ufatParsePartitionTable@offset),w
	movwf	0+(?_ufatExtRead)+04h
	movlw	(010h)
	movwf	0+(?_ufatExtRead)+06h
	movlw	(ufatParsePartitionTable@record)&0ffh
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l6595
u4590:
	goto	l6581
	line	34
	
l6595:	
;ufat.c: 34: if(record[4] != 1 && record[4] != 4 && record[4] != 6 && record[4] != 0x0B && record[4] != 0x0C && record[4] != 0x0E) continue;
	movlb 0	; select bank0
	decf	0+(ufatParsePartitionTable@record)+04h,w
	skipnz
	goto	u4601
	goto	u4600
u4601:
	goto	l6609
u4600:
	
l6597:	
	movf	0+(ufatParsePartitionTable@record)+04h,w
	xorlw	04h&0ffh
	skipnz
	goto	u4611
	goto	u4610
u4611:
	goto	l6609
u4610:
	
l6599:	
	movf	0+(ufatParsePartitionTable@record)+04h,w
	xorlw	06h&0ffh
	skipnz
	goto	u4621
	goto	u4620
u4621:
	goto	l6609
u4620:
	
l6601:	
	movf	0+(ufatParsePartitionTable@record)+04h,w
	xorlw	0Bh&0ffh
	skipnz
	goto	u4631
	goto	u4630
u4631:
	goto	l6609
u4630:
	
l6603:	
	movf	0+(ufatParsePartitionTable@record)+04h,w
	xorlw	0Ch&0ffh
	skipnz
	goto	u4641
	goto	u4640
u4641:
	goto	l6609
u4640:
	
l6605:	
	movf	0+(ufatParsePartitionTable@record)+04h,w
	xorlw	0Eh&0ffh
	skipnz
	goto	u4651
	goto	u4650
u4651:
	goto	l6609
u4650:
	goto	l6617
	line	37
	
l6609:	
;ufat.c: 37: diskOffset = record[11];
	movf	0+(ufatParsePartitionTable@record)+0Bh,w
	movwf	(_diskOffset)
	clrf	(_diskOffset+1)
	clrf	(_diskOffset+2)
	clrf	(_diskOffset+3)

	line	38
;ufat.c: 38: diskOffset = (diskOffset << 8) | record[10];
	movf	(_diskOffset),w
	movwf	(??_ufatParsePartitionTable+0)+0
	movf	(_diskOffset+1),w
	movwf	((??_ufatParsePartitionTable+0)+0+1)
	movf	(_diskOffset+2),w
	movwf	((??_ufatParsePartitionTable+0)+0+2)
	movf	(_diskOffset+3),w
	movwf	((??_ufatParsePartitionTable+0)+0+3)
	movf	(??_ufatParsePartitionTable+0)+2,w
	movwf	(??_ufatParsePartitionTable+0)+3
	movf	(??_ufatParsePartitionTable+0)+1,w
	movwf	(??_ufatParsePartitionTable+0)+2
	movf	(??_ufatParsePartitionTable+0)+0,w
	movwf	(??_ufatParsePartitionTable+0)+1
	clrf	(??_ufatParsePartitionTable+0)+0
	movf	0+(ufatParsePartitionTable@record)+0Ah,w
	iorwf	0+(??_ufatParsePartitionTable+0)+0,w
	movwf	(_diskOffset)
	movf	1+(??_ufatParsePartitionTable+0)+0,w
	movwf	1+(_diskOffset)
	movf	2+(??_ufatParsePartitionTable+0)+0,w
	movwf	2+(_diskOffset)
	movf	3+(??_ufatParsePartitionTable+0)+0,w
	movwf	3+(_diskOffset)
	line	39
;ufat.c: 39: diskOffset = (diskOffset << 8) | record[9];
	movf	(_diskOffset),w
	movwf	(??_ufatParsePartitionTable+0)+0
	movf	(_diskOffset+1),w
	movwf	((??_ufatParsePartitionTable+0)+0+1)
	movf	(_diskOffset+2),w
	movwf	((??_ufatParsePartitionTable+0)+0+2)
	movf	(_diskOffset+3),w
	movwf	((??_ufatParsePartitionTable+0)+0+3)
	movf	(??_ufatParsePartitionTable+0)+2,w
	movwf	(??_ufatParsePartitionTable+0)+3
	movf	(??_ufatParsePartitionTable+0)+1,w
	movwf	(??_ufatParsePartitionTable+0)+2
	movf	(??_ufatParsePartitionTable+0)+0,w
	movwf	(??_ufatParsePartitionTable+0)+1
	clrf	(??_ufatParsePartitionTable+0)+0
	movf	0+(ufatParsePartitionTable@record)+09h,w
	iorwf	0+(??_ufatParsePartitionTable+0)+0,w
	movwf	(_diskOffset)
	movf	1+(??_ufatParsePartitionTable+0)+0,w
	movwf	1+(_diskOffset)
	movf	2+(??_ufatParsePartitionTable+0)+0,w
	movwf	2+(_diskOffset)
	movf	3+(??_ufatParsePartitionTable+0)+0,w
	movwf	3+(_diskOffset)
	line	40
;ufat.c: 40: diskOffset = (diskOffset << 8) | record[8];
	movf	(_diskOffset),w
	movwf	(??_ufatParsePartitionTable+0)+0
	movf	(_diskOffset+1),w
	movwf	((??_ufatParsePartitionTable+0)+0+1)
	movf	(_diskOffset+2),w
	movwf	((??_ufatParsePartitionTable+0)+0+2)
	movf	(_diskOffset+3),w
	movwf	((??_ufatParsePartitionTable+0)+0+3)
	movf	(??_ufatParsePartitionTable+0)+2,w
	movwf	(??_ufatParsePartitionTable+0)+3
	movf	(??_ufatParsePartitionTable+0)+1,w
	movwf	(??_ufatParsePartitionTable+0)+2
	movf	(??_ufatParsePartitionTable+0)+0,w
	movwf	(??_ufatParsePartitionTable+0)+1
	clrf	(??_ufatParsePartitionTable+0)+0
	movf	0+(ufatParsePartitionTable@record)+08h,w
	iorwf	0+(??_ufatParsePartitionTable+0)+0,w
	movwf	(_diskOffset)
	movf	1+(??_ufatParsePartitionTable+0)+0,w
	movwf	1+(_diskOffset)
	movf	2+(??_ufatParsePartitionTable+0)+0,w
	movwf	2+(_diskOffset)
	movf	3+(??_ufatParsePartitionTable+0)+0,w
	movwf	3+(_diskOffset)
	line	41
	
l6611:	
;ufat.c: 41: if(ufatMount()) return 1;
	fcall	_ufatMount
	xorlw	0&0ffh
	skipnz
	goto	u4661
	goto	u4660
u4661:
	goto	l6617
u4660:
	
l6613:	
	movlw	(01h)
	goto	l2457
	line	31
	
l6617:	
	movlw	010h
	movlb 0	; select bank0
	addwf	(ufatParsePartitionTable@offset),f
	skipnc
	incf	(ufatParsePartitionTable@offset+1),f
	movlw	high(01FEh)
	subwf	(ufatParsePartitionTable@offset+1),w
	movlw	low(01FEh)
	skipnz
	subwf	(ufatParsePartitionTable@offset),w
	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l6589
u4670:
	goto	l6581
	line	45
	
l2457:	
	return
	opt stack 0
GLOBAL	__end_of_ufatParsePartitionTable
	__end_of_ufatParsePartitionTable:
;; =============== function _ufatParsePartitionTable ends ============

	signat	_ufatParsePartitionTable,89
	global	_ufatGetNthFile
psect	text1559,local,class=CODE,delta=2
global __ptext1559
__ptext1559:

;; *************** function _ufatGetNthFile *****************
;; Defined at:
;;		line 87 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;  n               2   30[BANK0 ] unsigned short 
;;  name            1   32[BANK0 ] PTR unsigned char 
;;		 -> main@name(11), 
;;  sz              1   33[BANK0 ] PTR unsigned long 
;;		 -> main@sz(4), 
;;  flags           1   34[BANK0 ] PTR unsigned char 
;;		 -> main@flags(1), 
;;  id              1   35[BANK0 ] PTR unsigned short 
;;		 -> main@id(2), 
;; Auto vars:     Size  Location     Type
;;  buf             4   40[BANK0 ] unsigned char [4]
;;  sec             4   44[BANK0 ] unsigned long 
;;  offset          2   48[BANK0 ] unsigned short 
;;  i               2   36[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1E/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0      14       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      20       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ufatExtRead
;;		_ufatGetU16
;;		_ufatGetU32
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1559
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	87
	global	__size_of_ufatGetNthFile
	__size_of_ufatGetNthFile	equ	__end_of_ufatGetNthFile-_ufatGetNthFile
	
_ufatGetNthFile:	
	opt	stack 15
; Regs used in _ufatGetNthFile: [wreg-status,0+pclath+cstack]
	line	90
	
l6497:	
;ufat.c: 89: u16 i;
;ufat.c: 90: u32 sec = diskOffset + rootSec;
	movlb 1	; select bank1
	movf	(_rootSec)^080h,w
	movlb 0	; select bank0
	movwf	(ufatGetNthFile@sec)
	movlb 1	; select bank1
	movf	(_rootSec+1)^080h,w
	movlb 0	; select bank0
	movwf	((ufatGetNthFile@sec))+1
	clrf	2+((ufatGetNthFile@sec))
	clrf	3+((ufatGetNthFile@sec))
	movf	(_diskOffset),w
	addwf	(ufatGetNthFile@sec),f
	movf	(_diskOffset+1),w
	addwfc	(ufatGetNthFile@sec+1),f
	movf	(_diskOffset+2),w
	addwfc	(ufatGetNthFile@sec+2),f
	movf	(_diskOffset+3),w
	addwfc	(ufatGetNthFile@sec+3),f
	line	91
	
l6499:	
;ufat.c: 91: u16 offset = 0;
	clrf	(ufatGetNthFile@offset)
	clrf	(ufatGetNthFile@offset+1)
	line	94
	
l6501:	
;ufat.c: 92: u8 buf[4];
;ufat.c: 94: for(i = 0; i < rootDirEntries; i++){
	clrf	(ufatGetNthFile@i)
	clrf	(ufatGetNthFile@i+1)
	goto	l6573
	line	96
	
l6503:	
;ufat.c: 96: if(!ufatExtRead(sec, offset, 1, buf)) return 0;
	movf	(ufatGetNthFile@sec+3),w
	movwf	(?_ufatExtRead+3)
	movf	(ufatGetNthFile@sec+2),w
	movwf	(?_ufatExtRead+2)
	movf	(ufatGetNthFile@sec+1),w
	movwf	(?_ufatExtRead+1)
	movf	(ufatGetNthFile@sec),w
	movwf	(?_ufatExtRead)

	movf	(ufatGetNthFile@offset+1),w
	movwf	1+(?_ufatExtRead)+04h
	movf	(ufatGetNthFile@offset),w
	movwf	0+(?_ufatExtRead)+04h
	clrf	0+(?_ufatExtRead)+06h
	incf	0+(?_ufatExtRead)+06h,f
	movlw	(ufatGetNthFile@buf)&0ffh
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l6509
u4420:
	
l6505:	
	movlw	(0)
	goto	l2487
	line	97
	
l6509:	
;ufat.c: 97: if(buf[0] == 0) break;
	movlb 0	; select bank0
	movf	(ufatGetNthFile@buf),f
	skipz
	goto	u4431
	goto	u4430
u4431:
	goto	l6513
u4430:
	goto	l6505
	line	98
	
l6513:	
;ufat.c: 98: if(buf[0] != 0xE5 && buf[0] != 0x2E){
	movf	(ufatGetNthFile@buf),w
	xorlw	0E5h&0ffh
	skipnz
	goto	u4441
	goto	u4440
u4441:
	goto	l6565
u4440:
	
l6515:	
	movf	(ufatGetNthFile@buf),w
	xorlw	02Eh&0ffh
	skipnz
	goto	u4451
	goto	u4450
u4451:
	goto	l6565
u4450:
	line	100
	
l6517:	
;ufat.c: 100: if(!n--){
	movlw	low(01h)
	subwf	(ufatGetNthFile@n),f
	movlw	high(01h)
	subwfb	(ufatGetNthFile@n+1),f
	incf	((ufatGetNthFile@n)),w
	skipnz
	incf	((ufatGetNthFile@n+1)),w

	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l6565
u4460:
	line	102
	
l6519:	
;ufat.c: 102: if(name){
	movf	(ufatGetNthFile@name),w
	skipz
	goto	u4470
	goto	l6533
u4470:
	line	104
	
l6521:	
;ufat.c: 104: name[0] = (buf[0] == 0x05) ? 0xE5 : buf[0];
	movf	(ufatGetNthFile@buf),w
	movwf	(_ufatGetNthFile$3417)
	clrf	(_ufatGetNthFile$3417+1)
	movf	(ufatGetNthFile@buf),w
	xorlw	05h&0ffh
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l6525
u4480:
	
l6523:	
	movlw	0E5h
	movwf	(_ufatGetNthFile$3417)
	clrf	(_ufatGetNthFile$3417+1)
	
l6525:	
	movf	(ufatGetNthFile@name),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_ufatGetNthFile$3417),w
	movwf	indf1
	line	105
	
l6527:	
;ufat.c: 105: if(!ufatExtRead(sec, offset + 1, 10, name + 1)) return 0;
	movf	(ufatGetNthFile@sec+3),w
	movwf	(?_ufatExtRead+3)
	movf	(ufatGetNthFile@sec+2),w
	movwf	(?_ufatExtRead+2)
	movf	(ufatGetNthFile@sec+1),w
	movwf	(?_ufatExtRead+1)
	movf	(ufatGetNthFile@sec),w
	movwf	(?_ufatExtRead)

	movf	(ufatGetNthFile@offset),w
	addlw	low(01h)
	movwf	0+(?_ufatExtRead)+04h
	movlw	high(01h)
	addwfc	(ufatGetNthFile@offset+1),w
	movwf	1+0+(?_ufatExtRead)+04h
	movlw	(0Ah)
	movwf	0+(?_ufatExtRead)+06h
	incf	(ufatGetNthFile@name),w
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4491
	goto	u4490
u4491:
	goto	l6533
u4490:
	goto	l6505
	line	108
	
l6533:	
;ufat.c: 106: }
;ufat.c: 108: if(flags){
	movlb 0	; select bank0
	movf	(ufatGetNthFile@flags),w
	skipz
	goto	u4500
	goto	l6541
u4500:
	line	110
	
l6535:	
;ufat.c: 110: if(!ufatExtRead(sec, offset + 0x0B, 1, flags)) return 0;
	movf	(ufatGetNthFile@sec+3),w
	movwf	(?_ufatExtRead+3)
	movf	(ufatGetNthFile@sec+2),w
	movwf	(?_ufatExtRead+2)
	movf	(ufatGetNthFile@sec+1),w
	movwf	(?_ufatExtRead+1)
	movf	(ufatGetNthFile@sec),w
	movwf	(?_ufatExtRead)

	movf	(ufatGetNthFile@offset),w
	addlw	low(0Bh)
	movwf	0+(?_ufatExtRead)+04h
	movlw	high(0Bh)
	addwfc	(ufatGetNthFile@offset+1),w
	movwf	1+0+(?_ufatExtRead)+04h
	clrf	0+(?_ufatExtRead)+06h
	incf	0+(?_ufatExtRead)+06h,f
	movf	(ufatGetNthFile@flags),w
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4511
	goto	u4510
u4511:
	goto	l6541
u4510:
	goto	l6505
	line	113
	
l6541:	
;ufat.c: 111: }
;ufat.c: 113: if(id){
	movlb 0	; select bank0
	movf	(ufatGetNthFile@id),w
	skipz
	goto	u4520
	goto	l6551
u4520:
	line	115
	
l6543:	
;ufat.c: 115: if(!ufatExtRead(sec, offset + 0x1A, 2, buf)) return 0;
	movf	(ufatGetNthFile@sec+3),w
	movwf	(?_ufatExtRead+3)
	movf	(ufatGetNthFile@sec+2),w
	movwf	(?_ufatExtRead+2)
	movf	(ufatGetNthFile@sec+1),w
	movwf	(?_ufatExtRead+1)
	movf	(ufatGetNthFile@sec),w
	movwf	(?_ufatExtRead)

	movf	(ufatGetNthFile@offset),w
	addlw	low(01Ah)
	movwf	0+(?_ufatExtRead)+04h
	movlw	high(01Ah)
	addwfc	(ufatGetNthFile@offset+1),w
	movwf	1+0+(?_ufatExtRead)+04h
	movlw	(02h)
	movwf	0+(?_ufatExtRead)+06h
	movlw	(ufatGetNthFile@buf)&0ffh
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l6549
u4530:
	goto	l6505
	line	116
	
l6549:	
;ufat.c: 116: *id = ufatGetU16(buf, 0);
	clrf	(?_ufatGetU16)
	movlw	(ufatGetNthFile@buf)&0ffh
	fcall	_ufatGetU16
	movlb 0	; select bank0
	movf	(ufatGetNthFile@id),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(0+(?_ufatGetU16)),w
	movwi	[0]fsr1
	movf	(1+(?_ufatGetU16)),w
	movwi	[1]fsr1
	line	119
	
l6551:	
;ufat.c: 117: }
;ufat.c: 119: if(sz){
	movf	(ufatGetNthFile@sz),w
	skipz
	goto	u4540
	goto	l6561
u4540:
	line	121
	
l6553:	
;ufat.c: 121: if(!ufatExtRead(sec, offset + 0x1C, 4, buf)) return 0;
	movf	(ufatGetNthFile@sec+3),w
	movwf	(?_ufatExtRead+3)
	movf	(ufatGetNthFile@sec+2),w
	movwf	(?_ufatExtRead+2)
	movf	(ufatGetNthFile@sec+1),w
	movwf	(?_ufatExtRead+1)
	movf	(ufatGetNthFile@sec),w
	movwf	(?_ufatExtRead)

	movf	(ufatGetNthFile@offset),w
	addlw	low(01Ch)
	movwf	0+(?_ufatExtRead)+04h
	movlw	high(01Ch)
	addwfc	(ufatGetNthFile@offset+1),w
	movwf	1+0+(?_ufatExtRead)+04h
	movlw	(04h)
	movwf	0+(?_ufatExtRead)+06h
	movlw	(ufatGetNthFile@buf)&0ffh
	movwf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	iorlw	0
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l6559
u4550:
	goto	l6505
	line	122
	
l6559:	
;ufat.c: 122: *sz = ufatGetU32(buf, 0);
	clrf	(?_ufatGetU32)
	movlw	(ufatGetNthFile@buf)&0ffh
	fcall	_ufatGetU32
	movf	(ufatGetNthFile@sz),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(0+(?_ufatGetU32)),w
	movwi	[0]fsr1
	movf	(1+(?_ufatGetU32)),w
	movwi	[1]fsr1
	movf	(2+(?_ufatGetU32)),w
	movwi	[2]fsr1
	movf	(3+(?_ufatGetU32)),w
	movwi	[3]fsr1
	line	125
	
l6561:	
;ufat.c: 123: }
;ufat.c: 125: return 1;
	movlw	(01h)
	goto	l2487
	line	128
	
l6565:	
;ufat.c: 126: }
;ufat.c: 127: }
;ufat.c: 128: offset += 32;
	movlw	020h
	addwf	(ufatGetNthFile@offset),f
	skipnc
	incf	(ufatGetNthFile@offset+1),f
	line	129
;ufat.c: 129: if(offset == 512){
		movf	(ufatGetNthFile@offset+1),w
	xorlw	2
	iorwf	(ufatGetNthFile@offset),w

	skipz
	goto	u4561
	goto	u4560
u4561:
	goto	l6571
u4560:
	line	130
	
l6567:	
;ufat.c: 130: offset = 0;
	clrf	(ufatGetNthFile@offset)
	clrf	(ufatGetNthFile@offset+1)
	line	131
	
l6569:	
;ufat.c: 131: sec++;
	incf	(ufatGetNthFile@sec),f
	skipnz
	incf	(ufatGetNthFile@sec+1),f
	skipnz
	incf	(ufatGetNthFile@sec+2),f
	skipnz
	incf	(ufatGetNthFile@sec+3),f
	line	94
	
l6571:	
	incf	(ufatGetNthFile@i),f
	skipnz
	incf	(ufatGetNthFile@i+1),f
	
l6573:	
	movlb 1	; select bank1
	movf	(_rootDirEntries+1)^080h,w
	movlb 0	; select bank0
	subwf	(ufatGetNthFile@i+1),w
	skipz
	goto	u4575
	movlb 1	; select bank1
	movf	(_rootDirEntries)^080h,w
	movlb 0	; select bank0
	subwf	(ufatGetNthFile@i),w
u4575:
	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l6503
u4570:
	goto	l6505
	line	137
	
l2487:	
	return
	opt stack 0
GLOBAL	__end_of_ufatGetNthFile
	__end_of_ufatGetNthFile:
;; =============== function _ufatGetNthFile ends ============

	signat	_ufatGetNthFile,20601
	global	_sdInit
psect	text1560,local,class=CODE,delta=2
global __ptext1560
__ptext1560:

;; *************** function _sdInit *****************
;; Defined at:
;;		line 181 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  v               1   37[BANK0 ] unsigned char 
;;  SD              1   36[BANK0 ] unsigned char 
;;  tries           1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1B/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_sdSpiInit
;;		_sdClockSpeed
;;		_sdSpiByte
;;		_sdSpiResync
;;		_sdPrvSimpleCommand
;;		_sdPrvCardInit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1560
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	181
	global	__size_of_sdInit
	__size_of_sdInit	equ	__end_of_sdInit-_sdInit
	
_sdInit:	
	opt	stack 15
; Regs used in _sdInit: [wreg+fsr1l-status,0+pclath+cstack]
	line	183
	
l6429:	
;SD.c: 183: UInt8 v, tries = 0;
	clrf	(sdInit@tries)
	line	188
	
l6431:	
;SD.c: 188: sdSpiInit();
	fcall	_sdSpiInit
	line	190
	
l6433:	
;SD.c: 190: sdClockSpeed(0);
	movlw	(0)
	fcall	_sdClockSpeed
	line	192
;SD.c: 191: ;
;SD.c: 192: for(v = 0; v < 20; v++) sdSpiByte(0xFF);
	movlb 0	; select bank0
	clrf	(sdInit@v)
	
l6439:	
	movlw	(0FFh)
	fcall	_sdSpiByte
	
l6441:	
	movlb 0	; select bank0
	incf	(sdInit@v),f
	
l6443:	
	movlw	(014h)
	subwf	(sdInit@v),w
	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l6439
u4350:
	line	196
	
l6445:	
;SD.c: 196: sdSpiResync();
	fcall	_sdSpiResync
	line	197
	
l6447:	
;SD.c: 197: v = sdPrvSimpleCommand(0, 0, 1);
	movlb 0	; select bank0
	clrf	(?_sdPrvSimpleCommand)
	clrf	(?_sdPrvSimpleCommand+1)
	clrf	(?_sdPrvSimpleCommand+2)
	clrf	(?_sdPrvSimpleCommand+3)
	clrf	0+(?_sdPrvSimpleCommand)+04h
	incf	0+(?_sdPrvSimpleCommand)+04h,f
	movlw	(0)
	fcall	_sdPrvSimpleCommand
	movwf	(sdInit@v)
	line	199
	
l6449:	
;SD.c: 199: tries++;
	incf	(sdInit@tries),f
	line	200
	
l6451:	
;SD.c: 200: if(tries > 30) return 0;
	movlw	(01Fh)
	subwf	(sdInit@tries),w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l6457
u4360:
	
l6453:	
	movlw	(0)
	goto	l2413
	line	201
	
l6457:	
;SD.c: 201: }while(v != 0x01);
	decf	(sdInit@v),w
	skipz
	goto	u4371
	goto	u4370
u4371:
	goto	l6445
u4370:
	line	203
	
l6459:	
;SD.c: 203: v = sdPrvSimpleCommand(55, 0, 1);
	clrf	(?_sdPrvSimpleCommand)
	clrf	(?_sdPrvSimpleCommand+1)
	clrf	(?_sdPrvSimpleCommand+2)
	clrf	(?_sdPrvSimpleCommand+3)
	clrf	0+(?_sdPrvSimpleCommand)+04h
	incf	0+(?_sdPrvSimpleCommand)+04h,f
	movlw	(037h)
	fcall	_sdPrvSimpleCommand
	movwf	(sdInit@v)
	line	204
	
l6461:	
;SD.c: 204: if(v & 0x80) return 0;
	btfss	(sdInit@v),(7)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l6467
u4380:
	goto	l6453
	line	205
	
l6467:	
;SD.c: 205: SD = !(v & 0x04);
	movlw	0
	btfss	(sdInit@v),(2)&7
	movlw	1
	movwf	(sdInit@SD)
	line	207
	
l6469:	
;SD.c: 207: if(!sdPrvCardInit(SD))return 0;
	movf	(sdInit@SD),w
	fcall	_sdPrvCardInit
	iorlw	0
	skipz
	goto	u4391
	goto	u4390
u4391:
	goto	l6475
u4390:
	goto	l6453
	line	209
	
l6475:	
;SD.c: 209: v = sdPrvSimpleCommand(16, 512, 1);
	movlw	0
	movwf	(?_sdPrvSimpleCommand+3)
	movlw	0
	movwf	(?_sdPrvSimpleCommand+2)
	movlw	02h
	movwf	(?_sdPrvSimpleCommand+1)
	movlw	0
	movwf	(?_sdPrvSimpleCommand)

	clrf	0+(?_sdPrvSimpleCommand)+04h
	incf	0+(?_sdPrvSimpleCommand)+04h,f
	movlw	(010h)
	fcall	_sdPrvSimpleCommand
	movwf	(sdInit@v)
	line	210
	
l6477:	
;SD.c: 210: if(v) return 0;
	movf	(sdInit@v),w
	skipz
	goto	u4400
	goto	l6483
u4400:
	goto	l6453
	line	212
	
l6483:	
;SD.c: 212: v = sdPrvSimpleCommand(59, 0, 1);
	clrf	(?_sdPrvSimpleCommand)
	clrf	(?_sdPrvSimpleCommand+1)
	clrf	(?_sdPrvSimpleCommand+2)
	clrf	(?_sdPrvSimpleCommand+3)
	clrf	0+(?_sdPrvSimpleCommand)+04h
	incf	0+(?_sdPrvSimpleCommand)+04h,f
	movlw	(03Bh)
	fcall	_sdPrvSimpleCommand
	movwf	(sdInit@v)
	line	213
	
l6485:	
;SD.c: 213: if(v) return 0;
	movf	(sdInit@v),w
	skipz
	goto	u4410
	goto	l6491
u4410:
	goto	l6453
	line	216
	
l6491:	
;SD.c: 216: sdClockSpeed(1);
	movlw	(01h)
	fcall	_sdClockSpeed
	line	218
	
l6493:	
;SD.c: 218: return 1;
	movlw	(01h)
	line	219
	
l2413:	
	return
	opt stack 0
GLOBAL	__end_of_sdInit
	__end_of_sdInit:
;; =============== function _sdInit ends ============

	signat	_sdInit,89
	global	_ufatExtReadTerminate
psect	text1561,local,class=CODE,delta=2
global __ptext1561
__ptext1561:

;; *************** function _ufatExtReadTerminate *****************
;; Defined at:
;;		line 232 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1E/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ufatExtRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1561
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	232
	global	__size_of_ufatExtReadTerminate
	__size_of_ufatExtReadTerminate	equ	__end_of_ufatExtReadTerminate-_ufatExtReadTerminate
	
_ufatExtReadTerminate:	
	opt	stack 15
; Regs used in _ufatExtReadTerminate: [wreg+fsr1l-status,0+pclath+cstack]
	line	235
	
l6427:	
;main.c: 235: ufatExtRead(0, 512, 0, ((void*)0));
	clrf	(?_ufatExtRead)
	clrf	(?_ufatExtRead+1)
	clrf	(?_ufatExtRead+2)
	clrf	(?_ufatExtRead+3)
	movlw	low(0200h)
	movwf	0+(?_ufatExtRead)+04h
	movlw	high(0200h)
	movwf	(0+(?_ufatExtRead)+04h)+1
	clrf	0+(?_ufatExtRead)+06h
	clrf	(0+?_ufatExtRead+07h)
	fcall	_ufatExtRead
	line	236
	
l1166:	
	return
	opt stack 0
GLOBAL	__end_of_ufatExtReadTerminate
	__end_of_ufatExtReadTerminate:
;; =============== function _ufatExtReadTerminate ends ============

	signat	_ufatExtReadTerminate,88
	global	_sdPrvCardInit
psect	text1562,local,class=CODE,delta=2
global __ptext1562
__ptext1562:

;; *************** function _sdPrvCardInit *****************
;; Defined at:
;;		line 130 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;  sd              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sd              1   24[BANK0 ] unsigned char 
;;  param           4   30[BANK0 ] unsigned long 
;;  time            2   25[BANK0 ] unsigned short 
;;  resp            1   34[BANK0 ] unsigned char 
;;  first           1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      11       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      11       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_sdPrvSimpleCommand
;;		_sdPrvACMD
;; This function is called by:
;;		_sdInit
;; This function uses a non-reentrant model
;;
psect	text1562
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	130
	global	__size_of_sdPrvCardInit
	__size_of_sdPrvCardInit	equ	__end_of_sdPrvCardInit-_sdPrvCardInit
	
_sdPrvCardInit:	
	opt	stack 14
; Regs used in _sdPrvCardInit: [wreg+fsr1l-status,0+pclath+cstack]
;sdPrvCardInit@sd stored from wreg
	line	132
	movwf	(sdPrvCardInit@sd)
	
l6393:	
;SD.c: 132: UInt16 time = 0;
	clrf	(sdPrvCardInit@time)
	clrf	(sdPrvCardInit@time+1)
	line	134
	
l6395:	
;SD.c: 133: UInt8 resp;
;SD.c: 134: Boolean first = 1;
	clrf	(sdPrvCardInit@first)
	incf	(sdPrvCardInit@first),f
	line	137
	
l6397:	
;SD.c: 135: UInt32 param;
;SD.c: 137: param = 0;
	clrf	(sdPrvCardInit@param)
	clrf	(sdPrvCardInit@param+1)
	clrf	(sdPrvCardInit@param+2)
	clrf	(sdPrvCardInit@param+3)
	line	139
;SD.c: 139: while(time++ < 5000UL){
	goto	l6421
	line	141
	
l6399:	
;SD.c: 141: resp = sd ? sdPrvACMD(41, param) : sdPrvSimpleCommand(1, param, 1);
	movf	(sdPrvCardInit@param+3),w
	movwf	(?_sdPrvSimpleCommand+3)
	movf	(sdPrvCardInit@param+2),w
	movwf	(?_sdPrvSimpleCommand+2)
	movf	(sdPrvCardInit@param+1),w
	movwf	(?_sdPrvSimpleCommand+1)
	movf	(sdPrvCardInit@param),w
	movwf	(?_sdPrvSimpleCommand)

	clrf	0+(?_sdPrvSimpleCommand)+04h
	incf	0+(?_sdPrvSimpleCommand)+04h,f
	movlw	(01h)
	fcall	_sdPrvSimpleCommand
	movwf	(_sdPrvCardInit$3364)
	clrf	(_sdPrvCardInit$3364+1)
	
l6401:	
	movf	(sdPrvCardInit@sd),w
	skipz
	goto	u4300
	goto	l6405
u4300:
	
l6403:	
	movf	(sdPrvCardInit@param+3),w
	movwf	(?_sdPrvACMD+3)
	movf	(sdPrvCardInit@param+2),w
	movwf	(?_sdPrvACMD+2)
	movf	(sdPrvCardInit@param+1),w
	movwf	(?_sdPrvACMD+1)
	movf	(sdPrvCardInit@param),w
	movwf	(?_sdPrvACMD)

	movlw	(029h)
	fcall	_sdPrvACMD
	movwf	(_sdPrvCardInit$3364)
	clrf	(_sdPrvCardInit$3364+1)
	
l6405:	
	movf	(_sdPrvCardInit$3364),w
	movwf	(sdPrvCardInit@resp)
	line	143
	
l6407:	
;SD.c: 143: if(resp & 0x80) break;
	btfss	(sdPrvCardInit@resp),(7)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l6411
u4310:
	goto	l6423
	line	145
	
l6411:	
;SD.c: 145: if(first){
	movf	(sdPrvCardInit@first),w
	skipz
	goto	u4320
	goto	l2398
u4320:
	line	147
	
l6413:	
;SD.c: 147: param |= 0x00200000UL;
	bsf	(sdPrvCardInit@param)+(21/8),(21)&7
	line	148
	
l6415:	
;SD.c: 148: first = 0;
	clrf	(sdPrvCardInit@first)
	line	149
;SD.c: 149: }
	goto	l6421
	line	150
	
l2398:	
	line	152
;SD.c: 150: else{
;SD.c: 152: if(!(resp & 0x01)) return 1;
	btfsc	(sdPrvCardInit@resp),(0)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l6421
u4330:
	
l6417:	
	movlw	(01h)
	goto	l2401
	line	139
	
l6421:	
	incf	(sdPrvCardInit@time),f
	skipnz
	incf	(sdPrvCardInit@time+1),f
	movlw	high(01389h)
	subwf	((sdPrvCardInit@time+1)),w
	movlw	low(01389h)
	skipnz
	subwf	((sdPrvCardInit@time)),w
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l6399
u4340:
	line	156
	
l6423:	
;SD.c: 153: }
;SD.c: 154: }
;SD.c: 156: return 0;
	movlw	(0)
	line	157
	
l2401:	
	return
	opt stack 0
GLOBAL	__end_of_sdPrvCardInit
	__end_of_sdPrvCardInit:
;; =============== function _sdPrvCardInit ends ============

	signat	_sdPrvCardInit,4217
	global	_play
psect	text1563,local,class=CODE,delta=2
global __ptext1563
__ptext1563:

;; *************** function _play *****************
;; Defined at:
;;		line 332 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               1   37[BANK0 ] unsigned char 
;;  firstSec        3   39[BANK0 ] unsigned um
;;  sec             3   33[BANK0 ] unsigned um
;;  numSec          2   42[BANK0 ] unsigned short 
;;  i               1   38[BANK0 ] unsigned char 
;;  t               1   36[BANK0 ] unsigned char 
;;  secListIdx      1   32[BANK0 ] unsigned char 
;;  start           1   31[BANK0 ] unsigned char 
;;  ret             1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      14       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      18       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_audioOn
;;		_secListRead
;;		_sdReadStart
;;		_fatal
;;		_hdrProcess
;;		_sdSecReadStop
;;		_sdNextSec
;;		_sdSpiByte
;;		_audioOff
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1563
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	332
	global	__size_of_play
	__size_of_play	equ	__end_of_play-_play
	
_play:	
	opt	stack 15
; Regs used in _play: [wreg+fsr1l-status,0+pclath+cstack]
	line	334
	
l6303:	
;main.c: 334: Boolean ret, start = 1;
	movlb 0	; select bank0
	clrf	(play@start)
	incf	(play@start),f
	line	338
	
l6305:	
;main.c: 335: UInt24 firstSec;
;main.c: 336: UInt16 numSec;
;main.c: 337: UInt24 sec;
;main.c: 338: UInt8 secListIdx = 0;
	clrf	(play@secListIdx)
	line	339
;main.c: 339: UInt8 i, t = 0;
	clrf	(play@t)
	line	341
	
l6307:	
;main.c: 341: audioOn();
	fcall	_audioOn
	line	345
	
l6309:	
;main.c: 345: secListRead(secListIdx++, &firstSec, &numSec);
	movlw	(play@firstSec)&0ffh
	movwf	(?_secListRead)
	movlw	(play@numSec)&0ffh
	movwf	0+(?_secListRead)+01h
	movf	(play@secListIdx),w
	fcall	_secListRead
	
l6311:	
	incf	(play@secListIdx),f
	line	346
	
l6313:	
;main.c: 346: if(!firstSec && !numSec) break;
	movf	(play@firstSec+2),w
	iorwf	(play@firstSec+1),w
	iorwf	(play@firstSec),w
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l6319
u4170:
	
l6315:	
	movf	((play@numSec+1)),w
	iorwf	((play@numSec)),w
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l6319
u4180:
	goto	l6391
	line	348
	
l6319:	
;main.c: 348: ret = sdReadStart(firstSec);
	movf	(play@firstSec),w
	movwf	(?_sdReadStart)
	movf	(play@firstSec+1),w
	movwf	(?_sdReadStart+1)
	movf	(play@firstSec+2),w
	movwf	(?_sdReadStart+2)
	fcall	_sdReadStart
	movlb 0	; select bank0
	movwf	(play@ret)
	line	349
	
l6321:	
;main.c: 349: if(!ret) fatal(2);
	movf	(play@ret),f
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l6325
u4190:
	
l6323:	
	movlw	(02h)
	fcall	_fatal
	line	351
	
l6325:	
;main.c: 351: if(start){
	movlb 0	; select bank0
	movf	(play@start),w
	skipz
	goto	u4200
	goto	l6335
u4200:
	line	353
	
l6327:	
;main.c: 353: i = hdrProcess();
	fcall	_hdrProcess
	movlb 0	; select bank0
	movwf	(play@i)
	line	354
	
l6329:	
;main.c: 354: if(i == 0){
	movf	(play@i),f
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l6333
u4210:
	line	355
	
l6331:	
;main.c: 355: sdSecReadStop();
	fcall	_sdSecReadStop
	line	356
;main.c: 356: break;
	goto	l6391
	line	358
	
l6333:	
;main.c: 357: }
;main.c: 358: start = 0;
	clrf	(play@start)
	line	359
;main.c: 359: } else i= 0;
	goto	l6337
	
l6335:	
	clrf	(play@i)
	line	361
	
l6337:	
;main.c: 361: for(sec = 0; sec < numSec; sec++){
	clrf	(play@sec)
	clrf	(play@sec+1)
	clrf	(play@sec+2)
	goto	l6387
	line	364
	
l6339:	
;main.c: 362: UInt8 j;
;main.c: 364: if(sec){
	movf	(play@sec+2),w
	iorwf	(play@sec+1),w
	iorwf	(play@sec),w
	skipnz
	goto	u4221
	goto	u4220
u4221:
	goto	l6345
u4220:
	line	365
	
l6341:	
;main.c: 365: i = 0;
	clrf	(play@i)
	line	366
	
l6343:	
;main.c: 366: sdNextSec();
	fcall	_sdNextSec
	line	369
	
l6345:	
;main.c: 367: }
;main.c: 369: for(j =0; j < 4; j++){
	movlb 0	; select bank0
	clrf	(play@j)
	line	371
	
l6351:	
;main.c: 371: if(j) i = 0;
	movf	(play@j),w
	skipz
	goto	u4230
	goto	l6379
u4230:
	
l6353:	
	clrf	(play@i)
	goto	l6379
	line	374
	
l6355:	
;main.c: 374: if(t){
	movf	(play@t),w
	skipz
	goto	u4240
	goto	l6363
u4240:
	line	375
	
l6357:	
;main.c: 375: t--;
	decf	(play@t),f
	line	376
	
l6359:	
;main.c: 376: sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	line	377
	
l6361:	
;main.c: 377: i++;
	movlb 0	; select bank0
	incf	(play@i),f
	line	378
;main.c: 378: }
	goto	l6379
	line	379
	
l6363:	
;main.c: 379: else if(gWrite != gRead){
	movf	(_gWrite),w
	xorwf	(_gRead),w
	skipnz
	goto	u4251
	goto	u4250
u4251:
	goto	l6379
u4250:
	line	381
	
l6365:	
;main.c: 381: t = sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	movlb 0	; select bank0
	movwf	(play@t)
	line	383
	
l6367:	
;main.c: 383: gBuffer[gWrite++] = t >> 2;
	movf	(play@t),w
	movwf	(??_play+0)+0
	lsrf	(??_play+0)+0,f
	lsrf	(??_play+0)+0,f
	movf	0+(??_play+0)+0,w
	movwf	(??_play+1)+0
	movf	(_gWrite),w
	addlw	low 8342
	movwf	(??_play+2)+0
	movlw	high 8342
	skipnc
	movlw	high (8342)+1
	movwf	((??_play+2)+0)+1
	movf	0+(??_play+2)+0,w
	movwf	fsr1l
	movf	1+(??_play+2)+0,w
	movwf	fsr1h
	movf	(??_play+1)+0,w
	movwf	indf1
	
l6369:	
	incf	(_gWrite),f
	line	384
	
l6371:	
;main.c: 384: if(gWrite == 90) gWrite = 0;
	movf	(_gWrite),w
	xorlw	05Ah&0ffh
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l6375
u4260:
	
l6373:	
	clrf	(_gWrite)
	line	385
	
l6375:	
;main.c: 385: i++;
	incf	(play@i),f
	line	386
	
l6377:	
;main.c: 386: t = byteStride;
	movlb 1	; select bank1
	movf	(_byteStride)^080h,w
	movlb 0	; select bank0
	movwf	(play@t)
	line	372
	
l6379:	
	movf	(play@i),w
	xorlw	080h&0ffh
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l6355
u4270:
	line	369
	
l6381:	
	incf	(play@j),f
	
l6383:	
	movlw	(04h)
	subwf	(play@j),w
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l6351
u4280:
	line	361
	
l6385:	
	incf	(play@sec),f
	skipnz
	incf	(play@sec+1),f
	skipnz
	incf	(play@sec+2),f
	
l6387:	
	movf	(play@numSec),w
	movwf	((??_play+0)+0)
	movf	(play@numSec+1),w
	movwf	((??_play+0)+0+1)
	clrf	((??_play+0)+0+2)
	movf	2+(??_play+0)+0,w
	subwf	(play@sec+2),w
	skipz
	goto	u4295
	movf	1+(??_play+0)+0,w
	subwf	(play@sec+1),w
	skipz
	goto	u4295
	movf	0+(??_play+0)+0,w
	subwf	(play@sec),w
u4295:
	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l6339
u4290:
	line	391
	
l6389:	
;main.c: 387: }
;main.c: 388: }
;main.c: 389: }
;main.c: 390: }
;main.c: 391: sdSecReadStop();
	fcall	_sdSecReadStop
	goto	l6309
	line	394
	
l6391:	
;main.c: 392: }
;main.c: 394: audioOff();
	fcall	_audioOff
	line	395
	
l1244:	
	return
	opt stack 0
GLOBAL	__end_of_play
	__end_of_play:
;; =============== function _play ends ============

	signat	_play,88
	global	_ufatExtRead
psect	text1564,local,class=CODE,delta=2
global __ptext1564
__ptext1564:

;; *************** function _ufatExtRead *****************
;; Defined at:
;;		line 199 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  sector          4   22[BANK0 ] unsigned long 
;;  offset          2   26[BANK0 ] unsigned short 
;;  len             1   28[BANK0 ] unsigned char 
;;  buf             1   29[BANK0 ] PTR unsigned char 
;;		 -> ufatGetNextClus@buf(2), ufatGetNthFile@buf(4), ufatMount@buf(13), ufatParsePartitionTable@record(16), 
;;		 -> main@name(11), main@flags(1), RAM(128), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1E/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       8       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_sdSpiByte
;;		_sdSecReadStop
;;		_sdReadStart
;; This function is called by:
;;		_ufatExtReadTerminate
;;		_ufatParsePartitionTable
;;		_ufatMount
;;		_ufatGetNthFile
;;		_ufatGetNextClus
;; This function uses a non-reentrant model
;;
psect	text1564
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	199
	global	__size_of_ufatExtRead
	__size_of_ufatExtRead	equ	__end_of_ufatExtRead-_ufatExtRead
	
_ufatExtRead:	
	opt	stack 14
; Regs used in _ufatExtRead: [wreg+fsr1l-status,0+pclath+cstack]
	line	204
	
l6255:	
;main.c: 201: static u32 curSec = 0xFFFFFFFFUL;
;main.c: 202: static u16 curPos = 0;
;main.c: 204: if(sector != curSec || offset < curPos){
	movlb 1	; select bank1
	movf	(ufatExtRead@curSec+3)^080h,w
	movlb 0	; select bank0
	xorwf	(ufatExtRead@sector+3),w
	skipz
	goto	u4095
	movlb 1	; select bank1
	movf	(ufatExtRead@curSec+2)^080h,w
	movlb 0	; select bank0
	xorwf	(ufatExtRead@sector+2),w
	skipz
	goto	u4095
	movlb 1	; select bank1
	movf	(ufatExtRead@curSec+1)^080h,w
	movlb 0	; select bank0
	xorwf	(ufatExtRead@sector+1),w
	skipz
	goto	u4095
	movlb 1	; select bank1
	movf	(ufatExtRead@curSec)^080h,w
	movlb 0	; select bank0
	xorwf	(ufatExtRead@sector),w
u4095:
	skipz
	goto	u4091
	goto	u4090
u4091:
	goto	l6259
u4090:
	
l6257:	
	movlb 1	; select bank1
	movf	(ufatExtRead@curPos+1)^080h,w
	movlb 0	; select bank0
	subwf	(ufatExtRead@offset+1),w
	skipz
	goto	u4105
	movlb 1	; select bank1
	movf	(ufatExtRead@curPos)^080h,w
	movlb 0	; select bank0
	subwf	(ufatExtRead@offset),w
u4105:
	skipnc
	goto	u4101
	goto	u4100
u4101:
	goto	l6283
u4100:
	line	206
	
l6259:	
;main.c: 206: if(curSec != 0xFFFFFFFFUL){
	movlb 1	; select bank1
	incf	(ufatExtRead@curSec)^080h,w
	skipnz
	incf	(ufatExtRead@curSec+1)^080h,w
	skipnz
	incf	(ufatExtRead@curSec+2)^080h,w
	skipnz
	incf	(ufatExtRead@curSec+3)^080h,w

	skipnz
	goto	u4111
	goto	u4110
u4111:
	goto	l6271
u4110:
	goto	l6265
	line	208
	
l6263:	
	movlw	(0FFh)
	fcall	_sdSpiByte
	
l6265:	
	movlb 1	; select bank1
	incf	(ufatExtRead@curPos)^080h,f
	skipnz
	incf	(ufatExtRead@curPos+1)^080h,f
	decf	((ufatExtRead@curPos)^080h),w
	movlw	2
	skipnz
	xorwf	((ufatExtRead@curPos+1)^080h),w

	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l6263
u4120:
	line	209
	
l6267:	
;main.c: 209: sdSecReadStop();
	fcall	_sdSecReadStop
	line	210
	
l6269:	
;main.c: 210: curSec = 0xFFFFFFFFUL;
	movlw	0FFh
	movlb 1	; select bank1
	movwf	(ufatExtRead@curSec+3)^080h
	movlw	0FFh
	movwf	(ufatExtRead@curSec+2)^080h
	movlw	0FFh
	movwf	(ufatExtRead@curSec+1)^080h
	movlw	0FFh
	movwf	(ufatExtRead@curSec)^080h

	line	212
	
l6271:	
;main.c: 211: }
;main.c: 212: if(!sdReadStart(curSec = sector)) return 0;
	movlb 0	; select bank0
	movf	(ufatExtRead@sector+3),w
	movlb 1	; select bank1
	movwf	(ufatExtRead@curSec+3)^080h
	movlb 0	; select bank0
	movf	(ufatExtRead@sector+2),w
	movlb 1	; select bank1
	movwf	(ufatExtRead@curSec+2)^080h
	movlb 0	; select bank0
	movf	(ufatExtRead@sector+1),w
	movlb 1	; select bank1
	movwf	(ufatExtRead@curSec+1)^080h
	movlb 0	; select bank0
	movf	(ufatExtRead@sector),w
	movlb 1	; select bank1
	movwf	(ufatExtRead@curSec)^080h

	movf	((ufatExtRead@curSec+2)^080h),w
	movlb 0	; select bank0
	movwf	(?_sdReadStart+2)
	movlb 1	; select bank1
	movf	((ufatExtRead@curSec+1)^080h),w
	movlb 0	; select bank0
	movwf	(?_sdReadStart+1)
	movlb 1	; select bank1
	movf	((ufatExtRead@curSec)^080h),w
	movlb 0	; select bank0
	movwf	(?_sdReadStart)

	fcall	_sdReadStart
	iorlw	0
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l6277
u4130:
	
l6273:	
	movlw	(0)
	goto	l1156
	line	213
	
l6277:	
;main.c: 213: curPos = 0;
	movlb 1	; select bank1
	clrf	(ufatExtRead@curPos)^080h
	clrf	(ufatExtRead@curPos+1)^080h
	goto	l6283
	line	217
	
l6279:	
;main.c: 217: curPos++;
	incf	(ufatExtRead@curPos)^080h,f
	skipnz
	incf	(ufatExtRead@curPos+1)^080h,f
	line	218
	
l6281:	
;main.c: 218: sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	line	216
	
l6283:	
	movlb 0	; select bank0
	movf	(ufatExtRead@offset+1),w
	movlb 1	; select bank1
	xorwf	(ufatExtRead@curPos+1)^080h,w
	skipz
	goto	u4145
	movlb 0	; select bank0
	movf	(ufatExtRead@offset),w
	movlb 1	; select bank1
	xorwf	(ufatExtRead@curPos)^080h,w
u4145:

	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l6279
u4140:
	line	221
	
l6285:	
;main.c: 219: }
;main.c: 221: curPos += len;
	movlb 0	; select bank0
	movf	(ufatExtRead@len),w
	movlb 1	; select bank1
	addwf	(ufatExtRead@curPos)^080h,f
	skipnc
	incf	(ufatExtRead@curPos+1)^080h,f
	line	222
;main.c: 222: while(len--) *buf++ = sdSpiByte(0xFF);
	goto	l6291
	
l6287:	
	movf	(ufatExtRead@buf),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	(0FFh)
	fcall	_sdSpiByte
	movwf	indf1
	
l6289:	
	movlb 0	; select bank0
	incf	(ufatExtRead@buf),f
	
l6291:	
	movlb 0	; select bank0
	decf	(ufatExtRead@len),f
	movf	((ufatExtRead@len)),w
	xorlw	0FFh&0ffh
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l6287
u4150:
	line	224
	
l6293:	
;main.c: 224: if(curPos == 512){
	movlb 1	; select bank1
		movf	(ufatExtRead@curPos+1)^080h,w
	xorlw	2
	iorwf	(ufatExtRead@curPos)^080h,w

	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l6299
u4160:
	line	225
	
l6295:	
;main.c: 225: sdSecReadStop();
	fcall	_sdSecReadStop
	line	226
	
l6297:	
;main.c: 226: curSec = 0xFFFFFFFFUL;
	movlw	0FFh
	movlb 1	; select bank1
	movwf	(ufatExtRead@curSec+3)^080h
	movlw	0FFh
	movwf	(ufatExtRead@curSec+2)^080h
	movlw	0FFh
	movwf	(ufatExtRead@curSec+1)^080h
	movlw	0FFh
	movwf	(ufatExtRead@curSec)^080h

	line	229
	
l6299:	
;main.c: 227: }
;main.c: 229: return 1;
	movlw	(01h)
	line	230
	
l1156:	
	return
	opt stack 0
GLOBAL	__end_of_ufatExtRead
	__end_of_ufatExtRead:
;; =============== function _ufatExtRead ends ============

	signat	_ufatExtRead,16505
	global	_sdPrvACMD
psect	text1565,local,class=CODE,delta=2
global __ptext1565
__ptext1565:

;; *************** function _sdPrvACMD *****************
;; Defined at:
;;		line 119 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;;  param           4   18[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  cmd             1   22[BANK0 ] unsigned char 
;;  ret             1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_sdPrvSimpleCommand
;; This function is called by:
;;		_sdPrvCardInit
;; This function uses a non-reentrant model
;;
psect	text1565
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	119
	global	__size_of_sdPrvACMD
	__size_of_sdPrvACMD	equ	__end_of_sdPrvACMD-_sdPrvACMD
	
_sdPrvACMD:	
	opt	stack 13
; Regs used in _sdPrvACMD: [wreg+fsr1l-status,0+pclath+cstack]
;sdPrvACMD@cmd stored from wreg
	line	123
	movwf	(sdPrvACMD@cmd)
	
l6239:	
;SD.c: 121: UInt8 ret;
;SD.c: 123: ret = sdPrvSimpleCommand(55, 0, 1);
	clrf	(?_sdPrvSimpleCommand)
	clrf	(?_sdPrvSimpleCommand+1)
	clrf	(?_sdPrvSimpleCommand+2)
	clrf	(?_sdPrvSimpleCommand+3)
	clrf	0+(?_sdPrvSimpleCommand)+04h
	incf	0+(?_sdPrvSimpleCommand)+04h,f
	movlw	(037h)
	fcall	_sdPrvSimpleCommand
	movwf	(sdPrvACMD@ret)
	line	124
	
l6241:	
;SD.c: 124: if(ret & 0x80) return ret;
	btfss	(sdPrvACMD@ret),(7)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l2387
u4070:
	
l6243:	
	movf	(sdPrvACMD@ret),w
	goto	l2388
	
l2387:	
	line	125
;SD.c: 125: if(ret & 0x04) return ret;
	btfss	(sdPrvACMD@ret),(2)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l6251
u4080:
	goto	l6243
	line	127
	
l6251:	
;SD.c: 127: return sdPrvSimpleCommand(cmd, param, 1);
	movf	(sdPrvACMD@param+3),w
	movwf	(?_sdPrvSimpleCommand+3)
	movf	(sdPrvACMD@param+2),w
	movwf	(?_sdPrvSimpleCommand+2)
	movf	(sdPrvACMD@param+1),w
	movwf	(?_sdPrvSimpleCommand+1)
	movf	(sdPrvACMD@param),w
	movwf	(?_sdPrvSimpleCommand)

	clrf	0+(?_sdPrvSimpleCommand)+04h
	incf	0+(?_sdPrvSimpleCommand)+04h,f
	movf	(sdPrvACMD@cmd),w
	fcall	_sdPrvSimpleCommand
	line	128
	
l2388:	
	return
	opt stack 0
GLOBAL	__end_of_sdPrvACMD
	__end_of_sdPrvACMD:
;; =============== function _sdPrvACMD ends ============

	signat	_sdPrvACMD,8313
	global	_hdrProcess
psect	text1566,local,class=CODE,delta=2
global __ptext1566
__ptext1566:

;; *************** function _hdrProcess *****************
;; Defined at:
;;		line 250 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  hdr             4   13[BANK0 ] unsigned char [4]
;;  t32             4   21[BANK0 ] unsigned long 
;;  j               1   25[BANK0 ] unsigned char 
;;  i               1   20[BANK0 ] unsigned char 
;;  csz             1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1B/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      13       0       0
;;      Temps:          0       8       0       0
;;      Totals:         0      21       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_spiCmp
;;		_byte
;;		___bmul
;;		___lldiv
;;		_sdSpiByte
;; This function is called by:
;;		_play
;; This function uses a non-reentrant model
;;
psect	text1566
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	250
	global	__size_of_hdrProcess
	__size_of_hdrProcess	equ	__end_of_hdrProcess-_hdrProcess
	
_hdrProcess:	
	opt	stack 14
; Regs used in _hdrProcess: [wreg+fsr1l-status,0+pclath+cstack]
	line	254
	
l6059:	
;main.c: 252: static const UInt8 riff[4] = {'R', 'I', 'F', 'F'};
;main.c: 253: static const UInt8 wave[4] = {'W', 'A', 'V', 'E'};
;main.c: 254: UInt8 csz, i = 0, j;
	clrf	(hdrProcess@i)
	line	259
	
l6061:	
;main.c: 255: UInt32 t32;
;main.c: 259: if(!spiCmp(riff, 4)) return 0;
	movlw	(04h)
	movwf	(?_spiCmp)
	movlw	(hdrProcess@riff|8000h)&0ffh
	fcall	_spiCmp
	iorlw	0
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l6067
u3810:
	
l6063:	
	movlw	(0)
	goto	l1184
	line	262
	
l6067:	
;main.c: 262: for(j = 0; j < 4; j++) byte();
	movlb 0	; select bank0
	clrf	(hdrProcess@j)
	
l6073:	
	fcall	_byte
	
l6075:	
	movlb 0	; select bank0
	incf	(hdrProcess@j),f
	
l6077:	
	movlw	(04h)
	subwf	(hdrProcess@j),w
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l6073
u3820:
	line	265
	
l6079:	
;main.c: 265: if(!spiCmp(wave, 4)) return 0;
	movlw	(04h)
	movwf	(?_spiCmp)
	movlw	(hdrProcess@wave|8000h)&0ffh
	fcall	_spiCmp
	iorlw	0
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l6085
u3830:
	goto	l6063
	line	266
	
l6085:	
;main.c: 266: i += 12;
	movlw	(0Ch)
	movlb 0	; select bank0
	addwf	(hdrProcess@i),f
	line	269
;main.c: 269: while(i < 127){
	goto	l6233
	line	273
	
l6087:	
;main.c: 271: UInt8 hdr[4];
;main.c: 273: for(j = 0; j < 4; j++) hdr[j] = byte();
	clrf	(hdrProcess@j)
	
l6093:	
	movf	(hdrProcess@j),w
	addlw	hdrProcess@hdr&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	fcall	_byte
	movwf	indf1
	
l6095:	
	movlb 0	; select bank0
	incf	(hdrProcess@j),f
	
l6097:	
	movlw	(04h)
	subwf	(hdrProcess@j),w
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l6093
u3840:
	line	274
	
l6099:	
;main.c: 274: csz = byte();
	fcall	_byte
	movlb 0	; select bank0
	movwf	(hdrProcess@csz)
	line	275
;main.c: 275: if(byte() || byte() || byte()) return 0;
	fcall	_byte
	iorlw	0
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l6063
u3850:
	
l6101:	
	fcall	_byte
	iorlw	0
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l6063
u3860:
	
l6103:	
	fcall	_byte
	xorlw	0&0ffh
	skipnz
	goto	u3871
	goto	u3870
u3871:
	goto	l6109
u3870:
	goto	l6063
	line	276
	
l6109:	
;main.c: 276: i += 8;
	movlw	(08h)
	movlb 0	; select bank0
	addwf	(hdrProcess@i),f
	line	278
	
l6111:	
;main.c: 278: if(hdr[0] == 'f' && hdr[1] == 'm' && hdr[2] == 't' && hdr[3] == ' '){
	movf	(hdrProcess@hdr),w
	xorlw	066h&0ffh
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l6221
u3880:
	
l6113:	
	movf	0+(hdrProcess@hdr)+01h,w
	xorlw	06Dh&0ffh
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l6221
u3890:
	
l6115:	
	movf	0+(hdrProcess@hdr)+02h,w
	xorlw	074h&0ffh
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l6221
u3900:
	
l6117:	
	movf	0+(hdrProcess@hdr)+03h,w
	xorlw	020h&0ffh
	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l6221
u3910:
	line	280
	
l6119:	
;main.c: 280: byteStride = 1;
	movlb 1	; select bank1
	clrf	(_byteStride)^080h
	incf	(_byteStride)^080h,f
	line	282
	
l6121:	
;main.c: 282: if(byte() != 1 || byte() != 0) return 0;
	fcall	_byte
	xorlw	01h&0ffh
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l6063
u3920:
	
l6123:	
	fcall	_byte
	xorlw	0&0ffh
	skipnz
	goto	u3931
	goto	u3930
u3931:
	goto	l6129
u3930:
	goto	l6063
	line	283
	
l6129:	
;main.c: 283: i += 2;
	movlb 0	; select bank0
	incf	(hdrProcess@i),f
	incf	(hdrProcess@i),f
	line	285
	
l6131:	
;main.c: 285: j = byte();
	fcall	_byte
	movlb 0	; select bank0
	movwf	(hdrProcess@j)
	line	286
	
l6133:	
;main.c: 286: if(byte() != 0) return 0;
	fcall	_byte
	xorlw	0&0ffh
	skipnz
	goto	u3941
	goto	u3940
u3941:
	goto	l6139
u3940:
	goto	l6063
	line	287
	
l6139:	
;main.c: 287: if(!j) return 0;
	movlb 0	; select bank0
	movf	(hdrProcess@j),f
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l6145
u3950:
	goto	l6063
	line	288
	
l6145:	
;main.c: 288: byteStride *= j;
	movlb 1	; select bank1
	movf	(_byteStride)^080h,w
	movwf	(?___bmul)
	movlb 0	; select bank0
	movf	(hdrProcess@j),w
	fcall	___bmul
	movlb 1	; select bank1
	movwf	(_byteStride)^080h
	line	289
	
l6147:	
;main.c: 289: i += 2;
	movlb 0	; select bank0
	incf	(hdrProcess@i),f
	incf	(hdrProcess@i),f
	line	291
	
l6149:	
;main.c: 291: t32 = 0;
	clrf	(hdrProcess@t32)
	clrf	(hdrProcess@t32+1)
	clrf	(hdrProcess@t32+2)
	clrf	(hdrProcess@t32+3)
	line	292
	
l6151:	
;main.c: 292: for(j = 0; j < 4; j++) t32 = (t32 >> 8) | (((UInt32)byte()) << 24);
	clrf	(hdrProcess@j)
	
l6157:	
	fcall	_byte
	movlb 0	; select bank0
	movwf	((??_hdrProcess+0)+0+3)
	clrf	((??_hdrProcess+0)+0+2)
	clrf	((??_hdrProcess+0)+0+1)
	clrf	(??_hdrProcess+0)+0
	movf	(hdrProcess@t32),w
	movwf	(??_hdrProcess+4)+0
	movf	(hdrProcess@t32+1),w
	movwf	((??_hdrProcess+4)+0+1)
	movf	(hdrProcess@t32+2),w
	movwf	((??_hdrProcess+4)+0+2)
	movf	(hdrProcess@t32+3),w
	movwf	((??_hdrProcess+4)+0+3)
	movf	(??_hdrProcess+4)+1,w
	movwf	(??_hdrProcess+4)+0
	movf	(??_hdrProcess+4)+2,w
	movwf	(??_hdrProcess+4)+1
	movf	(??_hdrProcess+4)+3,w
	movwf	(??_hdrProcess+4)+2
	clrf	(??_hdrProcess+4)+3
	movf	0+(??_hdrProcess+0)+0,w
	iorwf	0+(??_hdrProcess+4)+0,w
	movwf	(hdrProcess@t32)
	movf	1+(??_hdrProcess+0)+0,w
	iorwf	1+(??_hdrProcess+4)+0,w
	movwf	1+(hdrProcess@t32)
	movf	2+(??_hdrProcess+0)+0,w
	iorwf	2+(??_hdrProcess+4)+0,w
	movwf	2+(hdrProcess@t32)
	movf	3+(??_hdrProcess+0)+0,w
	iorwf	3+(??_hdrProcess+4)+0,w
	movwf	3+(hdrProcess@t32)
	
l6159:	
	incf	(hdrProcess@j),f
	
l6161:	
	movlw	(04h)
	subwf	(hdrProcess@j),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l6157
u3960:
	line	293
	
l6163:	
;main.c: 293: i += 4;
	movlw	(04h)
	addwf	(hdrProcess@i),f
	line	297
	
l6165:	
;main.c: 297: tmrReload = 69;
	movlw	(045h)
	movwf	(_tmrReload)	;volatile
	line	299
	
l6167:	
;main.c: 299: t32 = (33000000 + ((4 * t32) / 2)) / (4 * t32);
	movf	(hdrProcess@t32+3),w
	movwf	(?___lldiv+3)
	movf	(hdrProcess@t32+2),w
	movwf	(?___lldiv+2)
	movf	(hdrProcess@t32+1),w
	movwf	(?___lldiv+1)
	movf	(hdrProcess@t32),w
	movwf	(?___lldiv)

	movlw	02h
u3975:
	lslf	(?___lldiv),f
	rlf	(?___lldiv+1),f
	rlf	(?___lldiv+2),f
	rlf	(?___lldiv+3),f
	decfsz	wreg,f
	goto	u3975
	movf	(hdrProcess@t32),w
	movwf	(??_hdrProcess+0)+0
	movf	(hdrProcess@t32+1),w
	movwf	((??_hdrProcess+0)+0+1)
	movf	(hdrProcess@t32+2),w
	movwf	((??_hdrProcess+0)+0+2)
	movf	(hdrProcess@t32+3),w
	movwf	((??_hdrProcess+0)+0+3)
	lslf	(??_hdrProcess+0)+0,f
	rlf	(??_hdrProcess+0)+1,f
	rlf	(??_hdrProcess+0)+2,f
	rlf	(??_hdrProcess+0)+3,f
	movlw	040h
	addwf	(0+(??_hdrProcess+0)+0),w
	movwf	0+(?___lldiv)+04h
	movlw	08Ah
	addwfc	(1+(??_hdrProcess+0)+0),w
	movwf	1+0+(?___lldiv)+04h
	movlw	0F7h
	addwfc	(2+(??_hdrProcess+0)+0),w
	movwf	2+0+(?___lldiv)+04h
	movlw	01h
	addwfc	(3+(??_hdrProcess+0)+0),w
	movwf	3+0+(?___lldiv)+04h
	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	movwf	(hdrProcess@t32+3)
	movf	(2+(?___lldiv)),w
	movwf	(hdrProcess@t32+2)
	movf	(1+(?___lldiv)),w
	movwf	(hdrProcess@t32+1)
	movf	(0+(?___lldiv)),w
	movwf	(hdrProcess@t32)

	line	301
	
l6169:	
;main.c: 301: j = 0;
	clrf	(hdrProcess@j)
	line	302
;main.c: 302: while(t32 > 256){
	goto	l6173
	line	304
	
l6171:	
;main.c: 304: j++;
	incf	(hdrProcess@j),f
	line	305
;main.c: 305: t32 >>= 1;
	lsrf	(hdrProcess@t32+3),f
	rrf	(hdrProcess@t32+2),f
	rrf	(hdrProcess@t32+1),f
	rrf	(hdrProcess@t32),f
	line	302
	
l6173:	
	movlw	0
	subwf	2+(((hdrProcess@t32))+1),w
	skipz
	goto	u3985
	movlw	0
	subwf	1+(((hdrProcess@t32))+1),w
	skipz
	goto	u3985
	movlw	02h
	subwf	0+(((hdrProcess@t32))+1),w
u3985:
	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l6171
u3980:
	line	307
	
l6175:	
;main.c: 306: }
;main.c: 307: if(j >= 8) return 0;
	movlw	(08h)
	subwf	(hdrProcess@j),w
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l6181
u3990:
	goto	l6063
	line	309
	
l6181:	
;main.c: 309: OPTION_REG = (OPTION_REG & 0xF0) | (j ? (j - 1) : 8);
	movlw	08h
	movwf	(_hdrProcess$2012)
	clrf	(_hdrProcess$2012+1)
	movf	(hdrProcess@j),w
	skipz
	goto	u4000
	goto	l6187
u4000:
	
l6183:	
	movf	(hdrProcess@j),w
	movwf	(_hdrProcess$2012)
	clrf	(_hdrProcess$2012+1)
	
l6185:	
	movlw	-1
	addwf	(_hdrProcess$2012),f
	skipc
	decf	(_hdrProcess$2012+1),f
	
l6187:	
	movlb 1	; select bank1
	movf	(149)^080h,w
	andlw	0F0h
	movlb 0	; select bank0
	iorwf	(_hdrProcess$2012),w
	movlb 1	; select bank1
	movwf	(149)^080h	;volatile
	line	310
	
l6189:	
;main.c: 310: tmrReload = 256 - t32;
	movlb 0	; select bank0
	movf	(hdrProcess@t32),w
	sublw	0
	movwf	(_tmrReload)	;volatile
	line	312
	
l6191:	
;main.c: 312: for(j = 0; j < 6; j++) sdSpiByte(0xFF);
	clrf	(hdrProcess@j)
	
l6197:	
	movlw	(0FFh)
	fcall	_sdSpiByte
	
l6199:	
	movlb 0	; select bank0
	incf	(hdrProcess@j),f
	
l6201:	
	movlw	(06h)
	subwf	(hdrProcess@j),w
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l6197
u4010:
	line	313
	
l6203:	
;main.c: 313: i += 6;
	movlw	(06h)
	addwf	(hdrProcess@i),f
	line	315
	
l6205:	
;main.c: 315: if(sdSpiByte(0xFF) != 8 || sdSpiByte(0xFF) != 0) return 0;
	movlw	(0FFh)
	fcall	_sdSpiByte
	xorlw	08h&0ffh
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l6063
u4020:
	
l6207:	
	movlw	(0FFh)
	fcall	_sdSpiByte
	xorlw	0&0ffh
	skipnz
	goto	u4031
	goto	u4030
u4031:
	goto	l6213
u4030:
	goto	l6063
	line	316
	
l6213:	
;main.c: 316: i += 2;
	movlb 0	; select bank0
	incf	(hdrProcess@i),f
	incf	(hdrProcess@i),f
	line	318
;main.c: 318: byteStride--;
	movlb 1	; select bank1
	decf	(_byteStride)^080h,f
	line	319
	
l6215:	
;main.c: 319: return i;
	movlb 0	; select bank0
	movf	(hdrProcess@i),w
	goto	l1184
	line	323
	
l6221:	
;main.c: 321: else{
;main.c: 323: if(csz > 0x80) return 0;
	movlw	(081h)
	subwf	(hdrProcess@csz),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l6227
u4040:
	goto	l6063
	line	324
	
l6227:	
;main.c: 324: i += csz;
	movf	(hdrProcess@csz),w
	addwf	(hdrProcess@i),f
	line	325
;main.c: 325: while(csz--) byte();
	goto	l6231
	
l6229:	
	fcall	_byte
	
l6231:	
	movlb 0	; select bank0
	decf	(hdrProcess@csz),f
	movf	((hdrProcess@csz)),w
	xorlw	0FFh&0ffh
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l6229
u4050:
	line	269
	
l6233:	
	movlw	(07Fh)
	subwf	(hdrProcess@i),w
	skipc
	goto	u4061
	goto	u4060
u4061:
	goto	l6087
u4060:
	goto	l6215
	line	330
	
l1184:	
	return
	opt stack 0
GLOBAL	__end_of_hdrProcess
	__end_of_hdrProcess:
;; =============== function _hdrProcess ends ============

	signat	_hdrProcess,89
	global	_sdReadStart
psect	text1567,local,class=CODE,delta=2
global __ptext1567
__ptext1567:

;; *************** function _sdReadStart *****************
;; Defined at:
;;		line 222 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;  sec             3   18[BANK0 ] unsigned um
;; Auto vars:     Size  Location     Type
;;  v               1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1E/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_sdPrvSimpleCommand
;;		_log
;;		_sdSpiByte
;; This function is called by:
;;		_ufatExtRead
;;		_play
;; This function uses a non-reentrant model
;;
psect	text1567
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	222
	global	__size_of_sdReadStart
	__size_of_sdReadStart	equ	__end_of_sdReadStart-_sdReadStart
	
_sdReadStart:	
	opt	stack 14
; Regs used in _sdReadStart: [wreg+fsr1l-status,0+pclath+cstack]
	line	226
	
l6033:	
;SD.c: 224: UInt8 v;
;SD.c: 226: v = sdPrvSimpleCommand(18, ((UInt32)sec) << 9, 0);
	movf	(sdReadStart@sec),w
	movwf	(?_sdPrvSimpleCommand)
	movf	(sdReadStart@sec+1),w
	movwf	((?_sdPrvSimpleCommand))+1
	movf	(sdReadStart@sec+2),w
	movwf	((?_sdPrvSimpleCommand))+2
	clrf	((?_sdPrvSimpleCommand))+3
	movlw	09h
u3775:
	lslf	(?_sdPrvSimpleCommand),f
	rlf	(?_sdPrvSimpleCommand+1),f
	rlf	(?_sdPrvSimpleCommand+2),f
	rlf	(?_sdPrvSimpleCommand+3),f
	decfsz	wreg,f
	goto	u3775
	clrf	0+(?_sdPrvSimpleCommand)+04h
	movlw	(012h)
	fcall	_sdPrvSimpleCommand
	movwf	(sdReadStart@v)
	line	227
	
l6035:	
;SD.c: 227: if(v & 0x80) {log(0xEF); return 0; }
	btfss	(sdReadStart@v),(7)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l6043
u3780:
	
l6037:	
	movlw	(0EFh)
	fcall	_log
	
l6039:	
	movlw	(0)
	goto	l2422
	line	230
	
l6043:	
;SD.c: 230: v = sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	movlb 0	; select bank0
	movwf	(sdReadStart@v)
	line	231
	
l6045:	
;SD.c: 231: }while(v == 0xFF);
	movf	(sdReadStart@v),w
	xorlw	0FFh&0ffh
	skipnz
	goto	u3791
	goto	u3790
u3791:
	goto	l6043
u3790:
	line	232
	
l6047:	
;SD.c: 232: if(v != 0xFE) {log(0xEE); return 0;}
	movf	(sdReadStart@v),w
	xorlw	0FEh&0ffh
	skipnz
	goto	u3801
	goto	u3800
u3801:
	goto	l6055
u3800:
	
l6049:	
	movlw	(0EEh)
	fcall	_log
	goto	l6039
	line	234
	
l6055:	
;SD.c: 234: return 1;
	movlw	(01h)
	line	235
	
l2422:	
	return
	opt stack 0
GLOBAL	__end_of_sdReadStart
	__end_of_sdReadStart:
;; =============== function _sdReadStart ends ============

	signat	_sdReadStart,4217
	global	_sdSecReadStop
psect	text1568,local,class=CODE,delta=2
global __ptext1568
__ptext1568:

;; *************** function _sdSecReadStop *****************
;; Defined at:
;;		line 249 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_sdPrvSimpleCommand
;; This function is called by:
;;		_ufatExtRead
;;		_play
;; This function uses a non-reentrant model
;;
psect	text1568
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	249
	global	__size_of_sdSecReadStop
	__size_of_sdSecReadStop	equ	__end_of_sdSecReadStop-_sdSecReadStop
	
_sdSecReadStop:	
	opt	stack 14
; Regs used in _sdSecReadStop: [wreg+fsr1l-status,0+pclath+cstack]
	line	252
	
l6031:	
;SD.c: 252: sdPrvSimpleCommand(12, 0, 1);
	movlb 0	; select bank0
	clrf	(?_sdPrvSimpleCommand)
	clrf	(?_sdPrvSimpleCommand+1)
	clrf	(?_sdPrvSimpleCommand+2)
	clrf	(?_sdPrvSimpleCommand+3)
	clrf	0+(?_sdPrvSimpleCommand)+04h
	incf	0+(?_sdPrvSimpleCommand)+04h,f
	movlw	(0Ch)
	fcall	_sdPrvSimpleCommand
	line	253
	
l2433:	
	return
	opt stack 0
GLOBAL	__end_of_sdSecReadStop
	__end_of_sdSecReadStop:
;; =============== function _sdSecReadStop ends ============

	signat	_sdSecReadStop,88
	global	_sdPrvSimpleCommand
psect	text1569,local,class=CODE,delta=2
global __ptext1569
__ptext1569:

;; *************** function _sdPrvSimpleCommand *****************
;; Defined at:
;;		line 106 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;;  param           4   11[BANK0 ] unsigned long 
;;  cmdDone         1   15[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1   16[BANK0 ] unsigned char 
;;  ret             1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       5       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_sdSpiByte
;;		_sdPrvSendCmd
;;		_sdPrvReadResp
;; This function is called by:
;;		_sdPrvACMD
;;		_sdPrvCardInit
;;		_sdInit
;;		_sdReadStart
;;		_sdSecReadStop
;; This function uses a non-reentrant model
;;
psect	text1569
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	106
	global	__size_of_sdPrvSimpleCommand
	__size_of_sdPrvSimpleCommand	equ	__end_of_sdPrvSimpleCommand-_sdPrvSimpleCommand
	
_sdPrvSimpleCommand:	
	opt	stack 13
; Regs used in _sdPrvSimpleCommand: [wreg+fsr1l-status,0+pclath+cstack]
;sdPrvSimpleCommand@cmd stored from wreg
	line	111
	movwf	(sdPrvSimpleCommand@cmd)
	
l6019:	
;SD.c: 108: UInt8 ret;
;SD.c: 110: ;
;SD.c: 111: sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	line	112
	
l6021:	
;SD.c: 112: sdPrvSendCmd(cmd, param);
	movlb 0	; select bank0
	movf	(sdPrvSimpleCommand@param+3),w
	movwf	(?_sdPrvSendCmd+3)
	movf	(sdPrvSimpleCommand@param+2),w
	movwf	(?_sdPrvSendCmd+2)
	movf	(sdPrvSimpleCommand@param+1),w
	movwf	(?_sdPrvSendCmd+1)
	movf	(sdPrvSimpleCommand@param),w
	movwf	(?_sdPrvSendCmd)

	movf	(sdPrvSimpleCommand@cmd),w
	fcall	_sdPrvSendCmd
	line	113
	
l6023:	
;SD.c: 113: ret = sdPrvReadResp();
	fcall	_sdPrvReadResp
	movlb 0	; select bank0
	movwf	(sdPrvSimpleCommand@ret)
	line	116
	
l6027:	
;SD.c: 116: return ret;
	movf	(sdPrvSimpleCommand@ret),w
	line	117
	
l2384:	
	return
	opt stack 0
GLOBAL	__end_of_sdPrvSimpleCommand
	__end_of_sdPrvSimpleCommand:
;; =============== function _sdPrvSimpleCommand ends ============

	signat	_sdPrvSimpleCommand,12409
	global	_spiCmp
psect	text1570,local,class=CODE,delta=2
global __ptext1570
__ptext1570:

;; *************** function _spiCmp *****************
;; Defined at:
;;		line 243 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  with            1    wreg     PTR const unsigned char 
;;		 -> hdrProcess@wave(4), hdrProcess@riff(4), 
;;  len             1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  with            1    5[COMMON] PTR const unsigned char 
;;		 -> hdrProcess@wave(4), hdrProcess@riff(4), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1B/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_byte
;; This function is called by:
;;		_hdrProcess
;; This function uses a non-reentrant model
;;
psect	text1570
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	243
	global	__size_of_spiCmp
	__size_of_spiCmp	equ	__end_of_spiCmp-_spiCmp
	
_spiCmp:	
	opt	stack 13
; Regs used in _spiCmp: [wreg+status,2+status,0+pclath+cstack]
;spiCmp@with stored from wreg
	movwf	(spiCmp@with)
	line	245
	
l6005:	
;main.c: 245: while(len--) if(byte() != *with++) return 0;
	goto	l6013
	
l6007:	
	movf	(spiCmp@with),w
	incf	(spiCmp@with),f
	movlp	high __stringtab
	callw
	pagesel	$
	movwf	(??_spiCmp+0)+0
	fcall	_byte
	xorwf	(??_spiCmp+0)+0,w
	skipnz
	goto	u3751
	goto	u3750
u3751:
	goto	l6013
u3750:
	
l6009:	
	movlw	(0)
	goto	l1175
	
l6013:	
	decf	(spiCmp@len),f
	movf	((spiCmp@len)),w
	xorlw	0FFh&0ffh
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l6007
u3760:
	line	247
	
l6015:	
;main.c: 247: return 1;
	movlw	(01h)
	line	248
	
l1175:	
	return
	opt stack 0
GLOBAL	__end_of_spiCmp
	__end_of_spiCmp:
;; =============== function _spiCmp ends ============

	signat	_spiCmp,8313
	global	_sdPrvReadResp
psect	text1571,local,class=CODE,delta=2
global __ptext1571
__ptext1571:

;; *************** function _sdPrvReadResp *****************
;; Defined at:
;;		line 93 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  v               1    4[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/4
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sdSpiByte
;; This function is called by:
;;		_sdPrvSimpleCommand
;; This function uses a non-reentrant model
;;
psect	text1571
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	93
	global	__size_of_sdPrvReadResp
	__size_of_sdPrvReadResp	equ	__end_of_sdPrvReadResp-_sdPrvReadResp
	
_sdPrvReadResp:	
	opt	stack 12
; Regs used in _sdPrvReadResp: [wreg+status,2+status,0+pclath+cstack]
	line	95
	
l5993:	
;SD.c: 95: UInt8 v, i = 0;
	clrf	(sdPrvReadResp@i)
	line	99
	
l5995:	
;SD.c: 99: v = sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	movwf	(sdPrvReadResp@v)
	line	101
	
l5997:	
;SD.c: 101: }while(i++ < 128 && (v == 0xFF));
	movlw	(081h)
	incf	(sdPrvReadResp@i),f
	subwf	((sdPrvReadResp@i)),w
	skipnc
	goto	u3731
	goto	u3730
u3731:
	goto	l6001
u3730:
	
l5999:	
	movf	(sdPrvReadResp@v),w
	xorlw	0FFh&0ffh
	skipnz
	goto	u3741
	goto	u3740
u3741:
	goto	l5995
u3740:
	line	103
	
l6001:	
;SD.c: 103: return v;
	movf	(sdPrvReadResp@v),w
	line	104
	
l2380:	
	return
	opt stack 0
GLOBAL	__end_of_sdPrvReadResp
	__end_of_sdPrvReadResp:
;; =============== function _sdPrvReadResp ends ============

	signat	_sdPrvReadResp,89
	global	_sdPrvSendCmd
psect	text1572,local,class=CODE,delta=2
global __ptext1572
__ptext1572:

;; *************** function _sdPrvSendCmd *****************
;; Defined at:
;;		line 77 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;;  param           4    0[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  cmd             1   10[BANK0 ] unsigned char 
;;  send            6    4[BANK0 ] unsigned char [6]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       7       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1      11       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sdCrc7
;;		_sdSpiByte
;; This function is called by:
;;		_sdPrvSimpleCommand
;; This function uses a non-reentrant model
;;
psect	text1572
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	77
	global	__size_of_sdPrvSendCmd
	__size_of_sdPrvSendCmd	equ	__end_of_sdPrvSendCmd-_sdPrvSendCmd
	
_sdPrvSendCmd:	
	opt	stack 12
; Regs used in _sdPrvSendCmd: [wreg+fsr1l-status,0+pclath+cstack]
;sdPrvSendCmd@cmd stored from wreg
	line	81
	movwf	(sdPrvSendCmd@cmd)
	
l5969:	
;SD.c: 79: UInt8 send[6];
;SD.c: 81: send[0] = cmd | 0x40;
	movf	(sdPrvSendCmd@cmd),w
	iorlw	040h
	movwf	(sdPrvSendCmd@send)
	line	82
	
l5971:	
;SD.c: 82: send[1] = param >> 24;
	movf	0+(((sdPrvSendCmd@param))+3),w
	movwf	0+(sdPrvSendCmd@send)+01h
	line	83
	
l5973:	
;SD.c: 83: send[2] = param >> 16;
	movf	0+(((sdPrvSendCmd@param))+2),w
	movwf	0+(sdPrvSendCmd@send)+02h
	line	84
	
l5975:	
;SD.c: 84: send[3] = param >> 8;
	movf	0+(((sdPrvSendCmd@param))+1),w
	movwf	0+(sdPrvSendCmd@send)+03h
	line	85
	
l5977:	
;SD.c: 85: send[4] = param;
	movf	(sdPrvSendCmd@param),w
	movwf	0+(sdPrvSendCmd@send)+04h
	line	86
	
l5979:	
;SD.c: 86: send[5] = (sdCrc7(send, 5, 0) << 1) | 1;
	setc
	movlw	(05h)
	movwf	(?_sdCrc7)
	clrf	0+(?_sdCrc7)+01h
	movlw	(sdPrvSendCmd@send)&0ffh
	fcall	_sdCrc7
	movwf	(??_sdPrvSendCmd+0)+0
	rlf	0+(??_sdPrvSendCmd+0)+0,w
	movwf	0+(sdPrvSendCmd@send)+05h
	line	88
	
l5981:	
;SD.c: 88: for(cmd = 0; cmd < sizeof(send); cmd++){
	clrf	(sdPrvSendCmd@cmd)
	line	89
	
l5987:	
;SD.c: 89: sdSpiByte(send[cmd]);
	movf	(sdPrvSendCmd@cmd),w
	addlw	sdPrvSendCmd@send&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_sdSpiByte
	line	88
	
l5989:	
	movlb 0	; select bank0
	incf	(sdPrvSendCmd@cmd),f
	
l5991:	
	movlw	(06h)
	subwf	(sdPrvSendCmd@cmd),w
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l5987
u3720:
	line	91
	
l2373:	
	return
	opt stack 0
GLOBAL	__end_of_sdPrvSendCmd
	__end_of_sdPrvSendCmd:
;; =============== function _sdPrvSendCmd ends ============

	signat	_sdPrvSendCmd,8312
	global	_sdSpiResync
psect	text1573,local,class=CODE,delta=2
global __ptext1573
__ptext1573:

;; *************** function _sdSpiResync *****************
;; Defined at:
;;		line 42 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/4
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sdInit
;; This function uses a non-reentrant model
;;
psect	text1573
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	42
	global	__size_of_sdSpiResync
	__size_of_sdSpiResync	equ	__end_of_sdSpiResync-_sdSpiResync
	
_sdSpiResync:	
	opt	stack 14
; Regs used in _sdSpiResync: [wreg]
	line	44
	
l4847:	
;SD.c: 44: LATA1 = 0;
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
	line	45
;SD.c: 45: LATA4 = 1;
	bsf	(2148/8)^0100h,(2148)&7
	line	46
;SD.c: 46: SSPEN = 0;
	movlb 4	; select bank4
	bcf	(4269/8)^0200h,(4269)&7
	line	47
	
l4849:	
;SD.c: 47: _delay((unsigned long)((10)*(33000000/4000000.0)));
	opt asmopt_off
movlw	27
movwf	(??_sdSpiResync+0)+0,f
u5057:
decfsz	(??_sdSpiResync+0)+0,f
	goto	u5057
opt asmopt_on

	line	48
	
l4851:	
;SD.c: 48: LATA1 = 1;
	movlb 2	; select bank2
	bsf	(2145/8)^0100h,(2145)&7
	line	49
;SD.c: 49: _delay((unsigned long)((10)*(33000000/4000000.0)));
	opt asmopt_off
movlw	27
movwf	(??_sdSpiResync+0)+0,f
u5067:
decfsz	(??_sdSpiResync+0)+0,f
	goto	u5067
opt asmopt_on

	line	50
	
l4853:	
;SD.c: 50: LATA1 = 0;
	movlb 2	; select bank2
	bcf	(2145/8)^0100h,(2145)&7
	line	51
;SD.c: 51: _delay((unsigned long)((10)*(33000000/4000000.0)));
	opt asmopt_off
movlw	27
movwf	(??_sdSpiResync+0)+0,f
u5077:
decfsz	(??_sdSpiResync+0)+0,f
	goto	u5077
opt asmopt_on

	line	52
	
l4855:	
;SD.c: 52: SSPEN = 1;
	movlb 4	; select bank4
	bsf	(4269/8)^0200h,(4269)&7
	line	53
	
l2359:	
	return
	opt stack 0
GLOBAL	__end_of_sdSpiResync
	__end_of_sdSpiResync:
;; =============== function _sdSpiResync ends ============

	signat	_sdSpiResync,88
	global	_measureBattery
psect	text1574,local,class=CODE,delta=2
global __ptext1574
__ptext1574:

;; *************** function _measureBattery *****************
;; Defined at:
;;		line 397 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               3   16[BANK0 ] unsigned um
;;  i               1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       7       0       0
;;      Totals:         0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1574
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	397
	global	__size_of_measureBattery
	__size_of_measureBattery	equ	__end_of_measureBattery-_measureBattery
	
_measureBattery:	
	opt	stack 15
; Regs used in _measureBattery: [wreg+status,2+status,0+pclath+cstack]
	line	399
	
l5939:	
;main.c: 399: UInt24 t = 0;
	movlb 0	; select bank0
	clrf	(measureBattery@t)
	clrf	(measureBattery@t+1)
	clrf	(measureBattery@t+2)
	line	402
	
l5941:	
;main.c: 400: UInt8 i;
;main.c: 402: FVRCON = 0b11000001;
	movlw	(0C1h)
	movlb 2	; select bank2
	movwf	(279)^0100h	;volatile
	line	403
;main.c: 403: ADCON0 = 0b01111101;
	movlw	(07Dh)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	404
;main.c: 404: ADCON1 = 0b11110000;
	movlw	(0F0h)
	movwf	(158)^080h	;volatile
	line	405
;main.c: 405: _delay((unsigned long)((1)*(33000000/4000.0)));
	opt asmopt_off
movlw	11
	movlb 0	; select bank0
movwf	((??_measureBattery+0)+0+1),f
	movlw	181
movwf	((??_measureBattery+0)+0),f
u5087:
	decfsz	((??_measureBattery+0)+0),f
	goto	u5087
	decfsz	((??_measureBattery+0)+0+1),f
	goto	u5087
	nop2
opt asmopt_on

	line	406
	
l5943:	
;main.c: 406: for(i = 0; i < 10; i++){
	movlb 0	; select bank0
	clrf	(measureBattery@i)
	line	407
	
l5949:	
;main.c: 407: _delay((unsigned long)((160)*(33000000/4000000.0)));
	opt asmopt_off
movlw	188
movwf	(??_measureBattery+0)+0,f
u5097:
	nop2
	nop2
decfsz	(??_measureBattery+0)+0,f
	goto	u5097
	nop2	;nop
	clrwdt
opt asmopt_on

	line	408
	
l5951:	
;main.c: 408: ADCON0bits.GO_nDONE = 1;
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	409
;main.c: 409: while(ADCON0bits.GO_nDONE);
	
l1249:	
	btfsc	(157)^080h,1	;volatile
	goto	u3701
	goto	u3700
u3701:
	goto	l1249
u3700:
	line	410
	
l5953:	
;main.c: 410: t += ADRES;
	movf	(155)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	((??_measureBattery+0)+0)
	movlb 1	; select bank1
	movf	(155+1)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	((??_measureBattery+0)+0+1)
	clrf	((??_measureBattery+0)+0+2)
	movf	0+(??_measureBattery+0)+0,w
	addwf	(measureBattery@t),f
	movf	1+(??_measureBattery+0)+0,w
	addwfc	(measureBattery@t+1),f
	movf	2+(??_measureBattery+0)+0,w
	addwfc	(measureBattery@t+2),f
	line	406
	
l5955:	
	incf	(measureBattery@i),f
	
l5957:	
	movlw	(0Ah)
	subwf	(measureBattery@i),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l5949
u3710:
	line	412
	
l5959:	
;main.c: 411: }
;main.c: 412: FVRCON = 0b00000000;
	movlb 2	; select bank2
	clrf	(279)^0100h	;volatile
	line	413
	
l5961:	
;main.c: 413: ADCON0 &=~ 0b00000001;
	movlb 1	; select bank1
	bcf	(157)^080h+(0/8),(0)&7	;volatile
	line	420
	
l5963:	
;main.c: 420: t = (10475520 + (t >> 1)) / t;
	movlb 0	; select bank0
	movf	(measureBattery@t),w
	movwf	(?___aldiv)
	movf	(measureBattery@t+1),w
	movwf	((?___aldiv))+1
	movf	(measureBattery@t+2),w
	movwf	((?___aldiv))+2
	clrf	((?___aldiv))+3
	movf	(measureBattery@t),w
	movwf	((??_measureBattery+0)+0)
	movf	(measureBattery@t+1),w
	movwf	((??_measureBattery+0)+0+1)
	movf	(measureBattery@t+2),w
	movwf	((??_measureBattery+0)+0+2)
	lsrf	(??_measureBattery+0)+2,f
	rrf	(??_measureBattery+0)+1,f
	rrf	(??_measureBattery+0)+0,f
	movf	0+(??_measureBattery+0)+0,w
	movwf	((??_measureBattery+3)+0)
	movf	1+(??_measureBattery+0)+0,w
	movwf	((??_measureBattery+3)+0+1)
	movf	2+(??_measureBattery+0)+0,w
	movwf	((??_measureBattery+3)+0+2)
	clrf	((??_measureBattery+3)+0+3)
	movlw	0
	addwf	(0+(??_measureBattery+3)+0),w
	movwf	0+(?___aldiv)+04h
	movlw	0D8h
	addwfc	(1+(??_measureBattery+3)+0),w
	movwf	1+0+(?___aldiv)+04h
	movlw	09Fh
	addwfc	(2+(??_measureBattery+3)+0),w
	movwf	2+0+(?___aldiv)+04h
	movlw	0
	addwfc	(3+(??_measureBattery+3)+0),w
	movwf	3+0+(?___aldiv)+04h
	fcall	___aldiv
	movf	(2+(?___aldiv)),w
	movwf	(measureBattery@t+2)
	movf	(1+(?___aldiv)),w
	movwf	(measureBattery@t+1)
	movf	(0+(?___aldiv)),w
	movwf	(measureBattery@t)

	line	422
	
l5965:	
;main.c: 422: return t;
	movf	(measureBattery@t+1),w
	movwf	(?_measureBattery+1)
	movf	(measureBattery@t),w
	movwf	(?_measureBattery)
	line	423
	
l1252:	
	return
	opt stack 0
GLOBAL	__end_of_measureBattery
	__end_of_measureBattery:
;; =============== function _measureBattery ends ============

	signat	_measureBattery,90
	global	_sdNextSec
psect	text1575,local,class=CODE,delta=2
global __ptext1575
__ptext1575:

;; *************** function _sdNextSec *****************
;; Defined at:
;;		line 237 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  v               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/4
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sdSpiByte
;; This function is called by:
;;		_play
;; This function uses a non-reentrant model
;;
psect	text1575
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	237
	global	__size_of_sdNextSec
	__size_of_sdNextSec	equ	__end_of_sdNextSec-_sdNextSec
	
_sdNextSec:	
	opt	stack 14
; Regs used in _sdNextSec: [wreg+status,2+status,0+pclath+cstack]
	line	241
	
l5933:	
;SD.c: 239: UInt8 v;
;SD.c: 241: sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	line	242
;SD.c: 242: sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	line	245
	
l5935:	
;SD.c: 245: v = sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	movwf	(sdNextSec@v)
	line	246
	
l5937:	
;SD.c: 246: }while(v == 0xFF);
	movf	(sdNextSec@v),w
	xorlw	0FFh&0ffh
	skipnz
	goto	u3691
	goto	u3690
u3691:
	goto	l5935
u3690:
	line	247
	
l2430:	
	return
	opt stack 0
GLOBAL	__end_of_sdNextSec
	__end_of_sdNextSec:
;; =============== function _sdNextSec ends ============

	signat	_sdNextSec,88
	global	_byte
psect	text1576,local,class=CODE,delta=2
global __ptext1576
__ptext1576:

;; *************** function _byte *****************
;; Defined at:
;;		line 238 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, pclath, cstack
;; Tracked objects:
;;		On entry : 1A/0
;;		On exit  : 1F/4
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sdSpiByte
;; This function is called by:
;;		_spiCmp
;;		_hdrProcess
;; This function uses a non-reentrant model
;;
psect	text1576
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	238
	global	__size_of_byte
	__size_of_byte	equ	__end_of_byte-_byte
	
_byte:	
	opt	stack 13
; Regs used in _byte: [wreg+pclath+cstack]
	line	240
	
l5929:	
;main.c: 240: return sdSpiByte(0xFF);
	movlw	(0FFh)
	fcall	_sdSpiByte
	line	241
	
l1169:	
	return
	opt stack 0
GLOBAL	__end_of_byte
	__end_of_byte:
;; =============== function _byte ends ============

	signat	_byte,89
	global	_fatal
psect	text1577,local,class=CODE,delta=2
global __ptext1577
__ptext1577:

;; *************** function _fatal *****************
;; Defined at:
;;		line 105 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    5[COMMON] unsigned char 
;;  j               1    8[COMMON] unsigned char 
;;  i               1    7[COMMON] unsigned char 
;;  k               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_play
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1577
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	105
	global	__size_of_fatal
	__size_of_fatal	equ	__end_of_fatal-_fatal
	
_fatal:	
	opt	stack 14
; Regs used in _fatal: [wreg+status,2+status,0]
;fatal@val stored from wreg
	line	109
	movwf	(fatal@val)
	
l4773:	
;main.c: 107: UInt8 i, j, k;
;main.c: 109: for(j = 0; j < 5; j++){
	clrf	(fatal@j)
	line	111
	
l4779:	
;main.c: 111: for(k = 0; k < val; k++){
	clrf	(fatal@k)
	goto	l4799
	line	112
	
l4781:	
;main.c: 112: _delay((unsigned long)((300)*(33000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_fatal+0)+0+2),f
movlw	131
movwf	((??_fatal+0)+0+1),f
	movlw	69
movwf	((??_fatal+0)+0),f
u5107:
	decfsz	((??_fatal+0)+0),f
	goto	u5107
	decfsz	((??_fatal+0)+0+1),f
	goto	u5107
	decfsz	((??_fatal+0)+0+2),f
	goto	u5107
	clrwdt
opt asmopt_on

	line	113
	
l4783:	
;main.c: 113: for(i = 0; i < 100; i++){
	clrf	(fatal@i)
	
l1117:	
	line	114
;main.c: 114: RA5 = 1;
	movlb 0	; select bank0
	bsf	(101/8),(101)&7
	line	115
	
l4789:	
;main.c: 115: _delay((unsigned long)((1)*(33000000/4000.0)));
	opt asmopt_off
movlw	11
movwf	((??_fatal+0)+0+1),f
	movlw	181
movwf	((??_fatal+0)+0),f
u5117:
	decfsz	((??_fatal+0)+0),f
	goto	u5117
	decfsz	((??_fatal+0)+0+1),f
	goto	u5117
	nop2
opt asmopt_on

	line	116
	
l4791:	
;main.c: 116: RA5 = 0;
	movlb 0	; select bank0
	bcf	(101/8),(101)&7
	line	117
;main.c: 117: _delay((unsigned long)((1)*(33000000/4000.0)));
	opt asmopt_off
movlw	11
movwf	((??_fatal+0)+0+1),f
	movlw	181
movwf	((??_fatal+0)+0),f
u5127:
	decfsz	((??_fatal+0)+0),f
	goto	u5127
	decfsz	((??_fatal+0)+0+1),f
	goto	u5127
	nop2
opt asmopt_on

	line	113
	
l4793:	
	incf	(fatal@i),f
	
l4795:	
	movlw	(064h)
	subwf	(fatal@i),w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l1117
u2140:
	line	111
	
l4797:	
	incf	(fatal@k),f
	
l4799:	
	movf	(fatal@val),w
	subwf	(fatal@k),w
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l4781
u2150:
	line	121
	
l4801:	
;main.c: 118: }
;main.c: 119: }
;main.c: 121: _delay((unsigned long)((3000)*(33000000/4000.0)));
	opt asmopt_off
movlw  126
movwf	((??_fatal+0)+0+2),f
movlw	18
movwf	((??_fatal+0)+0+1),f
	movlw	216
movwf	((??_fatal+0)+0),f
u5137:
	decfsz	((??_fatal+0)+0),f
	goto	u5137
	decfsz	((??_fatal+0)+0+1),f
	goto	u5137
	decfsz	((??_fatal+0)+0+2),f
	goto	u5137
opt asmopt_on

	line	109
	
l4803:	
	incf	(fatal@j),f
	
l4805:	
	movlw	(05h)
	subwf	(fatal@j),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l4779
u2160:
	
l1114:	
	line	123
;main.c: 122: }
;main.c: 123: RA0 = 0;
	movlb 0	; select bank0
	bcf	(96/8),(96)&7
	line	125
;main.c: 125: while(1){
	
l1120:	
	line	127
# 127 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
   SLEEP ;#
	line	129
# 129 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
# 128 ;#
psect	text1577
	goto	l1120
	return
	opt stack 0
GLOBAL	__end_of_fatal
	__end_of_fatal:
;; =============== function _fatal ends ============

psect	text1578,local,class=CODE,delta=2
global __ptext1578
__ptext1578:
	line	132
	signat	_fatal,4216
	global	_secListWrite

;; *************** function _secListWrite *****************
;; Defined at:
;;		line 93 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  which           1    wreg     unsigned char 
;;  start           3    5[COMMON] unsigned um
;;  len             2    8[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  which           1    0[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         5       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         5       2       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		_eeWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1578
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	93
	global	__size_of_secListWrite
	__size_of_secListWrite	equ	__end_of_secListWrite-_secListWrite
	
_secListWrite:	
	opt	stack 15
; Regs used in _secListWrite: [wreg+status,2+status,0+pclath+cstack]
;secListWrite@which stored from wreg
	line	97
	movlb 0	; select bank0
	movwf	(secListWrite@which)
	
l5895:	
;main.c: 95: UInt8 i;
;main.c: 97: if(which >= 50) return;
	movlw	(032h)
	subwf	(secListWrite@which),w
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l5899
u3660:
	goto	l1106
	line	99
	
l5899:	
;main.c: 99: which = which + (which << 2);
	movf	(secListWrite@which),w
	movwf	(?___bmul)
	movlw	(05h)
	fcall	___bmul
	movwf	(secListWrite@which)
	line	101
	
l5901:	
;main.c: 101: for(i = 0; i < 3; i++, start >>= 8) eeWrite(which + (2 - i), start);
	clrf	(secListWrite@i)
	
l5907:	
	movf	(secListWrite@start),w
	movwf	(?_eeWrite)
	movf	(secListWrite@i),w
	subwf	(secListWrite@which),w
	addlw	02h
	fcall	_eeWrite
	
l5909:	
	movlb 0	; select bank0
	incf	(secListWrite@i),f
	
l5911:	
	movf	(secListWrite@start+1),w
	movwf	(secListWrite@start)
	movf	(secListWrite@start+2),w
	movwf	(secListWrite@start+1)
	clrf	(secListWrite@start+2)
	
l5913:	
	movlw	(03h)
	subwf	(secListWrite@i),w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l5907
u3670:
	line	102
	
l5915:	
;main.c: 102: for(i = 0; i < 2; i++, len >>= 8) eeWrite(which + (4 - i), len);
	clrf	(secListWrite@i)
	
l5921:	
	movf	(secListWrite@len),w
	movwf	(?_eeWrite)
	movf	(secListWrite@i),w
	subwf	(secListWrite@which),w
	addlw	04h
	fcall	_eeWrite
	
l5923:	
	movlb 0	; select bank0
	incf	(secListWrite@i),f
	
l5925:	
	movf	(secListWrite@len+1),w
	movwf	(secListWrite@len)
	clrf	(secListWrite@len+1)
	
l5927:	
	movlw	(02h)
	subwf	(secListWrite@i),w
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l5921
u3680:
	line	103
	
l1106:	
	return
	opt stack 0
GLOBAL	__end_of_secListWrite
	__end_of_secListWrite:
;; =============== function _secListWrite ends ============

	signat	_secListWrite,12408
	global	_secListRead
psect	text1579,local,class=CODE,delta=2
global __ptext1579
__ptext1579:

;; *************** function _secListRead *****************
;; Defined at:
;;		line 71 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  which           1    wreg     unsigned char 
;;  start           1    5[COMMON] PTR unsigned um
;;		 -> play@firstSec(3), 
;;  len             1    6[COMMON] PTR unsigned short 
;;		 -> play@numSec(2), 
;; Auto vars:     Size  Location     Type
;;  which           1   11[BANK0 ] unsigned char 
;;  t24             3    6[BANK0 ] unsigned um
;;  t16             2    9[BANK0 ] unsigned short 
;;  i               1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         0       7       0       0
;;      Temps:          0       6       0       0
;;      Totals:         2      13       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		_eeRead
;; This function is called by:
;;		_play
;; This function uses a non-reentrant model
;;
psect	text1579
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	71
	global	__size_of_secListRead
	__size_of_secListRead	equ	__end_of_secListRead-_secListRead
	
_secListRead:	
	opt	stack 14
; Regs used in _secListRead: [wreg+fsr1l-status,0+pclath+cstack]
;secListRead@which stored from wreg
	line	77
	movwf	(secListRead@which)
	
l5853:	
;main.c: 73: UInt24 t24;
;main.c: 74: UInt16 t16;
;main.c: 75: UInt8 i;
;main.c: 77: if(which >= 50){
	movlw	(032h)
	subwf	(secListRead@which),w
	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l5857
u3630:
	line	78
	
l5855:	
;main.c: 78: *start = 0;
	movf	(secListRead@start),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movlw	0
	movwi	[1]fsr1
	movlw	0
	movwi	[2]fsr1
	line	79
;main.c: 79: *len = 0;
	movf	(secListRead@len),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	addfsr	fsr1,1
	clrf	indf1
	line	82
	
l5857:	
;main.c: 80: }
;main.c: 82: which = which + (which << 2);
	movf	(secListRead@which),w
	movwf	(?___bmul)
	movlw	(05h)
	fcall	___bmul
	movwf	(secListRead@which)
	line	84
	
l5859:	
;main.c: 84: t24 = 0;
	clrf	(secListRead@t24)
	clrf	(secListRead@t24+1)
	clrf	(secListRead@t24+2)
	line	85
	
l5861:	
;main.c: 85: for(i = 0; i < 3; i++) t24 = (t24 << 8) | eeRead(which++);
	clrf	(secListRead@i)
	
l5867:	
	movf	(secListRead@which),w
	fcall	_eeRead
	movlb 0	; select bank0
	movwf	((??_secListRead+0)+0)
	clrf	((??_secListRead+0)+0+1)
	clrf	((??_secListRead+0)+0+2)
	movf	(secListRead@t24),w
	movwf	((??_secListRead+3)+0)
	movf	(secListRead@t24+1),w
	movwf	((??_secListRead+3)+0+1)
	movf	(secListRead@t24+2),w
	movwf	((??_secListRead+3)+0+2)
	movf	(??_secListRead+3)+1,w
	movwf	(??_secListRead+3)+2
	movf	(??_secListRead+3)+0,w
	movwf	(??_secListRead+3)+1
	clrf	(??_secListRead+3)+0
	movf	0+(??_secListRead+3)+0,w
	iorwf	(??_secListRead+0)+0,f
	movf	1+(??_secListRead+3)+0,w
	iorwf	(??_secListRead+0)+1,f
	movf	2+(??_secListRead+3)+0,w
	iorwf	(??_secListRead+0)+2,f
	movf	0+(??_secListRead+0)+0,w
	movwf	(secListRead@t24)
	movf	1+(??_secListRead+0)+0,w
	movwf	(secListRead@t24+1)
	movf	2+(??_secListRead+0)+0,w
	movwf	(secListRead@t24+2)
	
l5869:	
	incf	(secListRead@which),f
	
l5871:	
	incf	(secListRead@i),f
	
l5873:	
	movlw	(03h)
	subwf	(secListRead@i),w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l5867
u3640:
	line	86
	
l5875:	
;main.c: 86: *start = t24;
	movf	(secListRead@start),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(secListRead@t24),w
	movwi	[0]fsr1
	movf	(secListRead@t24+1),w
	movwi	[1]fsr1
	movf	(secListRead@t24+2),w
	movwi	[2]fsr1
	line	88
	
l5877:	
;main.c: 88: t16 = 0;
	clrf	(secListRead@t16)
	clrf	(secListRead@t16+1)
	line	89
	
l5879:	
;main.c: 89: for(i = 0; i < 2; i++) t16 = (t16 << 8) | eeRead(which++);
	clrf	(secListRead@i)
	
l5885:	
	movf	(secListRead@which),w
	fcall	_eeRead
	movlb 0	; select bank0
	movwf	(??_secListRead+0)+0
	movf	(secListRead@t16),w
	movwf	(??_secListRead+1)+0
	movf	0+(??_secListRead+0)+0,w
	movwf	(secListRead@t16)
	movf	(??_secListRead+1)+0,w
	movwf	(secListRead@t16+1)
	
l5887:	
	incf	(secListRead@which),f
	
l5889:	
	incf	(secListRead@i),f
	
l5891:	
	movlw	(02h)
	subwf	(secListRead@i),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l5885
u3650:
	line	90
	
l5893:	
;main.c: 90: *len = t16;
	movf	(secListRead@len),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(secListRead@t16),w
	movwi	[0]fsr1
	movf	(secListRead@t16+1),w
	movwi	[1]fsr1
	line	91
	
l1102:	
	return
	opt stack 0
GLOBAL	__end_of_secListRead
	__end_of_secListRead:
;; =============== function _secListRead ends ============

	signat	_secListRead,12408
	global	_log
psect	text1580,local,class=CODE,delta=2
global __ptext1580
__ptext1580:

;; *************** function _log *****************
;; Defined at:
;;		line 51 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eeWrite
;; This function is called by:
;;		_sdReadStart
;; This function uses a non-reentrant model
;;
psect	text1580
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	51
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
	opt	stack 13
; Regs used in _log: [wreg+status,2+status,0+pclath+cstack]
;log@val stored from wreg
	line	55
	movwf	(log@val)
	
l5847:	
;main.c: 53: static UInt8 addr = 0;
;main.c: 55: eeWrite(addr++, val);
	movf	(log@val),w
	movwf	(?_eeWrite)
	movlb 1	; select bank1
	movf	(log@addr)^080h,w
	fcall	_eeWrite
	
l5849:	
	movlb 1	; select bank1
	incf	(log@addr)^080h,f
	line	57
;main.c: 57: while(!addr);
	
l5851:	
	movf	(log@addr)^080h,w
	skipz
	goto	u3620
	goto	l5851
u3620:
	line	58
	
l1094:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
;; =============== function _log ends ============

	signat	_log,4216
	global	_rnd
psect	text1581,local,class=CODE,delta=2
global __ptext1581
__ptext1581:

;; *************** function _rnd *****************
;; Defined at:
;;		line 32 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               4   15[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  2    9[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      10       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eeRead
;;		___lmul
;;		_eeWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1581
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	32
	global	__size_of_rnd
	__size_of_rnd	equ	__end_of_rnd-_rnd
	
_rnd:	
	opt	stack 15
; Regs used in _rnd: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5831:	
;main.c: 34: UInt32 x;
;main.c: 36: x = eeRead(0xFF);
	movlw	(0FFh)
	fcall	_eeRead
	movlb 0	; select bank0
	movwf	(rnd@x)
	clrf	(rnd@x+1)
	clrf	(rnd@x+2)
	clrf	(rnd@x+3)

	line	37
;main.c: 37: x = (x << 8) | eeRead(0xFE);
	movf	(rnd@x),w
	movwf	(??_rnd+0)+0
	movf	(rnd@x+1),w
	movwf	((??_rnd+0)+0+1)
	movf	(rnd@x+2),w
	movwf	((??_rnd+0)+0+2)
	movf	(rnd@x+3),w
	movwf	((??_rnd+0)+0+3)
	movf	(??_rnd+0)+2,w
	movwf	(??_rnd+0)+3
	movf	(??_rnd+0)+1,w
	movwf	(??_rnd+0)+2
	movf	(??_rnd+0)+0,w
	movwf	(??_rnd+0)+1
	clrf	(??_rnd+0)+0
	movlw	(0FEh)
	fcall	_eeRead
	movlb 0	; select bank0
	iorwf	0+(??_rnd+0)+0,w
	movwf	(rnd@x)
	movf	1+(??_rnd+0)+0,w
	movwf	1+(rnd@x)
	movf	2+(??_rnd+0)+0,w
	movwf	2+(rnd@x)
	movf	3+(??_rnd+0)+0,w
	movwf	3+(rnd@x)
	line	38
;main.c: 38: x = (x << 8) | eeRead(0xFD);
	movf	(rnd@x),w
	movwf	(??_rnd+0)+0
	movf	(rnd@x+1),w
	movwf	((??_rnd+0)+0+1)
	movf	(rnd@x+2),w
	movwf	((??_rnd+0)+0+2)
	movf	(rnd@x+3),w
	movwf	((??_rnd+0)+0+3)
	movf	(??_rnd+0)+2,w
	movwf	(??_rnd+0)+3
	movf	(??_rnd+0)+1,w
	movwf	(??_rnd+0)+2
	movf	(??_rnd+0)+0,w
	movwf	(??_rnd+0)+1
	clrf	(??_rnd+0)+0
	movlw	(0FDh)
	fcall	_eeRead
	movlb 0	; select bank0
	iorwf	0+(??_rnd+0)+0,w
	movwf	(rnd@x)
	movf	1+(??_rnd+0)+0,w
	movwf	1+(rnd@x)
	movf	2+(??_rnd+0)+0,w
	movwf	2+(rnd@x)
	movf	3+(??_rnd+0)+0,w
	movwf	3+(rnd@x)
	line	39
;main.c: 39: x = (x << 8) | eeRead(0xFC);
	movf	(rnd@x),w
	movwf	(??_rnd+0)+0
	movf	(rnd@x+1),w
	movwf	((??_rnd+0)+0+1)
	movf	(rnd@x+2),w
	movwf	((??_rnd+0)+0+2)
	movf	(rnd@x+3),w
	movwf	((??_rnd+0)+0+3)
	movf	(??_rnd+0)+2,w
	movwf	(??_rnd+0)+3
	movf	(??_rnd+0)+1,w
	movwf	(??_rnd+0)+2
	movf	(??_rnd+0)+0,w
	movwf	(??_rnd+0)+1
	clrf	(??_rnd+0)+0
	movlw	(0FCh)
	fcall	_eeRead
	movlb 0	; select bank0
	iorwf	0+(??_rnd+0)+0,w
	movwf	(rnd@x)
	movf	1+(??_rnd+0)+0,w
	movwf	1+(rnd@x)
	movf	2+(??_rnd+0)+0,w
	movwf	2+(rnd@x)
	movf	3+(??_rnd+0)+0,w
	movwf	3+(rnd@x)
	line	41
	
l5833:	
;main.c: 41: x = x * 0xDEECE66D + 0x0B;
	movf	(rnd@x+3),w
	movwf	(?___lmul+3)
	movf	(rnd@x+2),w
	movwf	(?___lmul+2)
	movf	(rnd@x+1),w
	movwf	(?___lmul+1)
	movf	(rnd@x),w
	movwf	(?___lmul)

	movlw	0DEh
	movwf	3+(?___lmul)+04h
	movlw	0ECh
	movwf	2+(?___lmul)+04h
	movlw	0E6h
	movwf	1+(?___lmul)+04h
	movlw	06Dh
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movlw	0Bh
	addwf	((0+(?___lmul))),w
	movwf	(rnd@x)
	movlw	0
	addwfc	((1+(?___lmul))),w
	movwf	1+(rnd@x)
	movlw	0
	addwfc	((2+(?___lmul))),w
	movwf	2+(rnd@x)
	movlw	0
	addwfc	((3+(?___lmul))),w
	movwf	3+(rnd@x)
	line	43
	
l5835:	
;main.c: 43: eeWrite(0xFF, x >> 24);
	movf	0+(((rnd@x))+3),w
	movwf	(?_eeWrite)
	movlw	(0FFh)
	fcall	_eeWrite
	line	44
	
l5837:	
;main.c: 44: eeWrite(0xFE, x >> 16);
	movlb 0	; select bank0
	movf	0+(((rnd@x))+2),w
	movwf	(?_eeWrite)
	movlw	(0FEh)
	fcall	_eeWrite
	line	45
	
l5839:	
;main.c: 45: eeWrite(0xFD, x >> 8);
	movlb 0	; select bank0
	movf	0+(((rnd@x))+1),w
	movwf	(?_eeWrite)
	movlw	(0FDh)
	fcall	_eeWrite
	line	46
	
l5841:	
;main.c: 46: eeWrite(0xFC, x >> 0);
	movlb 0	; select bank0
	movf	(rnd@x),w
	movwf	(?_eeWrite)
	movlw	(0FCh)
	fcall	_eeWrite
	line	48
	
l5843:	
;main.c: 48: return x >> 16;
	movlb 0	; select bank0
	movf	1+(((rnd@x))+2),w
	movwf	(?_rnd+1)
	movf	0+(((rnd@x))+2),w
	movwf	(?_rnd)
	line	49
	
l1086:	
	return
	opt stack 0
GLOBAL	__end_of_rnd
	__end_of_rnd:
;; =============== function _rnd ends ============

	signat	_rnd,90
	global	___aldiv
psect	text1582,local,class=CODE,delta=2
global __ptext1582
__ptext1582:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.71a\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] long 
;;  dividend        4    6[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK0 ] long 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         8       0       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       0       0       0
;;      Totals:         8       6       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measureBattery
;; This function uses a non-reentrant model
;;
psect	text1582
	file	"C:\Program Files\HI-TECH Software\PICC\9.71a\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 14
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l4635:	
	clrf	(___aldiv@sign)
	line	10
	
l4637:	
	btfss	(___aldiv@divisor+3),7
	goto	u2001
	goto	u2000
u2001:
	goto	l2722
u2000:
	line	11
	
l4639:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	clrf	(___aldiv@sign)
	incf	(___aldiv@sign),f
	line	13
	
l2722:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u2011
	goto	u2010
u2011:
	goto	l4645
u2010:
	line	15
	
l4641:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
l4643:	
	movlw	(01h)
	xorwf	(___aldiv@sign),f
	line	18
	
l4645:	
	clrf	(___aldiv@quotient)
	clrf	(___aldiv@quotient+1)
	clrf	(___aldiv@quotient+2)
	clrf	(___aldiv@quotient+3)
	line	19
	
l4647:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2021
	goto	u2020
u2021:
	goto	l4667
u2020:
	line	20
	
l4649:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	21
	goto	l4653
	line	22
	
l4651:	
	lslf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	line	23
	incf	(___aldiv@counter),f
	line	21
	
l4653:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2031
	goto	u2030
u2031:
	goto	l4651
u2030:
	line	26
	
l4655:	
	lslf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	line	27
	
l4657:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2045
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2045
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2045
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2045:
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l4663
u2040:
	line	28
	
l4659:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	subwfb	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	subwfb	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	subwfb	(___aldiv@dividend+3),f
	line	29
	
l4661:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	31
	
l4663:	
	lsrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	line	32
	
l4665:	
	decfsz	(___aldiv@counter),f
	goto	u2051
	goto	u2050
u2051:
	goto	l4655
u2050:
	line	34
	
l4667:	
	movf	(___aldiv@sign),w
	skipz
	goto	u2060
	goto	l4671
u2060:
	line	35
	
l4669:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	line	36
	
l4671:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	37
	
l2732:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___lldiv
psect	text1583,local,class=CODE,delta=2
global __ptext1583
__ptext1583:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    2[COMMON] unsigned long 
;;  dividend        4    6[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    0[BANK0 ] unsigned long 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         8       0       0       0
;;      Locals:         0       5       0       0
;;      Temps:          0       0       0       0
;;      Totals:         8       5       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hdrProcess
;; This function uses a non-reentrant model
;;
psect	text1583
	file	"C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 13
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l4609:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l4611:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u1961
	goto	u1960
u1961:
	goto	l4631
u1960:
	line	11
	
l4613:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l4617
	line	13
	
l4615:	
	lslf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l4617:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u1971
	goto	u1970
u1971:
	goto	l4615
u1970:
	line	17
	
l4619:	
	lslf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l4621:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u1985
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u1985
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u1985
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u1985:
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l4627
u1980:
	line	19
	
l4623:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	subwfb	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	subwfb	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	subwfb	(___lldiv@dividend+3),f
	line	20
	
l4625:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l4627:	
	lsrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l4629:	
	decfsz	(___lldiv@counter),f
	goto	u1991
	goto	u1990
u1991:
	goto	l4619
u1990:
	line	25
	
l4631:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l2706:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___lmul
psect	text1584,local,class=CODE,delta=2
global __ptext1584
__ptext1584:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    2[COMMON] unsigned long 
;;  multiplicand    4    6[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    0[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         8       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         8       4       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rnd
;;		_ufatGetNextSectorRange
;; This function uses a non-reentrant model
;;
psect	text1584
	file	"C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 14
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l4597:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
l2602:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u1941
	goto	u1940
u1941:
	goto	l4601
u1940:
	line	8
	
l4599:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	addwfc	(___lmul@product+1),f
	movf	(___lmul@multiplicand+2),w
	addwfc	(___lmul@product+2),f
	movf	(___lmul@multiplicand+3),w
	addwfc	(___lmul@product+3),f
	line	9
	
l4601:	
	lslf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
l4603:	
	lsrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l2602
u1950:
	line	12
	
l4605:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
l2605:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___lwmod
psect	text1585,local,class=CODE,delta=2
global __ptext1585
__ptext1585:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[BANK0 ] unsigned int 
;;  dividend        2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1585
	file	"C:\Program Files\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 15
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l5811:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3581
	goto	u3580
u3581:
	goto	l5827
u3580:
	line	9
	
l5813:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l5817
	line	11
	
l5815:	
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l5817:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l5815
u3590:
	line	15
	
l5819:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3605
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3605:
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l5823
u3600:
	line	16
	
l5821:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	line	17
	
l5823:	
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l5825:	
	decfsz	(___lwmod@counter),f
	goto	u3611
	goto	u3610
u3611:
	goto	l5819
u3610:
	line	20
	
l5827:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2550:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___wmul
psect	text1586,local,class=CODE,delta=2
global __ptext1586
__ptext1586:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.71a\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMMON] unsigned int 
;;  multiplicand    2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ufatMount
;; This function uses a non-reentrant model
;;
psect	text1586
	file	"C:\Program Files\HI-TECH Software\PICC\9.71a\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 14
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4561:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l4563:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l4567
u1880:
	line	8
	
l4565:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	line	9
	
l4567:	
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l4569:	
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l4571:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l4563
u1890:
	line	12
	
l4573:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2530:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text1587,local,class=CODE,delta=2
global __ptext1587
__ptext1587:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_secListRead
;;		_secListWrite
;;		_hdrProcess
;; This function uses a non-reentrant model
;;
psect	text1587
	file	"C:\Program Files\HI-TECH Software\PICC\9.71a\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 13
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l5795:	
	clrf	(___bmul@product)
	line	7
	
l5797:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l5801
u3560:
	line	8
	
l5799:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l5801:	
	lslf	(___bmul@multiplicand),f
	line	10
	
l5803:	
	lsrf	(___bmul@multiplier),f
	line	11
	
l5805:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l5797
u3570:
	line	12
	
l5807:	
	movf	(___bmul@product),w
	line	13
	
l2524:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_ufatGetU32
psect	text1588,local,class=CODE,delta=2
global __ptext1588
__ptext1588:

;; *************** function _ufatGetU32 *****************
;; Defined at:
;;		line 53 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;  v               1    wreg     PTR const unsigned char 
;;		 -> ufatGetNthFile@buf(4), 
;;  idx             1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  v               1    6[COMMON] PTR const unsigned char 
;;		 -> ufatGetNthFile@buf(4), 
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0      12       0       0
;;      Totals:         5      12       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ufatGetNthFile
;; This function uses a non-reentrant model
;;
psect	text1588
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	53
	global	__size_of_ufatGetU32
	__size_of_ufatGetU32	equ	__end_of_ufatGetU32-_ufatGetU32
	
_ufatGetU32:	
	opt	stack 14
; Regs used in _ufatGetU32: [wreg+fsr1l-status,0]
;ufatGetU32@v stored from wreg
	line	55
	movwf	(ufatGetU32@v)
	
l4539:	
;ufat.c: 55: v += idx;
	movf	(ufatGetU32@idx),w
	addwf	(ufatGetU32@v),f
	line	56
	
l4541:	
;ufat.c: 56: return (((u32)v[3]) << 24) | (((u32)v[2]) << 16) | (((u32)v[1]) << 8) | ((u32)v[0]);
	movf	(ufatGetU32@v),w
	addlw	01h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 0	; select bank0
	movwf	(??_ufatGetU32+0)+0
	clrf	((??_ufatGetU32+0)+0+1)
	clrf	((??_ufatGetU32+0)+0+2)
	clrf	((??_ufatGetU32+0)+0+3)
	movf	(??_ufatGetU32+0)+2,w
	movwf	(??_ufatGetU32+0)+3
	movf	(??_ufatGetU32+0)+1,w
	movwf	(??_ufatGetU32+0)+2
	movf	(??_ufatGetU32+0)+0,w
	movwf	(??_ufatGetU32+0)+1
	clrf	(??_ufatGetU32+0)+0
	movf	(ufatGetU32@v),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_ufatGetU32+4)+0
	clrf	((??_ufatGetU32+4)+0+1)
	clrf	((??_ufatGetU32+4)+0+2)
	clrf	((??_ufatGetU32+4)+0+3)
	movf	(??_ufatGetU32+4)+1,w
	movwf	(??_ufatGetU32+4)+3
	movf	(??_ufatGetU32+4)+0,w
	movwf	(??_ufatGetU32+4)+2
	clrf	(??_ufatGetU32+4)+1
	clrf	(??_ufatGetU32+4)+0
	movf	(ufatGetU32@v),w
	addlw	03h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	((??_ufatGetU32+8)+0+3)
	clrf	((??_ufatGetU32+8)+0+2)
	clrf	((??_ufatGetU32+8)+0+1)
	clrf	(??_ufatGetU32+8)+0
	movf	0+(??_ufatGetU32+8)+0,w
	iorwf	(??_ufatGetU32+4)+0,f
	movf	1+(??_ufatGetU32+8)+0,w
	iorwf	(??_ufatGetU32+4)+1,f
	movf	2+(??_ufatGetU32+8)+0,w
	iorwf	(??_ufatGetU32+4)+2,f
	movf	3+(??_ufatGetU32+8)+0,w
	iorwf	(??_ufatGetU32+4)+3,f
	movf	0+(??_ufatGetU32+4)+0,w
	iorwf	(??_ufatGetU32+0)+0,f
	movf	1+(??_ufatGetU32+4)+0,w
	iorwf	(??_ufatGetU32+0)+1,f
	movf	2+(??_ufatGetU32+4)+0,w
	iorwf	(??_ufatGetU32+0)+2,f
	movf	3+(??_ufatGetU32+4)+0,w
	iorwf	(??_ufatGetU32+0)+3,f
	movf	(ufatGetU32@v),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	iorwf	0+(??_ufatGetU32+0)+0,w
	movwf	(?_ufatGetU32)
	movf	1+(??_ufatGetU32+0)+0,w
	movwf	1+(?_ufatGetU32)
	movf	2+(??_ufatGetU32+0)+0,w
	movwf	2+(?_ufatGetU32)
	movf	3+(??_ufatGetU32+0)+0,w
	movwf	3+(?_ufatGetU32)
	line	57
	
l2469:	
	return
	opt stack 0
GLOBAL	__end_of_ufatGetU32
	__end_of_ufatGetU32:
;; =============== function _ufatGetU32 ends ============

	signat	_ufatGetU32,8316
	global	_ufatGetU16
psect	text1589,local,class=CODE,delta=2
global __ptext1589
__ptext1589:

;; *************** function _ufatGetU16 *****************
;; Defined at:
;;		line 47 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;  v               1    wreg     PTR const unsigned char 
;;		 -> ufatGetNextClus@buf(2), ufatGetNthFile@buf(4), ufatMount@buf(13), 
;;  idx             1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  v               1    4[COMMON] PTR const unsigned char 
;;		 -> ufatGetNextClus@buf(2), ufatGetNthFile@buf(4), ufatMount@buf(13), 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned short 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1E/0
;;		Unchanged: FFFE1/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ufatMount
;;		_ufatGetNthFile
;;		_ufatGetNextClus
;; This function uses a non-reentrant model
;;
psect	text1589
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	47
	global	__size_of_ufatGetU16
	__size_of_ufatGetU16	equ	__end_of_ufatGetU16-_ufatGetU16
	
_ufatGetU16:	
	opt	stack 13
; Regs used in _ufatGetU16: [wreg-status,0]
;ufatGetU16@v stored from wreg
	line	49
	movwf	(ufatGetU16@v)
	
l4533:	
;ufat.c: 49: v += idx;
	movf	(ufatGetU16@idx),w
	addwf	(ufatGetU16@v),f
	line	50
	
l4535:	
;ufat.c: 50: return (((u16)v[1]) << 8) | ((u16)v[0]);
	movf	(ufatGetU16@v),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(ufatGetU16@v),w
	addlw	01h
	movwf	fsr0l
	clrf fsr0h	
	
	movf	indf0,w
	movwf	(?_ufatGetU16+1)
	movf	indf1,w
	movwf	(?_ufatGetU16)
	line	51
	
l2466:	
	return
	opt stack 0
GLOBAL	__end_of_ufatGetU16
	__end_of_ufatGetU16:
;; =============== function _ufatGetU16 ends ============

	signat	_ufatGetU16,8314
	global	_sdCrc7
psect	text1590,local,class=CODE,delta=2
global __ptext1590
__ptext1590:

;; *************** function _sdCrc7 *****************
;; Defined at:
;;		line 55 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;  chr             1    wreg     PTR unsigned char 
;;		 -> sdPrvSendCmd@send(6), 
;;  cnt             1    2[COMMON] unsigned char 
;;  crc             1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  chr             1    5[COMMON] PTR unsigned char 
;;		 -> sdPrvSendCmd@send(6), 
;;  a               1    8[COMMON] unsigned char 
;;  i               1    7[COMMON] unsigned char 
;;  Data            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sdPrvSendCmd
;; This function uses a non-reentrant model
;;
psect	text1590
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	55
	global	__size_of_sdCrc7
	__size_of_sdCrc7	equ	__end_of_sdCrc7-_sdCrc7
	
_sdCrc7:	
	opt	stack 11
; Regs used in _sdCrc7: [wreg+fsr1l-status,0]
;sdCrc7@chr stored from wreg
	line	60
	movwf	(sdCrc7@chr)
	
l5769:	
;SD.c: 57: UInt8 i, a;
;SD.c: 58: UInt8 Data;
;SD.c: 60: for(a = 0; a < cnt; a++){
	clrf	(sdCrc7@a)
	goto	l5789
	line	62
	
l5771:	
;SD.c: 62: Data = chr[a];
	movf	(sdCrc7@a),w
	addwf	(sdCrc7@chr),w
	movwf	(??_sdCrc7+0)+0
	movf	0+(??_sdCrc7+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(sdCrc7@Data)
	line	64
	
l5773:	
;SD.c: 64: for(i = 0; i < 8; i++){
	clrf	(sdCrc7@i)
	
l2364:	
	line	66
;SD.c: 66: crc <<= 1;
	lslf	(sdCrc7@crc),f
	line	68
	
l5779:	
;SD.c: 68: if( (Data & 0x80) ^ (crc & 0x80) ) crc ^= 0x09;
	movlw	(080h)
	andwf	(sdCrc7@crc),w
	movwf	(??_sdCrc7+0)+0
	movf	(sdCrc7@Data),w
	andlw	080h
	xorwf	0+(??_sdCrc7+0)+0,w
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l5783
u3530:
	
l5781:	
	movlw	(09h)
	xorwf	(sdCrc7@crc),f
	line	70
	
l5783:	
;SD.c: 70: Data <<= 1;
	lslf	(sdCrc7@Data),f
	line	64
	
l5785:	
	incf	(sdCrc7@i),f
	movlw	(08h)
	subwf	(sdCrc7@i),w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l2364
u3540:
	line	60
	
l5787:	
	incf	(sdCrc7@a),f
	
l5789:	
	movf	(sdCrc7@cnt),w
	subwf	(sdCrc7@a),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l5771
u3550:
	line	74
	
l5791:	
;SD.c: 71: }
;SD.c: 72: }
;SD.c: 74: return crc & 0x7F;
	movf	(sdCrc7@crc),w
	andlw	07Fh
	line	75
	
l2368:	
	return
	opt stack 0
GLOBAL	__end_of_sdCrc7
	__end_of_sdCrc7:
;; =============== function _sdCrc7 ends ============

	signat	_sdCrc7,12409
	global	_sdSpiInit
psect	text1591,local,class=CODE,delta=2
global __ptext1591
__ptext1591:

;; *************** function _sdSpiInit *****************
;; Defined at:
;;		line 35 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/4
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sdInit
;; This function uses a non-reentrant model
;;
psect	text1591
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	35
	global	__size_of_sdSpiInit
	__size_of_sdSpiInit	equ	__end_of_sdSpiInit-_sdSpiInit
	
_sdSpiInit:	
	opt	stack 14
; Regs used in _sdSpiInit: [wreg]
	line	37
	
l4505:	
;SD.c: 37: SSP1ADD = 21;
	movlw	(015h)
	movlb 4	; select bank4
	movwf	(530)^0200h	;volatile
	line	38
;SD.c: 38: SSP1CON1 = 0b00101010;
	movlw	(02Ah)
	movwf	(533)^0200h	;volatile
	line	39
;SD.c: 39: SSP1STAT = 0b11000000;
	movlw	(0C0h)
	movwf	(532)^0200h	;volatile
	line	40
	
l2356:	
	return
	opt stack 0
GLOBAL	__end_of_sdSpiInit
	__end_of_sdSpiInit:
;; =============== function _sdSpiInit ends ============

	signat	_sdSpiInit,88
	global	_sdClockSpeed
psect	text1592,local,class=CODE,delta=2
global __ptext1592
__ptext1592:

;; *************** function _sdClockSpeed *****************
;; Defined at:
;;		line 20 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;  fast            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fast            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1B/4
;;		On exit  : 1F/4
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sdInit
;; This function uses a non-reentrant model
;;
psect	text1592
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	20
	global	__size_of_sdClockSpeed
	__size_of_sdClockSpeed	equ	__end_of_sdClockSpeed-_sdClockSpeed
	
_sdClockSpeed:	
	opt	stack 14
; Regs used in _sdClockSpeed: [wreg+status,2+status,0]
;sdClockSpeed@fast stored from wreg
	line	22
	movwf	(sdClockSpeed@fast)
	
l4499:	
;SD.c: 22: SSP1CON1 = (SSP1CON1 & 0b11110000) | (fast ? 0b0000 : 0b1010);
	movlw	0Ah
	movwf	(_sdClockSpeed$3322)
	clrf	(_sdClockSpeed$3322+1)
	movf	(sdClockSpeed@fast),w
	skipz
	goto	u1820
	goto	l4503
u1820:
	
l4501:	
	clrf	(_sdClockSpeed$3322)
	clrf	(_sdClockSpeed$3322+1)
	
l4503:	
	movlb 4	; select bank4
	movf	(533)^0200h,w
	andlw	0F0h
	iorwf	(_sdClockSpeed$3322),w
	movwf	(533)^0200h	;volatile
	line	23
	
l2347:	
	return
	opt stack 0
GLOBAL	__end_of_sdClockSpeed
	__end_of_sdClockSpeed:
;; =============== function _sdClockSpeed ends ============

	signat	_sdClockSpeed,4216
	global	_ufatOpen
psect	text1593,local,class=CODE,delta=2
global __ptext1593
__ptext1593:

;; *************** function _ufatOpen *****************
;; Defined at:
;;		line 139 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;  id              2    2[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1593
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	139
	global	__size_of_ufatOpen
	__size_of_ufatOpen	equ	__end_of_ufatOpen-_ufatOpen
	
_ufatOpen:	
	opt	stack 15
; Regs used in _ufatOpen: [wreg]
	line	141
	
l4475:	
;ufat.c: 141: curClus = id;
	movf	(ufatOpen@id+1),w
	movwf	(_curClus+1)^080h
	movf	(ufatOpen@id),w
	movwf	(_curClus)^080h
	line	142
;ufat.c: 142: return 1;
	movlw	(01h)
	line	143
	
l2505:	
	return
	opt stack 0
GLOBAL	__end_of_ufatOpen
	__end_of_ufatOpen:
;; =============== function _ufatOpen ends ============

	signat	_ufatOpen,4217
	global	_ufatInit
psect	text1594,local,class=CODE,delta=2
global __ptext1594
__ptext1594:

;; *************** function _ufatInit *****************
;; Defined at:
;;		line 59 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1E/1
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1594
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\ufat\ufat.c"
	line	59
	global	__size_of_ufatInit
	__size_of_ufatInit	equ	__end_of_ufatInit-_ufatInit
	
_ufatInit:	
	opt	stack 15
; Regs used in _ufatInit: []
	line	61
	
l4473:	
;ufat.c: 61: diskOffset = 0;
	movlb 0	; select bank0
	clrf	(_diskOffset)
	clrf	(_diskOffset+1)
	clrf	(_diskOffset+2)
	clrf	(_diskOffset+3)
	line	62
	
l2472:	
	return
	opt stack 0
GLOBAL	__end_of_ufatInit
	__end_of_ufatInit:
;; =============== function _ufatInit ends ============

	signat	_ufatInit,88
	global	_sdSpiByte
psect	text1595,local,class=CODE,delta=2
global __ptext1595
__ptext1595:

;; *************** function _sdSpiByte *****************
;; Defined at:
;;		line 28 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1A/0
;;		On exit  : 1F/4
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ufatExtRead
;;		_byte
;;		_hdrProcess
;;		_play
;;		_sdPrvSendCmd
;;		_sdPrvReadResp
;;		_sdPrvSimpleCommand
;;		_sdInit
;;		_sdReadStart
;;		_sdNextSec
;; This function uses a non-reentrant model
;;
psect	text1595
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\SD.c"
	line	28
	global	__size_of_sdSpiByte
	__size_of_sdSpiByte	equ	__end_of_sdSpiByte-_sdSpiByte
	
_sdSpiByte:	
	opt	stack 14
; Regs used in _sdSpiByte: [wreg]
;sdSpiByte@byte stored from wreg
	line	30
	movwf	(sdSpiByte@byte)
	
l5763:	
;SD.c: 30: SSP1BUF = byte;
	movf	(sdSpiByte@byte),w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	31
;SD.c: 31: while(!SSP1STATbits.BF);
	
l2350:	
	btfss	(532)^0200h,0	;volatile
	goto	u3521
	goto	u3520
u3521:
	goto	l2350
u3520:
	line	32
	
l5765:	
;SD.c: 32: return SSP1BUF;
	movf	(529)^0200h,w	;volatile
	line	33
	
l2353:	
	return
	opt stack 0
GLOBAL	__end_of_sdSpiByte
	__end_of_sdSpiByte:
;; =============== function _sdSpiByte ends ============

	signat	_sdSpiByte,4217
	global	_sleep
psect	text1596,local,class=CODE,delta=2
global __ptext1596
__ptext1596:

;; *************** function _sleep *****************
;; Defined at:
;;		line 163 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  ms              4    2[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  v               4    2[BANK0 ] unsigned long 
;;  i               1    6[BANK0 ] char 
;;  oldTris         1    1[BANK0 ] unsigned char 
;;  oldClkCfg       1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/1
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         0       7       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       7       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1596
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	163
	global	__size_of_sleep
	__size_of_sleep	equ	__end_of_sleep-_sleep
	
_sleep:	
	opt	stack 15
; Regs used in _sleep: [wreg+status,2+status,0]
	line	169
	
l4445:	
;main.c: 167: Int8 i;
;main.c: 168: UInt8 oldClkCfg, oldTris;
;main.c: 169: const UInt32 v_initializer = 1UL << 18;
;main.c: 170: UInt32 v = v_initializer;
	movlw	0
	movwf	(sleep@v+3)
	movlw	04h
	movwf	(sleep@v+2)
	movlw	0
	movwf	(sleep@v+1)
	movlw	0
	movwf	(sleep@v)

	line	172
;main.c: 172: oldClkCfg = OSCCON;
	movlb 1	; select bank1
	movf	(153)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(sleep@oldClkCfg)
	line	173
;main.c: 173: OSCCON = 0b00010011;
	movlw	(013h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	174
	
l4447:	
;main.c: 174: RA5 = 0;
	movlb 0	; select bank0
	bcf	(101/8),(101)&7
	line	175
;main.c: 175: oldTris = TRISA;
	movlb 1	; select bank1
	movf	(140)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(sleep@oldTris)
	line	176
;main.c: 176: TRISA = 0b11011110;
	movlw	(0DEh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	177
	
l4449:	
;main.c: 177: RA0 = 0;
	movlb 0	; select bank0
	bcf	(96/8),(96)&7
	line	179
;main.c: 179: for(i = 18; i >= 0; i--, v >>= 1){
	movlw	(012h)
	movwf	(sleep@i)
	goto	l1138
	line	181
	
l1139:	
# 181 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
    CLRWDT ;#
	line	183
# 183 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
# 182 ;#
psect	text1596
	line	185
	
l4455:	
;main.c: 185: WDTCON = (i << 1) | 1;
	setc
	rlf	(sleep@i),w
	movlb 1	; select bank1
	movwf	(151)^080h	;volatile
	line	186
;main.c: 186: ms -= v;
	movlb 0	; select bank0
	movf	(sleep@v),w
	subwf	(sleep@ms),f
	movf	(sleep@v+1),w
	subwfb	(sleep@ms+1),f
	movf	(sleep@v+2),w
	subwfb	(sleep@ms+2),f
	movf	(sleep@v+3),w
	subwfb	(sleep@ms+3),f
	
l4457:	
# 186 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
    SLEEP ;#
psect	text1596
	line	188
	
l4459:	
# 188 "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
# 187 ;#
psect	text1596
	line	190
	
l1138:	
	line	181
	movf	(sleep@v+3),w
	subwf	(sleep@ms+3),w
	skipz
	goto	u1785
	movf	(sleep@v+2),w
	subwf	(sleep@ms+2),w
	skipz
	goto	u1785
	movf	(sleep@v+1),w
	subwf	(sleep@ms+1),w
	skipz
	goto	u1785
	movf	(sleep@v),w
	subwf	(sleep@ms),w
u1785:
	skipnc
	goto	u1781
	goto	u1780
u1781:
	goto	l1139
u1780:
	line	179
	
l4461:	
	decf	(sleep@i),f
	lsrf	(sleep@v+3),f
	rrf	(sleep@v+2),f
	rrf	(sleep@v+1),f
	rrf	(sleep@v),f
	
l4463:	
	btfss	(sleep@i),7
	goto	u1791
	goto	u1790
u1791:
	goto	l1138
u1790:
	
l1137:	
	line	192
;main.c: 190: }
;main.c: 191: }
;main.c: 192: SWDTEN = 0;
	movlb 1	; select bank1
	bcf	(1208/8)^080h,(1208)&7
	line	194
	
l4465:	
;main.c: 194: TRISA = oldTris;
	movlb 0	; select bank0
	movf	(sleep@oldTris),w
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	195
;main.c: 195: OSCCON = oldClkCfg;
	movlb 0	; select bank0
	movf	(sleep@oldClkCfg),w
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	196
	
l1141:	
	return
	opt stack 0
GLOBAL	__end_of_sleep
	__end_of_sleep:
;; =============== function _sleep ends ============

	signat	_sleep,4216
	global	_audioOff
psect	text1597,local,class=CODE,delta=2
global __ptext1597
__ptext1597:

;; *************** function _audioOff *****************
;; Defined at:
;;		line 154 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_play
;; This function uses a non-reentrant model
;;
psect	text1597
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	154
	global	__size_of_audioOff
	__size_of_audioOff	equ	__end_of_audioOff-_audioOff
	
_audioOff:	
	opt	stack 14
; Regs used in _audioOff: [status,2]
	line	156
	
l4437:	
;main.c: 156: INTCONbits.TMR0IE = 0;
	bcf	(11),5	;volatile
	line	157
	
l4439:	
;main.c: 157: CCP1CON = 0;
	movlb 5	; select bank5
	clrf	(659)^0280h	;volatile
	line	158
	
l4441:	
;main.c: 158: TRISAbits.TRISA5 = 0;
	movlb 1	; select bank1
	bcf	(140)^080h,5	;volatile
	line	159
	
l4443:	
;main.c: 159: RA5 = 0;
	movlb 0	; select bank0
	bcf	(101/8),(101)&7
	line	160
	
l1131:	
	return
	opt stack 0
GLOBAL	__end_of_audioOff
	__end_of_audioOff:
;; =============== function _audioOff ends ============

	signat	_audioOff,88
	global	_audioOn
psect	text1598,local,class=CODE,delta=2
global __ptext1598
__ptext1598:

;; *************** function _audioOn *****************
;; Defined at:
;;		line 135 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_play
;; This function uses a non-reentrant model
;;
psect	text1598
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	135
	global	__size_of_audioOn
	__size_of_audioOn	equ	__end_of_audioOn-_audioOn
	
_audioOn:	
	opt	stack 14
; Regs used in _audioOn: [wreg+fsr1l-status,0]
	line	139
	
l4411:	
;main.c: 137: UInt8 i;
;main.c: 139: for(i = 0; i < 90; i++) gBuffer[i] = 0x80;
	clrf	(audioOn@i)
	
l4417:	
	movlw	(080h)
	movwf	(??_audioOn+0)+0
	movf	(audioOn@i),w
	addlw	low 8342
	movwf	(??_audioOn+1)+0
	movlw	high 8342
	skipnc
	movlw	high (8342)+1
	movwf	((??_audioOn+1)+0)+1
	movf	0+(??_audioOn+1)+0,w
	movwf	fsr1l
	movf	1+(??_audioOn+1)+0,w
	movwf	fsr1h
	movf	(??_audioOn+0)+0,w
	movwf	indf1
	
l4419:	
	incf	(audioOn@i),f
	
l4421:	
	movlw	(05Ah)
	subwf	(audioOn@i),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l4417
u1770:
	line	141
	
l4423:	
;main.c: 141: T2CON = 0b00000100;
	movlw	(04h)
	movwf	(28)	;volatile
	line	142
;main.c: 142: PR2 = 31;
	movlw	(01Fh)
	movwf	(27)	;volatile
	line	143
;main.c: 143: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movlb 5	; select bank5
	movwf	(659)^0280h	;volatile
	line	144
	
l4425:	
;main.c: 144: CCPR1H = 0;
	clrf	(658)^0280h	;volatile
	line	145
	
l4427:	
;main.c: 145: CCPR1L = 0;
	clrf	(657)^0280h	;volatile
	line	147
	
l4429:	
;main.c: 147: TRISAbits.TRISA5 = 0;
	movlb 1	; select bank1
	bcf	(140)^080h,5	;volatile
	line	149
	
l4431:	
;main.c: 149: TMR0 = 0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	150
	
l4433:	
;main.c: 150: INTCONbits.TMR0IF = 0;
	bcf	(11),2	;volatile
	line	151
	
l4435:	
;main.c: 151: INTCONbits.TMR0IE = 1;
	bsf	(11),5	;volatile
	line	152
	
l1128:	
	return
	opt stack 0
GLOBAL	__end_of_audioOn
	__end_of_audioOn:
;; =============== function _audioOn ends ============

	signat	_audioOn,88
	global	_eeWrite
psect	text1599,local,class=CODE,delta=2
global __ptext1599
__ptext1599:

;; *************** function _eeWrite *****************
;; Defined at:
;;		line 19 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1E/0
;;		On exit  : 1F/3
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rnd
;;		_log
;;		_secListWrite
;; This function uses a non-reentrant model
;;
psect	text1599
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	19
	global	__size_of_eeWrite
	__size_of_eeWrite	equ	__end_of_eeWrite-_eeWrite
	
_eeWrite:	
	opt	stack 12
; Regs used in _eeWrite: [wreg]
;eeWrite@addr stored from wreg
	line	21
	movwf	(eeWrite@addr)
	
l5755:	
;main.c: 21: EECON1= 0b00000100;
	movlw	(04h)
	movlb 3	; select bank3
	movwf	(405)^0180h	;volatile
	line	22
;main.c: 22: EEADRL = addr;
	movf	(eeWrite@addr),w
	movwf	(401)^0180h	;volatile
	line	23
;main.c: 23: EEDATL = data;
	movf	(eeWrite@data),w
	movwf	(403)^0180h	;volatile
	line	24
	
l5757:	
;main.c: 24: INTCONbits.GIE = 0;
	bcf	(11),7	;volatile
	line	25
;main.c: 25: EECON2 = 0x55;
	movlw	(055h)
	movwf	(406)^0180h	;volatile
	line	26
;main.c: 26: EECON2 = 0xAA;
	movlw	(0AAh)
	movwf	(406)^0180h	;volatile
	line	27
	
l5759:	
;main.c: 27: EECON1bits.WR = 1;
	bsf	(405)^0180h,1	;volatile
	line	28
	
l5761:	
;main.c: 28: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	29
;main.c: 29: while(EECON1bits.WR);
	
l1080:	
	btfsc	(405)^0180h,1	;volatile
	goto	u3511
	goto	u3510
u3511:
	goto	l1080
u3510:
	line	30
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_eeWrite
	__end_of_eeWrite:
;; =============== function _eeWrite ends ============

	signat	_eeWrite,8312
	global	_eeRead
psect	text1600,local,class=CODE,delta=2
global __ptext1600
__ptext1600:

;; *************** function _eeRead *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/3
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rnd
;;		_secListRead
;; This function uses a non-reentrant model
;;
psect	text1600
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	10
	global	__size_of_eeRead
	__size_of_eeRead	equ	__end_of_eeRead-_eeRead
	
_eeRead:	
	opt	stack 13
; Regs used in _eeRead: [wreg+status,2]
;eeRead@addr stored from wreg
	line	13
	movwf	(eeRead@addr)
	
l4393:	
;main.c: 13: EECON1 = 0b00000000;
	movlb 3	; select bank3
	clrf	(405)^0180h	;volatile
	line	14
	
l4395:	
;main.c: 14: EEADRL = addr;
	movf	(eeRead@addr),w
	movwf	(401)^0180h	;volatile
	line	15
	
l4397:	
;main.c: 15: EECON1bits.RD = 1;
	bsf	(405)^0180h,0	;volatile
	line	16
	
l4399:	
;main.c: 16: return EEDATL;
	movf	(403)^0180h,w	;volatile
	line	17
	
l1077:	
	return
	opt stack 0
GLOBAL	__end_of_eeRead
	__end_of_eeRead:
;; =============== function _eeRead ends ============

	signat	_eeRead,4217
	global	_isr
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:

;; *************** function _isr *****************
;; Defined at:
;;		line 511 in file "C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  v               1    1[COMMON] unsigned char 
;;  v1              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 1F/0
;;		Unchanged: FFFE0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry
	file	"C:\Program Files\Microchip\Project\SingleChipPlayer\main.c"
	line	511
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 8
; Regs used in _isr: [wreg+fsr1l-status,0]
psect	intentry
	pagesel	$
	line	516
	
i1l4479:	
;main.c: 514: UInt8 v, v1;
;main.c: 516: TMR0 = tmrReload;
	movf	(_tmrReload),w	;volatile
	movlb 0	; select bank0
	movwf	(21)	;volatile
	line	518
	
i1l4481:	
;main.c: 518: v = gBuffer[gRead++];
	movf	(_gRead),w
	addlw	low 8342
	movwf	fsr1l
	movlw	high 8342
	skipnc
	movlw	high (8342)+1
	movwf	(fsr1l)+1
	movf	indf1,w
	movwf	(isr@v)
	
i1l4483:	
	incf	(_gRead),f
	line	520
	
i1l4485:	
;main.c: 520: v1 = (0b00001100 & 0xCF) | ((v & 3) << 4);
	swapf	(isr@v),w
	andlw	03h shl 4
	iorlw	0Ch
	movwf	(isr@v1)
	line	521
	
i1l4487:	
;main.c: 521: v = v >> 2;
	lsrf	(isr@v),f
	lsrf	(isr@v),f
	line	522
	
i1l4489:	
;main.c: 522: CCPR1L = v;
	movf	(isr@v),w
	movlb 5	; select bank5
	movwf	(657)^0280h	;volatile
	line	523
	
i1l4491:	
;main.c: 523: CCP1CON = v1;
	movf	(isr@v1),w
	movwf	(659)^0280h	;volatile
	line	525
	
i1l4493:	
;main.c: 525: if(gRead == 90) gRead = 0;
	movlb 0	; select bank0
	movf	(_gRead),w
	xorlw	05Ah&0ffh
	skipz
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l4497
u181_20:
	
i1l4495:	
	clrf	(_gRead)
	line	527
	
i1l4497:	
;main.c: 527: INTCONbits.TMR0IF = 0;
	bcf	(11),2	;volatile
	line	529
	
i1l1296:	
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,88
psect	intentry
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
global __pbssBIGRAM
__pbssBIGRAM	equ	8342
	end
