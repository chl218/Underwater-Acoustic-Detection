; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sig_locs_OC_V_str = internal unnamed_addr constant [11 x i8] c"sig_locs.V\00" ; [#uses=1 type=[11 x i8]*]
@memset_shift_buf_str = internal unnamed_addr constant [17 x i8] c"memset_shift_buf\00" ; [#uses=1 type=[17 x i8]*]
@hits_channel_str = internal unnamed_addr constant [13 x i8] c"hits_channel\00" ; [#uses=1 type=[13 x i8]*]
@dup4_OC_V_str = internal unnamed_addr constant [7 x i8] c"dup4.V\00" ; [#uses=1 type=[7 x i8]*]
@dup3_OC_V_str = internal unnamed_addr constant [7 x i8] c"dup3.V\00" ; [#uses=1 type=[7 x i8]*]
@dup2_OC_V_str = internal unnamed_addr constant [7 x i8] c"dup2.V\00" ; [#uses=1 type=[7 x i8]*]
@dup1_OC_V_str = internal unnamed_addr constant [7 x i8] c"dup1.V\00" ; [#uses=1 type=[7 x i8]*]
@detect_calls_str = internal unnamed_addr constant [13 x i8] c"detect_calls\00" ; [#uses=1 type=[13 x i8]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=22 type=[8 x i8]*]
@p_str5 = private unnamed_addr constant [13 x i8] c"Parse_Signal\00", align 1 ; [#uses=3 type=[13 x i8]*]
@p_str3 = private unnamed_addr constant [11 x i8] c"Signal_End\00", align 1 ; [#uses=1 type=[11 x i8]*]
@p_str211 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1 ; [#uses=3 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"Signal_Begin\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str18 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]
@p_str14 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=145 type=[1 x i8]*]

; [#uses=1]
define internal fastcc float @threshold(float* %amplitude_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{float* %amplitude_V}, i64 0, metadata !42), !dbg !114 ; [debug line = 3:29] [debug variable = amplitude.V]
  br label %1, !dbg !115                          ; [debug line = 6:15]

; <label>:1                                       ; preds = %2, %0
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum_1, %2 ] ; [#uses=2 type=float]
  %i = phi i20 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=2 type=i20]
  %exitcond = icmp eq i20 %i, -448576, !dbg !115  ; [#uses=1 type=i1] [debug line = 6:15]
  %i_1 = add i20 %i, 1, !dbg !118                 ; [#uses=1 type=i20] [debug line = 6:31]
  br i1 %exitcond, label %3, label %2, !dbg !115  ; [debug line = 6:15]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1), !dbg !119 ; [#uses=1 type=i32] [debug line = 6:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str12) nounwind, !dbg !121 ; [debug line = 7:1]
  call void @llvm.dbg.value(metadata !{float* %amplitude_V}, i64 0, metadata !122), !dbg !127 ; [debug line = 83:56@8:9] [debug variable = stream<float>.V]
  %tmp_2 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %amplitude_V), !dbg !129 ; [#uses=1 type=float] [debug line = 85:9@8:9]
  call void @llvm.dbg.value(metadata !{float %tmp_2}, i64 0, metadata !131), !dbg !129 ; [debug line = 85:9@8:9] [debug variable = tmp]
  %sum_1 = fadd float %sum, %tmp_2, !dbg !128     ; [#uses=1 type=float] [debug line = 8:9]
  call void @llvm.dbg.value(metadata !{float %sum_1}, i64 0, metadata !132), !dbg !128 ; [debug line = 8:9] [debug variable = sum]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1, i32 %tmp_4), !dbg !133 ; [#uses=0 type=i32] [debug line = 9:2]
  call void @llvm.dbg.value(metadata !{i20 %i_1}, i64 0, metadata !134), !dbg !118 ; [debug line = 6:31] [debug variable = i]
  br label %1, !dbg !118                          ; [debug line = 6:31]

; <label>:3                                       ; preds = %1
  %tmp = fdiv float %sum, 2.000000e+03, !dbg !136 ; [#uses=1 type=float] [debug line = 10:2]
  %tmp_1 = fmul float %tmp, 3.000000e+02, !dbg !136 ; [#uses=1 type=float] [debug line = 10:2]
  %threshold_write_assi = fmul float %tmp_1, 5.000000e+00, !dbg !136 ; [#uses=1 type=float] [debug line = 10:2]
  call void @llvm.dbg.value(metadata !{float %threshold_write_assi}, i64 0, metadata !137), !dbg !138 ; [debug line = 3:51] [debug variable = threshold]
  ret float %threshold_write_assi, !dbg !139      ; [debug line = 11:1]
}

; [#uses=1]
define internal fastcc void @parse(float* %sig_i_V, i32* nocapture %hits, i32* %loc_V, float* %sig_o_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %loc_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(float* %sig_i_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(float* %sig_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %hits_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %hits), !dbg !140 ; [#uses=1 type=i32] [debug line = 22:2]
  call void @llvm.dbg.value(metadata !{float* %sig_i_V}, i64 0, metadata !192), !dbg !299 ; [debug line = 3:25@22:2] [debug variable = sig_i.V]
  call void @llvm.dbg.value(metadata !{i32 %hits_read}, i64 0, metadata !300), !dbg !301 ; [debug line = 4:16@22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %loc_V}, i64 0, metadata !302), !dbg !307 ; [debug line = 6:19@22:2] [debug variable = loc.V]
  call void @llvm.dbg.value(metadata !{float* %sig_o_V}, i64 0, metadata !308), !dbg !310 ; [debug line = 7:19@22:2] [debug variable = sig_o.V]
  br label %0, !dbg !311                          ; [debug line = 10:29@22:2]

; <label>:0                                       ; preds = %7, %entry
  %read_count_i_i = phi i32 [ 0, %entry ], [ %read_count, %7 ] ; [#uses=3 type=i32]
  %i_i_i = phi i31 [ 0, %entry ], [ %i, %7 ]      ; [#uses=2 type=i31]
  %i_i_i_cast = zext i31 %i_i_i to i32, !dbg !311 ; [#uses=1 type=i32] [debug line = 10:29@22:2]
  %tmp_i_i = icmp slt i32 %i_i_i_cast, %hits_read, !dbg !311 ; [#uses=1 type=i1] [debug line = 10:29@22:2]
  %i = add i31 %i_i_i, 1, !dbg !314               ; [#uses=1 type=i31] [debug line = 10:41@22:2]
  br i1 %tmp_i_i, label %1, label %.exit, !dbg !311 ; [debug line = 10:29@22:2]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str5) nounwind, !dbg !315 ; [debug line = 10:47@22:2]
  %tmp_14_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str5), !dbg !315 ; [#uses=1 type=i32] [debug line = 10:47@22:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 60, i32 10, [1 x i8]* @p_str16) nounwind, !dbg !317 ; [debug line = 11:1@22:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str16) nounwind, !dbg !318 ; [debug line = 12:1@22:2]
  call void @llvm.dbg.value(metadata !{i32* %loc_V}, i64 0, metadata !319), !dbg !325 ; [debug line = 83:56@13:23@22:2] [debug variable = stream<int>.V]
  %tmp_4 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %loc_V), !dbg !326 ; [#uses=3 type=i32] [debug line = 85:9@13:23@22:2]
  call void @llvm.dbg.value(metadata !{i32 %tmp_4}, i64 0, metadata !328), !dbg !326 ; [debug line = 85:9@13:23@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_4}, i64 0, metadata !329), !dbg !324 ; [debug line = 13:23@22:2] [debug variable = location]
  %b = add nsw i32 %tmp_4, -1001, !dbg !330       ; [#uses=1 type=i32] [debug line = 15:38@22:2]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !331), !dbg !330 ; [debug line = 15:38@22:2] [debug variable = b]
  %e = add nsw i32 %tmp_4, 1000, !dbg !332        ; [#uses=2 type=i32] [debug line = 16:34@22:2]
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !333), !dbg !332 ; [debug line = 16:34@22:2] [debug variable = e]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %b, i32 31), !dbg !334 ; [#uses=1 type=i1] [debug line = 18:3@22:2]
  %tmp_i_i_11 = icmp sgt i32 %e, 599999, !dbg !335 ; [#uses=1 type=i1] [debug line = 19:3@22:2]
  %e_1 = select i1 %tmp_i_i_11, i32 599999, i32 %e, !dbg !335 ; [#uses=3 type=i32] [debug line = 19:3@22:2]
  call void @llvm.dbg.value(metadata !{i32 %e_1}, i64 0, metadata !333), !dbg !335 ; [debug line = 19:3@22:2] [debug variable = e]
  %p_op_i_i = add i32 %tmp_4, -1002, !dbg !336    ; [#uses=1 type=i32] [debug line = 21:17@22:2]
  %tmp_1_i_i = select i1 %tmp, i32 -1, i32 %p_op_i_i, !dbg !336 ; [#uses=3 type=i32] [debug line = 21:17@22:2]
  %tmp_2_i_i = icmp sgt i32 %read_count_i_i, %tmp_1_i_i ; [#uses=1 type=i1]
  %smax9_i_i = select i1 %tmp_2_i_i, i32 %read_count_i_i, i32 %tmp_1_i_i ; [#uses=2 type=i32]
  br label %2, !dbg !336                          ; [debug line = 21:17@22:2]

; <label>:2                                       ; preds = %3, %1
  %read_count_1_i_i = phi i32 [ %read_count_i_i, %1 ], [ %tmp_3_i_i, %3 ] ; [#uses=2 type=i32]
  %tmp_3_i_i = add nsw i32 %read_count_1_i_i, 1, !dbg !336 ; [#uses=1 type=i32] [debug line = 21:17@22:2]
  %tmp_5_i_i = icmp slt i32 %read_count_1_i_i, %tmp_1_i_i, !dbg !336 ; [#uses=1 type=i1] [debug line = 21:17@22:2]
  br i1 %tmp_5_i_i, label %3, label %4, !dbg !336 ; [debug line = 21:17@22:2]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind, !dbg !337 ; [debug line = 21:43@22:2]
  call void @llvm.dbg.value(metadata !{float* %sig_i_V}, i64 0, metadata !339), !dbg !340 ; [debug line = 83:56@21:43@22:2] [debug variable = stream<float>.V]
  %tmp_3_0 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sig_i_V), !dbg !341 ; [#uses=0 type=float] [debug line = 85:9@21:43@22:2]
  call void @llvm.dbg.value(metadata !{float %tmp_3_0}, i64 0, metadata !131), !dbg !341 ; [debug line = 85:9@21:43@22:2] [debug variable = tmp]
  br label %2, !dbg !342                          ; [debug line = 21:54@22:2]

; <label>:4                                       ; preds = %2
  %tmp_7_i_i = add i32 %smax9_i_i, 1, !dbg !343   ; [#uses=2 type=i32] [debug line = 22:15@22:2]
  %tmp_8_i_i = icmp sgt i32 %e_1, %tmp_7_i_i      ; [#uses=1 type=i1]
  %smax8_i_i = select i1 %tmp_8_i_i, i32 %e_1, i32 %tmp_7_i_i ; [#uses=1 type=i32]
  %read_count = add i32 %smax8_i_i, 1, !dbg !343  ; [#uses=1 type=i32] [debug line = 22:15@22:2]
  call void @llvm.dbg.value(metadata !{i32 %read_count}, i64 0, metadata !344), !dbg !343 ; [debug line = 22:15@22:2] [debug variable = read_count]
  br label %5, !dbg !343                          ; [debug line = 22:15@22:2]

; <label>:5                                       ; preds = %6, %4
  %read_count_2_in_i_i = phi i32 [ %smax9_i_i, %4 ], [ %read_count_1, %6 ] ; [#uses=1 type=i32]
  %read_count_1 = add i32 %read_count_2_in_i_i, 1, !dbg !336 ; [#uses=2 type=i32] [debug line = 21:17@22:2]
  call void @llvm.dbg.value(metadata !{i32 %read_count_1}, i64 0, metadata !344), !dbg !336 ; [debug line = 21:17@22:2] [debug variable = read_count]
  %tmp_10_i_i = icmp slt i32 %read_count_1, %e_1, !dbg !343 ; [#uses=1 type=i1] [debug line = 22:15@22:2]
  br i1 %tmp_10_i_i, label %6, label %7, !dbg !343 ; [debug line = 22:15@22:2]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind, !dbg !345 ; [debug line = 22:39@22:2]
  call void @llvm.dbg.value(metadata !{float* %sig_i_V}, i64 0, metadata !347), !dbg !349 ; [debug line = 83:56@22:51@22:2] [debug variable = stream<float>.V]
  %tmp_3 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sig_i_V), !dbg !350 ; [#uses=1 type=float] [debug line = 85:9@22:51@22:2]
  call void @llvm.dbg.value(metadata !{float %tmp_3}, i64 0, metadata !131), !dbg !350 ; [debug line = 85:9@22:51@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %sig_o_V}, i64 0, metadata !351), !dbg !356 ; [debug line = 98:48@22:51@22:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_3}, i64 0, metadata !357), !dbg !359 ; [debug line = 99:31@22:51@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_3}, i64 0, metadata !360), !dbg !359 ; [debug line = 99:31@22:51@22:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sig_o_V, float %tmp_3), !dbg !361 ; [debug line = 100:9@22:51@22:2]
  br label %5, !dbg !362                          ; [debug line = 22:63@22:2]

; <label>:7                                       ; preds = %5
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str5, i32 %tmp_14_i_i), !dbg !363 ; [#uses=0 type=i32] [debug line = 24:2@22:2]
  br label %0, !dbg !314                          ; [debug line = 10:41@22:2]

.exit:                                            ; preds = %0
  ret void
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=71]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @findpeaks(float* %samples_V, float* %amplitude_V, i32* %locations_V) {
  %shift_buf = alloca float                       ; [#uses=2 type=float*]
  %shift_buf_1 = alloca float                     ; [#uses=2 type=float*]
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %samples_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{float* %samples_V}, i64 0, metadata !364), !dbg !465 ; [debug line = 3:29] [debug variable = samples.V]
  call void @llvm.dbg.value(metadata !{float* %amplitude_V}, i64 0, metadata !466), !dbg !468 ; [debug line = 4:23] [debug variable = amplitude.V]
  call void @llvm.dbg.value(metadata !{i32* %locations_V}, i64 0, metadata !469), !dbg !474 ; [debug line = 5:23] [debug variable = locations.V]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i2 [ 0, %0 ], [ %indvarinc, %meminst ] ; [#uses=4 type=i2]
  %shift_buf_load = load float* %shift_buf        ; [#uses=2 type=float]
  %shift_buf_1_load = load float* %shift_buf_1    ; [#uses=1 type=float]
  %indvarinc = add i2 %invdar, 1, !dbg !475       ; [#uses=1 type=i2] [debug line = 7:30]
  %tmp_s = icmp eq i2 %invdar, 0                  ; [#uses=1 type=i1]
  %tmp_1 = select i1 %tmp_s, float 0.000000e+00, float %shift_buf_load ; [#uses=1 type=float]
  %tmp_2 = icmp eq i2 %invdar, 1                  ; [#uses=2 type=i1]
  %shift_buf_0_1 = select i1 %tmp_2, float %shift_buf_load, float %tmp_1 ; [#uses=2 type=float]
  %shift_buf_1_1 = select i1 %tmp_2, float 0.000000e+00, float %shift_buf_1_load ; [#uses=2 type=float]
  %tmp = icmp eq i2 %invdar, -2, !dbg !475        ; [#uses=1 type=i1] [debug line = 7:30]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memset_shift_buf_str)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  store float %shift_buf_1_1, float* %shift_buf_1
  store float %shift_buf_0_1, float* %shift_buf
  br i1 %tmp, label %.preheader.preheader, label %meminst, !dbg !475 ; [debug line = 7:30]

.preheader.preheader:                             ; preds = %meminst
  br label %.preheader, !dbg !477                 ; [debug line = 10:29]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %shift_buf_1_2 = phi float [ %shift_buf_1_13, %._crit_edge ], [ %shift_buf_1_1, %.preheader.preheader ] ; [#uses=2 type=float]
  %shift_buf_1_13 = phi float [ %tmp_22, %._crit_edge ], [ %shift_buf_0_1, %.preheader.preheader ] ; [#uses=5 type=float]
  %tmp_3 = phi i20 [ %i, %._crit_edge ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i20]
  %exitcond = icmp eq i20 %tmp_3, -448576, !dbg !477 ; [#uses=1 type=i1] [debug line = 10:29]
  %i = add i20 %tmp_3, 1, !dbg !479               ; [#uses=1 type=i20] [debug line = 10:45]
  br i1 %exitcond, label %3, label %1, !dbg !477  ; [debug line = 10:29]

; <label>:1                                       ; preds = %.preheader
  %tmp_5 = zext i20 %tmp_3 to i32, !dbg !477      ; [#uses=1 type=i32] [debug line = 10:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str211) nounwind, !dbg !480 ; [debug line = 10:51]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str211), !dbg !480 ; [#uses=1 type=i32] [debug line = 10:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str110) nounwind, !dbg !482 ; [debug line = 11:1]
  call void @llvm.dbg.value(metadata !{float %shift_buf_1_13}, i64 0, metadata !483), !dbg !490 ; [debug line = 14:3] [debug variable = shift_buf[1]]
  call void @llvm.dbg.value(metadata !{float* %samples_V}, i64 0, metadata !122), !dbg !491 ; [debug line = 83:56@15:18] [debug variable = stream<float>.V]
  %tmp_22 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %samples_V), !dbg !493 ; [#uses=3 type=float] [debug line = 85:9@15:18]
  call void @llvm.dbg.value(metadata !{float %tmp_22}, i64 0, metadata !131), !dbg !493 ; [debug line = 85:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_22}, i64 0, metadata !494), !dbg !492 ; [debug line = 15:18] [debug variable = shift_buf[0]]
  %shift_buf_1_2_to_int = bitcast float %shift_buf_1_2 to i32 ; [#uses=2 type=i32]
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_1_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_7 = trunc i32 %shift_buf_1_2_to_int to i23 ; [#uses=1 type=i23]
  %shift_buf_1_to_int = bitcast float %shift_buf_1_13 to i32 ; [#uses=2 type=i32]
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_9 = trunc i32 %shift_buf_1_to_int to i23   ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_8, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_7, 0                 ; [#uses=1 type=i1]
  %tmp_10 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %notlhs2 = icmp ne i8 %tmp_6, -1                ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp_9, 0                ; [#uses=1 type=i1]
  %tmp_11 = or i1 %notrhs3, %notlhs2              ; [#uses=2 type=i1]
  %tmp_12 = and i1 %tmp_10, %tmp_11               ; [#uses=1 type=i1]
  %tmp_13 = fcmp olt float %shift_buf_1_2, %shift_buf_1_13, !dbg !495 ; [#uses=1 type=i1] [debug line = 17:3]
  %tmp_14 = and i1 %tmp_12, %tmp_13, !dbg !495    ; [#uses=1 type=i1] [debug line = 17:3]
  %shift_buf_0_to_int = bitcast float %tmp_22 to i32 ; [#uses=2 type=i32]
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_0_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_16 = trunc i32 %shift_buf_0_to_int to i23  ; [#uses=1 type=i23]
  %notlhs6 = icmp ne i8 %tmp_15, -1               ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp_16, 0               ; [#uses=1 type=i1]
  %tmp_17 = or i1 %notrhs7, %notlhs6              ; [#uses=1 type=i1]
  %tmp_18 = and i1 %tmp_11, %tmp_17               ; [#uses=1 type=i1]
  %tmp_19 = fcmp ogt float %shift_buf_1_13, %tmp_22, !dbg !495 ; [#uses=1 type=i1] [debug line = 17:3]
  %tmp_20 = and i1 %tmp_18, %tmp_19, !dbg !495    ; [#uses=1 type=i1] [debug line = 17:3]
  %or_cond = and i1 %tmp_14, %tmp_20, !dbg !495   ; [#uses=1 type=i1] [debug line = 17:3]
  br i1 %or_cond, label %2, label %._crit_edge, !dbg !495 ; [debug line = 17:3]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i32* %locations_V}, i64 0, metadata !496), !dbg !501 ; [debug line = 98:48@18:4] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i20 %tmp_3}, i64 0, metadata !504), !dbg !506 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_5}, i64 0, metadata !504), !dbg !506 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_auto.volatile.i32P(i32* %locations_V, i32 %tmp_5), !dbg !507 ; [debug line = 100:9@18:4]
  call void @llvm.dbg.value(metadata !{float* %amplitude_V}, i64 0, metadata !508), !dbg !509 ; [debug line = 98:48@19:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %shift_buf_1_13}, i64 0, metadata !360), !dbg !511 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_auto.volatile.floatP(float* %amplitude_V, float %shift_buf_1_13), !dbg !512 ; [debug line = 100:9@19:4]
  br label %._crit_edge, !dbg !513                ; [debug line = 20:3]

._crit_edge:                                      ; preds = %2, %1
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str211, i32 %tmp_4), !dbg !514 ; [#uses=0 type=i32] [debug line = 21:2]
  call void @llvm.dbg.value(metadata !{i20 %i}, i64 0, metadata !515), !dbg !479 ; [debug line = 10:45] [debug variable = i]
  br label %.preheader, !dbg !479                 ; [debug line = 10:45]

; <label>:3                                       ; preds = %.preheader
  ret void, !dbg !516                             ; [debug line = 23:1]
}

; [#uses=1]
define internal fastcc void @duplicate(float* %dat_i_V, float* %dat_1_o_V, float* %dat_2_o_V, float* %dat_3_o_V, float* %dat_4_o_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_4_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_3_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_2_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_1_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_i_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{float* %dat_i_V}, i64 0, metadata !517), !dbg !572 ; [debug line = 4:29] [debug variable = dat_i.V]
  call void @llvm.dbg.value(metadata !{float* %dat_1_o_V}, i64 0, metadata !573), !dbg !575 ; [debug line = 4:49] [debug variable = dat_1_o.V]
  call void @llvm.dbg.value(metadata !{float* %dat_2_o_V}, i64 0, metadata !576), !dbg !578 ; [debug line = 4:71] [debug variable = dat_2_o.V]
  call void @llvm.dbg.value(metadata !{float* %dat_3_o_V}, i64 0, metadata !579), !dbg !581 ; [debug line = 5:25] [debug variable = dat_3_o.V]
  call void @llvm.dbg.value(metadata !{float* %dat_4_o_V}, i64 0, metadata !582), !dbg !584 ; [debug line = 5:47] [debug variable = dat_4_o.V]
  br label %1, !dbg !585                          ; [debug line = 6:15]

; <label>:1                                       ; preds = %2, %0
  %i = phi i20 [ 0, %0 ], [ %i_2, %2 ]            ; [#uses=2 type=i20]
  %exitcond = icmp eq i20 %i, -448576, !dbg !585  ; [#uses=1 type=i1] [debug line = 6:15]
  %i_2 = add i20 %i, 1, !dbg !588                 ; [#uses=1 type=i20] [debug line = 6:31]
  br i1 %exitcond, label %3, label %2, !dbg !585  ; [debug line = 6:15]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str14), !dbg !589 ; [#uses=1 type=i32] [debug line = 6:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str115) nounwind, !dbg !591 ; [debug line = 7:1]
  call void @llvm.dbg.value(metadata !{float* %dat_i_V}, i64 0, metadata !122), !dbg !592 ; [debug line = 83:56@8:14] [debug variable = stream<float>.V]
  %tmp = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %dat_i_V), !dbg !594 ; [#uses=4 type=float] [debug line = 85:9@8:14]
  call void @llvm.dbg.value(metadata !{float %tmp}, i64 0, metadata !131), !dbg !594 ; [debug line = 85:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp}, i64 0, metadata !595), !dbg !593 ; [debug line = 8:14] [debug variable = val]
  call void @llvm.dbg.value(metadata !{float* %dat_1_o_V}, i64 0, metadata !508), !dbg !596 ; [debug line = 98:48@9:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp}, i64 0, metadata !360), !dbg !598 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %dat_1_o_V, float %tmp), !dbg !599 ; [debug line = 100:9@9:3]
  call void @llvm.dbg.value(metadata !{float* %dat_2_o_V}, i64 0, metadata !508), !dbg !600 ; [debug line = 98:48@10:3] [debug variable = stream<float>.V]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %dat_2_o_V, float %tmp), !dbg !602 ; [debug line = 100:9@10:3]
  call void @llvm.dbg.value(metadata !{float* %dat_3_o_V}, i64 0, metadata !508), !dbg !603 ; [debug line = 98:48@11:3] [debug variable = stream<float>.V]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %dat_3_o_V, float %tmp), !dbg !605 ; [debug line = 100:9@11:3]
  call void @llvm.dbg.value(metadata !{float* %dat_4_o_V}, i64 0, metadata !508), !dbg !606 ; [debug line = 98:48@12:3] [debug variable = stream<float>.V]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %dat_4_o_V, float %tmp), !dbg !608 ; [debug line = 100:9@12:3]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str14, i32 %tmp_s), !dbg !609 ; [#uses=0 type=i32] [debug line = 13:2]
  call void @llvm.dbg.value(metadata !{i20 %i_2}, i64 0, metadata !610), !dbg !588 ; [debug line = 6:31] [debug variable = i]
  br label %1, !dbg !588                          ; [debug line = 6:31]

; <label>:3                                       ; preds = %1
  ret void, !dbg !611                             ; [debug line = 14:1]
}

; [#uses=0]
define void @detect_calls(float* %dat_i_V, float* %res_o_V) {
  %hits_channel = alloca i32, align 4             ; [#uses=5 type=i32*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind, !dbg !612 ; [debug line = 5:1]
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %res_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_i_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %dat_i_V), !map !663
  call void (...)* @_ssdm_op_SpecBitsMap(float* %res_o_V), !map !669
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @detect_calls_str) nounwind
  %dup1_V = alloca float, align 4                 ; [#uses=5 type=float*]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup1_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, float* %dup1_V, float* %dup1_V) ; [#uses=0 type=i32]
  %empty_22 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %dup2_V = alloca float, align 4                 ; [#uses=5 type=float*]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup2_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, float* %dup2_V, float* %dup2_V) ; [#uses=0 type=i32]
  %empty_24 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %dup3_V = alloca float, align 4                 ; [#uses=5 type=float*]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup3_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, float* %dup3_V, float* %dup3_V) ; [#uses=0 type=i32]
  %empty_26 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup3_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %dup4_V = alloca float, align 4                 ; [#uses=5 type=float*]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup4_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, float* %dup4_V, float* %dup4_V) ; [#uses=0 type=i32]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup4_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %peaks_V = alloca float, align 4                ; [#uses=1 type=float*]
  %peak_locs_V = alloca i32, align 4              ; [#uses=1 type=i32*]
  %sig_locs_V = alloca i32, align 4               ; [#uses=5 type=i32*]
  %empty_29 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @sig_locs_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %sig_locs_V, i32* %sig_locs_V) ; [#uses=0 type=i32]
  %empty_30 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %sig_locs_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{float* %dat_i_V}, i64 0, metadata !673), !dbg !678 ; [debug line = 4:32] [debug variable = dat_i.V]
  call void @llvm.dbg.value(metadata !{float* %res_o_V}, i64 0, metadata !679), !dbg !681 ; [debug line = 4:52] [debug variable = res_o.V]
  call void @llvm.dbg.declare(metadata !{float* %dup1_V}, metadata !682), !dbg !684 ; [debug line = 7:14] [debug variable = dup1.V]
  call void @llvm.dbg.declare(metadata !{float* %dup2_V}, metadata !685), !dbg !687 ; [debug line = 7:20] [debug variable = dup2.V]
  call void @llvm.dbg.declare(metadata !{float* %dup3_V}, metadata !688), !dbg !690 ; [debug line = 7:26] [debug variable = dup3.V]
  call void @llvm.dbg.declare(metadata !{float* %dup4_V}, metadata !691), !dbg !693 ; [debug line = 7:32] [debug variable = dup4.V]
  call fastcc void @duplicate(float* %dat_i_V, float* %dup1_V, float* %dup2_V, float* %dup3_V, float* %dup4_V), !dbg !694 ; [debug line = 8:2]
  call void @llvm.dbg.declare(metadata !{float* %peaks_V}, metadata !695), !dbg !697 ; [debug line = 10:14] [debug variable = peaks.V]
  call void @llvm.dbg.declare(metadata !{i32* %peak_locs_V}, metadata !698), !dbg !747 ; [debug line = 11:14] [debug variable = peak_locs.V]
  call fastcc void @findpeaks(float* %dup1_V, float* %peaks_V, i32* %peak_locs_V), !dbg !748 ; [debug line = 12:2]
  %thres = call fastcc float @threshold(float* %dup2_V), !dbg !749 ; [#uses=1 type=float] [debug line = 15:2]
  call void @llvm.dbg.value(metadata !{float %thres}, i64 0, metadata !750), !dbg !749 ; [debug line = 15:2] [debug variable = thres]
  call void @llvm.dbg.declare(metadata !{i32* %sig_locs_V}, metadata !752), !dbg !754 ; [debug line = 19:14] [debug variable = sig_locs.V]
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @hits_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %hits_channel, i32* %hits_channel) ; [#uses=0 type=i32]
  %empty_32 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call fastcc void @detect(float* %dup3_V, float %thres, i32* %sig_locs_V, i32* %hits_channel)
  call fastcc void @parse(float* %dup4_V, i32* nocapture %hits_channel, i32* %sig_locs_V, float* %res_o_V)
  ret void, !dbg !755                             ; [debug line = 23:1]
}

; [#uses=1]
define internal fastcc void @detect(float* %signals_V, float %threshold, i32* %loc_V, i32* %hits_out) {
entry:
  %hits_def_channel = alloca i32                  ; [#uses=4 type=i32*]
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %loc_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_33 = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %threshold_read = call float @_ssdm_op_Read.ap_auto.float(float %threshold) ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %threshold_read}, i64 0, metadata !756), !dbg !907 ; [debug line = 3:45@20:2] [debug variable = threshold]
  %sigs_V = alloca float, align 4                 ; [#uses=1 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %sigs_V}, metadata !908), !dbg !910 ; [debug line = 18:14] [debug variable = sigs.V]
  call void @llvm.dbg.value(metadata !{float* %signals_V}, i64 0, metadata !911), !dbg !916 ; [debug line = 3:26@20:2] [debug variable = signals.V]
  call void @llvm.dbg.value(metadata !{float %threshold}, i64 0, metadata !756), !dbg !907 ; [debug line = 3:45@20:2] [debug variable = threshold]
  call void @llvm.dbg.value(metadata !{float* %sigs_V}, i64 0, metadata !917), !dbg !919 ; [debug line = 4:17@20:2] [debug variable = sig.V]
  call void @llvm.dbg.value(metadata !{i32* %loc_V}, i64 0, metadata !920), !dbg !925 ; [debug line = 4:35@20:2] [debug variable = loc.V]
  %p_read_to_int = bitcast float %threshold_read to i32 ; [#uses=2 type=i32]
  %tmp = trunc i32 %p_read_to_int to i23          ; [#uses=1 type=i23]
  %notrhs2 = icmp eq i23 %tmp, 0                  ; [#uses=1 type=i1]
  store i32 0, i32* %hits_def_channel
  br label %0, !dbg !926                          ; [debug line = 7:15@20:2]

; <label>:0                                       ; preds = %._crit_edge.i.i, %entry
  %tmp_30 = phi i20 [ 0, %entry ], [ %i, %._crit_edge.i.i ] ; [#uses=3 type=i20]
  %exitcond_i_i = icmp eq i20 %tmp_30, -448576, !dbg !926 ; [#uses=1 type=i1] [debug line = 7:15@20:2]
  %i = add i20 %tmp_30, 1, !dbg !929              ; [#uses=1 type=i20] [debug line = 7:31@20:2]
  br i1 %exitcond_i_i, label %.exit, label %1, !dbg !926 ; [debug line = 7:15@20:2]

; <label>:1                                       ; preds = %0
  %tmp_6 = zext i20 %tmp_30 to i32, !dbg !926     ; [#uses=1 type=i32] [debug line = 7:15@20:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  %tmp_29_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str18), !dbg !930 ; [#uses=1 type=i32] [debug line = 7:37@20:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str119) nounwind, !dbg !932 ; [debug line = 8:1@20:2]
  call void @llvm.dbg.value(metadata !{float* %signals_V}, i64 0, metadata !933), !dbg !935 ; [debug line = 83:56@9:22@20:2] [debug variable = stream<float>.V]
  %tmp_29 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %signals_V), !dbg !936 ; [#uses=3 type=float] [debug line = 85:9@9:22@20:2]
  call void @llvm.dbg.value(metadata !{float %tmp_29}, i64 0, metadata !131), !dbg !936 ; [debug line = 85:9@9:22@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_29}, i64 0, metadata !937), !dbg !934 ; [debug line = 9:22@20:2] [debug variable = currAmp]
  %currAmp_to_int = bitcast float %tmp_29 to i32  ; [#uses=2 type=i32]
  %tmp_21 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %currAmp_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_24 = trunc i32 %currAmp_to_int to i23      ; [#uses=1 type=i23]
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_read_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %notlhs = icmp ne i8 %tmp_21, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_24, 0                ; [#uses=1 type=i1]
  %tmp_23 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp_22, -1               ; [#uses=1 type=i1]
  %tmp_25 = or i1 %notrhs2, %notlhs1              ; [#uses=1 type=i1]
  %tmp_26 = and i1 %tmp_23, %tmp_25               ; [#uses=1 type=i1]
  %tmp_27 = fcmp ogt float %tmp_29, %threshold_read, !dbg !938 ; [#uses=1 type=i1] [debug line = 10:3@20:2]
  %tmp_28 = and i1 %tmp_26, %tmp_27, !dbg !938    ; [#uses=1 type=i1] [debug line = 10:3@20:2]
  br i1 %tmp_28, label %2, label %._crit_edge.i.i, !dbg !938 ; [debug line = 10:3@20:2]

; <label>:2                                       ; preds = %1
  %hits_def_channel_loa = load i32* %hits_def_channel, !dbg !939 ; [#uses=1 type=i32] [debug line = 11:4@20:2]
  %tmp_14_i_i = add nsw i32 %hits_def_channel_loa, 1, !dbg !939 ; [#uses=1 type=i32] [debug line = 11:4@20:2]
  call void @llvm.dbg.value(metadata !{float* %sigs_V}, i64 0, metadata !941), !dbg !943 ; [debug line = 98:48@12:4@20:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_29}, i64 0, metadata !944), !dbg !945 ; [debug line = 99:31@12:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_29}, i64 0, metadata !360), !dbg !945 ; [debug line = 99:31@12:4@20:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_auto.volatile.floatP(float* %sigs_V, float %tmp_29), !dbg !946 ; [debug line = 100:9@12:4@20:2]
  call void @llvm.dbg.value(metadata !{i32* %loc_V}, i64 0, metadata !947), !dbg !949 ; [debug line = 98:48@13:4@20:2] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i20 %tmp_30}, i64 0, metadata !950), !dbg !951 ; [debug line = 99:31@13:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_6}, i64 0, metadata !950), !dbg !951 ; [debug line = 99:31@13:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_6}, i64 0, metadata !504), !dbg !951 ; [debug line = 99:31@13:4@20:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %loc_V, i32 %tmp_6), !dbg !952 ; [debug line = 100:9@13:4@20:2]
  store i32 %tmp_14_i_i, i32* %hits_def_channel
  br label %._crit_edge.i.i, !dbg !953            ; [debug line = 14:3@20:2]

._crit_edge.i.i:                                  ; preds = %2, %1
  %empty_34 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str18, i32 %tmp_29_i_i), !dbg !954 ; [#uses=0 type=i32] [debug line = 15:2@20:2]
  call void @llvm.dbg.value(metadata !{i20 %i}, i64 0, metadata !955), !dbg !929 ; [debug line = 7:31@20:2] [debug variable = i]
  br label %0, !dbg !929                          ; [debug line = 7:31@20:2]

.exit:                                            ; preds = %0
  %hits_def_channel_loa_1 = load i32* %hits_def_channel ; [#uses=1 type=i32]
  %empty_35 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %hits_out, i32 %hits_def_channel_loa_1)
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1) ; [#uses=0 type=float]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_Write.ap_auto.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=22]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=6]
define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0) ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

; [#uses=5]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_36 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_36
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_37 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_38 = icmp ne i32 %empty_37, 0            ; [#uses=1 type=i1]
  ret i1 %empty_38
}

; [#uses=2]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare float @_autotb_FifoWrite_float(float*, float)

; [#uses=2]
declare i32 @_autotb_FifoRead_i32(i32*)

; [#uses=1]
declare float @_autotb_FifoRead_float(float*)

!opencl.kernels = !{!0, !7, !7, !7, !7, !13, !7, !16, !22, !7, !7, !28, !22, !34, !7, !36, !22, !7, !39, !34, !22, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"dat_i", metadata !"res_o"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_FLO &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"amplitude", metadata !"threshold"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_INT", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &", metadata !"DSTREAM_FLO &"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"sig_i", metadata !"hits", metadata !"sig", metadata !"loc", metadata !"sig_o"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"samples", metadata !"amplitude", metadata !"locations"}
!34 = metadata !{null, metadata !23, metadata !24, metadata !35, metadata !26, metadata !27, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!36 = metadata !{null, metadata !17, metadata !18, metadata !37, metadata !20, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"dat_i", metadata !"dat_1_o", metadata !"dat_2_o", metadata !"dat_3_o", metadata !"dat_4_o"}
!39 = metadata !{null, metadata !17, metadata !18, metadata !40, metadata !20, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_FLO", metadata !"DTYPE_INT &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"signals", metadata !"threshold", metadata !"hits", metadata !"sig", metadata !"loc"}
!42 = metadata !{i32 790531, metadata !43, metadata !"amplitude.V", null, i32 3, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!43 = metadata !{i32 786689, metadata !44, metadata !"amplitude", metadata !45, i32 16777219, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786478, i32 0, metadata !45, metadata !"threshold", metadata !"threshold", metadata !"_Z9thresholdRN3hls6streamIfEERf", metadata !45, i32 3, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 3} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786473, metadata !"threshold.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !48, metadata !109}
!48 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_reference_type ]
!49 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !45, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 786434, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !53, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!51 = metadata !{i32 786489, null, metadata !"hls", metadata !52, i32 23} ; [ DW_TAG_namespace ]
!52 = metadata !{i32 786473, metadata !"C:/Xilinx/SDx/2016.4/Vivado_HLS/common/technology/autopilot\5Chls_stream.h", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!53 = metadata !{metadata !54, metadata !56, metadata !62, metadata !68, metadata !73, metadata !77, metadata !81, metadata !86, metadata !91, metadata !92, metadata !93, metadata !96, metadata !99, metadata !100, metadata !103}
!54 = metadata !{i32 786445, metadata !50, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!55 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786478, i32 0, metadata !50, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !59}
!59 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !50} ; [ DW_TAG_pointer_type ]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!62 = metadata !{i32 786478, i32 0, metadata !50, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{null, metadata !59, metadata !65}
!65 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ]
!66 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_const_type ]
!67 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 786478, i32 0, metadata !50, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !59, metadata !71}
!71 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_reference_type ]
!72 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ]
!73 = metadata !{i32 786478, i32 0, metadata !50, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !52, i32 48, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{metadata !76, metadata !59, metadata !71}
!76 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_reference_type ]
!77 = metadata !{i32 786478, i32 0, metadata !50, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !52, i32 55, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !59, metadata !80}
!80 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_reference_type ]
!81 = metadata !{i32 786478, i32 0, metadata !50, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !52, i32 59, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{null, metadata !59, metadata !84}
!84 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_reference_type ]
!85 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ]
!86 = metadata !{i32 786478, i32 0, metadata !50, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !52, i32 66, metadata !87, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{metadata !89, metadata !90}
!89 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!90 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !72} ; [ DW_TAG_pointer_type ]
!91 = metadata !{i32 786478, i32 0, metadata !50, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !52, i32 71, metadata !87, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786478, i32 0, metadata !50, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !52, i32 77, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786478, i32 0, metadata !50, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{metadata !55, metadata !59}
!96 = metadata !{i32 786478, i32 0, metadata !50, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !52, i32 90, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{metadata !89, metadata !59, metadata !80}
!99 = metadata !{i32 786478, i32 0, metadata !50, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786478, i32 0, metadata !50, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !52, i32 104, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !89, metadata !59, metadata !84}
!103 = metadata !{i32 786478, i32 0, metadata !50, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !52, i32 111, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{metadata !106, metadata !59}
!106 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !55, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!109 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_reference_type ]
!110 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !45, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!111 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 786438, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !113, i32 0, null, metadata !107} ; [ DW_TAG_class_field_type ]
!113 = metadata !{metadata !54}
!114 = metadata !{i32 3, i32 29, metadata !44, null}
!115 = metadata !{i32 6, i32 15, metadata !116, null}
!116 = metadata !{i32 786443, metadata !117, i32 6, i32 2, metadata !45, i32 1} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !44, i32 3, i32 61, metadata !45, i32 0} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 6, i32 31, metadata !116, null}
!119 = metadata !{i32 6, i32 37, metadata !120, null}
!120 = metadata !{i32 786443, metadata !116, i32 6, i32 36, metadata !45, i32 2} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 7, i32 1, metadata !120, null}
!122 = metadata !{i32 790531, metadata !123, metadata !"stream<float>.V", null, i32 83, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!123 = metadata !{i32 786689, metadata !124, metadata !"this", metadata !52, i32 16777299, metadata !125, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 786478, i32 0, metadata !51, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !93, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!127 = metadata !{i32 83, i32 56, metadata !124, metadata !128}
!128 = metadata !{i32 8, i32 9, metadata !120, null}
!129 = metadata !{i32 85, i32 9, metadata !130, metadata !128}
!130 = metadata !{i32 786443, metadata !124, i32 83, i32 63, metadata !52, i32 3} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786688, metadata !130, metadata !"tmp", metadata !52, i32 84, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786688, metadata !117, metadata !"sum", metadata !45, i32 5, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 9, i32 2, metadata !120, null}
!134 = metadata !{i32 786688, metadata !116, metadata !"i", metadata !45, i32 6, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!136 = metadata !{i32 10, i32 2, metadata !117, null}
!137 = metadata !{i32 790534, metadata !44, metadata !"threshold", null, i32 3, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!138 = metadata !{i32 3, i32 51, metadata !44, null}
!139 = metadata !{i32 11, i32 1, metadata !117, null}
!140 = metadata !{i32 22, i32 2, metadata !141, null}
!141 = metadata !{i32 786443, metadata !142, i32 4, i32 59, metadata !143, i32 0} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 786478, i32 0, metadata !143, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsRN3hls6streamIfEES2_", metadata !143, i32 4, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 4} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786473, metadata !"toplevel.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{null, metadata !146, metadata !146}
!146 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_reference_type ]
!147 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !143, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ]
!148 = metadata !{i32 786434, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !149, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!149 = metadata !{metadata !150, metadata !151, metadata !155, metadata !158, metadata !163, metadata !167, metadata !170, metadata !173, metadata !177, metadata !178, metadata !179, metadata !182, metadata !185, metadata !186, metadata !189}
!150 = metadata !{i32 786445, metadata !148, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!151 = metadata !{i32 786478, i32 0, metadata !148, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !152, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{null, metadata !154}
!154 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !148} ; [ DW_TAG_pointer_type ]
!155 = metadata !{i32 786478, i32 0, metadata !148, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !154, metadata !65}
!158 = metadata !{i32 786478, i32 0, metadata !148, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !159, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!160 = metadata !{null, metadata !154, metadata !161}
!161 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_reference_type ]
!162 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_const_type ]
!163 = metadata !{i32 786478, i32 0, metadata !148, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !52, i32 48, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{metadata !166, metadata !154, metadata !161}
!166 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_reference_type ]
!167 = metadata !{i32 786478, i32 0, metadata !148, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !52, i32 55, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!169 = metadata !{null, metadata !154, metadata !80}
!170 = metadata !{i32 786478, i32 0, metadata !148, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !52, i32 59, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{null, metadata !154, metadata !84}
!173 = metadata !{i32 786478, i32 0, metadata !148, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !52, i32 66, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !89, metadata !176}
!176 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !162} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 786478, i32 0, metadata !148, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !52, i32 71, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786478, i32 0, metadata !148, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !52, i32 77, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786478, i32 0, metadata !148, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{metadata !55, metadata !154}
!182 = metadata !{i32 786478, i32 0, metadata !148, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !52, i32 90, metadata !183, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!184 = metadata !{metadata !89, metadata !154, metadata !80}
!185 = metadata !{i32 786478, i32 0, metadata !148, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786478, i32 0, metadata !148, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !52, i32 104, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{metadata !89, metadata !154, metadata !84}
!189 = metadata !{i32 786478, i32 0, metadata !148, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !52, i32 111, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{metadata !106, metadata !154}
!192 = metadata !{i32 790531, metadata !193, metadata !"sig_i.V", null, i32 3, metadata !296, i32 0, metadata !140} ; [ DW_TAG_arg_variable_field ]
!193 = metadata !{i32 786689, metadata !194, metadata !"sig_i", metadata !195, i32 16777219, metadata !198, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 786478, i32 0, metadata !195, metadata !"parse", metadata !"parse", metadata !"_Z5parseRN3hls6streamIfEEiS2_RNS0_IiEES2_", metadata !195, i32 3, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 7} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 786473, metadata !"parse.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{null, metadata !198, metadata !244, metadata !198, metadata !245, metadata !198}
!198 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_reference_type ]
!199 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !195, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ]
!200 = metadata !{i32 786434, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !201, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!201 = metadata !{metadata !202, metadata !203, metadata !207, metadata !210, metadata !215, metadata !219, metadata !222, metadata !225, metadata !229, metadata !230, metadata !231, metadata !234, metadata !237, metadata !238, metadata !241}
!202 = metadata !{i32 786445, metadata !200, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!203 = metadata !{i32 786478, i32 0, metadata !200, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !204, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!205 = metadata !{null, metadata !206}
!206 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !200} ; [ DW_TAG_pointer_type ]
!207 = metadata !{i32 786478, i32 0, metadata !200, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{null, metadata !206, metadata !65}
!210 = metadata !{i32 786478, i32 0, metadata !200, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{null, metadata !206, metadata !213}
!213 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_reference_type ]
!214 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_const_type ]
!215 = metadata !{i32 786478, i32 0, metadata !200, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !52, i32 48, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !218, metadata !206, metadata !213}
!218 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_reference_type ]
!219 = metadata !{i32 786478, i32 0, metadata !200, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !52, i32 55, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{null, metadata !206, metadata !80}
!222 = metadata !{i32 786478, i32 0, metadata !200, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !52, i32 59, metadata !223, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!224 = metadata !{null, metadata !206, metadata !84}
!225 = metadata !{i32 786478, i32 0, metadata !200, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !52, i32 66, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{metadata !89, metadata !228}
!228 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !214} ; [ DW_TAG_pointer_type ]
!229 = metadata !{i32 786478, i32 0, metadata !200, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !52, i32 71, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786478, i32 0, metadata !200, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !52, i32 77, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786478, i32 0, metadata !200, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!233 = metadata !{metadata !55, metadata !206}
!234 = metadata !{i32 786478, i32 0, metadata !200, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !52, i32 90, metadata !235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{metadata !89, metadata !206, metadata !80}
!237 = metadata !{i32 786478, i32 0, metadata !200, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !223, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 786478, i32 0, metadata !200, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !52, i32 104, metadata !239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!240 = metadata !{metadata !89, metadata !206, metadata !84}
!241 = metadata !{i32 786478, i32 0, metadata !200, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !52, i32 111, metadata !242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!242 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!243 = metadata !{metadata !106, metadata !206}
!244 = metadata !{i32 786454, null, metadata !"DTYPE_INT", metadata !195, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ]
!245 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_reference_type ]
!246 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !195, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_typedef ]
!247 = metadata !{i32 786434, metadata !51, metadata !"stream<int>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !248, i32 0, null, metadata !294} ; [ DW_TAG_class_type ]
!248 = metadata !{metadata !249, metadata !250, metadata !254, metadata !257, metadata !262, metadata !266, metadata !270, metadata !275, metadata !279, metadata !280, metadata !281, metadata !284, metadata !287, metadata !288, metadata !291}
!249 = metadata !{i32 786445, metadata !247, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_member ]
!250 = metadata !{i32 786478, i32 0, metadata !247, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{null, metadata !253}
!253 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !247} ; [ DW_TAG_pointer_type ]
!254 = metadata !{i32 786478, i32 0, metadata !247, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !255, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{null, metadata !253, metadata !65}
!257 = metadata !{i32 786478, i32 0, metadata !247, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{null, metadata !253, metadata !260}
!260 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_reference_type ]
!261 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_const_type ]
!262 = metadata !{i32 786478, i32 0, metadata !247, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !52, i32 48, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{metadata !265, metadata !253, metadata !260}
!265 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_reference_type ]
!266 = metadata !{i32 786478, i32 0, metadata !247, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !52, i32 55, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!268 = metadata !{null, metadata !253, metadata !269}
!269 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_reference_type ]
!270 = metadata !{i32 786478, i32 0, metadata !247, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !52, i32 59, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!272 = metadata !{null, metadata !253, metadata !273}
!273 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_reference_type ]
!274 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_const_type ]
!275 = metadata !{i32 786478, i32 0, metadata !247, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !52, i32 66, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{metadata !89, metadata !278}
!278 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !261} ; [ DW_TAG_pointer_type ]
!279 = metadata !{i32 786478, i32 0, metadata !247, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !52, i32 71, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786478, i32 0, metadata !247, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !52, i32 77, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, metadata !247, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !52, i32 83, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{metadata !135, metadata !253}
!284 = metadata !{i32 786478, i32 0, metadata !247, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !52, i32 90, metadata !285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!286 = metadata !{metadata !89, metadata !253, metadata !269}
!287 = metadata !{i32 786478, i32 0, metadata !247, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !52, i32 98, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786478, i32 0, metadata !247, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !52, i32 104, metadata !289, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!290 = metadata !{metadata !89, metadata !253, metadata !273}
!291 = metadata !{i32 786478, i32 0, metadata !247, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !52, i32 111, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{metadata !106, metadata !253}
!294 = metadata !{metadata !295}
!295 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !135, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!296 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ]
!297 = metadata !{i32 786438, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !298, i32 0, null, metadata !107} ; [ DW_TAG_class_field_type ]
!298 = metadata !{metadata !202}
!299 = metadata !{i32 3, i32 25, metadata !194, metadata !140}
!300 = metadata !{i32 786689, metadata !194, metadata !"hits", metadata !195, i32 33554436, metadata !244, i32 0, metadata !140} ; [ DW_TAG_arg_variable ]
!301 = metadata !{i32 4, i32 16, metadata !194, metadata !140}
!302 = metadata !{i32 790531, metadata !303, metadata !"loc.V", null, i32 6, metadata !304, i32 0, metadata !140} ; [ DW_TAG_arg_variable_field ]
!303 = metadata !{i32 786689, metadata !194, metadata !"loc", metadata !195, i32 67108870, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!304 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ]
!305 = metadata !{i32 786438, metadata !51, metadata !"stream<int>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !306, i32 0, null, metadata !294} ; [ DW_TAG_class_field_type ]
!306 = metadata !{metadata !249}
!307 = metadata !{i32 6, i32 19, metadata !194, metadata !140}
!308 = metadata !{i32 790531, metadata !309, metadata !"sig_o.V", null, i32 7, metadata !296, i32 0, metadata !140} ; [ DW_TAG_arg_variable_field ]
!309 = metadata !{i32 786689, metadata !194, metadata !"sig_o", metadata !195, i32 83886087, metadata !198, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!310 = metadata !{i32 7, i32 19, metadata !194, metadata !140}
!311 = metadata !{i32 10, i32 29, metadata !312, metadata !140}
!312 = metadata !{i32 786443, metadata !313, i32 10, i32 16, metadata !195, i32 1} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 786443, metadata !194, i32 7, i32 26, metadata !195, i32 0} ; [ DW_TAG_lexical_block ]
!314 = metadata !{i32 10, i32 41, metadata !312, metadata !140}
!315 = metadata !{i32 10, i32 47, metadata !316, metadata !140}
!316 = metadata !{i32 786443, metadata !312, i32 10, i32 46, metadata !195, i32 2} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 11, i32 1, metadata !316, metadata !140}
!318 = metadata !{i32 12, i32 1, metadata !316, metadata !140}
!319 = metadata !{i32 790531, metadata !320, metadata !"stream<int>.V", null, i32 83, metadata !323, i32 0, metadata !324} ; [ DW_TAG_arg_variable_field ]
!320 = metadata !{i32 786689, metadata !321, metadata !"this", metadata !52, i32 16777299, metadata !322, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!321 = metadata !{i32 786478, i32 0, metadata !51, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !52, i32 83, metadata !282, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !281, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !247} ; [ DW_TAG_pointer_type ]
!323 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ]
!324 = metadata !{i32 13, i32 23, metadata !316, metadata !140}
!325 = metadata !{i32 83, i32 56, metadata !321, metadata !324}
!326 = metadata !{i32 85, i32 9, metadata !327, metadata !324}
!327 = metadata !{i32 786443, metadata !321, i32 83, i32 63, metadata !52, i32 7} ; [ DW_TAG_lexical_block ]
!328 = metadata !{i32 786688, metadata !327, metadata !"tmp", metadata !52, i32 84, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!329 = metadata !{i32 786688, metadata !316, metadata !"location", metadata !195, i32 13, metadata !244, i32 0, metadata !140} ; [ DW_TAG_auto_variable ]
!330 = metadata !{i32 15, i32 38, metadata !316, metadata !140}
!331 = metadata !{i32 786688, metadata !316, metadata !"b", metadata !195, i32 15, metadata !244, i32 0, metadata !140} ; [ DW_TAG_auto_variable ]
!332 = metadata !{i32 16, i32 34, metadata !316, metadata !140}
!333 = metadata !{i32 786688, metadata !316, metadata !"e", metadata !195, i32 16, metadata !244, i32 0, metadata !140} ; [ DW_TAG_auto_variable ]
!334 = metadata !{i32 18, i32 3, metadata !316, metadata !140}
!335 = metadata !{i32 19, i32 3, metadata !316, metadata !140}
!336 = metadata !{i32 21, i32 17, metadata !316, metadata !140}
!337 = metadata !{i32 21, i32 43, metadata !338, metadata !140}
!338 = metadata !{i32 786443, metadata !316, i32 21, i32 43, metadata !195, i32 3} ; [ DW_TAG_lexical_block ]
!339 = metadata !{i32 790531, metadata !123, metadata !"stream<float>.V", null, i32 83, metadata !126, i32 0, metadata !337} ; [ DW_TAG_arg_variable_field ]
!340 = metadata !{i32 83, i32 56, metadata !124, metadata !337}
!341 = metadata !{i32 85, i32 9, metadata !130, metadata !337}
!342 = metadata !{i32 21, i32 54, metadata !338, metadata !140}
!343 = metadata !{i32 22, i32 15, metadata !316, metadata !140}
!344 = metadata !{i32 786688, metadata !313, metadata !"read_count", metadata !195, i32 9, metadata !244, i32 0, metadata !140} ; [ DW_TAG_auto_variable ]
!345 = metadata !{i32 22, i32 39, metadata !346, metadata !140}
!346 = metadata !{i32 786443, metadata !316, i32 22, i32 39, metadata !195, i32 4} ; [ DW_TAG_lexical_block ]
!347 = metadata !{i32 790531, metadata !123, metadata !"stream<float>.V", null, i32 83, metadata !126, i32 0, metadata !348} ; [ DW_TAG_arg_variable_field ]
!348 = metadata !{i32 22, i32 51, metadata !346, metadata !140}
!349 = metadata !{i32 83, i32 56, metadata !124, metadata !348}
!350 = metadata !{i32 85, i32 9, metadata !130, metadata !348}
!351 = metadata !{i32 790531, metadata !352, metadata !"stream<float>.V", null, i32 98, metadata !355, i32 0, metadata !348} ; [ DW_TAG_arg_variable_field ]
!352 = metadata !{i32 786689, metadata !353, metadata !"this", metadata !52, i32 16777314, metadata !354, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!353 = metadata !{i32 786478, i32 0, metadata !51, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !237, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ]
!355 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ]
!356 = metadata !{i32 98, i32 48, metadata !353, metadata !348}
!357 = metadata !{i32 786688, metadata !358, metadata !"tmp", metadata !52, i32 99, metadata !55, i32 0, metadata !348} ; [ DW_TAG_auto_variable ]
!358 = metadata !{i32 786443, metadata !353, i32 98, i32 79, metadata !52, i32 5} ; [ DW_TAG_lexical_block ]
!359 = metadata !{i32 99, i32 31, metadata !358, metadata !348}
!360 = metadata !{i32 786688, metadata !358, metadata !"tmp", metadata !52, i32 99, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!361 = metadata !{i32 100, i32 9, metadata !358, metadata !348}
!362 = metadata !{i32 22, i32 63, metadata !346, metadata !140}
!363 = metadata !{i32 24, i32 2, metadata !316, metadata !140}
!364 = metadata !{i32 790531, metadata !365, metadata !"samples.V", null, i32 3, metadata !462, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!365 = metadata !{i32 786689, metadata !366, metadata !"samples", metadata !367, i32 16777219, metadata !370, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!366 = metadata !{i32 786478, i32 0, metadata !367, metadata !"findpeaks", metadata !"findpeaks", metadata !"_Z9findpeaksRN3hls6streamIfEES2_RNS0_IiEE", metadata !367, i32 3, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 5} ; [ DW_TAG_subprogram ]
!367 = metadata !{i32 786473, metadata !"findpeaks.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!368 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!369 = metadata !{null, metadata !370, metadata !370, metadata !416}
!370 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !371} ; [ DW_TAG_reference_type ]
!371 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !367, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_typedef ]
!372 = metadata !{i32 786434, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !373, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!373 = metadata !{metadata !374, metadata !375, metadata !379, metadata !382, metadata !387, metadata !391, metadata !394, metadata !397, metadata !401, metadata !402, metadata !403, metadata !406, metadata !409, metadata !410, metadata !413}
!374 = metadata !{i32 786445, metadata !372, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!375 = metadata !{i32 786478, i32 0, metadata !372, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{null, metadata !378}
!378 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !372} ; [ DW_TAG_pointer_type ]
!379 = metadata !{i32 786478, i32 0, metadata !372, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !380, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!380 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !381, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!381 = metadata !{null, metadata !378, metadata !65}
!382 = metadata !{i32 786478, i32 0, metadata !372, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !383, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!383 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!384 = metadata !{null, metadata !378, metadata !385}
!385 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !386} ; [ DW_TAG_reference_type ]
!386 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_const_type ]
!387 = metadata !{i32 786478, i32 0, metadata !372, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !52, i32 48, metadata !388, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!389 = metadata !{metadata !390, metadata !378, metadata !385}
!390 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_reference_type ]
!391 = metadata !{i32 786478, i32 0, metadata !372, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !52, i32 55, metadata !392, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!392 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !393, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!393 = metadata !{null, metadata !378, metadata !80}
!394 = metadata !{i32 786478, i32 0, metadata !372, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !52, i32 59, metadata !395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!396 = metadata !{null, metadata !378, metadata !84}
!397 = metadata !{i32 786478, i32 0, metadata !372, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !52, i32 66, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!399 = metadata !{metadata !89, metadata !400}
!400 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !386} ; [ DW_TAG_pointer_type ]
!401 = metadata !{i32 786478, i32 0, metadata !372, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !52, i32 71, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 786478, i32 0, metadata !372, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !52, i32 77, metadata !392, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786478, i32 0, metadata !372, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{metadata !55, metadata !378}
!406 = metadata !{i32 786478, i32 0, metadata !372, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !52, i32 90, metadata !407, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!408 = metadata !{metadata !89, metadata !378, metadata !80}
!409 = metadata !{i32 786478, i32 0, metadata !372, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786478, i32 0, metadata !372, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !52, i32 104, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{metadata !89, metadata !378, metadata !84}
!413 = metadata !{i32 786478, i32 0, metadata !372, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !52, i32 111, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{metadata !106, metadata !378}
!416 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !417} ; [ DW_TAG_reference_type ]
!417 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !367, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !418} ; [ DW_TAG_typedef ]
!418 = metadata !{i32 786434, metadata !51, metadata !"stream<int>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !419, i32 0, null, metadata !294} ; [ DW_TAG_class_type ]
!419 = metadata !{metadata !420, metadata !421, metadata !425, metadata !428, metadata !433, metadata !437, metadata !440, metadata !443, metadata !447, metadata !448, metadata !449, metadata !452, metadata !455, metadata !456, metadata !459}
!420 = metadata !{i32 786445, metadata !418, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_member ]
!421 = metadata !{i32 786478, i32 0, metadata !418, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !422, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!423 = metadata !{null, metadata !424}
!424 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !418} ; [ DW_TAG_pointer_type ]
!425 = metadata !{i32 786478, i32 0, metadata !418, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !426, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!426 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!427 = metadata !{null, metadata !424, metadata !65}
!428 = metadata !{i32 786478, i32 0, metadata !418, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!430 = metadata !{null, metadata !424, metadata !431}
!431 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !432} ; [ DW_TAG_reference_type ]
!432 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !418} ; [ DW_TAG_const_type ]
!433 = metadata !{i32 786478, i32 0, metadata !418, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !52, i32 48, metadata !434, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!434 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!435 = metadata !{metadata !436, metadata !424, metadata !431}
!436 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !418} ; [ DW_TAG_reference_type ]
!437 = metadata !{i32 786478, i32 0, metadata !418, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !52, i32 55, metadata !438, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!438 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!439 = metadata !{null, metadata !424, metadata !269}
!440 = metadata !{i32 786478, i32 0, metadata !418, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !52, i32 59, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!442 = metadata !{null, metadata !424, metadata !273}
!443 = metadata !{i32 786478, i32 0, metadata !418, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !52, i32 66, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !445, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!445 = metadata !{metadata !89, metadata !446}
!446 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !432} ; [ DW_TAG_pointer_type ]
!447 = metadata !{i32 786478, i32 0, metadata !418, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !52, i32 71, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!448 = metadata !{i32 786478, i32 0, metadata !418, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !52, i32 77, metadata !438, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786478, i32 0, metadata !418, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !52, i32 83, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!451 = metadata !{metadata !135, metadata !424}
!452 = metadata !{i32 786478, i32 0, metadata !418, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !52, i32 90, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!454 = metadata !{metadata !89, metadata !424, metadata !269}
!455 = metadata !{i32 786478, i32 0, metadata !418, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !52, i32 98, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 786478, i32 0, metadata !418, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !52, i32 104, metadata !457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!458 = metadata !{metadata !89, metadata !424, metadata !273}
!459 = metadata !{i32 786478, i32 0, metadata !418, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !52, i32 111, metadata !460, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!460 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!461 = metadata !{metadata !106, metadata !424}
!462 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !463} ; [ DW_TAG_pointer_type ]
!463 = metadata !{i32 786438, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !464, i32 0, null, metadata !107} ; [ DW_TAG_class_field_type ]
!464 = metadata !{metadata !374}
!465 = metadata !{i32 3, i32 29, metadata !366, null}
!466 = metadata !{i32 790531, metadata !467, metadata !"amplitude.V", null, i32 4, metadata !462, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!467 = metadata !{i32 786689, metadata !366, metadata !"amplitude", metadata !367, i32 33554436, metadata !370, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!468 = metadata !{i32 4, i32 23, metadata !366, null}
!469 = metadata !{i32 790531, metadata !470, metadata !"locations.V", null, i32 5, metadata !471, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!470 = metadata !{i32 786689, metadata !366, metadata !"locations", metadata !367, i32 50331653, metadata !416, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!471 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_pointer_type ]
!472 = metadata !{i32 786438, metadata !51, metadata !"stream<int>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !473, i32 0, null, metadata !294} ; [ DW_TAG_class_field_type ]
!473 = metadata !{metadata !420}
!474 = metadata !{i32 5, i32 23, metadata !366, null}
!475 = metadata !{i32 7, i32 30, metadata !476, null}
!476 = metadata !{i32 786443, metadata !366, i32 5, i32 34, metadata !367, i32 0} ; [ DW_TAG_lexical_block ]
!477 = metadata !{i32 10, i32 29, metadata !478, null}
!478 = metadata !{i32 786443, metadata !476, i32 10, i32 16, metadata !367, i32 1} ; [ DW_TAG_lexical_block ]
!479 = metadata !{i32 10, i32 45, metadata !478, null}
!480 = metadata !{i32 10, i32 51, metadata !481, null}
!481 = metadata !{i32 786443, metadata !478, i32 10, i32 50, metadata !367, i32 2} ; [ DW_TAG_lexical_block ]
!482 = metadata !{i32 11, i32 1, metadata !481, null}
!483 = metadata !{i32 790529, metadata !484, metadata !"shift_buf[1]", null, i32 7, metadata !489, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!484 = metadata !{i32 786688, metadata !476, metadata !"shift_buf", metadata !367, i32 7, metadata !485, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!485 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !486, metadata !487, i32 0, i32 0} ; [ DW_TAG_array_type ]
!486 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !367, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!487 = metadata !{metadata !488}
!488 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!489 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 32, i32 0, i32 0, metadata !486, metadata !487, i32 0, i32 0} ; [ DW_TAG_array_type ]
!490 = metadata !{i32 14, i32 3, metadata !481, null}
!491 = metadata !{i32 83, i32 56, metadata !124, metadata !492}
!492 = metadata !{i32 15, i32 18, metadata !481, null}
!493 = metadata !{i32 85, i32 9, metadata !130, metadata !492}
!494 = metadata !{i32 790529, metadata !484, metadata !"shift_buf[0]", null, i32 7, metadata !489, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!495 = metadata !{i32 17, i32 3, metadata !481, null}
!496 = metadata !{i32 790531, metadata !497, metadata !"stream<int>.V", null, i32 98, metadata !500, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!497 = metadata !{i32 786689, metadata !498, metadata !"this", metadata !52, i32 16777314, metadata !499, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!498 = metadata !{i32 786478, i32 0, metadata !51, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !52, i32 98, metadata !441, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !455, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!499 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !418} ; [ DW_TAG_pointer_type ]
!500 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_pointer_type ]
!501 = metadata !{i32 98, i32 48, metadata !498, metadata !502}
!502 = metadata !{i32 18, i32 4, metadata !503, null}
!503 = metadata !{i32 786443, metadata !481, i32 17, i32 66, metadata !367, i32 3} ; [ DW_TAG_lexical_block ]
!504 = metadata !{i32 786688, metadata !505, metadata !"tmp", metadata !52, i32 99, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!505 = metadata !{i32 786443, metadata !498, i32 98, i32 79, metadata !52, i32 5} ; [ DW_TAG_lexical_block ]
!506 = metadata !{i32 99, i32 31, metadata !505, metadata !502}
!507 = metadata !{i32 100, i32 9, metadata !505, metadata !502}
!508 = metadata !{i32 790531, metadata !352, metadata !"stream<float>.V", null, i32 98, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!509 = metadata !{i32 98, i32 48, metadata !353, metadata !510}
!510 = metadata !{i32 19, i32 4, metadata !503, null}
!511 = metadata !{i32 99, i32 31, metadata !358, metadata !510}
!512 = metadata !{i32 100, i32 9, metadata !358, metadata !510}
!513 = metadata !{i32 20, i32 3, metadata !503, null}
!514 = metadata !{i32 21, i32 2, metadata !481, null}
!515 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !367, i32 10, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!516 = metadata !{i32 23, i32 1, metadata !476, null}
!517 = metadata !{i32 790531, metadata !518, metadata !"dat_i.V", null, i32 4, metadata !569, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!518 = metadata !{i32 786689, metadata !519, metadata !"dat_i", metadata !520, i32 16777220, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!519 = metadata !{i32 786478, i32 0, metadata !520, metadata !"duplicate", metadata !"duplicate", metadata !"_Z9duplicateRN3hls6streamIfEES2_S2_S2_S2_", metadata !520, i32 4, metadata !521, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 5} ; [ DW_TAG_subprogram ]
!520 = metadata !{i32 786473, metadata !"duplicate.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!522 = metadata !{null, metadata !523, metadata !523, metadata !523, metadata !523, metadata !523}
!523 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !524} ; [ DW_TAG_reference_type ]
!524 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !520, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !525} ; [ DW_TAG_typedef ]
!525 = metadata !{i32 786434, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !526, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!526 = metadata !{metadata !527, metadata !528, metadata !532, metadata !535, metadata !540, metadata !544, metadata !547, metadata !550, metadata !554, metadata !555, metadata !556, metadata !559, metadata !562, metadata !563, metadata !566}
!527 = metadata !{i32 786445, metadata !525, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!528 = metadata !{i32 786478, i32 0, metadata !525, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !529, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!530 = metadata !{null, metadata !531}
!531 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !525} ; [ DW_TAG_pointer_type ]
!532 = metadata !{i32 786478, i32 0, metadata !525, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !534, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!534 = metadata !{null, metadata !531, metadata !65}
!535 = metadata !{i32 786478, i32 0, metadata !525, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !536, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!536 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !537, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!537 = metadata !{null, metadata !531, metadata !538}
!538 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !539} ; [ DW_TAG_reference_type ]
!539 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !525} ; [ DW_TAG_const_type ]
!540 = metadata !{i32 786478, i32 0, metadata !525, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !52, i32 48, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!541 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!542 = metadata !{metadata !543, metadata !531, metadata !538}
!543 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !525} ; [ DW_TAG_reference_type ]
!544 = metadata !{i32 786478, i32 0, metadata !525, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !52, i32 55, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!546 = metadata !{null, metadata !531, metadata !80}
!547 = metadata !{i32 786478, i32 0, metadata !525, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !52, i32 59, metadata !548, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!548 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !549, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!549 = metadata !{null, metadata !531, metadata !84}
!550 = metadata !{i32 786478, i32 0, metadata !525, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !52, i32 66, metadata !551, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!551 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !552, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!552 = metadata !{metadata !89, metadata !553}
!553 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !539} ; [ DW_TAG_pointer_type ]
!554 = metadata !{i32 786478, i32 0, metadata !525, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !52, i32 71, metadata !551, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!555 = metadata !{i32 786478, i32 0, metadata !525, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !52, i32 77, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!556 = metadata !{i32 786478, i32 0, metadata !525, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !557, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!557 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !558, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!558 = metadata !{metadata !55, metadata !531}
!559 = metadata !{i32 786478, i32 0, metadata !525, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !52, i32 90, metadata !560, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!560 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !561, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!561 = metadata !{metadata !89, metadata !531, metadata !80}
!562 = metadata !{i32 786478, i32 0, metadata !525, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !548, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!563 = metadata !{i32 786478, i32 0, metadata !525, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !52, i32 104, metadata !564, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!564 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !565, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!565 = metadata !{metadata !89, metadata !531, metadata !84}
!566 = metadata !{i32 786478, i32 0, metadata !525, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !52, i32 111, metadata !567, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!567 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !568, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!568 = metadata !{metadata !106, metadata !531}
!569 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !570} ; [ DW_TAG_pointer_type ]
!570 = metadata !{i32 786438, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !571, i32 0, null, metadata !107} ; [ DW_TAG_class_field_type ]
!571 = metadata !{metadata !527}
!572 = metadata !{i32 4, i32 29, metadata !519, null}
!573 = metadata !{i32 790531, metadata !574, metadata !"dat_1_o.V", null, i32 4, metadata !569, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!574 = metadata !{i32 786689, metadata !519, metadata !"dat_1_o", metadata !520, i32 33554436, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!575 = metadata !{i32 4, i32 49, metadata !519, null}
!576 = metadata !{i32 790531, metadata !577, metadata !"dat_2_o.V", null, i32 4, metadata !569, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!577 = metadata !{i32 786689, metadata !519, metadata !"dat_2_o", metadata !520, i32 50331652, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!578 = metadata !{i32 4, i32 71, metadata !519, null}
!579 = metadata !{i32 790531, metadata !580, metadata !"dat_3_o.V", null, i32 5, metadata !569, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!580 = metadata !{i32 786689, metadata !519, metadata !"dat_3_o", metadata !520, i32 67108869, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!581 = metadata !{i32 5, i32 25, metadata !519, null}
!582 = metadata !{i32 790531, metadata !583, metadata !"dat_4_o.V", null, i32 5, metadata !569, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!583 = metadata !{i32 786689, metadata !519, metadata !"dat_4_o", metadata !520, i32 83886085, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!584 = metadata !{i32 5, i32 47, metadata !519, null}
!585 = metadata !{i32 6, i32 15, metadata !586, null}
!586 = metadata !{i32 786443, metadata !587, i32 6, i32 2, metadata !520, i32 1} ; [ DW_TAG_lexical_block ]
!587 = metadata !{i32 786443, metadata !519, i32 5, i32 56, metadata !520, i32 0} ; [ DW_TAG_lexical_block ]
!588 = metadata !{i32 6, i32 31, metadata !586, null}
!589 = metadata !{i32 6, i32 37, metadata !590, null}
!590 = metadata !{i32 786443, metadata !586, i32 6, i32 36, metadata !520, i32 2} ; [ DW_TAG_lexical_block ]
!591 = metadata !{i32 7, i32 1, metadata !590, null}
!592 = metadata !{i32 83, i32 56, metadata !124, metadata !593}
!593 = metadata !{i32 8, i32 14, metadata !590, null}
!594 = metadata !{i32 85, i32 9, metadata !130, metadata !593}
!595 = metadata !{i32 786688, metadata !590, metadata !"val", metadata !520, i32 8, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!596 = metadata !{i32 98, i32 48, metadata !353, metadata !597}
!597 = metadata !{i32 9, i32 3, metadata !590, null}
!598 = metadata !{i32 99, i32 31, metadata !358, metadata !597}
!599 = metadata !{i32 100, i32 9, metadata !358, metadata !597}
!600 = metadata !{i32 98, i32 48, metadata !353, metadata !601}
!601 = metadata !{i32 10, i32 3, metadata !590, null}
!602 = metadata !{i32 100, i32 9, metadata !358, metadata !601}
!603 = metadata !{i32 98, i32 48, metadata !353, metadata !604}
!604 = metadata !{i32 11, i32 3, metadata !590, null}
!605 = metadata !{i32 100, i32 9, metadata !358, metadata !604}
!606 = metadata !{i32 98, i32 48, metadata !353, metadata !607}
!607 = metadata !{i32 12, i32 3, metadata !590, null}
!608 = metadata !{i32 100, i32 9, metadata !358, metadata !607}
!609 = metadata !{i32 13, i32 2, metadata !590, null}
!610 = metadata !{i32 786688, metadata !586, metadata !"i", metadata !520, i32 6, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!611 = metadata !{i32 14, i32 1, metadata !587, null}
!612 = metadata !{i32 5, i32 1, metadata !613, null}
!613 = metadata !{i32 786443, metadata !614, i32 4, i32 59, metadata !143, i32 0} ; [ DW_TAG_lexical_block ]
!614 = metadata !{i32 786478, i32 0, metadata !143, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsRN3hls6streamIfEES2_", metadata !143, i32 4, metadata !615, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 4} ; [ DW_TAG_subprogram ]
!615 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !616, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!616 = metadata !{null, metadata !617, metadata !617}
!617 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !618} ; [ DW_TAG_reference_type ]
!618 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !143, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !619} ; [ DW_TAG_typedef ]
!619 = metadata !{i32 786434, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !620, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!620 = metadata !{metadata !621, metadata !622, metadata !626, metadata !629, metadata !634, metadata !638, metadata !641, metadata !644, metadata !648, metadata !649, metadata !650, metadata !653, metadata !656, metadata !657, metadata !660}
!621 = metadata !{i32 786445, metadata !619, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!622 = metadata !{i32 786478, i32 0, metadata !619, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !623, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!623 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !624, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!624 = metadata !{null, metadata !625}
!625 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !619} ; [ DW_TAG_pointer_type ]
!626 = metadata !{i32 786478, i32 0, metadata !619, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !627, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!627 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !628, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!628 = metadata !{null, metadata !625, metadata !65}
!629 = metadata !{i32 786478, i32 0, metadata !619, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !630, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!631 = metadata !{null, metadata !625, metadata !632}
!632 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !633} ; [ DW_TAG_reference_type ]
!633 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !619} ; [ DW_TAG_const_type ]
!634 = metadata !{i32 786478, i32 0, metadata !619, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !52, i32 48, metadata !635, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!635 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !636, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!636 = metadata !{metadata !637, metadata !625, metadata !632}
!637 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !619} ; [ DW_TAG_reference_type ]
!638 = metadata !{i32 786478, i32 0, metadata !619, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !52, i32 55, metadata !639, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!639 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !640, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!640 = metadata !{null, metadata !625, metadata !80}
!641 = metadata !{i32 786478, i32 0, metadata !619, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !52, i32 59, metadata !642, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!642 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !643, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!643 = metadata !{null, metadata !625, metadata !84}
!644 = metadata !{i32 786478, i32 0, metadata !619, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !52, i32 66, metadata !645, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!645 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !646, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!646 = metadata !{metadata !89, metadata !647}
!647 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !633} ; [ DW_TAG_pointer_type ]
!648 = metadata !{i32 786478, i32 0, metadata !619, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !52, i32 71, metadata !645, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!649 = metadata !{i32 786478, i32 0, metadata !619, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !52, i32 77, metadata !639, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!650 = metadata !{i32 786478, i32 0, metadata !619, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !651, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!652 = metadata !{metadata !55, metadata !625}
!653 = metadata !{i32 786478, i32 0, metadata !619, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !52, i32 90, metadata !654, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!654 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !655, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!655 = metadata !{metadata !89, metadata !625, metadata !80}
!656 = metadata !{i32 786478, i32 0, metadata !619, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !642, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!657 = metadata !{i32 786478, i32 0, metadata !619, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !52, i32 104, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!659 = metadata !{metadata !89, metadata !625, metadata !84}
!660 = metadata !{i32 786478, i32 0, metadata !619, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !52, i32 111, metadata !661, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !662, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!662 = metadata !{metadata !106, metadata !625}
!663 = metadata !{metadata !664}
!664 = metadata !{i32 0, i32 31, metadata !665}
!665 = metadata !{metadata !666}
!666 = metadata !{metadata !"dat_i.V", metadata !667, metadata !"float", i32 0, i32 31}
!667 = metadata !{metadata !668}
!668 = metadata !{i32 0, i32 0, i32 1}
!669 = metadata !{metadata !670}
!670 = metadata !{i32 0, i32 31, metadata !671}
!671 = metadata !{metadata !672}
!672 = metadata !{metadata !"res_o.V", metadata !667, metadata !"float", i32 0, i32 31}
!673 = metadata !{i32 790531, metadata !674, metadata !"dat_i.V", null, i32 4, metadata !675, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!674 = metadata !{i32 786689, metadata !614, metadata !"dat_i", metadata !143, i32 16777220, metadata !617, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!675 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_pointer_type ]
!676 = metadata !{i32 786438, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !677, i32 0, null, metadata !107} ; [ DW_TAG_class_field_type ]
!677 = metadata !{metadata !621}
!678 = metadata !{i32 4, i32 32, metadata !614, null}
!679 = metadata !{i32 790531, metadata !680, metadata !"res_o.V", null, i32 4, metadata !675, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!680 = metadata !{i32 786689, metadata !614, metadata !"res_o", metadata !143, i32 33554436, metadata !617, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!681 = metadata !{i32 4, i32 52, metadata !614, null}
!682 = metadata !{i32 790529, metadata !683, metadata !"dup1.V", null, i32 7, metadata !676, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!683 = metadata !{i32 786688, metadata !613, metadata !"dup1", metadata !143, i32 7, metadata !618, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!684 = metadata !{i32 7, i32 14, metadata !613, null}
!685 = metadata !{i32 790529, metadata !686, metadata !"dup2.V", null, i32 7, metadata !676, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!686 = metadata !{i32 786688, metadata !613, metadata !"dup2", metadata !143, i32 7, metadata !618, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!687 = metadata !{i32 7, i32 20, metadata !613, null}
!688 = metadata !{i32 790529, metadata !689, metadata !"dup3.V", null, i32 7, metadata !676, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!689 = metadata !{i32 786688, metadata !613, metadata !"dup3", metadata !143, i32 7, metadata !618, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!690 = metadata !{i32 7, i32 26, metadata !613, null}
!691 = metadata !{i32 790529, metadata !692, metadata !"dup4.V", null, i32 7, metadata !676, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!692 = metadata !{i32 786688, metadata !613, metadata !"dup4", metadata !143, i32 7, metadata !618, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!693 = metadata !{i32 7, i32 32, metadata !613, null}
!694 = metadata !{i32 8, i32 2, metadata !613, null}
!695 = metadata !{i32 790529, metadata !696, metadata !"peaks.V", null, i32 10, metadata !676, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!696 = metadata !{i32 786688, metadata !613, metadata !"peaks", metadata !143, i32 10, metadata !618, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!697 = metadata !{i32 10, i32 14, metadata !613, null}
!698 = metadata !{i32 790529, metadata !699, metadata !"peak_locs.V", null, i32 11, metadata !745, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!699 = metadata !{i32 786688, metadata !613, metadata !"peak_locs", metadata !143, i32 11, metadata !700, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!700 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !143, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !701} ; [ DW_TAG_typedef ]
!701 = metadata !{i32 786434, metadata !51, metadata !"stream<int>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !702, i32 0, null, metadata !294} ; [ DW_TAG_class_type ]
!702 = metadata !{metadata !703, metadata !704, metadata !708, metadata !711, metadata !716, metadata !720, metadata !723, metadata !726, metadata !730, metadata !731, metadata !732, metadata !735, metadata !738, metadata !739, metadata !742}
!703 = metadata !{i32 786445, metadata !701, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_member ]
!704 = metadata !{i32 786478, i32 0, metadata !701, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !705, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!705 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !706, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!706 = metadata !{null, metadata !707}
!707 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !701} ; [ DW_TAG_pointer_type ]
!708 = metadata !{i32 786478, i32 0, metadata !701, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!709 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !710, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!710 = metadata !{null, metadata !707, metadata !65}
!711 = metadata !{i32 786478, i32 0, metadata !701, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !712, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!712 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !713, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!713 = metadata !{null, metadata !707, metadata !714}
!714 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !715} ; [ DW_TAG_reference_type ]
!715 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !701} ; [ DW_TAG_const_type ]
!716 = metadata !{i32 786478, i32 0, metadata !701, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !52, i32 48, metadata !717, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!717 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !718, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!718 = metadata !{metadata !719, metadata !707, metadata !714}
!719 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !701} ; [ DW_TAG_reference_type ]
!720 = metadata !{i32 786478, i32 0, metadata !701, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !52, i32 55, metadata !721, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!721 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !722, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!722 = metadata !{null, metadata !707, metadata !269}
!723 = metadata !{i32 786478, i32 0, metadata !701, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !52, i32 59, metadata !724, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!724 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !725, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!725 = metadata !{null, metadata !707, metadata !273}
!726 = metadata !{i32 786478, i32 0, metadata !701, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !52, i32 66, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{metadata !89, metadata !729}
!729 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !715} ; [ DW_TAG_pointer_type ]
!730 = metadata !{i32 786478, i32 0, metadata !701, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !52, i32 71, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!731 = metadata !{i32 786478, i32 0, metadata !701, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !52, i32 77, metadata !721, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!732 = metadata !{i32 786478, i32 0, metadata !701, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !52, i32 83, metadata !733, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!733 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !734, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!734 = metadata !{metadata !135, metadata !707}
!735 = metadata !{i32 786478, i32 0, metadata !701, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !52, i32 90, metadata !736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!736 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!737 = metadata !{metadata !89, metadata !707, metadata !269}
!738 = metadata !{i32 786478, i32 0, metadata !701, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !52, i32 98, metadata !724, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!739 = metadata !{i32 786478, i32 0, metadata !701, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !52, i32 104, metadata !740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!740 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !741, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!741 = metadata !{metadata !89, metadata !707, metadata !273}
!742 = metadata !{i32 786478, i32 0, metadata !701, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !52, i32 111, metadata !743, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!743 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !744, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!744 = metadata !{metadata !106, metadata !707}
!745 = metadata !{i32 786438, metadata !51, metadata !"stream<int>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !746, i32 0, null, metadata !294} ; [ DW_TAG_class_field_type ]
!746 = metadata !{metadata !703}
!747 = metadata !{i32 11, i32 14, metadata !613, null}
!748 = metadata !{i32 12, i32 2, metadata !613, null}
!749 = metadata !{i32 15, i32 2, metadata !613, null}
!750 = metadata !{i32 786688, metadata !613, metadata !"thres", metadata !143, i32 14, metadata !751, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!751 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !143, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!752 = metadata !{i32 790529, metadata !753, metadata !"sig_locs.V", null, i32 19, metadata !745, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!753 = metadata !{i32 786688, metadata !613, metadata !"sig_locs", metadata !143, i32 19, metadata !700, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!754 = metadata !{i32 19, i32 14, metadata !613, null}
!755 = metadata !{i32 23, i32 1, metadata !613, null}
!756 = metadata !{i32 786689, metadata !757, metadata !"threshold", metadata !758, i32 33554435, metadata !807, i32 0, metadata !856} ; [ DW_TAG_arg_variable ]
!757 = metadata !{i32 786478, i32 0, metadata !758, metadata !"detect", metadata !"detect", metadata !"_Z6detectRN3hls6streamIfEEfRiS2_RNS0_IiEE", metadata !758, i32 3, metadata !759, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 4} ; [ DW_TAG_subprogram ]
!758 = metadata !{i32 786473, metadata !"detect.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!759 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !760, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!760 = metadata !{null, metadata !761, metadata !807, metadata !808, metadata !761, metadata !810}
!761 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !762} ; [ DW_TAG_reference_type ]
!762 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !758, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !763} ; [ DW_TAG_typedef ]
!763 = metadata !{i32 786434, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !764, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!764 = metadata !{metadata !765, metadata !766, metadata !770, metadata !773, metadata !778, metadata !782, metadata !785, metadata !788, metadata !792, metadata !793, metadata !794, metadata !797, metadata !800, metadata !801, metadata !804}
!765 = metadata !{i32 786445, metadata !763, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!766 = metadata !{i32 786478, i32 0, metadata !763, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !767, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!767 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !768, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!768 = metadata !{null, metadata !769}
!769 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !763} ; [ DW_TAG_pointer_type ]
!770 = metadata !{i32 786478, i32 0, metadata !763, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !771, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!771 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !772, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!772 = metadata !{null, metadata !769, metadata !65}
!773 = metadata !{i32 786478, i32 0, metadata !763, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !774, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!774 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !775, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!775 = metadata !{null, metadata !769, metadata !776}
!776 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !777} ; [ DW_TAG_reference_type ]
!777 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !763} ; [ DW_TAG_const_type ]
!778 = metadata !{i32 786478, i32 0, metadata !763, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !52, i32 48, metadata !779, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!779 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !780, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!780 = metadata !{metadata !781, metadata !769, metadata !776}
!781 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !763} ; [ DW_TAG_reference_type ]
!782 = metadata !{i32 786478, i32 0, metadata !763, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !52, i32 55, metadata !783, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!783 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !784, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!784 = metadata !{null, metadata !769, metadata !80}
!785 = metadata !{i32 786478, i32 0, metadata !763, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !52, i32 59, metadata !786, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!786 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !787, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!787 = metadata !{null, metadata !769, metadata !84}
!788 = metadata !{i32 786478, i32 0, metadata !763, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !52, i32 66, metadata !789, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!789 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !790, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!790 = metadata !{metadata !89, metadata !791}
!791 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !777} ; [ DW_TAG_pointer_type ]
!792 = metadata !{i32 786478, i32 0, metadata !763, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !52, i32 71, metadata !789, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!793 = metadata !{i32 786478, i32 0, metadata !763, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !52, i32 77, metadata !783, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!794 = metadata !{i32 786478, i32 0, metadata !763, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!795 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !796, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!796 = metadata !{metadata !55, metadata !769}
!797 = metadata !{i32 786478, i32 0, metadata !763, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !52, i32 90, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!798 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !799, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!799 = metadata !{metadata !89, metadata !769, metadata !80}
!800 = metadata !{i32 786478, i32 0, metadata !763, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !786, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!801 = metadata !{i32 786478, i32 0, metadata !763, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !52, i32 104, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!802 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !803, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!803 = metadata !{metadata !89, metadata !769, metadata !84}
!804 = metadata !{i32 786478, i32 0, metadata !763, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !52, i32 111, metadata !805, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!806 = metadata !{metadata !106, metadata !769}
!807 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !758, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!808 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !809} ; [ DW_TAG_reference_type ]
!809 = metadata !{i32 786454, null, metadata !"DTYPE_INT", metadata !758, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ]
!810 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !811} ; [ DW_TAG_reference_type ]
!811 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !758, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !812} ; [ DW_TAG_typedef ]
!812 = metadata !{i32 786434, metadata !51, metadata !"stream<int>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !813, i32 0, null, metadata !294} ; [ DW_TAG_class_type ]
!813 = metadata !{metadata !814, metadata !815, metadata !819, metadata !822, metadata !827, metadata !831, metadata !834, metadata !837, metadata !841, metadata !842, metadata !843, metadata !846, metadata !849, metadata !850, metadata !853}
!814 = metadata !{i32 786445, metadata !812, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_member ]
!815 = metadata !{i32 786478, i32 0, metadata !812, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !816, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!816 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !817, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!817 = metadata !{null, metadata !818}
!818 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !812} ; [ DW_TAG_pointer_type ]
!819 = metadata !{i32 786478, i32 0, metadata !812, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !820, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!820 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !821, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!821 = metadata !{null, metadata !818, metadata !65}
!822 = metadata !{i32 786478, i32 0, metadata !812, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!823 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!824 = metadata !{null, metadata !818, metadata !825}
!825 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !826} ; [ DW_TAG_reference_type ]
!826 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !812} ; [ DW_TAG_const_type ]
!827 = metadata !{i32 786478, i32 0, metadata !812, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !52, i32 48, metadata !828, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!828 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !829, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!829 = metadata !{metadata !830, metadata !818, metadata !825}
!830 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !812} ; [ DW_TAG_reference_type ]
!831 = metadata !{i32 786478, i32 0, metadata !812, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !52, i32 55, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!832 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !833, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!833 = metadata !{null, metadata !818, metadata !269}
!834 = metadata !{i32 786478, i32 0, metadata !812, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !52, i32 59, metadata !835, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!835 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !836, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!836 = metadata !{null, metadata !818, metadata !273}
!837 = metadata !{i32 786478, i32 0, metadata !812, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !52, i32 66, metadata !838, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!838 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !839, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!839 = metadata !{metadata !89, metadata !840}
!840 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !826} ; [ DW_TAG_pointer_type ]
!841 = metadata !{i32 786478, i32 0, metadata !812, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !52, i32 71, metadata !838, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!842 = metadata !{i32 786478, i32 0, metadata !812, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !52, i32 77, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!843 = metadata !{i32 786478, i32 0, metadata !812, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !52, i32 83, metadata !844, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!844 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !845, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!845 = metadata !{metadata !135, metadata !818}
!846 = metadata !{i32 786478, i32 0, metadata !812, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !52, i32 90, metadata !847, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!847 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !848, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!848 = metadata !{metadata !89, metadata !818, metadata !269}
!849 = metadata !{i32 786478, i32 0, metadata !812, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !52, i32 98, metadata !835, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!850 = metadata !{i32 786478, i32 0, metadata !812, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !52, i32 104, metadata !851, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!851 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !852, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!852 = metadata !{metadata !89, metadata !818, metadata !273}
!853 = metadata !{i32 786478, i32 0, metadata !812, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !52, i32 111, metadata !854, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!854 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !855, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!855 = metadata !{metadata !106, metadata !818}
!856 = metadata !{i32 20, i32 2, metadata !857, null}
!857 = metadata !{i32 786443, metadata !858, i32 4, i32 59, metadata !143, i32 0} ; [ DW_TAG_lexical_block ]
!858 = metadata !{i32 786478, i32 0, metadata !143, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsRN3hls6streamIfEES2_", metadata !143, i32 4, metadata !859, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !60, i32 4} ; [ DW_TAG_subprogram ]
!859 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !860, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!860 = metadata !{null, metadata !861, metadata !861}
!861 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !862} ; [ DW_TAG_reference_type ]
!862 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !143, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !863} ; [ DW_TAG_typedef ]
!863 = metadata !{i32 786434, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !864, i32 0, null, metadata !107} ; [ DW_TAG_class_type ]
!864 = metadata !{metadata !865, metadata !866, metadata !870, metadata !873, metadata !878, metadata !882, metadata !885, metadata !888, metadata !892, metadata !893, metadata !894, metadata !897, metadata !900, metadata !901, metadata !904}
!865 = metadata !{i32 786445, metadata !863, metadata !"V", metadata !52, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!866 = metadata !{i32 786478, i32 0, metadata !863, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 37, metadata !867, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 37} ; [ DW_TAG_subprogram ]
!867 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !868, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!868 = metadata !{null, metadata !869}
!869 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !863} ; [ DW_TAG_pointer_type ]
!870 = metadata !{i32 786478, i32 0, metadata !863, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 40, metadata !871, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 40} ; [ DW_TAG_subprogram ]
!871 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !872, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!872 = metadata !{null, metadata !869, metadata !65}
!873 = metadata !{i32 786478, i32 0, metadata !863, metadata !"stream", metadata !"stream", metadata !"", metadata !52, i32 45, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 45} ; [ DW_TAG_subprogram ]
!874 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !875, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!875 = metadata !{null, metadata !869, metadata !876}
!876 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !877} ; [ DW_TAG_reference_type ]
!877 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !863} ; [ DW_TAG_const_type ]
!878 = metadata !{i32 786478, i32 0, metadata !863, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !52, i32 48, metadata !879, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !60, i32 48} ; [ DW_TAG_subprogram ]
!879 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !880, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!880 = metadata !{metadata !881, metadata !869, metadata !876}
!881 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !863} ; [ DW_TAG_reference_type ]
!882 = metadata !{i32 786478, i32 0, metadata !863, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !52, i32 55, metadata !883, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 55} ; [ DW_TAG_subprogram ]
!883 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !884, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!884 = metadata !{null, metadata !869, metadata !80}
!885 = metadata !{i32 786478, i32 0, metadata !863, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !52, i32 59, metadata !886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 59} ; [ DW_TAG_subprogram ]
!886 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !887, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!887 = metadata !{null, metadata !869, metadata !84}
!888 = metadata !{i32 786478, i32 0, metadata !863, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !52, i32 66, metadata !889, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 66} ; [ DW_TAG_subprogram ]
!889 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !890, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!890 = metadata !{metadata !89, metadata !891}
!891 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !877} ; [ DW_TAG_pointer_type ]
!892 = metadata !{i32 786478, i32 0, metadata !863, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !52, i32 71, metadata !889, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 71} ; [ DW_TAG_subprogram ]
!893 = metadata !{i32 786478, i32 0, metadata !863, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !52, i32 77, metadata !883, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 77} ; [ DW_TAG_subprogram ]
!894 = metadata !{i32 786478, i32 0, metadata !863, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !52, i32 83, metadata !895, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 83} ; [ DW_TAG_subprogram ]
!895 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !896, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!896 = metadata !{metadata !55, metadata !869}
!897 = metadata !{i32 786478, i32 0, metadata !863, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !52, i32 90, metadata !898, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 90} ; [ DW_TAG_subprogram ]
!898 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !899, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!899 = metadata !{metadata !89, metadata !869, metadata !80}
!900 = metadata !{i32 786478, i32 0, metadata !863, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !52, i32 98, metadata !886, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 98} ; [ DW_TAG_subprogram ]
!901 = metadata !{i32 786478, i32 0, metadata !863, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !52, i32 104, metadata !902, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 104} ; [ DW_TAG_subprogram ]
!902 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !903, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!903 = metadata !{metadata !89, metadata !869, metadata !84}
!904 = metadata !{i32 786478, i32 0, metadata !863, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !52, i32 111, metadata !905, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !60, i32 111} ; [ DW_TAG_subprogram ]
!905 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !906, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!906 = metadata !{metadata !106, metadata !869}
!907 = metadata !{i32 3, i32 45, metadata !757, metadata !856}
!908 = metadata !{i32 790529, metadata !909, metadata !"sigs.V", null, i32 18, metadata !676, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!909 = metadata !{i32 786688, metadata !613, metadata !"sigs", metadata !143, i32 18, metadata !618, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!910 = metadata !{i32 18, i32 14, metadata !613, null}
!911 = metadata !{i32 790531, metadata !912, metadata !"signals.V", null, i32 3, metadata !913, i32 0, metadata !856} ; [ DW_TAG_arg_variable_field ]
!912 = metadata !{i32 786689, metadata !757, metadata !"signals", metadata !758, i32 16777219, metadata !761, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!913 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_pointer_type ]
!914 = metadata !{i32 786438, metadata !51, metadata !"stream<float>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !915, i32 0, null, metadata !107} ; [ DW_TAG_class_field_type ]
!915 = metadata !{metadata !765}
!916 = metadata !{i32 3, i32 26, metadata !757, metadata !856}
!917 = metadata !{i32 790531, metadata !918, metadata !"sig.V", null, i32 4, metadata !913, i32 0, metadata !856} ; [ DW_TAG_arg_variable_field ]
!918 = metadata !{i32 786689, metadata !757, metadata !"sig", metadata !758, i32 67108868, metadata !761, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!919 = metadata !{i32 4, i32 17, metadata !757, metadata !856}
!920 = metadata !{i32 790531, metadata !921, metadata !"loc.V", null, i32 4, metadata !922, i32 0, metadata !856} ; [ DW_TAG_arg_variable_field ]
!921 = metadata !{i32 786689, metadata !757, metadata !"loc", metadata !758, i32 83886084, metadata !810, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!922 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !923} ; [ DW_TAG_pointer_type ]
!923 = metadata !{i32 786438, metadata !51, metadata !"stream<int>", metadata !52, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !924, i32 0, null, metadata !294} ; [ DW_TAG_class_field_type ]
!924 = metadata !{metadata !814}
!925 = metadata !{i32 4, i32 35, metadata !757, metadata !856}
!926 = metadata !{i32 7, i32 15, metadata !927, metadata !856}
!927 = metadata !{i32 786443, metadata !928, i32 7, i32 2, metadata !758, i32 1} ; [ DW_TAG_lexical_block ]
!928 = metadata !{i32 786443, metadata !757, i32 4, i32 40, metadata !758, i32 0} ; [ DW_TAG_lexical_block ]
!929 = metadata !{i32 7, i32 31, metadata !927, metadata !856}
!930 = metadata !{i32 7, i32 37, metadata !931, metadata !856}
!931 = metadata !{i32 786443, metadata !927, i32 7, i32 36, metadata !758, i32 2} ; [ DW_TAG_lexical_block ]
!932 = metadata !{i32 8, i32 1, metadata !931, metadata !856}
!933 = metadata !{i32 790531, metadata !123, metadata !"stream<float>.V", null, i32 83, metadata !126, i32 0, metadata !934} ; [ DW_TAG_arg_variable_field ]
!934 = metadata !{i32 9, i32 22, metadata !931, metadata !856}
!935 = metadata !{i32 83, i32 56, metadata !124, metadata !934}
!936 = metadata !{i32 85, i32 9, metadata !130, metadata !934}
!937 = metadata !{i32 786688, metadata !931, metadata !"currAmp", metadata !758, i32 9, metadata !807, i32 0, metadata !856} ; [ DW_TAG_auto_variable ]
!938 = metadata !{i32 10, i32 3, metadata !931, metadata !856}
!939 = metadata !{i32 11, i32 4, metadata !940, metadata !856}
!940 = metadata !{i32 786443, metadata !931, i32 10, i32 27, metadata !758, i32 3} ; [ DW_TAG_lexical_block ]
!941 = metadata !{i32 790531, metadata !352, metadata !"stream<float>.V", null, i32 98, metadata !355, i32 0, metadata !942} ; [ DW_TAG_arg_variable_field ]
!942 = metadata !{i32 12, i32 4, metadata !940, metadata !856}
!943 = metadata !{i32 98, i32 48, metadata !353, metadata !942}
!944 = metadata !{i32 786688, metadata !358, metadata !"tmp", metadata !52, i32 99, metadata !55, i32 0, metadata !942} ; [ DW_TAG_auto_variable ]
!945 = metadata !{i32 99, i32 31, metadata !358, metadata !942}
!946 = metadata !{i32 100, i32 9, metadata !358, metadata !942}
!947 = metadata !{i32 790531, metadata !497, metadata !"stream<int>.V", null, i32 98, metadata !500, i32 0, metadata !948} ; [ DW_TAG_arg_variable_field ]
!948 = metadata !{i32 13, i32 4, metadata !940, metadata !856}
!949 = metadata !{i32 98, i32 48, metadata !498, metadata !948}
!950 = metadata !{i32 786688, metadata !505, metadata !"tmp", metadata !52, i32 99, metadata !135, i32 0, metadata !948} ; [ DW_TAG_auto_variable ]
!951 = metadata !{i32 99, i32 31, metadata !505, metadata !948}
!952 = metadata !{i32 100, i32 9, metadata !505, metadata !948}
!953 = metadata !{i32 14, i32 3, metadata !940, metadata !856}
!954 = metadata !{i32 15, i32 2, metadata !931, metadata !856}
!955 = metadata !{i32 786688, metadata !927, metadata !"i", metadata !758, i32 7, metadata !135, i32 0, metadata !856} ; [ DW_TAG_auto_variable ]
