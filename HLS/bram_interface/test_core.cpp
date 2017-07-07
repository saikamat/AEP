#include <stdio.h>

void zhan_suen(int input[100], int result[100], int y);

int main() {

	int inp[100];
	int res[100];

	for (int i = 0 ; i < 100 ; i ++) {
		inp[i] = i;
	}


	zhan_suen(inp,res,5);

	for (int i = 0 ; i < 100 ; i ++) {
			printf(" result[%d] = %d \n",i,res[i]);
		}

	return 0;
}
