/*
 * Empty C++ Application
 */
#include <stdio.h>
#include <xparameters.h>
#include "platform.h"
#include <xzhan_suen.h>


// Pointers to BRAM
int* inputVal = (int*)0x40000000;
int* outputVal = (int*)0x42000000;

XZhan_suen zhansuen;
XZhan_suen_Config* zhansuen_cfg;

void initPeripherals() {

	zhansuen_cfg = XZhan_suen_LookupConfig(XPAR_ZHAN_SUEN_0_DEVICE_ID);

	if(zhansuen_cfg) {
		int status  = XZhan_suen_CfgInitialize(&zhansuen,zhansuen_cfg);
		if(status != XST_SUCCESS) {
			printf(" Error Initilalizing XZhan_suen_CfgInitialize");
		}
	}
}

int main()
{
	printf(" Initializing Platform");

	// default initialization required to be called
	init_platform();

	printf(" Initializing peripherals");
	// Initialize custom IP
	initPeripherals();


	for (int i = 0 ; i < 100 ; i ++) {
		inputVal[i] = i;
	}

	printf(" Starting IP block");

	while (true) {
	// IP related functions
	XZhan_suen_Set_y(&zhansuen,5);
	XZhan_suen_Start(&zhansuen);

	printf(" started operation of IP");

	while(!XZhan_suen_IsDone(&zhansuen));

	printf(" results received from IP");

	for (int i = 0 ; i < 100 ; i ++) {

		printf(" outputVal [%d] = %d",i,outputVal[i]);
	}

	}

	return 0;
}
