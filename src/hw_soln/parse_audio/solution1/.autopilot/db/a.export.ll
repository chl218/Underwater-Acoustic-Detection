; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/parse_audio/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@parse_audio_str = internal unnamed_addr constant [12 x i8] c"parse_audio\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str19 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

define internal fastcc void @parse_audio_parse_signal([10000 x float]* nocapture %signal_r, [12 x i32]* nocapture %locs, float* %pairs_amplitude_V, i32* %pairs_duration_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %pairs_amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, [1 x i8]* @p_str29)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %pairs_duration_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str31, [1 x i8]* @p_str32, [1 x i8]* @p_str33)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %j = phi i4 [ 0, %0 ], [ %i, %.preheader ]
  %exitcond5 = icmp eq i4 %j, -4
  %i = add i4 %j, 1
  br i1 %exitcond5, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %j_cast1 = zext i4 %j to i32
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  %tmp = zext i4 %j to i64
  %locs_addr = getelementptr [12 x i32]* %locs, i64 0, i64 %tmp
  br label %.preheader

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j1 = phi i32 [ %j_1, %4 ], [ %j_cast1, %.preheader.preheader ]
  %exitcond = icmp eq i32 %j1, 12
  br i1 %exitcond, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 12, i64 0)
  %b = load i32* %locs_addr, align 4
  %tmp_2 = sext i32 %j1 to i64
  %locs_addr_1 = getelementptr [12 x i32]* %locs, i64 0, i64 %tmp_2
  %e = load i32* %locs_addr_1, align 4
  %tmp_3 = icmp sgt i32 %b, %e
  %smax = select i1 %tmp_3, i32 %b, i32 %e
  %tmp_4 = sub i32 1, %b
  %duration = add i32 %tmp_4, %smax
  br label %2

; <label>:2                                       ; preds = %3, %1
  %b1 = phi i32 [ %b, %1 ], [ %b_1, %3 ]
  %tmp_6 = icmp slt i32 %b1, %e
  br i1 %tmp_6, label %3, label %4

; <label>:3                                       ; preds = %2
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 144, i32 72, [1 x i8]* @p_str1) nounwind
  %tmp_7 = sext i32 %b1 to i64
  %signal_addr = getelementptr [10000 x float]* %signal_r, i64 0, i64 %tmp_7
  %tmp_1 = load float* %signal_addr, align 4
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %pairs_amplitude_V, float %tmp_1)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_9)
  %b_1 = add nsw i32 %b1, 1
  br label %2

; <label>:4                                       ; preds = %2
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %pairs_duration_V, i32 %duration)
  %j_1 = add nsw i32 %j1, 1
  br label %.preheader

; <label>:5                                       ; preds = %.loopexit
  ret void
}

define void @parse_audio(float* %signals_V, float* %hits_V, i32* %locs_V, float* %pairs_amplitude_V, i32* %pairs_duration_V) {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %pairs_duration_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str31, [1 x i8]* @p_str32, [1 x i8]* @p_str33)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(float* %pairs_amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, [1 x i8]* @p_str29)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %locs_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str22, [1 x i8]* @p_str23, [1 x i8]* @p_str24, [1 x i8]* @p_str25)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(float* %hits_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str18, [1 x i8]* @p_str19, [1 x i8]* @p_str20, [1 x i8]* @p_str21)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str15, [1 x i8]* @p_str16, [1 x i8]* @p_str17)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %signals_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %hits_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %locs_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(float* %pairs_amplitude_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %pairs_duration_V), !map !23
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @parse_audio_str) nounwind
  %sig_buf = alloca [10000 x float], align 16
  %loc_buf = alloca [12 x i32], align 16
  call fastcc void @parse_audio_buffer_signal(float* %signals_V, [10000 x float]* %sig_buf)
  call fastcc void @parse_audio_buffer_target(float* %hits_V, i32* %locs_V, [12 x i32]* %loc_buf)
  call fastcc void @parse_audio_parse_signal([10000 x float]* %sig_buf, [12 x i32]* %loc_buf, float* %pairs_amplitude_V, i32* %pairs_duration_V)
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @parse_audio_buffer_target(float* %hits_V, i32* %locs_V, [12 x i32]* nocapture %loc_buf) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %hits_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str18, [1 x i8]* @p_str19, [1 x i8]* @p_str20, [1 x i8]* @p_str21)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %locs_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str22, [1 x i8]* @p_str23, [1 x i8]* @p_str24, [1 x i8]* @p_str25)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i4 %i, -4
  %i_1 = add i4 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_0 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %hits_V)
  %tmp_s = zext i4 %i to i64
  %tmp = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %locs_V)
  %loc_buf_addr = getelementptr [12 x i32]* %loc_buf, i64 0, i64 %tmp_s
  store i32 %tmp, i32* %loc_buf_addr, align 4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_1)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @parse_audio_buffer_signal(float* %signals_V, [10000 x float]* nocapture %amp_buf) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str15, [1 x i8]* @p_str16, [1 x i8]* @p_str17)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i14 [ 0, %0 ], [ %i_2, %2 ]
  %tmp = icmp ult i14 %i, -6384
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5000, i64 5000, i64 5000)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_6 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %signals_V)
  %tmp_s = zext i14 %i to i64
  %amp_buf_addr = getelementptr [10000 x float]* %amp_buf, i64 0, i64 %tmp_s
  store float %tmp_6, float* %amp_buf_addr, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_2)
  %i_2 = add i14 %i, 2
  br label %1

; <label>:3                                       ; preds = %1
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

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
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

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare float @_autotb_FifoWrite_float(float*, float)

declare i32 @_autotb_FifoRead_i32(i32*)

declare float @_autotb_FifoRead_float(float*)

declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"signals.V", metadata !5, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"hits.V", metadata !5, metadata !"float", i32 0, i32 31}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"locs.V", metadata !5, metadata !"int", i32 0, i32 31}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"pairs.amplitude.V", metadata !5, metadata !"float", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"pairs.duration.V", metadata !5, metadata !"int", i32 0, i32 31}
