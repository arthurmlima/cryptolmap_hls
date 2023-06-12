#ifndef TOP_MODULE_HPP
#define TOP_MODULE_HPP

#include"xf_security/sha224_256.hpp"
#include"sub_modules.hpp"

#define IMAGE_SIZE 512*512



void top_module(
   in_stream &input_stream,
   out_stream &output_stream,
   int u_dt,
   int u_diff,
   float &m_perm);


#endif
