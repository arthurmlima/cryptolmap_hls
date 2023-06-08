#ifndef SUB_MODULES_HPP
#define SUB_MODULES_HPP

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <ap_int.h>

#include "xf_security/sha224_256.hpp"
#include"sub_modules.hpp"
#include <fstream>
#include "header.h"

#define mu_perm 128.0
#define mu_diff 256.0

#define dt 10

#define HEIGHT  512
#define WIDTH   512

#define BSIZE WIDTH*HEIGHT

#define size_sb BSIZE/1
#define size_sw BSIZE/4
#define size_dw BSIZE/8

#define NORM_1 1.0
#define NORM_2 2.0

#define MOD hls::modf
#define ABS hls::fabs
#define POW hls::powf

 void get_image_stream(
    hls::stream<ap_axis<64,1,1,1>> &input_stream,
    hls::stream<ap_uint<64> >& msg_strm,
    hls::stream<ap_uint<64> >& len_strm,
    hls::stream<bool>& end_len_strm);

 void set_hash_stream(
    hls::stream<ap_axis<64,1,1,1>> &output_stream,
    hls::stream<ap_uint<256>>& hash_strm,
    hls::stream<bool>& end_hash_strm);

#endif
