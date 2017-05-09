; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/peaks/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@peaks_str = internal unnamed_addr constant [6 x i8] c"peaks\00" ; [#uses=1 type=[6 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1 ; [#uses=3 type=[13 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @peaks([34 x i32]* %signals_0, [33 x i32]* %signals_1, [33 x i32]* %signals_2, [50 x i32]* %amplitude, [50 x i32]* %locations) {
  call void (...)* @_ssdm_op_SpecBitsMap([33 x i32]* %signals_2), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([33 x i32]* %signals_1), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([34 x i32]* %signals_0), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %amplitude) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap([50 x i32]* %locations) nounwind, !map !31
  %locations_addr = getelementptr [50 x i32]* %locations, i64 0, i64 0 ; [#uses=1 type=i32*]
  %amplitude_addr = getelementptr [50 x i32]* %amplitude, i64 0, i64 0 ; [#uses=1 type=i32*]
  %signals_0_addr_4 = getelementptr [34 x i32]* %signals_0, i64 0, i64 0 ; [#uses=1 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @peaks_str) nounwind
  call void @llvm.dbg.value(metadata !{[34 x i32]* %signals_0}, i64 0, metadata !35), !dbg !49 ; [debug line = 3:18] [debug variable = signals[0]]
  call void @llvm.dbg.value(metadata !{[33 x i32]* %signals_1}, i64 0, metadata !50), !dbg !49 ; [debug line = 3:18] [debug variable = signals[1]]
  call void @llvm.dbg.value(metadata !{[33 x i32]* %signals_2}, i64 0, metadata !51), !dbg !49 ; [debug line = 3:18] [debug variable = signals[2]]
  call void @llvm.dbg.value(metadata !{[50 x i32]* %amplitude}, i64 0, metadata !52), !dbg !56 ; [debug line = 4:12] [debug variable = amplitude]
  call void @llvm.dbg.value(metadata !{[50 x i32]* %locations}, i64 0, metadata !57), !dbg !58 ; [debug line = 5:12] [debug variable = locations]
  %signals_0_load_4 = load i32* %signals_0_addr_4, align 4, !dbg !59 ; [#uses=2 type=i32] [debug line = 11:2]
  %signals_1_addr = getelementptr [33 x i32]* %signals_1, i64 0, i64 0 ; [#uses=1 type=i32*]
  %signals_1_load = load i32* %signals_1_addr, align 4, !dbg !59 ; [#uses=1 type=i32] [debug line = 11:2]
  %tmp = icmp sgt i32 %signals_0_load_4, %signals_1_load, !dbg !59 ; [#uses=1 type=i1] [debug line = 11:2]
  br i1 %tmp, label %1, label %.preheader.preheader, !dbg !59 ; [debug line = 11:2]

; <label>:1                                       ; preds = %0
  store i32 0, i32* %locations_addr, align 4, !dbg !61 ; [debug line = 12:3]
  store i32 %signals_0_load_4, i32* %amplitude_addr, align 4, !dbg !63 ; [debug line = 13:3]
  br label %.preheader.preheader, !dbg !64        ; [debug line = 15:2]

.preheader.preheader:                             ; preds = %1, %0
  %peak_1_ph = phi i1 [ true, %1 ], [ false, %0 ] ; [#uses=1 type=i1]
  %peak_1 = alloca i32                            ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %peak_1}, metadata !65) ; [debug variable = peak]
  %peak_1_ph_cast = zext i1 %peak_1_ph to i32, !dbg !66 ; [#uses=1 type=i32] [debug line = 17:29]
  store i32 %peak_1_ph_cast, i32* %peak_1
  br label %.preheader, !dbg !66                  ; [debug line = 17:29]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %i = phi i7 [ %i_1, %._crit_edge ], [ 1, %.preheader.preheader ] ; [#uses=7 type=i7]
  %i_cast = zext i7 %i to i32, !dbg !66           ; [#uses=1 type=i32] [debug line = 17:29]
  %exitcond = icmp eq i7 %i, -29, !dbg !66        ; [#uses=1 type=i1] [debug line = 17:29]
  br i1 %exitcond, label %3, label %_ifconv, !dbg !66 ; [debug line = 17:29]

_ifconv:                                          ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 98, i64 98, i64 98) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind, !dbg !68 ; [debug line = 17:49]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str2) nounwind, !dbg !68 ; [#uses=1 type=i32] [debug line = 17:49]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 18:1]
  %tmp_2 = add i7 -1, %i, !dbg !71                ; [#uses=2 type=i7] [debug line = 19:2]
  %arrayNo = urem i7 %tmp_2, 3                    ; [#uses=1 type=i7]
  %tmp_11 = trunc i7 %arrayNo to i3               ; [#uses=2 type=i3]
  %zext2_cast = zext i7 %tmp_2 to i16             ; [#uses=1 type=i16]
  %mul3 = mul i16 171, %zext2_cast                ; [#uses=1 type=i16]
  %tmp_4 = call i7 @_ssdm_op_PartSelect.i7.i16.i32.i32(i16 %mul3, i32 9, i32 15) ; [#uses=1 type=i7]
  %newIndex2 = zext i7 %tmp_4 to i64              ; [#uses=3 type=i64]
  %signals_0_addr_1 = getelementptr [34 x i32]* %signals_0, i64 0, i64 %newIndex2, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_1_addr_1 = getelementptr [33 x i32]* %signals_1, i64 0, i64 %newIndex2, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_2_addr_1 = getelementptr [33 x i32]* %signals_2, i64 0, i64 %newIndex2, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_2_load_1 = load i32* %signals_2_addr_1, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %signals_0_load_1 = load i32* %signals_0_addr_1, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %signals_1_load_1 = load i32* %signals_1_addr_1, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %sel_tmp = icmp eq i3 %tmp_11, 0, !dbg !71      ; [#uses=1 type=i1] [debug line = 19:2]
  %sel_tmp1 = select i1 %sel_tmp, i32 %signals_0_load_1, i32 %signals_2_load_1, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %sel_tmp2 = icmp eq i3 %tmp_11, 1, !dbg !71     ; [#uses=1 type=i1] [debug line = 19:2]
  %signals_load_5_phi = select i1 %sel_tmp2, i32 %signals_1_load_1, i32 %sel_tmp1, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %arrayNo1 = urem i7 %i, 3                       ; [#uses=1 type=i7]
  %tmp_12 = trunc i7 %arrayNo1 to i3              ; [#uses=2 type=i3]
  %zext_cast = zext i7 %i to i16                  ; [#uses=1 type=i16]
  %mul = mul i16 171, %zext_cast                  ; [#uses=1 type=i16]
  %tmp_8 = call i7 @_ssdm_op_PartSelect.i7.i16.i32.i32(i16 %mul, i32 9, i32 15) ; [#uses=1 type=i7]
  %newIndex4 = zext i7 %tmp_8 to i64              ; [#uses=3 type=i64]
  %signals_0_addr_2 = getelementptr [34 x i32]* %signals_0, i64 0, i64 %newIndex4, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_1_addr_2 = getelementptr [33 x i32]* %signals_1, i64 0, i64 %newIndex4, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_2_addr_2 = getelementptr [33 x i32]* %signals_2, i64 0, i64 %newIndex4, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_2_load_2 = load i32* %signals_2_addr_2, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %signals_0_load_2 = load i32* %signals_0_addr_2, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %signals_1_load_2 = load i32* %signals_1_addr_2, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %sel_tmp4 = icmp eq i3 %tmp_12, 0, !dbg !71     ; [#uses=2 type=i1] [debug line = 19:2]
  %sel_tmp5 = select i1 %sel_tmp4, i32 %signals_0_load_2, i32 %signals_2_load_2, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %sel_tmp6 = icmp eq i3 %tmp_12, 1, !dbg !71     ; [#uses=2 type=i1] [debug line = 19:2]
  %signals_load_6_phi = select i1 %sel_tmp6, i32 %signals_1_load_2, i32 %sel_tmp5, !dbg !71 ; [#uses=3 type=i32] [debug line = 19:2]
  %tmp_5 = icmp slt i32 %signals_load_5_phi, %signals_load_6_phi, !dbg !71 ; [#uses=1 type=i1] [debug line = 19:2]
  br i1 %tmp_5, label %_ifconv8, label %._crit_edge, !dbg !71 ; [debug line = 19:2]

_ifconv8:                                         ; preds = %_ifconv
  %tmp_7 = add i7 %i, 1, !dbg !71                 ; [#uses=1 type=i7] [debug line = 19:2]
  %zext6_cast = zext i7 %tmp_7 to i16             ; [#uses=1 type=i16]
  %mul7 = mul i16 %zext6_cast, 171                ; [#uses=1 type=i16]
  %tmp_10 = call i7 @_ssdm_op_PartSelect.i7.i16.i32.i32(i16 %mul7, i32 9, i32 15) ; [#uses=1 type=i7]
  %newIndex9 = zext i7 %tmp_10 to i64             ; [#uses=3 type=i64]
  %signals_1_addr_3 = getelementptr [33 x i32]* %signals_1, i64 0, i64 %newIndex9, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_2_addr_3 = getelementptr [33 x i32]* %signals_2, i64 0, i64 %newIndex9, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_0_addr_3 = getelementptr [34 x i32]* %signals_0, i64 0, i64 %newIndex9, !dbg !71 ; [#uses=1 type=i32*] [debug line = 19:2]
  %signals_0_load_3 = load i32* %signals_0_addr_3, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %signals_1_load_3 = load i32* %signals_1_addr_3, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %signals_2_load_3 = load i32* %signals_2_addr_3, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %sel_tmp3 = select i1 %sel_tmp4, i32 %signals_1_load_3, i32 %signals_0_load_3, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %signals_load_8_phi = select i1 %sel_tmp6, i32 %signals_2_load_3, i32 %sel_tmp3, !dbg !71 ; [#uses=1 type=i32] [debug line = 19:2]
  %tmp_9 = icmp sgt i32 %signals_load_6_phi, %signals_load_8_phi, !dbg !71 ; [#uses=1 type=i1] [debug line = 19:2]
  br i1 %tmp_9, label %2, label %._crit_edge, !dbg !71 ; [debug line = 19:2]

; <label>:2                                       ; preds = %_ifconv8
  %peak_1_load = load i32* %peak_1, !dbg !72      ; [#uses=2 type=i32] [debug line = 22:4]
  %tmp_s = sext i32 %peak_1_load to i64, !dbg !74 ; [#uses=2 type=i64] [debug line = 20:4]
  %locations_addr_2 = getelementptr [50 x i32]* %locations, i64 0, i64 %tmp_s, !dbg !74 ; [#uses=1 type=i32*] [debug line = 20:4]
  store i32 %i_cast, i32* %locations_addr_2, align 4, !dbg !74 ; [debug line = 20:4]
  %amplitude_addr_2 = getelementptr [50 x i32]* %amplitude, i64 0, i64 %tmp_s, !dbg !75 ; [#uses=1 type=i32*] [debug line = 21:4]
  store i32 %signals_load_6_phi, i32* %amplitude_addr_2, align 4, !dbg !75 ; [debug line = 21:4]
  %peak = add nsw i32 %peak_1_load, 1, !dbg !72   ; [#uses=1 type=i32] [debug line = 22:4]
  call void @llvm.dbg.value(metadata !{i32 %peak}, i64 0, metadata !65), !dbg !72 ; [debug line = 22:4] [debug variable = peak]
  store i32 %peak, i32* %peak_1, !dbg !72         ; [debug line = 22:4]
  br label %._crit_edge, !dbg !76                 ; [debug line = 23:3]

._crit_edge:                                      ; preds = %2, %_ifconv8, %_ifconv
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str2, i32 %tmp_3) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 24:2]
  %i_1 = add i7 %i, 1, !dbg !78                   ; [#uses=1 type=i7] [debug line = 17:43]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !79), !dbg !78 ; [debug line = 17:43] [debug variable = i]
  br label %.preheader, !dbg !78                  ; [debug line = 17:43]

; <label>:3                                       ; preds = %.preheader
  %signals_2_addr = getelementptr [33 x i32]* %signals_2, i64 0, i64 32 ; [#uses=1 type=i32*]
  %signals_2_load = load i32* %signals_2_addr, align 4, !dbg !80 ; [#uses=1 type=i32] [debug line = 26:2]
  %signals_0_addr = getelementptr [34 x i32]* %signals_0, i64 0, i64 33 ; [#uses=1 type=i32*]
  %signals_0_load = load i32* %signals_0_addr, align 4, !dbg !80 ; [#uses=2 type=i32] [debug line = 26:2]
  %tmp_1 = icmp slt i32 %signals_2_load, %signals_0_load, !dbg !80 ; [#uses=1 type=i1] [debug line = 26:2]
  br i1 %tmp_1, label %4, label %._crit_edge2, !dbg !80 ; [debug line = 26:2]

; <label>:4                                       ; preds = %3
  %peak_1_load_1 = load i32* %peak_1, !dbg !81    ; [#uses=1 type=i32] [debug line = 27:3]
  %tmp_6 = sext i32 %peak_1_load_1 to i64, !dbg !81 ; [#uses=2 type=i64] [debug line = 27:3]
  %locations_addr_1 = getelementptr [50 x i32]* %locations, i64 0, i64 %tmp_6, !dbg !81 ; [#uses=1 type=i32*] [debug line = 27:3]
  store i32 99, i32* %locations_addr_1, align 4, !dbg !81 ; [debug line = 27:3]
  %amplitude_addr_1 = getelementptr [50 x i32]* %amplitude, i64 0, i64 %tmp_6, !dbg !83 ; [#uses=1 type=i32*] [debug line = 28:3]
  store i32 %signals_0_load, i32* %amplitude_addr_1, align 4, !dbg !83 ; [debug line = 28:3]
  br label %._crit_edge2, !dbg !84                ; [debug line = 29:2]

._crit_edge2:                                     ; preds = %4, %3
  ret void, !dbg !85                              ; [debug line = 31:1]
}

; [#uses=1]
declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i7 @_ssdm_op_PartSelect.i7.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; [#uses=1 type=i16]
  %empty_6 = trunc i16 %empty to i7               ; [#uses=1 type=i7]
  ret i7 %empty_6
}

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
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
!35 = metadata !{i32 790531, metadata !36, metadata !"signals[0]", null, i32 3, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!36 = metadata !{i32 786689, metadata !37, metadata !"signals", null, i32 3, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 786478, i32 0, metadata !38, metadata !"peaks", metadata !"peaks", metadata !"_Z5peaksPiS_S_", metadata !38, i32 3, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !44, i32 5} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786473, metadata !"peaks.cpp", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !41, metadata !41, metadata !41}
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786454, null, metadata !"DTYPE", metadata !38, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !42, metadata !47, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!49 = metadata !{i32 3, i32 18, metadata !37, null}
!50 = metadata !{i32 790531, metadata !36, metadata !"signals[1]", null, i32 3, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!51 = metadata !{i32 790531, metadata !36, metadata !"signals[2]", null, i32 3, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!52 = metadata !{i32 786689, metadata !37, metadata !"amplitude", null, i32 4, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !42, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 49}       ; [ DW_TAG_subrange_type ]
!56 = metadata !{i32 4, i32 12, metadata !37, null}
!57 = metadata !{i32 786689, metadata !37, metadata !"locations", null, i32 5, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 5, i32 12, metadata !37, null}
!59 = metadata !{i32 11, i32 2, metadata !60, null}
!60 = metadata !{i32 786443, metadata !37, i32 5, i32 30, metadata !38, i32 0} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 12, i32 3, metadata !62, null}
!62 = metadata !{i32 786443, metadata !60, i32 11, i32 30, metadata !38, i32 1} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 13, i32 3, metadata !62, null}
!64 = metadata !{i32 15, i32 2, metadata !62, null}
!65 = metadata !{i32 786688, metadata !60, metadata !"peak", metadata !38, i32 9, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 17, i32 29, metadata !67, null}
!67 = metadata !{i32 786443, metadata !60, i32 17, i32 16, metadata !38, i32 2} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 17, i32 49, metadata !69, null}
!69 = metadata !{i32 786443, metadata !67, i32 17, i32 48, metadata !38, i32 3} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 18, i32 1, metadata !69, null}
!71 = metadata !{i32 19, i32 2, metadata !69, null}
!72 = metadata !{i32 22, i32 4, metadata !73, null}
!73 = metadata !{i32 786443, metadata !69, i32 19, i32 61, metadata !38, i32 4} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 20, i32 4, metadata !73, null}
!75 = metadata !{i32 21, i32 4, metadata !73, null}
!76 = metadata !{i32 23, i32 3, metadata !73, null}
!77 = metadata !{i32 24, i32 2, metadata !69, null}
!78 = metadata !{i32 17, i32 43, metadata !67, null}
!79 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !38, i32 17, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 26, i32 2, metadata !60, null}
!81 = metadata !{i32 27, i32 3, metadata !82, null}
!82 = metadata !{i32 786443, metadata !60, i32 26, i32 40, metadata !38, i32 5} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 28, i32 3, metadata !82, null}
!84 = metadata !{i32 29, i32 2, metadata !82, null}
!85 = metadata !{i32 31, i32 1, metadata !60, null}
