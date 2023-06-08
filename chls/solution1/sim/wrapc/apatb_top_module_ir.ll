; ModuleID = '/home/arthur/mapalogistico/chls/chls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>" = type { %"struct.hls::axis<ap_int<64>, 1, 1, 1>" }
%"struct.hls::axis<ap_int<64>, 1, 1, 1>" = type { %"struct.ap_int<64>", %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_int<64>" = type { %"struct.ap_int_base<64, true>" }
%"struct.ap_int_base<64, true>" = type { %"struct.ssdm_int<64, true>" }
%"struct.ssdm_int<64, true>" = type { i64 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_top_module_ir(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(16) %input_stream, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(16) %output_stream) local_unnamed_addr #0 {
entry:
  %input_stream_copy.data = alloca i64
  %input_stream_copy.keep = alloca i8
  %input_stream_copy.strb = alloca i8
  %input_stream_copy.user = alloca i1
  %input_stream_copy.last = alloca i1
  %input_stream_copy.id = alloca i1
  %input_stream_copy.dest = alloca i1
  %output_stream_copy.data = alloca i64
  %output_stream_copy.keep = alloca i8
  %output_stream_copy.strb = alloca i8
  %output_stream_copy.user = alloca i1
  %output_stream_copy.last = alloca i1
  %output_stream_copy.id = alloca i1
  %output_stream_copy.dest = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* nonnull %input_stream, i64* %input_stream_copy.data, i8* %input_stream_copy.keep, i8* %input_stream_copy.strb, i1* %input_stream_copy.user, i1* %input_stream_copy.last, i1* %input_stream_copy.id, i1* %input_stream_copy.dest, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* nonnull %output_stream, i64* %output_stream_copy.data, i8* %output_stream_copy.keep, i8* %output_stream_copy.strb, i1* %output_stream_copy.user, i1* %output_stream_copy.last, i1* %output_stream_copy.id, i1* %output_stream_copy.dest)
  call void @apatb_top_module_hw(i64* %input_stream_copy.data, i8* %input_stream_copy.keep, i8* %input_stream_copy.strb, i1* %input_stream_copy.user, i1* %input_stream_copy.last, i1* %input_stream_copy.id, i1* %input_stream_copy.dest, i64* %output_stream_copy.data, i8* %output_stream_copy.keep, i8* %output_stream_copy.strb, i1* %output_stream_copy.user, i1* %output_stream_copy.last, i1* %output_stream_copy.id, i1* %output_stream_copy.dest)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %input_stream, i64* %input_stream_copy.data, i8* %input_stream_copy.keep, i8* %input_stream_copy.strb, i1* %input_stream_copy.user, i1* %input_stream_copy.last, i1* %input_stream_copy.id, i1* %input_stream_copy.dest, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %output_stream, i64* %output_stream_copy.data, i8* %output_stream_copy.keep, i8* %output_stream_copy.strb, i1* %output_stream_copy.user, i1* %output_stream_copy.last, i1* %output_stream_copy.id, i1* %output_stream_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias, i64* noalias "unpacked"="1.0" %_V_data_V, i8* noalias "unpacked"="1.1" %_V_keep_V, i8* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_user_V, i1* noalias "unpacked"="1.4" %_V_last_V, i1* noalias "unpacked"="1.5" %_V_id_V, i1* noalias "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias, i64* noalias "unpacked"="9.0" %_V_data_V1, i8* noalias "unpacked"="9.1" %_V_keep_V2, i8* noalias "unpacked"="9.2" %_V_strb_V3, i1* noalias "unpacked"="9.3" %_V_user_V4, i1* noalias "unpacked"="9.4" %_V_last_V5, i1* noalias "unpacked"="9.5" %_V_id_V6, i1* noalias "unpacked"="9.6" %_V_dest_V7) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>.50"(i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>.50"(i64* %_V_data_V1, i8* %_V_keep_V2, i8* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias, i64* noalias "unpacked"="1.0" %_V_data_V, i8* noalias "unpacked"="1.1" %_V_keep_V, i8* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_user_V, i1* noalias "unpacked"="1.4" %_V_last_V, i1* noalias "unpacked"="1.5" %_V_id_V, i1* noalias "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias, i64* noalias "unpacked"="9.0" %_V_data_V1, i8* noalias "unpacked"="9.1" %_V_keep_V2, i8* noalias "unpacked"="9.2" %_V_strb_V3, i1* noalias "unpacked"="9.3" %_V_user_V4, i1* noalias "unpacked"="9.4" %_V_last_V5, i1* noalias "unpacked"="9.5" %_V_id_V6, i1* noalias "unpacked"="9.6" %_V_dest_V7) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %0, i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i64* %_V_data_V1, i8* %_V_keep_V2, i8* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias align 512 %dst, i64* noalias "unpacked"="1.0" %src_V_data_V, i8* noalias "unpacked"="1.1" %src_V_keep_V, i8* noalias "unpacked"="1.2" %src_V_strb_V, i1* noalias "unpacked"="1.3" %src_V_user_V, i1* noalias "unpacked"="1.4" %src_V_last_V, i1* noalias "unpacked"="1.5" %src_V_id_V, i1* noalias "unpacked"="1.6" %src_V_dest_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %dst, null
  %1 = or i1 %0, false
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>.44"(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* nonnull align 512 %dst, i64* %src_V_data_V, i8* %src_V_keep_V, i8* %src_V_strb_V, i1* %src_V_user_V, i1* %src_V_last_V, i1* %src_V_id_V, i1* %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>.44"(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias nocapture align 512, i64* noalias nocapture "unpacked"="1.0" %_V_data_V, i8* noalias nocapture "unpacked"="1.1" %_V_keep_V, i8* noalias nocapture "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "unpacked"="1.4" %_V_last_V, i1* noalias nocapture "unpacked"="1.5" %_V_id_V, i1* noalias nocapture "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i8
  %8 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i64* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_8(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i64* %6 to i8*
  %12 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_pop_8(i8* %11, i8* %12)
  %13 = load volatile i64, i64* %6
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %15 = bitcast %"struct.ap_int<64>"* %14 to i64*
  store i64 %13, i64* %15
  call void @fpga_fifo_pop_1(i8* %8, i8* %_V_keep_V)
  %16 = load volatile i8, i8* %8
  %17 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %18 = bitcast %"struct.ap_uint<8>"* %17 to i8*
  store i8 %16, i8* %18
  call void @fpga_fifo_pop_1(i8* %7, i8* %_V_strb_V)
  %19 = load volatile i8, i8* %7
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %21 = bitcast %"struct.ap_uint<8>"* %20 to i8*
  store i8 %19, i8* %21
  %22 = bitcast i1* %5 to i8*
  %23 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %22, i8* %23)
  %24 = bitcast i1* %5 to i8*
  %25 = load i8, i8* %24
  %26 = trunc i8 %25 to i1
  %27 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %28 = bitcast %"struct.ap_uint<1>"* %27 to i1*
  store i1 %26, i1* %28
  %29 = bitcast i1* %4 to i8*
  %30 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %29, i8* %30)
  %31 = bitcast i1* %4 to i8*
  %32 = load i8, i8* %31
  %33 = trunc i8 %32 to i1
  %34 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %35 = bitcast %"struct.ap_uint<1>"* %34 to i1*
  store i1 %33, i1* %35
  %36 = bitcast i1* %3 to i8*
  %37 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %36, i8* %37)
  %38 = bitcast i1* %3 to i8*
  %39 = load i8, i8* %38
  %40 = trunc i8 %39 to i1
  %41 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %42 = bitcast %"struct.ap_uint<1>"* %41 to i1*
  store i1 %40, i1* %42
  %43 = bitcast i1* %2 to i8*
  %44 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %43, i8* %44)
  %45 = bitcast i1* %2 to i8*
  %46 = load i8, i8* %45
  %47 = trunc i8 %46 to i1
  %48 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %49 = bitcast %"struct.ap_uint<1>"* %48 to i1*
  store i1 %47, i1* %49
  %50 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1 to i8*
  %51 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %50, i8* %51)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>.50"(i64* noalias "unpacked"="0.0" %dst_V_data_V, i8* noalias "unpacked"="0.1" %dst_V_keep_V, i8* noalias "unpacked"="0.2" %dst_V_strb_V, i1* noalias "unpacked"="0.3" %dst_V_user_V, i1* noalias "unpacked"="0.4" %dst_V_last_V, i1* noalias "unpacked"="0.5" %dst_V_id_V, i1* noalias "unpacked"="0.6" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %src, null
  %1 = or i1 false, %0
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>.53"(i64* %dst_V_data_V, i8* %dst_V_keep_V, i8* %dst_V_strb_V, i1* %dst_V_user_V, i1* %dst_V_last_V, i1* %dst_V_id_V, i1* %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>.53"(i64* noalias nocapture "unpacked"="0.0" %_V_data_V, i8* noalias nocapture "unpacked"="0.1" %_V_keep_V, i8* noalias nocapture "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "unpacked"="0.4" %_V_last_V, i1* noalias nocapture "unpacked"="0.5" %_V_id_V, i1* noalias nocapture "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>" %7, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_int<64>"* %8 to i64*
  %10 = bitcast i64* %9 to i8*
  %11 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<8>"* %12 to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %_V_keep_V)
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %15 = bitcast %"struct.ap_uint<8>"* %14 to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %_V_strb_V)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %17 = bitcast %"struct.ap_uint<1>"* %16 to i1*
  %18 = bitcast i1* %17 to i8*
  %19 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  %30 = bitcast i1* %29 to i8*
  %31 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %30, i8* %31)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_top_module_hw(i64*, i8*, i8*, i1*, i1*, i1*, i1*, i64*, i8*, i8*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias, i64* noalias "unpacked"="1.0" %_V_data_V, i8* noalias "unpacked"="1.1" %_V_keep_V, i8* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_user_V, i1* noalias "unpacked"="1.4" %_V_last_V, i1* noalias "unpacked"="1.5" %_V_id_V, i1* noalias "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* noalias, i64* noalias "unpacked"="9.0" %_V_data_V1, i8* noalias "unpacked"="9.1" %_V_keep_V2, i8* noalias "unpacked"="9.2" %_V_strb_V3, i1* noalias "unpacked"="9.3" %_V_user_V4, i1* noalias "unpacked"="9.4" %_V_last_V5, i1* noalias "unpacked"="9.5" %_V_id_V6, i1* noalias "unpacked"="9.6" %_V_dest_V7) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %0, i64* %_V_data_V, i8* %_V_keep_V, i8* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %1, i64* %_V_data_V1, i8* %_V_keep_V2, i8* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  ret void
}

define void @top_module_hw_stub_wrapper(i64*, i8*, i8*, i1*, i1*, i1*, i1*, i64*, i8*, i8*, i1*, i1*, i1*, i1*) #5 {
entry:
  %14 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"
  %15 = alloca %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %14, i64* %0, i8* %1, i8* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %15, i64* %7, i8* %8, i8* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  call void @top_module_hw_stub(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %14, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %15)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %14, i64* %0, i8* %1, i8* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"* %15, i64* %7, i8* %8, i8* %9, i1* %10, i1* %11, i1* %12, i1* %13)
  ret void
}

declare void @top_module_hw_stub(%"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_int<64>, 1, 1, 1>, 0>"*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
