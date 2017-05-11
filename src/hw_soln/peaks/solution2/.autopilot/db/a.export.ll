; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/peaks/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@peaks_str = internal unnamed_addr constant [6 x i8] c"peaks\00"
@memset_shift_buf_str = internal unnamed_addr constant [17 x i8] c"memset_shift_buf\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str2 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define void @peaks(float* %samples_V, float* %amplitude_V, i32* %locations_V) {
  %shift_buf = alloca float
  %shift_buf_1 = alloca float
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %locations_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecInterface(float* %amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(float* %samples_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %samples_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %amplitude_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %locations_V), !map !15
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @peaks_str) nounwind
  br label %meminst

meminst:                                          ; preds = %meminst15, %0
  %invdar = phi i2 [ 0, %0 ], [ %indvarinc, %meminst15 ]
  %indvarinc = add i2 %invdar, 1
  switch i2 %invdar, label %meminst15 [
    i2 0, label %branch0
    i2 1, label %branch1
  ]

meminst15:                                        ; preds = %branch1, %branch0, %meminst
  %shift_buf_load = load float* %shift_buf
  %shift_buf_1_load = load float* %shift_buf_1
  %tmp_1 = icmp eq i2 %invdar, -2
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memset_shift_buf_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_1, label %.preheader, label %meminst

.preheader:                                       ; preds = %meminst15, %._crit_edge
  %shift_buf_1_2 = phi float [ %shift_buf_1_9, %._crit_edge ], [ %shift_buf_1_load, %meminst15 ]
  %shift_buf_1_9 = phi float [ %tmp_20, %._crit_edge ], [ %shift_buf_load, %meminst15 ]
  %tmp_6 = phi i17 [ %i, %._crit_edge ], [ 0, %meminst15 ]
  %exitcond = icmp eq i17 %tmp_6, -11072
  %i = add i17 %tmp_6, 1
  br i1 %exitcond, label %3, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_18 = zext i17 %tmp_6 to i32
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120000, i64 120000, i64 120000)
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_20 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %samples_V)
  %shift_buf_1_2_to_int = bitcast float %shift_buf_1_2 to i32
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_1_2_to_int, i32 23, i32 30)
  %tmp_4 = trunc i32 %shift_buf_1_2_to_int to i23
  %shift_buf_1_to_int = bitcast float %shift_buf_1_9 to i32
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_1_to_int, i32 23, i32 30)
  %tmp_5 = trunc i32 %shift_buf_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_3, -1
  %notrhs = icmp eq i23 %tmp_4, 0
  %tmp_2 = or i1 %notrhs, %notlhs
  %notlhs4 = icmp ne i8 %tmp_8, -1
  %notrhs5 = icmp eq i23 %tmp_5, 0
  %tmp_7 = or i1 %notrhs5, %notlhs4
  %tmp_9 = and i1 %tmp_2, %tmp_7
  %tmp_10 = fcmp olt float %shift_buf_1_2, %shift_buf_1_9
  %tmp_11 = and i1 %tmp_9, %tmp_10
  %shift_buf_0_to_int = bitcast float %tmp_20 to i32
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_0_to_int, i32 23, i32 30)
  %tmp_13 = trunc i32 %shift_buf_0_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_12, -1
  %notrhs9 = icmp eq i23 %tmp_13, 0
  %tmp_14 = or i1 %notrhs9, %notlhs8
  %tmp_15 = and i1 %tmp_7, %tmp_14
  %tmp_16 = fcmp ogt float %shift_buf_1_9, %tmp_20
  %tmp_17 = and i1 %tmp_15, %tmp_16
  %or_cond = and i1 %tmp_11, %tmp_17
  br i1 %or_cond, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %locations_V, i32 %tmp_18)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %amplitude_V, float %shift_buf_1_9)
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str2, i32 %tmp)
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  ret void

branch0:                                          ; preds = %meminst
  store float 0.000000e+00, float* %shift_buf
  br label %meminst15

branch1:                                          ; preds = %meminst
  store float 0.000000e+00, float* %shift_buf_1
  br label %meminst15
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0)
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_12 = trunc i32 %empty to i8
  ret i8 %empty_12
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare float @_autotb_FifoWrite_float(float*, float)

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
!10 = metadata !{metadata !"samples.V", metadata !5, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"amplitude.V", metadata !5, metadata !"float", i32 0, i32 31}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"locations.V", metadata !5, metadata !"int", i32 0, i32 31}
