; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/peaks/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@peaks_str = internal unnamed_addr constant [6 x i8] c"peaks\00" ; [#uses=1 type=[6 x i8]*]
@memset_shift_buf_str = internal unnamed_addr constant [17 x i8] c"memset_shift_buf\00" ; [#uses=1 type=[17 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=3 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1 ; [#uses=3 type=[13 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=12 type=[1 x i8]*]

; [#uses=0]
define void @peaks(float* %samples_V, float* %amplitude_V, i32* %locations_V) {
  %shift_buf = alloca float                       ; [#uses=2 type=float*]
  %shift_buf_1 = alloca float                     ; [#uses=2 type=float*]
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %locations_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecInterface(float* %amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(float* %samples_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %samples_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %amplitude_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %locations_V), !map !15
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @peaks_str) nounwind
  call void @llvm.dbg.value(metadata !{float* %samples_V}, i64 0, metadata !19), !dbg !141 ; [debug line = 3:25] [debug variable = samples.V]
  call void @llvm.dbg.value(metadata !{float* %amplitude_V}, i64 0, metadata !142), !dbg !144 ; [debug line = 4:19] [debug variable = amplitude.V]
  call void @llvm.dbg.value(metadata !{i32* %locations_V}, i64 0, metadata !145), !dbg !150 ; [debug line = 5:19] [debug variable = locations.V]
  br label %meminst

meminst:                                          ; preds = %meminst15, %0
  %invdar = phi i2 [ 0, %0 ], [ %indvarinc, %meminst15 ] ; [#uses=3 type=i2]
  %indvarinc = add i2 %invdar, 1, !dbg !151       ; [#uses=1 type=i2] [debug line = 7:30]
  switch i2 %invdar, label %meminst15 [
    i2 0, label %branch0
    i2 1, label %branch1
  ], !dbg !151                                    ; [debug line = 7:30]

meminst15:                                        ; preds = %branch1, %branch0, %meminst
  %shift_buf_load = load float* %shift_buf        ; [#uses=1 type=float]
  %shift_buf_1_load = load float* %shift_buf_1    ; [#uses=1 type=float]
  %tmp_1 = icmp eq i2 %invdar, -2, !dbg !151      ; [#uses=1 type=i1] [debug line = 7:30]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memset_shift_buf_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp_1, label %.preheader, label %meminst, !dbg !151 ; [debug line = 7:30]

.preheader:                                       ; preds = %._crit_edge, %meminst15
  %shift_buf_1_2 = phi float [ %shift_buf_1_9, %._crit_edge ], [ %shift_buf_1_load, %meminst15 ] ; [#uses=2 type=float]
  %shift_buf_1_9 = phi float [ %tmp_20, %._crit_edge ], [ %shift_buf_load, %meminst15 ] ; [#uses=5 type=float]
  %tmp_6 = phi i17 [ %i, %._crit_edge ], [ 0, %meminst15 ] ; [#uses=3 type=i17]
  %exitcond = icmp eq i17 %tmp_6, -11072, !dbg !153 ; [#uses=1 type=i1] [debug line = 10:29]
  %i = add i17 %tmp_6, 1, !dbg !155               ; [#uses=1 type=i17] [debug line = 10:44]
  br i1 %exitcond, label %3, label %1, !dbg !153  ; [debug line = 10:29]

; <label>:1                                       ; preds = %.preheader
  %tmp_18 = zext i17 %tmp_6 to i32, !dbg !153     ; [#uses=1 type=i32] [debug line = 10:29]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120000, i64 120000, i64 120000) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind, !dbg !156 ; [debug line = 10:50]
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str2), !dbg !156 ; [#uses=1 type=i32] [debug line = 10:50]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !158 ; [debug line = 11:1]
  call void @llvm.dbg.value(metadata !{float %shift_buf_1_9}, i64 0, metadata !159), !dbg !166 ; [debug line = 14:3] [debug variable = shift_buf[1]]
  call void @llvm.dbg.value(metadata !{float* %samples_V}, i64 0, metadata !167), !dbg !172 ; [debug line = 129:56@15:18] [debug variable = stream<float>.V]
  %tmp_20 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %samples_V), !dbg !174 ; [#uses=3 type=float] [debug line = 131:9@15:18]
  call void @llvm.dbg.value(metadata !{float %tmp_20}, i64 0, metadata !176), !dbg !174 ; [debug line = 131:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_20}, i64 0, metadata !177), !dbg !173 ; [debug line = 15:18] [debug variable = shift_buf[0]]
  %shift_buf_1_2_to_int = bitcast float %shift_buf_1_2 to i32 ; [#uses=2 type=i32]
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_1_2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_4 = trunc i32 %shift_buf_1_2_to_int to i23 ; [#uses=1 type=i23]
  %shift_buf_1_to_int = bitcast float %shift_buf_1_9 to i32 ; [#uses=2 type=i32]
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_5 = trunc i32 %shift_buf_1_to_int to i23   ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp_3, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp_4, 0                 ; [#uses=1 type=i1]
  %tmp_2 = or i1 %notrhs, %notlhs                 ; [#uses=1 type=i1]
  %notlhs4 = icmp ne i8 %tmp_8, -1                ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp_5, 0                ; [#uses=1 type=i1]
  %tmp_7 = or i1 %notrhs5, %notlhs4               ; [#uses=2 type=i1]
  %tmp_9 = and i1 %tmp_2, %tmp_7                  ; [#uses=1 type=i1]
  %tmp_10 = fcmp olt float %shift_buf_1_2, %shift_buf_1_9, !dbg !178 ; [#uses=1 type=i1] [debug line = 17:3]
  %tmp_11 = and i1 %tmp_9, %tmp_10, !dbg !178     ; [#uses=1 type=i1] [debug line = 17:3]
  %shift_buf_0_to_int = bitcast float %tmp_20 to i32 ; [#uses=2 type=i32]
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf_0_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp_13 = trunc i32 %shift_buf_0_to_int to i23  ; [#uses=1 type=i23]
  %notlhs8 = icmp ne i8 %tmp_12, -1               ; [#uses=1 type=i1]
  %notrhs9 = icmp eq i23 %tmp_13, 0               ; [#uses=1 type=i1]
  %tmp_14 = or i1 %notrhs9, %notlhs8              ; [#uses=1 type=i1]
  %tmp_15 = and i1 %tmp_7, %tmp_14                ; [#uses=1 type=i1]
  %tmp_16 = fcmp ogt float %shift_buf_1_9, %tmp_20, !dbg !178 ; [#uses=1 type=i1] [debug line = 17:3]
  %tmp_17 = and i1 %tmp_15, %tmp_16, !dbg !178    ; [#uses=1 type=i1] [debug line = 17:3]
  %or_cond = and i1 %tmp_11, %tmp_17, !dbg !178   ; [#uses=1 type=i1] [debug line = 17:3]
  br i1 %or_cond, label %2, label %._crit_edge, !dbg !178 ; [debug line = 17:3]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i32* %locations_V}, i64 0, metadata !179), !dbg !184 ; [debug line = 144:48@18:4] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i17 %tmp_6}, i64 0, metadata !187), !dbg !189 ; [debug line = 145:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_18}, i64 0, metadata !187), !dbg !189 ; [debug line = 145:31@18:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %locations_V, i32 %tmp_18), !dbg !190 ; [debug line = 146:9@18:4]
  call void @llvm.dbg.value(metadata !{float* %amplitude_V}, i64 0, metadata !191), !dbg !194 ; [debug line = 144:48@19:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %shift_buf_1_9}, i64 0, metadata !196), !dbg !198 ; [debug line = 145:31@19:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %amplitude_V, float %shift_buf_1_9), !dbg !199 ; [debug line = 146:9@19:4]
  br label %._crit_edge, !dbg !200                ; [debug line = 20:3]

._crit_edge:                                      ; preds = %2, %1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str2, i32 %tmp), !dbg !201 ; [#uses=0 type=i32] [debug line = 21:2]
  call void @llvm.dbg.value(metadata !{i17 %i}, i64 0, metadata !202), !dbg !155 ; [debug line = 10:44] [debug variable = i]
  br label %.preheader, !dbg !155                 ; [debug line = 10:44]

; <label>:3                                       ; preds = %.preheader
  ret void, !dbg !203                             ; [debug line = 23:1]

branch0:                                          ; preds = %meminst
  store float 0.000000e+00, float* %shift_buf
  br label %meminst15, !dbg !151                  ; [debug line = 7:30]

branch1:                                          ; preds = %meminst
  store float 0.000000e+00, float* %shift_buf_1
  br label %meminst15, !dbg !151                  ; [debug line = 7:30]
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=13]
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

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=3]
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

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_12 = trunc i32 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_12
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
!10 = metadata !{metadata !"samples.V", metadata !5, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"amplitude.V", metadata !5, metadata !"float", i32 0, i32 31}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"locations.V", metadata !5, metadata !"int", i32 0, i32 31}
!19 = metadata !{i32 790531, metadata !20, metadata !"samples.V", null, i32 3, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!20 = metadata !{i32 786689, metadata !21, metadata !"samples", metadata !22, i32 16777219, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 786478, i32 0, metadata !22, metadata !"peaks", metadata !"peaks", metadata !"_Z5peaksRN3hls6streamIfEES2_RNS0_IiEE", metadata !22, i32 3, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !37, i32 5} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786473, metadata !"peaks.cpp", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !25, metadata !25, metadata !86}
!25 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_reference_type ]
!26 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !22, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 786434, metadata !28, metadata !"stream<float>", metadata !29, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !30, i32 0, null, metadata !84} ; [ DW_TAG_class_type ]
!28 = metadata !{i32 786489, null, metadata !"hls", metadata !29, i32 69} ; [ DW_TAG_namespace ]
!29 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Chls_stream.h", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!30 = metadata !{metadata !31, metadata !33, metadata !39, metadata !45, metadata !50, metadata !54, metadata !58, metadata !63, metadata !68, metadata !69, metadata !70, metadata !73, metadata !76, metadata !77, metadata !80}
!31 = metadata !{i32 786445, metadata !27, metadata !"V", metadata !29, i32 163, i64 32, i64 32, i64 0, i32 1, metadata !32} ; [ DW_TAG_member ]
!32 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!33 = metadata !{i32 786478, i32 0, metadata !27, metadata !"stream", metadata !"stream", metadata !"", metadata !29, i32 83, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 83} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !36}
!36 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !27} ; [ DW_TAG_pointer_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786478, i32 0, metadata !27, metadata !"stream", metadata !"stream", metadata !"", metadata !29, i32 86, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 86} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !36, metadata !42}
!42 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 786478, i32 0, metadata !27, metadata !"stream", metadata !"stream", metadata !"", metadata !29, i32 91, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !37, i32 91} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !36, metadata !48}
!48 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_reference_type ]
!49 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!50 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !29, i32 94, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !37, i32 94} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{metadata !53, metadata !36, metadata !48}
!53 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_reference_type ]
!54 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !29, i32 101, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 101} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !36, metadata !57}
!57 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!58 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !29, i32 105, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 105} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !36, metadata !61}
!61 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_reference_type ]
!62 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ]
!63 = metadata !{i32 786478, i32 0, metadata !27, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !29, i32 112, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 112} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{metadata !66, metadata !67}
!66 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !49} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786478, i32 0, metadata !27, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !29, i32 117, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 117} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786478, i32 0, metadata !27, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !29, i32 123, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 123} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !27, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !29, i32 129, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 129} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !32, metadata !36}
!73 = metadata !{i32 786478, i32 0, metadata !27, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !29, i32 136, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 136} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{metadata !66, metadata !36, metadata !57}
!76 = metadata !{i32 786478, i32 0, metadata !27, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !29, i32 144, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 144} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786478, i32 0, metadata !27, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !29, i32 150, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 150} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !66, metadata !36, metadata !61}
!80 = metadata !{i32 786478, i32 0, metadata !27, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !29, i32 157, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 157} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{metadata !83, metadata !36}
!83 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !32, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!86 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_reference_type ]
!87 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !22, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ]
!88 = metadata !{i32 786434, metadata !28, metadata !"stream<int>", metadata !29, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !89, i32 0, null, metadata !136} ; [ DW_TAG_class_type ]
!89 = metadata !{metadata !90, metadata !92, metadata !96, metadata !99, metadata !104, metadata !108, metadata !112, metadata !117, metadata !121, metadata !122, metadata !123, metadata !126, metadata !129, metadata !130, metadata !133}
!90 = metadata !{i32 786445, metadata !88, metadata !"V", metadata !29, i32 163, i64 32, i64 32, i64 0, i32 1, metadata !91} ; [ DW_TAG_member ]
!91 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!92 = metadata !{i32 786478, i32 0, metadata !88, metadata !"stream", metadata !"stream", metadata !"", metadata !29, i32 83, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 83} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !95}
!95 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !88} ; [ DW_TAG_pointer_type ]
!96 = metadata !{i32 786478, i32 0, metadata !88, metadata !"stream", metadata !"stream", metadata !"", metadata !29, i32 86, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 86} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{null, metadata !95, metadata !42}
!99 = metadata !{i32 786478, i32 0, metadata !88, metadata !"stream", metadata !"stream", metadata !"", metadata !29, i32 91, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !37, i32 91} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !95, metadata !102}
!102 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_reference_type ]
!103 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_const_type ]
!104 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !29, i32 94, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !37, i32 94} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !107, metadata !95, metadata !102}
!107 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_reference_type ]
!108 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !29, i32 101, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 101} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{null, metadata !95, metadata !111}
!111 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_reference_type ]
!112 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !29, i32 105, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 105} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!114 = metadata !{null, metadata !95, metadata !115}
!115 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_reference_type ]
!116 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_const_type ]
!117 = metadata !{i32 786478, i32 0, metadata !88, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !29, i32 112, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 112} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{metadata !66, metadata !120}
!120 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !103} ; [ DW_TAG_pointer_type ]
!121 = metadata !{i32 786478, i32 0, metadata !88, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !29, i32 117, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 117} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786478, i32 0, metadata !88, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !29, i32 123, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 123} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786478, i32 0, metadata !88, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !29, i32 129, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 129} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{metadata !91, metadata !95}
!126 = metadata !{i32 786478, i32 0, metadata !88, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !29, i32 136, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 136} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{metadata !66, metadata !95, metadata !111}
!129 = metadata !{i32 786478, i32 0, metadata !88, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !29, i32 144, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 144} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786478, i32 0, metadata !88, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !29, i32 150, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 150} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{metadata !66, metadata !95, metadata !115}
!133 = metadata !{i32 786478, i32 0, metadata !88, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !29, i32 157, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !37, i32 157} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{metadata !83, metadata !95}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !91, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!138 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!139 = metadata !{i32 786438, metadata !28, metadata !"stream<float>", metadata !29, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !140, i32 0, null, metadata !84} ; [ DW_TAG_class_field_type ]
!140 = metadata !{metadata !31}
!141 = metadata !{i32 3, i32 25, metadata !21, null}
!142 = metadata !{i32 790531, metadata !143, metadata !"amplitude.V", null, i32 4, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!143 = metadata !{i32 786689, metadata !21, metadata !"amplitude", metadata !22, i32 33554436, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 4, i32 19, metadata !21, null}
!145 = metadata !{i32 790531, metadata !146, metadata !"locations.V", null, i32 5, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!146 = metadata !{i32 786689, metadata !21, metadata !"locations", metadata !22, i32 50331653, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ]
!148 = metadata !{i32 786438, metadata !28, metadata !"stream<int>", metadata !29, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !149, i32 0, null, metadata !136} ; [ DW_TAG_class_field_type ]
!149 = metadata !{metadata !90}
!150 = metadata !{i32 5, i32 19, metadata !21, null}
!151 = metadata !{i32 7, i32 30, metadata !152, null}
!152 = metadata !{i32 786443, metadata !21, i32 5, i32 30, metadata !22, i32 0} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 10, i32 29, metadata !154, null}
!154 = metadata !{i32 786443, metadata !152, i32 10, i32 16, metadata !22, i32 1} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 10, i32 44, metadata !154, null}
!156 = metadata !{i32 10, i32 50, metadata !157, null}
!157 = metadata !{i32 786443, metadata !154, i32 10, i32 49, metadata !22, i32 2} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 11, i32 1, metadata !157, null}
!159 = metadata !{i32 790529, metadata !160, metadata !"shift_buf[1]", null, i32 7, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!160 = metadata !{i32 786688, metadata !152, metadata !"shift_buf", metadata !22, i32 7, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !162, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ]
!162 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !22, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ]
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!165 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 32, i32 0, i32 0, metadata !162, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ]
!166 = metadata !{i32 14, i32 3, metadata !157, null}
!167 = metadata !{i32 790531, metadata !168, metadata !"stream<float>.V", null, i32 129, metadata !171, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!168 = metadata !{i32 786689, metadata !169, metadata !"this", metadata !29, i32 16777345, metadata !170, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 786478, i32 0, metadata !28, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !29, i32 129, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !70, metadata !37, i32 129} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!171 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ]
!172 = metadata !{i32 129, i32 56, metadata !169, metadata !173}
!173 = metadata !{i32 15, i32 18, metadata !157, null}
!174 = metadata !{i32 131, i32 9, metadata !175, metadata !173}
!175 = metadata !{i32 786443, metadata !169, i32 129, i32 63, metadata !29, i32 6} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 786688, metadata !175, metadata !"tmp", metadata !29, i32 130, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 790529, metadata !160, metadata !"shift_buf[0]", null, i32 7, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!178 = metadata !{i32 17, i32 3, metadata !157, null}
!179 = metadata !{i32 790531, metadata !180, metadata !"stream<int>.V", null, i32 144, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!180 = metadata !{i32 786689, metadata !181, metadata !"this", metadata !29, i32 16777360, metadata !182, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 786478, i32 0, metadata !28, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !29, i32 144, metadata !113, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !129, metadata !37, i32 144} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ]
!183 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ]
!184 = metadata !{i32 144, i32 48, metadata !181, metadata !185}
!185 = metadata !{i32 18, i32 4, metadata !186, null}
!186 = metadata !{i32 786443, metadata !157, i32 17, i32 66, metadata !22, i32 3} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 786688, metadata !188, metadata !"tmp", metadata !29, i32 145, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 786443, metadata !181, i32 144, i32 79, metadata !29, i32 5} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 145, i32 31, metadata !188, metadata !185}
!190 = metadata !{i32 146, i32 9, metadata !188, metadata !185}
!191 = metadata !{i32 790531, metadata !192, metadata !"stream<float>.V", null, i32 144, metadata !171, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!192 = metadata !{i32 786689, metadata !193, metadata !"this", metadata !29, i32 16777360, metadata !170, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 786478, i32 0, metadata !28, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !29, i32 144, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !76, metadata !37, i32 144} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 144, i32 48, metadata !193, metadata !195}
!195 = metadata !{i32 19, i32 4, metadata !186, null}
!196 = metadata !{i32 786688, metadata !197, metadata !"tmp", metadata !29, i32 145, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 786443, metadata !193, i32 144, i32 79, metadata !29, i32 4} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 145, i32 31, metadata !197, metadata !195}
!199 = metadata !{i32 146, i32 9, metadata !197, metadata !195}
!200 = metadata !{i32 20, i32 3, metadata !186, null}
!201 = metadata !{i32 21, i32 2, metadata !157, null}
!202 = metadata !{i32 786688, metadata !154, metadata !"i", metadata !22, i32 10, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 23, i32 1, metadata !152, null}
