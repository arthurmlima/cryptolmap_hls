#include"header.h"
#include"image.h"
#include"stdio.h"


extern void top_module(
		   tb_in_stream &tb_input_stream,
		   tb_out_stream &tb_output_stream,
		   int u_dt,
		   int u_diff,
		   float &m_perm);


int main()
{

tb_in_stream A;
tb_out_stream B;
tb_in_data_axis tmp1;

uint64_t *ptr_img = (uint64_t *)imagem;

for(int j=0;j<tbsize_dw;j++){
  tmp1.data = ptr_img[j];
  tmp1.last = (j == (tbsize_dw - 1)) ? 1 : 0;
  A.write(tmp1);
}
float k=0;
top_module(A,B,10,256,k);

while(k==0){;;}
std::printf("\n%f\n",k);


   
//printf("the resulted sha256:\n");
tb_out_data_axis pack = B.read();
while(!pack.last)
{
  tb_outStream chunk2 = pack.data;
	  std::printf("%.3d\n", chunk2);
  pack = B.read();
}

std::printf("\n");
return 0;

}
 
