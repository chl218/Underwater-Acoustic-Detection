; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/a.g.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%"class.hls::stream" = type { float }
%"class.hls::stream.0" = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str5 = private unnamed_addr constant [13 x i8] c"Parse_Signal\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"Signal_Begin\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"Signal_End\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str9 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str211 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str14 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str18 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @_Z12detect_callsRN3hls6streamIfEES2_(%"class.hls::stream"* %dat_i, %"class.hls::stream"* %res_o) nounwind {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %dup1 = alloca %"class.hls::stream", align 4    ; [#uses=3 type=%"class.hls::stream"*]
  %dup2 = alloca %"class.hls::stream", align 4    ; [#uses=3 type=%"class.hls::stream"*]
  %dup3 = alloca %"class.hls::stream", align 4    ; [#uses=3 type=%"class.hls::stream"*]
  %dup4 = alloca %"class.hls::stream", align 4    ; [#uses=3 type=%"class.hls::stream"*]
  %peaks = alloca %"class.hls::stream", align 4   ; [#uses=2 type=%"class.hls::stream"*]
  %peak_locs = alloca %"class.hls::stream.0", align 4 ; [#uses=2 type=%"class.hls::stream.0"*]
  %thres = alloca float, align 4                  ; [#uses=2 type=float*]
  %hits = alloca i32, align 4                     ; [#uses=2 type=i32*]
  %sigs = alloca %"class.hls::stream", align 4    ; [#uses=3 type=%"class.hls::stream"*]
  %sig_locs = alloca %"class.hls::stream.0", align 4 ; [#uses=3 type=%"class.hls::stream.0"*]
  store %"class.hls::stream"* %dat_i, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !592), !dbg !593 ; [debug line = 4:32] [debug variable = dat_i]
  store %"class.hls::stream"* %res_o, %"class.hls::stream"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !594), !dbg !595 ; [debug line = 4:52] [debug variable = res_o]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !596 ; [debug line = 5:1]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %dup1}, metadata !598), !dbg !599 ; [debug line = 7:14] [debug variable = dup1]
  call void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream"* %dup1), !dbg !600 ; [debug line = 7:36]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %dup2}, metadata !601), !dbg !602 ; [debug line = 7:20] [debug variable = dup2]
  call void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream"* %dup2), !dbg !600 ; [debug line = 7:36]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %dup3}, metadata !603), !dbg !604 ; [debug line = 7:26] [debug variable = dup3]
  call void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream"* %dup3), !dbg !600 ; [debug line = 7:36]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %dup4}, metadata !605), !dbg !606 ; [debug line = 7:32] [debug variable = dup4]
  call void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream"* %dup4), !dbg !600 ; [debug line = 7:36]
  %3 = load %"class.hls::stream"** %1, align 4, !dbg !607 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 8:2]
  call void @_Z9duplicateRN3hls6streamIfEES2_S2_S2_S2_(%"class.hls::stream"* %3, %"class.hls::stream"* %dup1, %"class.hls::stream"* %dup2, %"class.hls::stream"* %dup3, %"class.hls::stream"* %dup4), !dbg !607 ; [debug line = 8:2]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %peaks}, metadata !608), !dbg !609 ; [debug line = 10:14] [debug variable = peaks]
  call void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream"* %peaks), !dbg !610 ; [debug line = 10:19]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"* %peak_locs}, metadata !611), !dbg !613 ; [debug line = 11:14] [debug variable = peak_locs]
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.0"* %peak_locs), !dbg !614 ; [debug line = 11:23]
  call void @_Z9findpeaksRN3hls6streamIfEES2_RNS0_IiEE(%"class.hls::stream"* %dup1, %"class.hls::stream"* %peaks, %"class.hls::stream.0"* %peak_locs), !dbg !615 ; [debug line = 12:2]
  call void @llvm.dbg.declare(metadata !{float* %thres}, metadata !616), !dbg !618 ; [debug line = 14:12] [debug variable = thres]
  call void @_Z9thresholdRN3hls6streamIfEERf(%"class.hls::stream"* %dup2, float* %thres), !dbg !619 ; [debug line = 15:2]
  call void @llvm.dbg.declare(metadata !{i32* %hits}, metadata !620), !dbg !622 ; [debug line = 17:12] [debug variable = hits]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %sigs}, metadata !623), !dbg !624 ; [debug line = 18:14] [debug variable = sigs]
  call void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream"* %sigs), !dbg !625 ; [debug line = 18:18]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"* %sig_locs}, metadata !626), !dbg !627 ; [debug line = 19:14] [debug variable = sig_locs]
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.0"* %sig_locs), !dbg !628 ; [debug line = 19:22]
  %4 = load float* %thres, align 4, !dbg !629     ; [#uses=1 type=float] [debug line = 20:2]
  call void @_Z6detectRN3hls6streamIfEEfRiS2_RNS0_IiEE(%"class.hls::stream"* %dup3, float %4, i32* %hits, %"class.hls::stream"* %sigs, %"class.hls::stream.0"* %sig_locs), !dbg !629 ; [debug line = 20:2]
  %5 = load i32* %hits, align 4, !dbg !630        ; [#uses=1 type=i32] [debug line = 22:2]
  %6 = load %"class.hls::stream"** %2, align 4, !dbg !630 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 22:2]
  call void @_Z5parseRN3hls6streamIfEEiS2_RNS0_IiEES2_(%"class.hls::stream"* %dup4, i32 %5, %"class.hls::stream"* %sigs, %"class.hls::stream.0"* %sig_locs, %"class.hls::stream"* %6), !dbg !630 ; [debug line = 22:2]
  ret void, !dbg !631                             ; [debug line = 23:1]
}

; [#uses=59]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=6]
define linkonce_odr void @_ZN3hls6streamIfEC1Ev(%"class.hls::stream"* %this) unnamed_addr nounwind inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !632), !dbg !634 ; [debug line = 37:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @_ZN3hls6streamIfEC2Ev(%"class.hls::stream"* %2), !dbg !635 ; [debug line = 38:5]
  ret void, !dbg !635                             ; [debug line = 38:5]
}

; [#uses=2]
define linkonce_odr void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream.0"* %this) unnamed_addr nounwind inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 4    ; [#uses=2 type=%"class.hls::stream.0"**]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !636), !dbg !638 ; [debug line = 37:43] [debug variable = this]
  %2 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @_ZN3hls6streamIiEC2Ev(%"class.hls::stream.0"* %2), !dbg !639 ; [debug line = 38:5]
  ret void, !dbg !639                             ; [debug line = 38:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIiEC2Ev(%"class.hls::stream.0"* %this) unnamed_addr nounwind inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 4    ; [#uses=2 type=%"class.hls::stream.0"**]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !640), !dbg !641 ; [debug line = 37:43] [debug variable = this]
  %2 = load %"class.hls::stream.0"** %1           ; [#uses=0 type=%"class.hls::stream.0"*]
  ret void, !dbg !642                             ; [debug line = 38:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfEC2Ev(%"class.hls::stream"* %this) unnamed_addr nounwind inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !644), !dbg !645 ; [debug line = 37:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=0 type=%"class.hls::stream"*]
  ret void, !dbg !646                             ; [debug line = 38:5]
}

; [#uses=1]
define void @_Z9thresholdRN3hls6streamIfEERf(%"class.hls::stream"* %amplitude, float* %threshold) nounwind {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 4                     ; [#uses=2 type=float**]
  %sum = alloca float, align 4                    ; [#uses=4 type=float*]
  %i = alloca i32, align 4                        ; [#uses=4 type=i32*]
  store %"class.hls::stream"* %amplitude, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !648), !dbg !649 ; [debug line = 3:29] [debug variable = amplitude]
  store float* %threshold, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !650), !dbg !651 ; [debug line = 3:51] [debug variable = threshold]
  call void @llvm.dbg.declare(metadata !{float* %sum}, metadata !652), !dbg !654 ; [debug line = 5:12] [debug variable = sum]
  store float 0.000000e+00, float* %sum, align 4, !dbg !655 ; [debug line = 5:21]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !656), !dbg !658 ; [debug line = 6:10] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !659        ; [debug line = 6:15]
  br label %3, !dbg !659                          ; [debug line = 6:15]

; <label>:3                                       ; preds = %11, %0
  %4 = load i32* %i, align 4, !dbg !659           ; [#uses=1 type=i32] [debug line = 6:15]
  %5 = icmp slt i32 %4, 600000, !dbg !659         ; [#uses=1 type=i1] [debug line = 6:15]
  br i1 %5, label %6, label %14, !dbg !659        ; [debug line = 6:15]

; <label>:6                                       ; preds = %3
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !660 ; [debug line = 6:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !662 ; [debug line = 7:1]
  %7 = load %"class.hls::stream"** %1, align 4, !dbg !663 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 8:9]
  %8 = call float @_ZN3hls6streamIfE4readEv(%"class.hls::stream"* %7), !dbg !663 ; [#uses=1 type=float] [debug line = 8:9]
  %9 = load float* %sum, align 4, !dbg !663       ; [#uses=1 type=float] [debug line = 8:9]
  %10 = fadd float %9, %8, !dbg !663              ; [#uses=1 type=float] [debug line = 8:9]
  store float %10, float* %sum, align 4, !dbg !663 ; [debug line = 8:9]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !664 ; [debug line = 9:2]
  br label %11, !dbg !664                         ; [debug line = 9:2]

; <label>:11                                      ; preds = %6
  %12 = load i32* %i, align 4, !dbg !665          ; [#uses=1 type=i32] [debug line = 6:31]
  %13 = add nsw i32 %12, 1, !dbg !665             ; [#uses=1 type=i32] [debug line = 6:31]
  store i32 %13, i32* %i, align 4, !dbg !665      ; [debug line = 6:31]
  br label %3, !dbg !665                          ; [debug line = 6:31]

; <label>:14                                      ; preds = %3
  %15 = load float* %sum, align 4, !dbg !666      ; [#uses=1 type=float] [debug line = 10:2]
  %16 = fdiv float %15, 2.000000e+03, !dbg !666   ; [#uses=1 type=float] [debug line = 10:2]
  %17 = fmul float %16, 3.000000e+02, !dbg !666   ; [#uses=1 type=float] [debug line = 10:2]
  %18 = fmul float 5.000000e+00, %17, !dbg !666   ; [#uses=1 type=float] [debug line = 10:2]
  %19 = load float** %2, align 4, !dbg !666       ; [#uses=1 type=float*] [debug line = 10:2]
  store float %18, float* %19, align 4, !dbg !666 ; [debug line = 10:2]
  ret void, !dbg !667                             ; [debug line = 11:1]
}

; [#uses=7]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
define linkonce_odr float @_ZN3hls6streamIfE4readEv(%"class.hls::stream"* %this) nounwind inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !668), !dbg !670 ; [debug line = 83:56] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !671), !dbg !673 ; [debug line = 84:22] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !674 ; [#uses=1 type=float*] [debug line = 85:9]
  call void (...)* @_ssdm_StreamRead(float* %3, float* %tmp) nounwind, !dbg !674 ; [debug line = 85:9]
  %4 = load float* %tmp, align 4, !dbg !675       ; [#uses=1 type=float] [debug line = 86:9]
  ret float %4, !dbg !675                         ; [debug line = 86:9]
}

; [#uses=7]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=2]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
define void @_Z5parseRN3hls6streamIfEEiS2_RNS0_IiEES2_(%"class.hls::stream"* %sig_i, i32 %hits, %"class.hls::stream"* %sig, %"class.hls::stream.0"* %loc, %"class.hls::stream"* %sig_o) nounwind {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=3 type=%"class.hls::stream"**]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca %"class.hls::stream"*, align 4      ; [#uses=1 type=%"class.hls::stream"**]
  %4 = alloca %"class.hls::stream.0"*, align 4    ; [#uses=2 type=%"class.hls::stream.0"**]
  %5 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %read_count = alloca i32, align 4               ; [#uses=5 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %location = alloca i32, align 4                 ; [#uses=3 type=i32*]
  %b = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %e = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %6 = alloca float, align 4                      ; [#uses=2 type=float*]
  store %"class.hls::stream"* %sig_i, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !676), !dbg !677 ; [debug line = 3:25] [debug variable = sig_i]
  store i32 %hits, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !678), !dbg !679 ; [debug line = 4:16] [debug variable = hits]
  store %"class.hls::stream"* %sig, %"class.hls::stream"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %3}, metadata !680), !dbg !681 ; [debug line = 5:19] [debug variable = sig]
  store %"class.hls::stream.0"* %loc, %"class.hls::stream.0"** %4, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %4}, metadata !682), !dbg !683 ; [debug line = 6:19] [debug variable = loc]
  store %"class.hls::stream"* %sig_o, %"class.hls::stream"** %5, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %5}, metadata !684), !dbg !685 ; [debug line = 7:19] [debug variable = sig_o]
  call void @llvm.dbg.declare(metadata !{i32* %read_count}, metadata !686), !dbg !688 ; [debug line = 9:12] [debug variable = read_count]
  store i32 0, i32* %read_count, align 4, !dbg !689 ; [debug line = 9:26]
  br label %7, !dbg !689                          ; [debug line = 9:26]

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !690), !dbg !692 ; [debug line = 10:24] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !693        ; [debug line = 10:29]
  br label %8, !dbg !693                          ; [debug line = 10:29]

; <label>:8                                       ; preds = %50, %7
  %9 = load i32* %i, align 4, !dbg !693           ; [#uses=1 type=i32] [debug line = 10:29]
  %10 = load i32* %2, align 4, !dbg !693          ; [#uses=1 type=i32] [debug line = 10:29]
  %11 = icmp slt i32 %9, %10, !dbg !693           ; [#uses=1 type=i1] [debug line = 10:29]
  br i1 %11, label %12, label %53, !dbg !693      ; [debug line = 10:29]

; <label>:12                                      ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !694 ; [debug line = 10:47]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !694 ; [debug line = 10:47]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 60, i32 10, i8* getelementptr inbounds ([1 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !696 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !697 ; [debug line = 12:1]
  call void @llvm.dbg.declare(metadata !{i32* %location}, metadata !698), !dbg !699 ; [debug line = 13:12] [debug variable = location]
  %13 = load %"class.hls::stream.0"** %4, align 4, !dbg !700 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 13:23]
  %14 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream.0"* %13), !dbg !700 ; [#uses=1 type=i32] [debug line = 13:23]
  store i32 %14, i32* %location, align 4, !dbg !700 ; [debug line = 13:23]
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !701), !dbg !702 ; [debug line = 15:13] [debug variable = b]
  %15 = load i32* %location, align 4, !dbg !703   ; [#uses=1 type=i32] [debug line = 15:38]
  %16 = sub nsw i32 %15, 1000, !dbg !703          ; [#uses=1 type=i32] [debug line = 15:38]
  %17 = sub nsw i32 %16, 1, !dbg !703             ; [#uses=1 type=i32] [debug line = 15:38]
  store i32 %17, i32* %b, align 4, !dbg !703      ; [debug line = 15:38]
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !704), !dbg !705 ; [debug line = 16:13] [debug variable = e]
  %18 = load i32* %location, align 4, !dbg !706   ; [#uses=1 type=i32] [debug line = 16:34]
  %19 = add nsw i32 %18, 1000, !dbg !706          ; [#uses=1 type=i32] [debug line = 16:34]
  store i32 %19, i32* %e, align 4, !dbg !706      ; [debug line = 16:34]
  %20 = load i32* %b, align 4, !dbg !707          ; [#uses=1 type=i32] [debug line = 18:3]
  %21 = icmp slt i32 %20, 0, !dbg !707            ; [#uses=1 type=i1] [debug line = 18:3]
  br i1 %21, label %22, label %23, !dbg !707      ; [debug line = 18:3]

; <label>:22                                      ; preds = %12
  store i32 0, i32* %b, align 4, !dbg !708        ; [debug line = 18:13]
  br label %23, !dbg !708                         ; [debug line = 18:13]

; <label>:23                                      ; preds = %22, %12
  %24 = load i32* %e, align 4, !dbg !709          ; [#uses=1 type=i32] [debug line = 19:3]
  %25 = icmp sgt i32 %24, 599999, !dbg !709       ; [#uses=1 type=i1] [debug line = 19:3]
  br i1 %25, label %26, label %27, !dbg !709      ; [debug line = 19:3]

; <label>:26                                      ; preds = %23
  store i32 599999, i32* %e, align 4, !dbg !710   ; [debug line = 19:23]
  br label %27, !dbg !710                         ; [debug line = 19:23]

; <label>:27                                      ; preds = %26, %23
  br label %28, !dbg !710                         ; [debug line = 19:23]

; <label>:28                                      ; preds = %27
  br label %29, !dbg !711                         ; [debug line = 21:17]

; <label>:29                                      ; preds = %35, %28
  %30 = load i32* %read_count, align 4, !dbg !711 ; [#uses=2 type=i32] [debug line = 21:17]
  %31 = add nsw i32 %30, 1, !dbg !711             ; [#uses=1 type=i32] [debug line = 21:17]
  store i32 %31, i32* %read_count, align 4, !dbg !711 ; [debug line = 21:17]
  %32 = load i32* %b, align 4, !dbg !711          ; [#uses=1 type=i32] [debug line = 21:17]
  %33 = sub nsw i32 %32, 1, !dbg !711             ; [#uses=1 type=i32] [debug line = 21:17]
  %34 = icmp slt i32 %30, %33, !dbg !711          ; [#uses=1 type=i1] [debug line = 21:17]
  br i1 %34, label %35, label %38, !dbg !711      ; [debug line = 21:17]

; <label>:35                                      ; preds = %29
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !712 ; [debug line = 21:43]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !712 ; [debug line = 21:43]
  %36 = load %"class.hls::stream"** %1, align 4, !dbg !712 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 21:43]
  %37 = call float @_ZN3hls6streamIfE4readEv(%"class.hls::stream"* %36), !dbg !712 ; [#uses=0 type=float] [debug line = 21:43]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !714 ; [debug line = 21:54]
  br label %29, !dbg !714                         ; [debug line = 21:54]

; <label>:38                                      ; preds = %29
  br label %39, !dbg !714                         ; [debug line = 21:54]

; <label>:39                                      ; preds = %38
  br label %40, !dbg !715                         ; [debug line = 22:15]

; <label>:40                                      ; preds = %45, %39
  %41 = load i32* %read_count, align 4, !dbg !715 ; [#uses=2 type=i32] [debug line = 22:15]
  %42 = add nsw i32 %41, 1, !dbg !715             ; [#uses=1 type=i32] [debug line = 22:15]
  store i32 %42, i32* %read_count, align 4, !dbg !715 ; [debug line = 22:15]
  %43 = load i32* %e, align 4, !dbg !715          ; [#uses=1 type=i32] [debug line = 22:15]
  %44 = icmp slt i32 %41, %43, !dbg !715          ; [#uses=1 type=i1] [debug line = 22:15]
  br i1 %44, label %45, label %49, !dbg !715      ; [debug line = 22:15]

; <label>:45                                      ; preds = %40
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !716 ; [debug line = 22:39]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !716 ; [debug line = 22:39]
  %46 = load %"class.hls::stream"** %5, align 4, !dbg !716 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 22:39]
  %47 = load %"class.hls::stream"** %1, align 4, !dbg !718 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 22:51]
  %48 = call float @_ZN3hls6streamIfE4readEv(%"class.hls::stream"* %47), !dbg !718 ; [#uses=1 type=float] [debug line = 22:51]
  store float %48, float* %6, align 4, !dbg !718  ; [debug line = 22:51]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %46, float* %6), !dbg !718 ; [debug line = 22:51]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !719 ; [debug line = 22:63]
  br label %40, !dbg !719                         ; [debug line = 22:63]

; <label>:49                                      ; preds = %40
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !720 ; [debug line = 24:2]
  br label %50, !dbg !720                         ; [debug line = 24:2]

; <label>:50                                      ; preds = %49
  %51 = load i32* %i, align 4, !dbg !721          ; [#uses=1 type=i32] [debug line = 10:41]
  %52 = add nsw i32 %51, 1, !dbg !721             ; [#uses=1 type=i32] [debug line = 10:41]
  store i32 %52, i32* %i, align 4, !dbg !721      ; [debug line = 10:41]
  br label %8, !dbg !721                          ; [debug line = 10:41]

; <label>:53                                      ; preds = %8
  ret void, !dbg !722                             ; [debug line = 25:1]
}

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=1]
define linkonce_odr i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream.0"* %this) nounwind inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 4    ; [#uses=2 type=%"class.hls::stream.0"**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !723), !dbg !725 ; [debug line = 83:56] [debug variable = this]
  %2 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !726), !dbg !728 ; [debug line = 84:22] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream.0"* %2, i32 0, i32 0, !dbg !729 ; [#uses=1 type=i32*] [debug line = 85:9]
  call void (...)* @_ssdm_StreamRead(i32* %3, i32* %tmp) nounwind, !dbg !729 ; [debug line = 85:9]
  %4 = load i32* %tmp, align 4, !dbg !730         ; [#uses=1 type=i32] [debug line = 86:9]
  ret i32 %4, !dbg !730                           ; [debug line = 86:9]
}

; [#uses=7]
define linkonce_odr void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %this, float* %din) nounwind inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 4                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !731), !dbg !733 ; [debug line = 98:48] [debug variable = this]
  store float* %din, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !734), !dbg !735 ; [debug line = 98:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !736), !dbg !738 ; [debug line = 99:22] [debug variable = tmp]
  %4 = load float** %2, align 4, !dbg !739        ; [#uses=1 type=float*] [debug line = 99:31]
  %5 = load float* %4, align 4, !dbg !739         ; [#uses=1 type=float] [debug line = 99:31]
  store float %5, float* %tmp, align 4, !dbg !739 ; [debug line = 99:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !740 ; [#uses=1 type=float*] [debug line = 100:9]
  call void (...)* @_ssdm_StreamWrite(float* %6, float* %tmp) nounwind, !dbg !740 ; [debug line = 100:9]
  ret void, !dbg !741                             ; [debug line = 101:5]
}

; [#uses=2]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
define void @_Z9findpeaksRN3hls6streamIfEES2_RNS0_IiEE(%"class.hls::stream"* %samples, %"class.hls::stream"* %amplitude, %"class.hls::stream.0"* %locations) nounwind {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %3 = alloca %"class.hls::stream.0"*, align 4    ; [#uses=2 type=%"class.hls::stream.0"**]
  %shift_buf = alloca [3 x float], align 4        ; [#uses=12 type=[3 x float]*]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  store %"class.hls::stream"* %samples, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !742), !dbg !743 ; [debug line = 3:29] [debug variable = samples]
  store %"class.hls::stream"* %amplitude, %"class.hls::stream"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !744), !dbg !745 ; [debug line = 4:23] [debug variable = amplitude]
  store %"class.hls::stream.0"* %locations, %"class.hls::stream.0"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %3}, metadata !746), !dbg !747 ; [debug line = 5:23] [debug variable = locations]
  call void @llvm.dbg.declare(metadata !{[3 x float]* %shift_buf}, metadata !748), !dbg !754 ; [debug line = 7:12] [debug variable = shift_buf]
  %4 = bitcast [3 x float]* %shift_buf to i8*, !dbg !755 ; [#uses=1 type=i8*] [debug line = 7:30]
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 12, i32 4, i1 false), !dbg !755 ; [debug line = 7:30]
  %5 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 0, !dbg !756 ; [#uses=1 type=float*] [debug line = 8:1]
  call void (...)* @_ssdm_SpecArrayPartition(float* %5, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str110, i32 0, i32 0)) nounwind, !dbg !756 ; [debug line = 8:1]
  br label %6, !dbg !756                          ; [debug line = 8:1]

; <label>:6                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !757), !dbg !759 ; [debug line = 10:24] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !760        ; [debug line = 10:29]
  br label %7, !dbg !760                          ; [debug line = 10:29]

; <label>:7                                       ; preds = %36, %6
  %8 = load i32* %i, align 4, !dbg !760           ; [#uses=1 type=i32] [debug line = 10:29]
  %9 = icmp slt i32 %8, 600000, !dbg !760         ; [#uses=1 type=i1] [debug line = 10:29]
  br i1 %9, label %10, label %39, !dbg !760       ; [debug line = 10:29]

; <label>:10                                      ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str211, i32 0, i32 0)) nounwind, !dbg !761 ; [debug line = 10:51]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str211, i32 0, i32 0)) nounwind, !dbg !761 ; [debug line = 10:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str110, i32 0, i32 0)) nounwind, !dbg !763 ; [debug line = 11:1]
  %11 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 1, !dbg !764 ; [#uses=1 type=float*] [debug line = 13:2]
  %12 = load float* %11, align 4, !dbg !764       ; [#uses=1 type=float] [debug line = 13:2]
  %13 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 2, !dbg !764 ; [#uses=1 type=float*] [debug line = 13:2]
  store float %12, float* %13, align 4, !dbg !764 ; [debug line = 13:2]
  %14 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 0, !dbg !765 ; [#uses=1 type=float*] [debug line = 14:3]
  %15 = load float* %14, align 4, !dbg !765       ; [#uses=1 type=float] [debug line = 14:3]
  %16 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 1, !dbg !765 ; [#uses=1 type=float*] [debug line = 14:3]
  store float %15, float* %16, align 4, !dbg !765 ; [debug line = 14:3]
  %17 = load %"class.hls::stream"** %1, align 4, !dbg !766 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 15:18]
  %18 = call float @_ZN3hls6streamIfE4readEv(%"class.hls::stream"* %17), !dbg !766 ; [#uses=1 type=float] [debug line = 15:18]
  %19 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 0, !dbg !766 ; [#uses=1 type=float*] [debug line = 15:18]
  store float %18, float* %19, align 4, !dbg !766 ; [debug line = 15:18]
  %20 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 2, !dbg !767 ; [#uses=1 type=float*] [debug line = 17:3]
  %21 = load float* %20, align 4, !dbg !767       ; [#uses=1 type=float] [debug line = 17:3]
  %22 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 1, !dbg !767 ; [#uses=1 type=float*] [debug line = 17:3]
  %23 = load float* %22, align 4, !dbg !767       ; [#uses=1 type=float] [debug line = 17:3]
  %24 = fcmp olt float %21, %23, !dbg !767        ; [#uses=1 type=i1] [debug line = 17:3]
  br i1 %24, label %25, label %35, !dbg !767      ; [debug line = 17:3]

; <label>:25                                      ; preds = %10
  %26 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 1, !dbg !767 ; [#uses=1 type=float*] [debug line = 17:3]
  %27 = load float* %26, align 4, !dbg !767       ; [#uses=1 type=float] [debug line = 17:3]
  %28 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 0, !dbg !767 ; [#uses=1 type=float*] [debug line = 17:3]
  %29 = load float* %28, align 4, !dbg !767       ; [#uses=1 type=float] [debug line = 17:3]
  %30 = fcmp ogt float %27, %29, !dbg !767        ; [#uses=1 type=i1] [debug line = 17:3]
  br i1 %30, label %31, label %35, !dbg !767      ; [debug line = 17:3]

; <label>:31                                      ; preds = %25
  %32 = load %"class.hls::stream.0"** %3, align 4, !dbg !768 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 18:4]
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.0"* %32, i32* %i), !dbg !768 ; [debug line = 18:4]
  %33 = load %"class.hls::stream"** %2, align 4, !dbg !770 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 19:4]
  %34 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 1, !dbg !770 ; [#uses=1 type=float*] [debug line = 19:4]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %33, float* %34), !dbg !770 ; [debug line = 19:4]
  br label %35, !dbg !771                         ; [debug line = 20:3]

; <label>:35                                      ; preds = %31, %25, %10
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str211, i32 0, i32 0)) nounwind, !dbg !772 ; [debug line = 21:2]
  br label %36, !dbg !772                         ; [debug line = 21:2]

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4, !dbg !773          ; [#uses=1 type=i32] [debug line = 10:45]
  %38 = add nsw i32 %37, 1, !dbg !773             ; [#uses=1 type=i32] [debug line = 10:45]
  store i32 %38, i32* %i, align 4, !dbg !773      ; [debug line = 10:45]
  br label %7, !dbg !773                          ; [debug line = 10:45]

; <label>:39                                      ; preds = %7
  ret void, !dbg !774                             ; [debug line = 23:1]
}

; [#uses=1]
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

; [#uses=1]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=2]
define linkonce_odr void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.0"* %this, i32* %din) nounwind inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 4    ; [#uses=2 type=%"class.hls::stream.0"**]
  %2 = alloca i32*, align 4                       ; [#uses=2 type=i32**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !775), !dbg !777 ; [debug line = 98:48] [debug variable = this]
  store i32* %din, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !778), !dbg !779 ; [debug line = 98:74] [debug variable = din]
  %3 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !780), !dbg !782 ; [debug line = 99:22] [debug variable = tmp]
  %4 = load i32** %2, align 4, !dbg !783          ; [#uses=1 type=i32*] [debug line = 99:31]
  %5 = load i32* %4, align 4, !dbg !783           ; [#uses=1 type=i32] [debug line = 99:31]
  store i32 %5, i32* %tmp, align 4, !dbg !783     ; [debug line = 99:31]
  %6 = getelementptr inbounds %"class.hls::stream.0"* %3, i32 0, i32 0, !dbg !784 ; [#uses=1 type=i32*] [debug line = 100:9]
  call void (...)* @_ssdm_StreamWrite(i32* %6, i32* %tmp) nounwind, !dbg !784 ; [debug line = 100:9]
  ret void, !dbg !785                             ; [debug line = 101:5]
}

; [#uses=1]
define void @_Z9duplicateRN3hls6streamIfEES2_S2_S2_S2_(%"class.hls::stream"* %dat_i, %"class.hls::stream"* %dat_1_o, %"class.hls::stream"* %dat_2_o, %"class.hls::stream"* %dat_3_o, %"class.hls::stream"* %dat_4_o) nounwind {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %3 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %4 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %5 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %i = alloca i32, align 4                        ; [#uses=4 type=i32*]
  %val = alloca float, align 4                    ; [#uses=5 type=float*]
  store %"class.hls::stream"* %dat_i, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !786), !dbg !787 ; [debug line = 4:29] [debug variable = dat_i]
  store %"class.hls::stream"* %dat_1_o, %"class.hls::stream"** %2, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !788), !dbg !789 ; [debug line = 4:49] [debug variable = dat_1_o]
  store %"class.hls::stream"* %dat_2_o, %"class.hls::stream"** %3, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %3}, metadata !790), !dbg !791 ; [debug line = 4:71] [debug variable = dat_2_o]
  store %"class.hls::stream"* %dat_3_o, %"class.hls::stream"** %4, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %4}, metadata !792), !dbg !793 ; [debug line = 5:25] [debug variable = dat_3_o]
  store %"class.hls::stream"* %dat_4_o, %"class.hls::stream"** %5, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %5}, metadata !794), !dbg !795 ; [debug line = 5:47] [debug variable = dat_4_o]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !796), !dbg !799 ; [debug line = 6:10] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !800        ; [debug line = 6:15]
  br label %6, !dbg !800                          ; [debug line = 6:15]

; <label>:6                                       ; preds = %16, %0
  %7 = load i32* %i, align 4, !dbg !800           ; [#uses=1 type=i32] [debug line = 6:15]
  %8 = icmp slt i32 %7, 600000, !dbg !800         ; [#uses=1 type=i1] [debug line = 6:15]
  br i1 %8, label %9, label %19, !dbg !800        ; [debug line = 6:15]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !801 ; [debug line = 6:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str115, i32 0, i32 0)) nounwind, !dbg !803 ; [debug line = 7:1]
  call void @llvm.dbg.declare(metadata !{float* %val}, metadata !804), !dbg !805 ; [debug line = 8:8] [debug variable = val]
  %10 = load %"class.hls::stream"** %1, align 4, !dbg !806 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 8:14]
  %11 = call float @_ZN3hls6streamIfE4readEv(%"class.hls::stream"* %10), !dbg !806 ; [#uses=1 type=float] [debug line = 8:14]
  store float %11, float* %val, align 4, !dbg !806 ; [debug line = 8:14]
  %12 = load %"class.hls::stream"** %2, align 4, !dbg !807 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 9:3]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %12, float* %val), !dbg !807 ; [debug line = 9:3]
  %13 = load %"class.hls::stream"** %3, align 4, !dbg !808 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 10:3]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %13, float* %val), !dbg !808 ; [debug line = 10:3]
  %14 = load %"class.hls::stream"** %4, align 4, !dbg !809 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 11:3]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %14, float* %val), !dbg !809 ; [debug line = 11:3]
  %15 = load %"class.hls::stream"** %5, align 4, !dbg !810 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 12:3]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %15, float* %val), !dbg !810 ; [debug line = 12:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !811 ; [debug line = 13:2]
  br label %16, !dbg !811                         ; [debug line = 13:2]

; <label>:16                                      ; preds = %9
  %17 = load i32* %i, align 4, !dbg !812          ; [#uses=1 type=i32] [debug line = 6:31]
  %18 = add nsw i32 %17, 1, !dbg !812             ; [#uses=1 type=i32] [debug line = 6:31]
  store i32 %18, i32* %i, align 4, !dbg !812      ; [debug line = 6:31]
  br label %6, !dbg !812                          ; [debug line = 6:31]

; <label>:19                                      ; preds = %6
  ret void, !dbg !813                             ; [debug line = 14:1]
}

; [#uses=1]
define void @_Z6detectRN3hls6streamIfEEfRiS2_RNS0_IiEE(%"class.hls::stream"* %signals, float %threshold, i32* %hits, %"class.hls::stream"* %sig, %"class.hls::stream.0"* %loc) nounwind {
  %1 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float, align 4                      ; [#uses=2 type=float*]
  %3 = alloca i32*, align 4                       ; [#uses=3 type=i32**]
  %4 = alloca %"class.hls::stream"*, align 4      ; [#uses=2 type=%"class.hls::stream"**]
  %5 = alloca %"class.hls::stream.0"*, align 4    ; [#uses=2 type=%"class.hls::stream.0"**]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %currAmp = alloca float, align 4                ; [#uses=3 type=float*]
  store %"class.hls::stream"* %signals, %"class.hls::stream"** %1, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !814), !dbg !815 ; [debug line = 3:26] [debug variable = signals]
  store float %threshold, float* %2, align 4
  call void @llvm.dbg.declare(metadata !{float* %2}, metadata !816), !dbg !817 ; [debug line = 3:45] [debug variable = threshold]
  store i32* %hits, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !818), !dbg !819 ; [debug line = 3:67] [debug variable = hits]
  store %"class.hls::stream"* %sig, %"class.hls::stream"** %4, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %4}, metadata !820), !dbg !821 ; [debug line = 4:17] [debug variable = sig]
  store %"class.hls::stream.0"* %loc, %"class.hls::stream.0"** %5, align 4
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %5}, metadata !822), !dbg !823 ; [debug line = 4:35] [debug variable = loc]
  %6 = load i32** %3, align 4, !dbg !824          ; [#uses=1 type=i32*] [debug line = 6:2]
  store i32 0, i32* %6, align 4, !dbg !824        ; [debug line = 6:2]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !826), !dbg !828 ; [debug line = 7:10] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !829        ; [debug line = 7:15]
  br label %7, !dbg !829                          ; [debug line = 7:15]

; <label>:7                                       ; preds = %23, %0
  %8 = load i32* %i, align 4, !dbg !829           ; [#uses=1 type=i32] [debug line = 7:15]
  %9 = icmp slt i32 %8, 600000, !dbg !829         ; [#uses=1 type=i1] [debug line = 7:15]
  br i1 %9, label %10, label %26, !dbg !829       ; [debug line = 7:15]

; <label>:10                                      ; preds = %7
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str18, i32 0, i32 0)) nounwind, !dbg !830 ; [debug line = 7:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str119, i32 0, i32 0)) nounwind, !dbg !832 ; [debug line = 8:1]
  call void @llvm.dbg.declare(metadata !{float* %currAmp}, metadata !833), !dbg !834 ; [debug line = 9:12] [debug variable = currAmp]
  %11 = load %"class.hls::stream"** %1, align 4, !dbg !835 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 9:22]
  %12 = call float @_ZN3hls6streamIfE4readEv(%"class.hls::stream"* %11), !dbg !835 ; [#uses=1 type=float] [debug line = 9:22]
  store float %12, float* %currAmp, align 4, !dbg !835 ; [debug line = 9:22]
  %13 = load float* %currAmp, align 4, !dbg !836  ; [#uses=1 type=float] [debug line = 10:3]
  %14 = load float* %2, align 4, !dbg !836        ; [#uses=1 type=float] [debug line = 10:3]
  %15 = fcmp ogt float %13, %14, !dbg !836        ; [#uses=1 type=i1] [debug line = 10:3]
  br i1 %15, label %16, label %22, !dbg !836      ; [debug line = 10:3]

; <label>:16                                      ; preds = %10
  %17 = load i32** %3, align 4, !dbg !837         ; [#uses=2 type=i32*] [debug line = 11:4]
  %18 = load i32* %17, align 4, !dbg !837         ; [#uses=1 type=i32] [debug line = 11:4]
  %19 = add nsw i32 %18, 1, !dbg !837             ; [#uses=1 type=i32] [debug line = 11:4]
  store i32 %19, i32* %17, align 4, !dbg !837     ; [debug line = 11:4]
  %20 = load %"class.hls::stream"** %4, align 4, !dbg !839 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 12:4]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %20, float* %currAmp), !dbg !839 ; [debug line = 12:4]
  %21 = load %"class.hls::stream.0"** %5, align 4, !dbg !840 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 13:4]
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream.0"* %21, i32* %i), !dbg !840 ; [debug line = 13:4]
  br label %22, !dbg !841                         ; [debug line = 14:3]

; <label>:22                                      ; preds = %16, %10
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str18, i32 0, i32 0)) nounwind, !dbg !842 ; [debug line = 15:2]
  br label %23, !dbg !842                         ; [debug line = 15:2]

; <label>:23                                      ; preds = %22
  %24 = load i32* %i, align 4, !dbg !843          ; [#uses=1 type=i32] [debug line = 7:31]
  %25 = add nsw i32 %24, 1, !dbg !843             ; [#uses=1 type=i32] [debug line = 7:31]
  store i32 %25, i32* %i, align 4, !dbg !843      ; [debug line = 7:31]
  br label %7, !dbg !843                          ; [debug line = 7:31]

; <label>:26                                      ; preds = %7
  ret void, !dbg !844                             ; [debug line = 16:1]
}

!llvm.dbg.cu = !{!0, !124, !180, !283, !385, !440}
!opencl.kernels = !{!545, !552, !558, !559, !560, !561, !564, !565, !571, !564, !577, !578, !571, !584, !564, !586, !571, !564, !589, !584, !571, !564}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/toplevel.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !70, metadata !121, metadata !122, metadata !123}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsRN3hls6streamIfEES2_", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z12detect_callsRN3hls6streamIfEES2_, null, null, metadata !21, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"toplevel.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786434, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !14, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!12 = metadata !{i32 786489, null, metadata !"hls", metadata !13, i32 23} ; [ DW_TAG_namespace ]
!13 = metadata !{i32 786473, metadata !"C:/Xilinx/SDx/2016.4/Vivado_HLS/common/technology/autopilot\5Chls_stream.h", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!14 = metadata !{metadata !15, metadata !17, metadata !23, metadata !29, metadata !34, metadata !38, metadata !42, metadata !47, metadata !52, metadata !53, metadata !54, metadata !57, metadata !60, metadata !61, metadata !64}
!15 = metadata !{i32 786445, metadata !11, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !11, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !18, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !20}
!20 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !11} ; [ DW_TAG_pointer_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786478, i32 0, metadata !11, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !24, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !20, metadata !26}
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ]
!28 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786478, i32 0, metadata !11, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !20, metadata !32}
!32 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_reference_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!34 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !13, i32 48, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{metadata !37, metadata !20, metadata !32}
!37 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_reference_type ]
!38 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !13, i32 55, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !20, metadata !41}
!41 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_reference_type ]
!42 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !13, i32 59, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !20, metadata !45}
!45 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_reference_type ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!47 = metadata !{i32 786478, i32 0, metadata !11, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !13, i32 66, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !33} ; [ DW_TAG_pointer_type ]
!52 = metadata !{i32 786478, i32 0, metadata !11, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !13, i32 71, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !13, i32 77, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{metadata !16, metadata !20}
!57 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !13, i32 90, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{metadata !50, metadata !20, metadata !41}
!60 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !13, i32 104, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !50, metadata !20, metadata !45}
!64 = metadata !{i32 786478, i32 0, metadata !11, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !13, i32 111, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{metadata !67, metadata !20}
!67 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !16, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!70 = metadata !{i32 786478, i32 0, metadata !12, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIiEC1Ev", metadata !13, i32 37, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*)* @_ZN3hls6streamIiEC1Ev, null, metadata !78, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !73}
!73 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786434, metadata !12, metadata !"stream<int>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !75, i32 0, null, metadata !119} ; [ DW_TAG_class_type ]
!75 = metadata !{metadata !76, metadata !78, metadata !79, metadata !82, metadata !87, metadata !91, metadata !95, metadata !100, metadata !104, metadata !105, metadata !106, metadata !109, metadata !112, metadata !113, metadata !116}
!76 = metadata !{i32 786445, metadata !74, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ]
!77 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!78 = metadata !{i32 786478, i32 0, metadata !74, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786478, i32 0, metadata !74, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !73, metadata !26}
!82 = metadata !{i32 786478, i32 0, metadata !74, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !83, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !73, metadata !85}
!85 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_reference_type ]
!86 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_const_type ]
!87 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !13, i32 48, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !90, metadata !73, metadata !85}
!90 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_reference_type ]
!91 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !13, i32 55, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !73, metadata !94}
!94 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_reference_type ]
!95 = metadata !{i32 786478, i32 0, metadata !74, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !13, i32 59, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !73, metadata !98}
!98 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_reference_type ]
!99 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ]
!100 = metadata !{i32 786478, i32 0, metadata !74, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !13, i32 66, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !50, metadata !103}
!103 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !86} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 786478, i32 0, metadata !74, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !13, i32 71, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786478, i32 0, metadata !74, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !13, i32 77, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786478, i32 0, metadata !74, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !13, i32 83, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{metadata !77, metadata !73}
!109 = metadata !{i32 786478, i32 0, metadata !74, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !13, i32 90, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{metadata !50, metadata !73, metadata !94}
!112 = metadata !{i32 786478, i32 0, metadata !74, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !13, i32 98, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 786478, i32 0, metadata !74, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !13, i32 104, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !50, metadata !73, metadata !98}
!116 = metadata !{i32 786478, i32 0, metadata !74, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !13, i32 111, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{metadata !67, metadata !73}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !77, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!121 = metadata !{i32 786478, i32 0, metadata !12, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIiEC2Ev", metadata !13, i32 37, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*)* @_ZN3hls6streamIiEC2Ev, null, metadata !78, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786478, i32 0, metadata !12, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIfEC1Ev", metadata !13, i32 37, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIfEC1Ev, null, metadata !17, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786478, i32 0, metadata !12, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIfEC2Ev", metadata !13, i32 37, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIfEC2Ev, null, metadata !17, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/threshold.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !125, metadata !1} ; [ DW_TAG_compile_unit ]
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !127, metadata !179}
!127 = metadata !{i32 786478, i32 0, metadata !128, metadata !"threshold", metadata !"threshold", metadata !"_Z9thresholdRN3hls6streamIfEERf", metadata !128, i32 3, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_Z9thresholdRN3hls6streamIfEERf, null, null, metadata !21, i32 3} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786473, metadata !"threshold.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{null, metadata !131, metadata !177}
!131 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_reference_type ]
!132 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !128, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ]
!133 = metadata !{i32 786434, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !134, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!134 = metadata !{metadata !135, metadata !136, metadata !140, metadata !143, metadata !148, metadata !152, metadata !155, metadata !158, metadata !162, metadata !163, metadata !164, metadata !167, metadata !170, metadata !171, metadata !174}
!135 = metadata !{i32 786445, metadata !133, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!136 = metadata !{i32 786478, i32 0, metadata !133, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{null, metadata !139}
!139 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !133} ; [ DW_TAG_pointer_type ]
!140 = metadata !{i32 786478, i32 0, metadata !133, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !141, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{null, metadata !139, metadata !26}
!143 = metadata !{i32 786478, i32 0, metadata !133, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !144, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{null, metadata !139, metadata !146}
!146 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_reference_type ]
!147 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_const_type ]
!148 = metadata !{i32 786478, i32 0, metadata !133, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !13, i32 48, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{metadata !151, metadata !139, metadata !146}
!151 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_reference_type ]
!152 = metadata !{i32 786478, i32 0, metadata !133, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !13, i32 55, metadata !153, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!154 = metadata !{null, metadata !139, metadata !41}
!155 = metadata !{i32 786478, i32 0, metadata !133, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !13, i32 59, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !139, metadata !45}
!158 = metadata !{i32 786478, i32 0, metadata !133, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !13, i32 66, metadata !159, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!160 = metadata !{metadata !50, metadata !161}
!161 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !147} ; [ DW_TAG_pointer_type ]
!162 = metadata !{i32 786478, i32 0, metadata !133, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !13, i32 71, metadata !159, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 786478, i32 0, metadata !133, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !13, i32 77, metadata !153, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786478, i32 0, metadata !133, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{metadata !16, metadata !139}
!167 = metadata !{i32 786478, i32 0, metadata !133, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !13, i32 90, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!169 = metadata !{metadata !50, metadata !139, metadata !41}
!170 = metadata !{i32 786478, i32 0, metadata !133, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786478, i32 0, metadata !133, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !13, i32 104, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{metadata !50, metadata !139, metadata !45}
!174 = metadata !{i32 786478, i32 0, metadata !133, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !13, i32 111, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{metadata !67, metadata !139}
!177 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_reference_type ]
!178 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !128, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!179 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (%"class.hls::stream"*)* @_ZN3hls6streamIfE4readEv, null, metadata !164, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/parse.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !181, metadata !1} ; [ DW_TAG_compile_unit ]
!181 = metadata !{metadata !182}
!182 = metadata !{metadata !183, metadata !280, metadata !281, metadata !282}
!183 = metadata !{i32 786478, i32 0, metadata !184, metadata !"parse", metadata !"parse", metadata !"_Z5parseRN3hls6streamIfEEiS2_RNS0_IiEES2_", metadata !184, i32 3, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32, %"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream"*)* @_Z5parseRN3hls6streamIfEEiS2_RNS0_IiEES2_, null, null, metadata !21, i32 7} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786473, metadata !"parse.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{null, metadata !187, metadata !233, metadata !187, metadata !234, metadata !187}
!187 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_reference_type ]
!188 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !184, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_typedef ]
!189 = metadata !{i32 786434, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !190, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!190 = metadata !{metadata !191, metadata !192, metadata !196, metadata !199, metadata !204, metadata !208, metadata !211, metadata !214, metadata !218, metadata !219, metadata !220, metadata !223, metadata !226, metadata !227, metadata !230}
!191 = metadata !{i32 786445, metadata !189, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!192 = metadata !{i32 786478, i32 0, metadata !189, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{null, metadata !195}
!195 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !189} ; [ DW_TAG_pointer_type ]
!196 = metadata !{i32 786478, i32 0, metadata !189, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{null, metadata !195, metadata !26}
!199 = metadata !{i32 786478, i32 0, metadata !189, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!201 = metadata !{null, metadata !195, metadata !202}
!202 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_reference_type ]
!203 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_const_type ]
!204 = metadata !{i32 786478, i32 0, metadata !189, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !13, i32 48, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !207, metadata !195, metadata !202}
!207 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_reference_type ]
!208 = metadata !{i32 786478, i32 0, metadata !189, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !13, i32 55, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{null, metadata !195, metadata !41}
!211 = metadata !{i32 786478, i32 0, metadata !189, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !13, i32 59, metadata !212, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!213 = metadata !{null, metadata !195, metadata !45}
!214 = metadata !{i32 786478, i32 0, metadata !189, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !13, i32 66, metadata !215, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!216 = metadata !{metadata !50, metadata !217}
!217 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !203} ; [ DW_TAG_pointer_type ]
!218 = metadata !{i32 786478, i32 0, metadata !189, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !13, i32 71, metadata !215, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786478, i32 0, metadata !189, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !13, i32 77, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786478, i32 0, metadata !189, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !221, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!222 = metadata !{metadata !16, metadata !195}
!223 = metadata !{i32 786478, i32 0, metadata !189, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !13, i32 90, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{metadata !50, metadata !195, metadata !41}
!226 = metadata !{i32 786478, i32 0, metadata !189, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !212, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 786478, i32 0, metadata !189, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !13, i32 104, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !50, metadata !195, metadata !45}
!230 = metadata !{i32 786478, i32 0, metadata !189, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !13, i32 111, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !67, metadata !195}
!233 = metadata !{i32 786454, null, metadata !"DTYPE_INT", metadata !184, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ]
!234 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_reference_type ]
!235 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !184, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_typedef ]
!236 = metadata !{i32 786434, metadata !12, metadata !"stream<int>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !237, i32 0, null, metadata !119} ; [ DW_TAG_class_type ]
!237 = metadata !{metadata !238, metadata !239, metadata !243, metadata !246, metadata !251, metadata !255, metadata !258, metadata !261, metadata !265, metadata !266, metadata !267, metadata !270, metadata !273, metadata !274, metadata !277}
!238 = metadata !{i32 786445, metadata !236, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ]
!239 = metadata !{i32 786478, i32 0, metadata !236, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{null, metadata !242}
!242 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !236} ; [ DW_TAG_pointer_type ]
!243 = metadata !{i32 786478, i32 0, metadata !236, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{null, metadata !242, metadata !26}
!246 = metadata !{i32 786478, i32 0, metadata !236, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{null, metadata !242, metadata !249}
!249 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !250} ; [ DW_TAG_reference_type ]
!250 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_const_type ]
!251 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !13, i32 48, metadata !252, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!253 = metadata !{metadata !254, metadata !242, metadata !249}
!254 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_reference_type ]
!255 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !13, i32 55, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!257 = metadata !{null, metadata !242, metadata !94}
!258 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !13, i32 59, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!260 = metadata !{null, metadata !242, metadata !98}
!261 = metadata !{i32 786478, i32 0, metadata !236, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !13, i32 66, metadata !262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!263 = metadata !{metadata !50, metadata !264}
!264 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !250} ; [ DW_TAG_pointer_type ]
!265 = metadata !{i32 786478, i32 0, metadata !236, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !13, i32 71, metadata !262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786478, i32 0, metadata !236, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !13, i32 77, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786478, i32 0, metadata !236, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !13, i32 83, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{metadata !77, metadata !242}
!270 = metadata !{i32 786478, i32 0, metadata !236, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !13, i32 90, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!272 = metadata !{metadata !50, metadata !242, metadata !94}
!273 = metadata !{i32 786478, i32 0, metadata !236, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !13, i32 98, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786478, i32 0, metadata !236, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !13, i32 104, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{metadata !50, metadata !242, metadata !98}
!277 = metadata !{i32 786478, i32 0, metadata !236, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !13, i32 111, metadata !278, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!279 = metadata !{metadata !67, metadata !242}
!280 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !226, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (%"class.hls::stream"*)* @_ZN3hls6streamIfE4readEv, null, metadata !220, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !13, i32 83, metadata !268, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.hls::stream.0"*)* @_ZN3hls6streamIiE4readEv, null, metadata !267, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/findpeaks.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !284, metadata !1} ; [ DW_TAG_compile_unit ]
!284 = metadata !{metadata !285}
!285 = metadata !{metadata !286, metadata !382, metadata !383, metadata !384}
!286 = metadata !{i32 786478, i32 0, metadata !287, metadata !"findpeaks", metadata !"findpeaks", metadata !"_Z9findpeaksRN3hls6streamIfEES2_RNS0_IiEE", metadata !287, i32 3, metadata !288, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*)* @_Z9findpeaksRN3hls6streamIfEES2_RNS0_IiEE, null, null, metadata !21, i32 5} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786473, metadata !"findpeaks.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!289 = metadata !{null, metadata !290, metadata !290, metadata !336}
!290 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_reference_type ]
!291 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !287, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !292} ; [ DW_TAG_typedef ]
!292 = metadata !{i32 786434, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !293, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!293 = metadata !{metadata !294, metadata !295, metadata !299, metadata !302, metadata !307, metadata !311, metadata !314, metadata !317, metadata !321, metadata !322, metadata !323, metadata !326, metadata !329, metadata !330, metadata !333}
!294 = metadata !{i32 786445, metadata !292, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!295 = metadata !{i32 786478, i32 0, metadata !292, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !296, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!297 = metadata !{null, metadata !298}
!298 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !292} ; [ DW_TAG_pointer_type ]
!299 = metadata !{i32 786478, i32 0, metadata !292, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!301 = metadata !{null, metadata !298, metadata !26}
!302 = metadata !{i32 786478, i32 0, metadata !292, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !303, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!304 = metadata !{null, metadata !298, metadata !305}
!305 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_reference_type ]
!306 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !292} ; [ DW_TAG_const_type ]
!307 = metadata !{i32 786478, i32 0, metadata !292, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !13, i32 48, metadata !308, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!309 = metadata !{metadata !310, metadata !298, metadata !305}
!310 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !292} ; [ DW_TAG_reference_type ]
!311 = metadata !{i32 786478, i32 0, metadata !292, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !13, i32 55, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{null, metadata !298, metadata !41}
!314 = metadata !{i32 786478, i32 0, metadata !292, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !13, i32 59, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!316 = metadata !{null, metadata !298, metadata !45}
!317 = metadata !{i32 786478, i32 0, metadata !292, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !13, i32 66, metadata !318, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!318 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !319, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!319 = metadata !{metadata !50, metadata !320}
!320 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !306} ; [ DW_TAG_pointer_type ]
!321 = metadata !{i32 786478, i32 0, metadata !292, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !13, i32 71, metadata !318, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786478, i32 0, metadata !292, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !13, i32 77, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786478, i32 0, metadata !292, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{metadata !16, metadata !298}
!326 = metadata !{i32 786478, i32 0, metadata !292, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !13, i32 90, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!328 = metadata !{metadata !50, metadata !298, metadata !41}
!329 = metadata !{i32 786478, i32 0, metadata !292, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!330 = metadata !{i32 786478, i32 0, metadata !292, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !13, i32 104, metadata !331, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!331 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !332, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!332 = metadata !{metadata !50, metadata !298, metadata !45}
!333 = metadata !{i32 786478, i32 0, metadata !292, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !13, i32 111, metadata !334, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!334 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!335 = metadata !{metadata !67, metadata !298}
!336 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !337} ; [ DW_TAG_reference_type ]
!337 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !287, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !338} ; [ DW_TAG_typedef ]
!338 = metadata !{i32 786434, metadata !12, metadata !"stream<int>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !339, i32 0, null, metadata !119} ; [ DW_TAG_class_type ]
!339 = metadata !{metadata !340, metadata !341, metadata !345, metadata !348, metadata !353, metadata !357, metadata !360, metadata !363, metadata !367, metadata !368, metadata !369, metadata !372, metadata !375, metadata !376, metadata !379}
!340 = metadata !{i32 786445, metadata !338, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ]
!341 = metadata !{i32 786478, i32 0, metadata !338, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !342, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !343, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!343 = metadata !{null, metadata !344}
!344 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !338} ; [ DW_TAG_pointer_type ]
!345 = metadata !{i32 786478, i32 0, metadata !338, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!347 = metadata !{null, metadata !344, metadata !26}
!348 = metadata !{i32 786478, i32 0, metadata !338, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !349, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!350 = metadata !{null, metadata !344, metadata !351}
!351 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !352} ; [ DW_TAG_reference_type ]
!352 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !338} ; [ DW_TAG_const_type ]
!353 = metadata !{i32 786478, i32 0, metadata !338, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !13, i32 48, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{metadata !356, metadata !344, metadata !351}
!356 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !338} ; [ DW_TAG_reference_type ]
!357 = metadata !{i32 786478, i32 0, metadata !338, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !13, i32 55, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!359 = metadata !{null, metadata !344, metadata !94}
!360 = metadata !{i32 786478, i32 0, metadata !338, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !13, i32 59, metadata !361, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!362 = metadata !{null, metadata !344, metadata !98}
!363 = metadata !{i32 786478, i32 0, metadata !338, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !13, i32 66, metadata !364, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!365 = metadata !{metadata !50, metadata !366}
!366 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !352} ; [ DW_TAG_pointer_type ]
!367 = metadata !{i32 786478, i32 0, metadata !338, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !13, i32 71, metadata !364, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 786478, i32 0, metadata !338, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !13, i32 77, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!369 = metadata !{i32 786478, i32 0, metadata !338, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !13, i32 83, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{metadata !77, metadata !344}
!372 = metadata !{i32 786478, i32 0, metadata !338, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !13, i32 90, metadata !373, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!374 = metadata !{metadata !50, metadata !344, metadata !94}
!375 = metadata !{i32 786478, i32 0, metadata !338, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !13, i32 98, metadata !361, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786478, i32 0, metadata !338, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !13, i32 104, metadata !377, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!378 = metadata !{metadata !50, metadata !344, metadata !98}
!379 = metadata !{i32 786478, i32 0, metadata !338, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !13, i32 111, metadata !380, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!380 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !381, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!381 = metadata !{metadata !67, metadata !344}
!382 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !315, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !329, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!383 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !13, i32 98, metadata !361, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, i32*)* @_ZN3hls6streamIiE5writeERKi, null, metadata !375, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !324, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (%"class.hls::stream"*)* @_ZN3hls6streamIfE4readEv, null, metadata !323, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/duplicate.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !386, metadata !1} ; [ DW_TAG_compile_unit ]
!386 = metadata !{metadata !387}
!387 = metadata !{metadata !388, metadata !438, metadata !439}
!388 = metadata !{i32 786478, i32 0, metadata !389, metadata !"duplicate", metadata !"duplicate", metadata !"_Z9duplicateRN3hls6streamIfEES2_S2_S2_S2_", metadata !389, i32 4, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream"*)* @_Z9duplicateRN3hls6streamIfEES2_S2_S2_S2_, null, null, metadata !21, i32 5} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 786473, metadata !"duplicate.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!390 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!391 = metadata !{null, metadata !392, metadata !392, metadata !392, metadata !392, metadata !392}
!392 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !393} ; [ DW_TAG_reference_type ]
!393 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !389, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !394} ; [ DW_TAG_typedef ]
!394 = metadata !{i32 786434, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !395, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!395 = metadata !{metadata !396, metadata !397, metadata !401, metadata !404, metadata !409, metadata !413, metadata !416, metadata !419, metadata !423, metadata !424, metadata !425, metadata !428, metadata !431, metadata !432, metadata !435}
!396 = metadata !{i32 786445, metadata !394, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!397 = metadata !{i32 786478, i32 0, metadata !394, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!399 = metadata !{null, metadata !400}
!400 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !394} ; [ DW_TAG_pointer_type ]
!401 = metadata !{i32 786478, i32 0, metadata !394, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !402, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!403 = metadata !{null, metadata !400, metadata !26}
!404 = metadata !{i32 786478, i32 0, metadata !394, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !405, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!406 = metadata !{null, metadata !400, metadata !407}
!407 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !408} ; [ DW_TAG_reference_type ]
!408 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !394} ; [ DW_TAG_const_type ]
!409 = metadata !{i32 786478, i32 0, metadata !394, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !13, i32 48, metadata !410, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !411, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!411 = metadata !{metadata !412, metadata !400, metadata !407}
!412 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !394} ; [ DW_TAG_reference_type ]
!413 = metadata !{i32 786478, i32 0, metadata !394, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !13, i32 55, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{null, metadata !400, metadata !41}
!416 = metadata !{i32 786478, i32 0, metadata !394, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !13, i32 59, metadata !417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!418 = metadata !{null, metadata !400, metadata !45}
!419 = metadata !{i32 786478, i32 0, metadata !394, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !13, i32 66, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!421 = metadata !{metadata !50, metadata !422}
!422 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !408} ; [ DW_TAG_pointer_type ]
!423 = metadata !{i32 786478, i32 0, metadata !394, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !13, i32 71, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786478, i32 0, metadata !394, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !13, i32 77, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786478, i32 0, metadata !394, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !426, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!426 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!427 = metadata !{metadata !16, metadata !400}
!428 = metadata !{i32 786478, i32 0, metadata !394, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !13, i32 90, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!430 = metadata !{metadata !50, metadata !400, metadata !41}
!431 = metadata !{i32 786478, i32 0, metadata !394, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!432 = metadata !{i32 786478, i32 0, metadata !394, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !13, i32 104, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!434 = metadata !{metadata !50, metadata !400, metadata !45}
!435 = metadata !{i32 786478, i32 0, metadata !394, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !13, i32 111, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!436 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!437 = metadata !{metadata !67, metadata !400}
!438 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !417, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !431, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !426, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (%"class.hls::stream"*)* @_ZN3hls6streamIfE4readEv, null, metadata !425, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!440 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/detect.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !441, metadata !1} ; [ DW_TAG_compile_unit ]
!441 = metadata !{metadata !442}
!442 = metadata !{metadata !443, metadata !542, metadata !543, metadata !544}
!443 = metadata !{i32 786478, i32 0, metadata !444, metadata !"detect", metadata !"detect", metadata !"_Z6detectRN3hls6streamIfEEfRiS2_RNS0_IiEE", metadata !444, i32 3, metadata !445, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float, i32*, %"class.hls::stream"*, %"class.hls::stream.0"*)* @_Z6detectRN3hls6streamIfEEfRiS2_RNS0_IiEE, null, null, metadata !21, i32 4} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 786473, metadata !"detect.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", null} ; [ DW_TAG_file_type ]
!445 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!446 = metadata !{null, metadata !447, metadata !493, metadata !494, metadata !447, metadata !496}
!447 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !448} ; [ DW_TAG_reference_type ]
!448 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !444, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_typedef ]
!449 = metadata !{i32 786434, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !450, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!450 = metadata !{metadata !451, metadata !452, metadata !456, metadata !459, metadata !464, metadata !468, metadata !471, metadata !474, metadata !478, metadata !479, metadata !480, metadata !483, metadata !486, metadata !487, metadata !490}
!451 = metadata !{i32 786445, metadata !449, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!452 = metadata !{i32 786478, i32 0, metadata !449, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!454 = metadata !{null, metadata !455}
!455 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !449} ; [ DW_TAG_pointer_type ]
!456 = metadata !{i32 786478, i32 0, metadata !449, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!458 = metadata !{null, metadata !455, metadata !26}
!459 = metadata !{i32 786478, i32 0, metadata !449, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !460, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!460 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!461 = metadata !{null, metadata !455, metadata !462}
!462 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !463} ; [ DW_TAG_reference_type ]
!463 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_const_type ]
!464 = metadata !{i32 786478, i32 0, metadata !449, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !13, i32 48, metadata !465, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !466, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!466 = metadata !{metadata !467, metadata !455, metadata !462}
!467 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_reference_type ]
!468 = metadata !{i32 786478, i32 0, metadata !449, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !13, i32 55, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!469 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!470 = metadata !{null, metadata !455, metadata !41}
!471 = metadata !{i32 786478, i32 0, metadata !449, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !13, i32 59, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!472 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!473 = metadata !{null, metadata !455, metadata !45}
!474 = metadata !{i32 786478, i32 0, metadata !449, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !13, i32 66, metadata !475, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !476, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!476 = metadata !{metadata !50, metadata !477}
!477 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !463} ; [ DW_TAG_pointer_type ]
!478 = metadata !{i32 786478, i32 0, metadata !449, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !13, i32 71, metadata !475, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786478, i32 0, metadata !449, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !13, i32 77, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 786478, i32 0, metadata !449, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !481, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!481 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !482, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!482 = metadata !{metadata !16, metadata !455}
!483 = metadata !{i32 786478, i32 0, metadata !449, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !13, i32 90, metadata !484, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!484 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !485, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!485 = metadata !{metadata !50, metadata !455, metadata !41}
!486 = metadata !{i32 786478, i32 0, metadata !449, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!487 = metadata !{i32 786478, i32 0, metadata !449, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !13, i32 104, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!489 = metadata !{metadata !50, metadata !455, metadata !45}
!490 = metadata !{i32 786478, i32 0, metadata !449, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !13, i32 111, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{metadata !67, metadata !455}
!493 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !444, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!494 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !495} ; [ DW_TAG_reference_type ]
!495 = metadata !{i32 786454, null, metadata !"DTYPE_INT", metadata !444, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ]
!496 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !497} ; [ DW_TAG_reference_type ]
!497 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !444, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_typedef ]
!498 = metadata !{i32 786434, metadata !12, metadata !"stream<int>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !499, i32 0, null, metadata !119} ; [ DW_TAG_class_type ]
!499 = metadata !{metadata !500, metadata !501, metadata !505, metadata !508, metadata !513, metadata !517, metadata !520, metadata !523, metadata !527, metadata !528, metadata !529, metadata !532, metadata !535, metadata !536, metadata !539}
!500 = metadata !{i32 786445, metadata !498, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ]
!501 = metadata !{i32 786478, i32 0, metadata !498, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!502 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !503, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!503 = metadata !{null, metadata !504}
!504 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !498} ; [ DW_TAG_pointer_type ]
!505 = metadata !{i32 786478, i32 0, metadata !498, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!506 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !507, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!507 = metadata !{null, metadata !504, metadata !26}
!508 = metadata !{i32 786478, i32 0, metadata !498, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !509, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!509 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !510, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!510 = metadata !{null, metadata !504, metadata !511}
!511 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !512} ; [ DW_TAG_reference_type ]
!512 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_const_type ]
!513 = metadata !{i32 786478, i32 0, metadata !498, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !13, i32 48, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{metadata !516, metadata !504, metadata !511}
!516 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_reference_type ]
!517 = metadata !{i32 786478, i32 0, metadata !498, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !13, i32 55, metadata !518, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!518 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !519, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!519 = metadata !{null, metadata !504, metadata !94}
!520 = metadata !{i32 786478, i32 0, metadata !498, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !13, i32 59, metadata !521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!522 = metadata !{null, metadata !504, metadata !98}
!523 = metadata !{i32 786478, i32 0, metadata !498, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !13, i32 66, metadata !524, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!524 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !525, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!525 = metadata !{metadata !50, metadata !526}
!526 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !512} ; [ DW_TAG_pointer_type ]
!527 = metadata !{i32 786478, i32 0, metadata !498, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !13, i32 71, metadata !524, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!528 = metadata !{i32 786478, i32 0, metadata !498, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !13, i32 77, metadata !518, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786478, i32 0, metadata !498, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !13, i32 83, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!530 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!531 = metadata !{metadata !77, metadata !504}
!532 = metadata !{i32 786478, i32 0, metadata !498, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !13, i32 90, metadata !533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !534, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!534 = metadata !{metadata !50, metadata !504, metadata !94}
!535 = metadata !{i32 786478, i32 0, metadata !498, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !13, i32 98, metadata !521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!536 = metadata !{i32 786478, i32 0, metadata !498, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !13, i32 104, metadata !537, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!537 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !538, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!538 = metadata !{metadata !50, metadata !504, metadata !98}
!539 = metadata !{i32 786478, i32 0, metadata !498, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !13, i32 111, metadata !540, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!540 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !541, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!541 = metadata !{metadata !67, metadata !504}
!542 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !13, i32 98, metadata !521, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, i32*)* @_ZN3hls6streamIiE5writeERKi, null, metadata !535, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!543 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !472, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !486, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !481, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (%"class.hls::stream"*)* @_ZN3hls6streamIfE4readEv, null, metadata !480, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!545 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z12detect_callsRN3hls6streamIfEES2_, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551}
!546 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!547 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!548 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &"}
!549 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!550 = metadata !{metadata !"kernel_arg_name", metadata !"dat_i", metadata !"res_o"}
!551 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!552 = metadata !{void (%"class.hls::stream.0"*)* @_ZN3hls6streamIiEC1Ev, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !551}
!553 = metadata !{metadata !"kernel_arg_addr_space"}
!554 = metadata !{metadata !"kernel_arg_access_qual"}
!555 = metadata !{metadata !"kernel_arg_type"}
!556 = metadata !{metadata !"kernel_arg_type_qual"}
!557 = metadata !{metadata !"kernel_arg_name"}
!558 = metadata !{void (%"class.hls::stream.0"*)* @_ZN3hls6streamIiEC2Ev, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !551}
!559 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIfEC1Ev, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !551}
!560 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIfEC2Ev, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !551}
!561 = metadata !{void (%"class.hls::stream"*, float*)* @_Z9thresholdRN3hls6streamIfEERf, metadata !546, metadata !547, metadata !562, metadata !549, metadata !563, metadata !551}
!562 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_FLO &"}
!563 = metadata !{metadata !"kernel_arg_name", metadata !"amplitude", metadata !"threshold"}
!564 = metadata !{float (%"class.hls::stream"*)* @_ZN3hls6streamIfE4readEv, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !551}
!565 = metadata !{void (%"class.hls::stream"*, i32, %"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream"*)* @_Z5parseRN3hls6streamIfEEiS2_RNS0_IiEES2_, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !551}
!566 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!567 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!568 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_INT", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &", metadata !"DSTREAM_FLO &"}
!569 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!570 = metadata !{metadata !"kernel_arg_name", metadata !"sig_i", metadata !"hits", metadata !"sig", metadata !"loc", metadata !"sig_o"}
!571 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !551}
!572 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!573 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!574 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!575 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!576 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!577 = metadata !{i32 (%"class.hls::stream.0"*)* @_ZN3hls6streamIiE4readEv, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !551}
!578 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.0"*)* @_Z9findpeaksRN3hls6streamIfEES2_RNS0_IiEE, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !551}
!579 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!580 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!581 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &"}
!582 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!583 = metadata !{metadata !"kernel_arg_name", metadata !"samples", metadata !"amplitude", metadata !"locations"}
!584 = metadata !{void (%"class.hls::stream.0"*, i32*)* @_ZN3hls6streamIiE5writeERKi, metadata !572, metadata !573, metadata !585, metadata !575, metadata !576, metadata !551}
!585 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!586 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream"*)* @_Z9duplicateRN3hls6streamIfEES2_S2_S2_S2_, metadata !566, metadata !567, metadata !587, metadata !569, metadata !588, metadata !551}
!587 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &"}
!588 = metadata !{metadata !"kernel_arg_name", metadata !"dat_i", metadata !"dat_1_o", metadata !"dat_2_o", metadata !"dat_3_o", metadata !"dat_4_o"}
!589 = metadata !{void (%"class.hls::stream"*, float, i32*, %"class.hls::stream"*, %"class.hls::stream.0"*)* @_Z6detectRN3hls6streamIfEEfRiS2_RNS0_IiEE, metadata !566, metadata !567, metadata !590, metadata !569, metadata !591, metadata !551}
!590 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_FLO", metadata !"DTYPE_INT &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &"}
!591 = metadata !{metadata !"kernel_arg_name", metadata !"signals", metadata !"threshold", metadata !"hits", metadata !"sig", metadata !"loc"}
!592 = metadata !{i32 786689, metadata !5, metadata !"dat_i", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!593 = metadata !{i32 4, i32 32, metadata !5, null}
!594 = metadata !{i32 786689, metadata !5, metadata !"res_o", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!595 = metadata !{i32 4, i32 52, metadata !5, null}
!596 = metadata !{i32 5, i32 1, metadata !597, null}
!597 = metadata !{i32 786443, metadata !5, i32 4, i32 59, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!598 = metadata !{i32 786688, metadata !597, metadata !"dup1", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!599 = metadata !{i32 7, i32 14, metadata !597, null}
!600 = metadata !{i32 7, i32 36, metadata !597, null}
!601 = metadata !{i32 786688, metadata !597, metadata !"dup2", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!602 = metadata !{i32 7, i32 20, metadata !597, null}
!603 = metadata !{i32 786688, metadata !597, metadata !"dup3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!604 = metadata !{i32 7, i32 26, metadata !597, null}
!605 = metadata !{i32 786688, metadata !597, metadata !"dup4", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!606 = metadata !{i32 7, i32 32, metadata !597, null}
!607 = metadata !{i32 8, i32 2, metadata !597, null}
!608 = metadata !{i32 786688, metadata !597, metadata !"peaks", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!609 = metadata !{i32 10, i32 14, metadata !597, null}
!610 = metadata !{i32 10, i32 19, metadata !597, null}
!611 = metadata !{i32 786688, metadata !597, metadata !"peak_locs", metadata !6, i32 11, metadata !612, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!612 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ]
!613 = metadata !{i32 11, i32 14, metadata !597, null}
!614 = metadata !{i32 11, i32 23, metadata !597, null}
!615 = metadata !{i32 12, i32 2, metadata !597, null}
!616 = metadata !{i32 786688, metadata !597, metadata !"thres", metadata !6, i32 14, metadata !617, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!617 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!618 = metadata !{i32 14, i32 12, metadata !597, null}
!619 = metadata !{i32 15, i32 2, metadata !597, null}
!620 = metadata !{i32 786688, metadata !597, metadata !"hits", metadata !6, i32 17, metadata !621, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!621 = metadata !{i32 786454, null, metadata !"DTYPE_INT", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ]
!622 = metadata !{i32 17, i32 12, metadata !597, null}
!623 = metadata !{i32 786688, metadata !597, metadata !"sigs", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!624 = metadata !{i32 18, i32 14, metadata !597, null}
!625 = metadata !{i32 18, i32 18, metadata !597, null}
!626 = metadata !{i32 786688, metadata !597, metadata !"sig_locs", metadata !6, i32 19, metadata !612, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!627 = metadata !{i32 19, i32 14, metadata !597, null}
!628 = metadata !{i32 19, i32 22, metadata !597, null}
!629 = metadata !{i32 20, i32 2, metadata !597, null}
!630 = metadata !{i32 22, i32 2, metadata !597, null}
!631 = metadata !{i32 23, i32 1, metadata !597, null}
!632 = metadata !{i32 786689, metadata !122, metadata !"this", metadata !13, i32 16777253, metadata !633, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!633 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!634 = metadata !{i32 37, i32 43, metadata !122, null}
!635 = metadata !{i32 38, i32 5, metadata !122, null}
!636 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !13, i32 16777253, metadata !637, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!637 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!638 = metadata !{i32 37, i32 43, metadata !70, null}
!639 = metadata !{i32 38, i32 5, metadata !70, null}
!640 = metadata !{i32 786689, metadata !121, metadata !"this", metadata !13, i32 16777253, metadata !637, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!641 = metadata !{i32 37, i32 43, metadata !121, null}
!642 = metadata !{i32 38, i32 5, metadata !643, null}
!643 = metadata !{i32 786443, metadata !121, i32 37, i32 52, metadata !13, i32 1} ; [ DW_TAG_lexical_block ]
!644 = metadata !{i32 786689, metadata !123, metadata !"this", metadata !13, i32 16777253, metadata !633, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!645 = metadata !{i32 37, i32 43, metadata !123, null}
!646 = metadata !{i32 38, i32 5, metadata !647, null}
!647 = metadata !{i32 786443, metadata !123, i32 37, i32 52, metadata !13, i32 2} ; [ DW_TAG_lexical_block ]
!648 = metadata !{i32 786689, metadata !127, metadata !"amplitude", metadata !128, i32 16777219, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!649 = metadata !{i32 3, i32 29, metadata !127, null}
!650 = metadata !{i32 786689, metadata !127, metadata !"threshold", metadata !128, i32 33554435, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!651 = metadata !{i32 3, i32 51, metadata !127, null}
!652 = metadata !{i32 786688, metadata !653, metadata !"sum", metadata !128, i32 5, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!653 = metadata !{i32 786443, metadata !127, i32 3, i32 61, metadata !128, i32 0} ; [ DW_TAG_lexical_block ]
!654 = metadata !{i32 5, i32 12, metadata !653, null}
!655 = metadata !{i32 5, i32 21, metadata !653, null}
!656 = metadata !{i32 786688, metadata !657, metadata !"i", metadata !128, i32 6, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!657 = metadata !{i32 786443, metadata !653, i32 6, i32 2, metadata !128, i32 1} ; [ DW_TAG_lexical_block ]
!658 = metadata !{i32 6, i32 10, metadata !657, null}
!659 = metadata !{i32 6, i32 15, metadata !657, null}
!660 = metadata !{i32 6, i32 37, metadata !661, null}
!661 = metadata !{i32 786443, metadata !657, i32 6, i32 36, metadata !128, i32 2} ; [ DW_TAG_lexical_block ]
!662 = metadata !{i32 7, i32 1, metadata !661, null}
!663 = metadata !{i32 8, i32 9, metadata !661, null}
!664 = metadata !{i32 9, i32 2, metadata !661, null}
!665 = metadata !{i32 6, i32 31, metadata !657, null}
!666 = metadata !{i32 10, i32 2, metadata !653, null}
!667 = metadata !{i32 11, i32 1, metadata !653, null}
!668 = metadata !{i32 786689, metadata !179, metadata !"this", metadata !13, i32 16777299, metadata !669, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!669 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ]
!670 = metadata !{i32 83, i32 56, metadata !179, null}
!671 = metadata !{i32 786688, metadata !672, metadata !"tmp", metadata !13, i32 84, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!672 = metadata !{i32 786443, metadata !179, i32 83, i32 63, metadata !13, i32 3} ; [ DW_TAG_lexical_block ]
!673 = metadata !{i32 84, i32 22, metadata !672, null}
!674 = metadata !{i32 85, i32 9, metadata !672, null}
!675 = metadata !{i32 86, i32 9, metadata !672, null}
!676 = metadata !{i32 786689, metadata !183, metadata !"sig_i", metadata !184, i32 16777219, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!677 = metadata !{i32 3, i32 25, metadata !183, null}
!678 = metadata !{i32 786689, metadata !183, metadata !"hits", metadata !184, i32 33554436, metadata !233, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!679 = metadata !{i32 4, i32 16, metadata !183, null}
!680 = metadata !{i32 786689, metadata !183, metadata !"sig", metadata !184, i32 50331653, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!681 = metadata !{i32 5, i32 19, metadata !183, null}
!682 = metadata !{i32 786689, metadata !183, metadata !"loc", metadata !184, i32 67108870, metadata !234, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!683 = metadata !{i32 6, i32 19, metadata !183, null}
!684 = metadata !{i32 786689, metadata !183, metadata !"sig_o", metadata !184, i32 83886087, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!685 = metadata !{i32 7, i32 19, metadata !183, null}
!686 = metadata !{i32 786688, metadata !687, metadata !"read_count", metadata !184, i32 9, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!687 = metadata !{i32 786443, metadata !183, i32 7, i32 26, metadata !184, i32 0} ; [ DW_TAG_lexical_block ]
!688 = metadata !{i32 9, i32 12, metadata !687, null}
!689 = metadata !{i32 9, i32 26, metadata !687, null}
!690 = metadata !{i32 786688, metadata !691, metadata !"i", metadata !184, i32 10, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!691 = metadata !{i32 786443, metadata !687, i32 10, i32 16, metadata !184, i32 1} ; [ DW_TAG_lexical_block ]
!692 = metadata !{i32 10, i32 24, metadata !691, null}
!693 = metadata !{i32 10, i32 29, metadata !691, null}
!694 = metadata !{i32 10, i32 47, metadata !695, null}
!695 = metadata !{i32 786443, metadata !691, i32 10, i32 46, metadata !184, i32 2} ; [ DW_TAG_lexical_block ]
!696 = metadata !{i32 11, i32 1, metadata !695, null}
!697 = metadata !{i32 12, i32 1, metadata !695, null}
!698 = metadata !{i32 786688, metadata !695, metadata !"location", metadata !184, i32 13, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!699 = metadata !{i32 13, i32 12, metadata !695, null}
!700 = metadata !{i32 13, i32 23, metadata !695, null}
!701 = metadata !{i32 786688, metadata !695, metadata !"b", metadata !184, i32 15, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!702 = metadata !{i32 15, i32 13, metadata !695, null}
!703 = metadata !{i32 15, i32 38, metadata !695, null}
!704 = metadata !{i32 786688, metadata !695, metadata !"e", metadata !184, i32 16, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!705 = metadata !{i32 16, i32 13, metadata !695, null}
!706 = metadata !{i32 16, i32 34, metadata !695, null}
!707 = metadata !{i32 18, i32 3, metadata !695, null}
!708 = metadata !{i32 18, i32 13, metadata !695, null}
!709 = metadata !{i32 19, i32 3, metadata !695, null}
!710 = metadata !{i32 19, i32 23, metadata !695, null}
!711 = metadata !{i32 21, i32 17, metadata !695, null}
!712 = metadata !{i32 21, i32 43, metadata !713, null}
!713 = metadata !{i32 786443, metadata !695, i32 21, i32 43, metadata !184, i32 3} ; [ DW_TAG_lexical_block ]
!714 = metadata !{i32 21, i32 54, metadata !713, null}
!715 = metadata !{i32 22, i32 15, metadata !695, null}
!716 = metadata !{i32 22, i32 39, metadata !717, null}
!717 = metadata !{i32 786443, metadata !695, i32 22, i32 39, metadata !184, i32 4} ; [ DW_TAG_lexical_block ]
!718 = metadata !{i32 22, i32 51, metadata !717, null}
!719 = metadata !{i32 22, i32 63, metadata !717, null}
!720 = metadata !{i32 24, i32 2, metadata !695, null}
!721 = metadata !{i32 10, i32 41, metadata !691, null}
!722 = metadata !{i32 25, i32 1, metadata !687, null}
!723 = metadata !{i32 786689, metadata !282, metadata !"this", metadata !13, i32 16777299, metadata !724, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!724 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ]
!725 = metadata !{i32 83, i32 56, metadata !282, null}
!726 = metadata !{i32 786688, metadata !727, metadata !"tmp", metadata !13, i32 84, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!727 = metadata !{i32 786443, metadata !282, i32 83, i32 63, metadata !13, i32 7} ; [ DW_TAG_lexical_block ]
!728 = metadata !{i32 84, i32 22, metadata !727, null}
!729 = metadata !{i32 85, i32 9, metadata !727, null}
!730 = metadata !{i32 86, i32 9, metadata !727, null}
!731 = metadata !{i32 786689, metadata !280, metadata !"this", metadata !13, i32 16777314, metadata !732, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!732 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ]
!733 = metadata !{i32 98, i32 48, metadata !280, null}
!734 = metadata !{i32 786689, metadata !280, metadata !"din", metadata !13, i32 33554530, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!735 = metadata !{i32 98, i32 74, metadata !280, null}
!736 = metadata !{i32 786688, metadata !737, metadata !"tmp", metadata !13, i32 99, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!737 = metadata !{i32 786443, metadata !280, i32 98, i32 79, metadata !13, i32 5} ; [ DW_TAG_lexical_block ]
!738 = metadata !{i32 99, i32 22, metadata !737, null}
!739 = metadata !{i32 99, i32 31, metadata !737, null}
!740 = metadata !{i32 100, i32 9, metadata !737, null}
!741 = metadata !{i32 101, i32 5, metadata !737, null}
!742 = metadata !{i32 786689, metadata !286, metadata !"samples", metadata !287, i32 16777219, metadata !290, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!743 = metadata !{i32 3, i32 29, metadata !286, null}
!744 = metadata !{i32 786689, metadata !286, metadata !"amplitude", metadata !287, i32 33554436, metadata !290, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!745 = metadata !{i32 4, i32 23, metadata !286, null}
!746 = metadata !{i32 786689, metadata !286, metadata !"locations", metadata !287, i32 50331653, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!747 = metadata !{i32 5, i32 23, metadata !286, null}
!748 = metadata !{i32 786688, metadata !749, metadata !"shift_buf", metadata !287, i32 7, metadata !750, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!749 = metadata !{i32 786443, metadata !286, i32 5, i32 34, metadata !287, i32 0} ; [ DW_TAG_lexical_block ]
!750 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !751, metadata !752, i32 0, i32 0} ; [ DW_TAG_array_type ]
!751 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !287, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!752 = metadata !{metadata !753}
!753 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!754 = metadata !{i32 7, i32 12, metadata !749, null}
!755 = metadata !{i32 7, i32 30, metadata !749, null}
!756 = metadata !{i32 8, i32 1, metadata !749, null}
!757 = metadata !{i32 786688, metadata !758, metadata !"i", metadata !287, i32 10, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!758 = metadata !{i32 786443, metadata !749, i32 10, i32 16, metadata !287, i32 1} ; [ DW_TAG_lexical_block ]
!759 = metadata !{i32 10, i32 24, metadata !758, null}
!760 = metadata !{i32 10, i32 29, metadata !758, null}
!761 = metadata !{i32 10, i32 51, metadata !762, null}
!762 = metadata !{i32 786443, metadata !758, i32 10, i32 50, metadata !287, i32 2} ; [ DW_TAG_lexical_block ]
!763 = metadata !{i32 11, i32 1, metadata !762, null}
!764 = metadata !{i32 13, i32 2, metadata !762, null}
!765 = metadata !{i32 14, i32 3, metadata !762, null}
!766 = metadata !{i32 15, i32 18, metadata !762, null}
!767 = metadata !{i32 17, i32 3, metadata !762, null}
!768 = metadata !{i32 18, i32 4, metadata !769, null}
!769 = metadata !{i32 786443, metadata !762, i32 17, i32 66, metadata !287, i32 3} ; [ DW_TAG_lexical_block ]
!770 = metadata !{i32 19, i32 4, metadata !769, null}
!771 = metadata !{i32 20, i32 3, metadata !769, null}
!772 = metadata !{i32 21, i32 2, metadata !762, null}
!773 = metadata !{i32 10, i32 45, metadata !758, null}
!774 = metadata !{i32 23, i32 1, metadata !749, null}
!775 = metadata !{i32 786689, metadata !383, metadata !"this", metadata !13, i32 16777314, metadata !776, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!776 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !338} ; [ DW_TAG_pointer_type ]
!777 = metadata !{i32 98, i32 48, metadata !383, null}
!778 = metadata !{i32 786689, metadata !383, metadata !"din", metadata !13, i32 33554530, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!779 = metadata !{i32 98, i32 74, metadata !383, null}
!780 = metadata !{i32 786688, metadata !781, metadata !"tmp", metadata !13, i32 99, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!781 = metadata !{i32 786443, metadata !383, i32 98, i32 79, metadata !13, i32 5} ; [ DW_TAG_lexical_block ]
!782 = metadata !{i32 99, i32 22, metadata !781, null}
!783 = metadata !{i32 99, i32 31, metadata !781, null}
!784 = metadata !{i32 100, i32 9, metadata !781, null}
!785 = metadata !{i32 101, i32 5, metadata !781, null}
!786 = metadata !{i32 786689, metadata !388, metadata !"dat_i", metadata !389, i32 16777220, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!787 = metadata !{i32 4, i32 29, metadata !388, null}
!788 = metadata !{i32 786689, metadata !388, metadata !"dat_1_o", metadata !389, i32 33554436, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!789 = metadata !{i32 4, i32 49, metadata !388, null}
!790 = metadata !{i32 786689, metadata !388, metadata !"dat_2_o", metadata !389, i32 50331652, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!791 = metadata !{i32 4, i32 71, metadata !388, null}
!792 = metadata !{i32 786689, metadata !388, metadata !"dat_3_o", metadata !389, i32 67108869, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!793 = metadata !{i32 5, i32 25, metadata !388, null}
!794 = metadata !{i32 786689, metadata !388, metadata !"dat_4_o", metadata !389, i32 83886085, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!795 = metadata !{i32 5, i32 47, metadata !388, null}
!796 = metadata !{i32 786688, metadata !797, metadata !"i", metadata !389, i32 6, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!797 = metadata !{i32 786443, metadata !798, i32 6, i32 2, metadata !389, i32 1} ; [ DW_TAG_lexical_block ]
!798 = metadata !{i32 786443, metadata !388, i32 5, i32 56, metadata !389, i32 0} ; [ DW_TAG_lexical_block ]
!799 = metadata !{i32 6, i32 10, metadata !797, null}
!800 = metadata !{i32 6, i32 15, metadata !797, null}
!801 = metadata !{i32 6, i32 37, metadata !802, null}
!802 = metadata !{i32 786443, metadata !797, i32 6, i32 36, metadata !389, i32 2} ; [ DW_TAG_lexical_block ]
!803 = metadata !{i32 7, i32 1, metadata !802, null}
!804 = metadata !{i32 786688, metadata !802, metadata !"val", metadata !389, i32 8, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!805 = metadata !{i32 8, i32 8, metadata !802, null}
!806 = metadata !{i32 8, i32 14, metadata !802, null}
!807 = metadata !{i32 9, i32 3, metadata !802, null}
!808 = metadata !{i32 10, i32 3, metadata !802, null}
!809 = metadata !{i32 11, i32 3, metadata !802, null}
!810 = metadata !{i32 12, i32 3, metadata !802, null}
!811 = metadata !{i32 13, i32 2, metadata !802, null}
!812 = metadata !{i32 6, i32 31, metadata !797, null}
!813 = metadata !{i32 14, i32 1, metadata !798, null}
!814 = metadata !{i32 786689, metadata !443, metadata !"signals", metadata !444, i32 16777219, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!815 = metadata !{i32 3, i32 26, metadata !443, null}
!816 = metadata !{i32 786689, metadata !443, metadata !"threshold", metadata !444, i32 33554435, metadata !493, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!817 = metadata !{i32 3, i32 45, metadata !443, null}
!818 = metadata !{i32 786689, metadata !443, metadata !"hits", metadata !444, i32 50331651, metadata !494, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!819 = metadata !{i32 3, i32 67, metadata !443, null}
!820 = metadata !{i32 786689, metadata !443, metadata !"sig", metadata !444, i32 67108868, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!821 = metadata !{i32 4, i32 17, metadata !443, null}
!822 = metadata !{i32 786689, metadata !443, metadata !"loc", metadata !444, i32 83886084, metadata !496, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!823 = metadata !{i32 4, i32 35, metadata !443, null}
!824 = metadata !{i32 6, i32 2, metadata !825, null}
!825 = metadata !{i32 786443, metadata !443, i32 4, i32 40, metadata !444, i32 0} ; [ DW_TAG_lexical_block ]
!826 = metadata !{i32 786688, metadata !827, metadata !"i", metadata !444, i32 7, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!827 = metadata !{i32 786443, metadata !825, i32 7, i32 2, metadata !444, i32 1} ; [ DW_TAG_lexical_block ]
!828 = metadata !{i32 7, i32 10, metadata !827, null}
!829 = metadata !{i32 7, i32 15, metadata !827, null}
!830 = metadata !{i32 7, i32 37, metadata !831, null}
!831 = metadata !{i32 786443, metadata !827, i32 7, i32 36, metadata !444, i32 2} ; [ DW_TAG_lexical_block ]
!832 = metadata !{i32 8, i32 1, metadata !831, null}
!833 = metadata !{i32 786688, metadata !831, metadata !"currAmp", metadata !444, i32 9, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!834 = metadata !{i32 9, i32 12, metadata !831, null}
!835 = metadata !{i32 9, i32 22, metadata !831, null}
!836 = metadata !{i32 10, i32 3, metadata !831, null}
!837 = metadata !{i32 11, i32 4, metadata !838, null}
!838 = metadata !{i32 786443, metadata !831, i32 10, i32 27, metadata !444, i32 3} ; [ DW_TAG_lexical_block ]
!839 = metadata !{i32 12, i32 4, metadata !838, null}
!840 = metadata !{i32 13, i32 4, metadata !838, null}
!841 = metadata !{i32 14, i32 3, metadata !838, null}
!842 = metadata !{i32 15, i32 2, metadata !831, null}
!843 = metadata !{i32 7, i32 31, metadata !827, null}
!844 = metadata !{i32 16, i32 1, metadata !825, null}
