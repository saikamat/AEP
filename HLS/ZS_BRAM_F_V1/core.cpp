
#define ROWS 42
#define COLS 50

int zs_func(int ImgIn[ROWS*COLS]) {

#pragma HLS INTERFACE bram port=ImgIn
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS


#pragma HLS RESOURCE variable=ImgIn core=RAM_1P_BRAM
#pragma HLS RESOURCE variable=ImgOut core=RAM_1P_BRAM



	int count = 0;

	for (int i=1;i<ROWS;i++)
	{
		for(int j=0;j<COLS;j++)
		{
			unsigned char  m1;
			unsigned char  m2;
			unsigned char x,y;

			unsigned char p0 = ImgIn[(i-1)*COLS+(j-1)] ? 1 : 0 ;
			unsigned char p1 = ImgIn[(i-1)*COLS+(j)] ? 1 : 0 ;
			unsigned char p2 = ImgIn[(i-1)*COLS+(j+1)] ? 1 : 0 ;
			unsigned char p3 = ImgIn[(i)*COLS+(j-1)] ? 1 : 0 ;
			unsigned char p4 = ImgIn[(i)*COLS+(j)] ? 1 : 0 ;
			unsigned char p5 = ImgIn[(i)*COLS+(j+1)] ? 1 : 0 ;
			unsigned char p6 = ImgIn[(i+1)*COLS+(j-1)] ? 1 : 0 ;
			unsigned char p7 = ImgIn[(i+1)*COLS+(j)] ? 1 : 0 ;
			unsigned char p8 = ImgIn[(i+1)*COLS+(j+1)] ? 1 : 0 ;

			unsigned char  A=(!p1 && p2) + (!p2 && p5) +(!p5 && p8) + (!p8 && p7) + (!p7 && p6) + (!p6 && p3) + (!p3 && p0) + (!p0 && p1);
			unsigned char  B=p1+p2+p5+p8+p7+p6+p3+p0;

			m1= p1*p5*p7;
			m2=p5*p7*p3;
			x=(A == 1 && (B >= 2 && B <= 6) && !m1 && !m2);

			m1=p1*p5*p3;
			m2=p1*p7*p3;
			y=(A == 1 && (B >= 2 && B <= 6) && !m1 && !m2);

			int outVal = (x || y);

			if (outVal && ImgIn[i*COLS+j] == 255){
				count++;
				ImgIn[i*COLS+j] = 100;
			}

		}
	}

	for (int k = 0 ; k < ROWS ; k++ )
	{
		for(int l = 0 ; l < COLS ; l++ )
		{
			ImgIn[k*COLS+l]=(ImgIn[k*COLS+l]<128)?0:255;
		}
	}

	return count;
}
