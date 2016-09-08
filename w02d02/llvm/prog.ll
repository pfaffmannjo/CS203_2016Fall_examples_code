; ModuleID = 'prog.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@fh = global %struct.__sFILE* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"The fibonacci number of 10 is %d\0A\00", align 1
@str2 = global i8* getelementptr inbounds ([34 x i8]* @.str, i32 0, i32 0), align 8
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [34 x i8] c"prog <file-name> <quoted-string>\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@.str3 = private unnamed_addr constant [27 x i8] c"The fibonacci of 10 is %d\0A\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c"File could not be opened\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str7 = private unnamed_addr constant [25 x i8] c"File could not be closed\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %value_store = alloca i32, align 4
  %str1 = alloca i8*, align 8
  %str3 = alloca i8*, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32* %2, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8
  %8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([34 x i8]* @.str1, i32 0, i32 0))
  store i32 1, i32* %1
  br label %24

; <label>:9                                       ; preds = %0
  store i32 4, i32* %value_store, align 4
  %10 = load %struct.__sFILE** @__stdoutp, align 8
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i32* %value_store)
  %12 = load i8*** %3, align 8
  %13 = getelementptr inbounds i8** %12, i64 1
  %14 = load i8** %13, align 8
  call void @open_file(i8* %14)
  %15 = load i8*** %3, align 8
  %16 = getelementptr inbounds i8** %15, i64 2
  %17 = load i8** %16, align 8
  call void @write_input_string(i8* %17)
  store i8* getelementptr inbounds ([27 x i8]* @.str3, i32 0, i32 0), i8** %str1, align 8
  %18 = load %struct.__sFILE** @fh, align 8
  %19 = load i8** %str1, align 8
  %20 = call i32 @fibonacci(i32 10)
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* %19, i32 %20)
  %22 = load %struct.__sFILE** @fh, align 8
  call void @close_file()
  %23 = call i8* @malloc(i64 10)
  store i8* %23, i8** %str3, align 8
  store i32 0, i32* %1
  br label %24

; <label>:24                                      ; preds = %9, %6
  %25 = load i32* %1
  ret i32 %25
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define void @open_file(i8* %file_name) #0 {
  %1 = alloca i8*, align 8
  store i8* %file_name, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call %struct.__sFILE* @"\01_fopen"(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0))
  store %struct.__sFILE* %3, %struct.__sFILE** @fh, align 8
  %4 = icmp ne %struct.__sFILE* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  call void @perror(i8* getelementptr inbounds ([25 x i8]* @.str5, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @write_input_string(i8* %str) #0 {
  %1 = alloca i8*, align 8
  store i8* %str, i8** %1, align 8
  %2 = load %struct.__sFILE** @fh, align 8
  %3 = load i8** %1, align 8
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0), i8* %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @fibonacci(i32 %val) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %val2 = alloca i32, align 4
  store i32 %val, i32* %2, align 4
  %3 = load i32* %2, align 4
  store i32 %3, i32* %val2, align 4
  %4 = load i32* %val2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %1
  br label %19

; <label>:7                                       ; preds = %0
  %8 = load i32* %val2, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  store i32 1, i32* %1
  br label %19

; <label>:11                                      ; preds = %7
  %12 = load i32* %val2, align 4
  %13 = sub nsw i32 %12, 1
  %14 = call i32 @fibonacci(i32 %13)
  %15 = load i32* %val2, align 4
  %16 = sub nsw i32 %15, 2
  %17 = call i32 @fibonacci(i32 %16)
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %1
  br label %19

; <label>:19                                      ; preds = %11, %10, %6
  %20 = load i32* %1
  ret i32 %20
}

declare i8* @malloc(i64) #1

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

declare void @perror(i8*) #1

; Function Attrs: nounwind ssp uwtable
define void @close_file() #0 {
  %1 = load %struct.__sFILE** @fh, align 8
  %2 = call i32 @fclose(%struct.__sFILE* %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  call void @perror(i8* getelementptr inbounds ([25 x i8]* @.str7, i32 0, i32 0))
  br label %5

; <label>:5                                       ; preds = %4, %0
  ret void
}

declare i32 @fclose(%struct.__sFILE*) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.2 (clang-700.1.81)"}
