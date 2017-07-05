int psfunc(unsigned char* skeldata,int row,int col,int cols)
{
	int p2 = skeldata[(row-1)*cols +col];
	int p3 = skeldata[(row-1)*cols +col+1];
	int p4 = skeldata[row     * cols + col+1];
	int p5 = skeldata[(row+1) * cols + col+1];
	int p6 = skeldata[(row+1) * cols + col];
	int p7 = skeldata[(row+1) * cols + col-1];
	int p8 = skeldata[row     * cols + col-1];
	int p9 = skeldata[(row-1) * cols + col-1];

	int A  = (!p2 && p3) + (!p3 && p4) +(!p4 && p5) + (!p5 && p6) +(!p6 && p7) + (!p7 && p8) +(!p8 && p9) + (!p9 && p2);
	int B  = p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9;
	int m1 = (p2 * p4 * p6);
	int m2 = (p4 * p6 * p8);

    return ( (A==1) &  ((B >= 2) & ( B <= 6 ) )& (!m1 & !m2));

//    return ( (A==1) && ( (B >= 0x02) && ( B <= 0x06 ) )& (!m1 && !m2));

//	return 0;
}
