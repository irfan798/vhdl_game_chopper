/*
 * author: Furkan Cayci
 * description: Object buffer Demo
 *
 * Three objects.
 * One stationary wall between 60-65
 * 8x8 ball object
 * 8x48 box object
 *
 * objectbuffer.c
 */

#include <stdio.h>
#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "objectbuffer.h"

int main()
{
	int status;
	XGpio btn;

	init_platform();

	print("Initializing Buttons & Switches\n");
	status = XGpio_Initialize(&btn, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS) { return XST_FAILURE; }
	// set the direction to input
	XGpio_SetDataDirection(&btn, 1, 0xFF); // Channel 1

	// Create a pointer to the base of the starting address of the buffer
	volatile uint32_t *objs = (volatile uint32_t*)(XPAR_OBJECTBUFFER_0_S00_AXI_BASEADDR);

	print("Starting...\n\r");

	uint8_t xdir = 0;
	uint16_t obj1x, obj1y = 0;
	uint16_t obj2x, obj2y = 0;
	uint32_t background = 0xFFFFF00; // Start with yellow

	// box location
	obj1x = 1000;
	obj1y = 336;

	// ball location
	obj2x = 50;
	obj2y = 356;

	// Update objects
	objs[0] = background;
	objs[1] = (obj1x << 16 | obj1y);
	objs[2] = (obj2x << 16 | obj2y);

	print("Hello World\n\r");
	while(1) {

		// Read buttons and update box location
		u32 b = XGpio_DiscreteRead(&btn, 1);
		if (1 == b) {
			if (720-50 > obj1y) obj1y +=1;
		}
		else if ( 2 == b) {
			if (0 < obj1y) obj1y -=1;
		}

		// change background
		if (8 == b) { background += 16; }

		// calculate new ball location
		obj2x = (0 == xdir) ? obj2x+1 : obj2x-1;

		if (992 < obj2x) xdir = 1;
		else if (65 > obj2x) xdir = 0;

		// update objects
		objs[0] = background;
		objs[1] = (obj1x << 16 | obj1y);
		objs[2] = (obj2x << 16 | obj2y);

		// wait aimlessly..
		for(int i=0; i<200000;i++);
	}

	cleanup_platform();
	return 0;
}
