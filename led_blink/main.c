#include<avr/io.h>
#include<util/delay.h>

#define F_CPU 8000000UL 

void main(void)
{
	DDRB |= 1 << PINB0; // Port B Pin 0 is set as output using the data direction register
	

	while(1)
	{
		PORTB |= 1 << PINB0; // Port B Pin 0 is set HIGH using the PORT register
		_delay_ms(100);
		PORTB ^= 1 << PINB0; // Port B Pin 0 is set LOW using the PORT register
		_delay_ms(100);
	}
}
