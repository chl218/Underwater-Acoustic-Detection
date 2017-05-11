; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/signal_hits/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@signal_hits_str = internal unnamed_addr constant [12 x i8] c"signal_hits\00" ; [#uses=1 type=[12 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=3 type=[8 x i8]*]
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=0]
define void @signal_hits(float %threshold, float* %signals_V, float* %hits_V, i32* %locs_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %locs_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str15, [1 x i8]* @p_str16, [1 x i8]* @p_str17) ; [#uses=0 type=i32]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecInterface(float* %hits_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str10, [1 x i8]* @p_str11, [1 x i8]* @p_str12, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str7, [1 x i8]* @p_str8, [1 x i8]* @p_str9) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(float %threshold), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %signals_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(float* %hits_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %locs_V), !map !21
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @signal_hits_str) nounwind
  %threshold_read = call float @_ssdm_op_Read.ap_auto.float(float %threshold) ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %threshold_read}, i64 0, metadata !25), !dbg !144 ; [debug line = 3:28] [debug variable = threshold]
  call void @llvm.dbg.value(metadata !{float %threshold}, i64 0, metadata !25), !dbg !144 ; [debug line = 3:28] [debug variable = threshold]
  call void @llvm.dbg.value(metadata !{float* %signals_V}, i64 0, metadata !145), !dbg !150 ; [debug line = 4:19] [debug variable = signals.V]
  call void @llvm.dbg.value(metadata !{float* %hits_V}, i64 0, metadata !151), !dbg !153 ; [debug line = 5:19] [debug variable = hits.V]
  call void @llvm.dbg.value(metadata !{i32* %locs_V}, i64 0, metadata !154), !dbg !159 ; [debug line = 6:19] [debug variable = locs.V]
  %threshold_to_int = bitcast float %threshold_read to i32 ; [#uses=2 type=i32]
  %tmp = trunc i32 %threshold_to_int to i23       ; [#uses=1 type=i23]
  %notrhs3 = icmp eq i23 %tmp, 0                  ; [#uses=1 type=i1]
  br label %1, !dbg !160                          ; [debug line = 8:15]

; <label>:1                                       ; preds = %._crit_edge, %0
  %tmp_5 = phi i17 [ 0, %0 ], [ %i, %._crit_edge ] ; [#uses=3 type=i17]
  %exitcond = icmp eq i17 %tmp_5, -11072, !dbg !160 ; [#uses=1 type=i1] [debug line = 8:15]
  %i = add i17 %tmp_5, 1, !dbg !163               ; [#uses=1 type=i17] [debug line = 8:30]
  br i1 %exitcond, label %4, label %2, !dbg !160  ; [debug line = 8:15]

; <label>:2                                       ; preds = %1
  %tmp_12 = zext i17 %tmp_5 to i32, !dbg !160     ; [#uses=1 type=i32] [debug line = 8:15]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120000, i64 120000, i64 120000) ; [#uses=0 type=i32]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str), !dbg !164 ; [#uses=1 type=i32] [debug line = 8:36]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !166 ; [debug line = 9:1]
  call void @llvm.dbg.value(metadata !{float* %signals_V}, i64 0, metadata !167), !dbg !172 ; [debug line = 129:56@10:22] [debug variable = stream<float>.V]
  %tmp_11 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %signals_V), !dbg !174 ; [#uses=3 type=float] [debug line = 131:9@10:22]
  call void @llvm.dbg.value(metadata !{float %tmp_11}, i64 0, metadata !176), !dbg !174 ; [debug line = 131:9@10:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_11}, i64 0, metadata !177), !dbg !173 ; [debug line = 10:22] [debug variable = currAmp]
  %currAmp_to_int = bitcast float %tmp_11 to i32  ; [#uses=2 type=i32]
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %currAmp_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_4 = trunc i32 %currAmp_to_int to i23       ; [#uses=1 type=i23]
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %threshold_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %notlhs = icmp ne i8 %tmp_1, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_4, 0                 ; [#uses=1 type=i1]
  %tmp_9 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs2 = icmp ne i8 %tmp_7, -1                ; [#uses=1 type=i1]
  %tmp_2 = or i1 %notrhs3, %notlhs2               ; [#uses=1 type=i1]
  %tmp_6 = and i1 %tmp_9, %tmp_2                  ; [#uses=1 type=i1]
  %tmp_8 = fcmp ogt float %tmp_11, %threshold_read, !dbg !178 ; [#uses=1 type=i1] [debug line = 11:3]
  %tmp_10 = and i1 %tmp_6, %tmp_8, !dbg !178      ; [#uses=1 type=i1] [debug line = 11:3]
  br i1 %tmp_10, label %3, label %._crit_edge, !dbg !178 ; [debug line = 11:3]

; <label>:3                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{float* %hits_V}, i64 0, metadata !179), !dbg !182 ; [debug line = 144:48@12:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_11}, i64 0, metadata !185), !dbg !187 ; [debug line = 145:31@12:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %hits_V, float %tmp_11), !dbg !188 ; [debug line = 146:9@12:4]
  call void @llvm.dbg.value(metadata !{i32* %locs_V}, i64 0, metadata !189), !dbg !194 ; [debug line = 144:48@13:4] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i17 %tmp_5}, i64 0, metadata !196), !dbg !198 ; [debug line = 145:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_12}, i64 0, metadata !196), !dbg !198 ; [debug line = 145:31@13:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %locs_V, i32 %tmp_12), !dbg !199 ; [debug line = 146:9@13:4]
  br label %._crit_edge, !dbg !200                ; [debug line = 14:3]

._crit_edge:                                      ; preds = %3, %2
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_3), !dbg !201 ; [#uses=0 type=i32] [debug line = 15:2]
  call void @llvm.dbg.value(metadata !{i17 %i}, i64 0, metadata !202), !dbg !163 ; [debug line = 8:30] [debug variable = i]
  br label %1, !dbg !163                          ; [debug line = 8:30]

; <label>:4                                       ; preds = %1
  ret void, !dbg !203                             ; [debug line = 17:1]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1) ; [#uses=0 type=float]
  ret void
}

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

; [#uses=3]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0) ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=1]
define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

; [#uses=2]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_10 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_10
}

; [#uses=0]
declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare float @_autotb_FifoWrite_float(float*, float)

; [#uses=1]
declare float @_autotb_FifoRead_float(float*)

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
!25 = metadata !{i32 786689, metadata !26, metadata !"threshold", metadata !27, i32 16777219, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 786478, i32 0, metadata !27, metadata !"signal_hits", metadata !"signal_hits", metadata !"_Z11signal_hitsfRN3hls6streamIfEES2_RNS0_IiEE", metadata !27, i32 3, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !43, i32 6} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786473, metadata !"signal_hits.cpp", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !30, metadata !32, metadata !32, metadata !92}
!30 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !27, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_reference_type ]
!33 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !27, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ]
!34 = metadata !{i32 786434, metadata !35, metadata !"stream<float>", metadata !36, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !37, i32 0, null, metadata !90} ; [ DW_TAG_class_type ]
!35 = metadata !{i32 786489, null, metadata !"hls", metadata !36, i32 69} ; [ DW_TAG_namespace ]
!36 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Chls_stream.h", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!37 = metadata !{metadata !38, metadata !39, metadata !45, metadata !51, metadata !56, metadata !60, metadata !64, metadata !69, metadata !74, metadata !75, metadata !76, metadata !79, metadata !82, metadata !83, metadata !86}
!38 = metadata !{i32 786445, metadata !34, metadata !"V", metadata !36, i32 163, i64 32, i64 32, i64 0, i32 1, metadata !31} ; [ DW_TAG_member ]
!39 = metadata !{i32 786478, i32 0, metadata !34, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 83, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 83} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !42}
!42 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !34} ; [ DW_TAG_pointer_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!45 = metadata !{i32 786478, i32 0, metadata !34, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 86, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 86} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !42, metadata !48}
!48 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!49 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ]
!50 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 786478, i32 0, metadata !34, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 91, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !43, i32 91} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !42, metadata !54}
!54 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_reference_type ]
!55 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!56 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !36, i32 94, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !43, i32 94} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{metadata !59, metadata !42, metadata !54}
!59 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_reference_type ]
!60 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !36, i32 101, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 101} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !42, metadata !63}
!63 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_reference_type ]
!64 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !36, i32 105, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 105} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !42, metadata !67}
!67 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_reference_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786478, i32 0, metadata !34, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !36, i32 112, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 112} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{metadata !72, metadata !73}
!72 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !55} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786478, i32 0, metadata !34, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !36, i32 117, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 117} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786478, i32 0, metadata !34, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !36, i32 123, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 123} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786478, i32 0, metadata !34, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !36, i32 129, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 129} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !31, metadata !42}
!79 = metadata !{i32 786478, i32 0, metadata !34, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !36, i32 136, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 136} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{metadata !72, metadata !42, metadata !63}
!82 = metadata !{i32 786478, i32 0, metadata !34, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !36, i32 144, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 144} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786478, i32 0, metadata !34, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !36, i32 150, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 150} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{metadata !72, metadata !42, metadata !67}
!86 = metadata !{i32 786478, i32 0, metadata !34, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !36, i32 157, metadata !87, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 157} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{metadata !89, metadata !42}
!89 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !31, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!92 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_reference_type ]
!93 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !27, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ]
!94 = metadata !{i32 786434, metadata !35, metadata !"stream<int>", metadata !36, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !95, i32 0, null, metadata !142} ; [ DW_TAG_class_type ]
!95 = metadata !{metadata !96, metadata !98, metadata !102, metadata !105, metadata !110, metadata !114, metadata !118, metadata !123, metadata !127, metadata !128, metadata !129, metadata !132, metadata !135, metadata !136, metadata !139}
!96 = metadata !{i32 786445, metadata !94, metadata !"V", metadata !36, i32 163, i64 32, i64 32, i64 0, i32 1, metadata !97} ; [ DW_TAG_member ]
!97 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 786478, i32 0, metadata !94, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 83, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 83} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !101}
!101 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !94} ; [ DW_TAG_pointer_type ]
!102 = metadata !{i32 786478, i32 0, metadata !94, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 86, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 86} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !101, metadata !48}
!105 = metadata !{i32 786478, i32 0, metadata !94, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 91, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !43, i32 91} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{null, metadata !101, metadata !108}
!108 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_reference_type ]
!109 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_const_type ]
!110 = metadata !{i32 786478, i32 0, metadata !94, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !36, i32 94, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !43, i32 94} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !113, metadata !101, metadata !108}
!113 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_reference_type ]
!114 = metadata !{i32 786478, i32 0, metadata !94, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !36, i32 101, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 101} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{null, metadata !101, metadata !117}
!117 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_reference_type ]
!118 = metadata !{i32 786478, i32 0, metadata !94, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !36, i32 105, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 105} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{null, metadata !101, metadata !121}
!121 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_reference_type ]
!122 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_const_type ]
!123 = metadata !{i32 786478, i32 0, metadata !94, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !36, i32 112, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 112} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{metadata !72, metadata !126}
!126 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !109} ; [ DW_TAG_pointer_type ]
!127 = metadata !{i32 786478, i32 0, metadata !94, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !36, i32 117, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 117} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786478, i32 0, metadata !94, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !36, i32 123, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 123} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786478, i32 0, metadata !94, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !36, i32 129, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 129} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !97, metadata !101}
!132 = metadata !{i32 786478, i32 0, metadata !94, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !36, i32 136, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 136} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{metadata !72, metadata !101, metadata !117}
!135 = metadata !{i32 786478, i32 0, metadata !94, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !36, i32 144, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 144} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786478, i32 0, metadata !94, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !36, i32 150, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 150} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{metadata !72, metadata !101, metadata !121}
!139 = metadata !{i32 786478, i32 0, metadata !94, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !36, i32 157, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !43, i32 157} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{metadata !89, metadata !101}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !97, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!144 = metadata !{i32 3, i32 28, metadata !26, null}
!145 = metadata !{i32 790531, metadata !146, metadata !"signals.V", null, i32 4, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!146 = metadata !{i32 786689, metadata !26, metadata !"signals", metadata !27, i32 33554436, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ]
!148 = metadata !{i32 786438, metadata !35, metadata !"stream<float>", metadata !36, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !149, i32 0, null, metadata !90} ; [ DW_TAG_class_field_type ]
!149 = metadata !{metadata !38}
!150 = metadata !{i32 4, i32 19, metadata !26, null}
!151 = metadata !{i32 790531, metadata !152, metadata !"hits.V", null, i32 5, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!152 = metadata !{i32 786689, metadata !26, metadata !"hits", metadata !27, i32 50331653, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 5, i32 19, metadata !26, null}
!154 = metadata !{i32 790531, metadata !155, metadata !"locs.V", null, i32 6, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!155 = metadata !{i32 786689, metadata !26, metadata !"locs", metadata !27, i32 67108870, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ]
!157 = metadata !{i32 786438, metadata !35, metadata !"stream<int>", metadata !36, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !158, i32 0, null, metadata !142} ; [ DW_TAG_class_field_type ]
!158 = metadata !{metadata !96}
!159 = metadata !{i32 6, i32 19, metadata !26, null}
!160 = metadata !{i32 8, i32 15, metadata !161, null}
!161 = metadata !{i32 786443, metadata !162, i32 8, i32 2, metadata !27, i32 1} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786443, metadata !26, i32 6, i32 25, metadata !27, i32 0} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 8, i32 30, metadata !161, null}
!164 = metadata !{i32 8, i32 36, metadata !165, null}
!165 = metadata !{i32 786443, metadata !161, i32 8, i32 35, metadata !27, i32 2} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 9, i32 1, metadata !165, null}
!167 = metadata !{i32 790531, metadata !168, metadata !"stream<float>.V", null, i32 129, metadata !171, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!168 = metadata !{i32 786689, metadata !169, metadata !"this", metadata !36, i32 16777345, metadata !170, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 786478, i32 0, metadata !35, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !36, i32 129, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !76, metadata !43, i32 129} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!171 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ]
!172 = metadata !{i32 129, i32 56, metadata !169, metadata !173}
!173 = metadata !{i32 10, i32 22, metadata !165, null}
!174 = metadata !{i32 131, i32 9, metadata !175, metadata !173}
!175 = metadata !{i32 786443, metadata !169, i32 129, i32 63, metadata !36, i32 6} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 786688, metadata !175, metadata !"tmp", metadata !36, i32 130, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 786688, metadata !165, metadata !"currAmp", metadata !27, i32 10, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 11, i32 3, metadata !165, null}
!179 = metadata !{i32 790531, metadata !180, metadata !"stream<float>.V", null, i32 144, metadata !171, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!180 = metadata !{i32 786689, metadata !181, metadata !"this", metadata !36, i32 16777360, metadata !170, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 786478, i32 0, metadata !35, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !36, i32 144, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !82, metadata !43, i32 144} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 144, i32 48, metadata !181, metadata !183}
!183 = metadata !{i32 12, i32 4, metadata !184, null}
!184 = metadata !{i32 786443, metadata !165, i32 11, i32 27, metadata !27, i32 3} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 786688, metadata !186, metadata !"tmp", metadata !36, i32 145, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 786443, metadata !181, i32 144, i32 79, metadata !36, i32 5} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 145, i32 31, metadata !186, metadata !183}
!188 = metadata !{i32 146, i32 9, metadata !186, metadata !183}
!189 = metadata !{i32 790531, metadata !190, metadata !"stream<int>.V", null, i32 144, metadata !193, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!190 = metadata !{i32 786689, metadata !191, metadata !"this", metadata !36, i32 16777360, metadata !192, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 786478, i32 0, metadata !35, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !36, i32 144, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !135, metadata !43, i32 144} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ]
!193 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ]
!194 = metadata !{i32 144, i32 48, metadata !191, metadata !195}
!195 = metadata !{i32 13, i32 4, metadata !184, null}
!196 = metadata !{i32 786688, metadata !197, metadata !"tmp", metadata !36, i32 145, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 786443, metadata !191, i32 144, i32 79, metadata !36, i32 4} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 145, i32 31, metadata !197, metadata !195}
!199 = metadata !{i32 146, i32 9, metadata !197, metadata !195}
!200 = metadata !{i32 14, i32 3, metadata !184, null}
!201 = metadata !{i32 15, i32 2, metadata !165, null}
!202 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !27, i32 8, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 17, i32 1, metadata !162, null}
