#include <hls_stream.h>
#include <ap_axi_sdata.h>

typedef ap_axis<32,2,5,6> intSdCh;

void psfunc(hls::stream<intSdCh> &inStream,hls::stream<intSdCh> &outStream,int interrupt) {
#pragma HLS INTERFACE axis port=outStream
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE s_axilite port=interrupt bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS

intSdCh pixel[9];
intSdCh opresult;

// I am taking input here
/*
 * pixel[0]=P9;
 * pixel[1]=P2;
 * pixel[2]=P3;
 * pixel[3]=P8;
 * pixel[4]=P1;
 * pixel[5]=P4;
 * pixel[6]=P7;
 * pixel[7]=P6;
 * pixel[8]=P5;
 */
for (int i=0;i<9;i++)
{
#pragma HLS PIPELINE
	pixel[i]=inStream.read();
	if(pixel[i].data>0)
		pixel[i].data=1;
	else pixel[i].data=0;
}

// Configure the opresult variable
opresult.keep =pixel[0].keep;
opresult.strb =pixel[0].strb;
opresult.user =pixel[0].user;
opresult.last =pixel[0].last;
opresult.id =  pixel[0].id;
opresult.dest =pixel[0].dest;

//Do calculations
unsigned char  A=(!pixel[1].data && pixel[2].data) + (!pixel[2].data && pixel[5].data) +(!pixel[5].data && pixel[8].data) + (!pixel[8].data && pixel[7].data) + (!pixel[7].data && pixel[6].data) + (!pixel[6].data && pixel[3].data) + (!pixel[3].data && pixel[0].data) + (!pixel[0].data && pixel[1].data);
unsigned char  B=pixel[1].data+pixel[2].data+pixel[5].data+pixel[8].data+pixel[7].data+pixel[6].data+pixel[3].data+pixel[0].data;
unsigned char  m1=pixel[1].data*pixel[5].data*pixel[7].data;
unsigned char  m2=pixel[5].data*pixel[7].data*pixel[3].data;
opresult.data=(A == 1 && (B >= 2 && B <= 6) && !m1 && !m2);
outStream.write(opresult);
}
