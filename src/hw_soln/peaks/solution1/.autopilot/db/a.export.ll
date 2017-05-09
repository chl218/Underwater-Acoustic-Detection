; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/peaks/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@peaks_str = internal unnamed_addr constant [6 x i8] c"peaks\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str2 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @peaks([34 x i32]* %signals_0, [33 x i32]* %signals_1, [33 x i32]* %signals_2, [50 x i32]* %amplitude, [50 x i32]* %locations) {
  call void (...)* @_ssdm_op_SpecBitsMap([33 x i32]* %signals_2), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([33 x i32]* %signals_1), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([34 x i32]* %signals_0), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %amplitude) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %locations) nounwind, !map !31
  %locations_addr = getelementptr [50 x i32]* %locations, i64 0, i64 0
  %amplitude_addr = getelementptr [50 x i32]* %amplitude, i64 0, i64 0
  %signals_0_addr_4 = getelementptr [34 x i32]* %signals_0, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @peaks_str) nounwind
  %signals_0_load_4 = load i32* %signals_0_addr_4, align 4
  %signals_1_addr = getelementptr [33 x i32]* %signals_1, i64 0, i64 0
  %signals_1_load = load i32* %signals_1_addr, align 4
  %tmp = icmp sgt i32 %signals_0_load_4, %signals_1_load
  br i1 %tmp, label %1, label %.preheader.preheader

; <label>:1                                       ; preds = %0
  store i32 0, i32* %locations_addr, align 4
  store i32 %signals_0_load_4, i32* %amplitude_addr, align 4
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %0, %1
  %peak_1_ph = phi i1 [ true, %1 ], [ false, %0 ]
  %peak_1 = alloca i32
  %peak_1_ph_cast = zext i1 %peak_1_ph to i32
  store i32 %peak_1_ph_cast, i32* %peak_1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i = phi i7 [ %i_1, %._crit_edge ], [ 1, %.preheader.preheader ]
  %i_cast = zext i7 %i to i32
  %exitcond = icmp eq i7 %i, -29
  br i1 %exitcond, label %3, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 98, i64 98, i64 98) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_2 = add i7 -1, %i
  %arrayNo = urem i7 %tmp_2, 3
  %tmp_11 = trunc i7 %arrayNo to i3
  %zext2_cast = zext i7 %tmp_2 to i16
  %mul3 = mul i16 171, %zext2_cast
  %tmp_4 = call i7 @_ssdm_op_PartSelect.i7.i16.i32.i32(i16 %mul3, i32 9, i32 15)
  %newIndex2 = zext i7 %tmp_4 to i64
  %signals_0_addr_1 = getelementptr [34 x i32]* %signals_0, i64 0, i64 %newIndex2
  %signals_1_addr_1 = getelementptr [33 x i32]* %signals_1, i64 0, i64 %newIndex2
  %signals_2_addr_1 = getelementptr [33 x i32]* %signals_2, i64 0, i64 %newIndex2
  %signals_2_load_1 = load i32* %signals_2_addr_1, align 4
  %signals_0_load_1 = load i32* %signals_0_addr_1, align 4
  %signals_1_load_1 = load i32* %signals_1_addr_1, align 4
  %sel_tmp = icmp eq i3 %tmp_11, 0
  %sel_tmp1 = select i1 %sel_tmp, i32 %signals_0_load_1, i32 %signals_2_load_1
  %sel_tmp2 = icmp eq i3 %tmp_11, 1
  %signals_load_5_phi = select i1 %sel_tmp2, i32 %signals_1_load_1, i32 %sel_tmp1
  %arrayNo1 = urem i7 %i, 3
  %tmp_12 = trunc i7 %arrayNo1 to i3
  %zext_cast = zext i7 %i to i16
  %mul = mul i16 171, %zext_cast
  %tmp_8 = call i7 @_ssdm_op_PartSelect.i7.i16.i32.i32(i16 %mul, i32 9, i32 15)
  %newIndex4 = zext i7 %tmp_8 to i64
  %signals_0_addr_2 = getelementptr [34 x i32]* %signals_0, i64 0, i64 %newIndex4
  %signals_1_addr_2 = getelementptr [33 x i32]* %signals_1, i64 0, i64 %newIndex4
  %signals_2_addr_2 = getelementptr [33 x i32]* %signals_2, i64 0, i64 %newIndex4
  %signals_2_load_2 = load i32* %signals_2_addr_2, align 4
  %signals_0_load_2 = load i32* %signals_0_addr_2, align 4
  %signals_1_load_2 = load i32* %signals_1_addr_2, align 4
  %sel_tmp4 = icmp eq i3 %tmp_12, 0
  %sel_tmp5 = select i1 %sel_tmp4, i32 %signals_0_load_2, i32 %signals_2_load_2
  %sel_tmp6 = icmp eq i3 %tmp_12, 1
  %signals_load_6_phi = select i1 %sel_tmp6, i32 %signals_1_load_2, i32 %sel_tmp5
  %tmp_5 = icmp slt i32 %signals_load_5_phi, %signals_load_6_phi
  br i1 %tmp_5, label %_ifconv8, label %._crit_edge

_ifconv8:                                         ; preds = %_ifconv
  %tmp_7 = add i7 %i, 1
  %zext6_cast = zext i7 %tmp_7 to i16
  %mul7 = mul i16 %zext6_cast, 171
  %tmp_10 = call i7 @_ssdm_op_PartSelect.i7.i16.i32.i32(i16 %mul7, i32 9, i32 15)
  %newIndex9 = zext i7 %tmp_10 to i64
  %signals_1_addr_3 = getelementptr [33 x i32]* %signals_1, i64 0, i64 %newIndex9
  %signals_2_addr_3 = getelementptr [33 x i32]* %signals_2, i64 0, i64 %newIndex9
  %signals_0_addr_3 = getelementptr [34 x i32]* %signals_0, i64 0, i64 %newIndex9
  %signals_0_load_3 = load i32* %signals_0_addr_3, align 4
  %signals_1_load_3 = load i32* %signals_1_addr_3, align 4
  %signals_2_load_3 = load i32* %signals_2_addr_3, align 4
  %sel_tmp3 = select i1 %sel_tmp4, i32 %signals_1_load_3, i32 %signals_0_load_3
  %signals_load_8_phi = select i1 %sel_tmp6, i32 %signals_2_load_3, i32 %sel_tmp3
  %tmp_9 = icmp sgt i32 %signals_load_6_phi, %signals_load_8_phi
  br i1 %tmp_9, label %2, label %._crit_edge

; <label>:2                                       ; preds = %_ifconv8
  %peak_1_load = load i32* %peak_1
  %tmp_s = sext i32 %peak_1_load to i64
  %locations_addr_2 = getelementptr [50 x i32]* %locations, i64 0, i64 %tmp_s
  store i32 %i_cast, i32* %locations_addr_2, align 4
  %amplitude_addr_2 = getelementptr [50 x i32]* %amplitude, i64 0, i64 %tmp_s
  store i32 %signals_load_6_phi, i32* %amplitude_addr_2, align 4
  %peak = add nsw i32 %peak_1_load, 1
  store i32 %peak, i32* %peak_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %_ifconv8, %_ifconv
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str2, i32 %tmp_3) nounwind
  %i_1 = add i7 %i, 1
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  %signals_2_addr = getelementptr [33 x i32]* %signals_2, i64 0, i64 32
  %signals_2_load = load i32* %signals_2_addr, align 4
  %signals_0_addr = getelementptr [34 x i32]* %signals_0, i64 0, i64 33
  %signals_0_load = load i32* %signals_0_addr, align 4
  %tmp_1 = icmp slt i32 %signals_2_load, %signals_0_load
  br i1 %tmp_1, label %4, label %._crit_edge2

; <label>:4                                       ; preds = %3
  %peak_1_load_1 = load i32* %peak_1
  %tmp_6 = sext i32 %peak_1_load_1 to i64
  %locations_addr_1 = getelementptr [50 x i32]* %locations, i64 0, i64 %tmp_6
  store i32 99, i32* %locations_addr_1, align 4
  %amplitude_addr_1 = getelementptr [50 x i32]* %amplitude, i64 0, i64 %tmp_6
  store i32 %signals_0_load, i32* %amplitude_addr_1, align 4
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %4, %3
  ret void
}

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i7 @_ssdm_op_PartSelect.i7.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_6 = trunc i16 %empty to i7
  ret i7 %empty_6
}

declare i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

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
!10 = metadata !{metadata !"signals", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 2, i32 99, i32 3}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"signals", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 1, i32 99, i32 3}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"signals", metadata !23, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 99, i32 3}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"amplitude", metadata !29, metadata !"int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 49, i32 1}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"locations", metadata !29, metadata !"int", i32 0, i32 31}
