#!/bin/bash
#Script to make a hex file

avrdude -c usbasp-clone -pm328p
read -p "Press SPACE & ENTER to continue ...." FLAG
if [ $FLAG==' ' ]
then
	avr-gcc -g -Os -mmcu=atmega328p -c *.c
	avr-gcc -g -mmcu=atmega328p -o flash.elf *.o
	avr-objcopy -j .text -j .data -O ihex flash.elf flash.hex
fi
