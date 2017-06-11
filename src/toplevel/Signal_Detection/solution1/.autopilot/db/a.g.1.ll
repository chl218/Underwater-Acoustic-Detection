; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

%"class.hls::stream.1" = type { float }
%"class.hls::stream.0.2" = type { i32 }

@memset_shift_buf.str = internal unnamed_addr constant [17 x i8] c"memset_shift_buf\00" ; [#uses=1 type=[17 x i8]*]
@detect_calls.str = internal unnamed_addr constant [13 x i8] c"detect_calls\00" ; [#uses=1 type=[13 x i8]*]
@.str9 = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str5 = private unnamed_addr constant [13 x i8] c"Parse_Signal\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"Signal_End\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str211 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"Signal_Begin\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str18 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str14 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=1]
define internal fastcc void @threshold(%"class.hls::stream.1"* %amplitude, float* %threshold) nounwind {
  %tmp.3 = alloca float, align 4                  ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %amplitude}, i64 0, metadata !587), !dbg !588 ; [debug line = 3:29] [debug variable = amplitude]
  call void @llvm.dbg.value(metadata !{float* %threshold}, i64 0, metadata !589), !dbg !590 ; [debug line = 3:51] [debug variable = threshold]
  %amplitude.addr = getelementptr inbounds %"class.hls::stream.1"* %amplitude, i32 0, i32 0, !dbg !591 ; [#uses=1 type=float*] [debug line = 85:9@8:9]
  br label %1, !dbg !597                          ; [debug line = 6:15]

; <label>:1                                       ; preds = %2, %0
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum.1, %2 ] ; [#uses=2 type=float]
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %i, 600000, !dbg !597   ; [#uses=1 type=i1] [debug line = 6:15]
  br i1 %exitcond, label %3, label %2, !dbg !597  ; [debug line = 6:15]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !598 ; [#uses=1 type=i32] [debug line = 6:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !599 ; [debug line = 7:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %amplitude}, i64 0, metadata !600), !dbg !602 ; [debug line = 83:56@8:9] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.3}, metadata !603) nounwind, !dbg !604 ; [debug line = 84:22@8:9] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %amplitude.addr, float* %tmp.3) nounwind, !dbg !591 ; [debug line = 85:9@8:9]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !603), !dbg !605 ; [debug line = 86:9@8:9] [debug variable = tmp]
  %tmp.3.load = load float* %tmp.3, align 4, !dbg !605 ; [#uses=1 type=float] [debug line = 86:9@8:9]
  %sum.1 = fadd float %sum, %tmp.3.load, !dbg !593 ; [#uses=1 type=float] [debug line = 8:9]
  call void @llvm.dbg.value(metadata !{float %sum.1}, i64 0, metadata !606), !dbg !593 ; [debug line = 8:9] [debug variable = sum]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !607 ; [#uses=0 type=i32] [debug line = 9:2]
  %i.1 = add nsw i32 %i, 1, !dbg !608             ; [#uses=1 type=i32] [debug line = 6:31]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !609), !dbg !608 ; [debug line = 6:31] [debug variable = i]
  br label %1, !dbg !608                          ; [debug line = 6:31]

; <label>:3                                       ; preds = %1
  %sum.0.lcssa = phi float [ %sum, %1 ]           ; [#uses=1 type=float]
  %tmp = fdiv float %sum.0.lcssa, 2.000000e+03, !dbg !610 ; [#uses=1 type=float] [debug line = 10:2]
  %tmp.1 = fmul float %tmp, 3.000000e+02, !dbg !610 ; [#uses=1 type=float] [debug line = 10:2]
  %tmp.2 = fmul float %tmp.1, 5.000000e+00, !dbg !610 ; [#uses=1 type=float] [debug line = 10:2]
  store float %tmp.2, float* %threshold, align 4, !dbg !610 ; [debug line = 10:2]
  ret void, !dbg !611                             ; [debug line = 11:1]
}

; [#uses=1]
define internal fastcc void @parse(%"class.hls::stream.1"* %sig_i, i32 %hits, %"class.hls::stream.0.2"* %loc, %"class.hls::stream.1"* %sig_o) nounwind {
  %tmp.21 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.20 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.15 = alloca float, align 4                 ; [#uses=1 type=float*]
  %tmp.6 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sig_i}, i64 0, metadata !612), !dbg !613 ; [debug line = 3:25] [debug variable = sig_i]
  call void @llvm.dbg.value(metadata !{i32 %hits}, i64 0, metadata !614), !dbg !615 ; [debug line = 4:16] [debug variable = hits]
  call void @llvm.dbg.value(metadata !616, i64 0, metadata !617), !dbg !618 ; [debug line = 5:19] [debug variable = sig]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %loc}, i64 0, metadata !619), !dbg !620 ; [debug line = 6:19] [debug variable = loc]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sig_o}, i64 0, metadata !621), !dbg !622 ; [debug line = 7:19] [debug variable = sig_o]
  %loc.addr = getelementptr inbounds %"class.hls::stream.0.2"* %loc, i32 0, i32 0, !dbg !623 ; [#uses=1 type=i32*] [debug line = 85:9@13:23]
  %sig_i.addr = getelementptr inbounds %"class.hls::stream.1"* %sig_i, i32 0, i32 0, !dbg !629 ; [#uses=2 type=float*] [debug line = 85:9@21:43]
  %sig_o.addr = getelementptr inbounds %"class.hls::stream.1"* %sig_o, i32 0, i32 0, !dbg !632 ; [#uses=1 type=float*] [debug line = 100:9@22:51]
  br label %1, !dbg !636                          ; [debug line = 10:29]

; <label>:1                                       ; preds = %8, %0
  %read_count = phi i32 [ 0, %0 ], [ %read_count.3, %8 ] ; [#uses=3 type=i32]
  %i = phi i32 [ 0, %0 ], [ %i.2, %8 ]            ; [#uses=2 type=i32]
  %tmp = icmp slt i32 %i, %hits, !dbg !636        ; [#uses=1 type=i1] [debug line = 10:29]
  br i1 %tmp, label %2, label %9, !dbg !636       ; [debug line = 10:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !637 ; [debug line = 10:47]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !637 ; [#uses=1 type=i32] [debug line = 10:47]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 60, i32 10, i8* getelementptr inbounds ([1 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !638 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !639 ; [debug line = 12:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %loc}, i64 0, metadata !640), !dbg !642 ; [debug line = 83:56@13:23] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.6}, metadata !643) nounwind, !dbg !644 ; [debug line = 84:22@13:23] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %loc.addr, i32* %tmp.6) nounwind, !dbg !623 ; [debug line = 85:9@13:23]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.6}, i64 0, metadata !643), !dbg !645 ; [debug line = 86:9@13:23] [debug variable = tmp]
  %location = load i32* %tmp.6, align 4, !dbg !645 ; [#uses=3 type=i32] [debug line = 86:9@13:23]
  call void @llvm.dbg.value(metadata !{i32 %location}, i64 0, metadata !646), !dbg !625 ; [debug line = 13:23] [debug variable = location]
  %b = add nsw i32 %location, -1001, !dbg !647    ; [#uses=1 type=i32] [debug line = 15:38]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !648), !dbg !647 ; [debug line = 15:38] [debug variable = b]
  %e = add nsw i32 %location, 1000, !dbg !649     ; [#uses=2 type=i32] [debug line = 16:34]
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !650), !dbg !649 ; [debug line = 16:34] [debug variable = e]
  %tmp.9 = icmp slt i32 %b, 0, !dbg !651          ; [#uses=1 type=i1] [debug line = 18:3]
  %tmp.10 = icmp sgt i32 %e, 599999, !dbg !652    ; [#uses=1 type=i1] [debug line = 19:3]
  %e.2 = select i1 %tmp.10, i32 599999, i32 %e, !dbg !652 ; [#uses=3 type=i32] [debug line = 19:3]
  call void @llvm.dbg.value(metadata !{i32 %e.2}, i64 0, metadata !650), !dbg !652 ; [debug line = 19:3] [debug variable = e]
  %.op = add i32 %location, -1002, !dbg !653      ; [#uses=1 type=i32] [debug line = 21:17]
  %tmp.11 = select i1 %tmp.9, i32 -1, i32 %.op, !dbg !653 ; [#uses=3 type=i32] [debug line = 21:17]
  %tmp.12 = icmp sgt i32 %read_count, %tmp.11     ; [#uses=1 type=i1]
  %smax9 = select i1 %tmp.12, i32 %read_count, i32 %tmp.11 ; [#uses=2 type=i32]
  br label %3, !dbg !653                          ; [debug line = 21:17]

; <label>:3                                       ; preds = %4, %2
  %read_count.1 = phi i32 [ %read_count, %2 ], [ %tmp.13, %4 ] ; [#uses=2 type=i32]
  %tmp.13 = add nsw i32 %read_count.1, 1, !dbg !653 ; [#uses=1 type=i32] [debug line = 21:17]
  %tmp.14 = icmp slt i32 %read_count.1, %tmp.11, !dbg !653 ; [#uses=1 type=i1] [debug line = 21:17]
  br i1 %tmp.14, label %4, label %5, !dbg !653    ; [debug line = 21:17]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !630 ; [debug line = 21:43]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !630 ; [#uses=1 type=i32] [debug line = 21:43]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sig_i}, i64 0, metadata !600), !dbg !654 ; [debug line = 83:56@21:43] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.15}, metadata !603) nounwind, !dbg !655 ; [debug line = 84:22@21:43] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %sig_i.addr, float* %tmp.15) nounwind, !dbg !629 ; [debug line = 85:9@21:43]
  call void @llvm.dbg.value(metadata !{float* %tmp.15}, i64 0, metadata !603), !dbg !656 ; [debug line = 86:9@21:43] [debug variable = tmp]
  %rend11 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 %rbegin1) nounwind, !dbg !657 ; [#uses=0 type=i32] [debug line = 21:54]
  br label %3, !dbg !657                          ; [debug line = 21:54]

; <label>:5                                       ; preds = %3
  %tmp.16 = add i32 %smax9, 1, !dbg !658          ; [#uses=2 type=i32] [debug line = 22:15]
  %tmp.17 = icmp sgt i32 %e.2, %tmp.16            ; [#uses=1 type=i1]
  %smax8 = select i1 %tmp.17, i32 %e.2, i32 %tmp.16 ; [#uses=1 type=i32]
  %read_count.3 = add i32 %smax8, 1, !dbg !658    ; [#uses=1 type=i32] [debug line = 22:15]
  call void @llvm.dbg.value(metadata !{i32 %read_count.3}, i64 0, metadata !659), !dbg !658 ; [debug line = 22:15] [debug variable = read_count]
  br label %6, !dbg !658                          ; [debug line = 22:15]

; <label>:6                                       ; preds = %7, %5
  %read_count.2.in = phi i32 [ %smax9, %5 ], [ %read_count.2, %7 ] ; [#uses=1 type=i32]
  %read_count.2 = add i32 %read_count.2.in, 1, !dbg !653 ; [#uses=2 type=i32] [debug line = 21:17]
  call void @llvm.dbg.value(metadata !{i32 %read_count.2}, i64 0, metadata !659), !dbg !653 ; [debug line = 21:17] [debug variable = read_count]
  %tmp.19 = icmp slt i32 %read_count.2, %e.2, !dbg !658 ; [#uses=1 type=i1] [debug line = 22:15]
  br i1 %tmp.19, label %7, label %8, !dbg !658    ; [debug line = 22:15]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !660 ; [debug line = 22:39]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !660 ; [#uses=1 type=i32] [debug line = 22:39]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sig_i}, i64 0, metadata !600), !dbg !661 ; [debug line = 83:56@22:51] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.20}, metadata !603) nounwind, !dbg !662 ; [debug line = 84:22@22:51] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %sig_i.addr, float* %tmp.20) nounwind, !dbg !663 ; [debug line = 85:9@22:51]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.20}, i64 0, metadata !603), !dbg !664 ; [debug line = 86:9@22:51] [debug variable = tmp]
  %tmp.22 = load float* %tmp.20, align 4, !dbg !664 ; [#uses=1 type=float] [debug line = 86:9@22:51]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sig_o}, i64 0, metadata !665), !dbg !667 ; [debug line = 98:48@22:51] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.21}, metadata !668) nounwind, !dbg !669 ; [debug line = 99:22@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.22}, i64 0, metadata !668), !dbg !670 ; [debug line = 99:31@22:51] [debug variable = tmp]
  store float %tmp.22, float* %tmp.21, align 4, !dbg !670 ; [debug line = 99:31@22:51]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %sig_o.addr, float* %tmp.21) nounwind, !dbg !632 ; [debug line = 100:9@22:51]
  %rend13 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 %rbegin2) nounwind, !dbg !671 ; [#uses=0 type=i32] [debug line = 22:63]
  br label %6, !dbg !671                          ; [debug line = 22:63]

; <label>:8                                       ; preds = %6
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !672 ; [#uses=0 type=i32] [debug line = 24:2]
  %i.2 = add nsw i32 %i, 1, !dbg !673             ; [#uses=1 type=i32] [debug line = 10:41]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !674), !dbg !673 ; [debug line = 10:41] [debug variable = i]
  br label %1, !dbg !673                          ; [debug line = 10:41]

; <label>:9                                       ; preds = %1
  ret void, !dbg !675                             ; [debug line = 25:1]
}

; [#uses=257]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=27]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @findpeaks(%"class.hls::stream.1"* %samples, %"class.hls::stream.1"* %amplitude, %"class.hls::stream.0.2"* %locations) nounwind {
  %tmp.29 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.27 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.24 = alloca float, align 4                 ; [#uses=2 type=float*]
  %shift_buf = alloca [3 x float], align 4        ; [#uses=4 type=[3 x float]*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %samples}, i64 0, metadata !676), !dbg !677 ; [debug line = 3:29] [debug variable = samples]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %amplitude}, i64 0, metadata !678), !dbg !679 ; [debug line = 4:23] [debug variable = amplitude]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %locations}, i64 0, metadata !680), !dbg !681 ; [debug line = 5:23] [debug variable = locations]
  call void @llvm.dbg.declare(metadata !{[3 x float]* %shift_buf}, metadata !682), !dbg !688 ; [debug line = 7:12] [debug variable = shift_buf]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %invdar = phi i32 [ 0, %0 ], [ %indvarinc, %meminst ], !dbg !689 ; [#uses=3 type=i32] [debug line = 7:30]
  %indvarinc = add i32 %invdar, 1, !dbg !689      ; [#uses=1 type=i32] [debug line = 7:30]
  %shift_buf.addr = getelementptr [3 x float]* %shift_buf, i32 0, i32 %invdar, !dbg !689 ; [#uses=1 type=float*] [debug line = 7:30]
  store float 0.000000e+00, float* %shift_buf.addr, align 4, !dbg !689 ; [debug line = 7:30]
  %tmp = icmp eq i32 %invdar, 2, !dbg !689        ; [#uses=1 type=i1] [debug line = 7:30]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memset_shift_buf.str)
  br i1 %tmp, label %1, label %meminst, !dbg !689 ; [debug line = 7:30]

; <label>:1                                       ; preds = %meminst
  %shift_buf.addr.1 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 0, !dbg !690 ; [#uses=3 type=float*] [debug line = 8:1]
  call void (...)* @_ssdm_SpecArrayPartition(float* %shift_buf.addr.1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str110, i32 0, i32 0)) nounwind, !dbg !690 ; [debug line = 8:1]
  %din.assign = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 1, !dbg !691 ; [#uses=4 type=float*] [debug line = 13:2]
  %shift_buf.addr.3 = getelementptr inbounds [3 x float]* %shift_buf, i32 0, i32 2, !dbg !691 ; [#uses=2 type=float*] [debug line = 13:2]
  %samples.addr = getelementptr inbounds %"class.hls::stream.1"* %samples, i32 0, i32 0, !dbg !694 ; [#uses=1 type=float*] [debug line = 85:9@15:18]
  %locations.addr = getelementptr inbounds %"class.hls::stream.0.2"* %locations, i32 0, i32 0, !dbg !696 ; [#uses=1 type=i32*] [debug line = 100:9@18:4]
  %amplitude.addr = getelementptr inbounds %"class.hls::stream.1"* %amplitude, i32 0, i32 0, !dbg !700 ; [#uses=1 type=float*] [debug line = 100:9@19:4]
  br label %2, !dbg !702                          ; [debug line = 10:29]

; <label>:2                                       ; preds = %._crit_edge, %1
  %tmp.28 = phi i32 [ 0, %1 ], [ %i, %._crit_edge ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %tmp.28, 600000, !dbg !702 ; [#uses=1 type=i1] [debug line = 10:29]
  br i1 %exitcond, label %6, label %3, !dbg !702  ; [debug line = 10:29]

; <label>:3                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str211, i32 0, i32 0)) nounwind, !dbg !703 ; [debug line = 10:51]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str211, i32 0, i32 0)) nounwind, !dbg !703 ; [#uses=1 type=i32] [debug line = 10:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str110, i32 0, i32 0)) nounwind, !dbg !704 ; [debug line = 11:1]
  %shift_buf.load = load float* %din.assign, align 4, !dbg !691 ; [#uses=2 type=float] [debug line = 13:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %shift_buf.load) nounwind
  store float %shift_buf.load, float* %shift_buf.addr.3, align 4, !dbg !691 ; [debug line = 13:2]
  %shift_buf.load.1 = load float* %shift_buf.addr.1, align 4, !dbg !705 ; [#uses=2 type=float] [debug line = 14:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %shift_buf.load.1) nounwind
  store float %shift_buf.load.1, float* %din.assign, align 4, !dbg !705 ; [debug line = 14:3]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %samples}, i64 0, metadata !600), !dbg !706 ; [debug line = 83:56@15:18] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.24}, metadata !603) nounwind, !dbg !707 ; [debug line = 84:22@15:18] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %samples.addr, float* %tmp.24) nounwind, !dbg !694 ; [debug line = 85:9@15:18]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.24}, i64 0, metadata !603), !dbg !708 ; [debug line = 86:9@15:18] [debug variable = tmp]
  %tmp.24.load = load float* %tmp.24, align 4, !dbg !708 ; [#uses=3 type=float] [debug line = 86:9@15:18]
  store float %tmp.24.load, float* %shift_buf.addr.1, align 4, !dbg !695 ; [debug line = 15:18]
  %shift_buf.load.2 = load float* %shift_buf.addr.3, align 4, !dbg !709 ; [#uses=2 type=float] [debug line = 17:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %shift_buf.load.2) nounwind
  %shift_buf.load.3 = load float* %din.assign, align 4, !dbg !709 ; [#uses=4 type=float] [debug line = 17:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %shift_buf.load.3) nounwind
  %tmp.25 = fcmp olt float %shift_buf.load.2, %shift_buf.load.3, !dbg !709 ; [#uses=1 type=i1] [debug line = 17:3]
  br i1 %tmp.25, label %4, label %._crit_edge, !dbg !709 ; [debug line = 17:3]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %shift_buf.load.3) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %tmp.24.load) nounwind
  %tmp.26 = fcmp ogt float %shift_buf.load.3, %tmp.24.load, !dbg !709 ; [#uses=1 type=i1] [debug line = 17:3]
  br i1 %tmp.26, label %5, label %._crit_edge, !dbg !709 ; [debug line = 17:3]

; <label>:5                                       ; preds = %4
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %locations}, i64 0, metadata !710), !dbg !712 ; [debug line = 98:48@18:4] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.27}, metadata !713) nounwind, !dbg !714 ; [debug line = 99:22@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.28}, i64 0, metadata !713), !dbg !715 ; [debug line = 99:31@18:4] [debug variable = tmp]
  store i32 %tmp.28, i32* %tmp.27, align 4, !dbg !715 ; [debug line = 99:31@18:4]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %locations.addr, i32* %tmp.27) nounwind, !dbg !696 ; [debug line = 100:9@18:4]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %amplitude}, i64 0, metadata !665), !dbg !716 ; [debug line = 98:48@19:4] [debug variable = this]
  call void @llvm.dbg.value(metadata !{float* %din.assign}, i64 0, metadata !717), !dbg !718 ; [debug line = 98:74@19:4] [debug variable = din]
  call void @llvm.dbg.declare(metadata !{float* %tmp.29}, metadata !668) nounwind, !dbg !719 ; [debug line = 99:22@19:4] [debug variable = tmp]
  %tmp.30 = load float* %din.assign, align 4, !dbg !720 ; [#uses=2 type=float] [debug line = 99:31@19:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %tmp.30) nounwind
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.30}, i64 0, metadata !668), !dbg !720 ; [debug line = 99:31@19:4] [debug variable = tmp]
  store float %tmp.30, float* %tmp.29, align 4, !dbg !720 ; [debug line = 99:31@19:4]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %amplitude.addr, float* %tmp.29) nounwind, !dbg !700 ; [debug line = 100:9@19:4]
  br label %._crit_edge, !dbg !721                ; [debug line = 20:3]

._crit_edge:                                      ; preds = %5, %4, %3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str211, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !722 ; [#uses=0 type=i32] [debug line = 21:2]
  %i = add nsw i32 %tmp.28, 1, !dbg !723          ; [#uses=1 type=i32] [debug line = 10:45]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !724), !dbg !723 ; [debug line = 10:45] [debug variable = i]
  br label %2, !dbg !723                          ; [debug line = 10:45]

; <label>:6                                       ; preds = %2
  ret void, !dbg !725                             ; [debug line = 23:1]
}

; [#uses=1]
define internal fastcc void @duplicate(%"class.hls::stream.1"* %dat_i, %"class.hls::stream.1"* %dat_1_o, %"class.hls::stream.1"* %dat_2_o, %"class.hls::stream.1"* %dat_3_o, %"class.hls::stream.1"* %dat_4_o) nounwind {
  %tmp.36 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.35 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.34 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.32 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_i}, i64 0, metadata !726), !dbg !727 ; [debug line = 4:29] [debug variable = dat_i]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_1_o}, i64 0, metadata !728), !dbg !729 ; [debug line = 4:49] [debug variable = dat_1_o]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_2_o}, i64 0, metadata !730), !dbg !731 ; [debug line = 4:71] [debug variable = dat_2_o]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_3_o}, i64 0, metadata !732), !dbg !733 ; [debug line = 5:25] [debug variable = dat_3_o]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_4_o}, i64 0, metadata !734), !dbg !735 ; [debug line = 5:47] [debug variable = dat_4_o]
  %dat_i.addr = getelementptr inbounds %"class.hls::stream.1"* %dat_i, i32 0, i32 0, !dbg !736 ; [#uses=1 type=float*] [debug line = 85:9@8:14]
  %dat_1_o.addr = getelementptr inbounds %"class.hls::stream.1"* %dat_1_o, i32 0, i32 0, !dbg !741 ; [#uses=1 type=float*] [debug line = 100:9@9:3]
  %dat_2_o.addr = getelementptr inbounds %"class.hls::stream.1"* %dat_2_o, i32 0, i32 0, !dbg !743 ; [#uses=1 type=float*] [debug line = 100:9@10:3]
  %dat_3_o.addr = getelementptr inbounds %"class.hls::stream.1"* %dat_3_o, i32 0, i32 0, !dbg !745 ; [#uses=1 type=float*] [debug line = 100:9@11:3]
  %dat_4_o.addr = getelementptr inbounds %"class.hls::stream.1"* %dat_4_o, i32 0, i32 0, !dbg !747 ; [#uses=1 type=float*] [debug line = 100:9@12:3]
  br label %1, !dbg !749                          ; [debug line = 6:15]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.3, %2 ]            ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %i, 600000, !dbg !749   ; [#uses=1 type=i1] [debug line = 6:15]
  br i1 %exitcond, label %3, label %2, !dbg !749  ; [debug line = 6:15]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !750 ; [#uses=1 type=i32] [debug line = 6:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str115, i32 0, i32 0)) nounwind, !dbg !751 ; [debug line = 7:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_i}, i64 0, metadata !600), !dbg !752 ; [debug line = 83:56@8:14] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !603) nounwind, !dbg !753 ; [debug line = 84:22@8:14] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %dat_i.addr, float* %tmp) nounwind, !dbg !736 ; [debug line = 85:9@8:14]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !754 ; [debug line = 86:9@8:14] [debug variable = tmp]
  %val = load float* %tmp, align 4, !dbg !754     ; [#uses=4 type=float] [debug line = 86:9@8:14]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !755), !dbg !737 ; [debug line = 8:14] [debug variable = val]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_1_o}, i64 0, metadata !665), !dbg !756 ; [debug line = 98:48@9:3] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.32}, metadata !668) nounwind, !dbg !757 ; [debug line = 99:22@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !758 ; [debug line = 99:31@9:3] [debug variable = tmp]
  store float %val, float* %tmp.32, align 4, !dbg !758 ; [debug line = 99:31@9:3]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %dat_1_o.addr, float* %tmp.32) nounwind, !dbg !741 ; [debug line = 100:9@9:3]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_2_o}, i64 0, metadata !665), !dbg !759 ; [debug line = 98:48@10:3] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.34}, metadata !668) nounwind, !dbg !760 ; [debug line = 99:22@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !761 ; [debug line = 99:31@10:3] [debug variable = tmp]
  store float %val, float* %tmp.34, align 4, !dbg !761 ; [debug line = 99:31@10:3]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %dat_2_o.addr, float* %tmp.34) nounwind, !dbg !743 ; [debug line = 100:9@10:3]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_3_o}, i64 0, metadata !665), !dbg !762 ; [debug line = 98:48@11:3] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.35}, metadata !668) nounwind, !dbg !763 ; [debug line = 99:22@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !764 ; [debug line = 99:31@11:3] [debug variable = tmp]
  store float %val, float* %tmp.35, align 4, !dbg !764 ; [debug line = 99:31@11:3]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %dat_3_o.addr, float* %tmp.35) nounwind, !dbg !745 ; [debug line = 100:9@11:3]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_4_o}, i64 0, metadata !665), !dbg !765 ; [debug line = 98:48@12:3] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.36}, metadata !668) nounwind, !dbg !766 ; [debug line = 99:22@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !668), !dbg !767 ; [debug line = 99:31@12:3] [debug variable = tmp]
  store float %val, float* %tmp.36, align 4, !dbg !767 ; [debug line = 99:31@12:3]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %dat_4_o.addr, float* %tmp.36) nounwind, !dbg !747 ; [debug line = 100:9@12:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str14, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !768 ; [#uses=0 type=i32] [debug line = 13:2]
  %i.3 = add nsw i32 %i, 1, !dbg !769             ; [#uses=1 type=i32] [debug line = 6:31]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !770), !dbg !769 ; [debug line = 6:31] [debug variable = i]
  br label %1, !dbg !769                          ; [debug line = 6:31]

; <label>:3                                       ; preds = %1
  ret void, !dbg !771                             ; [debug line = 14:1]
}

; [#uses=0]
define void @detect_calls(%"class.hls::stream.1"* %dat_i, %"class.hls::stream.1"* %res_o) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @detect_calls.str) nounwind
  %dup1 = alloca %"class.hls::stream.1", align 4  ; [#uses=2 type=%"class.hls::stream.1"*]
  %dup2 = alloca %"class.hls::stream.1", align 4  ; [#uses=2 type=%"class.hls::stream.1"*]
  %dup3 = alloca %"class.hls::stream.1", align 4  ; [#uses=2 type=%"class.hls::stream.1"*]
  %dup4 = alloca %"class.hls::stream.1", align 4  ; [#uses=2 type=%"class.hls::stream.1"*]
  %peaks = alloca %"class.hls::stream.1", align 4 ; [#uses=1 type=%"class.hls::stream.1"*]
  %peak_locs = alloca %"class.hls::stream.0.2", align 4 ; [#uses=1 type=%"class.hls::stream.0.2"*]
  %thres = alloca float, align 4                  ; [#uses=2 type=float*]
  %hits = alloca i32, align 4                     ; [#uses=2 type=i32*]
  %sigs = alloca %"class.hls::stream.1", align 4  ; [#uses=1 type=%"class.hls::stream.1"*]
  %sig_locs = alloca %"class.hls::stream.0.2", align 4 ; [#uses=2 type=%"class.hls::stream.0.2"*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dat_i}, i64 0, metadata !772), !dbg !773 ; [debug line = 4:32] [debug variable = dat_i]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %res_o}, i64 0, metadata !774), !dbg !775 ; [debug line = 4:52] [debug variable = res_o]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !776 ; [debug line = 5:1]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %dup1}, metadata !778), !dbg !779 ; [debug line = 7:14] [debug variable = dup1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dup1}, i64 0, metadata !780), !dbg !782 ; [debug line = 37:43@7:36] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dup1}, i64 0, metadata !784), !dbg !785 ; [debug line = 37:43@38:5@7:36] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %dup2}, metadata !787), !dbg !788 ; [debug line = 7:20] [debug variable = dup2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dup2}, i64 0, metadata !780), !dbg !782 ; [debug line = 37:43@7:36] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dup2}, i64 0, metadata !784), !dbg !785 ; [debug line = 37:43@38:5@7:36] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %dup3}, metadata !789), !dbg !790 ; [debug line = 7:26] [debug variable = dup3]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dup3}, i64 0, metadata !780), !dbg !782 ; [debug line = 37:43@7:36] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dup3}, i64 0, metadata !784), !dbg !785 ; [debug line = 37:43@38:5@7:36] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %dup4}, metadata !791), !dbg !792 ; [debug line = 7:32] [debug variable = dup4]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dup4}, i64 0, metadata !780), !dbg !782 ; [debug line = 37:43@7:36] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %dup4}, i64 0, metadata !784), !dbg !785 ; [debug line = 37:43@38:5@7:36] [debug variable = this]
  call fastcc void @duplicate(%"class.hls::stream.1"* %dat_i, %"class.hls::stream.1"* %dup1, %"class.hls::stream.1"* %dup2, %"class.hls::stream.1"* %dup3, %"class.hls::stream.1"* %dup4), !dbg !793 ; [debug line = 8:2]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %peaks}, metadata !794), !dbg !795 ; [debug line = 10:14] [debug variable = peaks]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %peaks}, i64 0, metadata !780), !dbg !796 ; [debug line = 37:43@10:19] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %peaks}, i64 0, metadata !784), !dbg !798 ; [debug line = 37:43@38:5@10:19] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0.2"* %peak_locs}, metadata !800), !dbg !802 ; [debug line = 11:14] [debug variable = peak_locs]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %peak_locs}, i64 0, metadata !803), !dbg !805 ; [debug line = 37:43@11:23] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %peak_locs}, i64 0, metadata !807), !dbg !808 ; [debug line = 37:43@38:5@11:23] [debug variable = this]
  call fastcc void @findpeaks(%"class.hls::stream.1"* %dup1, %"class.hls::stream.1"* %peaks, %"class.hls::stream.0.2"* %peak_locs), !dbg !810 ; [debug line = 12:2]
  call void @llvm.dbg.declare(metadata !{float* %thres}, metadata !811), !dbg !813 ; [debug line = 14:12] [debug variable = thres]
  call fastcc void @threshold(%"class.hls::stream.1"* %dup2, float* %thres), !dbg !814 ; [debug line = 15:2]
  call void @llvm.dbg.declare(metadata !{i32* %hits}, metadata !815), !dbg !817 ; [debug line = 17:12] [debug variable = hits]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.1"* %sigs}, metadata !818), !dbg !819 ; [debug line = 18:14] [debug variable = sigs]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sigs}, i64 0, metadata !780), !dbg !820 ; [debug line = 37:43@18:18] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sigs}, i64 0, metadata !784), !dbg !822 ; [debug line = 37:43@38:5@18:18] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0.2"* %sig_locs}, metadata !824), !dbg !825 ; [debug line = 19:14] [debug variable = sig_locs]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %sig_locs}, i64 0, metadata !803), !dbg !826 ; [debug line = 37:43@19:22] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %sig_locs}, i64 0, metadata !807), !dbg !828 ; [debug line = 37:43@38:5@19:22] [debug variable = this]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  call void @llvm.dbg.value(metadata !{float* %thres}, i64 0, metadata !811), !dbg !830 ; [debug line = 20:2] [debug variable = thres]
  %thres.load = load float* %thres, align 4, !dbg !830 ; [#uses=1 type=float] [debug line = 20:2]
  call fastcc void @detect(%"class.hls::stream.1"* %dup3, float %thres.load, i32* %hits, %"class.hls::stream.1"* %sigs, %"class.hls::stream.0.2"* %sig_locs), !dbg !830 ; [debug line = 20:2]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !815), !dbg !831 ; [debug line = 22:2] [debug variable = hits]
  %hits.load = load i32* %hits, align 4, !dbg !831 ; [#uses=1 type=i32] [debug line = 22:2]
  call fastcc void @parse(%"class.hls::stream.1"* %dup4, i32 %hits.load, %"class.hls::stream.0.2"* %sig_locs, %"class.hls::stream.1"* %res_o), !dbg !831 ; [debug line = 22:2]
  ret void, !dbg !832                             ; [debug line = 23:1]
}

; [#uses=1]
define internal fastcc void @detect(%"class.hls::stream.1"* %signals, float %threshold, i32* %hits, %"class.hls::stream.1"* %sig, %"class.hls::stream.0.2"* %loc) nounwind {
  %tmp.42 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.40 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %signals}, i64 0, metadata !833), !dbg !834 ; [debug line = 3:26] [debug variable = signals]
  call void @llvm.dbg.value(metadata !{float %threshold}, i64 0, metadata !835), !dbg !836 ; [debug line = 3:45] [debug variable = threshold]
  call void @llvm.dbg.value(metadata !{i32* %hits}, i64 0, metadata !837), !dbg !838 ; [debug line = 3:67] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sig}, i64 0, metadata !839), !dbg !840 ; [debug line = 4:17] [debug variable = sig]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %loc}, i64 0, metadata !841), !dbg !842 ; [debug line = 4:35] [debug variable = loc]
  store i32 0, i32* %hits, align 4, !dbg !843     ; [debug line = 6:2]
  %signals.addr = getelementptr inbounds %"class.hls::stream.1"* %signals, i32 0, i32 0, !dbg !845 ; [#uses=1 type=float*] [debug line = 85:9@9:22]
  %sig.addr = getelementptr inbounds %"class.hls::stream.1"* %sig, i32 0, i32 0, !dbg !849 ; [#uses=1 type=float*] [debug line = 100:9@12:4]
  %loc.addr = getelementptr inbounds %"class.hls::stream.0.2"* %loc, i32 0, i32 0, !dbg !852 ; [#uses=1 type=i32*] [debug line = 100:9@13:4]
  br label %1, !dbg !854                          ; [debug line = 7:15]

; <label>:1                                       ; preds = %._crit_edge, %0
  %tmp.43 = phi i32 [ 0, %0 ], [ %i, %._crit_edge ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %tmp.43, 600000, !dbg !854 ; [#uses=1 type=i1] [debug line = 7:15]
  br i1 %exitcond, label %4, label %2, !dbg !854  ; [debug line = 7:15]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str18, i32 0, i32 0)) nounwind, !dbg !855 ; [#uses=1 type=i32] [debug line = 7:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str119, i32 0, i32 0)) nounwind, !dbg !856 ; [debug line = 8:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %signals}, i64 0, metadata !600), !dbg !857 ; [debug line = 83:56@9:22] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !603) nounwind, !dbg !858 ; [debug line = 84:22@9:22] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %signals.addr, float* %tmp) nounwind, !dbg !845 ; [debug line = 85:9@9:22]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !603), !dbg !859 ; [debug line = 86:9@9:22] [debug variable = tmp]
  %currAmp = load float* %tmp, align 4, !dbg !859 ; [#uses=2 type=float] [debug line = 86:9@9:22]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !860), !dbg !846 ; [debug line = 9:22] [debug variable = currAmp]
  %tmp.38 = fcmp ogt float %currAmp, %threshold, !dbg !861 ; [#uses=1 type=i1] [debug line = 10:3]
  br i1 %tmp.38, label %3, label %._crit_edge, !dbg !861 ; [debug line = 10:3]

; <label>:3                                       ; preds = %2
  %hits.load = load i32* %hits, align 4, !dbg !862 ; [#uses=1 type=i32] [debug line = 11:4]
  %tmp.39 = add nsw i32 %hits.load, 1, !dbg !862  ; [#uses=1 type=i32] [debug line = 11:4]
  store i32 %tmp.39, i32* %hits, align 4, !dbg !862 ; [debug line = 11:4]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %sig}, i64 0, metadata !665), !dbg !863 ; [debug line = 98:48@12:4] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.40}, metadata !668) nounwind, !dbg !864 ; [debug line = 99:22@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !668), !dbg !865 ; [debug line = 99:31@12:4] [debug variable = tmp]
  store float %currAmp, float* %tmp.40, align 4, !dbg !865 ; [debug line = 99:31@12:4]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %sig.addr, float* %tmp.40) nounwind, !dbg !849 ; [debug line = 100:9@12:4]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %loc}, i64 0, metadata !710), !dbg !866 ; [debug line = 98:48@13:4] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.42}, metadata !713) nounwind, !dbg !867 ; [debug line = 99:22@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.43}, i64 0, metadata !713), !dbg !868 ; [debug line = 99:31@13:4] [debug variable = tmp]
  store i32 %tmp.43, i32* %tmp.42, align 4, !dbg !868 ; [debug line = 99:31@13:4]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %loc.addr, i32* %tmp.42) nounwind, !dbg !852 ; [debug line = 100:9@13:4]
  br label %._crit_edge, !dbg !869                ; [debug line = 14:3]

._crit_edge:                                      ; preds = %3, %2
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str18, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !870 ; [#uses=0 type=i32] [debug line = 15:2]
  %i = add nsw i32 %tmp.43, 1, !dbg !871          ; [#uses=1 type=i32] [debug line = 7:31]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !872), !dbg !871 ; [debug line = 7:31] [debug variable = i]
  br label %1, !dbg !871                          ; [debug line = 7:31]

; <label>:4                                       ; preds = %1
  ret void, !dbg !873                             ; [debug line = 16:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=7]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=6]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

; [#uses=7]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayPartition(...) nounwind

!llvm.dbg.cu = !{!0, !124, !180, !283, !385, !440}
!opencl.kernels = !{!545, !552, !552, !552, !552, !558, !552, !561, !567, !552, !552, !573, !567, !579, !552, !581, !567, !552, !584, !579, !567, !552}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/toplevel.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !70, metadata !121, metadata !122, metadata !123}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsRN3hls6streamIfEES2_", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, %"class.hls::stream.1"*)* @detect_calls, null, null, metadata !21, i32 4} ; [ DW_TAG_subprogram ]
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
!70 = metadata !{i32 786478, i32 0, metadata !12, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIiEC1Ev", metadata !13, i32 37, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !78, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
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
!121 = metadata !{i32 786478, i32 0, metadata !12, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIiEC2Ev", metadata !13, i32 37, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !78, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786478, i32 0, metadata !12, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIfEC1Ev", metadata !13, i32 37, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !17, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786478, i32 0, metadata !12, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIfEC2Ev", metadata !13, i32 37, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !17, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/threshold.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !125, metadata !1} ; [ DW_TAG_compile_unit ]
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !127, metadata !179}
!127 = metadata !{i32 786478, i32 0, metadata !128, metadata !"threshold", metadata !"threshold", metadata !"_Z9thresholdRN3hls6streamIfEERf", metadata !128, i32 3, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, float*)* @threshold, null, null, metadata !21, i32 3} ; [ DW_TAG_subprogram ]
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
!179 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !164, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/parse.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !181, metadata !1} ; [ DW_TAG_compile_unit ]
!181 = metadata !{metadata !182}
!182 = metadata !{metadata !183, metadata !280, metadata !281, metadata !282}
!183 = metadata !{i32 786478, i32 0, metadata !184, metadata !"parse", metadata !"parse", metadata !"_Z5parseRN3hls6streamIfEEiS2_RNS0_IiEES2_", metadata !184, i32 3, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 7} ; [ DW_TAG_subprogram ]
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
!280 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !226, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !220, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !13, i32 83, metadata !268, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !267, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/findpeaks.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !284, metadata !1} ; [ DW_TAG_compile_unit ]
!284 = metadata !{metadata !285}
!285 = metadata !{metadata !286, metadata !382, metadata !383, metadata !384}
!286 = metadata !{i32 786478, i32 0, metadata !287, metadata !"findpeaks", metadata !"findpeaks", metadata !"_Z9findpeaksRN3hls6streamIfEES2_RNS0_IiEE", metadata !287, i32 3, metadata !288, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.0.2"*)* @findpeaks, null, null, metadata !21, i32 5} ; [ DW_TAG_subprogram ]
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
!382 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !315, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !329, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!383 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !13, i32 98, metadata !361, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !375, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !324, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !323, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/duplicate.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !386, metadata !1} ; [ DW_TAG_compile_unit ]
!386 = metadata !{metadata !387}
!387 = metadata !{metadata !388, metadata !438, metadata !439}
!388 = metadata !{i32 786478, i32 0, metadata !389, metadata !"duplicate", metadata !"duplicate", metadata !"_Z9duplicateRN3hls6streamIfEES2_S2_S2_S2_", metadata !389, i32 4, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.1"*)* @duplicate, null, null, metadata !21, i32 5} ; [ DW_TAG_subprogram ]
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
!438 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !417, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !431, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !426, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !425, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!440 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/detect.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !441, metadata !1} ; [ DW_TAG_compile_unit ]
!441 = metadata !{metadata !442}
!442 = metadata !{metadata !443, metadata !542, metadata !543, metadata !544}
!443 = metadata !{i32 786478, i32 0, metadata !444, metadata !"detect", metadata !"detect", metadata !"_Z6detectRN3hls6streamIfEEfRiS2_RNS0_IiEE", metadata !444, i32 3, metadata !445, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, float, i32*, %"class.hls::stream.1"*, %"class.hls::stream.0.2"*)* @detect, null, null, metadata !21, i32 4} ; [ DW_TAG_subprogram ]
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
!542 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !13, i32 98, metadata !521, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !535, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!543 = metadata !{i32 786478, i32 0, metadata !12, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !472, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !486, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 786478, i32 0, metadata !12, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !481, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !480, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!545 = metadata !{void (%"class.hls::stream.1"*, %"class.hls::stream.1"*)* @detect_calls, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551}
!546 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!547 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!548 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &"}
!549 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!550 = metadata !{metadata !"kernel_arg_name", metadata !"dat_i", metadata !"res_o"}
!551 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!552 = metadata !{null, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !551}
!553 = metadata !{metadata !"kernel_arg_addr_space"}
!554 = metadata !{metadata !"kernel_arg_access_qual"}
!555 = metadata !{metadata !"kernel_arg_type"}
!556 = metadata !{metadata !"kernel_arg_type_qual"}
!557 = metadata !{metadata !"kernel_arg_name"}
!558 = metadata !{void (%"class.hls::stream.1"*, float*)* @threshold, metadata !546, metadata !547, metadata !559, metadata !549, metadata !560, metadata !551}
!559 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_FLO &"}
!560 = metadata !{metadata !"kernel_arg_name", metadata !"amplitude", metadata !"threshold"}
!561 = metadata !{null, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !551}
!562 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!563 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!564 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_INT", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &", metadata !"DSTREAM_FLO &"}
!565 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!566 = metadata !{metadata !"kernel_arg_name", metadata !"sig_i", metadata !"hits", metadata !"sig", metadata !"loc", metadata !"sig_o"}
!567 = metadata !{null, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !551}
!568 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!569 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!570 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!571 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!572 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!573 = metadata !{void (%"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.0.2"*)* @findpeaks, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !551}
!574 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!575 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!576 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &"}
!577 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!578 = metadata !{metadata !"kernel_arg_name", metadata !"samples", metadata !"amplitude", metadata !"locations"}
!579 = metadata !{null, metadata !568, metadata !569, metadata !580, metadata !571, metadata !572, metadata !551}
!580 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!581 = metadata !{void (%"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.1"*, %"class.hls::stream.1"*)* @duplicate, metadata !562, metadata !563, metadata !582, metadata !565, metadata !583, metadata !551}
!582 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &"}
!583 = metadata !{metadata !"kernel_arg_name", metadata !"dat_i", metadata !"dat_1_o", metadata !"dat_2_o", metadata !"dat_3_o", metadata !"dat_4_o"}
!584 = metadata !{void (%"class.hls::stream.1"*, float, i32*, %"class.hls::stream.1"*, %"class.hls::stream.0.2"*)* @detect, metadata !562, metadata !563, metadata !585, metadata !565, metadata !586, metadata !551}
!585 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_FLO", metadata !"DTYPE_INT &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &"}
!586 = metadata !{metadata !"kernel_arg_name", metadata !"signals", metadata !"threshold", metadata !"hits", metadata !"sig", metadata !"loc"}
!587 = metadata !{i32 786689, metadata !127, metadata !"amplitude", metadata !128, i32 16777219, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!588 = metadata !{i32 3, i32 29, metadata !127, null}
!589 = metadata !{i32 786689, metadata !127, metadata !"threshold", metadata !128, i32 33554435, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!590 = metadata !{i32 3, i32 51, metadata !127, null}
!591 = metadata !{i32 85, i32 9, metadata !592, metadata !593}
!592 = metadata !{i32 786443, metadata !179, i32 83, i32 63, metadata !13, i32 3} ; [ DW_TAG_lexical_block ]
!593 = metadata !{i32 8, i32 9, metadata !594, null}
!594 = metadata !{i32 786443, metadata !595, i32 6, i32 36, metadata !128, i32 2} ; [ DW_TAG_lexical_block ]
!595 = metadata !{i32 786443, metadata !596, i32 6, i32 2, metadata !128, i32 1} ; [ DW_TAG_lexical_block ]
!596 = metadata !{i32 786443, metadata !127, i32 3, i32 61, metadata !128, i32 0} ; [ DW_TAG_lexical_block ]
!597 = metadata !{i32 6, i32 15, metadata !595, null}
!598 = metadata !{i32 6, i32 37, metadata !594, null}
!599 = metadata !{i32 7, i32 1, metadata !594, null}
!600 = metadata !{i32 786689, metadata !179, metadata !"this", metadata !13, i32 16777299, metadata !601, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!601 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ]
!602 = metadata !{i32 83, i32 56, metadata !179, metadata !593}
!603 = metadata !{i32 786688, metadata !592, metadata !"tmp", metadata !13, i32 84, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!604 = metadata !{i32 84, i32 22, metadata !592, metadata !593}
!605 = metadata !{i32 86, i32 9, metadata !592, metadata !593}
!606 = metadata !{i32 786688, metadata !596, metadata !"sum", metadata !128, i32 5, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!607 = metadata !{i32 9, i32 2, metadata !594, null}
!608 = metadata !{i32 6, i32 31, metadata !595, null}
!609 = metadata !{i32 786688, metadata !595, metadata !"i", metadata !128, i32 6, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!610 = metadata !{i32 10, i32 2, metadata !596, null}
!611 = metadata !{i32 11, i32 1, metadata !596, null}
!612 = metadata !{i32 786689, metadata !183, metadata !"sig_i", metadata !184, i32 16777219, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!613 = metadata !{i32 3, i32 25, metadata !183, null}
!614 = metadata !{i32 786689, metadata !183, metadata !"hits", metadata !184, i32 33554436, metadata !233, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!615 = metadata !{i32 4, i32 16, metadata !183, null}
!616 = metadata !{%"class.hls::stream.1"* null}
!617 = metadata !{i32 786689, metadata !183, metadata !"sig", metadata !184, i32 50331653, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!618 = metadata !{i32 5, i32 19, metadata !183, null}
!619 = metadata !{i32 786689, metadata !183, metadata !"loc", metadata !184, i32 67108870, metadata !234, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!620 = metadata !{i32 6, i32 19, metadata !183, null}
!621 = metadata !{i32 786689, metadata !183, metadata !"sig_o", metadata !184, i32 83886087, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!622 = metadata !{i32 7, i32 19, metadata !183, null}
!623 = metadata !{i32 85, i32 9, metadata !624, metadata !625}
!624 = metadata !{i32 786443, metadata !282, i32 83, i32 63, metadata !13, i32 7} ; [ DW_TAG_lexical_block ]
!625 = metadata !{i32 13, i32 23, metadata !626, null}
!626 = metadata !{i32 786443, metadata !627, i32 10, i32 46, metadata !184, i32 2} ; [ DW_TAG_lexical_block ]
!627 = metadata !{i32 786443, metadata !628, i32 10, i32 16, metadata !184, i32 1} ; [ DW_TAG_lexical_block ]
!628 = metadata !{i32 786443, metadata !183, i32 7, i32 26, metadata !184, i32 0} ; [ DW_TAG_lexical_block ]
!629 = metadata !{i32 85, i32 9, metadata !592, metadata !630}
!630 = metadata !{i32 21, i32 43, metadata !631, null}
!631 = metadata !{i32 786443, metadata !626, i32 21, i32 43, metadata !184, i32 3} ; [ DW_TAG_lexical_block ]
!632 = metadata !{i32 100, i32 9, metadata !633, metadata !634}
!633 = metadata !{i32 786443, metadata !280, i32 98, i32 79, metadata !13, i32 5} ; [ DW_TAG_lexical_block ]
!634 = metadata !{i32 22, i32 51, metadata !635, null}
!635 = metadata !{i32 786443, metadata !626, i32 22, i32 39, metadata !184, i32 4} ; [ DW_TAG_lexical_block ]
!636 = metadata !{i32 10, i32 29, metadata !627, null}
!637 = metadata !{i32 10, i32 47, metadata !626, null}
!638 = metadata !{i32 11, i32 1, metadata !626, null}
!639 = metadata !{i32 12, i32 1, metadata !626, null}
!640 = metadata !{i32 786689, metadata !282, metadata !"this", metadata !13, i32 16777299, metadata !641, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!641 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ]
!642 = metadata !{i32 83, i32 56, metadata !282, metadata !625}
!643 = metadata !{i32 786688, metadata !624, metadata !"tmp", metadata !13, i32 84, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!644 = metadata !{i32 84, i32 22, metadata !624, metadata !625}
!645 = metadata !{i32 86, i32 9, metadata !624, metadata !625}
!646 = metadata !{i32 786688, metadata !626, metadata !"location", metadata !184, i32 13, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!647 = metadata !{i32 15, i32 38, metadata !626, null}
!648 = metadata !{i32 786688, metadata !626, metadata !"b", metadata !184, i32 15, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!649 = metadata !{i32 16, i32 34, metadata !626, null}
!650 = metadata !{i32 786688, metadata !626, metadata !"e", metadata !184, i32 16, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!651 = metadata !{i32 18, i32 3, metadata !626, null}
!652 = metadata !{i32 19, i32 3, metadata !626, null}
!653 = metadata !{i32 21, i32 17, metadata !626, null}
!654 = metadata !{i32 83, i32 56, metadata !179, metadata !630}
!655 = metadata !{i32 84, i32 22, metadata !592, metadata !630}
!656 = metadata !{i32 86, i32 9, metadata !592, metadata !630}
!657 = metadata !{i32 21, i32 54, metadata !631, null}
!658 = metadata !{i32 22, i32 15, metadata !626, null}
!659 = metadata !{i32 786688, metadata !628, metadata !"read_count", metadata !184, i32 9, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!660 = metadata !{i32 22, i32 39, metadata !635, null}
!661 = metadata !{i32 83, i32 56, metadata !179, metadata !634}
!662 = metadata !{i32 84, i32 22, metadata !592, metadata !634}
!663 = metadata !{i32 85, i32 9, metadata !592, metadata !634}
!664 = metadata !{i32 86, i32 9, metadata !592, metadata !634}
!665 = metadata !{i32 786689, metadata !280, metadata !"this", metadata !13, i32 16777314, metadata !666, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!666 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ]
!667 = metadata !{i32 98, i32 48, metadata !280, metadata !634}
!668 = metadata !{i32 786688, metadata !633, metadata !"tmp", metadata !13, i32 99, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!669 = metadata !{i32 99, i32 22, metadata !633, metadata !634}
!670 = metadata !{i32 99, i32 31, metadata !633, metadata !634}
!671 = metadata !{i32 22, i32 63, metadata !635, null}
!672 = metadata !{i32 24, i32 2, metadata !626, null}
!673 = metadata !{i32 10, i32 41, metadata !627, null}
!674 = metadata !{i32 786688, metadata !627, metadata !"i", metadata !184, i32 10, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!675 = metadata !{i32 25, i32 1, metadata !628, null}
!676 = metadata !{i32 786689, metadata !286, metadata !"samples", metadata !287, i32 16777219, metadata !290, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!677 = metadata !{i32 3, i32 29, metadata !286, null}
!678 = metadata !{i32 786689, metadata !286, metadata !"amplitude", metadata !287, i32 33554436, metadata !290, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!679 = metadata !{i32 4, i32 23, metadata !286, null}
!680 = metadata !{i32 786689, metadata !286, metadata !"locations", metadata !287, i32 50331653, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!681 = metadata !{i32 5, i32 23, metadata !286, null}
!682 = metadata !{i32 786688, metadata !683, metadata !"shift_buf", metadata !287, i32 7, metadata !684, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!683 = metadata !{i32 786443, metadata !286, i32 5, i32 34, metadata !287, i32 0} ; [ DW_TAG_lexical_block ]
!684 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !685, metadata !686, i32 0, i32 0} ; [ DW_TAG_array_type ]
!685 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !287, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!686 = metadata !{metadata !687}
!687 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!688 = metadata !{i32 7, i32 12, metadata !683, null}
!689 = metadata !{i32 7, i32 30, metadata !683, null}
!690 = metadata !{i32 8, i32 1, metadata !683, null}
!691 = metadata !{i32 13, i32 2, metadata !692, null}
!692 = metadata !{i32 786443, metadata !693, i32 10, i32 50, metadata !287, i32 2} ; [ DW_TAG_lexical_block ]
!693 = metadata !{i32 786443, metadata !683, i32 10, i32 16, metadata !287, i32 1} ; [ DW_TAG_lexical_block ]
!694 = metadata !{i32 85, i32 9, metadata !592, metadata !695}
!695 = metadata !{i32 15, i32 18, metadata !692, null}
!696 = metadata !{i32 100, i32 9, metadata !697, metadata !698}
!697 = metadata !{i32 786443, metadata !383, i32 98, i32 79, metadata !13, i32 5} ; [ DW_TAG_lexical_block ]
!698 = metadata !{i32 18, i32 4, metadata !699, null}
!699 = metadata !{i32 786443, metadata !692, i32 17, i32 66, metadata !287, i32 3} ; [ DW_TAG_lexical_block ]
!700 = metadata !{i32 100, i32 9, metadata !633, metadata !701}
!701 = metadata !{i32 19, i32 4, metadata !699, null}
!702 = metadata !{i32 10, i32 29, metadata !693, null}
!703 = metadata !{i32 10, i32 51, metadata !692, null}
!704 = metadata !{i32 11, i32 1, metadata !692, null}
!705 = metadata !{i32 14, i32 3, metadata !692, null}
!706 = metadata !{i32 83, i32 56, metadata !179, metadata !695}
!707 = metadata !{i32 84, i32 22, metadata !592, metadata !695}
!708 = metadata !{i32 86, i32 9, metadata !592, metadata !695}
!709 = metadata !{i32 17, i32 3, metadata !692, null}
!710 = metadata !{i32 786689, metadata !383, metadata !"this", metadata !13, i32 16777314, metadata !711, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!711 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !338} ; [ DW_TAG_pointer_type ]
!712 = metadata !{i32 98, i32 48, metadata !383, metadata !698}
!713 = metadata !{i32 786688, metadata !697, metadata !"tmp", metadata !13, i32 99, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!714 = metadata !{i32 99, i32 22, metadata !697, metadata !698}
!715 = metadata !{i32 99, i32 31, metadata !697, metadata !698}
!716 = metadata !{i32 98, i32 48, metadata !280, metadata !701}
!717 = metadata !{i32 786689, metadata !280, metadata !"din", metadata !13, i32 33554530, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!718 = metadata !{i32 98, i32 74, metadata !280, metadata !701}
!719 = metadata !{i32 99, i32 22, metadata !633, metadata !701}
!720 = metadata !{i32 99, i32 31, metadata !633, metadata !701}
!721 = metadata !{i32 20, i32 3, metadata !699, null}
!722 = metadata !{i32 21, i32 2, metadata !692, null}
!723 = metadata !{i32 10, i32 45, metadata !693, null}
!724 = metadata !{i32 786688, metadata !693, metadata !"i", metadata !287, i32 10, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!725 = metadata !{i32 23, i32 1, metadata !683, null}
!726 = metadata !{i32 786689, metadata !388, metadata !"dat_i", metadata !389, i32 16777220, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!727 = metadata !{i32 4, i32 29, metadata !388, null}
!728 = metadata !{i32 786689, metadata !388, metadata !"dat_1_o", metadata !389, i32 33554436, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!729 = metadata !{i32 4, i32 49, metadata !388, null}
!730 = metadata !{i32 786689, metadata !388, metadata !"dat_2_o", metadata !389, i32 50331652, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!731 = metadata !{i32 4, i32 71, metadata !388, null}
!732 = metadata !{i32 786689, metadata !388, metadata !"dat_3_o", metadata !389, i32 67108869, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!733 = metadata !{i32 5, i32 25, metadata !388, null}
!734 = metadata !{i32 786689, metadata !388, metadata !"dat_4_o", metadata !389, i32 83886085, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!735 = metadata !{i32 5, i32 47, metadata !388, null}
!736 = metadata !{i32 85, i32 9, metadata !592, metadata !737}
!737 = metadata !{i32 8, i32 14, metadata !738, null}
!738 = metadata !{i32 786443, metadata !739, i32 6, i32 36, metadata !389, i32 2} ; [ DW_TAG_lexical_block ]
!739 = metadata !{i32 786443, metadata !740, i32 6, i32 2, metadata !389, i32 1} ; [ DW_TAG_lexical_block ]
!740 = metadata !{i32 786443, metadata !388, i32 5, i32 56, metadata !389, i32 0} ; [ DW_TAG_lexical_block ]
!741 = metadata !{i32 100, i32 9, metadata !633, metadata !742}
!742 = metadata !{i32 9, i32 3, metadata !738, null}
!743 = metadata !{i32 100, i32 9, metadata !633, metadata !744}
!744 = metadata !{i32 10, i32 3, metadata !738, null}
!745 = metadata !{i32 100, i32 9, metadata !633, metadata !746}
!746 = metadata !{i32 11, i32 3, metadata !738, null}
!747 = metadata !{i32 100, i32 9, metadata !633, metadata !748}
!748 = metadata !{i32 12, i32 3, metadata !738, null}
!749 = metadata !{i32 6, i32 15, metadata !739, null}
!750 = metadata !{i32 6, i32 37, metadata !738, null}
!751 = metadata !{i32 7, i32 1, metadata !738, null}
!752 = metadata !{i32 83, i32 56, metadata !179, metadata !737}
!753 = metadata !{i32 84, i32 22, metadata !592, metadata !737}
!754 = metadata !{i32 86, i32 9, metadata !592, metadata !737}
!755 = metadata !{i32 786688, metadata !738, metadata !"val", metadata !389, i32 8, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!756 = metadata !{i32 98, i32 48, metadata !280, metadata !742}
!757 = metadata !{i32 99, i32 22, metadata !633, metadata !742}
!758 = metadata !{i32 99, i32 31, metadata !633, metadata !742}
!759 = metadata !{i32 98, i32 48, metadata !280, metadata !744}
!760 = metadata !{i32 99, i32 22, metadata !633, metadata !744}
!761 = metadata !{i32 99, i32 31, metadata !633, metadata !744}
!762 = metadata !{i32 98, i32 48, metadata !280, metadata !746}
!763 = metadata !{i32 99, i32 22, metadata !633, metadata !746}
!764 = metadata !{i32 99, i32 31, metadata !633, metadata !746}
!765 = metadata !{i32 98, i32 48, metadata !280, metadata !748}
!766 = metadata !{i32 99, i32 22, metadata !633, metadata !748}
!767 = metadata !{i32 99, i32 31, metadata !633, metadata !748}
!768 = metadata !{i32 13, i32 2, metadata !738, null}
!769 = metadata !{i32 6, i32 31, metadata !739, null}
!770 = metadata !{i32 786688, metadata !739, metadata !"i", metadata !389, i32 6, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!771 = metadata !{i32 14, i32 1, metadata !740, null}
!772 = metadata !{i32 786689, metadata !5, metadata !"dat_i", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!773 = metadata !{i32 4, i32 32, metadata !5, null}
!774 = metadata !{i32 786689, metadata !5, metadata !"res_o", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!775 = metadata !{i32 4, i32 52, metadata !5, null}
!776 = metadata !{i32 5, i32 1, metadata !777, null}
!777 = metadata !{i32 786443, metadata !5, i32 4, i32 59, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!778 = metadata !{i32 786688, metadata !777, metadata !"dup1", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!779 = metadata !{i32 7, i32 14, metadata !777, null}
!780 = metadata !{i32 786689, metadata !122, metadata !"this", metadata !13, i32 16777253, metadata !781, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!781 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!782 = metadata !{i32 37, i32 43, metadata !122, metadata !783}
!783 = metadata !{i32 7, i32 36, metadata !777, null}
!784 = metadata !{i32 786689, metadata !123, metadata !"this", metadata !13, i32 16777253, metadata !781, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!785 = metadata !{i32 37, i32 43, metadata !123, metadata !786}
!786 = metadata !{i32 38, i32 5, metadata !122, metadata !783}
!787 = metadata !{i32 786688, metadata !777, metadata !"dup2", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!788 = metadata !{i32 7, i32 20, metadata !777, null}
!789 = metadata !{i32 786688, metadata !777, metadata !"dup3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!790 = metadata !{i32 7, i32 26, metadata !777, null}
!791 = metadata !{i32 786688, metadata !777, metadata !"dup4", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!792 = metadata !{i32 7, i32 32, metadata !777, null}
!793 = metadata !{i32 8, i32 2, metadata !777, null}
!794 = metadata !{i32 786688, metadata !777, metadata !"peaks", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!795 = metadata !{i32 10, i32 14, metadata !777, null}
!796 = metadata !{i32 37, i32 43, metadata !122, metadata !797}
!797 = metadata !{i32 10, i32 19, metadata !777, null}
!798 = metadata !{i32 37, i32 43, metadata !123, metadata !799}
!799 = metadata !{i32 38, i32 5, metadata !122, metadata !797}
!800 = metadata !{i32 786688, metadata !777, metadata !"peak_locs", metadata !6, i32 11, metadata !801, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!801 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ]
!802 = metadata !{i32 11, i32 14, metadata !777, null}
!803 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !13, i32 16777253, metadata !804, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!804 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!805 = metadata !{i32 37, i32 43, metadata !70, metadata !806}
!806 = metadata !{i32 11, i32 23, metadata !777, null}
!807 = metadata !{i32 786689, metadata !121, metadata !"this", metadata !13, i32 16777253, metadata !804, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!808 = metadata !{i32 37, i32 43, metadata !121, metadata !809}
!809 = metadata !{i32 38, i32 5, metadata !70, metadata !806}
!810 = metadata !{i32 12, i32 2, metadata !777, null}
!811 = metadata !{i32 786688, metadata !777, metadata !"thres", metadata !6, i32 14, metadata !812, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!812 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!813 = metadata !{i32 14, i32 12, metadata !777, null}
!814 = metadata !{i32 15, i32 2, metadata !777, null}
!815 = metadata !{i32 786688, metadata !777, metadata !"hits", metadata !6, i32 17, metadata !816, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!816 = metadata !{i32 786454, null, metadata !"DTYPE_INT", metadata !6, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ]
!817 = metadata !{i32 17, i32 12, metadata !777, null}
!818 = metadata !{i32 786688, metadata !777, metadata !"sigs", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!819 = metadata !{i32 18, i32 14, metadata !777, null}
!820 = metadata !{i32 37, i32 43, metadata !122, metadata !821}
!821 = metadata !{i32 18, i32 18, metadata !777, null}
!822 = metadata !{i32 37, i32 43, metadata !123, metadata !823}
!823 = metadata !{i32 38, i32 5, metadata !122, metadata !821}
!824 = metadata !{i32 786688, metadata !777, metadata !"sig_locs", metadata !6, i32 19, metadata !801, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!825 = metadata !{i32 19, i32 14, metadata !777, null}
!826 = metadata !{i32 37, i32 43, metadata !70, metadata !827}
!827 = metadata !{i32 19, i32 22, metadata !777, null}
!828 = metadata !{i32 37, i32 43, metadata !121, metadata !829}
!829 = metadata !{i32 38, i32 5, metadata !70, metadata !827}
!830 = metadata !{i32 20, i32 2, metadata !777, null}
!831 = metadata !{i32 22, i32 2, metadata !777, null}
!832 = metadata !{i32 23, i32 1, metadata !777, null}
!833 = metadata !{i32 786689, metadata !443, metadata !"signals", metadata !444, i32 16777219, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!834 = metadata !{i32 3, i32 26, metadata !443, null}
!835 = metadata !{i32 786689, metadata !443, metadata !"threshold", metadata !444, i32 33554435, metadata !493, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!836 = metadata !{i32 3, i32 45, metadata !443, null}
!837 = metadata !{i32 786689, metadata !443, metadata !"hits", metadata !444, i32 50331651, metadata !494, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!838 = metadata !{i32 3, i32 67, metadata !443, null}
!839 = metadata !{i32 786689, metadata !443, metadata !"sig", metadata !444, i32 67108868, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!840 = metadata !{i32 4, i32 17, metadata !443, null}
!841 = metadata !{i32 786689, metadata !443, metadata !"loc", metadata !444, i32 83886084, metadata !496, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!842 = metadata !{i32 4, i32 35, metadata !443, null}
!843 = metadata !{i32 6, i32 2, metadata !844, null}
!844 = metadata !{i32 786443, metadata !443, i32 4, i32 40, metadata !444, i32 0} ; [ DW_TAG_lexical_block ]
!845 = metadata !{i32 85, i32 9, metadata !592, metadata !846}
!846 = metadata !{i32 9, i32 22, metadata !847, null}
!847 = metadata !{i32 786443, metadata !848, i32 7, i32 36, metadata !444, i32 2} ; [ DW_TAG_lexical_block ]
!848 = metadata !{i32 786443, metadata !844, i32 7, i32 2, metadata !444, i32 1} ; [ DW_TAG_lexical_block ]
!849 = metadata !{i32 100, i32 9, metadata !633, metadata !850}
!850 = metadata !{i32 12, i32 4, metadata !851, null}
!851 = metadata !{i32 786443, metadata !847, i32 10, i32 27, metadata !444, i32 3} ; [ DW_TAG_lexical_block ]
!852 = metadata !{i32 100, i32 9, metadata !697, metadata !853}
!853 = metadata !{i32 13, i32 4, metadata !851, null}
!854 = metadata !{i32 7, i32 15, metadata !848, null}
!855 = metadata !{i32 7, i32 37, metadata !847, null}
!856 = metadata !{i32 8, i32 1, metadata !847, null}
!857 = metadata !{i32 83, i32 56, metadata !179, metadata !846}
!858 = metadata !{i32 84, i32 22, metadata !592, metadata !846}
!859 = metadata !{i32 86, i32 9, metadata !592, metadata !846}
!860 = metadata !{i32 786688, metadata !847, metadata !"currAmp", metadata !444, i32 9, metadata !493, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!861 = metadata !{i32 10, i32 3, metadata !847, null}
!862 = metadata !{i32 11, i32 4, metadata !851, null}
!863 = metadata !{i32 98, i32 48, metadata !280, metadata !850}
!864 = metadata !{i32 99, i32 22, metadata !633, metadata !850}
!865 = metadata !{i32 99, i32 31, metadata !633, metadata !850}
!866 = metadata !{i32 98, i32 48, metadata !383, metadata !853}
!867 = metadata !{i32 99, i32 22, metadata !697, metadata !853}
!868 = metadata !{i32 99, i32 31, metadata !697, metadata !853}
!869 = metadata !{i32 14, i32 3, metadata !851, null}
!870 = metadata !{i32 15, i32 2, metadata !847, null}
!871 = metadata !{i32 7, i32 31, metadata !848, null}
!872 = metadata !{i32 786688, metadata !848, metadata !"i", metadata !444, i32 7, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!873 = metadata !{i32 16, i32 1, metadata !844, null}
