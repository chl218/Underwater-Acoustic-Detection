; ModuleID = 'C:/Users/Jack/workspace/signal-detection/src/main.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ERROR: sds_alloc failed.\0A\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"audio.dat\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"ERROR: fopen failed.\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c"candidate%d.dat\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"w\00", align 1

define i32 @main() #0 {
  %1 = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 4
  %dat_i = alloca float*, align 4
  %hits_o = alloca i32, align 4
  %res_o = alloca float*, align 4
  %val = alloca float, align 4
  %i = alloca i32, align 4
  %fp1 = alloca %struct._IO_FILE*, align 4
  %filename = alloca [16 x i8], align 1
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %fp}, metadata !142), !dbg !146
  call void @llvm.dbg.declare(metadata !{float** %dat_i}, metadata !147), !dbg !150
  %2 = call i8* @sds_alloc(i32 480000), !dbg !151
  %3 = bitcast i8* %2 to float*, !dbg !151
  store float* %3, float** %dat_i, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata !{i32* %hits_o}, metadata !152), !dbg !153
  call void @llvm.dbg.declare(metadata !{float** %res_o}, metadata !154), !dbg !155
  %4 = call i8* @sds_alloc(i32 480000), !dbg !156
  %5 = bitcast i8* %4 to float*, !dbg !156
  store float* %5, float** %res_o, align 4, !dbg !156
  %6 = load float** %dat_i, align 4, !dbg !157
  %7 = icmp ne float* %6, null, !dbg !157
  br i1 %7, label %8, label %11, !dbg !157

; <label>:8                                       ; preds = %0
  %9 = load float** %res_o, align 4, !dbg !159
  %10 = icmp ne float* %9, null, !dbg !159
  br i1 %10, label %25, label %11, !dbg !159

; <label>:11                                      ; preds = %8, %0
  %12 = load float** %dat_i, align 4, !dbg !161
  %13 = icmp ne float* %12, null, !dbg !161
  br i1 %13, label %14, label %17, !dbg !161

; <label>:14                                      ; preds = %11
  %15 = load float** %dat_i, align 4, !dbg !164
  %16 = bitcast float* %15 to i8*, !dbg !164
  call void @sds_free(i8* %16), !dbg !164
  br label %17, !dbg !164

; <label>:17                                      ; preds = %14, %11
  %18 = load float** %res_o, align 4, !dbg !166
  %19 = icmp ne float* %18, null, !dbg !166
  br i1 %19, label %20, label %23, !dbg !166

; <label>:20                                      ; preds = %17
  %21 = load float** %res_o, align 4, !dbg !168
  %22 = bitcast float* %21 to i8*, !dbg !168
  call void @sds_free(i8* %22), !dbg !168
  br label %23, !dbg !168

; <label>:23                                      ; preds = %20, %17
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str, i32 0, i32 0)), !dbg !170
  call void @exit(i32 1) #4, !dbg !171
  unreachable, !dbg !171

; <label>:25                                      ; preds = %8
  %26 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !172
  store %struct._IO_FILE* %26, %struct._IO_FILE** %fp, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata !{float* %val}, metadata !173), !dbg !174
  %27 = load %struct._IO_FILE** %fp, align 4, !dbg !175
  %28 = icmp ne %struct._IO_FILE* %27, null, !dbg !175
  br i1 %28, label %31, label %29, !dbg !175

; <label>:29                                      ; preds = %25
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0)), !dbg !177
  call void @exit(i32 1) #4, !dbg !179
  unreachable, !dbg !179

; <label>:31                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !180), !dbg !181
  store i32 0, i32* %i, align 4, !dbg !182
  br label %32, !dbg !183

; <label>:32                                      ; preds = %41, %31
  %33 = load i32* %i, align 4, !dbg !184
  %34 = add nsw i32 %33, 1, !dbg !184
  store i32 %34, i32* %i, align 4, !dbg !184
  %35 = icmp slt i32 %33, 120000, !dbg !184
  br i1 %35, label %36, label %46, !dbg !184

; <label>:36                                      ; preds = %32
  %37 = load %struct._IO_FILE** %fp, align 4, !dbg !186
  %38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), float* %val), !dbg !186
  %39 = icmp ne i32 %38, 0, !dbg !186
  br i1 %39, label %41, label %40, !dbg !186

; <label>:40                                      ; preds = %36
  br label %46, !dbg !189

; <label>:41                                      ; preds = %36
  %42 = load float* %val, align 4, !dbg !191
  %43 = load i32* %i, align 4, !dbg !191
  %44 = load float** %dat_i, align 4, !dbg !191
  %45 = getelementptr inbounds float* %44, i32 %43, !dbg !191
  store float %42, float* %45, align 4, !dbg !191
  br label %32, !dbg !192

; <label>:46                                      ; preds = %40, %32
  %47 = load float** %dat_i, align 4, !dbg !193
  %48 = load float** %res_o, align 4, !dbg !193
  call void @_Z12detect_callsPfRiS_(float* %47, i32* dereferenceable(4) %hits_o, float* %48), !dbg !193
  store i32 0, i32* %i, align 4, !dbg !194
  br label %49, !dbg !195

; <label>:49                                      ; preds = %52, %46
  %50 = load i32* %hits_o, align 4, !dbg !196
  %51 = icmp sgt i32 %50, 0, !dbg !196
  br i1 %51, label %52, label %59, !dbg !196

; <label>:52                                      ; preds = %49
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %fp1}, metadata !198), !dbg !200
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %filename}, metadata !201), !dbg !205
  %53 = getelementptr inbounds [16 x i8]* %filename, i32 0, i32 0, !dbg !206
  %54 = load i32* %i, align 4, !dbg !206
  %55 = add nsw i32 %54, 1, !dbg !206
  store i32 %55, i32* %i, align 4, !dbg !206
  %56 = call i32 (i8*, i8*, ...)* @sprintf(i8* %53, i8* getelementptr inbounds ([16 x i8]* @.str5, i32 0, i32 0), i32 %54) #5, !dbg !206
  %57 = getelementptr inbounds [16 x i8]* %filename, i32 0, i32 0, !dbg !207
  %58 = call %struct._IO_FILE* @fopen(i8* %57, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !dbg !207
  store %struct._IO_FILE* %58, %struct._IO_FILE** %fp1, align 4, !dbg !207
  br label %49, !dbg !208

; <label>:59                                      ; preds = %49
  %60 = load float** %dat_i, align 4, !dbg !209
  %61 = bitcast float* %60 to i8*, !dbg !209
  call void @sds_free(i8* %61), !dbg !209
  %62 = load float** %res_o, align 4, !dbg !210
  %63 = bitcast float* %62 to i8*, !dbg !210
  call void @sds_free(i8* %63), !dbg !210
  ret i32 0, !dbg !211
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i8* @sds_alloc(i32) #0

declare void @sds_free(i8*) #0

declare i32 @printf(i8*, ...) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #0

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #0

declare void @_Z12detect_callsPfRiS_(float*, i32* dereferenceable(4), float*) #0

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!xidane.function_declaration_type = !{!105, !123, !107, !124, !109, !125, !111, !126, !113, !127, !115, !128, !117, !129, !119, !130, !121, !131}
!xidane.function_declaration_filename = !{!105, !132, !107, !133, !109, !133, !111, !134, !113, !135, !115, !134, !117, !134, !119, !136, !121, !134}
!xidane.ExternC = !{!107, !109, !111, !113, !115, !117, !121}
!llvm.module.flags = !{!137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !3, metadata !76, metadata !82, metadata !87, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\Jack\workspace\signal-detection\Release/../src\main.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src\5Cmain.cpp", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !19, metadata !21, metadata !75}
!4 = metadata !{i32 786451, metadata !5, null, metadata !"", i32 82, i64 64, i64 32, i32 0, i32 0, null, metadata !6, i32 0, null, null, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_structure_type ] [line 82, size 64, align 32, offset 0] [def] [from ]
!5 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cwchar.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!6 = metadata !{metadata !7, metadata !9}
!7 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__count", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [__count] [line 84, size 32, align 32, offset 0] [from int]
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__value", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !"_ZTSN11__mbstate_tUt_E"} ; [ DW_TAG_member ] [__value] [line 93, size 32, align 32, offset 32] [from _ZTSN11__mbstate_tUt_E]
!10 = metadata !{i32 786455, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"", i32 85, i64 32, i64 32, i64 0, i32 0, null, metadata !11, i32 0, null, null, metadata !"_ZTSN11__mbstate_tUt_E"} ; [ DW_TAG_union_type ] [line 85, size 32, align 32, offset 0] [def] [from ]
!11 = metadata !{metadata !12, metadata !14}
!12 = metadata !{i32 786445, metadata !5, metadata !"_ZTSN11__mbstate_tUt_E", metadata !"__wch", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [__wch] [line 88, size 32, align 32, offset 0] [from unsigned int]
!13 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!14 = metadata !{i32 786445, metadata !5, metadata !"_ZTSN11__mbstate_tUt_E", metadata !"__wchb", i32 92, i64 32, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [__wchb] [line 92, size 32, align 8, offset 0] [from ]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !16, metadata !17, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"lconv", i32 53, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS5lconv"} ; [ DW_TAG_structure_type ] [lconv] [line 53, size 0, align 0, offset 0] [decl] [from ]
!20 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clocale.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!21 = metadata !{i32 786451, metadata !22, null, metadata !"_IO_FILE", i32 245, i64 1216, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null, metadata !"_ZTS8_IO_FILE"} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1216, align 64, offset 0] [def] [from ]
!22 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clibio.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!23 = metadata !{metadata !24, metadata !25, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !39, metadata !41, metadata !42, metadata !43, metadata !47, metadata !49, metadata !51, metadata !55, metadata !58, metadata !62, metadata !64, metadata !65, metadata !66, metadata !67, metadata !70, metadata !71}
!24 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_read_ptr", i32 251, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 32, align 32, offset 32] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!27 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_read_end", i32 252, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 32, align 32, offset 64] [from ]
!28 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_read_base", i32 253, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 32, align 32, offset 96] [from ]
!29 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_write_base", i32 254, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 32, align 32, offset 128] [from ]
!30 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_write_ptr", i32 255, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 32, align 32, offset 160] [from ]
!31 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_write_end", i32 256, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 32, align 32, offset 192] [from ]
!32 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_buf_base", i32 257, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 32, align 32, offset 224] [from ]
!33 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_buf_end", i32 258, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 32, align 32, offset 256] [from ]
!34 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_save_base", i32 260, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 32, align 32, offset 288] [from ]
!35 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_backup_base", i32 261, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 32, align 32, offset 320] [from ]
!36 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_IO_save_end", i32 262, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 32, align 32, offset 352] [from ]
!37 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_markers", i32 264, i64 32, i64 32, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [_markers] [line 264, size 32, align 32, offset 384] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS10_IO_marker"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS10_IO_marker]
!39 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_chain", i32 266, i64 32, i64 32, i64 416, i32 0, metadata !40} ; [ DW_TAG_member ] [_chain] [line 266, size 32, align 32, offset 416] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !"_ZTS8_IO_FILE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _ZTS8_IO_FILE]
!41 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_fileno", i32 268, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 448] [from int]
!42 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_flags2", i32 272, i64 32, i64 32, i64 480, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 480] [from int]
!43 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_old_offset", i32 274, i64 32, i64 32, i64 512, i32 0, metadata !44} ; [ DW_TAG_member ] [_old_offset] [line 274, size 32, align 32, offset 512] [from __off_t]
!44 = metadata !{i32 786454, metadata !45, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!45 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!46 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!47 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_cur_column", i32 278, i64 16, i64 16, i64 544, i32 0, metadata !48} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 544] [from unsigned short]
!48 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!49 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 560, i32 0, metadata !50} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 560] [from signed char]
!50 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!51 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 568, i32 0, metadata !52} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 568] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !16, metadata !53, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!55 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_lock", i32 284, i64 32, i64 32, i64 576, i32 0, metadata !56} ; [ DW_TAG_member ] [_lock] [line 284, size 32, align 32, offset 576] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_lock_t]
!57 = metadata !{i32 786454, metadata !22, null, metadata !"_IO_lock_t", i32 154, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_typedef ] [_IO_lock_t] [line 154, size 0, align 0, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_offset", i32 293, i64 64, i64 64, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 640] [from __off64_t]
!59 = metadata !{i32 786454, metadata !45, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from __quad_t]
!60 = metadata !{i32 786454, metadata !45, null, metadata !"__quad_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__quad_t] [line 55, size 0, align 0, offset 0] [from long long int]
!61 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!62 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"__pad1", i32 302, i64 32, i64 32, i64 704, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad1] [line 302, size 32, align 32, offset 704] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"__pad2", i32 303, i64 32, i64 32, i64 736, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad2] [line 303, size 32, align 32, offset 736] [from ]
!65 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"__pad3", i32 304, i64 32, i64 32, i64 768, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad3] [line 304, size 32, align 32, offset 768] [from ]
!66 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"__pad4", i32 305, i64 32, i64 32, i64 800, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad4] [line 305, size 32, align 32, offset 800] [from ]
!67 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"__pad5", i32 306, i64 32, i64 32, i64 832, i32 0, metadata !68} ; [ DW_TAG_member ] [__pad5] [line 306, size 32, align 32, offset 832] [from size_t]
!68 = metadata !{i32 786454, metadata !69, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!69 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!70 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_mode", i32 308, i64 32, i64 32, i64 864, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 864] [from int]
!71 = metadata !{i32 786445, metadata !22, metadata !"_ZTS8_IO_FILE", metadata !"_unused2", i32 310, i64 320, i64 8, i64 896, i32 0, metadata !72} ; [ DW_TAG_member ] [_unused2] [line 310, size 320, align 8, offset 896] [from ]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !16, metadata !73, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 40}       ; [ DW_TAG_subrange_type ] [0, 39]
!75 = metadata !{i32 786451, metadata !22, null, metadata !"_IO_marker", i32 160, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS10_IO_marker"} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 0, align 0, offset 0] [decl] [from ]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786478, metadata !78, metadata !79, metadata !"main", metadata !"main", metadata !"", i32 14, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [main]
!78 = metadata !{metadata !"C:/Users/Jack/workspace/signal-detection/src/main.cpp", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!79 = metadata !{i32 786473, metadata !78}        ; [ DW_TAG_file_type ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!80 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !8}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786484, i32 0, null, metadata !"SAMPLES", metadata !"SAMPLES", metadata !"", metadata !84, i32 19, metadata !86, i32 1, i32 1, i32 120000, null} ; [ DW_TAG_variable ] [SAMPLES] [line 19] [local] [def]
!84 = metadata !{i32 786473, metadata !85}        ; [ DW_TAG_file_type ] [C:\Users\Jack\workspace\signal-detection\Release/../src/definitions.h]
!85 = metadata !{metadata !"../src/definitions.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!86 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!87 = metadata !{metadata !88, metadata !94, metadata !97, metadata !99, metadata !102, metadata !104}
!88 = metadata !{i32 786490, metadata !89, metadata !91, i32 56} ; [ DW_TAG_imported_module ]
!89 = metadata !{i32 786489, metadata !90, null, metadata !"__gnu_debug", i32 54} ; [ DW_TAG_namespace ] [__gnu_debug] [line 54]
!90 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/5.2.1\5Cdebug/debug.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!91 = metadata !{i32 786489, metadata !90, metadata !92, metadata !"__debug", i32 48} ; [ DW_TAG_namespace ] [__debug] [line 48]
!92 = metadata !{i32 786489, metadata !93, null, metadata !"std", i32 194} ; [ DW_TAG_namespace ] [std] [line 194]
!93 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/5.2.1/arm-linux-gnueabihf\5Cbits/c++config.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!94 = metadata !{i32 786440, metadata !92, metadata !95, i32 64} ; [ DW_TAG_imported_declaration ]
!95 = metadata !{i32 786454, metadata !5, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!96 = metadata !{i32 786454, metadata !5, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from _ZTS11__mbstate_t]
!97 = metadata !{i32 786440, metadata !92, metadata !98, i32 139} ; [ DW_TAG_imported_declaration ]
!98 = metadata !{i32 786454, metadata !69, null, metadata !"wint_t", i32 357, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [wint_t] [line 357, size 0, align 0, offset 0] [from unsigned int]
!99 = metadata !{i32 786440, metadata !100, metadata !101, i32 44} ; [ DW_TAG_imported_declaration ]
!100 = metadata !{i32 786489, metadata !93, null, metadata !"__gnu_cxx", i32 220} ; [ DW_TAG_namespace ] [__gnu_cxx] [line 220]
!101 = metadata !{i32 786454, metadata !93, metadata !92, metadata !"size_t", i32 196, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [size_t] [line 196, size 0, align 0, offset 0] [from unsigned int]
!102 = metadata !{i32 786440, metadata !100, metadata !103, i32 45} ; [ DW_TAG_imported_declaration ]
!103 = metadata !{i32 786454, metadata !93, metadata !92, metadata !"ptrdiff_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 197, size 0, align 0, offset 0] [from int]
!104 = metadata !{i32 786440, metadata !92, metadata !"_ZTS5lconv", i32 53} ; [ DW_TAG_imported_declaration ]
!105 = metadata !{i32 ()* @main}
!106 = metadata !{metadata !"main"}
!107 = metadata !{i8* (i32)* @sds_alloc}
!108 = metadata !{metadata !"sds_alloc"}
!109 = metadata !{void (i8*)* @sds_free}
!110 = metadata !{metadata !"sds_free"}
!111 = metadata !{i32 (i8*, ...)* @printf}
!112 = metadata !{metadata !"printf"}
!113 = metadata !{void (i32)* @exit}
!114 = metadata !{metadata !"exit"}
!115 = metadata !{%struct._IO_FILE* (i8*, i8*)* @fopen}
!116 = metadata !{metadata !"fopen"}
!117 = metadata !{i32 (%struct._IO_FILE*, i8*, ...)* @fscanf}
!118 = metadata !{metadata !"fscanf"}
!119 = metadata !{void (float*, i32*, float*)* @_Z12detect_callsPfRiS_}
!120 = metadata !{metadata !"detect_calls"}
!121 = metadata !{i32 (i8*, i8*, ...)* @sprintf}
!122 = metadata !{metadata !"sprintf"}
!123 = metadata !{metadata !"int."}
!124 = metadata !{metadata !"void .unsigned int.0"}
!125 = metadata !{metadata !"void.void *.1"}
!126 = metadata !{metadata !"int.const char *restrict.1"}
!127 = metadata !{metadata !"void.int.0"}
!128 = metadata !{metadata !"FILE .const char *restrict.1.const char *restrict.1"}
!129 = metadata !{metadata !"int.FILE *restrict.1.const char *restrict.1"}
!130 = metadata !{metadata !"void.float [120000].1.int &.0.float [120000].1"}
!131 = metadata !{metadata !"int.char *restrict.1.const char *restrict.1"}
!132 = metadata !{metadata !"C:/Users/Jack/workspace/signal-detection/src/main.cpp"}
!133 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/aarch32-linux/include\5Csds_lib.h"}
!134 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!135 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!136 = metadata !{metadata !"../src/signal_detection.h"}
!137 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!138 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!139 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!140 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!141 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!142 = metadata !{i32 786688, metadata !77, metadata !"fp", metadata !79, i32 16, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 16]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FILE]
!144 = metadata !{i32 786454, metadata !145, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS8_IO_FILE"} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _ZTS8_IO_FILE]
!145 = metadata !{metadata !"C:/Xilinx/SDx/2016.4/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h", metadata !"C:\5CUsers\5CJack\5Cworkspace\5Csignal-detection\5CRelease"}
!146 = metadata !{i32 16, i32 10, metadata !77, null}
!147 = metadata !{i32 786688, metadata !77, metadata !"dat_i", metadata !79, i32 17, metadata !148, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dat_i] [line 17]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!149 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!150 = metadata !{i32 17, i32 11, metadata !77, null}
!151 = metadata !{i32 17, i32 27, metadata !77, null}
!152 = metadata !{i32 786688, metadata !77, metadata !"hits_o", metadata !79, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hits_o] [line 18]
!153 = metadata !{i32 18, i32 10, metadata !77, null}
!154 = metadata !{i32 786688, metadata !77, metadata !"res_o", metadata !79, i32 19, metadata !148, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res_o] [line 19]
!155 = metadata !{i32 19, i32 11, metadata !77, null}
!156 = metadata !{i32 19, i32 27, metadata !77, null}
!157 = metadata !{i32 21, i32 7, metadata !158, null}
!158 = metadata !{i32 786443, metadata !78, metadata !77, i32 21, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!159 = metadata !{i32 21, i32 7, metadata !160, null}
!160 = metadata !{i32 786443, metadata !78, metadata !158, i32 21, i32 7, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!161 = metadata !{i32 22, i32 8, metadata !162, null}
!162 = metadata !{i32 786443, metadata !78, metadata !163, i32 22, i32 8, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!163 = metadata !{i32 786443, metadata !78, metadata !158, i32 21, i32 25, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!164 = metadata !{i32 22, i32 15, metadata !165, null}
!165 = metadata !{i32 786443, metadata !78, metadata !162, i32 22, i32 15, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!166 = metadata !{i32 23, i32 8, metadata !167, null}
!167 = metadata !{i32 786443, metadata !78, metadata !163, i32 23, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!168 = metadata !{i32 23, i32 15, metadata !169, null}
!169 = metadata !{i32 786443, metadata !78, metadata !167, i32 23, i32 15, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!170 = metadata !{i32 24, i32 5, metadata !163, null}
!171 = metadata !{i32 25, i32 5, metadata !163, null}
!172 = metadata !{i32 28, i32 9, metadata !77, null}
!173 = metadata !{i32 786688, metadata !77, metadata !"val", metadata !79, i32 29, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 29]
!174 = metadata !{i32 29, i32 10, metadata !77, null}
!175 = metadata !{i32 31, i32 7, metadata !176, null}
!176 = metadata !{i32 786443, metadata !78, metadata !77, i32 31, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!177 = metadata !{i32 32, i32 5, metadata !178, null}
!178 = metadata !{i32 786443, metadata !78, metadata !176, i32 31, i32 12, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!179 = metadata !{i32 33, i32 5, metadata !178, null}
!180 = metadata !{i32 786688, metadata !77, metadata !"i", metadata !79, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 36]
!181 = metadata !{i32 36, i32 8, metadata !77, null}
!182 = metadata !{i32 36, i32 4, metadata !77, null}
!183 = metadata !{i32 37, i32 4, metadata !77, null}
!184 = metadata !{i32 37, i32 4, metadata !185, null}
!185 = metadata !{i32 786443, metadata !78, metadata !77, i32 37, i32 4, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!186 = metadata !{i32 38, i32 11, metadata !187, null}
!187 = metadata !{i32 786443, metadata !78, metadata !188, i32 38, i32 10, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!188 = metadata !{i32 786443, metadata !78, metadata !77, i32 37, i32 25, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!189 = metadata !{i32 39, i32 8, metadata !190, null}
!190 = metadata !{i32 786443, metadata !78, metadata !187, i32 38, i32 35, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!191 = metadata !{i32 41, i32 7, metadata !188, null}
!192 = metadata !{i32 42, i32 4, metadata !188, null}
!193 = metadata !{i32 44, i32 4, metadata !77, null}
!194 = metadata !{i32 46, i32 4, metadata !77, null}
!195 = metadata !{i32 47, i32 4, metadata !77, null}
!196 = metadata !{i32 47, i32 4, metadata !197, null}
!197 = metadata !{i32 786443, metadata !78, metadata !77, i32 47, i32 4, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!198 = metadata !{i32 786688, metadata !199, metadata !"fp", metadata !79, i32 48, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 48]
!199 = metadata !{i32 786443, metadata !78, metadata !77, i32 47, i32 22, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\Jack\workspace\signal-detection\Release/C:/Users/Jack/workspace/signal-detection/src/main.cpp]
!200 = metadata !{i32 48, i32 11, metadata !199, null}
!201 = metadata !{i32 786688, metadata !199, metadata !"filename", metadata !79, i32 49, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 49]
!202 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !16, metadata !203, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!203 = metadata !{metadata !204}
!204 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!205 = metadata !{i32 49, i32 10, metadata !199, null}
!206 = metadata !{i32 50, i32 5, metadata !199, null}
!207 = metadata !{i32 51, i32 10, metadata !199, null}
!208 = metadata !{i32 53, i32 4, metadata !199, null}
!209 = metadata !{i32 57, i32 4, metadata !77, null}
!210 = metadata !{i32 58, i32 4, metadata !77, null} ; [ DW_TAG_imported_module ]
!211 = metadata !{i32 59, i32 4, metadata !77, null}
