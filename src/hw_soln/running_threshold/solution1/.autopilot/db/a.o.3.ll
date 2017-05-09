; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/running_threshold/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@running_threshold_str = internal unnamed_addr constant [18 x i8] c"running_threshold\00" ; [#uses=1 type=[18 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@p_str9 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=0]
define void @running_threshold(float* %amplitude_V, float* %threshold_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %threshold_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str10, [1 x i8]* @p_str11, [1 x i8]* @p_str12, [1 x i8]* @p_str13) ; [#uses=0 type=i32]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecInterface(float* %amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str6, [1 x i8]* @p_str7, [1 x i8]* @p_str8, [1 x i8]* @p_str9) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %amplitude_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %threshold_V), !map !11
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @running_threshold_str) nounwind
  call void @llvm.dbg.value(metadata !{float* %amplitude_V}, i64 0, metadata !15), !dbg !85 ; [debug line = 4:37] [debug variable = amplitude.V]
  call void @llvm.dbg.value(metadata !{float* %threshold_V}, i64 0, metadata !86), !dbg !88 ; [debug line = 4:61] [debug variable = threshold.V]
  br label %1, !dbg !89                           ; [debug line = 7:15]

; <label>:1                                       ; preds = %2, %0
  %mean = phi float [ 0.000000e+00, %0 ], [ %mean_1, %2 ] ; [#uses=2 type=float]
  %i = phi i17 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=2 type=i17]
  %exitcond = icmp eq i17 %i, -11072, !dbg !89    ; [#uses=1 type=i1] [debug line = 7:15]
  %i_1 = add i17 %i, 1, !dbg !92                  ; [#uses=1 type=i17] [debug line = 7:30]
  br i1 %exitcond, label %3, label %2, !dbg !89   ; [debug line = 7:15]

; <label>:2                                       ; preds = %1
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120000, i64 120000, i64 120000) ; [#uses=0 type=i32]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str), !dbg !93 ; [#uses=1 type=i32] [debug line = 7:36]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !95 ; [debug line = 8:1]
  call void @llvm.dbg.value(metadata !{float* %amplitude_V}, i64 0, metadata !96), !dbg !101 ; [debug line = 129:56@9:10] [debug variable = stream<float>.V]
  %tmp_3 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %amplitude_V), !dbg !103 ; [#uses=1 type=float] [debug line = 131:9@9:10]
  call void @llvm.dbg.value(metadata !{float %tmp_3}, i64 0, metadata !105), !dbg !103 ; [debug line = 131:9@9:10] [debug variable = tmp]
  %mean_1 = fadd float %mean, %tmp_3, !dbg !102   ; [#uses=1 type=float] [debug line = 9:10]
  call void @llvm.dbg.value(metadata !{float %mean_1}, i64 0, metadata !106), !dbg !102 ; [debug line = 9:10] [debug variable = mean]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_5), !dbg !108 ; [#uses=0 type=i32] [debug line = 10:2]
  call void @llvm.dbg.value(metadata !{i17 %i_1}, i64 0, metadata !109), !dbg !92 ; [debug line = 7:30] [debug variable = i]
  br label %1, !dbg !92                           ; [debug line = 7:30]

; <label>:3                                       ; preds = %1
  %tmp = fmul float %mean, 5.000000e+00, !dbg !111 ; [#uses=1 type=float] [debug line = 12:2]
  %tmp_1 = fdiv float %tmp, 2.000000e+03, !dbg !111 ; [#uses=1 type=float] [debug line = 12:2]
  %tmp_2 = fmul float %tmp_1, 6.000000e+01, !dbg !111 ; [#uses=1 type=float] [debug line = 12:2]
  call void @llvm.dbg.value(metadata !{float* %threshold_V}, i64 0, metadata !112), !dbg !115 ; [debug line = 144:48@12:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_2}, i64 0, metadata !116), !dbg !118 ; [debug line = 145:31@12:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %threshold_V, float %tmp_2), !dbg !119 ; [debug line = 146:9@12:2]
  ret void, !dbg !120                             ; [debug line = 14:1]
}

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

; [#uses=2]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=2]
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

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

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
!10 = metadata !{metadata !"amplitude.V", metadata !5, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"threshold.V", metadata !5, metadata !"float", i32 0, i32 31}
!15 = metadata !{i32 790531, metadata !16, metadata !"amplitude.V", null, i32 4, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!16 = metadata !{i32 786689, metadata !17, metadata !"amplitude", metadata !18, i32 16777220, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"running_threshold", metadata !"running_threshold", metadata !"_Z17running_thresholdRN3hls6streamIfEES2_", metadata !18, i32 4, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !33, i32 4} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"running_threshold.cpp", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21, metadata !21}
!21 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_reference_type ]
!22 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !18, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 786434, metadata !24, metadata !"stream<float>", metadata !25, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !26, i32 0, null, metadata !80} ; [ DW_TAG_class_type ]
!24 = metadata !{i32 786489, null, metadata !"hls", metadata !25, i32 69} ; [ DW_TAG_namespace ]
!25 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Chls_stream.h", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!26 = metadata !{metadata !27, metadata !29, metadata !35, metadata !41, metadata !46, metadata !50, metadata !54, metadata !59, metadata !64, metadata !65, metadata !66, metadata !69, metadata !72, metadata !73, metadata !76}
!27 = metadata !{i32 786445, metadata !23, metadata !"V", metadata !25, i32 163, i64 32, i64 32, i64 0, i32 1, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786478, i32 0, metadata !23, metadata !"stream", metadata !"stream", metadata !"", metadata !25, i32 83, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 83} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32}
!32 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !23} ; [ DW_TAG_pointer_type ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786478, i32 0, metadata !23, metadata !"stream", metadata !"stream", metadata !"", metadata !25, i32 86, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 86} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !32, metadata !38}
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ]
!39 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ]
!40 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786478, i32 0, metadata !23, metadata !"stream", metadata !"stream", metadata !"", metadata !25, i32 91, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !33, i32 91} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !32, metadata !44}
!44 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_reference_type ]
!45 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ]
!46 = metadata !{i32 786478, i32 0, metadata !23, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !25, i32 94, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !33, i32 94} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{metadata !49, metadata !32, metadata !44}
!49 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_reference_type ]
!50 = metadata !{i32 786478, i32 0, metadata !23, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !25, i32 101, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 101} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !32, metadata !53}
!53 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_reference_type ]
!54 = metadata !{i32 786478, i32 0, metadata !23, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !25, i32 105, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 105} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !32, metadata !57}
!57 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_reference_type ]
!58 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ]
!59 = metadata !{i32 786478, i32 0, metadata !23, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !25, i32 112, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 112} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !62, metadata !63}
!62 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!63 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !45} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786478, i32 0, metadata !23, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !25, i32 117, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 117} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !25, i32 123, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 123} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !25, i32 129, metadata !67, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 129} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!68 = metadata !{metadata !28, metadata !32}
!69 = metadata !{i32 786478, i32 0, metadata !23, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !25, i32 136, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 136} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{metadata !62, metadata !32, metadata !53}
!72 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !25, i32 144, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 144} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786478, i32 0, metadata !23, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !25, i32 150, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 150} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{metadata !62, metadata !32, metadata !57}
!76 = metadata !{i32 786478, i32 0, metadata !23, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !25, i32 157, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !33, i32 157} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !79, metadata !32}
!79 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !28, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!82 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ]
!83 = metadata !{i32 786438, metadata !24, metadata !"stream<float>", metadata !25, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !84, i32 0, null, metadata !80} ; [ DW_TAG_class_field_type ]
!84 = metadata !{metadata !27}
!85 = metadata !{i32 4, i32 37, metadata !17, null}
!86 = metadata !{i32 790531, metadata !87, metadata !"threshold.V", null, i32 4, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!87 = metadata !{i32 786689, metadata !17, metadata !"threshold", metadata !18, i32 33554436, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 4, i32 61, metadata !17, null}
!89 = metadata !{i32 7, i32 15, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 7, i32 2, metadata !18, i32 1} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !17, i32 4, i32 71, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 7, i32 30, metadata !90, null}
!93 = metadata !{i32 7, i32 36, metadata !94, null}
!94 = metadata !{i32 786443, metadata !90, i32 7, i32 35, metadata !18, i32 2} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 8, i32 1, metadata !94, null}
!96 = metadata !{i32 790531, metadata !97, metadata !"stream<float>.V", null, i32 129, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!97 = metadata !{i32 786689, metadata !98, metadata !"this", metadata !25, i32 16777345, metadata !99, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 786478, i32 0, metadata !24, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !25, i32 129, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !66, metadata !33, i32 129} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!100 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ]
!101 = metadata !{i32 129, i32 56, metadata !98, metadata !102}
!102 = metadata !{i32 9, i32 10, metadata !94, null}
!103 = metadata !{i32 131, i32 9, metadata !104, metadata !102}
!104 = metadata !{i32 786443, metadata !98, i32 129, i32 63, metadata !25, i32 4} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786688, metadata !104, metadata !"tmp", metadata !25, i32 130, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 786688, metadata !91, metadata !"mean", metadata !18, i32 6, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !18, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!108 = metadata !{i32 10, i32 2, metadata !94, null}
!109 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !18, i32 7, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!111 = metadata !{i32 12, i32 2, metadata !91, null}
!112 = metadata !{i32 790531, metadata !113, metadata !"stream<float>.V", null, i32 144, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!113 = metadata !{i32 786689, metadata !114, metadata !"this", metadata !25, i32 16777360, metadata !99, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 786478, i32 0, metadata !24, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !25, i32 144, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !72, metadata !33, i32 144} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 144, i32 48, metadata !114, metadata !111}
!116 = metadata !{i32 786688, metadata !117, metadata !"tmp", metadata !25, i32 145, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 786443, metadata !114, i32 144, i32 79, metadata !25, i32 3} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 145, i32 31, metadata !117, metadata !111}
!119 = metadata !{i32 146, i32 9, metadata !117, metadata !111}
!120 = metadata !{i32 14, i32 1, metadata !91, null}
