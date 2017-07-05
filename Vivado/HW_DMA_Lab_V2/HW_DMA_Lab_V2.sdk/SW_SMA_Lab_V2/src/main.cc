/*
 * Empty C++ Application
 */

#include <xparameters.h>
#include <xdogain.h>
#include <xaxidma.h>
#include <stdio.h>
#include "platform.h"
#include "Image_File.h"

XDogain doGain;
XDogain_Config *doGain_cfg;
XAxiDma axiDMA;
XAxiDma_Config* axiDMA_cfg;

//Addresses
#define BASE_ADDR 	0x01000000
#define TX_BUF_ADDR (0x10100000)
#define RX_BUF_ADDR (0x10300000)

//
//#define ARRAY_SIZE 100
//int inStreamData[ARRAY_SIZE];

void initPeripherals() {

	doGain_cfg = XDogain_LookupConfig(XPAR_DOGAIN_0_DEVICE_ID);
	if(doGain_cfg) {
		int status  = XDogain_CfgInitialize(&doGain,doGain_cfg);
		if(status != XST_SUCCESS) {
			printf(" Error Initilalizing XDogain_CfgInitialize");
		}
	}

	axiDMA_cfg = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if(axiDMA_cfg) {
		int status = XAxiDma_CfgInitialize(&axiDMA,axiDMA_cfg);
		if(status != XST_SUCCESS) {
			printf(" Error Initilalizing XAxiDma_CfgInitialize");
		}
	}

	XAxiDma_IntrDisable(&axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axiDMA, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

}

int main()
{
	// default initialization required to be called
	init_platform();

	int *m_dma_buf_tx = (int*) TX_BUF_ADDR;
	int *m_dma_buf_rx = (int*) RX_BUF_ADDR;

//	for(int i = 0;i < ARRAY_SIZE; i++) {
//		inStreamData[i] = i;
//	}


	initPeripherals();

	while(true) {
		int gain = 1;
		printf(" choose gain to \n");
//		scanf("%d",&gain);

		XDogain_Set_gain(&doGain,gain);
		XDogain_Start(&doGain);

		//Flush cache of buffer
		Xil_DCacheFlushRange((u32)inStreamData, ARRAY_SIZE*sizeof(int));
		Xil_DCacheFlushRange((u32)m_dma_buf_rx, ARRAY_SIZE*sizeof(int));

		printf("Sending data to Slave IP core \n");
		XAxiDma_SimpleTransfer(&axiDMA,(u32)inStreamData,ARRAY_SIZE*sizeof(int),XAXIDMA_DMA_TO_DEVICE);

		printf("Get data \n");
		XAxiDma_SimpleTransfer(&axiDMA,(u32)m_dma_buf_rx,ARRAY_SIZE*sizeof(int),XAXIDMA_DEVICE_TO_DMA);

		printf("Waiting for DMA to be free \n");
		while(XAxiDma_Busy(&axiDMA,XAXIDMA_DEVICE_TO_DMA));

		printf("Flushing data from Cache \n");
		Xil_DCacheInvalidateRange((u32)m_dma_buf_rx,ARRAY_SIZE*sizeof(int));

		printf("waiting for isDone \n");
		while(!XDogain_IsDone(&doGain));
		printf("Calculation complete \n");




		for(int i = 0;i < ARRAY_SIZE; i++) {
			printf(" received val %d = %d \n",i,m_dma_buf_rx[i]);
		}



	}

	return 0;
}
