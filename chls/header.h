#ifndef HEADER_H
#define HEADER_H

#include<stdint.h>
#include<stdio.h>
#include<hls_math.h>
#include<hls_stream.h>
#include<ap_axi_sdata.h>

#define tbdt 10

#define tbHEIGHT  512
#define tbWIDTH   512

#define tbBSIZE tbWIDTH*tbHEIGHT

#define tbsize_sb tbBSIZE/1
#define tbsize_sw tbBSIZE/4
#define tbsize_dw tbBSIZE/8

#define tbNORM_1 1.0
#define tbNORM_2 2.0

#define tbMOD hls::modf
#define tbABS hls::fabs
#define tbPOW hls::powf


#endif
