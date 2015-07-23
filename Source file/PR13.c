//==========================================================================
//	Author				:	Cytron Technologies
//	Project				:	Smoke Detector V1.1
//	Project description         :	Use a smoke detector to detect smoke and send
//						    its status to microcontoller to do output, blink
//						    led and sound buzzer. A PIC16F876A is use in this project.
//                          This sample source code should be compiled with HI-TECH C Compiler and XC8 with MPLABX
//                          and using HI-TECH compiler with MPLAB
//  
//==========================================================================

//==========================================================================
//	include all necessary header file
//==========================================================================
#if defined(__XC8)
   #include <xc.h>
   #pragma config CONFIG = 0x3F32
#else
#include <htc.h>			//include the PIC microchip header file

//===========================================================================
// 	configuration
//============================================================================
__CONFIG (0x3F32);
//FOSC = HS        // Oscillator Selection bits (HS oscillator)
//WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
//PWRTE = ON       // Power-up Timer Enable bit (PWRT enabled)
//BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
//LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
//CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
//WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
//CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)



#endif
//==========================================================================
//	define label for IO
//==========================================================================
#define	BUZZER		RC0		//active high, connected to RC0
#define	BUTTON1		RB0		//active low, connected to RB0
#define	BUTTON2		RB1		//active low, connected to RB1
#define	BUTTON3		RB2		//active low, connected to RB2
#define	LED1		RC1		//active high, connected to RC1
#define	LED2		RC2		//active high, connected to RC2
#define	LED3		RC3		//active high, connected to RC3
#define	ALARM		RA0		//active high, connected to RA1, is input to PIC

//==========================================================================
//	function prototype
//==========================================================================
void delay(unsigned long data);		//delay function prototype

//==========================================================================
//	main function
//==========================================================================
void main(void)
{
	//declare and initialize variable
	unsigned char mode=0;			//declare a variable
	
	//set I/O input output
	TRISB = 0b11111111;			//set PORTB I/O direction
	TRISC = 0b00000000;			//set PORTC I/O direction
	TRISA = 0b11111111;			//set PORTA I/O direction
	
	//set ADC pin to digital I/O
	ADCON1 = 0b00000110;
						
	//initial condition
	BUZZER=0;				//off buzzer
	mode=0;					//set to mode 0
	LED1=0;					//off led 1
	LED2=0;					//off led 2
	LED3=0;					//off led 3
	
	//infinite loop
	while(1)
	{
		if(BUTTON1==0)		//if button 1 pressed, mode 1 activated
		{
			mode=1;			//set current mode to mode 1
			LED1=1;			//on led 1
			LED2=0;			//off led 2
			LED3=0;			//off led 3
		}
		else if(BUTTON2==0)	//if button 2 pressed, mode 2 activated
		{
			mode=2;			//set current mode to mode 2
			LED1=0;			//off led 1
			LED2=1;			//on led 2
			LED3=0;			//off led 2
		}
		else if(BUTTON3==0)	//if button 3 pressed, mode 3 activated
		{
			mode=3;			//set current mode to mode 3
			LED1=0;			//off led 1
			LED2=0;			//off led 2
			LED3=1;			//on led 3
		}
		
		if(ALARM)				//if alarm on (smoke detector send alarm to PIC)
		{
			if(mode==1)			//mode 1, blink 3 led
			{
				while(1)		//infinite loop
				{
					LED1=1;			//on led 1
					LED2=1;			//on led 2
					LED3=1;			//on led 3
					delay(50000);	//delay for about 370ms
					LED2=0;			//off led 1
					LED2=0;			//off led 2
					LED3=0;			//off led 3
					delay(50000);	//delay for about 370ms
				}
			}
			else if(mode==2)		//mode 2, sound buzzer without led
			{
				while(1)			//infinite loop
				{
					BUZZER=1;		//on buzzer
					delay(50000);	//delay
					BUZZER=0;		//off buzzer
					delay(50000);	//delay
				}
			}
			else if(mode==3)		//mode 3, sound buzzer and blink led
			{
				while(1)			//infinite loop	
				{
					LED1=1;			//on led 1
					LED2=1;			//on led 2
					LED3=1;			//on led 3
					BUZZER=1;		//on buzzer
					delay(50000);	//delay for about 370ms
					LED1=0;			//off led 1
					LED2=0;			//off led 2
					LED3=0;			//off led 3
					BUZZER=0;		//off buzzer
					delay(50000);	//delay for about 370ms
				}
			}
		}
	}	
}

//==========================================================================
//	functions
//==========================================================================

void delay(unsigned long data)		//delay function
{
	for( ;data>0;data-=1);		//the delay lenght depend
}					//on the value feed to the function
