; ModuleID = 'C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [23 x i8] c"ACCEL:\09SAMPLES   = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"ACCEL:\09sum       = %f\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"ACCEL:\09mean      = %f\0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"ACCEL:\09threshold = %f\0A\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"%4d --> %4d\0A\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"ACCEL:\09peaks     = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"ACCEL:\09hits      = %d\0A\00", align 1

; Function Attrs: nounwind
define void @_Z9duplicatePfS_S_S_S_(float* %dat_i, float* %dup1, float* %dup2, float* %dup3, float* %dup4) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %5 = alloca float*, align 4
  %i = alloca i32, align 4
  %val = alloca float, align 4
  store float* %dat_i, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !78), !dbg !79
  store float* %dup1, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !80), !dbg !81
  store float* %dup2, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !82), !dbg !83
  store float* %dup3, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !84), !dbg !85
  store float* %dup4, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !86), !dbg !87
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !88), !dbg !90
  store i32 0, i32* %i, align 4, !dbg !91
  br label %6, !dbg !91

; <label>:6                                       ; preds = %30, %0
  %7 = load i32* %i, align 4, !dbg !92
  %8 = icmp slt i32 %7, 120000, !dbg !92
  br i1 %8, label %9, label %33, !dbg !92

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{float* %val}, metadata !95), !dbg !97
  %10 = load i32* %i, align 4, !dbg !98
  %11 = load float** %1, align 4, !dbg !98
  %12 = getelementptr inbounds float* %11, i32 %10, !dbg !98
  %13 = load float* %12, align 4, !dbg !98
  store float %13, float* %val, align 4, !dbg !98
  %14 = load float* %val, align 4, !dbg !99
  %15 = load i32* %i, align 4, !dbg !99
  %16 = load float** %2, align 4, !dbg !99
  %17 = getelementptr inbounds float* %16, i32 %15, !dbg !99
  store float %14, float* %17, align 4, !dbg !99
  %18 = load float* %val, align 4, !dbg !100
  %19 = load i32* %i, align 4, !dbg !100
  %20 = load float** %3, align 4, !dbg !100
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !100
  store float %18, float* %21, align 4, !dbg !100
  %22 = load float* %val, align 4, !dbg !101
  %23 = load i32* %i, align 4, !dbg !101
  %24 = load float** %4, align 4, !dbg !101
  %25 = getelementptr inbounds float* %24, i32 %23, !dbg !101
  store float %22, float* %25, align 4, !dbg !101
  %26 = load float* %val, align 4, !dbg !102
  %27 = load i32* %i, align 4, !dbg !102
  %28 = load float** %5, align 4, !dbg !102
  %29 = getelementptr inbounds float* %28, i32 %27, !dbg !102
  store float %26, float* %29, align 4, !dbg !102
  br label %30, !dbg !103

; <label>:30                                      ; preds = %9
  %31 = load i32* %i, align 4, !dbg !104
  %32 = add nsw i32 %31, 1, !dbg !104
  store i32 %32, i32* %i, align 4, !dbg !104
  br label %6, !dbg !104

; <label>:33                                      ; preds = %6
  ret void, !dbg !105
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void @_Z10invert_negPfS_(float* %signal_i, float* %signal_o) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %i = alloca i32, align 4
  %val = alloca float, align 4
  store float* %signal_i, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !106), !dbg !107
  store float* %signal_o, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !108), !dbg !109
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !110), !dbg !112
  store i32 0, i32* %i, align 4, !dbg !113
  br label %3, !dbg !113

; <label>:3                                       ; preds = %21, %0
  %4 = load i32* %i, align 4, !dbg !114
  %5 = icmp slt i32 %4, 120000, !dbg !114
  br i1 %5, label %6, label %24, !dbg !114

; <label>:6                                       ; preds = %3
  call void @llvm.dbg.declare(metadata !{float* %val}, metadata !117), !dbg !119
  %7 = load i32* %i, align 4, !dbg !120
  %8 = load float** %1, align 4, !dbg !120
  %9 = getelementptr inbounds float* %8, i32 %7, !dbg !120
  %10 = load float* %9, align 4, !dbg !120
  store float %10, float* %val, align 4, !dbg !120
  %11 = load float* %val, align 4, !dbg !121
  %12 = fcmp olt float %11, 0.000000e+00, !dbg !121
  br i1 %12, label %13, label %14, !dbg !121

; <label>:13                                      ; preds = %6
  br label %16, !dbg !122

; <label>:14                                      ; preds = %6
  %15 = load float* %val, align 4, !dbg !124
  br label %16, !dbg !124

; <label>:16                                      ; preds = %14, %13
  %17 = phi float [ 0.000000e+00, %13 ], [ %15, %14 ], !dbg !121
  %18 = load i32* %i, align 4, !dbg !126
  %19 = load float** %2, align 4, !dbg !126
  %20 = getelementptr inbounds float* %19, i32 %18, !dbg !126
  store float %17, float* %20, align 4, !dbg !126
  br label %21, !dbg !129

; <label>:21                                      ; preds = %16
  %22 = load i32* %i, align 4, !dbg !130
  %23 = add nsw i32 %22, 1, !dbg !130
  store i32 %23, i32* %i, align 4, !dbg !130
  br label %3, !dbg !130

; <label>:24                                      ; preds = %3
  ret void, !dbg !131
}

define void @_Z17compute_thresholdPfRf(float* %signal_i, float* dereferenceable(4) %threshold) #2 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %sum = alloca float, align 4
  %i = alloca i32, align 4
  store float* %signal_i, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !132), !dbg !133
  store float* %threshold, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !134), !dbg !135
  call void @llvm.dbg.declare(metadata !{float* %sum}, metadata !136), !dbg !137
  store float 0.000000e+00, float* %sum, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !139), !dbg !141
  store i32 0, i32* %i, align 4, !dbg !142
  br label %3, !dbg !142

; <label>:3                                       ; preds = %13, %0
  %4 = load i32* %i, align 4, !dbg !143
  %5 = icmp slt i32 %4, 120000, !dbg !143
  br i1 %5, label %6, label %16, !dbg !143

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4, !dbg !146
  %8 = load float** %1, align 4, !dbg !146
  %9 = getelementptr inbounds float* %8, i32 %7, !dbg !146
  %10 = load float* %9, align 4, !dbg !146
  %11 = load float* %sum, align 4, !dbg !146
  %12 = fadd float %11, %10, !dbg !146
  store float %12, float* %sum, align 4, !dbg !146
  br label %13, !dbg !148

; <label>:13                                      ; preds = %6
  %14 = load i32* %i, align 4, !dbg !149
  %15 = add nsw i32 %14, 1, !dbg !149
  store i32 %15, i32* %i, align 4, !dbg !149
  br label %3, !dbg !149

; <label>:16                                      ; preds = %3
  %17 = load float* %sum, align 4, !dbg !150
  %18 = fpext float %17 to double, !dbg !150
  %19 = fdiv double %18, 1.200000e+05, !dbg !150
  %20 = fptrunc double %19 to float, !dbg !150
  %21 = fmul float 5.000000e+00, %20, !dbg !150
  %22 = load float** %2, align 4, !dbg !150
  store float %21, float* %22, align 4, !dbg !150
  %23 = load %struct._IO_FILE** @stdout, align 4, !dbg !151
  %24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([23 x i8]* @.str, i32 0, i32 0), i32 120000), !dbg !151
  %25 = load %struct._IO_FILE** @stdout, align 4, !dbg !152
  %26 = load float* %sum, align 4, !dbg !152
  %27 = fpext float %26 to double, !dbg !152
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0), double %27), !dbg !152
  %29 = load %struct._IO_FILE** @stdout, align 4, !dbg !153
  %30 = load float* %sum, align 4, !dbg !153
  %31 = fpext float %30 to double, !dbg !153
  %32 = fdiv double %31, 1.200000e+05, !dbg !153
  %33 = fptrunc double %32 to float, !dbg !153
  %34 = fpext float %33 to double, !dbg !153
  %35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([23 x i8]* @.str2, i32 0, i32 0), double %34), !dbg !153
  %36 = load %struct._IO_FILE** @stdout, align 4, !dbg !154
  %37 = load float** %2, align 4, !dbg !154
  %38 = load float* %37, align 4, !dbg !154
  %39 = fpext float %38 to double, !dbg !154
  %40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0), double %39), !dbg !154
  ret void, !dbg !155
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
define void @_Z12filter_noisePffS_(float* %signal_i, float %threshold, float* %signal_o) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  %val = alloca float, align 4
  store float* %signal_i, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !156), !dbg !157
  store float %threshold, float* %2, align 4
  call void @llvm.dbg.declare(metadata !{float* %2}, metadata !158), !dbg !159
  store float* %signal_o, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !160), !dbg !161
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !162), !dbg !164
  store i32 0, i32* %i, align 4, !dbg !165
  br label %4, !dbg !165

; <label>:4                                       ; preds = %23, %0
  %5 = load i32* %i, align 4, !dbg !166
  %6 = icmp slt i32 %5, 120000, !dbg !166
  br i1 %6, label %7, label %26, !dbg !166

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{float* %val}, metadata !169), !dbg !171
  %8 = load i32* %i, align 4, !dbg !172
  %9 = load float** %1, align 4, !dbg !172
  %10 = getelementptr inbounds float* %9, i32 %8, !dbg !172
  %11 = load float* %10, align 4, !dbg !172
  store float %11, float* %val, align 4, !dbg !172
  %12 = load float* %val, align 4, !dbg !173
  %13 = load float* %2, align 4, !dbg !173
  %14 = fcmp ogt float %12, %13, !dbg !173
  br i1 %14, label %15, label %17, !dbg !173

; <label>:15                                      ; preds = %7
  %16 = load float* %val, align 4, !dbg !174
  br label %18, !dbg !174

; <label>:17                                      ; preds = %7
  br label %18, !dbg !176

; <label>:18                                      ; preds = %17, %15
  %19 = phi float [ %16, %15 ], [ 0.000000e+00, %17 ], !dbg !173
  %20 = load i32* %i, align 4, !dbg !178
  %21 = load float** %3, align 4, !dbg !178
  %22 = getelementptr inbounds float* %21, i32 %20, !dbg !178
  store float %19, float* %22, align 4, !dbg !178
  br label %23, !dbg !181

; <label>:23                                      ; preds = %18
  %24 = load i32* %i, align 4, !dbg !182
  %25 = add nsw i32 %24, 1, !dbg !182
  store i32 %25, i32* %i, align 4, !dbg !182
  br label %4, !dbg !182

; <label>:26                                      ; preds = %4
  ret void, !dbg !183
}

; Function Attrs: nounwind
define void @_Z9findpeaksPffPiRi(float* %samples, float %minPeakHeight, i32* %peak_locs, i32* dereferenceable(4) %peak_count) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float, align 4
  %3 = alloca i32*, align 4
  %4 = alloca i32*, align 4
  %i = alloca i32, align 4
  store float* %samples, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !184), !dbg !185
  store float %minPeakHeight, float* %2, align 4
  call void @llvm.dbg.declare(metadata !{float* %2}, metadata !186), !dbg !187
  store i32* %peak_locs, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !188), !dbg !189
  store i32* %peak_count, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !190), !dbg !191
  %5 = load i32** %4, align 4, !dbg !192
  store i32 0, i32* %5, align 4, !dbg !192
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !193), !dbg !195
  store i32 1, i32* %i, align 4, !dbg !196
  br label %6, !dbg !196

; <label>:6                                       ; preds = %49, %0
  %7 = load i32* %i, align 4, !dbg !197
  %8 = icmp slt i32 %7, 119999, !dbg !197
  br i1 %8, label %9, label %52, !dbg !197

; <label>:9                                       ; preds = %6
  %10 = load i32* %i, align 4, !dbg !200
  %11 = load float** %1, align 4, !dbg !200
  %12 = getelementptr inbounds float* %11, i32 %10, !dbg !200
  %13 = load float* %12, align 4, !dbg !200
  %14 = load float* %2, align 4, !dbg !200
  %15 = fcmp ogt float %13, %14, !dbg !200
  br i1 %15, label %16, label %48, !dbg !200

; <label>:16                                      ; preds = %9
  %17 = load i32* %i, align 4, !dbg !203
  %18 = sub nsw i32 %17, 1, !dbg !203
  %19 = load float** %1, align 4, !dbg !203
  %20 = getelementptr inbounds float* %19, i32 %18, !dbg !203
  %21 = load float* %20, align 4, !dbg !203
  %22 = load i32* %i, align 4, !dbg !203
  %23 = load float** %1, align 4, !dbg !203
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !203
  %25 = load float* %24, align 4, !dbg !203
  %26 = fcmp olt float %21, %25, !dbg !203
  br i1 %26, label %27, label %47, !dbg !203

; <label>:27                                      ; preds = %16
  %28 = load i32* %i, align 4, !dbg !206
  %29 = load float** %1, align 4, !dbg !206
  %30 = getelementptr inbounds float* %29, i32 %28, !dbg !206
  %31 = load float* %30, align 4, !dbg !206
  %32 = load i32* %i, align 4, !dbg !206
  %33 = add nsw i32 %32, 1, !dbg !206
  %34 = load float** %1, align 4, !dbg !206
  %35 = getelementptr inbounds float* %34, i32 %33, !dbg !206
  %36 = load float* %35, align 4, !dbg !206
  %37 = fcmp ogt float %31, %36, !dbg !206
  br i1 %37, label %38, label %47, !dbg !206

; <label>:38                                      ; preds = %27
  %39 = load i32* %i, align 4, !dbg !208
  %40 = load i32** %4, align 4, !dbg !208
  %41 = load i32* %40, align 4, !dbg !208
  %42 = load i32** %3, align 4, !dbg !208
  %43 = getelementptr inbounds i32* %42, i32 %41, !dbg !208
  store i32 %39, i32* %43, align 4, !dbg !208
  %44 = load i32** %4, align 4, !dbg !210
  %45 = load i32* %44, align 4, !dbg !210
  %46 = add nsw i32 %45, 1, !dbg !210
  store i32 %46, i32* %44, align 4, !dbg !210
  br label %47, !dbg !211

; <label>:47                                      ; preds = %38, %27, %16
  br label %48, !dbg !212

; <label>:48                                      ; preds = %47, %9
  br label %49, !dbg !213

; <label>:49                                      ; preds = %48
  %50 = load i32* %i, align 4, !dbg !214
  %51 = add nsw i32 %50, 1, !dbg !214
  store i32 %51, i32* %i, align 4, !dbg !214
  br label %6, !dbg !214

; <label>:52                                      ; preds = %6
  ret void, !dbg !215
}

define void @_Z5parsePfiPiRiS_(float* %signal_i, i32 %pks, i32* %loc, i32* dereferenceable(4) %candidates, float* %signal_o) #2 {
  %1 = alloca float*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 4
  %4 = alloca i32*, align 4
  %5 = alloca float*, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %loc_prev = alloca i32, align 4
  %loc_curr = alloca i32, align 4
  %loc_next = alloca i32, align 4
  %location = alloca i32, align 4
  %b = alloca i32, align 4
  %e = alloca i32, align 4
  store float* %signal_i, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !216), !dbg !217
  store i32 %pks, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !218), !dbg !219
  store i32* %loc, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !220), !dbg !221
  store i32* %candidates, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !222), !dbg !223
  store float* %signal_o, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !224), !dbg !225
  %6 = load i32** %4, align 4, !dbg !226
  store i32 0, i32* %6, align 4, !dbg !226
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !227), !dbg !228
  store i32 0, i32* %index, align 4, !dbg !229
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !230), !dbg !232
  store i32 1, i32* %i, align 4, !dbg !233
  br label %7, !dbg !233

; <label>:7                                       ; preds = %78, %0
  %8 = load i32* %i, align 4, !dbg !234
  %9 = load i32* %2, align 4, !dbg !234
  %10 = sub nsw i32 %9, 1, !dbg !234
  %11 = icmp slt i32 %8, %10, !dbg !234
  br i1 %11, label %12, label %81, !dbg !234

; <label>:12                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %loc_prev}, metadata !237), !dbg !239
  %13 = load i32* %i, align 4, !dbg !240
  %14 = sub nsw i32 %13, 1, !dbg !240
  %15 = load i32** %3, align 4, !dbg !240
  %16 = getelementptr inbounds i32* %15, i32 %14, !dbg !240
  %17 = load i32* %16, align 4, !dbg !240
  store i32 %17, i32* %loc_prev, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata !{i32* %loc_curr}, metadata !241), !dbg !242
  %18 = load i32* %i, align 4, !dbg !243
  %19 = load i32** %3, align 4, !dbg !243
  %20 = getelementptr inbounds i32* %19, i32 %18, !dbg !243
  %21 = load i32* %20, align 4, !dbg !243
  store i32 %21, i32* %loc_curr, align 4, !dbg !243
  call void @llvm.dbg.declare(metadata !{i32* %loc_next}, metadata !244), !dbg !245
  %22 = load i32* %i, align 4, !dbg !246
  %23 = add nsw i32 %22, 1, !dbg !246
  %24 = load i32** %3, align 4, !dbg !246
  %25 = getelementptr inbounds i32* %24, i32 %23, !dbg !246
  %26 = load i32* %25, align 4, !dbg !246
  store i32 %26, i32* %loc_next, align 4, !dbg !246
  %27 = load i32* %loc_curr, align 4, !dbg !247
  %28 = load i32* %loc_prev, align 4, !dbg !247
  %29 = sub nsw i32 %27, %28, !dbg !247
  %30 = icmp sgt i32 %29, 4, !dbg !247
  br i1 %30, label %31, label %77, !dbg !247

; <label>:31                                      ; preds = %12
  %32 = load i32* %loc_next, align 4, !dbg !249
  %33 = load i32* %loc_curr, align 4, !dbg !249
  %34 = sub nsw i32 %32, %33, !dbg !249
  %35 = icmp sgt i32 %34, 4, !dbg !249
  br i1 %35, label %36, label %77, !dbg !249

; <label>:36                                      ; preds = %31
  %37 = load i32** %4, align 4, !dbg !251
  %38 = load i32* %37, align 4, !dbg !251
  %39 = add nsw i32 %38, 1, !dbg !251
  store i32 %39, i32* %37, align 4, !dbg !251
  call void @llvm.dbg.declare(metadata !{i32* %location}, metadata !253), !dbg !254
  %40 = load i32* %i, align 4, !dbg !255
  %41 = load i32** %3, align 4, !dbg !255
  %42 = getelementptr inbounds i32* %41, i32 %40, !dbg !255
  %43 = load i32* %42, align 4, !dbg !255
  store i32 %43, i32* %location, align 4, !dbg !255
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !256), !dbg !257
  %44 = load i32* %location, align 4, !dbg !258
  %45 = sub nsw i32 %44, 4, !dbg !258
  %46 = sub nsw i32 %45, 1, !dbg !258
  store i32 %46, i32* %b, align 4, !dbg !258
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !259), !dbg !260
  %47 = load i32* %location, align 4, !dbg !261
  %48 = add nsw i32 %47, 4, !dbg !261
  store i32 %48, i32* %e, align 4, !dbg !261
  %49 = load i32* %b, align 4, !dbg !262
  %50 = icmp slt i32 %49, 0, !dbg !262
  br i1 %50, label %51, label %52, !dbg !262

; <label>:51                                      ; preds = %36
  store i32 0, i32* %b, align 4, !dbg !264
  br label %52, !dbg !264

; <label>:52                                      ; preds = %51, %36
  %53 = load i32* %e, align 4, !dbg !266
  %54 = icmp sgt i32 %53, 119999, !dbg !266
  br i1 %54, label %55, label %56, !dbg !266

; <label>:55                                      ; preds = %52
  store i32 119999, i32* %e, align 4, !dbg !268
  br label %56, !dbg !268

; <label>:56                                      ; preds = %55, %52
  %57 = load i32* %b, align 4, !dbg !270
  %58 = load i32* %e, align 4, !dbg !270
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0), i32 %57, i32 %58), !dbg !270
  br label %60, !dbg !271

; <label>:60                                      ; preds = %64, %56
  %61 = load i32* %b, align 4, !dbg !272
  %62 = load i32* %e, align 4, !dbg !272
  %63 = icmp slt i32 %61, %62, !dbg !272
  br i1 %63, label %64, label %76, !dbg !272

; <label>:64                                      ; preds = %60
  %65 = load i32* %b, align 4, !dbg !274
  %66 = load float** %1, align 4, !dbg !274
  %67 = getelementptr inbounds float* %66, i32 %65, !dbg !274
  %68 = load float* %67, align 4, !dbg !274
  %69 = load i32* %index, align 4, !dbg !274
  %70 = load float** %5, align 4, !dbg !274
  %71 = getelementptr inbounds float* %70, i32 %69, !dbg !274
  store float %68, float* %71, align 4, !dbg !274
  %72 = load i32* %b, align 4, !dbg !276
  %73 = add nsw i32 %72, 1, !dbg !276
  store i32 %73, i32* %b, align 4, !dbg !276
  %74 = load i32* %index, align 4, !dbg !277
  %75 = add nsw i32 %74, 1, !dbg !277
  store i32 %75, i32* %index, align 4, !dbg !277
  br label %60, !dbg !278

; <label>:76                                      ; preds = %60
  br label %77, !dbg !279

; <label>:77                                      ; preds = %76, %31, %12
  br label %78, !dbg !280

; <label>:78                                      ; preds = %77
  %79 = load i32* %i, align 4, !dbg !281
  %80 = add nsw i32 %79, 1, !dbg !281
  store i32 %80, i32* %i, align 4, !dbg !281
  br label %7, !dbg !281

; <label>:81                                      ; preds = %7
  ret void, !dbg !282
}

declare i32 @printf(i8*, ...) #2

define void @_Z12detect_callsPfRiS_(float* %dat_i, i32* dereferenceable(4) %hits_o, float* %res_o) #2 {
  %1 = alloca float*, align 4
  %2 = alloca i32*, align 4
  %3 = alloca float*, align 4
  %dup1 = alloca float*, align 4
  %dup2 = alloca float*, align 4
  %dup3 = alloca float*, align 4
  %dup4 = alloca float*, align 4
  %pos_dat = alloca float*, align 4
  %thres = alloca float, align 4
  %filtered_dat = alloca float*, align 4
  %peak_locs = alloca i32*, align 4
  %peak_counts = alloca i32, align 4
  store float* %dat_i, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !283), !dbg !284
  store i32* %hits_o, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !285), !dbg !286
  store float* %res_o, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !287), !dbg !288
  call void @llvm.dbg.declare(metadata !{float** %dup1}, metadata !289), !dbg !290
  %4 = call i8* @sds_alloc(i32 480000), !dbg !291
  %5 = bitcast i8* %4 to float*, !dbg !291
  store float* %5, float** %dup1, align 4, !dbg !291
  call void @llvm.dbg.declare(metadata !{float** %dup2}, metadata !292), !dbg !293
  %6 = call i8* @sds_alloc(i32 480000), !dbg !294
  %7 = bitcast i8* %6 to float*, !dbg !294
  store float* %7, float** %dup2, align 4, !dbg !294
  call void @llvm.dbg.declare(metadata !{float** %dup3}, metadata !295), !dbg !296
  %8 = call i8* @sds_alloc(i32 480000), !dbg !297
  %9 = bitcast i8* %8 to float*, !dbg !297
  store float* %9, float** %dup3, align 4, !dbg !297
  call void @llvm.dbg.declare(metadata !{float** %dup4}, metadata !298), !dbg !299
  %10 = call i8* @sds_alloc(i32 480000), !dbg !300
  %11 = bitcast i8* %10 to float*, !dbg !300
  store float* %11, float** %dup4, align 4, !dbg !300
  call void @llvm.dbg.declare(metadata !{float** %pos_dat}, metadata !301), !dbg !302
  %12 = call i8* @sds_alloc(i32 480000), !dbg !303
  %13 = bitcast i8* %12 to float*, !dbg !303
  store float* %13, float** %pos_dat, align 4, !dbg !303
  call void @llvm.dbg.declare(metadata !{float* %thres}, metadata !304), !dbg !305
  call void @llvm.dbg.declare(metadata !{float** %filtered_dat}, metadata !306), !dbg !307
  %14 = call i8* @sds_alloc(i32 480000), !dbg !308
  %15 = bitcast i8* %14 to float*, !dbg !308
  store float* %15, float** %filtered_dat, align 4, !dbg !308
  call void @llvm.dbg.declare(metadata !{i32** %peak_locs}, metadata !309), !dbg !310
  %16 = call i8* @sds_alloc(i32 480000), !dbg !311
  %17 = bitcast i8* %16 to i32*, !dbg !311
  store i32* %17, i32** %peak_locs, align 4, !dbg !311
  call void @llvm.dbg.declare(metadata !{i32* %peak_counts}, metadata !312), !dbg !313
  %18 = load float** %1, align 4, !dbg !314
  %19 = load float** %dup1, align 4, !dbg !314
  %20 = load float** %dup2, align 4, !dbg !314
  %21 = load float** %dup3, align 4, !dbg !314
  %22 = load float** %dup4, align 4, !dbg !314
  call void @_Z9duplicatePfS_S_S_S_(float* %18, float* %19, float* %20, float* %21, float* %22), !dbg !314
  %23 = load float** %dup1, align 4, !dbg !315
  %24 = load float** %pos_dat, align 4, !dbg !315
  call void @_Z10invert_negPfS_(float* %23, float* %24), !dbg !315
  %25 = load float** %pos_dat, align 4, !dbg !316
  call void @_Z17compute_thresholdPfRf(float* %25, float* dereferenceable(4) %thres), !dbg !316
  %26 = load float** %dup2, align 4, !dbg !317
  %27 = load float* %thres, align 4, !dbg !317
  %28 = load float** %filtered_dat, align 4, !dbg !317
  call void @_Z12filter_noisePffS_(float* %26, float %27, float* %28), !dbg !317
  %29 = load float** %filtered_dat, align 4, !dbg !318
  %30 = load float* %thres, align 4, !dbg !318
  %31 = load i32** %peak_locs, align 4, !dbg !318
  call void @_Z9findpeaksPffPiRi(float* %29, float %30, i32* %31, i32* dereferenceable(4) %peak_counts), !dbg !318
  %32 = load i32* %peak_counts, align 4, !dbg !319
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0), i32 %32), !dbg !319
  %34 = load float** %dup4, align 4, !dbg !320
  %35 = load i32* %peak_counts, align 4, !dbg !320
  %36 = load i32** %peak_locs, align 4, !dbg !320
  %37 = load i32** %2, align 4, !dbg !320
  %38 = load float** %3, align 4, !dbg !320
  call void @_Z5parsePfiPiRiS_(float* %34, i32 %35, i32* %36, i32* dereferenceable(4) %37, float* %38), !dbg !320
  %39 = load i32** %2, align 4, !dbg !321
  %40 = load i32* %39, align 4, !dbg !321
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str6, i32 0, i32 0), i32 %40), !dbg !321
  ret void, !dbg !322
}

declare i8* @sds_alloc(i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!xidane.function_declaration_type = !{!40, !60, !42, !61, !44, !62, !46, !63, !48, !64, !50, !65, !52, !66, !54, !67, !56, !68, !58, !69}
!xidane.function_declaration_filename = !{!40, !70, !42, !70, !44, !70, !46, !71, !48, !70, !50, !70, !52, !70, !54, !71, !56, !70, !58, !72}
!xidane.ExternC = !{!46, !54, !58}
!llvm.module.flags = !{!73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !33, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\Jack\workspace\signal-detection\Release/../src\signal_detection.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src\5Csignal_detection.cpp", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !11, metadata !14, metadata !18, metadata !21, metadata !27, metadata !30}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"duplicate", metadata !"duplicate", metadata !"_Z9duplicatePfS_S_S_S_", i32 11, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*, float*, float*)* @_Z9duplicatePfS_S_S_S_, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [duplicate]
!5 = metadata !{metadata !"C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"invert_neg", metadata !"invert_neg", metadata !"_Z10invert_negPfS_", i32 23, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*)* @_Z10invert_negPfS_, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [invert_neg]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !9, metadata !9}
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"compute_threshold", metadata !"compute_threshold", metadata !"_Z17compute_thresholdPfRf", i32 31, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*)* @_Z17compute_thresholdPfRf, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [compute_threshold]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{null, metadata !9, metadata !17}
!17 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from float]
!18 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"filter_noise", metadata !"filter_noise", metadata !"_Z12filter_noisePffS_", i32 44, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float, float*)* @_Z12filter_noisePffS_, null, null, metadata !2, i32 44} ; [ DW_TAG_subprogram ] [line 44] [def] [filter_noise]
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{null, metadata !9, metadata !10, metadata !9}
!21 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"findpeaks", metadata !"findpeaks", metadata !"_Z9findpeaksPffPiRi", i32 52, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float, i32*, i32*)* @_Z9findpeaksPffPiRi, null, null, metadata !2, i32 55} ; [ DW_TAG_subprogram ] [line 52] [def] [scope 55] [findpeaks]
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !9, metadata !10, metadata !24, metadata !26}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!25 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!26 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_reference_type ] [line 0, size 0, align 0, offset 0] [from int]
!27 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"parse", metadata !"parse", metadata !"_Z5parsePfiPiRiS_", i32 68, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32*, i32*, float*)* @_Z5parsePfiPiRiS_, null, null, metadata !2, i32 72} ; [ DW_TAG_subprogram ] [line 68] [def] [scope 72] [parse]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{null, metadata !9, metadata !25, metadata !24, metadata !26, metadata !9}
!30 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"detect_calls", metadata !"detect_calls", metadata !"_Z12detect_callsPfRiS_", i32 103, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32*, float*)* @_Z12detect_callsPfRiS_, null, null, metadata !2, i32 103} ; [ DW_TAG_subprogram ] [line 103] [def] [detect_calls]
!31 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null, metadata !9, metadata !26, metadata !9}
!33 = metadata !{metadata !34, metadata !38, metadata !39}
!34 = metadata !{i32 786484, i32 0, null, metadata !"SAMPLES", metadata !"SAMPLES", metadata !"", metadata !35, i32 19, metadata !37, i32 1, i32 1, i32 120000, null} ; [ DW_TAG_variable ] [SAMPLES] [line 19] [local] [def]
!35 = metadata !{i32 786473, metadata !36}        ; [ DW_TAG_file_type ] [C:\Users\Jack\workspace\signal-detection\Release/../src/definitions.h]
!36 = metadata !{metadata !"../src/definitions.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!37 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!38 = metadata !{i32 786484, i32 0, null, metadata !"FACTOR", metadata !"FACTOR", metadata !"", metadata !35, i32 17, metadata !37, i32 1, i32 1, i32 5, null} ; [ DW_TAG_variable ] [FACTOR] [line 17] [local] [def]
!39 = metadata !{i32 786484, i32 0, null, metadata !"STRIDE", metadata !"STRIDE", metadata !"", metadata !35, i32 20, metadata !37, i32 1, i32 1, i32 4, null} ; [ DW_TAG_variable ] [STRIDE] [line 20] [local] [def]
!40 = metadata !{void (float*, float*, float*, float*, float*)* @_Z9duplicatePfS_S_S_S_}
!41 = metadata !{metadata !"duplicate"}
!42 = metadata !{void (float*, float*)* @_Z10invert_negPfS_}
!43 = metadata !{metadata !"invert_neg"}
!44 = metadata !{void (float*, float*)* @_Z17compute_thresholdPfRf}
!45 = metadata !{metadata !"compute_threshold"}
!46 = metadata !{i32 (%struct._IO_FILE*, i8*, ...)* @fprintf}
!47 = metadata !{metadata !"fprintf"}
!48 = metadata !{void (float*, float, float*)* @_Z12filter_noisePffS_}
!49 = metadata !{metadata !"filter_noise"}
!50 = metadata !{void (float*, float, i32*, i32*)* @_Z9findpeaksPffPiRi}
!51 = metadata !{metadata !"findpeaks"}
!52 = metadata !{void (float*, i32, i32*, i32*, float*)* @_Z5parsePfiPiRiS_}
!53 = metadata !{metadata !"parse"}
!54 = metadata !{i32 (i8*, ...)* @printf}
!55 = metadata !{metadata !"printf"}
!56 = metadata !{void (float*, i32*, float*)* @_Z12detect_callsPfRiS_}
!57 = metadata !{metadata !"detect_calls"}
!58 = metadata !{i8* (i32)* @sds_alloc}
!59 = metadata !{metadata !"sds_alloc"}
!60 = metadata !{metadata !"void.float [120000].1.float [120000].1.float [120000].1.float [120000].1.float [120000].1"}
!61 = metadata !{metadata !"void.float [120000].1.float [120000].1"}
!62 = metadata !{metadata !"void.float [120000].1.float &.0"}
!63 = metadata !{metadata !"int.FILE *restrict.1.const char *restrict.1"}
!64 = metadata !{metadata !"void.float [120000].1.float.0.float [120000].1"}
!65 = metadata !{metadata !"void.float [120000].1.float.0.int [10].1.int &.0"}
!66 = metadata !{metadata !"void.float [120000].1.int.0.int [10].1.int &.0.float [120000].1"}
!67 = metadata !{metadata !"int.const char *restrict.1"}
!68 = metadata !{metadata !"void.float [120000].1.int &.0.float [120000].1"}
!69 = metadata !{metadata !"void .unsigned int.0"}
!70 = metadata !{metadata !"../src/signal_detection.h"}
!71 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!72 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/aarch32-linux/include\5Csds_lib.h"}
!73 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!74 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!75 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!76 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!77 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!78 = metadata !{i32 786689, metadata !4, metadata !"dat_i", metadata !6, i32 16777227, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dat_i] [line 11]
!79 = metadata !{i32 11, i32 22, metadata !4, null}
!80 = metadata !{i32 786689, metadata !4, metadata !"dup1", metadata !6, i32 33554443, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dup1] [line 11]
!81 = metadata !{i32 11, i32 44, metadata !4, null}
!82 = metadata !{i32 786689, metadata !4, metadata !"dup2", metadata !6, i32 50331659, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dup2] [line 11]
!83 = metadata !{i32 11, i32 65, metadata !4, null}
!84 = metadata !{i32 786689, metadata !4, metadata !"dup3", metadata !6, i32 67108876, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dup3] [line 12]
!85 = metadata !{i32 12, i32 17, metadata !4, null}
!86 = metadata !{i32 786689, metadata !4, metadata !"dup4", metadata !6, i32 83886092, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dup4] [line 12]
!87 = metadata !{i32 12, i32 38, metadata !4, null}
!88 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !6, i32 13, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 13]
!89 = metadata !{i32 786443, metadata !5, metadata !4, i32 13, i32 4, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!90 = metadata !{i32 13, i32 12, metadata !89, null}
!91 = metadata !{i32 13, i32 8, metadata !89, null}
!92 = metadata !{i32 13, i32 8, metadata !93, null}
!93 = metadata !{i32 786443, metadata !5, metadata !94, i32 13, i32 8, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!94 = metadata !{i32 786443, metadata !5, metadata !89, i32 13, i32 8, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!95 = metadata !{i32 786688, metadata !96, metadata !"val", metadata !6, i32 15, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 15]
!96 = metadata !{i32 786443, metadata !5, metadata !89, i32 13, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!97 = metadata !{i32 15, i32 13, metadata !96, null}
!98 = metadata !{i32 15, i32 7, metadata !96, null}
!99 = metadata !{i32 16, i32 7, metadata !96, null}
!100 = metadata !{i32 17, i32 7, metadata !96, null}
!101 = metadata !{i32 18, i32 7, metadata !96, null}
!102 = metadata !{i32 19, i32 7, metadata !96, null}
!103 = metadata !{i32 20, i32 4, metadata !96, null}
!104 = metadata !{i32 13, i32 32, metadata !89, null}
!105 = metadata !{i32 21, i32 1, metadata !4, null}
!106 = metadata !{i32 786689, metadata !11, metadata !"signal_i", metadata !6, i32 16777239, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signal_i] [line 23]
!107 = metadata !{i32 23, i32 23, metadata !11, null}
!108 = metadata !{i32 786689, metadata !11, metadata !"signal_o", metadata !6, i32 33554455, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signal_o] [line 23]
!109 = metadata !{i32 23, i32 48, metadata !11, null}
!110 = metadata !{i32 786688, metadata !111, metadata !"i", metadata !6, i32 24, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 24]
!111 = metadata !{i32 786443, metadata !5, metadata !11, i32 24, i32 4, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!112 = metadata !{i32 24, i32 12, metadata !111, null}
!113 = metadata !{i32 24, i32 8, metadata !111, null}
!114 = metadata !{i32 24, i32 8, metadata !115, null}
!115 = metadata !{i32 786443, metadata !5, metadata !116, i32 24, i32 8, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!116 = metadata !{i32 786443, metadata !5, metadata !111, i32 24, i32 8, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!117 = metadata !{i32 786688, metadata !118, metadata !"val", metadata !6, i32 26, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 26]
!118 = metadata !{i32 786443, metadata !5, metadata !111, i32 24, i32 37, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!119 = metadata !{i32 26, i32 13, metadata !118, null}
!120 = metadata !{i32 26, i32 7, metadata !118, null}
!121 = metadata !{i32 27, i32 7, metadata !118, null}
!122 = metadata !{i32 27, i32 7, metadata !123, null}
!123 = metadata !{i32 786443, metadata !5, metadata !118, i32 27, i32 7, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!124 = metadata !{i32 27, i32 7, metadata !125, null}
!125 = metadata !{i32 786443, metadata !5, metadata !118, i32 27, i32 7, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!126 = metadata !{i32 27, i32 7, metadata !127, null}
!127 = metadata !{i32 786443, metadata !5, metadata !128, i32 27, i32 7, i32 4, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!128 = metadata !{i32 786443, metadata !5, metadata !118, i32 27, i32 7, i32 3, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!129 = metadata !{i32 28, i32 4, metadata !118, null}
!130 = metadata !{i32 24, i32 32, metadata !111, null}
!131 = metadata !{i32 29, i32 1, metadata !11, null}
!132 = metadata !{i32 786689, metadata !14, metadata !"signal_i", metadata !6, i32 16777247, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signal_i] [line 31]
!133 = metadata !{i32 31, i32 30, metadata !14, null}
!134 = metadata !{i32 786689, metadata !14, metadata !"threshold", metadata !6, i32 33554463, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [threshold] [line 31]
!135 = metadata !{i32 31, i32 56, metadata !14, null}
!136 = metadata !{i32 786688, metadata !14, metadata !"sum", metadata !6, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 32]
!137 = metadata !{i32 32, i32 10, metadata !14, null}
!138 = metadata !{i32 32, i32 4, metadata !14, null}
!139 = metadata !{i32 786688, metadata !140, metadata !"i", metadata !6, i32 33, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 33]
!140 = metadata !{i32 786443, metadata !5, metadata !14, i32 33, i32 4, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!141 = metadata !{i32 33, i32 12, metadata !140, null}
!142 = metadata !{i32 33, i32 8, metadata !140, null}
!143 = metadata !{i32 33, i32 8, metadata !144, null}
!144 = metadata !{i32 786443, metadata !5, metadata !145, i32 33, i32 8, i32 2, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!145 = metadata !{i32 786443, metadata !5, metadata !140, i32 33, i32 8, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!146 = metadata !{i32 35, i32 7, metadata !147, null}
!147 = metadata !{i32 786443, metadata !5, metadata !140, i32 33, i32 37, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!148 = metadata !{i32 36, i32 4, metadata !147, null}
!149 = metadata !{i32 33, i32 32, metadata !140, null}
!150 = metadata !{i32 37, i32 4, metadata !14, null}
!151 = metadata !{i32 38, i32 4, metadata !14, null}
!152 = metadata !{i32 39, i32 4, metadata !14, null}
!153 = metadata !{i32 40, i32 4, metadata !14, null}
!154 = metadata !{i32 41, i32 4, metadata !14, null}
!155 = metadata !{i32 42, i32 1, metadata !14, null}
!156 = metadata !{i32 786689, metadata !18, metadata !"signal_i", metadata !6, i32 16777260, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signal_i] [line 44]
!157 = metadata !{i32 44, i32 25, metadata !18, null}
!158 = metadata !{i32 786689, metadata !18, metadata !"threshold", metadata !6, i32 33554476, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [threshold] [line 44]
!159 = metadata !{i32 44, i32 50, metadata !18, null}
!160 = metadata !{i32 786689, metadata !18, metadata !"signal_o", metadata !6, i32 50331692, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signal_o] [line 44]
!161 = metadata !{i32 44, i32 67, metadata !18, null}
!162 = metadata !{i32 786688, metadata !163, metadata !"i", metadata !6, i32 45, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!163 = metadata !{i32 786443, metadata !5, metadata !18, i32 45, i32 2, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!164 = metadata !{i32 45, i32 10, metadata !163, null}
!165 = metadata !{i32 45, i32 6, metadata !163, null}
!166 = metadata !{i32 45, i32 6, metadata !167, null}
!167 = metadata !{i32 786443, metadata !5, metadata !168, i32 45, i32 6, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!168 = metadata !{i32 786443, metadata !5, metadata !163, i32 45, i32 6, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!169 = metadata !{i32 786688, metadata !170, metadata !"val", metadata !6, i32 47, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 47]
!170 = metadata !{i32 786443, metadata !5, metadata !163, i32 45, i32 35, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!171 = metadata !{i32 47, i32 9, metadata !170, null}
!172 = metadata !{i32 47, i32 3, metadata !170, null}
!173 = metadata !{i32 48, i32 3, metadata !170, null}
!174 = metadata !{i32 48, i32 3, metadata !175, null}
!175 = metadata !{i32 786443, metadata !5, metadata !170, i32 48, i32 3, i32 1, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!176 = metadata !{i32 48, i32 3, metadata !177, null}
!177 = metadata !{i32 786443, metadata !5, metadata !170, i32 48, i32 3, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!178 = metadata !{i32 48, i32 3, metadata !179, null}
!179 = metadata !{i32 786443, metadata !5, metadata !180, i32 48, i32 3, i32 4, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!180 = metadata !{i32 786443, metadata !5, metadata !170, i32 48, i32 3, i32 3, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!181 = metadata !{i32 49, i32 2, metadata !170, null}
!182 = metadata !{i32 45, i32 30, metadata !163, null}
!183 = metadata !{i32 50, i32 1, metadata !18, null}
!184 = metadata !{i32 786689, metadata !21, metadata !"samples", metadata !6, i32 16777268, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [samples] [line 52]
!185 = metadata !{i32 52, i32 22, metadata !21, null}
!186 = metadata !{i32 786689, metadata !21, metadata !"minPeakHeight", metadata !6, i32 33554485, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [minPeakHeight] [line 53]
!187 = metadata !{i32 53, i32 13, metadata !21, null}
!188 = metadata !{i32 786689, metadata !21, metadata !"peak_locs", metadata !6, i32 50331702, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [peak_locs] [line 54]
!189 = metadata !{i32 54, i32 13, metadata !21, null}
!190 = metadata !{i32 786689, metadata !21, metadata !"peak_count", metadata !6, i32 67108919, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [peak_count] [line 55]
!191 = metadata !{i32 55, i32 13, metadata !21, null}
!192 = metadata !{i32 56, i32 4, metadata !21, null}
!193 = metadata !{i32 786688, metadata !194, metadata !"i", metadata !6, i32 57, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 57]
!194 = metadata !{i32 786443, metadata !5, metadata !21, i32 57, i32 4, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!195 = metadata !{i32 57, i32 12, metadata !194, null}
!196 = metadata !{i32 57, i32 8, metadata !194, null}
!197 = metadata !{i32 57, i32 8, metadata !198, null}
!198 = metadata !{i32 786443, metadata !5, metadata !199, i32 57, i32 8, i32 2, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!199 = metadata !{i32 786443, metadata !5, metadata !194, i32 57, i32 8, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!200 = metadata !{i32 59, i32 7, metadata !201, null}
!201 = metadata !{i32 786443, metadata !5, metadata !202, i32 59, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!202 = metadata !{i32 786443, metadata !5, metadata !194, i32 57, i32 39, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!203 = metadata !{i32 60, i32 7, metadata !204, null}
!204 = metadata !{i32 786443, metadata !5, metadata !205, i32 60, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!205 = metadata !{i32 786443, metadata !5, metadata !201, i32 59, i32 35, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!206 = metadata !{i32 60, i32 7, metadata !207, null}
!207 = metadata !{i32 786443, metadata !5, metadata !204, i32 60, i32 7, i32 1, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!208 = metadata !{i32 61, i32 4, metadata !209, null}
!209 = metadata !{i32 786443, metadata !5, metadata !204, i32 60, i32 63, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!210 = metadata !{i32 62, i32 4, metadata !209, null}
!211 = metadata !{i32 63, i32 4, metadata !209, null}
!212 = metadata !{i32 64, i32 4, metadata !205, null}
!213 = metadata !{i32 65, i32 4, metadata !202, null}
!214 = metadata !{i32 57, i32 34, metadata !194, null}
!215 = metadata !{i32 66, i32 1, metadata !21, null}
!216 = metadata !{i32 786689, metadata !27, metadata !"signal_i", metadata !6, i32 16777284, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signal_i] [line 68]
!217 = metadata !{i32 68, i32 18, metadata !27, null}
!218 = metadata !{i32 786689, metadata !27, metadata !"pks", metadata !6, i32 33554501, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pks] [line 69]
!219 = metadata !{i32 69, i32 10, metadata !27, null}
!220 = metadata !{i32 786689, metadata !27, metadata !"loc", metadata !6, i32 50331718, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 70]
!221 = metadata !{i32 70, i32 10, metadata !27, null}
!222 = metadata !{i32 786689, metadata !27, metadata !"candidates", metadata !6, i32 67108935, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [candidates] [line 71]
!223 = metadata !{i32 71, i32 11, metadata !27, null}
!224 = metadata !{i32 786689, metadata !27, metadata !"signal_o", metadata !6, i32 83886152, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [signal_o] [line 72]
!225 = metadata !{i32 72, i32 12, metadata !27, null}
!226 = metadata !{i32 74, i32 4, metadata !27, null}
!227 = metadata !{i32 786688, metadata !27, metadata !"index", metadata !6, i32 75, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 75]
!228 = metadata !{i32 75, i32 8, metadata !27, null}
!229 = metadata !{i32 75, i32 4, metadata !27, null}
!230 = metadata !{i32 786688, metadata !231, metadata !"i", metadata !6, i32 76, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 76]
!231 = metadata !{i32 786443, metadata !5, metadata !27, i32 76, i32 4, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!232 = metadata !{i32 76, i32 12, metadata !231, null}
!233 = metadata !{i32 76, i32 8, metadata !231, null}
!234 = metadata !{i32 76, i32 8, metadata !235, null}
!235 = metadata !{i32 786443, metadata !5, metadata !236, i32 76, i32 8, i32 2, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!236 = metadata !{i32 786443, metadata !5, metadata !231, i32 76, i32 8, i32 1, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!237 = metadata !{i32 786688, metadata !238, metadata !"loc_prev", metadata !6, i32 78, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc_prev] [line 78]
!238 = metadata !{i32 786443, metadata !5, metadata !231, i32 76, i32 35, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!239 = metadata !{i32 78, i32 8, metadata !238, null}
!240 = metadata !{i32 78, i32 4, metadata !238, null}
!241 = metadata !{i32 786688, metadata !238, metadata !"loc_curr", metadata !6, i32 79, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc_curr] [line 79]
!242 = metadata !{i32 79, i32 8, metadata !238, null}
!243 = metadata !{i32 79, i32 4, metadata !238, null}
!244 = metadata !{i32 786688, metadata !238, metadata !"loc_next", metadata !6, i32 80, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc_next] [line 80]
!245 = metadata !{i32 80, i32 8, metadata !238, null}
!246 = metadata !{i32 80, i32 4, metadata !238, null}
!247 = metadata !{i32 83, i32 7, metadata !248, null}
!248 = metadata !{i32 786443, metadata !5, metadata !238, i32 83, i32 7, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!249 = metadata !{i32 83, i32 7, metadata !250, null}
!250 = metadata !{i32 786443, metadata !5, metadata !248, i32 83, i32 7, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!251 = metadata !{i32 84, i32 4, metadata !252, null}
!252 = metadata !{i32 786443, metadata !5, metadata !248, i32 83, i32 69, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!253 = metadata !{i32 786688, metadata !252, metadata !"location", metadata !6, i32 86, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [location] [line 86]
!254 = metadata !{i32 86, i32 8, metadata !252, null}
!255 = metadata !{i32 86, i32 4, metadata !252, null}
!256 = metadata !{i32 786688, metadata !252, metadata !"b", metadata !6, i32 87, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 87]
!257 = metadata !{i32 87, i32 8, metadata !252, null}
!258 = metadata !{i32 87, i32 4, metadata !252, null}
!259 = metadata !{i32 786688, metadata !252, metadata !"e", metadata !6, i32 88, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 88]
!260 = metadata !{i32 88, i32 8, metadata !252, null}
!261 = metadata !{i32 88, i32 4, metadata !252, null}
!262 = metadata !{i32 90, i32 7, metadata !263, null}
!263 = metadata !{i32 786443, metadata !5, metadata !252, i32 90, i32 7, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!264 = metadata !{i32 90, i32 21, metadata !265, null}
!265 = metadata !{i32 786443, metadata !5, metadata !263, i32 90, i32 21, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!266 = metadata !{i32 91, i32 7, metadata !267, null}
!267 = metadata !{i32 786443, metadata !5, metadata !252, i32 91, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!268 = metadata !{i32 91, i32 22, metadata !269, null}
!269 = metadata !{i32 786443, metadata !5, metadata !267, i32 91, i32 22, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!270 = metadata !{i32 93, i32 4, metadata !252, null}
!271 = metadata !{i32 94, i32 4, metadata !252, null}
!272 = metadata !{i32 94, i32 4, metadata !273, null}
!273 = metadata !{i32 786443, metadata !5, metadata !252, i32 94, i32 4, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!274 = metadata !{i32 95, i32 4, metadata !275, null}
!275 = metadata !{i32 786443, metadata !5, metadata !252, i32 94, i32 17, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/signal_detection.cpp]
!276 = metadata !{i32 96, i32 4, metadata !275, null}
!277 = metadata !{i32 97, i32 4, metadata !275, null}
!278 = metadata !{i32 98, i32 4, metadata !275, null}
!279 = metadata !{i32 99, i32 4, metadata !252, null}
!280 = metadata !{i32 100, i32 4, metadata !238, null}
!281 = metadata !{i32 76, i32 30, metadata !231, null}
!282 = metadata !{i32 101, i32 1, metadata !27, null}
!283 = metadata !{i32 786689, metadata !30, metadata !"dat_i", metadata !6, i32 16777319, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dat_i] [line 103]
!284 = metadata !{i32 103, i32 25, metadata !30, null}
!285 = metadata !{i32 786689, metadata !30, metadata !"hits_o", metadata !6, i32 33554535, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hits_o] [line 103]
!286 = metadata !{i32 103, i32 46, metadata !30, null}
!287 = metadata !{i32 786689, metadata !30, metadata !"res_o", metadata !6, i32 50331751, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [res_o] [line 103]
!288 = metadata !{i32 103, i32 60, metadata !30, null}
!289 = metadata !{i32 786688, metadata !30, metadata !"dup1", metadata !6, i32 106, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dup1] [line 106]
!290 = metadata !{i32 106, i32 11, metadata !30, null}
!291 = metadata !{i32 106, i32 26, metadata !30, null}
!292 = metadata !{i32 786688, metadata !30, metadata !"dup2", metadata !6, i32 107, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dup2] [line 107]
!293 = metadata !{i32 107, i32 11, metadata !30, null}
!294 = metadata !{i32 107, i32 26, metadata !30, null}
!295 = metadata !{i32 786688, metadata !30, metadata !"dup3", metadata !6, i32 108, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dup3] [line 108]
!296 = metadata !{i32 108, i32 11, metadata !30, null}
!297 = metadata !{i32 108, i32 26, metadata !30, null}
!298 = metadata !{i32 786688, metadata !30, metadata !"dup4", metadata !6, i32 109, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dup4] [line 109]
!299 = metadata !{i32 109, i32 11, metadata !30, null}
!300 = metadata !{i32 109, i32 26, metadata !30, null}
!301 = metadata !{i32 786688, metadata !30, metadata !"pos_dat", metadata !6, i32 110, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos_dat] [line 110]
!302 = metadata !{i32 110, i32 11, metadata !30, null}
!303 = metadata !{i32 110, i32 29, metadata !30, null}
!304 = metadata !{i32 786688, metadata !30, metadata !"thres", metadata !6, i32 111, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thres] [line 111]
!305 = metadata !{i32 111, i32 10, metadata !30, null}
!306 = metadata !{i32 786688, metadata !30, metadata !"filtered_dat", metadata !6, i32 112, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filtered_dat] [line 112]
!307 = metadata !{i32 112, i32 11, metadata !30, null}
!308 = metadata !{i32 112, i32 34, metadata !30, null}
!309 = metadata !{i32 786688, metadata !30, metadata !"peak_locs", metadata !6, i32 113, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [peak_locs] [line 113]
!310 = metadata !{i32 113, i32 9, metadata !30, null}
!311 = metadata !{i32 113, i32 27, metadata !30, null}
!312 = metadata !{i32 786688, metadata !30, metadata !"peak_counts", metadata !6, i32 114, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [peak_counts] [line 114]
!313 = metadata !{i32 114, i32 8, metadata !30, null}
!314 = metadata !{i32 116, i32 4, metadata !30, null}
!315 = metadata !{i32 117, i32 4, metadata !30, null}
!316 = metadata !{i32 118, i32 4, metadata !30, null}
!317 = metadata !{i32 119, i32 4, metadata !30, null}
!318 = metadata !{i32 120, i32 4, metadata !30, null}
!319 = metadata !{i32 121, i32 4, metadata !30, null}
!320 = metadata !{i32 122, i32 4, metadata !30, null}
!321 = metadata !{i32 123, i32 4, metadata !30, null}
!322 = metadata !{i32 124, i32 1, metadata !30, null}
