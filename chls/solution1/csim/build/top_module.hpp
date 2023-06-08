#ifndef TOP_MODULE_HPP
#define TOP_MODULE_HPP

#include <hls_stream.h>
#include <ap_axi_sdata.h>
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

#define IMAGE_SIZE 512*512



void top_module(
   in_stream &input_stream,
   out_stream &output_stream,
   int u_perm,
   int u_diff,
   int u_dt);


#endif
