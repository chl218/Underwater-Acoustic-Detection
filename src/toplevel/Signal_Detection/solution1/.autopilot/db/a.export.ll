; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sig_locs_OC_V_str = internal unnamed_addr constant [11 x i8] c"sig_locs.V\00"
@memset_shift_buf_str = internal unnamed_addr constant [17 x i8] c"memset_shift_buf\00"
@hits_channel_str = internal unnamed_addr constant [13 x i8] c"hits_channel\00"
@dup4_OC_V_str = internal unnamed_addr constant [7 x i8] c"dup4.V\00"
@dup3_OC_V_str = internal unnamed_addr constant [7 x i8] c"dup3.V\00"
@dup2_OC_V_str = internal unnamed_addr constant [7 x i8] c"dup2.V\00"
@dup1_OC_V_str = internal unnamed_addr constant [7 x i8] c"dup1.V\00"
@detect_calls_str = internal unnamed_addr constant [13 x i8] c"detect_calls\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str5 = private unnamed_addr constant [13 x i8] c"Parse_Signal\00", align 1
@p_str3 = private unnamed_addr constant [11 x i8] c"Signal_End\00", align 1
@p_str211 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"Signal_Begin\00", align 1
@p_str18 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str14 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc float @threshold(float* %amplitude_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum_1, %2 ]
  %i = phi i20 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i20 %i, -448576
  %i_1 = add i20 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str12) nounwind
  %tmp_2 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %amplitude_V)
  %sum_1 = fadd float %sum, %tmp_2
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1, i32 %tmp_4)
  br label %1

; <label>:3                                       ; preds = %1
  %tmp = fdiv float %sum, 2.000000e+03
  %tmp_1 = fmul float %tmp, 3.000000e+02
  %threshold_write_assi = fmul float %tmp_1, 5.000000e+00
  ret float %threshold_write_assi
}

define internal fastcc void @parse(float* %sig_i_V, i32* nocapture %hits, i32* %loc_V, float* %sig_o_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %loc_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(float* %sig_i_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(float* %sig_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %hits_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %hits)
  br label %0

; <label>:0                                       ; preds = %7, %entry
  %read_count_i_i = phi i32 [ 0, %entry ], [ %read_count, %7 ]
  %i_i_i = phi i31 [ 0, %entry ], [ %i, %7 ]
  %i_i_i_cast = zext i31 %i_i_i to i32
  %tmp_i_i = icmp slt i32 %i_i_i_cast, %hits_read
  %i = add i31 %i_i_i, 1
  br i1 %tmp_i_i, label %1, label %.exit

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str5) nounwind
  %tmp_14_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 60, i32 10, [1 x i8]* @p_str16) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str16) nounwind
  %tmp_4 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %loc_V)
  %b = add nsw i32 %tmp_4, -1001
  %e = add nsw i32 %tmp_4, 1000
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %b, i32 31)
  %tmp_i_i_11 = icmp sgt i32 %e, 599999
  %e_1 = select i1 %tmp_i_i_11, i32 599999, i32 %e
  %p_op_i_i = add i32 %tmp_4, -1002
  %tmp_1_i_i = select i1 %tmp, i32 -1, i32 %p_op_i_i
  %tmp_2_i_i = icmp sgt i32 %read_count_i_i, %tmp_1_i_i
  %smax9_i_i = select i1 %tmp_2_i_i, i32 %read_count_i_i, i32 %tmp_1_i_i
  br label %2

; <label>:2                                       ; preds = %3, %1
  %read_count_1_i_i = phi i32 [ %read_count_i_i, %1 ], [ %tmp_3_i_i, %3 ]
  %tmp_3_i_i = add nsw i32 %read_count_1_i_i, 1
  %tmp_5_i_i = icmp slt i32 %read_count_1_i_i, %tmp_1_i_i
  br i1 %tmp_5_i_i, label %3, label %4

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind
  %tmp_3_0 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sig_i_V)
  br label %2

; <label>:4                                       ; preds = %2
  %tmp_7_i_i = add i32 %smax9_i_i, 1
  %tmp_8_i_i = icmp sgt i32 %e_1, %tmp_7_i_i
  %smax8_i_i = select i1 %tmp_8_i_i, i32 %e_1, i32 %tmp_7_i_i
  %read_count = add i32 %smax8_i_i, 1
  br label %5

; <label>:5                                       ; preds = %6, %4
  %read_count_2_in_i_i = phi i32 [ %smax9_i_i, %4 ], [ %read_count_1, %6 ]
  %read_count_1 = add i32 %read_count_2_in_i_i, 1
  %tmp_10_i_i = icmp slt i32 %read_count_1, %e_1
  br i1 %tmp_10_i_i, label %6, label %7

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str3) nounwind
  %tmp_3 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sig_i_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sig_o_V, float %tmp_3)
  br label %5

; <label>:7                                       ; preds = %5
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str5, i32 %tmp_14_i_i)
  br label %0

.exit:                                            ; preds = %0
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @findpeaks(float* %samples_V, float* %amplitude_V, i32* %locations_V) {
  %shift_buf = alloca float
  %shift_buf_1 = alloca float
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %samples_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i2 [ 0, %0 ], [ %indvarinc, %meminst ]
  %shift_buf_load = load float* %shift_buf
  %shift_buf_1_load = load float* %shift_buf_1
  %indvarinc = add i2 %invdar, 1
  %tmp_s = icmp eq i2 %invdar, 0
  %tmp_1 = select i1 %tmp_s, float 0.000000e+00, float %shift_buf_load
  %tmp_2 = icmp eq i2 %invdar, 1
  %shift_buf_0_1 = select i1 %tmp_2, float %shift_buf_load, float %tmp_1
  %shift_buf_1_1 = select i1 %tmp_2, float 0.000000e+00, float %shift_buf_1_load
  %tmp = icmp eq i2 %invdar, -2
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memset_shift_buf_str)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  store float %shift_buf_1_1, float* %shift_buf_1
  store float %shift_buf_0_1, float* %shift_buf
  br i1 %tmp, label %.preheader.preheader, label %meminst

.preheader.preheader:                             ; preds = %meminst
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %shift_buf_1_2 = phi float [ %shift_buf_1_13, %._crit_edge ], [ %shift_buf_1_1, %.preheader.preheader ]
  %shift_buf_1_13 = phi float [ %tmp_22, %._crit_edge ], [ %shift_buf_0_1, %.preheader.preheader ]
  %tmp_3 = phi i20 [ %i, %._crit_edge ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i20 %tmp_3, -448576
  %i = add i20 %tmp_3, 1
  br i1 %exitcond, label %3, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_5 = zext i20 %tmp_3 to i32
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str211) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str211)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str110) nounwind
  %tmp_22 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %samples_V)
  %shift_buf_1_2_to_int = bitcast float %shift_buf_1_2 to i32
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_1_2_to_int, i32 23, i32 30)
  %tmp_7 = trunc i32 %shift_buf_1_2_to_int to i23
  %shift_buf_1_to_int = bitcast float %shift_buf_1_13 to i32
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_1_to_int, i32 23, i32 30)
  %tmp_9 = trunc i32 %shift_buf_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_8, -1
  %notrhs = icmp eq i23 %tmp_7, 0
  %tmp_10 = or i1 %notrhs, %notlhs
  %notlhs2 = icmp ne i8 %tmp_6, -1
  %notrhs3 = icmp eq i23 %tmp_9, 0
  %tmp_11 = or i1 %notrhs3, %notlhs2
  %tmp_12 = and i1 %tmp_10, %tmp_11
  %tmp_13 = fcmp olt float %shift_buf_1_2, %shift_buf_1_13
  %tmp_14 = and i1 %tmp_12, %tmp_13
  %shift_buf_0_to_int = bitcast float %tmp_22 to i32
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_0_to_int, i32 23, i32 30)
  %tmp_16 = trunc i32 %shift_buf_0_to_int to i23
  %notlhs6 = icmp ne i8 %tmp_15, -1
  %notrhs7 = icmp eq i23 %tmp_16, 0
  %tmp_17 = or i1 %notrhs7, %notlhs6
  %tmp_18 = and i1 %tmp_11, %tmp_17
  %tmp_19 = fcmp ogt float %shift_buf_1_13, %tmp_22
  %tmp_20 = and i1 %tmp_18, %tmp_19
  %or_cond = and i1 %tmp_14, %tmp_20
  br i1 %or_cond, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_auto.volatile.i32P(i32* %locations_V, i32 %tmp_5)
  call void @_ssdm_op_Write.ap_auto.volatile.floatP(float* %amplitude_V, float %shift_buf_1_13)
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %1
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str211, i32 %tmp_4)
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @duplicate(float* %dat_i_V, float* %dat_1_o_V, float* %dat_2_o_V, float* %dat_3_o_V, float* %dat_4_o_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_4_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_3_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_16 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_2_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_1_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_i_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i20 [ 0, %0 ], [ %i_2, %2 ]
  %exitcond = icmp eq i20 %i, -448576
  %i_2 = add i20 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str14)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str115) nounwind
  %tmp = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %dat_i_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %dat_1_o_V, float %tmp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %dat_2_o_V, float %tmp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %dat_3_o_V, float %tmp)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %dat_4_o_V, float %tmp)
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str14, i32 %tmp_s)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define void @detect_calls(float* %dat_i_V, float* %res_o_V) {
  %hits_channel = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %res_o_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_i_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %dat_i_V), !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(float* %res_o_V), !map !48
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @detect_calls_str) nounwind
  %dup1_V = alloca float, align 4
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup1_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, float* %dup1_V, float* %dup1_V)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup1_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %dup2_V = alloca float, align 4
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup2_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, float* %dup2_V, float* %dup2_V)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup2_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %dup3_V = alloca float, align 4
  %empty_25 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup3_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, float* %dup3_V, float* %dup3_V)
  %empty_26 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup3_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %dup4_V = alloca float, align 4
  %empty_27 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup4_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, float* %dup4_V, float* %dup4_V)
  %empty_28 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup4_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %peaks_V = alloca float, align 4
  %peak_locs_V = alloca i32, align 4
  %sig_locs_V = alloca i32, align 4
  %empty_29 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @sig_locs_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %sig_locs_V, i32* %sig_locs_V)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %sig_locs_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @duplicate(float* %dat_i_V, float* %dup1_V, float* %dup2_V, float* %dup3_V, float* %dup4_V)
  call fastcc void @findpeaks(float* %dup1_V, float* %peaks_V, i32* %peak_locs_V)
  %thres = call fastcc float @threshold(float* %dup2_V)
  %empty_31 = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @hits_channel_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 0, i32* %hits_channel, i32* %hits_channel)
  %empty_32 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits_channel, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @detect(float* %dup3_V, float %thres, i32* %sig_locs_V, i32* %hits_channel)
  call fastcc void @parse(float* %dup4_V, i32* nocapture %hits_channel, i32* %sig_locs_V, float* %res_o_V)
  ret void
}

define internal fastcc void @detect(float* %signals_V, float %threshold, i32* %loc_V, i32* %hits_out) {
entry:
  %hits_def_channel = alloca i32
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %loc_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_33 = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %threshold_read = call float @_ssdm_op_Read.ap_auto.float(float %threshold)
  %sigs_V = alloca float, align 4
  %p_read_to_int = bitcast float %threshold_read to i32
  %tmp = trunc i32 %p_read_to_int to i23
  %notrhs2 = icmp eq i23 %tmp, 0
  store i32 0, i32* %hits_def_channel
  br label %0

; <label>:0                                       ; preds = %._crit_edge.i.i, %entry
  %tmp_30 = phi i20 [ 0, %entry ], [ %i, %._crit_edge.i.i ]
  %exitcond_i_i = icmp eq i20 %tmp_30, -448576
  %i = add i20 %tmp_30, 1
  br i1 %exitcond_i_i, label %.exit, label %1

; <label>:1                                       ; preds = %0
  %tmp_6 = zext i20 %tmp_30 to i32
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  %tmp_29_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str18)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str119) nounwind
  %tmp_29 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %signals_V)
  %currAmp_to_int = bitcast float %tmp_29 to i32
  %tmp_21 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %currAmp_to_int, i32 23, i32 30)
  %tmp_24 = trunc i32 %currAmp_to_int to i23
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_read_to_int, i32 23, i32 30)
  %notlhs = icmp ne i8 %tmp_21, -1
  %notrhs = icmp eq i23 %tmp_24, 0
  %tmp_23 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_22, -1
  %tmp_25 = or i1 %notrhs2, %notlhs1
  %tmp_26 = and i1 %tmp_23, %tmp_25
  %tmp_27 = fcmp ogt float %tmp_29, %threshold_read
  %tmp_28 = and i1 %tmp_26, %tmp_27
  br i1 %tmp_28, label %2, label %._crit_edge.i.i

; <label>:2                                       ; preds = %1
  %hits_def_channel_loa = load i32* %hits_def_channel
  %tmp_14_i_i = add nsw i32 %hits_def_channel_loa, 1
  call void @_ssdm_op_Write.ap_auto.volatile.floatP(float* %sigs_V, float %tmp_29)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %loc_V, i32 %tmp_6)
  store i32 %tmp_14_i_i, i32* %hits_def_channel
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %2, %1
  %empty_34 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str18, i32 %tmp_29_i_i)
  br label %0

.exit:                                            ; preds = %0
  %hits_def_channel_loa_1 = load i32* %hits_def_channel
  %empty_35 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %hits_out, i32 %hits_def_channel_loa_1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0)
  ret float %empty
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_36 = trunc i32 %empty to i8
  ret i8 %empty_36
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_37 = and i32 %0, %empty
  %empty_38 = icmp ne i32 %empty_37, 0
  ret i1 %empty_38
}

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare float @_autotb_FifoWrite_float(float*, float)

declare i32 @_autotb_FifoRead_i32(i32*)

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
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"dat_i.V", metadata !46, metadata !"float", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 0, i32 1}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"res_o.V", metadata !46, metadata !"float", i32 0, i32 31}
