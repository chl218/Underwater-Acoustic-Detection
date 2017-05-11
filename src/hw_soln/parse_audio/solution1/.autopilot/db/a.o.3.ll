; ModuleID = 'C:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln/parse_audio/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@parse_audio_str = internal unnamed_addr constant [12 x i8] c"parse_audio\00" ; [#uses=1 type=[12 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=10 type=[8 x i8]*]
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str19 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=2 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]

; [#uses=1]
define internal fastcc void @parse_audio_parse_signal([10000 x float]* nocapture %signal, [12 x i32]* nocapture %locs, float* %pairs_amplitude_V, i32* %pairs_duration_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %pairs_amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, [1 x i8]* @p_str29) ; [#uses=0 type=i32]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %pairs_duration_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str31, [1 x i8]* @p_str32, [1 x i8]* @p_str33) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{[10000 x float]* %signal}, i64 0, metadata !7), !dbg !137 ; [debug line = 24:29] [debug variable = signal]
  call void @llvm.dbg.value(metadata !{[12 x i32]* %locs}, i64 0, metadata !138), !dbg !142 ; [debug line = 26:17] [debug variable = locs]
  call void @llvm.dbg.value(metadata !{float* %pairs_amplitude_V}, i64 0, metadata !143), !dbg !150 ; [debug line = 27:28] [debug variable = pairs.amplitude.V]
  call void @llvm.dbg.value(metadata !{i32* %pairs_duration_V}, i64 0, metadata !151), !dbg !150 ; [debug line = 27:28] [debug variable = pairs.duration.V]
  br label %.loopexit, !dbg !157                  ; [debug line = 30:15]

.loopexit:                                        ; preds = %.preheader, %0
  %j = phi i4 [ 0, %0 ], [ %i, %.preheader ]      ; [#uses=4 type=i4]
  %exitcond5 = icmp eq i4 %j, -4, !dbg !157       ; [#uses=1 type=i1] [debug line = 30:15]
  %i = add i4 %j, 1, !dbg !160                    ; [#uses=1 type=i4] [debug line = 30:27]
  call void @llvm.dbg.value(metadata !{i4 %i}, i64 0, metadata !161), !dbg !160 ; [debug line = 30:27] [debug variable = i]
  br i1 %exitcond5, label %5, label %.preheader.preheader, !dbg !157 ; [debug line = 30:15]

.preheader.preheader:                             ; preds = %.loopexit
  %j_cast1 = zext i4 %j to i32, !dbg !162         ; [#uses=1 type=i32] [debug line = 31:16]
  call void @llvm.dbg.value(metadata !{i4 %j}, i64 0, metadata !165), !dbg !162 ; [debug line = 31:16] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  %tmp = zext i4 %j to i64, !dbg !166             ; [#uses=1 type=i64] [debug line = 33:36]
  %locs_addr = getelementptr [12 x i32]* %locs, i64 0, i64 %tmp, !dbg !166 ; [#uses=1 type=i32*] [debug line = 33:36]
  br label %.preheader, !dbg !162                 ; [debug line = 31:16]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j1 = phi i32 [ %j_1, %4 ], [ %j_cast1, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j1, 12, !dbg !162      ; [#uses=1 type=i1] [debug line = 31:16]
  br i1 %exitcond, label %.loopexit, label %1, !dbg !162 ; [debug line = 31:16]

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 12, i64 0)
  %b = load i32* %locs_addr, align 4, !dbg !166   ; [#uses=4 type=i32] [debug line = 33:36]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !169), !dbg !166 ; [debug line = 33:36] [debug variable = b]
  %tmp_2 = sext i32 %j1 to i64, !dbg !166         ; [#uses=1 type=i64] [debug line = 33:36]
  %locs_addr_1 = getelementptr [12 x i32]* %locs, i64 0, i64 %tmp_2, !dbg !166 ; [#uses=1 type=i32*] [debug line = 33:36]
  %e = load i32* %locs_addr_1, align 4, !dbg !166 ; [#uses=3 type=i32] [debug line = 33:36]
  call void @llvm.dbg.value(metadata !{i32 %e}, i64 0, metadata !170), !dbg !166 ; [debug line = 33:36] [debug variable = e]
  %tmp_3 = icmp sgt i32 %b, %e                    ; [#uses=1 type=i1]
  %smax = select i1 %tmp_3, i32 %b, i32 %e        ; [#uses=1 type=i32]
  %tmp_4 = sub i32 1, %b, !dbg !166               ; [#uses=1 type=i32] [debug line = 33:36]
  %duration = add i32 %tmp_4, %smax, !dbg !171    ; [#uses=1 type=i32] [debug line = 38:5]
  call void @llvm.dbg.value(metadata !{i32 %duration}, i64 0, metadata !173), !dbg !171 ; [debug line = 38:5] [debug variable = duration]
  br label %2, !dbg !166                          ; [debug line = 33:36]

; <label>:2                                       ; preds = %3, %1
  %b1 = phi i32 [ %b, %1 ], [ %b_1, %3 ]          ; [#uses=3 type=i32]
  %tmp_6 = icmp slt i32 %b1, %e, !dbg !166        ; [#uses=1 type=i1] [debug line = 33:36]
  br i1 %tmp_6, label %3, label %4, !dbg !166     ; [debug line = 33:36]

; <label>:3                                       ; preds = %2
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3), !dbg !174 ; [#uses=1 type=i32] [debug line = 33:51]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !175 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 144, i32 72, [1 x i8]* @p_str1) nounwind, !dbg !176 ; [debug line = 35:1]
  %tmp_7 = sext i32 %b1 to i64, !dbg !177         ; [#uses=1 type=i64] [debug line = 37:2]
  %signal_addr = getelementptr [10000 x float]* %signal, i64 0, i64 %tmp_7, !dbg !177 ; [#uses=1 type=float*] [debug line = 37:2]
  call void @llvm.dbg.value(metadata !{float* %signal_addr}, i64 0, metadata !178), !dbg !180 ; [debug line = 144:74@37:2] [debug variable = din]
  %tmp_1 = load float* %signal_addr, align 4, !dbg !181 ; [#uses=1 type=float] [debug line = 145:31@37:2]
  call void @llvm.dbg.value(metadata !{float %tmp_1}, i64 0, metadata !183), !dbg !181 ; [debug line = 145:31@37:2] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %pairs_amplitude_V, float %tmp_1), !dbg !184 ; [debug line = 146:9@37:2]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_9), !dbg !185 ; [#uses=0 type=i32] [debug line = 39:4]
  %b_1 = add nsw i32 %b1, 1, !dbg !186            ; [#uses=1 type=i32] [debug line = 33:45]
  call void @llvm.dbg.value(metadata !{i32 %b_1}, i64 0, metadata !169), !dbg !186 ; [debug line = 33:45] [debug variable = b]
  br label %2, !dbg !186                          ; [debug line = 33:45]

; <label>:4                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{i32 %duration}, i64 0, metadata !187), !dbg !190 ; [debug line = 145:31@40:4] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %pairs_duration_V, i32 %duration), !dbg !192 ; [debug line = 146:9@40:4]
  %j_1 = add nsw i32 %j1, 1, !dbg !193            ; [#uses=1 type=i32] [debug line = 31:28]
  call void @llvm.dbg.value(metadata !{i32 %j_1}, i64 0, metadata !165), !dbg !193 ; [debug line = 31:28] [debug variable = j]
  br label %.preheader, !dbg !193                 ; [debug line = 31:28]

; <label>:5                                       ; preds = %.loopexit
  ret void, !dbg !194                             ; [debug line = 43:1]
}

; [#uses=0]
define void @parse_audio(float* %signals_V, float* %hits_V, i32* %locs_V, float* %pairs_amplitude_V, i32* %pairs_duration_V) {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind, !dbg !195 ; [debug line = 49:1]
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %pairs_duration_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str31, [1 x i8]* @p_str32, [1 x i8]* @p_str33) ; [#uses=0 type=i32]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(float* %pairs_amplitude_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, [1 x i8]* @p_str29) ; [#uses=0 type=i32]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %locs_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str22, [1 x i8]* @p_str23, [1 x i8]* @p_str24, [1 x i8]* @p_str25) ; [#uses=0 type=i32]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(float* %hits_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str18, [1 x i8]* @p_str19, [1 x i8]* @p_str20, [1 x i8]* @p_str21) ; [#uses=0 type=i32]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str15, [1 x i8]* @p_str16, [1 x i8]* @p_str17) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %signals_V), !map !202
  call void (...)* @_ssdm_op_SpecBitsMap(float* %hits_V), !map !206
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %locs_V), !map !210
  call void (...)* @_ssdm_op_SpecBitsMap(float* %pairs_amplitude_V), !map !214
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %pairs_duration_V), !map !218
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @parse_audio_str) nounwind
  %sig_buf = alloca [10000 x float], align 16     ; [#uses=2 type=[10000 x float]*]
  %loc_buf = alloca [12 x i32], align 16          ; [#uses=2 type=[12 x i32]*]
  call void @llvm.dbg.value(metadata !{float* %signals_V}, i64 0, metadata !222), !dbg !225 ; [debug line = 45:31] [debug variable = signals.V]
  call void @llvm.dbg.value(metadata !{float* %hits_V}, i64 0, metadata !226), !dbg !228 ; [debug line = 46:19] [debug variable = hits.V]
  call void @llvm.dbg.value(metadata !{i32* %locs_V}, i64 0, metadata !229), !dbg !232 ; [debug line = 47:22] [debug variable = locs.V]
  call void @llvm.dbg.value(metadata !{float* %pairs_amplitude_V}, i64 0, metadata !233), !dbg !235 ; [debug line = 48:33] [debug variable = pairs.amplitude.V]
  call void @llvm.dbg.value(metadata !{i32* %pairs_duration_V}, i64 0, metadata !236), !dbg !235 ; [debug line = 48:33] [debug variable = pairs.duration.V]
  call void @llvm.dbg.declare(metadata !{[10000 x float]* %sig_buf}, metadata !237), !dbg !239 ; [debug line = 51:12] [debug variable = sig_buf]
  call void @llvm.dbg.declare(metadata !{[12 x i32]* %loc_buf}, metadata !240), !dbg !242 ; [debug line = 53:12] [debug variable = loc_buf]
  call fastcc void @parse_audio_buffer_signal(float* %signals_V, [10000 x float]* %sig_buf), !dbg !243 ; [debug line = 55:2]
  call fastcc void @parse_audio_buffer_target(float* %hits_V, i32* %locs_V, [12 x i32]* %loc_buf), !dbg !244 ; [debug line = 56:2]
  call fastcc void @parse_audio_parse_signal([10000 x float]* %sig_buf, [12 x i32]* %loc_buf, float* %pairs_amplitude_V, i32* %pairs_duration_V), !dbg !245 ; [debug line = 57:2]
  ret void, !dbg !246                             ; [debug line = 59:1]
}

; [#uses=32]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @parse_audio_buffer_target(float* %hits_V, i32* %locs_V, [12 x i32]* nocapture %loc_buf) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %hits_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str18, [1 x i8]* @p_str19, [1 x i8]* @p_str20, [1 x i8]* @p_str21) ; [#uses=0 type=i32]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %locs_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str22, [1 x i8]* @p_str23, [1 x i8]* @p_str24, [1 x i8]* @p_str25) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{float* %hits_V}, i64 0, metadata !247), !dbg !252 ; [debug line = 12:33] [debug variable = hits.V]
  call void @llvm.dbg.value(metadata !{i32* %locs_V}, i64 0, metadata !253), !dbg !255 ; [debug line = 13:21] [debug variable = locs.V]
  call void @llvm.dbg.value(metadata !{[12 x i32]* %loc_buf}, i64 0, metadata !256), !dbg !257 ; [debug line = 15:18] [debug variable = loc_buf]
  br label %1, !dbg !258                          ; [debug line = 17:15]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -4, !dbg !258        ; [#uses=1 type=i1] [debug line = 17:15]
  %i_1 = add i4 %i, 1, !dbg !261                  ; [#uses=1 type=i4] [debug line = 17:27]
  br i1 %exitcond, label %3, label %2, !dbg !258  ; [debug line = 17:15]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2), !dbg !262 ; [#uses=1 type=i32] [debug line = 17:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !264 ; [debug line = 18:1]
  call void @llvm.dbg.value(metadata !{float* %hits_V}, i64 0, metadata !265), !dbg !270 ; [debug line = 129:56@19:15] [debug variable = stream<float>.V]
  %tmp_0 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %hits_V), !dbg !272 ; [#uses=0 type=float] [debug line = 131:9@19:15]
  call void @llvm.dbg.value(metadata !{float %tmp_0}, i64 0, metadata !274), !dbg !272 ; [debug line = 131:9@19:15] [debug variable = tmp]
  %tmp_s = zext i4 %i to i64, !dbg !271           ; [#uses=1 type=i64] [debug line = 19:15]
  call void @llvm.dbg.value(metadata !{i32* %locs_V}, i64 0, metadata !275), !dbg !280 ; [debug line = 129:56@20:16] [debug variable = stream<int>.V]
  %tmp = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %locs_V), !dbg !282 ; [#uses=1 type=i32] [debug line = 131:9@20:16]
  call void @llvm.dbg.value(metadata !{i32 %tmp}, i64 0, metadata !284), !dbg !282 ; [debug line = 131:9@20:16] [debug variable = tmp]
  %loc_buf_addr = getelementptr [12 x i32]* %loc_buf, i64 0, i64 %tmp_s, !dbg !281 ; [#uses=1 type=i32*] [debug line = 20:16]
  store i32 %tmp, i32* %loc_buf_addr, align 4, !dbg !281 ; [debug line = 20:16]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_1), !dbg !285 ; [#uses=0 type=i32] [debug line = 21:2]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !286), !dbg !261 ; [debug line = 17:27] [debug variable = i]
  br label %1, !dbg !261                          ; [debug line = 17:27]

; <label>:3                                       ; preds = %1
  ret void, !dbg !287                             ; [debug line = 22:1]
}

; [#uses=1]
define internal fastcc void @parse_audio_buffer_signal(float* %signals_V, [10000 x float]* nocapture %amp_buf) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(float* %signals_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str14, [1 x i8]* @p_str15, [1 x i8]* @p_str16, [1 x i8]* @p_str17) ; [#uses=0 type=i32]
  call void @llvm.dbg.value(metadata !{float* %signals_V}, i64 0, metadata !288), !dbg !293 ; [debug line = 4:33] [debug variable = signals.V]
  call void @llvm.dbg.value(metadata !{[10000 x float]* %amp_buf}, i64 0, metadata !294), !dbg !295 ; [debug line = 4:52] [debug variable = amp_buf]
  br label %1, !dbg !296                          ; [debug line = 6:15]

; <label>:1                                       ; preds = %2, %0
  %i = phi i14 [ 0, %0 ], [ %i_2, %2 ]            ; [#uses=3 type=i14]
  %tmp = icmp ult i14 %i, -6384, !dbg !296        ; [#uses=1 type=i1] [debug line = 6:15]
  br i1 %tmp, label %2, label %3, !dbg !296       ; [debug line = 6:15]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 5000, i64 5000, i64 5000)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str), !dbg !299 ; [#uses=1 type=i32] [debug line = 6:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !301 ; [debug line = 7:1]
  call void @llvm.dbg.value(metadata !{float* %signals_V}, i64 0, metadata !265), !dbg !302 ; [debug line = 129:56@8:17] [debug variable = stream<float>.V]
  %tmp_6 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %signals_V), !dbg !304 ; [#uses=1 type=float] [debug line = 131:9@8:17]
  call void @llvm.dbg.value(metadata !{float %tmp_6}, i64 0, metadata !274), !dbg !304 ; [debug line = 131:9@8:17] [debug variable = tmp]
  %tmp_s = zext i14 %i to i64, !dbg !303          ; [#uses=1 type=i64] [debug line = 8:17]
  %amp_buf_addr = getelementptr [10000 x float]* %amp_buf, i64 0, i64 %tmp_s, !dbg !303 ; [#uses=1 type=float*] [debug line = 8:17]
  store float %tmp_6, float* %amp_buf_addr, align 4, !dbg !303 ; [debug line = 8:17]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_2), !dbg !305 ; [#uses=0 type=i32] [debug line = 9:2]
  %i_2 = add i14 %i, 2, !dbg !306                 ; [#uses=1 type=i14] [debug line = 6:29]
  call void @llvm.dbg.value(metadata !{i14 %i_2}, i64 0, metadata !307), !dbg !306 ; [debug line = 6:29] [debug variable = i]
  br label %1, !dbg !306                          ; [debug line = 6:29]

; <label>:3                                       ; preds = %1
  ret void, !dbg !308                             ; [debug line = 10:1]
}

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

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

; [#uses=10]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=2]
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
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
declare float @_autotb_FifoWrite_float(float*, float)

; [#uses=1]
declare i32 @_autotb_FifoRead_i32(i32*)

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
!7 = metadata !{i32 786689, metadata !8, metadata !"signal", null, i32 24, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!8 = metadata !{i32 786478, i32 0, metadata !9, metadata !"parse_signal", metadata !"parse_signal", metadata !"_Z12parse_signalPfS_PiR19DSTREAM_STRUCT_PAIR", metadata !9, i32 24, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 27} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 786473, metadata !"parse_audio.cpp", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!10 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{null, metadata !12, metadata !12, metadata !15, metadata !18}
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786454, null, metadata !"DTYPE_FLO", metadata !9, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!14 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!16 = metadata !{i32 786454, null, metadata !"DTYPE_INT", metadata !9, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_reference_type ]
!19 = metadata !{i32 786454, null, metadata !"DSTREAM_STRUCT_PAIR", metadata !9, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 786434, null, metadata !"", metadata !21, i32 13, i64 64, i64 32, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_class_type ]
!21 = metadata !{i32 786473, metadata !"./parse_audio.h", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!22 = metadata !{metadata !23, metadata !83}
!23 = metadata !{i32 786445, metadata !20, metadata !"amplitude", metadata !21, i32 14, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 786454, null, metadata !"DSTREAM_FLO", metadata !9, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 786434, metadata !26, metadata !"stream<float>", metadata !27, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !28, i32 0, null, metadata !81} ; [ DW_TAG_class_type ]
!26 = metadata !{i32 786489, null, metadata !"hls", metadata !27, i32 69} ; [ DW_TAG_namespace ]
!27 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Chls_stream.h", metadata !"c:/Users/Jack/Desktop/cse237d/Underwater-Acoustic-Detection/src/hw_soln", null} ; [ DW_TAG_file_type ]
!28 = metadata !{metadata !29, metadata !30, metadata !36, metadata !42, metadata !47, metadata !51, metadata !55, metadata !60, metadata !65, metadata !66, metadata !67, metadata !70, metadata !73, metadata !74, metadata !77}
!29 = metadata !{i32 786445, metadata !25, metadata !"V", metadata !27, i32 163, i64 32, i64 32, i64 0, i32 1, metadata !14} ; [ DW_TAG_member ]
!30 = metadata !{i32 786478, i32 0, metadata !25, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 83, metadata !31, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 83} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33}
!33 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !25} ; [ DW_TAG_pointer_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786478, i32 0, metadata !25, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 86, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 86} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !33, metadata !39}
!39 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ]
!41 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 786478, i32 0, metadata !25, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 91, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !34, i32 91} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !33, metadata !45}
!45 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_reference_type ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ]
!47 = metadata !{i32 786478, i32 0, metadata !25, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !27, i32 94, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !34, i32 94} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{metadata !50, metadata !33, metadata !45}
!50 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_reference_type ]
!51 = metadata !{i32 786478, i32 0, metadata !25, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !27, i32 101, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 101} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !33, metadata !54}
!54 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_reference_type ]
!55 = metadata !{i32 786478, i32 0, metadata !25, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !27, i32 105, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 105} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !33, metadata !58}
!58 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_reference_type ]
!59 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!60 = metadata !{i32 786478, i32 0, metadata !25, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !27, i32 112, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 112} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !63, metadata !64}
!63 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !46} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 786478, i32 0, metadata !25, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !27, i32 117, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 117} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786478, i32 0, metadata !25, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !27, i32 123, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 123} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786478, i32 0, metadata !25, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !27, i32 129, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 129} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !14, metadata !33}
!70 = metadata !{i32 786478, i32 0, metadata !25, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !27, i32 136, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 136} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !63, metadata !33, metadata !54}
!73 = metadata !{i32 786478, i32 0, metadata !25, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !27, i32 144, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 144} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786478, i32 0, metadata !25, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !27, i32 150, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 150} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !63, metadata !33, metadata !58}
!77 = metadata !{i32 786478, i32 0, metadata !25, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !27, i32 157, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 157} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !80, metadata !33}
!80 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !14, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!83 = metadata !{i32 786445, metadata !20, metadata !"duration", metadata !21, i32 15, i64 32, i64 32, i64 32, i32 0, metadata !84} ; [ DW_TAG_member ]
!84 = metadata !{i32 786454, null, metadata !"DSTREAM_INT", metadata !9, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ]
!85 = metadata !{i32 786434, metadata !26, metadata !"stream<int>", metadata !27, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !86, i32 0, null, metadata !132} ; [ DW_TAG_class_type ]
!86 = metadata !{metadata !87, metadata !88, metadata !92, metadata !95, metadata !100, metadata !104, metadata !108, metadata !113, metadata !117, metadata !118, metadata !119, metadata !122, metadata !125, metadata !126, metadata !129}
!87 = metadata !{i32 786445, metadata !85, metadata !"V", metadata !27, i32 163, i64 32, i64 32, i64 0, i32 1, metadata !17} ; [ DW_TAG_member ]
!88 = metadata !{i32 786478, i32 0, metadata !85, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 83, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 83} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !91}
!91 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !85} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 786478, i32 0, metadata !85, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 86, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 86} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !91, metadata !39}
!95 = metadata !{i32 786478, i32 0, metadata !85, metadata !"stream", metadata !"stream", metadata !"", metadata !27, i32 91, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !34, i32 91} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !91, metadata !98}
!98 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_reference_type ]
!99 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_const_type ]
!100 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !27, i32 94, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !34, i32 94} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !103, metadata !91, metadata !98}
!103 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_reference_type ]
!104 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !27, i32 101, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 101} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !91, metadata !107}
!107 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_reference_type ]
!108 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !27, i32 105, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 105} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{null, metadata !91, metadata !111}
!111 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_reference_type ]
!112 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ]
!113 = metadata !{i32 786478, i32 0, metadata !85, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !27, i32 112, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 112} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !63, metadata !116}
!116 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !99} ; [ DW_TAG_pointer_type ]
!117 = metadata !{i32 786478, i32 0, metadata !85, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !27, i32 117, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 117} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786478, i32 0, metadata !85, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !27, i32 123, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 123} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786478, i32 0, metadata !85, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !27, i32 129, metadata !120, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 129} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{metadata !17, metadata !91}
!122 = metadata !{i32 786478, i32 0, metadata !85, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !27, i32 136, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 136} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{metadata !63, metadata !91, metadata !107}
!125 = metadata !{i32 786478, i32 0, metadata !85, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !27, i32 144, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 144} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786478, i32 0, metadata !85, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !27, i32 150, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 150} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{metadata !63, metadata !91, metadata !111}
!129 = metadata !{i32 786478, i32 0, metadata !85, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !27, i32 157, metadata !130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !34, i32 157} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!131 = metadata !{metadata !80, metadata !91}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !17, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!134 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !13, metadata !135, i32 0, i32 0} ; [ DW_TAG_array_type ]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786465, i64 0, i64 9999}    ; [ DW_TAG_subrange_type ]
!137 = metadata !{i32 24, i32 29, metadata !8, null}
!138 = metadata !{i32 786689, metadata !8, metadata !"locs", null, i32 26, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!139 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !16, metadata !140, i32 0, i32 0} ; [ DW_TAG_array_type ]
!140 = metadata !{metadata !141}
!141 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ]
!142 = metadata !{i32 26, i32 17, metadata !8, null}
!143 = metadata !{i32 790531, metadata !144, metadata !"pairs.amplitude.V", null, i32 27, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!144 = metadata !{i32 786689, metadata !8, metadata !"pairs", metadata !9, i32 67108891, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ]
!146 = metadata !{i32 786438, null, metadata !"", metadata !21, i32 13, i64 32, i64 32, i32 0, i32 0, null, metadata !147, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786438, metadata !26, metadata !"stream<float>", metadata !27, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !149, i32 0, null, metadata !81} ; [ DW_TAG_class_field_type ]
!149 = metadata !{metadata !29}
!150 = metadata !{i32 27, i32 28, metadata !8, null}
!151 = metadata !{i32 790531, metadata !144, metadata !"pairs.duration.V", null, i32 27, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!152 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ]
!153 = metadata !{i32 786438, null, metadata !"", metadata !21, i32 13, i64 32, i64 32, i32 0, i32 0, null, metadata !154, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!154 = metadata !{metadata !155}
!155 = metadata !{i32 786438, metadata !26, metadata !"stream<int>", metadata !27, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !156, i32 0, null, metadata !132} ; [ DW_TAG_class_field_type ]
!156 = metadata !{metadata !87}
!157 = metadata !{i32 30, i32 15, metadata !158, null}
!158 = metadata !{i32 786443, metadata !159, i32 30, i32 2, metadata !9, i32 7} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786443, metadata !8, i32 27, i32 35, metadata !9, i32 6} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 30, i32 27, metadata !158, null}
!161 = metadata !{i32 786688, metadata !158, metadata !"i", metadata !9, i32 30, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 31, i32 16, metadata !163, null}
!163 = metadata !{i32 786443, metadata !164, i32 31, i32 3, metadata !9, i32 9} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786443, metadata !158, i32 30, i32 32, metadata !9, i32 8} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 786688, metadata !163, metadata !"j", metadata !9, i32 31, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 33, i32 36, metadata !167, null}
!167 = metadata !{i32 786443, metadata !168, i32 33, i32 4, metadata !9, i32 11} ; [ DW_TAG_lexical_block ]
!168 = metadata !{i32 786443, metadata !163, i32 31, i32 33, metadata !9, i32 10} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 786688, metadata !167, metadata !"b", metadata !9, i32 33, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 786688, metadata !167, metadata !"e", metadata !9, i32 33, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 38, i32 5, metadata !172, null}
!172 = metadata !{i32 786443, metadata !167, i32 33, i32 50, metadata !9, i32 12} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786688, metadata !159, metadata !"duration", metadata !9, i32 29, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 33, i32 51, metadata !172, null}
!175 = metadata !{i32 34, i32 1, metadata !172, null}
!176 = metadata !{i32 35, i32 1, metadata !172, null}
!177 = metadata !{i32 37, i32 2, metadata !172, null}
!178 = metadata !{i32 786689, metadata !179, metadata !"din", metadata !27, i32 33554576, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 786478, i32 0, metadata !26, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !27, i32 144, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !73, metadata !34, i32 144} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 144, i32 74, metadata !179, metadata !177}
!181 = metadata !{i32 145, i32 31, metadata !182, metadata !177}
!182 = metadata !{i32 786443, metadata !179, i32 144, i32 79, metadata !27, i32 15} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 786688, metadata !182, metadata !"tmp", metadata !27, i32 145, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 146, i32 9, metadata !182, metadata !177}
!185 = metadata !{i32 39, i32 4, metadata !172, null}
!186 = metadata !{i32 33, i32 45, metadata !167, null}
!187 = metadata !{i32 786688, metadata !188, metadata !"tmp", metadata !27, i32 145, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 786443, metadata !189, i32 144, i32 79, metadata !27, i32 14} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786478, i32 0, metadata !26, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !27, i32 144, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !125, metadata !34, i32 144} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 145, i32 31, metadata !188, metadata !191}
!191 = metadata !{i32 40, i32 4, metadata !168, null}
!192 = metadata !{i32 146, i32 9, metadata !188, metadata !191}
!193 = metadata !{i32 31, i32 28, metadata !163, null}
!194 = metadata !{i32 43, i32 1, metadata !159, null}
!195 = metadata !{i32 49, i32 1, metadata !196, null}
!196 = metadata !{i32 786443, metadata !197, i32 48, i32 40, metadata !9, i32 13} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 786478, i32 0, metadata !9, metadata !"parse_audio", metadata !"parse_audio", metadata !"_Z11parse_audioRN3hls6streamIfEES2_RNS0_IiEER19DSTREAM_STRUCT_PAIR", metadata !9, i32 45, metadata !198, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 48} ; [ DW_TAG_subprogram ]
!198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!199 = metadata !{null, metadata !200, metadata !200, metadata !201, metadata !18}
!200 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_reference_type ]
!201 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_reference_type ]
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 31, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"signals.V", metadata !5, metadata !"float", i32 0, i32 31}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 0, i32 31, metadata !208}
!208 = metadata !{metadata !209}
!209 = metadata !{metadata !"hits.V", metadata !5, metadata !"float", i32 0, i32 31}
!210 = metadata !{metadata !211}
!211 = metadata !{i32 0, i32 31, metadata !212}
!212 = metadata !{metadata !213}
!213 = metadata !{metadata !"locs.V", metadata !5, metadata !"int", i32 0, i32 31}
!214 = metadata !{metadata !215}
!215 = metadata !{i32 0, i32 31, metadata !216}
!216 = metadata !{metadata !217}
!217 = metadata !{metadata !"pairs.amplitude.V", metadata !5, metadata !"float", i32 0, i32 31}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 31, metadata !220}
!220 = metadata !{metadata !221}
!221 = metadata !{metadata !"pairs.duration.V", metadata !5, metadata !"int", i32 0, i32 31}
!222 = metadata !{i32 790531, metadata !223, metadata !"signals.V", null, i32 45, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!223 = metadata !{i32 786689, metadata !197, metadata !"signals", metadata !9, i32 16777261, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!224 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ]
!225 = metadata !{i32 45, i32 31, metadata !197, null}
!226 = metadata !{i32 790531, metadata !227, metadata !"hits.V", null, i32 46, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!227 = metadata !{i32 786689, metadata !197, metadata !"hits", metadata !9, i32 33554478, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 46, i32 19, metadata !197, null}
!229 = metadata !{i32 790531, metadata !230, metadata !"locs.V", null, i32 47, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!230 = metadata !{i32 786689, metadata !197, metadata !"locs", metadata !9, i32 50331695, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!231 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ]
!232 = metadata !{i32 47, i32 22, metadata !197, null}
!233 = metadata !{i32 790531, metadata !234, metadata !"pairs.amplitude.V", null, i32 48, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!234 = metadata !{i32 786689, metadata !197, metadata !"pairs", metadata !9, i32 67108912, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!235 = metadata !{i32 48, i32 33, metadata !197, null}
!236 = metadata !{i32 790531, metadata !234, metadata !"pairs.duration.V", null, i32 48, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!237 = metadata !{i32 786688, metadata !196, metadata !"sig_buf", metadata !9, i32 51, metadata !238, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!238 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !13, metadata !135, i32 0, i32 0} ; [ DW_TAG_array_type ]
!239 = metadata !{i32 51, i32 12, metadata !196, null}
!240 = metadata !{i32 786688, metadata !196, metadata !"loc_buf", metadata !9, i32 53, metadata !241, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 384, i64 32, i32 0, i32 0, metadata !16, metadata !140, i32 0, i32 0} ; [ DW_TAG_array_type ]
!242 = metadata !{i32 53, i32 12, metadata !196, null}
!243 = metadata !{i32 55, i32 2, metadata !196, null}
!244 = metadata !{i32 56, i32 2, metadata !196, null}
!245 = metadata !{i32 57, i32 2, metadata !196, null}
!246 = metadata !{i32 59, i32 1, metadata !196, null}
!247 = metadata !{i32 790531, metadata !248, metadata !"hits.V", null, i32 12, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!248 = metadata !{i32 786689, metadata !249, metadata !"hits", metadata !9, i32 16777228, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!249 = metadata !{i32 786478, i32 0, metadata !9, metadata !"buffer_target", metadata !"buffer_target", metadata !"_Z13buffer_targetRN3hls6streamIfEERNS0_IiEEPfPi", metadata !9, i32 12, metadata !250, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 15} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!251 = metadata !{null, metadata !200, metadata !201, metadata !12, metadata !15}
!252 = metadata !{i32 12, i32 33, metadata !249, null}
!253 = metadata !{i32 790531, metadata !254, metadata !"locs.V", null, i32 13, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!254 = metadata !{i32 786689, metadata !249, metadata !"locs", metadata !9, i32 33554445, metadata !201, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 13, i32 21, metadata !249, null}
!256 = metadata !{i32 786689, metadata !249, metadata !"loc_buf", null, i32 15, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 15, i32 18, metadata !249, null}
!258 = metadata !{i32 17, i32 15, metadata !259, null}
!259 = metadata !{i32 786443, metadata !260, i32 17, i32 2, metadata !9, i32 4} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 786443, metadata !249, i32 15, i32 33, metadata !9, i32 3} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 17, i32 27, metadata !259, null}
!262 = metadata !{i32 17, i32 33, metadata !263, null}
!263 = metadata !{i32 786443, metadata !259, i32 17, i32 32, metadata !9, i32 5} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 18, i32 1, metadata !263, null}
!265 = metadata !{i32 790531, metadata !266, metadata !"stream<float>.V", null, i32 129, metadata !269, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!266 = metadata !{i32 786689, metadata !267, metadata !"this", metadata !27, i32 16777345, metadata !268, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 786478, i32 0, metadata !26, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !27, i32 129, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !67, metadata !34, i32 129} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!269 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ]
!270 = metadata !{i32 129, i32 56, metadata !267, metadata !271}
!271 = metadata !{i32 19, i32 15, metadata !263, null}
!272 = metadata !{i32 131, i32 9, metadata !273, metadata !271}
!273 = metadata !{i32 786443, metadata !267, i32 129, i32 63, metadata !27, i32 17} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 786688, metadata !273, metadata !"tmp", metadata !27, i32 130, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 790531, metadata !276, metadata !"stream<int>.V", null, i32 129, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!276 = metadata !{i32 786689, metadata !277, metadata !"this", metadata !27, i32 16777345, metadata !278, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!277 = metadata !{i32 786478, i32 0, metadata !26, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !27, i32 129, metadata !120, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !119, metadata !34, i32 129} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ]
!279 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ]
!280 = metadata !{i32 129, i32 56, metadata !277, metadata !281}
!281 = metadata !{i32 20, i32 16, metadata !263, null}
!282 = metadata !{i32 131, i32 9, metadata !283, metadata !281}
!283 = metadata !{i32 786443, metadata !277, i32 129, i32 63, metadata !27, i32 16} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 786688, metadata !283, metadata !"tmp", metadata !27, i32 130, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 21, i32 2, metadata !263, null}
!286 = metadata !{i32 786688, metadata !259, metadata !"i", metadata !9, i32 17, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!287 = metadata !{i32 22, i32 1, metadata !260, null}
!288 = metadata !{i32 790531, metadata !289, metadata !"signals.V", null, i32 4, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!289 = metadata !{i32 786689, metadata !290, metadata !"signals", metadata !9, i32 16777220, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 786478, i32 0, metadata !9, metadata !"buffer_signal", metadata !"buffer_signal", metadata !"_Z13buffer_signalRN3hls6streamIfEEPf", metadata !9, i32 4, metadata !291, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !34, i32 4} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{null, metadata !200, metadata !12}
!293 = metadata !{i32 4, i32 33, metadata !290, null}
!294 = metadata !{i32 786689, metadata !290, metadata !"amp_buf", null, i32 4, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!295 = metadata !{i32 4, i32 52, metadata !290, null}
!296 = metadata !{i32 6, i32 15, metadata !297, null}
!297 = metadata !{i32 786443, metadata !298, i32 6, i32 2, metadata !9, i32 1} ; [ DW_TAG_lexical_block ]
!298 = metadata !{i32 786443, metadata !290, i32 4, i32 69, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 6, i32 35, metadata !300, null}
!300 = metadata !{i32 786443, metadata !297, i32 6, i32 34, metadata !9, i32 2} ; [ DW_TAG_lexical_block ]
!301 = metadata !{i32 7, i32 1, metadata !300, null}
!302 = metadata !{i32 129, i32 56, metadata !267, metadata !303}
!303 = metadata !{i32 8, i32 17, metadata !300, null}
!304 = metadata !{i32 131, i32 9, metadata !273, metadata !303}
!305 = metadata !{i32 9, i32 2, metadata !300, null}
!306 = metadata !{i32 6, i32 29, metadata !297, null}
!307 = metadata !{i32 786688, metadata !297, metadata !"i", metadata !9, i32 6, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!308 = metadata !{i32 10, i32 1, metadata !298, null}
