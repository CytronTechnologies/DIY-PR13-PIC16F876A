opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F876A
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
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 19 "C:\Users\Phang\Desktop\9.80\PR 13\PR13.c"
	psect config,class=CONFIG,delta=2 ;#
# 19 "C:\Users\Phang\Desktop\9.80\PR 13\PR13.c"
	dw 0x3F32 ;#
	FNCALL	_main,_delay
	FNROOT	_main
	global	_RA0
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_RA0	set	40
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	file	"PR 13.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
	global	main@mode
main@mode:	; 1 bytes @ 0x9
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0      75
;;                                              8 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                8     4      4      30
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 53 in file "C:\Users\Phang\Desktop\9.80\PR 13\PR13.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mode            1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 13\PR13.c"
	line	53
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1686:	
;PR13.c: 55: unsigned char mode=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@mode)
	line	58
	
l1688:	
;PR13.c: 58: TRISB = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	59
	
l1690:	
;PR13.c: 59: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	60
	
l1692:	
;PR13.c: 60: TRISA = 0b11111111;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	63
	
l1694:	
;PR13.c: 63: ADCON1 = 0b00000110;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	66
	
l1696:	
;PR13.c: 66: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	67
	
l1698:	
;PR13.c: 67: mode=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@mode)
	line	68
	
l1700:	
;PR13.c: 68: RC1=0;
	bcf	(57/8),(57)&7
	line	69
	
l1702:	
;PR13.c: 69: RC2=0;
	bcf	(58/8),(58)&7
	line	70
	
l1704:	
;PR13.c: 70: RC3=0;
	bcf	(59/8),(59)&7
	goto	l1706
	line	73
;PR13.c: 73: while(1)
	
l497:	
	line	75
	
l1706:	
;PR13.c: 74: {
;PR13.c: 75: if(RB0==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l498
u2170:
	line	77
	
l1708:	
;PR13.c: 76: {
;PR13.c: 77: mode=1;
	clrf	(main@mode)
	bsf	status,0
	rlf	(main@mode),f
	line	78
	
l1710:	
;PR13.c: 78: RC1=1;
	bsf	(57/8),(57)&7
	line	79
	
l1712:	
;PR13.c: 79: RC2=0;
	bcf	(58/8),(58)&7
	line	80
	
l1714:	
;PR13.c: 80: RC3=0;
	bcf	(59/8),(59)&7
	line	81
;PR13.c: 81: }
	goto	l1732
	line	82
	
l498:	
;PR13.c: 82: else if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l500
u2180:
	line	84
	
l1716:	
;PR13.c: 83: {
;PR13.c: 84: mode=2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@mode)
	line	85
	
l1718:	
;PR13.c: 85: RC1=0;
	bcf	(57/8),(57)&7
	line	86
	
l1720:	
;PR13.c: 86: RC2=1;
	bsf	(58/8),(58)&7
	line	87
	
l1722:	
;PR13.c: 87: RC3=0;
	bcf	(59/8),(59)&7
	line	88
;PR13.c: 88: }
	goto	l1732
	line	89
	
l500:	
;PR13.c: 89: else if(RB2==0)
	btfsc	(50/8),(50)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1732
u2190:
	line	91
	
l1724:	
;PR13.c: 90: {
;PR13.c: 91: mode=3;
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@mode)
	line	92
	
l1726:	
;PR13.c: 92: RC1=0;
	bcf	(57/8),(57)&7
	line	93
	
l1728:	
;PR13.c: 93: RC2=0;
	bcf	(58/8),(58)&7
	line	94
	
l1730:	
;PR13.c: 94: RC3=1;
	bsf	(59/8),(59)&7
	goto	l1732
	line	95
	
l502:	
	goto	l1732
	line	97
	
l501:	
	goto	l1732
	
l499:	
	
l1732:	
;PR13.c: 95: }
;PR13.c: 97: if(RA0)
	btfss	(40/8),(40)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l1706
u2200:
	line	99
	
l1734:	
;PR13.c: 98: {
;PR13.c: 99: if(mode==1)
	movf	(main@mode),w
	xorlw	01h
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l1744
u2210:
	line	101
;PR13.c: 100: {
;PR13.c: 101: while(1)
	
l505:	
	line	103
;PR13.c: 102: {
;PR13.c: 103: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	104
;PR13.c: 104: RC2=1;
	bsf	(58/8),(58)&7
	line	105
;PR13.c: 105: RC3=1;
	bsf	(59/8),(59)&7
	line	106
	
l1736:	
;PR13.c: 106: delay(50000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0C3h
	movwf	(?_delay+1)
	movlw	050h
	movwf	(?_delay)

	fcall	_delay
	line	107
	
l1738:	
;PR13.c: 107: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	108
	
l1740:	
;PR13.c: 108: RC2=0;
	bcf	(58/8),(58)&7
	line	109
	
l1742:	
;PR13.c: 109: RC3=0;
	bcf	(59/8),(59)&7
	line	110
;PR13.c: 110: delay(50000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0C3h
	movwf	(?_delay+1)
	movlw	050h
	movwf	(?_delay)

	fcall	_delay
	goto	l505
	line	111
	
l506:	
	line	101
	goto	l505
	
l507:	
	line	112
;PR13.c: 111: }
;PR13.c: 112: }
	goto	l1706
	line	113
	
l504:	
	
l1744:	
;PR13.c: 113: else if(mode==2)
	movf	(main@mode),w
	xorlw	02h
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l1750
u2220:
	line	115
;PR13.c: 114: {
;PR13.c: 115: while(1)
	
l510:	
	line	117
;PR13.c: 116: {
;PR13.c: 117: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	118
	
l1746:	
;PR13.c: 118: delay(50000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0C3h
	movwf	(?_delay+1)
	movlw	050h
	movwf	(?_delay)

	fcall	_delay
	line	119
	
l1748:	
;PR13.c: 119: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	120
;PR13.c: 120: delay(50000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0C3h
	movwf	(?_delay+1)
	movlw	050h
	movwf	(?_delay)

	fcall	_delay
	goto	l510
	line	121
	
l511:	
	line	115
	goto	l510
	
l512:	
	line	122
;PR13.c: 121: }
;PR13.c: 122: }
	goto	l1706
	line	123
	
l509:	
	
l1750:	
;PR13.c: 123: else if(mode==3)
	movf	(main@mode),w
	xorlw	03h
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l1706
u2230:
	line	125
;PR13.c: 124: {
;PR13.c: 125: while(1)
	
l515:	
	line	127
;PR13.c: 126: {
;PR13.c: 127: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	128
;PR13.c: 128: RC2=1;
	bsf	(58/8),(58)&7
	line	129
;PR13.c: 129: RC3=1;
	bsf	(59/8),(59)&7
	line	130
;PR13.c: 130: RC0=1;
	bsf	(56/8),(56)&7
	line	131
	
l1752:	
;PR13.c: 131: delay(50000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0C3h
	movwf	(?_delay+1)
	movlw	050h
	movwf	(?_delay)

	fcall	_delay
	line	132
	
l1754:	
;PR13.c: 132: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	133
	
l1756:	
;PR13.c: 133: RC2=0;
	bcf	(58/8),(58)&7
	line	134
	
l1758:	
;PR13.c: 134: RC3=0;
	bcf	(59/8),(59)&7
	line	135
	
l1760:	
;PR13.c: 135: RC0=0;
	bcf	(56/8),(56)&7
	line	136
;PR13.c: 136: delay(50000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0C3h
	movwf	(?_delay+1)
	movlw	050h
	movwf	(?_delay)

	fcall	_delay
	goto	l515
	line	137
	
l516:	
	line	125
	goto	l515
	
l517:	
	goto	l1706
	line	138
	
l514:	
	goto	l1706
	line	139
	
l513:	
	goto	l1706
	
l508:	
	goto	l1706
	
l503:	
	goto	l1706
	line	140
	
l518:	
	line	73
	goto	l1706
	
l519:	
	line	141
	
l520:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function _delay *****************
;; Defined at:
;;		line 148 in file "C:\Users\Phang\Desktop\9.80\PR 13\PR13.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text55
	file	"C:\Users\Phang\Desktop\9.80\PR 13\PR13.c"
	line	148
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	149
	
l894:	
;PR13.c: 149: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l898
u10:
	goto	l525
	
l896:	
	goto	l525
	
l523:	
	
l898:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u25
	goto	u26
u25:
	subwf	(delay@data+1),f
u26:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u27
	goto	u28
u27:
	subwf	(delay@data+2),f
u28:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u29
	goto	u20
u29:
	subwf	(delay@data+3),f
u20:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l898
u30:
	goto	l525
	
l524:	
	line	150
	
l525:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
