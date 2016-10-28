#!/bin/bash
#Script to make a hex file
#This script considers that the programmer you are using in an USBASP clone(fakes,not the official one) and an Atmega 328p mcu.
# -c option specifies the programmer
# -p option specifies the microcontroller
avrdude -c usbasp-clone -pm328p
read -p "Press SPACE & ENTER to continue ...." FLAG
if [ $FLAG==' ' ]
then
	avr-gcc -g -Os -mmcu=atmega328p -c *.c
	avr-gcc -g -mmcu=atmega328p -o flash.elf *.o
	avr-objcopy -j .text -j .data -O ihex flash.elf flash.hex
fi
