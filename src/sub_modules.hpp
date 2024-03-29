#ifndef SUB_MODULES_HPP
#define SUB_MODULES_HPP

#include<hls_stream.h>
#include<ap_axi_sdata.h>
#include<ap_int.h>

#define dt 10

#define HEIGHT  512
#define WIDTH   512

#define BSIZE WIDTH*HEIGHT

#define size_sb BSIZE/1
#define size_sw BSIZE/4
#define size_dw BSIZE/8


struct initial_conditions {
  double m_perm;
  double m_diff;

  initial_conditions() {
	m_perm = 0.0;
	m_diff = 0.0;
  }
};

// i need to declare a union to be able to access the bits of a float
typedef union {
  float f;
  uint32_t i;
}maps;


typedef uint32_t outStream;


typedef ap_axis<64,1,1,1> in_data_axis;
typedef hls::stream<in_data_axis> in_stream;

typedef hls::axis<outStream, 1, 1, 1> out_data_axis;
typedef hls::stream<out_data_axis> out_stream;


void get_image_stream(
  in_stream &input_stream,
  hls::stream<ap_uint<64> >& msg_strm,
  hls::stream<ap_uint<64> >& len_strm,
  hls::stream<bool>& end_len_strm,
  uint64_t* Image);

void set_hash_stream(
  float& m_perm,
  float& m_diff,
  hls::stream<ap_uint<256>>& hash_strm,
  hls::stream<bool>& end_hash_strm);

void logmap(
  float& m_diff,
  out_stream &output_stream,
  int u_diff,
  uint64_t* Image);


#endif
