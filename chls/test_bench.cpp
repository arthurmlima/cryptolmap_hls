#include<stdio.h>
#include"image.h"
#include"header.h"
#include"top_module.hpp"
#include"sub_modules.hpp"
using namespace std;

int main()
{

in_stream A;
out_stream B;

in_data_axis tmp1;

uint64_t *ptr_img = (uint64_t *)imagem;

for(int j=0;j<tbsize_dw;j++){
  tmp1.data = ptr_img[j];
  tmp1.last = (j == (tbsize_dw - 1)) ? 1 : 0;
  A.write(tmp1);
}

top_module(A,B,256,256,10);
   
//printf("the resulted sha256:\n");
out_data_axis pack = B.read();
while(!pack.last)
{
  outStream chunk2 = pack.data;
	  printf("%f    **    %.3d\n", chunk2.perm_map.f, chunk2.diff_map.i);
  pack = B.read();
}

printf("\n");
return 0;

}
 
