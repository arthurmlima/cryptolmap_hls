#ifndef HEADER_H
#define HEADER_H

#include<stdint.h>
#include<stdio.h>
#include<hls_stream.h>
#include<ap_axi_sdata.h>
typedef uint32_t tb_outStream;

typedef ap_axis<64,1,1,1> tb_in_data_axis;
typedef hls::stream<tb_in_data_axis> tb_in_stream;

typedef hls::axis<tb_outStream, 1, 1, 1> tb_out_data_axis;
typedef hls::stream<tb_out_data_axis> tb_out_stream;


#define tbdt 10

#define tbHEIGHT  512
#define tbWIDTH   512

#define tbBSIZE tbWIDTH*tbHEIGHT

#define tbsize_sb tbBSIZE/1
#define tbsize_sw tbBSIZE/4
#define tbsize_dw tbBSIZE/8

#define tbNORM_1 1.0
#define tbNORM_2 2.0


#endif
