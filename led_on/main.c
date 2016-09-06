#include<avr/io.h>

void main(void)
{
	DDRB = 0b00000001; // Port B Pin 0 is set as output using the data direction register
	PORTB = 0b00000001; // Port B Pin 0 is set HIGH using the PORT register

	while(1)
	{
	
	}
}
