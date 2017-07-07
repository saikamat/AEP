#pragma line 1 "/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/bram_interface/core.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/ubuntu-admin/SharedFolder/EIT_Studies/TUB_Docs/Sem2/EmbProj/GitHub/AEP/HLS/bram_interface/core.cpp"
#pragma empty_line
#pragma empty_line
void zhan_suen(int input[100], int result[100], int y) {
#pragma HLS INTERFACE bram port=result
#pragma HLS INTERFACE bram port=input
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=y bundle=CRTL_BUS
#pragma empty_line
 for(int i = 0 ; i < 100 ; i++) {
  result[i] = input[i] * y;
 }
#pragma empty_line
#pragma empty_line
}
