; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@sig_locs_OC_V.str = internal unnamed_addr constant [11 x i8] c"sig_locs.V\00" ; [#uses=1 type=[11 x i8]*]
@memset_shift_buf.str = internal unnamed_addr constant [17 x i8] c"memset_shift_buf\00" ; [#uses=1 type=[17 x i8]*]
@hits_channel.str = internal unnamed_addr constant [13 x i8] c"hits_channel\00" ; [#uses=1 type=[13 x i8]*]
@dup4_OC_V.str = internal unnamed_addr constant [7 x i8] c"dup4.V\00" ; [#uses=1 type=[7 x i8]*]
@dup3_OC_V.str = internal unnamed_addr constant [7 x i8] c"dup3.V\00" ; [#uses=1 type=[7 x i8]*]
@dup2_OC_V.str = internal unnamed_addr constant [7 x i8] c"dup2.V\00" ; [#uses=1 type=[7 x i8]*]
@dup1_OC_V.str = internal unnamed_addr constant [7 x i8] c"dup1.V\00" ; [#uses=1 type=[7 x i8]*]
@detect_calls.str = internal unnamed_addr constant [13 x i8] c"detect_calls\00" ; [#uses=1 type=[13 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=22 type=[8 x i8]*]
@.str5 = private unnamed_addr constant [13 x i8] c"Parse_Signal\00", align 1 ; [#uses=3 type=[13 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"Signal_End\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str211 = private unnamed_addr constant [13 x i8] c"Local_Maxima\00", align 1 ; [#uses=3 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"Signal_Begin\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str18 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]
@.str14 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=145 type=[1 x i8]*]

; [#uses=1]
define internal fastcc float @threshold(float* %amplitude.V, float %threshold.read) {
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(float* %amplitude.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %tmp.2 = alloca float, align 4                  ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{float* %amplitude.V}, i64 0, metadata !587), !dbg !592 ; [debug line = 3:29] [debug variable = amplitude.V]
  call void @llvm.dbg.value(metadata !{float %threshold.read}, i64 0, metadata !593), !dbg !594 ; [debug line = 3:51] [debug variable = threshold]
  br label %2, !dbg !595                          ; [debug line = 6:15]

; <label>:2                                       ; preds = %3, %0
  %sum = phi float [ 0.000000e+00, %0 ], [ %sum.1, %3 ] ; [#uses=2 type=float]
  %i = phi i20 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=2 type=i20]
  %exitcond = icmp eq i20 %i, -448576, !dbg !595  ; [#uses=1 type=i1] [debug line = 6:15]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  br i1 %exitcond, label %5, label %3, !dbg !595  ; [debug line = 6:15]

; <label>:3                                       ; preds = %2
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str1), !dbg !598 ; [#uses=1 type=i32] [debug line = 6:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str12) nounwind, !dbg !600 ; [debug line = 7:1]
  call void @llvm.dbg.value(metadata !{float* %amplitude.V}, i64 0, metadata !601), !dbg !605 ; [debug line = 83:56@8:9] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.2}, metadata !607) nounwind, !dbg !609 ; [debug line = 84:22@8:9] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %amplitude.V, float* %tmp.2) nounwind, !dbg !610 ; [debug line = 85:9@8:9]
  call void @llvm.dbg.value(metadata !{float* %tmp.2}, i64 0, metadata !607), !dbg !611 ; [debug line = 86:9@8:9] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.2}, i64 0, metadata !607), !dbg !611 ; [debug line = 86:9@8:9] [debug variable = tmp]
  %tmp.2.load = load float* %tmp.2, align 4, !dbg !611 ; [#uses=1 type=float] [debug line = 86:9@8:9]
  %sum.1 = fadd float %sum, %tmp.2.load, !dbg !606 ; [#uses=1 type=float] [debug line = 8:9]
  call void @llvm.dbg.value(metadata !{float %sum.1}, i64 0, metadata !612), !dbg !606 ; [debug line = 8:9] [debug variable = sum]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str1, i32 %tmp.4), !dbg !613 ; [#uses=0 type=i32] [debug line = 9:2]
  %i.1 = add i20 %i, 1, !dbg !614                 ; [#uses=1 type=i20] [debug line = 6:31]
  call void @llvm.dbg.value(metadata !{i20 %i.1}, i64 0, metadata !615), !dbg !614 ; [debug line = 6:31] [debug variable = i]
  br label %2, !dbg !614                          ; [debug line = 6:31]

; <label>:5                                       ; preds = %2
  %sum.lcssa = phi float [ %sum, %2 ]             ; [#uses=1 type=float]
  %tmp = fdiv float %sum.lcssa, 2.000000e+03, !dbg !616 ; [#uses=1 type=float] [debug line = 10:2]
  %tmp.1 = fmul float %tmp, 3.000000e+02, !dbg !616 ; [#uses=1 type=float] [debug line = 10:2]
  %threshold.write.assign = fmul float %tmp.1, 5.000000e+00, !dbg !616 ; [#uses=1 type=float] [debug line = 10:2]
  call void @llvm.dbg.value(metadata !{float %threshold.write.assign}, i64 0, metadata !617), !dbg !594 ; [debug line = 3:51] [debug variable = threshold]
  ret float %threshold.write.assign, !dbg !618    ; [debug line = 11:1]
}

; [#uses=1]
define internal fastcc void @parse(float* %sig_i.V, i32* nocapture %hits, i32* %loc.V, float* %sig_o.V) {
entry:
  %0 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %loc.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(float* %sig_i.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(float* %sig_o.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %tmp.5 = alloca float, align 4                  ; [#uses=2 type=float*]
  %tmp.4 = alloca float, align 4                  ; [#uses=2 type=float*]
  %tmp.3 = alloca float, align 4                  ; [#uses=1 type=float*]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  %3 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %hits.assign = load i32* %hits, align 4, !dbg !619 ; [#uses=1 type=i32] [debug line = 22:2]
  call void @llvm.dbg.value(metadata !{float* %sig_i.V}, i64 0, metadata !670), !dbg !675 ; [debug line = 3:25@22:2] [debug variable = sig_i.V]
  call void @llvm.dbg.value(metadata !{i32 %hits.assign}, i64 0, metadata !676), !dbg !677 ; [debug line = 4:16@22:2] [debug variable = hits]
  call void @llvm.dbg.value(metadata !{i32* %loc.V}, i64 0, metadata !678), !dbg !683 ; [debug line = 6:19@22:2] [debug variable = loc.V]
  call void @llvm.dbg.value(metadata !{float* %sig_o.V}, i64 0, metadata !684), !dbg !686 ; [debug line = 7:19@22:2] [debug variable = sig_o.V]
  br label %4, !dbg !687                          ; [debug line = 10:29@22:2]

; <label>:4                                       ; preds = %11, %entry
  %read_count.i.i = phi i32 [ 0, %entry ], [ %read_count, %11 ] ; [#uses=3 type=i32]
  %i.i.i = phi i31 [ 0, %entry ], [ %i, %11 ]     ; [#uses=2 type=i31]
  %i.cast.i.i = zext i31 %i.i.i to i32, !dbg !687 ; [#uses=1 type=i32] [debug line = 10:29@22:2]
  %tmp.i.i = icmp slt i32 %i.cast.i.i, %hits.assign, !dbg !687 ; [#uses=1 type=i1] [debug line = 10:29@22:2]
  br i1 %tmp.i.i, label %5, label %.exit, !dbg !687 ; [debug line = 10:29@22:2]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str5) nounwind, !dbg !690 ; [debug line = 10:47@22:2]
  %tmp.14.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @.str5), !dbg !690 ; [#uses=1 type=i32] [debug line = 10:47@22:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 60, i32 10, [1 x i8]* @.str16) nounwind, !dbg !692 ; [debug line = 11:1@22:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str16) nounwind, !dbg !693 ; [debug line = 12:1@22:2]
  call void @llvm.dbg.value(metadata !{i32* %loc.V}, i64 0, metadata !694), !dbg !699 ; [debug line = 83:56@13:23@22:2] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !700) nounwind, !dbg !702 ; [debug line = 84:22@13:23@22:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %loc.V, i32* %tmp) nounwind, !dbg !703 ; [debug line = 85:9@13:23@22:2]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !704), !dbg !705 ; [debug line = 86:9@13:23@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !700), !dbg !705 ; [debug line = 86:9@13:23@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !700), !dbg !705 ; [debug line = 86:9@13:23@22:2] [debug variable = tmp]
  %location = load i32* %tmp, align 4, !dbg !705  ; [#uses=3 type=i32] [debug line = 86:9@13:23@22:2]
  call void @llvm.dbg.value(metadata !{i32 %location}, i64 0, metadata !706), !dbg !698 ; [debug line = 13:23@22:2] [debug variable = location]
  %b = add nsw i32 %location, -1001, !dbg !707    ; [#uses=1 type=i32] [debug line = 15:38@22:2]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !708), !dbg !707 ; [debug line = 15:38@22:2] [debug variable = b]
  %e = add nsw i32 %location, 1000, !dbg !709     ; [#uses=2 type=i32] [debug line = 16:34@22:2]
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !710), !dbg !709 ; [debug line = 16:34@22:2] [debug variable = e]
  %tmp.9.i.i = icmp slt i32 %b, 0, !dbg !711      ; [#uses=1 type=i1] [debug line = 18:3@22:2]
  %tmp..i.i = icmp sgt i32 %e, 599999, !dbg !712  ; [#uses=1 type=i1] [debug line = 19:3@22:2]
  %e.1 = select i1 %tmp..i.i, i32 599999, i32 %e, !dbg !712 ; [#uses=3 type=i32] [debug line = 19:3@22:2]
  call void @llvm.dbg.value(metadata !{i32 %e.1}, i64 0, metadata !710), !dbg !712 ; [debug line = 19:3@22:2] [debug variable = e]
  %.op.i.i = add i32 %location, -1002, !dbg !713  ; [#uses=1 type=i32] [debug line = 21:17@22:2]
  %tmp.1.i.i = select i1 %tmp.9.i.i, i32 -1, i32 %.op.i.i, !dbg !713 ; [#uses=3 type=i32] [debug line = 21:17@22:2]
  %tmp.2.i.i = icmp sgt i32 %read_count.i.i, %tmp.1.i.i ; [#uses=1 type=i1]
  %smax9.i.i = select i1 %tmp.2.i.i, i32 %read_count.i.i, i32 %tmp.1.i.i ; [#uses=2 type=i32]
  br label %6, !dbg !713                          ; [debug line = 21:17@22:2]

; <label>:6                                       ; preds = %7, %5
  %read_count.1.i.i = phi i32 [ %read_count.i.i, %5 ], [ %tmp.3.i.i, %7 ] ; [#uses=2 type=i32]
  %tmp.3.i.i = add nsw i32 %read_count.1.i.i, 1, !dbg !713 ; [#uses=1 type=i32] [debug line = 21:17@22:2]
  %tmp.5.i.i = icmp slt i32 %read_count.1.i.i, %tmp.1.i.i, !dbg !713 ; [#uses=1 type=i1] [debug line = 21:17@22:2]
  br i1 %tmp.5.i.i, label %7, label %8, !dbg !713 ; [debug line = 21:17@22:2]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str2) nounwind, !dbg !714 ; [debug line = 21:43@22:2]
  call void @llvm.dbg.value(metadata !{float* %sig_i.V}, i64 0, metadata !716), !dbg !717 ; [debug line = 83:56@21:43@22:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.3}, metadata !607) nounwind, !dbg !718 ; [debug line = 84:22@21:43@22:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %sig_i.V, float* %tmp.3) nounwind, !dbg !719 ; [debug line = 85:9@21:43@22:2]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !720), !dbg !721 ; [debug line = 86:9@21:43@22:2] [debug variable = tmp]
  br label %6, !dbg !722                          ; [debug line = 21:54@22:2]

; <label>:8                                       ; preds = %6
  %tmp.7.i.i = add i32 %smax9.i.i, 1, !dbg !723   ; [#uses=2 type=i32] [debug line = 22:15@22:2]
  %tmp.8.i.i = icmp sgt i32 %e.1, %tmp.7.i.i      ; [#uses=1 type=i1]
  %smax8.i.i = select i1 %tmp.8.i.i, i32 %e.1, i32 %tmp.7.i.i ; [#uses=1 type=i32]
  %read_count = add i32 %smax8.i.i, 1, !dbg !723  ; [#uses=1 type=i32] [debug line = 22:15@22:2]
  call void @llvm.dbg.value(metadata !{i32 %read_count}, i64 0, metadata !724), !dbg !723 ; [debug line = 22:15@22:2] [debug variable = read_count]
  br label %9, !dbg !723                          ; [debug line = 22:15@22:2]

; <label>:9                                       ; preds = %10, %8
  %read_count.2.in.i.i = phi i32 [ %smax9.i.i, %8 ], [ %read_count.1, %10 ] ; [#uses=1 type=i32]
  %read_count.1 = add i32 %read_count.2.in.i.i, 1, !dbg !713 ; [#uses=2 type=i32] [debug line = 21:17@22:2]
  call void @llvm.dbg.value(metadata !{i32 %read_count.1}, i64 0, metadata !724), !dbg !713 ; [debug line = 21:17@22:2] [debug variable = read_count]
  %tmp.10.i.i = icmp slt i32 %read_count.1, %e.1, !dbg !723 ; [#uses=1 type=i1] [debug line = 22:15@22:2]
  br i1 %tmp.10.i.i, label %10, label %11, !dbg !723 ; [debug line = 22:15@22:2]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str3) nounwind, !dbg !725 ; [debug line = 22:39@22:2]
  call void @llvm.dbg.value(metadata !{float* %sig_i.V}, i64 0, metadata !727), !dbg !729 ; [debug line = 83:56@22:51@22:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.4}, metadata !607) nounwind, !dbg !730 ; [debug line = 84:22@22:51@22:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %sig_i.V, float* %tmp.4) nounwind, !dbg !731 ; [debug line = 85:9@22:51@22:2]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !732), !dbg !733 ; [debug line = 86:9@22:51@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !607), !dbg !733 ; [debug line = 86:9@22:51@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !607), !dbg !733 ; [debug line = 86:9@22:51@22:2] [debug variable = tmp]
  %tmp.6 = load float* %tmp.4, align 4, !dbg !733 ; [#uses=1 type=float] [debug line = 86:9@22:51@22:2]
  call void @llvm.dbg.value(metadata !{float* %sig_o.V}, i64 0, metadata !734), !dbg !738 ; [debug line = 98:48@22:51@22:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.5}, metadata !739) nounwind, !dbg !741 ; [debug line = 99:22@22:51@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.6}, i64 0, metadata !742), !dbg !743 ; [debug line = 99:31@22:51@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.6}, i64 0, metadata !739), !dbg !743 ; [debug line = 99:31@22:51@22:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.6}, i64 0, metadata !739), !dbg !743 ; [debug line = 99:31@22:51@22:2] [debug variable = tmp]
  store float %tmp.6, float* %tmp.5, align 4, !dbg !743 ; [debug line = 99:31@22:51@22:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %sig_o.V, float* %tmp.5) nounwind, !dbg !744 ; [debug line = 100:9@22:51@22:2]
  br label %9, !dbg !745                          ; [debug line = 22:63@22:2]

; <label>:11                                      ; preds = %9
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @.str5, i32 %tmp.14.i.i), !dbg !746 ; [#uses=0 type=i32] [debug line = 24:2@22:2]
  %i = add i31 %i.i.i, 1, !dbg !747               ; [#uses=1 type=i31] [debug line = 10:41@22:2]
  call void @llvm.dbg.value(metadata !{i31 %i}, i64 0, metadata !748), !dbg !747 ; [debug line = 10:41@22:2] [debug variable = i]
  br label %4, !dbg !747                          ; [debug line = 10:41@22:2]

.exit:                                            ; preds = %4
  ret void
}

; [#uses=90]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=24]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @findpeaks(float* %samples.V, float* %amplitude.V, i32* %locations.V) {
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(float* %samples.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %tmp.11 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.9 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %tmp.7 = alloca float, align 4                  ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{float* %samples.V}, i64 0, metadata !749), !dbg !754 ; [debug line = 3:29] [debug variable = samples.V]
  call void @llvm.dbg.value(metadata !{float* %amplitude.V}, i64 0, metadata !755), !dbg !757 ; [debug line = 4:23] [debug variable = amplitude.V]
  call void @llvm.dbg.value(metadata !{i32* %locations.V}, i64 0, metadata !758), !dbg !763 ; [debug line = 5:23] [debug variable = locations.V]
  br label %meminst

meminst:                                          ; preds = %meminst, %0
  %shift_buf.1 = phi float [ undef, %0 ], [ %shift_buf.1.1, %meminst ] ; [#uses=1 type=float]
  %shift_buf = phi float [ undef, %0 ], [ %shift_buf.0.1, %meminst ] ; [#uses=2 type=float]
  %invdar = phi i2 [ 0, %0 ], [ %indvarinc, %meminst ] ; [#uses=4 type=i2]
  %indvarinc = add i2 %invdar, 1, !dbg !764       ; [#uses=1 type=i2] [debug line = 7:30]
  %tmp. = icmp eq i2 %invdar, 0                   ; [#uses=1 type=i1]
  %tmp.1 = select i1 %tmp., float 0.000000e+00, float %shift_buf ; [#uses=1 type=float]
  %tmp.2 = icmp eq i2 %invdar, 1                  ; [#uses=2 type=i1]
  %shift_buf.0.1 = select i1 %tmp.2, float %shift_buf, float %tmp.1 ; [#uses=2 type=float]
  %shift_buf.1.1 = select i1 %tmp.2, float 0.000000e+00, float %shift_buf.1 ; [#uses=2 type=float]
  %tmp = icmp eq i2 %invdar, -2, !dbg !764        ; [#uses=1 type=i1] [debug line = 7:30]
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @memset_shift_buf.str)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp, label %.preheader.preheader, label %meminst, !dbg !764 ; [debug line = 7:30]

.preheader.preheader:                             ; preds = %meminst
  br label %.preheader, !dbg !766                 ; [debug line = 10:29]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %shift_buf.1.2 = phi float [ %"shift_buf[1]", %._crit_edge ], [ %shift_buf.1.1, %.preheader.preheader ] ; [#uses=2 type=float]
  %"shift_buf[1]" = phi float [ %"shift_buf[0]", %._crit_edge ], [ %shift_buf.0.1, %.preheader.preheader ] ; [#uses=6 type=float]
  %tmp.3 = phi i20 [ %i, %._crit_edge ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i20]
  %tmp.5 = zext i20 %tmp.3 to i32, !dbg !766      ; [#uses=1 type=i32] [debug line = 10:29]
  %exitcond = icmp eq i20 %tmp.3, -448576, !dbg !766 ; [#uses=1 type=i1] [debug line = 10:29]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  br i1 %exitcond, label %5, label %2, !dbg !766  ; [debug line = 10:29]

; <label>:2                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @.str211) nounwind, !dbg !768 ; [debug line = 10:51]
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @.str211), !dbg !768 ; [#uses=1 type=i32] [debug line = 10:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str110) nounwind, !dbg !770 ; [debug line = 11:1]
  call void @llvm.dbg.value(metadata !{float %"shift_buf[1]"}, i64 0, metadata !771), !dbg !778 ; [debug line = 14:3] [debug variable = shift_buf[1]]
  call void @llvm.dbg.value(metadata !{float* %samples.V}, i64 0, metadata !601), !dbg !779 ; [debug line = 83:56@15:18] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.7}, metadata !607) nounwind, !dbg !781 ; [debug line = 84:22@15:18] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %samples.V, float* %tmp.7) nounwind, !dbg !782 ; [debug line = 85:9@15:18]
  call void @llvm.dbg.value(metadata !{float* %tmp.7}, i64 0, metadata !607), !dbg !783 ; [debug line = 86:9@15:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.7}, i64 0, metadata !607), !dbg !783 ; [debug line = 86:9@15:18] [debug variable = tmp]
  %"shift_buf[0]" = load float* %tmp.7, align 4, !dbg !783 ; [#uses=3 type=float] [debug line = 86:9@15:18]
  call void @llvm.dbg.value(metadata !{float %"shift_buf[0]"}, i64 0, metadata !784), !dbg !780 ; [debug line = 15:18] [debug variable = shift_buf[0]]
  %shift_buf.1.2_to_int = bitcast float %shift_buf.1.2 to i32 ; [#uses=2 type=i32]
  %tmp.8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %shift_buf.1.2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.10 = trunc i32 %shift_buf.1.2_to_int to i23 ; [#uses=1 type=i23]
  %"shift_buf[1]_to_int" = bitcast float %"shift_buf[1]" to i32 ; [#uses=2 type=i32]
  %tmp.12 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %"shift_buf[1]_to_int", i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.13 = trunc i32 %"shift_buf[1]_to_int" to i23 ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.8, -1                 ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.10, 0                ; [#uses=1 type=i1]
  %tmp.14 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %notlhs2 = icmp ne i8 %tmp.12, -1               ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp.13, 0               ; [#uses=1 type=i1]
  %tmp.15 = or i1 %notrhs3, %notlhs2              ; [#uses=1 type=i1]
  %tmp.16 = and i1 %tmp.14, %tmp.15               ; [#uses=1 type=i1]
  %tmp.17 = fcmp olt float %shift_buf.1.2, %"shift_buf[1]", !dbg !785 ; [#uses=1 type=i1] [debug line = 17:3]
  %tmp.18 = and i1 %tmp.16, %tmp.17, !dbg !785    ; [#uses=1 type=i1] [debug line = 17:3]
  %"shift_buf[1]_to_int1" = bitcast float %"shift_buf[1]" to i32 ; [#uses=2 type=i32]
  %tmp.19 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %"shift_buf[1]_to_int1", i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.20 = trunc i32 %"shift_buf[1]_to_int1" to i23 ; [#uses=1 type=i23]
  %"shift_buf[0]_to_int" = bitcast float %"shift_buf[0]" to i32 ; [#uses=2 type=i32]
  %tmp.21 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %"shift_buf[0]_to_int", i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.22 = trunc i32 %"shift_buf[0]_to_int" to i23 ; [#uses=1 type=i23]
  %notlhs4 = icmp ne i8 %tmp.19, -1               ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp.20, 0               ; [#uses=1 type=i1]
  %tmp.23 = or i1 %notrhs5, %notlhs4              ; [#uses=1 type=i1]
  %notlhs6 = icmp ne i8 %tmp.21, -1               ; [#uses=1 type=i1]
  %notrhs7 = icmp eq i23 %tmp.22, 0               ; [#uses=1 type=i1]
  %tmp.24 = or i1 %notrhs7, %notlhs6              ; [#uses=1 type=i1]
  %tmp.25 = and i1 %tmp.23, %tmp.24               ; [#uses=1 type=i1]
  %tmp.26 = fcmp ogt float %"shift_buf[1]", %"shift_buf[0]", !dbg !785 ; [#uses=1 type=i1] [debug line = 17:3]
  %tmp.27 = and i1 %tmp.25, %tmp.26, !dbg !785    ; [#uses=1 type=i1] [debug line = 17:3]
  %or.cond = and i1 %tmp.18, %tmp.27, !dbg !785   ; [#uses=1 type=i1] [debug line = 17:3]
  br i1 %or.cond, label %3, label %._crit_edge, !dbg !785 ; [debug line = 17:3]

; <label>:3                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{i32* %locations.V}, i64 0, metadata !786), !dbg !790 ; [debug line = 98:48@18:4] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.9}, metadata !793) nounwind, !dbg !795 ; [debug line = 99:22@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i20 %tmp.3}, i64 0, metadata !793), !dbg !796 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.5}, i64 0, metadata !793), !dbg !796 ; [debug line = 99:31@18:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.5}, i64 0, metadata !793), !dbg !796 ; [debug line = 99:31@18:4] [debug variable = tmp]
  store i32 %tmp.5, i32* %tmp.9, align 4, !dbg !796 ; [debug line = 99:31@18:4]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %locations.V, i32* %tmp.9) nounwind, !dbg !797 ; [debug line = 100:9@18:4]
  call void @llvm.dbg.value(metadata !{float* %amplitude.V}, i64 0, metadata !798), !dbg !799 ; [debug line = 98:48@19:4] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.11}, metadata !739) nounwind, !dbg !801 ; [debug line = 99:22@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %"shift_buf[1]"}, i64 0, metadata !739), !dbg !802 ; [debug line = 99:31@19:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %"shift_buf[1]"}, i64 0, metadata !739), !dbg !802 ; [debug line = 99:31@19:4] [debug variable = tmp]
  store float %"shift_buf[1]", float* %tmp.11, align 4, !dbg !802 ; [debug line = 99:31@19:4]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %amplitude.V, float* %tmp.11) nounwind, !dbg !803 ; [debug line = 100:9@19:4]
  br label %._crit_edge, !dbg !804                ; [debug line = 20:3]

._crit_edge:                                      ; preds = %3, %2
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @.str211, i32 %tmp.4), !dbg !805 ; [#uses=0 type=i32] [debug line = 21:2]
  %i = add i20 %tmp.3, 1, !dbg !806               ; [#uses=1 type=i20] [debug line = 10:45]
  call void @llvm.dbg.value(metadata !{i20 %i}, i64 0, metadata !807), !dbg !806 ; [debug line = 10:45] [debug variable = i]
  br label %.preheader, !dbg !806                 ; [debug line = 10:45]

; <label>:5                                       ; preds = %.preheader
  ret void, !dbg !808                             ; [debug line = 23:1]
}

; [#uses=1]
define internal fastcc void @duplicate(float* %dat_i.V, float* %dat_1_o.V, float* %dat_2_o.V, float* %dat_3_o.V, float* %dat_4_o.V) {
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_4_o.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_3_o.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_2_o.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_1_o.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_i.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %tmp.17 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.16 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.15 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.13 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{float* %dat_i.V}, i64 0, metadata !809), !dbg !814 ; [debug line = 4:29] [debug variable = dat_i.V]
  call void @llvm.dbg.value(metadata !{float* %dat_1_o.V}, i64 0, metadata !815), !dbg !817 ; [debug line = 4:49] [debug variable = dat_1_o.V]
  call void @llvm.dbg.value(metadata !{float* %dat_2_o.V}, i64 0, metadata !818), !dbg !820 ; [debug line = 4:71] [debug variable = dat_2_o.V]
  call void @llvm.dbg.value(metadata !{float* %dat_3_o.V}, i64 0, metadata !821), !dbg !823 ; [debug line = 5:25] [debug variable = dat_3_o.V]
  call void @llvm.dbg.value(metadata !{float* %dat_4_o.V}, i64 0, metadata !824), !dbg !826 ; [debug line = 5:47] [debug variable = dat_4_o.V]
  br label %6, !dbg !827                          ; [debug line = 6:15]

; <label>:6                                       ; preds = %7, %0
  %i = phi i20 [ 0, %0 ], [ %i.2, %7 ]            ; [#uses=2 type=i20]
  %exitcond = icmp eq i20 %i, -448576, !dbg !827  ; [#uses=1 type=i1] [debug line = 6:15]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  br i1 %exitcond, label %9, label %7, !dbg !827  ; [debug line = 6:15]

; <label>:7                                       ; preds = %6
  %tmp. = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str14), !dbg !830 ; [#uses=1 type=i32] [debug line = 6:37]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str115) nounwind, !dbg !832 ; [debug line = 7:1]
  call void @llvm.dbg.value(metadata !{float* %dat_i.V}, i64 0, metadata !601), !dbg !833 ; [debug line = 83:56@8:14] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !607) nounwind, !dbg !835 ; [debug line = 84:22@8:14] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %dat_i.V, float* %tmp) nounwind, !dbg !836 ; [debug line = 85:9@8:14]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !607), !dbg !837 ; [debug line = 86:9@8:14] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !607), !dbg !837 ; [debug line = 86:9@8:14] [debug variable = tmp]
  %val = load float* %tmp, align 4, !dbg !837     ; [#uses=4 type=float] [debug line = 86:9@8:14]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !838), !dbg !834 ; [debug line = 8:14] [debug variable = val]
  call void @llvm.dbg.value(metadata !{float* %dat_1_o.V}, i64 0, metadata !798), !dbg !839 ; [debug line = 98:48@9:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.13}, metadata !739) nounwind, !dbg !841 ; [debug line = 99:22@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !739), !dbg !842 ; [debug line = 99:31@9:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !739), !dbg !842 ; [debug line = 99:31@9:3] [debug variable = tmp]
  store float %val, float* %tmp.13, align 4, !dbg !842 ; [debug line = 99:31@9:3]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %dat_1_o.V, float* %tmp.13) nounwind, !dbg !843 ; [debug line = 100:9@9:3]
  call void @llvm.dbg.value(metadata !{float* %dat_2_o.V}, i64 0, metadata !798), !dbg !844 ; [debug line = 98:48@10:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.15}, metadata !739) nounwind, !dbg !846 ; [debug line = 99:22@10:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !739), !dbg !847 ; [debug line = 99:31@10:3] [debug variable = tmp]
  store float %val, float* %tmp.15, align 4, !dbg !847 ; [debug line = 99:31@10:3]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %dat_2_o.V, float* %tmp.15) nounwind, !dbg !848 ; [debug line = 100:9@10:3]
  call void @llvm.dbg.value(metadata !{float* %dat_3_o.V}, i64 0, metadata !798), !dbg !849 ; [debug line = 98:48@11:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.16}, metadata !739) nounwind, !dbg !851 ; [debug line = 99:22@11:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !739), !dbg !852 ; [debug line = 99:31@11:3] [debug variable = tmp]
  store float %val, float* %tmp.16, align 4, !dbg !852 ; [debug line = 99:31@11:3]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %dat_3_o.V, float* %tmp.16) nounwind, !dbg !853 ; [debug line = 100:9@11:3]
  call void @llvm.dbg.value(metadata !{float* %dat_4_o.V}, i64 0, metadata !798), !dbg !854 ; [debug line = 98:48@12:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.17}, metadata !739) nounwind, !dbg !856 ; [debug line = 99:22@12:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %val}, i64 0, metadata !739), !dbg !857 ; [debug line = 99:31@12:3] [debug variable = tmp]
  store float %val, float* %tmp.17, align 4, !dbg !857 ; [debug line = 99:31@12:3]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %dat_4_o.V, float* %tmp.17) nounwind, !dbg !858 ; [debug line = 100:9@12:3]
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str14, i32 %tmp.), !dbg !859 ; [#uses=0 type=i32] [debug line = 13:2]
  %i.2 = add i20 %i, 1, !dbg !860                 ; [#uses=1 type=i20] [debug line = 6:31]
  call void @llvm.dbg.value(metadata !{i20 %i.2}, i64 0, metadata !861), !dbg !860 ; [debug line = 6:31] [debug variable = i]
  br label %6, !dbg !860                          ; [debug line = 6:31]

; <label>:9                                       ; preds = %6
  ret void, !dbg !862                             ; [debug line = 14:1]
}

; [#uses=0]
define void @detect_calls(float* %dat_i.V, float* %res_o.V) {
  %hits_channel = alloca i32, align 4             ; [#uses=5 type=i32*]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @.str) nounwind, !dbg !863 ; [debug line = 5:1]
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(float* %res_o.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dat_i.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %dat_i.V), !map !865
  call void (...)* @_ssdm_op_SpecBitsMap(float* %res_o.V), !map !871
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @detect_calls.str) nounwind
  %dup1.V = alloca float, align 4                 ; [#uses=5 type=float*]
  %3 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup1_OC_V.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 1, float* %dup1.V, float* %dup1.V) ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup1.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %dup2.V = alloca float, align 4                 ; [#uses=5 type=float*]
  %5 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup2_OC_V.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 1, float* %dup2.V, float* %dup2.V) ; [#uses=0 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup2.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %dup3.V = alloca float, align 4                 ; [#uses=5 type=float*]
  %7 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup3_OC_V.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 1, float* %dup3.V, float* %dup3.V) ; [#uses=0 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup3.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %dup4.V = alloca float, align 4                 ; [#uses=5 type=float*]
  %9 = call i32 (...)* @_ssdm_op_SpecChannel([7 x i8]* @dup4_OC_V.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 1, float* %dup4.V, float* %dup4.V) ; [#uses=0 type=i32]
  %10 = call i32 (...)* @_ssdm_op_SpecInterface(float* %dup4.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %peaks.V = alloca float, align 4                ; [#uses=1 type=float*]
  %peak_locs.V = alloca i32, align 4              ; [#uses=1 type=i32*]
  %sig_locs.V = alloca i32, align 4               ; [#uses=5 type=i32*]
  %11 = call i32 (...)* @_ssdm_op_SpecChannel([11 x i8]* @sig_locs_OC_V.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 1, i32* %sig_locs.V, i32* %sig_locs.V) ; [#uses=0 type=i32]
  %12 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %sig_locs.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{float* %dat_i.V}, i64 0, metadata !875), !dbg !880 ; [debug line = 4:32] [debug variable = dat_i.V]
  call void @llvm.dbg.value(metadata !{float* %res_o.V}, i64 0, metadata !881), !dbg !883 ; [debug line = 4:52] [debug variable = res_o.V]
  call void @llvm.dbg.declare(metadata !{float* %dup1.V}, metadata !884), !dbg !886 ; [debug line = 7:14] [debug variable = dup1.V]
  call void @llvm.dbg.declare(metadata !{float* %dup2.V}, metadata !887), !dbg !889 ; [debug line = 7:20] [debug variable = dup2.V]
  call void @llvm.dbg.declare(metadata !{float* %dup3.V}, metadata !890), !dbg !892 ; [debug line = 7:26] [debug variable = dup3.V]
  call void @llvm.dbg.declare(metadata !{float* %dup4.V}, metadata !893), !dbg !895 ; [debug line = 7:32] [debug variable = dup4.V]
  call fastcc void @duplicate(float* %dat_i.V, float* %dup1.V, float* %dup2.V, float* %dup3.V, float* %dup4.V), !dbg !896 ; [debug line = 8:2]
  call void @llvm.dbg.declare(metadata !{float* %peaks.V}, metadata !897), !dbg !899 ; [debug line = 10:14] [debug variable = peaks.V]
  call void @llvm.dbg.declare(metadata !{i32* %peak_locs.V}, metadata !900), !dbg !905 ; [debug line = 11:14] [debug variable = peak_locs.V]
  call fastcc void @findpeaks(float* %dup1.V, float* %peaks.V, i32* %peak_locs.V), !dbg !906 ; [debug line = 12:2]
  %thres = call fastcc float @threshold(float* %dup2.V, float undef), !dbg !907 ; [#uses=1 type=float] [debug line = 15:2]
  call void @llvm.dbg.value(metadata !{float %thres}, i64 0, metadata !908), !dbg !907 ; [debug line = 15:2] [debug variable = thres]
  call void @llvm.dbg.declare(metadata !{i32* %sig_locs.V}, metadata !910), !dbg !912 ; [debug line = 19:14] [debug variable = sig_locs.V]
  %13 = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @hits_channel.str, i32 1, [1 x i8]* @.str, [1 x i8]* @.str, i32 1, i32 0, i32* %hits_channel, i32* %hits_channel) ; [#uses=0 type=i32]
  %14 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits_channel, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call fastcc void @detect(float* %dup3.V, float %thres, i32* %sig_locs.V, i32* %hits_channel)
  call fastcc void @parse(float* %dup4.V, i32* nocapture %hits_channel, i32* %sig_locs.V, float* %res_o.V)
  ret void, !dbg !913                             ; [debug line = 23:1]
}

; [#uses=1]
define internal fastcc void @detect(float* %signals.V, float %threshold, i32* %loc.V, i32* %hits_out) {
entry:
  %0 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %loc.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %tmp.20 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.18 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  %sigs.V = alloca float, align 4                 ; [#uses=1 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %sigs.V}, metadata !914), !dbg !916 ; [debug line = 18:14] [debug variable = sigs.V]
  call void @llvm.dbg.value(metadata !{float* %signals.V}, i64 0, metadata !917), !dbg !973 ; [debug line = 3:26@20:2] [debug variable = signals.V]
  call void @llvm.dbg.value(metadata !{float %threshold}, i64 0, metadata !974), !dbg !975 ; [debug line = 3:45@20:2] [debug variable = threshold]
  call void @llvm.dbg.value(metadata !{float* %sigs.V}, i64 0, metadata !976), !dbg !978 ; [debug line = 4:17@20:2] [debug variable = sig.V]
  call void @llvm.dbg.value(metadata !{i32* %loc.V}, i64 0, metadata !979), !dbg !984 ; [debug line = 4:35@20:2] [debug variable = loc.V]
  br label %2, !dbg !985                          ; [debug line = 7:15@20:2]

; <label>:2                                       ; preds = %._crit_edge.i.i, %entry
  %hits_def_channel = phi i32 [ 0, %entry ], [ %hits_def_channel.1, %._crit_edge.i.i ] ; [#uses=3 type=i32]
  %tmp.40 = phi i20 [ 0, %entry ], [ %i, %._crit_edge.i.i ] ; [#uses=3 type=i20]
  %tmp.6 = zext i20 %tmp.40 to i32, !dbg !985     ; [#uses=1 type=i32] [debug line = 7:15@20:2]
  %exitcond.i.i = icmp eq i20 %tmp.40, -448576, !dbg !985 ; [#uses=1 type=i1] [debug line = 7:15@20:2]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 600000, i64 600000, i64 600000)
  br i1 %exitcond.i.i, label %.exit, label %3, !dbg !985 ; [debug line = 7:15@20:2]

; <label>:3                                       ; preds = %2
  %tmp.29.i.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str18), !dbg !988 ; [#uses=1 type=i32] [debug line = 7:37@20:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str119) nounwind, !dbg !990 ; [debug line = 8:1@20:2]
  call void @llvm.dbg.value(metadata !{float* %signals.V}, i64 0, metadata !991), !dbg !993 ; [debug line = 83:56@9:22@20:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !607) nounwind, !dbg !994 ; [debug line = 84:22@9:22@20:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %signals.V, float* %tmp) nounwind, !dbg !995 ; [debug line = 85:9@9:22@20:2]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !996), !dbg !997 ; [debug line = 86:9@9:22@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !607), !dbg !997 ; [debug line = 86:9@9:22@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !607), !dbg !997 ; [debug line = 86:9@9:22@20:2] [debug variable = tmp]
  %currAmp = load float* %tmp, align 4, !dbg !997 ; [#uses=3 type=float] [debug line = 86:9@9:22@20:2]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !998), !dbg !992 ; [debug line = 9:22@20:2] [debug variable = currAmp]
  %currAmp_to_int = bitcast float %currAmp to i32 ; [#uses=2 type=i32]
  %tmp.30 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %currAmp_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.31 = trunc i32 %currAmp_to_int to i23      ; [#uses=1 type=i23]
  %.read_to_int = bitcast float %threshold to i32 ; [#uses=2 type=i32]
  %tmp.32 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %.read_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.33 = trunc i32 %.read_to_int to i23        ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.30, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.31, 0                ; [#uses=1 type=i1]
  %tmp.34 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %notlhs1 = icmp ne i8 %tmp.32, -1               ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i23 %tmp.33, 0               ; [#uses=1 type=i1]
  %tmp.35 = or i1 %notrhs2, %notlhs1              ; [#uses=1 type=i1]
  %tmp.36 = and i1 %tmp.34, %tmp.35               ; [#uses=1 type=i1]
  %tmp.37 = fcmp ogt float %currAmp, %threshold, !dbg !999 ; [#uses=1 type=i1] [debug line = 10:3@20:2]
  %tmp.38 = and i1 %tmp.36, %tmp.37, !dbg !999    ; [#uses=1 type=i1] [debug line = 10:3@20:2]
  br i1 %tmp.38, label %4, label %._crit_edge.i.i, !dbg !999 ; [debug line = 10:3@20:2]

; <label>:4                                       ; preds = %3
  %tmp.14.i.i = add nsw i32 %hits_def_channel, 1, !dbg !1000 ; [#uses=1 type=i32] [debug line = 11:4@20:2]
  call void @llvm.dbg.value(metadata !{float* %sigs.V}, i64 0, metadata !1002), !dbg !1004 ; [debug line = 98:48@12:4@20:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.18}, metadata !739) nounwind, !dbg !1005 ; [debug line = 99:22@12:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !1006), !dbg !1007 ; [debug line = 99:31@12:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !739), !dbg !1007 ; [debug line = 99:31@12:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %currAmp}, i64 0, metadata !739), !dbg !1007 ; [debug line = 99:31@12:4@20:2] [debug variable = tmp]
  store float %currAmp, float* %tmp.18, align 4, !dbg !1007 ; [debug line = 99:31@12:4@20:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %sigs.V, float* %tmp.18) nounwind, !dbg !1008 ; [debug line = 100:9@12:4@20:2]
  call void @llvm.dbg.value(metadata !{i32* %loc.V}, i64 0, metadata !1009), !dbg !1011 ; [debug line = 98:48@13:4@20:2] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.20}, metadata !793) nounwind, !dbg !1012 ; [debug line = 99:22@13:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i20 %tmp.40}, i64 0, metadata !1013), !dbg !1014 ; [debug line = 99:31@13:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.6}, i64 0, metadata !1013), !dbg !1014 ; [debug line = 99:31@13:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.6}, i64 0, metadata !793), !dbg !1014 ; [debug line = 99:31@13:4@20:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp.6}, i64 0, metadata !793), !dbg !1014 ; [debug line = 99:31@13:4@20:2] [debug variable = tmp]
  store i32 %tmp.6, i32* %tmp.20, align 4, !dbg !1014 ; [debug line = 99:31@13:4@20:2]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %loc.V, i32* %tmp.20) nounwind, !dbg !1015 ; [debug line = 100:9@13:4@20:2]
  br label %._crit_edge.i.i, !dbg !1016           ; [debug line = 14:3@20:2]

._crit_edge.i.i:                                  ; preds = %4, %3
  %hits_def_channel.1 = phi i32 [ %tmp.14.i.i, %4 ], [ %hits_def_channel, %3 ] ; [#uses=1 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str18, i32 %tmp.29.i.i), !dbg !1017 ; [#uses=0 type=i32] [debug line = 15:2@20:2]
  %i = add i20 %tmp.40, 1, !dbg !1018             ; [#uses=1 type=i20] [debug line = 7:31@20:2]
  call void @llvm.dbg.value(metadata !{i20 %i}, i64 0, metadata !1019), !dbg !1018 ; [debug line = 7:31@20:2] [debug variable = i]
  br label %2, !dbg !1018                         ; [debug line = 7:31@20:2]

.exit:                                            ; preds = %2
  %hits_def_channel.lcssa = phi i32 [ %hits_def_channel, %2 ] ; [#uses=1 type=i32]
  %6 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %hits_out, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  store i32 %hits_def_channel.lcssa, i32* %hits_out, align 4
  ret void
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopTripCount(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=22]
declare i32 @_ssdm_op_SpecInterface(...)

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=6]
declare i32 @_ssdm_op_SpecChannel(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=6]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=2]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=7]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=6]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

!llvm.dbg.cu = !{!0, !124, !180, !283, !385, !440}
!opencl.kernels = !{!545, !552, !552, !552, !552, !558, !552, !561, !567, !552, !552, !573, !567, !579, !552, !581, !567, !552, !584, !579, !567, !552}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/toplevel/Signal_Detection/solution1/.autopilot/db/toplevel.pragma.2.cpp", metadata !"C:\5CUsers\5CJack\5CDesktop\5Ccse237d\5CUnderwater-Acoustic-Detection\5Csrc\5Ctoplevel", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !70, metadata !121, metadata !122, metadata !123}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsRN3hls6streamIfEES2_", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 4} ; [ DW_TAG_subprogram ]
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
!127 = metadata !{i32 786478, i32 0, metadata !128, metadata !"threshold", metadata !"threshold", metadata !"_Z9thresholdRN3hls6streamIfEERf", metadata !128, i32 3, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 3} ; [ DW_TAG_subprogram ]
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
!286 = metadata !{i32 786478, i32 0, metadata !287, metadata !"findpeaks", metadata !"findpeaks", metadata !"_Z9findpeaksRN3hls6streamIfEES2_RNS0_IiEE", metadata !287, i32 3, metadata !288, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 5} ; [ DW_TAG_subprogram ]
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
!388 = metadata !{i32 786478, i32 0, metadata !389, metadata !"duplicate", metadata !"duplicate", metadata !"_Z9duplicateRN3hls6streamIfEES2_S2_S2_S2_", metadata !389, i32 4, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 5} ; [ DW_TAG_subprogram ]
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
!443 = metadata !{i32 786478, i32 0, metadata !444, metadata !"detect", metadata !"detect", metadata !"_Z6detectRN3hls6streamIfEEfRiS2_RNS0_IiEE", metadata !444, i32 3, metadata !445, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 4} ; [ DW_TAG_subprogram ]
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
!545 = metadata !{null, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551}
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
!558 = metadata !{null, metadata !546, metadata !547, metadata !559, metadata !549, metadata !560, metadata !551}
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
!573 = metadata !{null, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !551}
!574 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!575 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!576 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &"}
!577 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!578 = metadata !{metadata !"kernel_arg_name", metadata !"samples", metadata !"amplitude", metadata !"locations"}
!579 = metadata !{null, metadata !568, metadata !569, metadata !580, metadata !571, metadata !572, metadata !551}
!580 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!581 = metadata !{null, metadata !562, metadata !563, metadata !582, metadata !565, metadata !583, metadata !551}
!582 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_FLO &"}
!583 = metadata !{metadata !"kernel_arg_name", metadata !"dat_i", metadata !"dat_1_o", metadata !"dat_2_o", metadata !"dat_3_o", metadata !"dat_4_o"}
!584 = metadata !{null, metadata !562, metadata !563, metadata !585, metadata !565, metadata !586, metadata !551}
!585 = metadata !{metadata !"kernel_arg_type", metadata !"DSTREAM_FLO &", metadata !"DTYPE_FLO", metadata !"DTYPE_INT &", metadata !"DSTREAM_FLO &", metadata !"DSTREAM_INT &"}
!586 = metadata !{metadata !"kernel_arg_name", metadata !"signals", metadata !"threshold", metadata !"hits", metadata !"sig", metadata !"loc"}
!587 = metadata !{i32 790531, metadata !588, metadata !"amplitude.V", null, i32 3, metadata !589, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!588 = metadata !{i32 786689, metadata !127, metadata !"amplitude", metadata !128, i32 16777219, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!589 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !590} ; [ DW_TAG_pointer_type ]
!590 = metadata !{i32 786438, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !591, i32 0, null, metadata !68} ; [ DW_TAG_class_field_type ]
!591 = metadata !{metadata !135}
!592 = metadata !{i32 3, i32 29, metadata !127, null}
!593 = metadata !{i32 790532, metadata !127, metadata !"threshold", null, i32 3, metadata !178, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!594 = metadata !{i32 3, i32 51, metadata !127, null}
!595 = metadata !{i32 6, i32 15, metadata !596, null}
!596 = metadata !{i32 786443, metadata !597, i32 6, i32 2, metadata !128, i32 1} ; [ DW_TAG_lexical_block ]
!597 = metadata !{i32 786443, metadata !127, i32 3, i32 61, metadata !128, i32 0} ; [ DW_TAG_lexical_block ]
!598 = metadata !{i32 6, i32 37, metadata !599, null}
!599 = metadata !{i32 786443, metadata !596, i32 6, i32 36, metadata !128, i32 2} ; [ DW_TAG_lexical_block ]
!600 = metadata !{i32 7, i32 1, metadata !599, null}
!601 = metadata !{i32 790531, metadata !602, metadata !"stream<float>.V", null, i32 83, metadata !604, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!602 = metadata !{i32 786689, metadata !179, metadata !"this", metadata !13, i32 16777299, metadata !603, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!603 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ]
!604 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !590} ; [ DW_TAG_pointer_type ]
!605 = metadata !{i32 83, i32 56, metadata !179, metadata !606}
!606 = metadata !{i32 8, i32 9, metadata !599, null}
!607 = metadata !{i32 786688, metadata !608, metadata !"tmp", metadata !13, i32 84, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!608 = metadata !{i32 786443, metadata !179, i32 83, i32 63, metadata !13, i32 3} ; [ DW_TAG_lexical_block ]
!609 = metadata !{i32 84, i32 22, metadata !608, metadata !606}
!610 = metadata !{i32 85, i32 9, metadata !608, metadata !606}
!611 = metadata !{i32 86, i32 9, metadata !608, metadata !606}
!612 = metadata !{i32 786688, metadata !597, metadata !"sum", metadata !128, i32 5, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!613 = metadata !{i32 9, i32 2, metadata !599, null}
!614 = metadata !{i32 6, i32 31, metadata !596, null}
!615 = metadata !{i32 786688, metadata !596, metadata !"i", metadata !128, i32 6, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!616 = metadata !{i32 10, i32 2, metadata !597, null}
!617 = metadata !{i32 790534, metadata !127, metadata !"threshold", null, i32 3, metadata !178, i32 0, i32 0} ; [ DW_TAG_arg_variable_wo ]
!618 = metadata !{i32 11, i32 1, metadata !597, null}
!619 = metadata !{i32 22, i32 2, metadata !620, null}
!620 = metadata !{i32 786443, metadata !621, i32 4, i32 59, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!621 = metadata !{i32 786478, i32 0, metadata !6, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsRN3hls6streamIfEES2_", metadata !6, i32 4, metadata !622, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 4} ; [ DW_TAG_subprogram ]
!622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!623 = metadata !{null, metadata !624, metadata !624}
!624 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !625} ; [ DW_TAG_reference_type ]
!625 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !626} ; [ DW_TAG_typedef ]
!626 = metadata !{i32 786434, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !627, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!627 = metadata !{metadata !628, metadata !629, metadata !633, metadata !636, metadata !641, metadata !645, metadata !648, metadata !651, metadata !655, metadata !656, metadata !657, metadata !660, metadata !663, metadata !664, metadata !667}
!628 = metadata !{i32 786445, metadata !626, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!629 = metadata !{i32 786478, i32 0, metadata !626, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!631 = metadata !{null, metadata !632}
!632 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !626} ; [ DW_TAG_pointer_type ]
!633 = metadata !{i32 786478, i32 0, metadata !626, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !634, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!634 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !635, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!635 = metadata !{null, metadata !632, metadata !26}
!636 = metadata !{i32 786478, i32 0, metadata !626, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !637, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!638 = metadata !{null, metadata !632, metadata !639}
!639 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !640} ; [ DW_TAG_reference_type ]
!640 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !626} ; [ DW_TAG_const_type ]
!641 = metadata !{i32 786478, i32 0, metadata !626, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !13, i32 48, metadata !642, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!642 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !643, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!643 = metadata !{metadata !644, metadata !632, metadata !639}
!644 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !626} ; [ DW_TAG_reference_type ]
!645 = metadata !{i32 786478, i32 0, metadata !626, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !13, i32 55, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!646 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !647, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!647 = metadata !{null, metadata !632, metadata !41}
!648 = metadata !{i32 786478, i32 0, metadata !626, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !13, i32 59, metadata !649, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!649 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !650, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!650 = metadata !{null, metadata !632, metadata !45}
!651 = metadata !{i32 786478, i32 0, metadata !626, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !13, i32 66, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!652 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!653 = metadata !{metadata !50, metadata !654}
!654 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !640} ; [ DW_TAG_pointer_type ]
!655 = metadata !{i32 786478, i32 0, metadata !626, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !13, i32 71, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!656 = metadata !{i32 786478, i32 0, metadata !626, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !13, i32 77, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!657 = metadata !{i32 786478, i32 0, metadata !626, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!659 = metadata !{metadata !16, metadata !632}
!660 = metadata !{i32 786478, i32 0, metadata !626, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !13, i32 90, metadata !661, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !662, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!662 = metadata !{metadata !50, metadata !632, metadata !41}
!663 = metadata !{i32 786478, i32 0, metadata !626, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !649, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!664 = metadata !{i32 786478, i32 0, metadata !626, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !13, i32 104, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!665 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!666 = metadata !{metadata !50, metadata !632, metadata !45}
!667 = metadata !{i32 786478, i32 0, metadata !626, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !13, i32 111, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!669 = metadata !{metadata !67, metadata !632}
!670 = metadata !{i32 790531, metadata !671, metadata !"sig_i.V", null, i32 3, metadata !672, i32 0, metadata !619} ; [ DW_TAG_arg_variable_field ]
!671 = metadata !{i32 786689, metadata !183, metadata !"sig_i", metadata !184, i32 16777219, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!672 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !673} ; [ DW_TAG_pointer_type ]
!673 = metadata !{i32 786438, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !674, i32 0, null, metadata !68} ; [ DW_TAG_class_field_type ]
!674 = metadata !{metadata !191}
!675 = metadata !{i32 3, i32 25, metadata !183, metadata !619}
!676 = metadata !{i32 786689, metadata !183, metadata !"hits", metadata !184, i32 33554436, metadata !233, i32 0, metadata !619} ; [ DW_TAG_arg_variable ]
!677 = metadata !{i32 4, i32 16, metadata !183, metadata !619}
!678 = metadata !{i32 790531, metadata !679, metadata !"loc.V", null, i32 6, metadata !680, i32 0, metadata !619} ; [ DW_TAG_arg_variable_field ]
!679 = metadata !{i32 786689, metadata !183, metadata !"loc", metadata !184, i32 67108870, metadata !234, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!680 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !681} ; [ DW_TAG_pointer_type ]
!681 = metadata !{i32 786438, metadata !12, metadata !"stream<int>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !682, i32 0, null, metadata !119} ; [ DW_TAG_class_field_type ]
!682 = metadata !{metadata !238}
!683 = metadata !{i32 6, i32 19, metadata !183, metadata !619}
!684 = metadata !{i32 790531, metadata !685, metadata !"sig_o.V", null, i32 7, metadata !672, i32 0, metadata !619} ; [ DW_TAG_arg_variable_field ]
!685 = metadata !{i32 786689, metadata !183, metadata !"sig_o", metadata !184, i32 83886087, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!686 = metadata !{i32 7, i32 19, metadata !183, metadata !619}
!687 = metadata !{i32 10, i32 29, metadata !688, metadata !619}
!688 = metadata !{i32 786443, metadata !689, i32 10, i32 16, metadata !184, i32 1} ; [ DW_TAG_lexical_block ]
!689 = metadata !{i32 786443, metadata !183, i32 7, i32 26, metadata !184, i32 0} ; [ DW_TAG_lexical_block ]
!690 = metadata !{i32 10, i32 47, metadata !691, metadata !619}
!691 = metadata !{i32 786443, metadata !688, i32 10, i32 46, metadata !184, i32 2} ; [ DW_TAG_lexical_block ]
!692 = metadata !{i32 11, i32 1, metadata !691, metadata !619}
!693 = metadata !{i32 12, i32 1, metadata !691, metadata !619}
!694 = metadata !{i32 790531, metadata !695, metadata !"stream<int>.V", null, i32 83, metadata !697, i32 0, metadata !698} ; [ DW_TAG_arg_variable_field ]
!695 = metadata !{i32 786689, metadata !282, metadata !"this", metadata !13, i32 16777299, metadata !696, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!696 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ]
!697 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !681} ; [ DW_TAG_pointer_type ]
!698 = metadata !{i32 13, i32 23, metadata !691, metadata !619}
!699 = metadata !{i32 83, i32 56, metadata !282, metadata !698}
!700 = metadata !{i32 786688, metadata !701, metadata !"tmp", metadata !13, i32 84, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!701 = metadata !{i32 786443, metadata !282, i32 83, i32 63, metadata !13, i32 7} ; [ DW_TAG_lexical_block ]
!702 = metadata !{i32 84, i32 22, metadata !701, metadata !698}
!703 = metadata !{i32 85, i32 9, metadata !701, metadata !698}
!704 = metadata !{i32 786688, metadata !701, metadata !"tmp", metadata !13, i32 84, metadata !77, i32 0, metadata !698} ; [ DW_TAG_auto_variable ]
!705 = metadata !{i32 86, i32 9, metadata !701, metadata !698}
!706 = metadata !{i32 786688, metadata !691, metadata !"location", metadata !184, i32 13, metadata !233, i32 0, metadata !619} ; [ DW_TAG_auto_variable ]
!707 = metadata !{i32 15, i32 38, metadata !691, metadata !619}
!708 = metadata !{i32 786688, metadata !691, metadata !"b", metadata !184, i32 15, metadata !233, i32 0, metadata !619} ; [ DW_TAG_auto_variable ]
!709 = metadata !{i32 16, i32 34, metadata !691, metadata !619}
!710 = metadata !{i32 786688, metadata !691, metadata !"e", metadata !184, i32 16, metadata !233, i32 0, metadata !619} ; [ DW_TAG_auto_variable ]
!711 = metadata !{i32 18, i32 3, metadata !691, metadata !619}
!712 = metadata !{i32 19, i32 3, metadata !691, metadata !619}
!713 = metadata !{i32 21, i32 17, metadata !691, metadata !619}
!714 = metadata !{i32 21, i32 43, metadata !715, metadata !619}
!715 = metadata !{i32 786443, metadata !691, i32 21, i32 43, metadata !184, i32 3} ; [ DW_TAG_lexical_block ]
!716 = metadata !{i32 790531, metadata !602, metadata !"stream<float>.V", null, i32 83, metadata !604, i32 0, metadata !714} ; [ DW_TAG_arg_variable_field ]
!717 = metadata !{i32 83, i32 56, metadata !179, metadata !714}
!718 = metadata !{i32 84, i32 22, metadata !608, metadata !714}
!719 = metadata !{i32 85, i32 9, metadata !608, metadata !714}
!720 = metadata !{i32 786688, metadata !608, metadata !"tmp", metadata !13, i32 84, metadata !16, i32 0, metadata !714} ; [ DW_TAG_auto_variable ]
!721 = metadata !{i32 86, i32 9, metadata !608, metadata !714}
!722 = metadata !{i32 21, i32 54, metadata !715, metadata !619}
!723 = metadata !{i32 22, i32 15, metadata !691, metadata !619}
!724 = metadata !{i32 786688, metadata !689, metadata !"read_count", metadata !184, i32 9, metadata !233, i32 0, metadata !619} ; [ DW_TAG_auto_variable ]
!725 = metadata !{i32 22, i32 39, metadata !726, metadata !619}
!726 = metadata !{i32 786443, metadata !691, i32 22, i32 39, metadata !184, i32 4} ; [ DW_TAG_lexical_block ]
!727 = metadata !{i32 790531, metadata !602, metadata !"stream<float>.V", null, i32 83, metadata !604, i32 0, metadata !728} ; [ DW_TAG_arg_variable_field ]
!728 = metadata !{i32 22, i32 51, metadata !726, metadata !619}
!729 = metadata !{i32 83, i32 56, metadata !179, metadata !728}
!730 = metadata !{i32 84, i32 22, metadata !608, metadata !728}
!731 = metadata !{i32 85, i32 9, metadata !608, metadata !728}
!732 = metadata !{i32 786688, metadata !608, metadata !"tmp", metadata !13, i32 84, metadata !16, i32 0, metadata !728} ; [ DW_TAG_auto_variable ]
!733 = metadata !{i32 86, i32 9, metadata !608, metadata !728}
!734 = metadata !{i32 790531, metadata !735, metadata !"stream<float>.V", null, i32 98, metadata !737, i32 0, metadata !728} ; [ DW_TAG_arg_variable_field ]
!735 = metadata !{i32 786689, metadata !280, metadata !"this", metadata !13, i32 16777314, metadata !736, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!736 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ]
!737 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !673} ; [ DW_TAG_pointer_type ]
!738 = metadata !{i32 98, i32 48, metadata !280, metadata !728}
!739 = metadata !{i32 786688, metadata !740, metadata !"tmp", metadata !13, i32 99, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!740 = metadata !{i32 786443, metadata !280, i32 98, i32 79, metadata !13, i32 5} ; [ DW_TAG_lexical_block ]
!741 = metadata !{i32 99, i32 22, metadata !740, metadata !728}
!742 = metadata !{i32 786688, metadata !740, metadata !"tmp", metadata !13, i32 99, metadata !16, i32 0, metadata !728} ; [ DW_TAG_auto_variable ]
!743 = metadata !{i32 99, i32 31, metadata !740, metadata !728}
!744 = metadata !{i32 100, i32 9, metadata !740, metadata !728}
!745 = metadata !{i32 22, i32 63, metadata !726, metadata !619}
!746 = metadata !{i32 24, i32 2, metadata !691, metadata !619}
!747 = metadata !{i32 10, i32 41, metadata !688, metadata !619}
!748 = metadata !{i32 786688, metadata !688, metadata !"i", metadata !184, i32 10, metadata !77, i32 0, metadata !619} ; [ DW_TAG_auto_variable ]
!749 = metadata !{i32 790531, metadata !750, metadata !"samples.V", null, i32 3, metadata !751, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!750 = metadata !{i32 786689, metadata !286, metadata !"samples", metadata !287, i32 16777219, metadata !290, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!751 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !752} ; [ DW_TAG_pointer_type ]
!752 = metadata !{i32 786438, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !753, i32 0, null, metadata !68} ; [ DW_TAG_class_field_type ]
!753 = metadata !{metadata !294}
!754 = metadata !{i32 3, i32 29, metadata !286, null}
!755 = metadata !{i32 790531, metadata !756, metadata !"amplitude.V", null, i32 4, metadata !751, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!756 = metadata !{i32 786689, metadata !286, metadata !"amplitude", metadata !287, i32 33554436, metadata !290, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!757 = metadata !{i32 4, i32 23, metadata !286, null}
!758 = metadata !{i32 790531, metadata !759, metadata !"locations.V", null, i32 5, metadata !760, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!759 = metadata !{i32 786689, metadata !286, metadata !"locations", metadata !287, i32 50331653, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!760 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !761} ; [ DW_TAG_pointer_type ]
!761 = metadata !{i32 786438, metadata !12, metadata !"stream<int>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !762, i32 0, null, metadata !119} ; [ DW_TAG_class_field_type ]
!762 = metadata !{metadata !340}
!763 = metadata !{i32 5, i32 23, metadata !286, null}
!764 = metadata !{i32 7, i32 30, metadata !765, null}
!765 = metadata !{i32 786443, metadata !286, i32 5, i32 34, metadata !287, i32 0} ; [ DW_TAG_lexical_block ]
!766 = metadata !{i32 10, i32 29, metadata !767, null}
!767 = metadata !{i32 786443, metadata !765, i32 10, i32 16, metadata !287, i32 1} ; [ DW_TAG_lexical_block ]
!768 = metadata !{i32 10, i32 51, metadata !769, null}
!769 = metadata !{i32 786443, metadata !767, i32 10, i32 50, metadata !287, i32 2} ; [ DW_TAG_lexical_block ]
!770 = metadata !{i32 11, i32 1, metadata !769, null}
!771 = metadata !{i32 790529, metadata !772, metadata !"shift_buf[1]", null, i32 7, metadata !777, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!772 = metadata !{i32 786688, metadata !765, metadata !"shift_buf", metadata !287, i32 7, metadata !773, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!773 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !774, metadata !775, i32 0, i32 0} ; [ DW_TAG_array_type ]
!774 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !287, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!775 = metadata !{metadata !776}
!776 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!777 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 32, i32 0, i32 0, metadata !774, metadata !775, i32 0, i32 0} ; [ DW_TAG_array_type ]
!778 = metadata !{i32 14, i32 3, metadata !769, null}
!779 = metadata !{i32 83, i32 56, metadata !179, metadata !780}
!780 = metadata !{i32 15, i32 18, metadata !769, null}
!781 = metadata !{i32 84, i32 22, metadata !608, metadata !780}
!782 = metadata !{i32 85, i32 9, metadata !608, metadata !780}
!783 = metadata !{i32 86, i32 9, metadata !608, metadata !780}
!784 = metadata !{i32 790529, metadata !772, metadata !"shift_buf[0]", null, i32 7, metadata !777, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!785 = metadata !{i32 17, i32 3, metadata !769, null}
!786 = metadata !{i32 790531, metadata !787, metadata !"stream<int>.V", null, i32 98, metadata !789, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!787 = metadata !{i32 786689, metadata !383, metadata !"this", metadata !13, i32 16777314, metadata !788, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!788 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !338} ; [ DW_TAG_pointer_type ]
!789 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !761} ; [ DW_TAG_pointer_type ]
!790 = metadata !{i32 98, i32 48, metadata !383, metadata !791}
!791 = metadata !{i32 18, i32 4, metadata !792, null}
!792 = metadata !{i32 786443, metadata !769, i32 17, i32 66, metadata !287, i32 3} ; [ DW_TAG_lexical_block ]
!793 = metadata !{i32 786688, metadata !794, metadata !"tmp", metadata !13, i32 99, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!794 = metadata !{i32 786443, metadata !383, i32 98, i32 79, metadata !13, i32 5} ; [ DW_TAG_lexical_block ]
!795 = metadata !{i32 99, i32 22, metadata !794, metadata !791}
!796 = metadata !{i32 99, i32 31, metadata !794, metadata !791}
!797 = metadata !{i32 100, i32 9, metadata !794, metadata !791}
!798 = metadata !{i32 790531, metadata !735, metadata !"stream<float>.V", null, i32 98, metadata !737, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!799 = metadata !{i32 98, i32 48, metadata !280, metadata !800}
!800 = metadata !{i32 19, i32 4, metadata !792, null}
!801 = metadata !{i32 99, i32 22, metadata !740, metadata !800}
!802 = metadata !{i32 99, i32 31, metadata !740, metadata !800}
!803 = metadata !{i32 100, i32 9, metadata !740, metadata !800}
!804 = metadata !{i32 20, i32 3, metadata !792, null}
!805 = metadata !{i32 21, i32 2, metadata !769, null}
!806 = metadata !{i32 10, i32 45, metadata !767, null}
!807 = metadata !{i32 786688, metadata !767, metadata !"i", metadata !287, i32 10, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!808 = metadata !{i32 23, i32 1, metadata !765, null}
!809 = metadata !{i32 790531, metadata !810, metadata !"dat_i.V", null, i32 4, metadata !811, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!810 = metadata !{i32 786689, metadata !388, metadata !"dat_i", metadata !389, i32 16777220, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!811 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !812} ; [ DW_TAG_pointer_type ]
!812 = metadata !{i32 786438, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !813, i32 0, null, metadata !68} ; [ DW_TAG_class_field_type ]
!813 = metadata !{metadata !396}
!814 = metadata !{i32 4, i32 29, metadata !388, null}
!815 = metadata !{i32 790531, metadata !816, metadata !"dat_1_o.V", null, i32 4, metadata !811, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!816 = metadata !{i32 786689, metadata !388, metadata !"dat_1_o", metadata !389, i32 33554436, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!817 = metadata !{i32 4, i32 49, metadata !388, null}
!818 = metadata !{i32 790531, metadata !819, metadata !"dat_2_o.V", null, i32 4, metadata !811, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!819 = metadata !{i32 786689, metadata !388, metadata !"dat_2_o", metadata !389, i32 50331652, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!820 = metadata !{i32 4, i32 71, metadata !388, null}
!821 = metadata !{i32 790531, metadata !822, metadata !"dat_3_o.V", null, i32 5, metadata !811, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!822 = metadata !{i32 786689, metadata !388, metadata !"dat_3_o", metadata !389, i32 67108869, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!823 = metadata !{i32 5, i32 25, metadata !388, null}
!824 = metadata !{i32 790531, metadata !825, metadata !"dat_4_o.V", null, i32 5, metadata !811, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!825 = metadata !{i32 786689, metadata !388, metadata !"dat_4_o", metadata !389, i32 83886085, metadata !392, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!826 = metadata !{i32 5, i32 47, metadata !388, null}
!827 = metadata !{i32 6, i32 15, metadata !828, null}
!828 = metadata !{i32 786443, metadata !829, i32 6, i32 2, metadata !389, i32 1} ; [ DW_TAG_lexical_block ]
!829 = metadata !{i32 786443, metadata !388, i32 5, i32 56, metadata !389, i32 0} ; [ DW_TAG_lexical_block ]
!830 = metadata !{i32 6, i32 37, metadata !831, null}
!831 = metadata !{i32 786443, metadata !828, i32 6, i32 36, metadata !389, i32 2} ; [ DW_TAG_lexical_block ]
!832 = metadata !{i32 7, i32 1, metadata !831, null}
!833 = metadata !{i32 83, i32 56, metadata !179, metadata !834}
!834 = metadata !{i32 8, i32 14, metadata !831, null}
!835 = metadata !{i32 84, i32 22, metadata !608, metadata !834}
!836 = metadata !{i32 85, i32 9, metadata !608, metadata !834}
!837 = metadata !{i32 86, i32 9, metadata !608, metadata !834}
!838 = metadata !{i32 786688, metadata !831, metadata !"val", metadata !389, i32 8, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!839 = metadata !{i32 98, i32 48, metadata !280, metadata !840}
!840 = metadata !{i32 9, i32 3, metadata !831, null}
!841 = metadata !{i32 99, i32 22, metadata !740, metadata !840}
!842 = metadata !{i32 99, i32 31, metadata !740, metadata !840}
!843 = metadata !{i32 100, i32 9, metadata !740, metadata !840}
!844 = metadata !{i32 98, i32 48, metadata !280, metadata !845}
!845 = metadata !{i32 10, i32 3, metadata !831, null}
!846 = metadata !{i32 99, i32 22, metadata !740, metadata !845}
!847 = metadata !{i32 99, i32 31, metadata !740, metadata !845}
!848 = metadata !{i32 100, i32 9, metadata !740, metadata !845}
!849 = metadata !{i32 98, i32 48, metadata !280, metadata !850}
!850 = metadata !{i32 11, i32 3, metadata !831, null}
!851 = metadata !{i32 99, i32 22, metadata !740, metadata !850}
!852 = metadata !{i32 99, i32 31, metadata !740, metadata !850}
!853 = metadata !{i32 100, i32 9, metadata !740, metadata !850}
!854 = metadata !{i32 98, i32 48, metadata !280, metadata !855}
!855 = metadata !{i32 12, i32 3, metadata !831, null}
!856 = metadata !{i32 99, i32 22, metadata !740, metadata !855}
!857 = metadata !{i32 99, i32 31, metadata !740, metadata !855}
!858 = metadata !{i32 100, i32 9, metadata !740, metadata !855}
!859 = metadata !{i32 13, i32 2, metadata !831, null}
!860 = metadata !{i32 6, i32 31, metadata !828, null}
!861 = metadata !{i32 786688, metadata !828, metadata !"i", metadata !389, i32 6, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!862 = metadata !{i32 14, i32 1, metadata !829, null}
!863 = metadata !{i32 5, i32 1, metadata !864, null}
!864 = metadata !{i32 786443, metadata !5, i32 4, i32 59, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!865 = metadata !{metadata !866}
!866 = metadata !{i32 0, i32 31, metadata !867}
!867 = metadata !{metadata !868}
!868 = metadata !{metadata !"dat_i.V", metadata !869, metadata !"float", i32 0, i32 31}
!869 = metadata !{metadata !870}
!870 = metadata !{i32 0, i32 0, i32 1}
!871 = metadata !{metadata !872}
!872 = metadata !{i32 0, i32 31, metadata !873}
!873 = metadata !{metadata !874}
!874 = metadata !{metadata !"res_o.V", metadata !869, metadata !"float", i32 0, i32 31}
!875 = metadata !{i32 790531, metadata !876, metadata !"dat_i.V", null, i32 4, metadata !877, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!876 = metadata !{i32 786689, metadata !5, metadata !"dat_i", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!877 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !878} ; [ DW_TAG_pointer_type ]
!878 = metadata !{i32 786438, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !879, i32 0, null, metadata !68} ; [ DW_TAG_class_field_type ]
!879 = metadata !{metadata !15}
!880 = metadata !{i32 4, i32 32, metadata !5, null}
!881 = metadata !{i32 790531, metadata !882, metadata !"res_o.V", null, i32 4, metadata !877, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!882 = metadata !{i32 786689, metadata !5, metadata !"res_o", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!883 = metadata !{i32 4, i32 52, metadata !5, null}
!884 = metadata !{i32 790529, metadata !885, metadata !"dup1.V", null, i32 7, metadata !878, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!885 = metadata !{i32 786688, metadata !864, metadata !"dup1", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!886 = metadata !{i32 7, i32 14, metadata !864, null}
!887 = metadata !{i32 790529, metadata !888, metadata !"dup2.V", null, i32 7, metadata !878, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!888 = metadata !{i32 786688, metadata !864, metadata !"dup2", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!889 = metadata !{i32 7, i32 20, metadata !864, null}
!890 = metadata !{i32 790529, metadata !891, metadata !"dup3.V", null, i32 7, metadata !878, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!891 = metadata !{i32 786688, metadata !864, metadata !"dup3", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!892 = metadata !{i32 7, i32 26, metadata !864, null}
!893 = metadata !{i32 790529, metadata !894, metadata !"dup4.V", null, i32 7, metadata !878, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!894 = metadata !{i32 786688, metadata !864, metadata !"dup4", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!895 = metadata !{i32 7, i32 32, metadata !864, null}
!896 = metadata !{i32 8, i32 2, metadata !864, null}
!897 = metadata !{i32 790529, metadata !898, metadata !"peaks.V", null, i32 10, metadata !878, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!898 = metadata !{i32 786688, metadata !864, metadata !"peaks", metadata !6, i32 10, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!899 = metadata !{i32 10, i32 14, metadata !864, null}
!900 = metadata !{i32 790529, metadata !901, metadata !"peak_locs.V", null, i32 11, metadata !903, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!901 = metadata !{i32 786688, metadata !864, metadata !"peak_locs", metadata !6, i32 11, metadata !902, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!902 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ]
!903 = metadata !{i32 786438, metadata !12, metadata !"stream<int>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !904, i32 0, null, metadata !119} ; [ DW_TAG_class_field_type ]
!904 = metadata !{metadata !76}
!905 = metadata !{i32 11, i32 14, metadata !864, null}
!906 = metadata !{i32 12, i32 2, metadata !864, null}
!907 = metadata !{i32 15, i32 2, metadata !864, null}
!908 = metadata !{i32 786688, metadata !864, metadata !"thres", metadata !6, i32 14, metadata !909, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!909 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !6, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!910 = metadata !{i32 790529, metadata !911, metadata !"sig_locs.V", null, i32 19, metadata !903, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!911 = metadata !{i32 786688, metadata !864, metadata !"sig_locs", metadata !6, i32 19, metadata !902, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!912 = metadata !{i32 19, i32 14, metadata !864, null}
!913 = metadata !{i32 23, i32 1, metadata !864, null}
!914 = metadata !{i32 790529, metadata !915, metadata !"sigs.V", null, i32 18, metadata !878, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!915 = metadata !{i32 786688, metadata !864, metadata !"sigs", metadata !6, i32 18, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!916 = metadata !{i32 18, i32 14, metadata !864, null}
!917 = metadata !{i32 790531, metadata !918, metadata !"signals.V", null, i32 3, metadata !919, i32 0, metadata !922} ; [ DW_TAG_arg_variable_field ]
!918 = metadata !{i32 786689, metadata !443, metadata !"signals", metadata !444, i32 16777219, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!919 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !920} ; [ DW_TAG_pointer_type ]
!920 = metadata !{i32 786438, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !921, i32 0, null, metadata !68} ; [ DW_TAG_class_field_type ]
!921 = metadata !{metadata !451}
!922 = metadata !{i32 20, i32 2, metadata !923, null}
!923 = metadata !{i32 786443, metadata !924, i32 4, i32 59, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!924 = metadata !{i32 786478, i32 0, metadata !6, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsRN3hls6streamIfEES2_", metadata !6, i32 4, metadata !925, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 4} ; [ DW_TAG_subprogram ]
!925 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !926, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!926 = metadata !{null, metadata !927, metadata !927}
!927 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !928} ; [ DW_TAG_reference_type ]
!928 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !929} ; [ DW_TAG_typedef ]
!929 = metadata !{i32 786434, metadata !12, metadata !"stream<float>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !930, i32 0, null, metadata !68} ; [ DW_TAG_class_type ]
!930 = metadata !{metadata !931, metadata !932, metadata !936, metadata !939, metadata !944, metadata !948, metadata !951, metadata !954, metadata !958, metadata !959, metadata !960, metadata !963, metadata !966, metadata !967, metadata !970}
!931 = metadata !{i32 786445, metadata !929, metadata !"V", metadata !13, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!932 = metadata !{i32 786478, i32 0, metadata !929, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 37, metadata !933, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 37} ; [ DW_TAG_subprogram ]
!933 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !934, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!934 = metadata !{null, metadata !935}
!935 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !929} ; [ DW_TAG_pointer_type ]
!936 = metadata !{i32 786478, i32 0, metadata !929, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 40, metadata !937, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 40} ; [ DW_TAG_subprogram ]
!937 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !938, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!938 = metadata !{null, metadata !935, metadata !26}
!939 = metadata !{i32 786478, i32 0, metadata !929, metadata !"stream", metadata !"stream", metadata !"", metadata !13, i32 45, metadata !940, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 45} ; [ DW_TAG_subprogram ]
!940 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !941, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!941 = metadata !{null, metadata !935, metadata !942}
!942 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !943} ; [ DW_TAG_reference_type ]
!943 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !929} ; [ DW_TAG_const_type ]
!944 = metadata !{i32 786478, i32 0, metadata !929, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !13, i32 48, metadata !945, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !21, i32 48} ; [ DW_TAG_subprogram ]
!945 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !946, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!946 = metadata !{metadata !947, metadata !935, metadata !942}
!947 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !929} ; [ DW_TAG_reference_type ]
!948 = metadata !{i32 786478, i32 0, metadata !929, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !13, i32 55, metadata !949, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 55} ; [ DW_TAG_subprogram ]
!949 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !950, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!950 = metadata !{null, metadata !935, metadata !41}
!951 = metadata !{i32 786478, i32 0, metadata !929, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !13, i32 59, metadata !952, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 59} ; [ DW_TAG_subprogram ]
!952 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !953, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!953 = metadata !{null, metadata !935, metadata !45}
!954 = metadata !{i32 786478, i32 0, metadata !929, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !13, i32 66, metadata !955, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 66} ; [ DW_TAG_subprogram ]
!955 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !956, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!956 = metadata !{metadata !50, metadata !957}
!957 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !943} ; [ DW_TAG_pointer_type ]
!958 = metadata !{i32 786478, i32 0, metadata !929, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !13, i32 71, metadata !955, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 71} ; [ DW_TAG_subprogram ]
!959 = metadata !{i32 786478, i32 0, metadata !929, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !13, i32 77, metadata !949, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 77} ; [ DW_TAG_subprogram ]
!960 = metadata !{i32 786478, i32 0, metadata !929, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !13, i32 83, metadata !961, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 83} ; [ DW_TAG_subprogram ]
!961 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !962, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!962 = metadata !{metadata !16, metadata !935}
!963 = metadata !{i32 786478, i32 0, metadata !929, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !13, i32 90, metadata !964, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 90} ; [ DW_TAG_subprogram ]
!964 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !965, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!965 = metadata !{metadata !50, metadata !935, metadata !41}
!966 = metadata !{i32 786478, i32 0, metadata !929, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !13, i32 98, metadata !952, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 98} ; [ DW_TAG_subprogram ]
!967 = metadata !{i32 786478, i32 0, metadata !929, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !13, i32 104, metadata !968, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 104} ; [ DW_TAG_subprogram ]
!968 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !969, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!969 = metadata !{metadata !50, metadata !935, metadata !45}
!970 = metadata !{i32 786478, i32 0, metadata !929, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !13, i32 111, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !21, i32 111} ; [ DW_TAG_subprogram ]
!971 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !972, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!972 = metadata !{metadata !67, metadata !935}
!973 = metadata !{i32 3, i32 26, metadata !443, metadata !922}
!974 = metadata !{i32 786689, metadata !443, metadata !"threshold", metadata !444, i32 33554435, metadata !493, i32 0, metadata !922} ; [ DW_TAG_arg_variable ]
!975 = metadata !{i32 3, i32 45, metadata !443, metadata !922}
!976 = metadata !{i32 790531, metadata !977, metadata !"sig.V", null, i32 4, metadata !919, i32 0, metadata !922} ; [ DW_TAG_arg_variable_field ]
!977 = metadata !{i32 786689, metadata !443, metadata !"sig", metadata !444, i32 67108868, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!978 = metadata !{i32 4, i32 17, metadata !443, metadata !922}
!979 = metadata !{i32 790531, metadata !980, metadata !"loc.V", null, i32 4, metadata !981, i32 0, metadata !922} ; [ DW_TAG_arg_variable_field ]
!980 = metadata !{i32 786689, metadata !443, metadata !"loc", metadata !444, i32 83886084, metadata !496, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!981 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !982} ; [ DW_TAG_pointer_type ]
!982 = metadata !{i32 786438, metadata !12, metadata !"stream<int>", metadata !13, i32 33, i64 32, i64 32, i32 0, i32 0, null, metadata !983, i32 0, null, metadata !119} ; [ DW_TAG_class_field_type ]
!983 = metadata !{metadata !500}
!984 = metadata !{i32 4, i32 35, metadata !443, metadata !922}
!985 = metadata !{i32 7, i32 15, metadata !986, metadata !922}
!986 = metadata !{i32 786443, metadata !987, i32 7, i32 2, metadata !444, i32 1} ; [ DW_TAG_lexical_block ]
!987 = metadata !{i32 786443, metadata !443, i32 4, i32 40, metadata !444, i32 0} ; [ DW_TAG_lexical_block ]
!988 = metadata !{i32 7, i32 37, metadata !989, metadata !922}
!989 = metadata !{i32 786443, metadata !986, i32 7, i32 36, metadata !444, i32 2} ; [ DW_TAG_lexical_block ]
!990 = metadata !{i32 8, i32 1, metadata !989, metadata !922}
!991 = metadata !{i32 790531, metadata !602, metadata !"stream<float>.V", null, i32 83, metadata !604, i32 0, metadata !992} ; [ DW_TAG_arg_variable_field ]
!992 = metadata !{i32 9, i32 22, metadata !989, metadata !922}
!993 = metadata !{i32 83, i32 56, metadata !179, metadata !992}
!994 = metadata !{i32 84, i32 22, metadata !608, metadata !992}
!995 = metadata !{i32 85, i32 9, metadata !608, metadata !992}
!996 = metadata !{i32 786688, metadata !608, metadata !"tmp", metadata !13, i32 84, metadata !16, i32 0, metadata !992} ; [ DW_TAG_auto_variable ]
!997 = metadata !{i32 86, i32 9, metadata !608, metadata !992}
!998 = metadata !{i32 786688, metadata !989, metadata !"currAmp", metadata !444, i32 9, metadata !493, i32 0, metadata !922} ; [ DW_TAG_auto_variable ]
!999 = metadata !{i32 10, i32 3, metadata !989, metadata !922}
!1000 = metadata !{i32 11, i32 4, metadata !1001, metadata !922}
!1001 = metadata !{i32 786443, metadata !989, i32 10, i32 27, metadata !444, i32 3} ; [ DW_TAG_lexical_block ]
!1002 = metadata !{i32 790531, metadata !735, metadata !"stream<float>.V", null, i32 98, metadata !737, i32 0, metadata !1003} ; [ DW_TAG_arg_variable_field ]
!1003 = metadata !{i32 12, i32 4, metadata !1001, metadata !922}
!1004 = metadata !{i32 98, i32 48, metadata !280, metadata !1003}
!1005 = metadata !{i32 99, i32 22, metadata !740, metadata !1003}
!1006 = metadata !{i32 786688, metadata !740, metadata !"tmp", metadata !13, i32 99, metadata !16, i32 0, metadata !1003} ; [ DW_TAG_auto_variable ]
!1007 = metadata !{i32 99, i32 31, metadata !740, metadata !1003}
!1008 = metadata !{i32 100, i32 9, metadata !740, metadata !1003}
!1009 = metadata !{i32 790531, metadata !787, metadata !"stream<int>.V", null, i32 98, metadata !789, i32 0, metadata !1010} ; [ DW_TAG_arg_variable_field ]
!1010 = metadata !{i32 13, i32 4, metadata !1001, metadata !922}
!1011 = metadata !{i32 98, i32 48, metadata !383, metadata !1010}
!1012 = metadata !{i32 99, i32 22, metadata !794, metadata !1010}
!1013 = metadata !{i32 786688, metadata !794, metadata !"tmp", metadata !13, i32 99, metadata !77, i32 0, metadata !1010} ; [ DW_TAG_auto_variable ]
!1014 = metadata !{i32 99, i32 31, metadata !794, metadata !1010}
!1015 = metadata !{i32 100, i32 9, metadata !794, metadata !1010}
!1016 = metadata !{i32 14, i32 3, metadata !1001, metadata !922}
!1017 = metadata !{i32 15, i32 2, metadata !989, metadata !922}
!1018 = metadata !{i32 7, i32 31, metadata !986, metadata !922}
!1019 = metadata !{i32 786688, metadata !986, metadata !"i", metadata !444, i32 7, metadata !77, i32 0, metadata !922} ; [ DW_TAG_auto_variable ]
