

void zhan_suen(int input[100], int result[100], int y) {
#pragma HLS INTERFACE bram port=result
#pragma HLS INTERFACE bram port=input
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=y bundle=CRTL_BUS

	for(int i = 0 ; i < 100 ; i++) {
		result[i] = input[i] * y;
	}


}
