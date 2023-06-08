#include "hls_math.h"
#include"sub_modules.hpp"
#include"top_module.hpp"
#include"hls_print.h"

#include"math.h"

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
    float& m_perm,
    float& m_diff,
	out_stream &output_stream,
    int u_perm,
    int u_diff,
    int u_dt,
	uint64_t* Image){

	float x_perm = m_perm;                                                                                                      
    float y_perm = m_perm;

    float x_diff = m_diff;
    float y_diff = m_diff;

    long double uu_perm=(long double)u_perm;
    long double uu_diff=(long double)u_diff;
    

    double dummy;

    for (int i = 0; i < u_dt; i++)
    {
#pragma HLS PIPELINE off
    	long double logmap1_perm = (long double) uu_perm * x_perm * (1.0 - x_perm);
    	long double logmap2_perm = (long double) uu_perm * y_perm - uu_perm * powf(y_perm,2);

    	x_perm = modf((double)logmap1_perm, &dummy);
    	y_perm = modf((double)logmap2_perm, &dummy);

        long double logmap1_diff = (long double) uu_diff * x_diff * (1.0 - x_diff);
        long double logmap2_diff = (long double) uu_diff * y_diff - uu_diff * powf(y_diff,2);

        x_diff = modf((double)logmap1_diff, &dummy);
        y_diff = modf((double)logmap2_diff, &dummy);
    }

    for (int i = 0; i < BSIZE; i++)
    {
#pragma HLS PIPELINE off
    	long double logmap1_perm = (long double) uu_perm * x_perm * (1.0 - x_perm);
    	long double logmap2_perm = (long double) uu_perm * y_perm - uu_perm * powf(y_perm,2);

    	x_perm = modf((double)logmap1_perm, &dummy);
    	y_perm = modf((double)logmap2_perm, &dummy);

        long double logmap1_diff = (long double) uu_diff * x_diff * (1.0 - x_diff);
        long double logmap2_diff = (long double) uu_diff * y_diff - uu_diff * powf(y_diff,2);

        x_diff = modf((double)logmap1_diff, &dummy);
        y_diff = modf((double)logmap2_diff, &dummy);

        long double map_diff = abs(modf((double)logmap1_diff-(double)logmap2_diff,&dummy));

        uint8_t l_diff = ((long long int)(map_diff*powf(10,5))%256);
        uint8_t cipher = l_diff ^ (*((uint8_t *)Image+i));

	    out_data_axis outHash;
	    outHash.data.perm_map.f = abs(modf((double)logmap1_perm-(double)logmap2_perm,&dummy));
	    outHash.data.diff_map.i = l_diff;
	    outHash.last = (i == (BSIZE - 1)) ? 1 : 0;
	    outHash.strb = 0xff;
	    outHash.keep = 0xff;
        output_stream.write(outHash);

    }
 }


/*

 int dx;
 for (dx = 0; dx < 4; dx++)
  {

  }
*/
