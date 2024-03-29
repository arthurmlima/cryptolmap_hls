#include"top_module.hpp"

void top_module(
   in_stream &input_stream,
   out_stream &output_stream,
   int u_dt,
   int u_diff,
   float &m_perm){

#pragma HLS INTERFACE mode=axis port=input_stream
#pragma HLS INTERFACE mode=axis port=output_stream
#pragma HLS INTERFACE mode=s_axilite port=return bundle=control
#pragma HLS INTERFACE mode=s_axilite port=m_perm bundle=control
#pragma HLS INTERFACE mode=s_axilite port=u_diff bundle=control
#pragma HLS INTERFACE mode=s_axilite port=u_dt bundle=control


#pragma HLS DATAFLOW

hls::stream<ap_uint<64> > msg_strm;
#pragma HLS stream depth=32768 variable=msg_strm
hls::stream<ap_uint<64> > len_strm;
#pragma HLS stream depth=1 variable=len_strm
hls::stream<bool> end_len_strm;
#pragma HLS stream depth=1 variable=end_len_strm
hls::stream<ap_uint<256> > hash_strm;
#pragma HLS stream depth=1 variable=hash_strm
hls::stream<bool> end_hash_strm;
#pragma HLS stream depth=2 variable=end_hash_strm

uint64_t Image[size_dw];


#pragma HLS BIND_STORAGE variable=Image type=ram_t2p impl=uram

float m_diff=0.0f;

get_image_stream(input_stream, msg_strm, len_strm, end_len_strm,Image);
xf::security::sha256(msg_strm, len_strm, end_len_strm, hash_strm, end_hash_strm);
set_hash_stream(m_perm, m_diff, hash_strm, end_hash_strm);
logmap(m_diff, output_stream,u_diff,Image);
}
