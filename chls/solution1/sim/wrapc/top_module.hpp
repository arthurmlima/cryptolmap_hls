#ifndef TOP_MODULE_HPP
#define TOP_MODULE_HPP

#include<hls_stream.h>
#include<ap_axi_sdata.h>
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
#include"header.h"



void top_module(hls::stream<ap_axis<64,1,1,1>> &input_stream,
                hls::stream<ap_axis<64,1,1,1>> &output_stream);

#endif
