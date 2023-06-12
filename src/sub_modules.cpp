#include"hls_math.h"
#include"sub_modules.hpp"
#include"top_module.hpp"
#include"hls_print.h"
#include<hls_stream.h>
#include<ap_axi_sdata.h>
#include"cmath"

 void get_image_stream(
    in_stream &input_stream,
    hls::stream<ap_uint<64> >& msg_strm,
    hls::stream<ap_uint<64> >& len_strm,
    hls::stream<bool>& end_len_strm,
    uint64_t* Image){

    ap_uint<64> m;
    for (int g=0;g<size_dw;g++){
        Image[g] = (unsigned long long)input_stream.read().data;
        m.range(63, 0) = Image[g];
        msg_strm.write(m);
    }

    len_strm.write((unsigned long long)size_sb);
    end_len_strm.write(false);
    end_len_strm.write(true);

}

void set_hash_stream(
    float& m_perm,
    float& m_diff,
    hls::stream<ap_uint<256>>& hash_strm,
    hls::stream<bool>& end_hash_strm){

    uint32_t aux_perm=0;
    uint32_t aux_diff=0;
    

	ap_uint<256> h256 = hash_strm.read();
    while(end_hash_strm.read()!=true);

    unsigned char h[32] ;

   for (int i = 0; i < 16; i++){
        h[i] = (unsigned char)(h256.range(7 + 8 * i, 8 * i).to_int() & 0xff);
        aux_perm = aux_perm + h[i];

    }
   for (int i = 16; i < 32; i++){
        h[i] = (unsigned char)(h256.range(7 + 8 * i, 8 * i).to_int() & 0xff);
        aux_diff = aux_diff + h[i];
    }

   m_perm = ((float)aux_perm)/(16.0f  * 1000.0f)+0.3f;
   m_diff = ((float)aux_diff)/(16.0f  * 1000.0f)+0.1f;

}

//   logmap(image_Init, dT, muperm, muDiff, output_stream);

void logmap(
    float& m_diff,
	out_stream &output_stream,
    int u_diff,
	uint64_t* Image){

    float x_diff = m_diff;
    float y_diff = m_diff;

    float uu_diff=u_diff;
    float uu_diff2=u_diff;

    float logmap1_diff;
    float logmap2_diff;
    float	map_diff;
    float dummy;
    float p;
    uint8_t l_diff;
    out_data_axis outHash;

    for (int i = 0; i < 10; i++)
    {
#pragma HLS PIPELINE off

        logmap1_diff = uu_diff * x_diff * (1.0 - x_diff);
        logmap2_diff = uu_diff2 * y_diff - uu_diff2 * std::pow(y_diff,2.0f);

        x_diff = std::modf(logmap1_diff, &dummy);
        y_diff = std::modf(logmap2_diff, &dummy);
    }

    for (int i = 0; i < 40; i++)
    {
#pragma HLS PIPELINE off
        logmap1_diff = uu_diff * x_diff * (1.0 - x_diff);
        logmap2_diff = uu_diff2 * y_diff - uu_diff2 * std::pow(y_diff,2.0f);

        x_diff = std::modf(logmap1_diff, &dummy);
        y_diff = std::modf(logmap2_diff, &dummy);

        map_diff = std::fabs(x_diff-y_diff);
        p = map_diff*std::pow(10.0f,5.0f);
        l_diff = std::remainder(p,256.0f);
        //uint8_t cipher = l_diff ^ (*((uint8_t *)Image+i));

	    outHash.data = l_diff;
	    outHash.last = (i == (40 - 1)) ? 1 : 0;
	    outHash.strb = 0xff;
	    outHash.keep = 0xff;
        output_stream.write(outHash);

    }
 }



