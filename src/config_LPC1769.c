
#include "config_LPC1769.h"

void init(void) {
	(*((volatile unsigned long *) 0x2009C000)) |= 0b11<<21;
	(*((volatile unsigned long *) 0x2009C040)) |= 0b111<<10;
	(*((volatile unsigned long *) 0x2009C01C)) = 0b11<<21;
	(*((volatile unsigned long *) 0x2009C05C)) = 0b111<<10;
	(*((volatile unsigned long *) 0x2009C000)) |= 0xFF<<4;
	(*((volatile unsigned long *) 0x2009C01C)) = 0xFF<<4;
	(*((volatile unsigned long *) 0x2009C018)) = 0b1<<21;
	(*((volatile unsigned long *) 0x2009C01C)) = 0xFF<<4;
	(*((volatile unsigned long *) 0x2009C01C)) = 0b11<<21;
}
