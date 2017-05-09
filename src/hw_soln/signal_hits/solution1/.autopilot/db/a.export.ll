; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/signal_hits/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@signal_hits_str = internal unnamed_addr constant [12 x i8] c"signal_hits\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

define void @signal_hits(float %threshold, float* %signals_V, float* %hits_V, i32* %locs_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %locs_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str15, [1 x i8]* @p_str16, [1 x i8]* @p_str17)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecInterface(float* %hits_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str10, [1 x i8]* @p_str11, [1 x i8]* @p_str12, [1 x i8]* @p_str13)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str7, [1 x i8]* @p_str8, [1 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecBitsMap(float %threshold), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %signals_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(float* %hits_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %locs_V), !map !21
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @signal_hits_str) nounwind
  %threshold_read = call float @_ssdm_op_Read.ap_auto.float(float %threshold)
  %threshold_to_int = bitcast float %threshold_read to i32
  %tmp = trunc i32 %threshold_to_int to i23
  %notrhs3 = icmp eq i23 %tmp, 0
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %tmp_5 = phi i17 [ 0, %0 ], [ %i, %._crit_edge ]
  %exitcond = icmp eq i17 %tmp_5, -11072
  %i = add i17 %tmp_5, 1
  br i1 %exitcond, label %4, label %2

; <label>:2                                       ; preds = %1
  %tmp_12 = zext i17 %tmp_5 to i32
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120000, i64 120000, i64 120000)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_11 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %signals_V)
  %currAmp_to_int = bitcast float %tmp_11 to i32
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %currAmp_to_int, i32 23, i32 30)
  %tmp_4 = trunc i32 %currAmp_to_int to i23
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %threshold_to_int, i32 23, i32 30)
  %notlhs = icmp ne i8 %tmp_1, -1
  %notrhs = icmp eq i23 %tmp_4, 0
  %tmp_9 = or i1 %notrhs, %notlhs
  %notlhs2 = icmp ne i8 %tmp_7, -1
  %tmp_2 = or i1 %notrhs3, %notlhs2
  %tmp_6 = and i1 %tmp_9, %tmp_2
  %tmp_8 = fcmp ogt float %tmp_11, %threshold_read
  %tmp_10 = and i1 %tmp_6, %tmp_8
  br i1 %tmp_10, label %3, label %._crit_edge

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %hits_V, float %tmp_11)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %locs_V, i32 %tmp_12)
  br label %._crit_edge

._crit_edge:                                      ; preds = %3, %2
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_3)
  br label %1

; <label>:4                                       ; preds = %1
  ret void
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

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i8
  ret i8 %empty_10
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
!10 = metadata !{metadata !"threshold", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"signals.V", metadata !5, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"hits.V", metadata !5, metadata !"float", i32 0, i32 31}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"locs.V", metadata !5, metadata !"int", i32 0, i32 31}
