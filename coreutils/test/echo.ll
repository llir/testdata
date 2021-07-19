; ModuleID = 'coreutils-8.32/src/echo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"status == EXIT_SUCCESS\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"src/echo.c\00", align 1
@__PRETTY_FUNCTION__.usage = private unnamed_addr constant [16 x i8] c"void usage(int)\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"Echo the STRING(s) to standard output.\0A\0A  -n             do not output the trailing newline\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [132 x i8] c"  -e             enable interpretation of backslash escapes\0A  -E             disable interpretation of backslash escapes (default)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [229 x i8] c"  \\\\      backslash\0A  \\a      alert (BEL)\0A  \\b      backspace\0A  \\c      produce no further output\0A  \\e      escape\0A  \\f      form feed\0A  \\n      new line\0A  \\r      carriage return\0A  \\t      horizontal tab\0A  \\v      vertical tab\0A\00", align 1
@.str.9 = private unnamed_addr constant [110 x i8] c"  \\0NNN   byte with octal value NNN (1 to 3 digits)\0A  \\xHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1
@.str.10 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), align 8, !dbg !0
@.str.37 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !24
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !32
@.str.52 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.53 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.54 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.55 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.56 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.58 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.59 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.60 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.61 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !78
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !84
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !96
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !103
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !110
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !98
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !112
@.str.71 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.72 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.73 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.74 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.75 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.76 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.77 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.78 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.79 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.80 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.81 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.82 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.83 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.84 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.85 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.86 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.89 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.90 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.91 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.92 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.93 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.94 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.95 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !118
@.str.1.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !572 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !576, metadata !DIExpression()), !dbg !577
  %2 = icmp eq i32 %0, 0, !dbg !578
  br i1 %2, label %4, label %3, !dbg !581

3:                                                ; preds = %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.usage, i64 0, i64 0)) #25, !dbg !578
  unreachable, !dbg !578

4:                                                ; preds = %1
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 5) #26, !dbg !582
  %6 = load i8*, i8** @program_name, align 8, !dbg !582, !tbaa !583
  %7 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* %6, i8* %6) #26, !dbg !582
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 5) #26, !dbg !587
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !587, !tbaa !583
  %10 = tail call i32 @fputs_unlocked(i8* %8, %struct._IO_FILE* %9), !dbg !587
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), i32 5) #26, !dbg !588
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !588, !tbaa !583
  %13 = tail call i32 @fputs_unlocked(i8* %11, %struct._IO_FILE* %12), !dbg !588
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #26, !dbg !589
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !589, !tbaa !583
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15), !dbg !589
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #26, !dbg !590
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !590, !tbaa !583
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18), !dbg !590
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 5) #26, !dbg !591
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !591, !tbaa !583
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21), !dbg !591
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.8, i64 0, i64 0), i32 5) #26, !dbg !592
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !592, !tbaa !583
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24), !dbg !592
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.9, i64 0, i64 0), i32 5) #26, !dbg !593
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !593, !tbaa !583
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27), !dbg !593
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.10, i64 0, i64 0), i32 5) #26, !dbg !594
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #26, !dbg !594
  tail call fastcc void @emit_ancillary_info(), !dbg !595
  tail call void @exit(i32 0) #25, !dbg !596
  unreachable, !dbg !596
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !597 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !601 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #6 !dbg !657 {
  %1 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), metadata !662, metadata !DIExpression()), !dbg !676
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !677
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #26, !dbg !677
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !663, metadata !DIExpression()), !dbg !678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %2, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !678
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), metadata !672, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !673, metadata !DIExpression()), !dbg !676
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !679
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !673, metadata !DIExpression()), !dbg !676
  br label %4, !dbg !680

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !673, metadata !DIExpression()), !dbg !676
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* nonnull %5) #27, !dbg !681
  %8 = icmp eq i32 %7, 0, !dbg !681
  br i1 %8, label %14, label %9, !dbg !680

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !682
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !673, metadata !DIExpression()), !dbg !676
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !683
  %12 = load i8*, i8** %11, align 8, !dbg !683, !tbaa !684
  %13 = icmp eq i8* %12, null, !dbg !686
  br i1 %13, label %14, label %4, !dbg !687, !llvm.loop !688

14:                                               ; preds = %4, %9
  %15 = phi %struct.infomap* [ %6, %4 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !690
  %17 = load i8*, i8** %16, align 8, !dbg !690, !tbaa !692
  %18 = icmp eq i8* %17, null, !dbg !693
  %19 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %17, !dbg !694
  call void @llvm.dbg.value(metadata i8* %19, metadata !672, metadata !DIExpression()), !dbg !676
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #26, !dbg !695
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #26, !dbg !695
  %22 = tail call i8* @setlocale(i32 5, i8* null) #26, !dbg !696
  call void @llvm.dbg.value(metadata i8* %22, metadata !675, metadata !DIExpression()), !dbg !676
  %23 = icmp eq i8* %22, null, !dbg !697
  br i1 %23, label %31, label %24, !dbg !699

24:                                               ; preds = %14
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #27, !dbg !700
  %26 = icmp eq i32 %25, 0, !dbg !700
  br i1 %26, label %31, label %27, !dbg !701

27:                                               ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #26, !dbg !702
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702, !tbaa !583
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !702
  br label %31, !dbg !704

31:                                               ; preds = %27, %24, %14
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #26, !dbg !705
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #26, !dbg !705
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #26, !dbg !706
  %35 = icmp eq i8* %19, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), !dbg !706
  %36 = select i1 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !706
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* %19, i8* %36) #26, !dbg !706
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #26, !dbg !707
  ret void, !dbg !707
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !708 i8* @setlocale(i32, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #9 !dbg !712 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %1, metadata !718, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 1, metadata !719, metadata !DIExpression()), !dbg !740
  %3 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #26, !dbg !741
  %4 = icmp eq i8* %3, null, !dbg !741
  call void @llvm.dbg.value(metadata i1 %4, metadata !720, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !740
  br i1 %4, label %12, label %5, !dbg !742

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !743
  br i1 %6, label %7, label %12, !dbg !744

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !745
  %9 = load i8*, i8** %8, align 8, !dbg !745, !tbaa !583
  %10 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #27, !dbg !745
  %11 = icmp eq i32 %10, 0, !dbg !745
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i1 %13, metadata !721, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !740
  call void @llvm.dbg.value(metadata i8 0, metadata !722, metadata !DIExpression()), !dbg !740
  %14 = load i8*, i8** %1, align 8, !dbg !746, !tbaa !583
  tail call void @set_program_name(i8* %14) #26, !dbg !747
  %15 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #26, !dbg !748
  %16 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #26, !dbg !749
  %17 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #26, !dbg !750
  %18 = tail call i32 @atexit(void ()* nonnull @close_stdout) #26, !dbg !751
  %19 = icmp eq i32 %0, 2
  %20 = and i1 %19, %13, !dbg !752
  br i1 %20, label %21, label %33, !dbg !752

21:                                               ; preds = %12
  %22 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !754
  %23 = load i8*, i8** %22, align 8, !dbg !754, !tbaa !583
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %23, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #27, !dbg !754
  %25 = icmp eq i32 %24, 0, !dbg !754
  br i1 %25, label %26, label %27, !dbg !757

26:                                               ; preds = %21
  tail call void @usage(i32 0) #28, !dbg !758
  unreachable, !dbg !758

27:                                               ; preds = %21
  %28 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %23, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #27, !dbg !759
  %29 = icmp eq i32 %28, 0, !dbg !759
  br i1 %29, label %30, label %33, !dbg !761

30:                                               ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !583
  %32 = load i8*, i8** @Version, align 8, !dbg !764, !tbaa !583
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* null) #26, !dbg !765
  br label %266, !dbg !766

33:                                               ; preds = %27, %12
  %34 = add nsw i32 %0, -1, !dbg !767
  call void @llvm.dbg.value(metadata i32 %34, metadata !717, metadata !DIExpression()), !dbg !740
  %35 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !768
  call void @llvm.dbg.value(metadata i8** %35, metadata !718, metadata !DIExpression()), !dbg !740
  %36 = icmp sgt i32 %0, 1
  %37 = and i1 %13, %36, !dbg !769
  call void @llvm.dbg.value(metadata i8 0, metadata !722, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %34, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 1, metadata !719, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %35, metadata !718, metadata !DIExpression()), !dbg !740
  br i1 %37, label %38, label %83, !dbg !769

38:                                               ; preds = %33, %77
  %39 = phi i8 [ %79, %77 ], [ 0, %33 ]
  %40 = phi i32 [ %80, %77 ], [ %34, %33 ]
  %41 = phi i8 [ %78, %77 ], [ 1, %33 ]
  %42 = phi i8** [ %81, %77 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata i8 %39, metadata !722, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %40, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 %41, metadata !719, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %42, metadata !718, metadata !DIExpression()), !dbg !740
  %43 = load i8*, i8** %42, align 8, !dbg !770, !tbaa !583
  %44 = load i8, i8* %43, align 1, !dbg !771, !tbaa !772
  %45 = icmp eq i8 %44, 45, !dbg !773
  br i1 %45, label %46, label %83, !dbg !774

46:                                               ; preds = %38
  %47 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !775
  call void @llvm.dbg.value(metadata i8* %47, metadata !723, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 0, metadata !726, metadata !DIExpression()), !dbg !776
  %48 = load i8, i8* %47, align 1, !dbg !777, !tbaa !772
  %49 = icmp eq i8 %48, 0, !dbg !780
  br i1 %49, label %83, label %50, !dbg !780

50:                                               ; preds = %46, %54
  %51 = phi i8 [ %57, %54 ], [ %48, %46 ]
  %52 = phi i64 [ %55, %54 ], [ 0, %46 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !726, metadata !DIExpression()), !dbg !776
  %53 = sext i8 %51 to i32, !dbg !781
  switch i32 %53, label %83 [
    i32 101, label %54
    i32 69, label %54
    i32 110, label %54
  ], !dbg !782

54:                                               ; preds = %50, %50, %50
  %55 = add i64 %52, 1, !dbg !783
  call void @llvm.dbg.value(metadata i64 %55, metadata !726, metadata !DIExpression()), !dbg !776
  %56 = getelementptr inbounds i8, i8* %47, i64 %55, !dbg !777
  %57 = load i8, i8* %56, align 1, !dbg !777, !tbaa !772
  %58 = icmp eq i8 %57, 0, !dbg !780
  br i1 %58, label %59, label %50, !dbg !780, !llvm.loop !784

59:                                               ; preds = %54
  %60 = icmp eq i64 %55, 0, !dbg !786
  br i1 %60, label %83, label %61, !dbg !788

61:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8* %47, metadata !723, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8 %39, metadata !722, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 %41, metadata !719, metadata !DIExpression()), !dbg !740
  br i1 %49, label %77, label %62, !dbg !789

62:                                               ; preds = %61, %72
  %63 = phi i8 [ %75, %72 ], [ %48, %61 ]
  %64 = phi i8* [ %67, %72 ], [ %47, %61 ]
  %65 = phi i8 [ %74, %72 ], [ %39, %61 ]
  %66 = phi i8 [ %73, %72 ], [ %41, %61 ]
  call void @llvm.dbg.value(metadata i8* %64, metadata !723, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8 %65, metadata !722, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 %66, metadata !719, metadata !DIExpression()), !dbg !740
  %67 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !790
  call void @llvm.dbg.value(metadata i8* %67, metadata !723, metadata !DIExpression()), !dbg !776
  %68 = sext i8 %63 to i32, !dbg !791
  switch i32 %68, label %72 [
    i32 101, label %69
    i32 69, label %70
    i32 110, label %71
  ], !dbg !792

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i8 1, metadata !722, metadata !DIExpression()), !dbg !740
  br label %72, !dbg !793

70:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i8 0, metadata !722, metadata !DIExpression()), !dbg !740
  br label %72, !dbg !795

71:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i8 0, metadata !719, metadata !DIExpression()), !dbg !740
  br label %72, !dbg !796

72:                                               ; preds = %62, %71, %70, %69
  %73 = phi i8 [ %66, %62 ], [ 0, %71 ], [ %66, %70 ], [ %66, %69 ], !dbg !740
  %74 = phi i8 [ %65, %62 ], [ %65, %71 ], [ 0, %70 ], [ 1, %69 ], !dbg !740
  call void @llvm.dbg.value(metadata i8* %67, metadata !723, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i8 %74, metadata !722, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 %73, metadata !719, metadata !DIExpression()), !dbg !740
  %75 = load i8, i8* %67, align 1, !dbg !797, !tbaa !772
  %76 = icmp eq i8 %75, 0, !dbg !789
  br i1 %76, label %77, label %62, !dbg !789, !llvm.loop !798

77:                                               ; preds = %72, %61
  %78 = phi i8 [ %41, %61 ], [ %73, %72 ], !dbg !800
  %79 = phi i8 [ %39, %61 ], [ %74, %72 ], !dbg !801
  %80 = add nsw i32 %40, -1, !dbg !802
  call void @llvm.dbg.value(metadata i32 %80, metadata !717, metadata !DIExpression()), !dbg !740
  %81 = getelementptr inbounds i8*, i8** %42, i64 1, !dbg !803
  call void @llvm.dbg.value(metadata i8 %79, metadata !722, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 %78, metadata !719, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %81, metadata !718, metadata !DIExpression()), !dbg !740
  %82 = icmp sgt i32 %40, 1, !dbg !804
  br i1 %82, label %38, label %251, !dbg !805

83:                                               ; preds = %46, %38, %59, %50, %33
  %84 = phi i8** [ %35, %33 ], [ %42, %50 ], [ %42, %59 ], [ %42, %38 ], [ %42, %46 ], !dbg !768
  %85 = phi i8 [ 1, %33 ], [ %41, %50 ], [ %41, %59 ], [ %41, %38 ], [ %41, %46 ], !dbg !800
  %86 = phi i32 [ %34, %33 ], [ %40, %50 ], [ %40, %59 ], [ %40, %38 ], [ %40, %46 ], !dbg !767
  %87 = phi i8 [ 0, %33 ], [ %39, %50 ], [ %39, %59 ], [ %39, %38 ], [ %39, %46 ], !dbg !801
  call void @llvm.dbg.value(metadata i8 %87, metadata !722, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %86, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8 %85, metadata !719, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %84, metadata !718, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.label(metadata !738), !dbg !806
  %88 = and i8 %87, 1, !dbg !807
  %89 = icmp eq i8 %88, 0, !dbg !807
  %90 = and i1 %4, %89, !dbg !808
  call void @llvm.dbg.value(metadata i32 %86, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %86, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %84, metadata !718, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %84, metadata !718, metadata !DIExpression()), !dbg !740
  %91 = icmp sgt i32 %86, 0, !dbg !809
  br i1 %90, label %93, label %92, !dbg !808

92:                                               ; preds = %83
  br i1 %91, label %94, label %251, !dbg !810

93:                                               ; preds = %83
  br i1 %91, label %229, label %251, !dbg !811

94:                                               ; preds = %92, %228
  %95 = phi i32 [ %214, %228 ], [ %86, %92 ]
  %96 = phi i8** [ %215, %228 ], [ %84, %92 ]
  call void @llvm.dbg.value(metadata i32 %95, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %96, metadata !718, metadata !DIExpression()), !dbg !740
  %97 = load i8*, i8** %96, align 8, !dbg !813, !tbaa !583
  call void @llvm.dbg.value(metadata i8* %97, metadata !727, metadata !DIExpression()), !dbg !814
  br label %98, !dbg !815

98:                                               ; preds = %210, %94
  %99 = phi i8* [ %97, %94 ], [ %199, %210 ], !dbg !814
  call void @llvm.dbg.value(metadata i8* %99, metadata !727, metadata !DIExpression()), !dbg !814
  %100 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !816
  call void @llvm.dbg.value(metadata i8* %100, metadata !727, metadata !DIExpression()), !dbg !814
  %101 = load i8, i8* %99, align 1, !dbg !817, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %101, metadata !731, metadata !DIExpression()), !dbg !814
  switch i8 %101, label %198 [
    i8 0, label %213
    i8 92, label %102
  ], !dbg !815

102:                                              ; preds = %98
  %103 = load i8, i8* %100, align 1, !dbg !818, !tbaa !772
  %104 = icmp eq i8 %103, 0, !dbg !818
  br i1 %104, label %198, label %105, !dbg !819

105:                                              ; preds = %102
  %106 = getelementptr inbounds i8, i8* %99, i64 2, !dbg !820
  call void @llvm.dbg.value(metadata i8* %106, metadata !727, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8 %103, metadata !731, metadata !DIExpression()), !dbg !814
  switch i8 %103, label %187 [
    i8 97, label %107
    i8 98, label %108
    i8 99, label %266
    i8 101, label %109
    i8 102, label %110
    i8 110, label %111
    i8 114, label %112
    i8 116, label %113
    i8 118, label %114
    i8 120, label %115
    i8 48, label %160
    i8 49, label %166
    i8 50, label %166
    i8 51, label %166
    i8 52, label %166
    i8 53, label %166
    i8 54, label %166
    i8 55, label %166
    i8 92, label %198
  ], !dbg !821

107:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 7, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !822

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 8, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !823

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 27, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !824

110:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 12, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !825

111:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 10, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !826

112:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 13, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !827

113:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 9, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !828

114:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 11, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !829

115:                                              ; preds = %105
  %116 = load i8, i8* %106, align 1, !dbg !830, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %116, metadata !732, metadata !DIExpression()), !dbg !831
  %117 = tail call i16** @__ctype_b_loc() #29, !dbg !832
  %118 = load i16*, i16** %117, align 8, !dbg !832, !tbaa !583
  %119 = zext i8 %116 to i64, !dbg !832
  %120 = getelementptr inbounds i16, i16* %118, i64 %119, !dbg !832
  %121 = load i16, i16* %120, align 2, !dbg !832, !tbaa !834
  %122 = and i16 %121, 4096, !dbg !832
  %123 = icmp eq i16 %122, 0, !dbg !832
  br i1 %123, label %187, label %124, !dbg !836

124:                                              ; preds = %115
  %125 = getelementptr inbounds i8, i8* %99, i64 3, !dbg !837
  call void @llvm.dbg.value(metadata i8* %125, metadata !727, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8 %116, metadata !838, metadata !DIExpression()), !dbg !843
  switch i8 %116, label %126 [
    i8 97, label %134
    i8 65, label %134
    i8 98, label %129
    i8 66, label %129
    i8 99, label %130
    i8 67, label %130
    i8 100, label %131
    i8 68, label %131
    i8 101, label %132
    i8 69, label %132
    i8 102, label %133
    i8 70, label %133
  ], !dbg !845

126:                                              ; preds = %124
  %127 = zext i8 %116 to i32, !dbg !846
  %128 = add nsw i32 %127, -48, !dbg !847
  br label %134, !dbg !849

129:                                              ; preds = %124, %124
  br label %134, !dbg !850

130:                                              ; preds = %124, %124
  br label %134, !dbg !851

131:                                              ; preds = %124, %124
  br label %134, !dbg !852

132:                                              ; preds = %124, %124
  br label %134, !dbg !853

133:                                              ; preds = %124, %124
  br label %134, !dbg !854

134:                                              ; preds = %124, %124, %126, %129, %130, %131, %132, %133
  %135 = phi i32 [ %128, %126 ], [ 15, %133 ], [ 14, %132 ], [ 13, %131 ], [ 12, %130 ], [ 11, %129 ], [ 10, %124 ], [ 10, %124 ], !dbg !855
  call void @llvm.dbg.value(metadata i32 %135, metadata !731, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !814
  %136 = load i8, i8* %125, align 1, !dbg !856, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %136, metadata !732, metadata !DIExpression()), !dbg !831
  %137 = zext i8 %136 to i64, !dbg !857
  %138 = getelementptr inbounds i16, i16* %118, i64 %137, !dbg !857
  %139 = load i16, i16* %138, align 2, !dbg !857, !tbaa !834
  %140 = and i16 %139, 4096, !dbg !857
  %141 = icmp eq i16 %140, 0, !dbg !857
  br i1 %141, label %156, label %142, !dbg !859

142:                                              ; preds = %134
  %143 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !860
  call void @llvm.dbg.value(metadata i8* %143, metadata !727, metadata !DIExpression()), !dbg !814
  %144 = shl nsw i32 %135, 4, !dbg !862
  call void @llvm.dbg.value(metadata i8 %136, metadata !838, metadata !DIExpression()), !dbg !863
  switch i8 %136, label %145 [
    i8 97, label %153
    i8 65, label %153
    i8 98, label %148
    i8 66, label %148
    i8 99, label %149
    i8 67, label %149
    i8 100, label %150
    i8 68, label %150
    i8 101, label %151
    i8 69, label %151
    i8 102, label %152
    i8 70, label %152
  ], !dbg !865

145:                                              ; preds = %142
  %146 = zext i8 %136 to i32, !dbg !866
  %147 = add nsw i32 %146, -48, !dbg !867
  br label %153, !dbg !868

148:                                              ; preds = %142, %142
  br label %153, !dbg !869

149:                                              ; preds = %142, %142
  br label %153, !dbg !870

150:                                              ; preds = %142, %142
  br label %153, !dbg !871

151:                                              ; preds = %142, %142
  br label %153, !dbg !872

152:                                              ; preds = %142, %142
  br label %153, !dbg !873

153:                                              ; preds = %142, %142, %145, %148, %149, %150, %151, %152
  %154 = phi i32 [ %147, %145 ], [ 15, %152 ], [ 14, %151 ], [ 13, %150 ], [ 12, %149 ], [ 11, %148 ], [ 10, %142 ], [ 10, %142 ], !dbg !874
  %155 = add i32 %154, %144, !dbg !875
  call void @llvm.dbg.value(metadata i32 %155, metadata !731, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !814
  br label %156, !dbg !876

156:                                              ; preds = %134, %153
  %157 = phi i8* [ %143, %153 ], [ %125, %134 ], !dbg !831
  %158 = phi i32 [ %155, %153 ], [ %135, %134 ]
  %159 = trunc i32 %158 to i8, !dbg !831
  call void @llvm.dbg.value(metadata i8 undef, metadata !731, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* undef, metadata !727, metadata !DIExpression()), !dbg !814
  br label %198

160:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i8 0, metadata !731, metadata !DIExpression()), !dbg !814
  %161 = load i8, i8* %106, align 1, !dbg !877, !tbaa !772
  %162 = and i8 %161, -8, !dbg !879
  %163 = icmp eq i8 %162, 48, !dbg !879
  br i1 %163, label %164, label %198, !dbg !879

164:                                              ; preds = %160
  %165 = getelementptr inbounds i8, i8* %99, i64 3, !dbg !880
  call void @llvm.dbg.value(metadata i8* %165, metadata !727, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8 %161, metadata !731, metadata !DIExpression()), !dbg !814
  br label %166, !dbg !881

166:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %164
  %167 = phi i8* [ %106, %105 ], [ %106, %105 ], [ %106, %105 ], [ %106, %105 ], [ %106, %105 ], [ %106, %105 ], [ %106, %105 ], [ %165, %164 ], !dbg !882
  %168 = phi i8 [ %103, %105 ], [ %103, %105 ], [ %103, %105 ], [ %103, %105 ], [ %103, %105 ], [ %103, %105 ], [ %103, %105 ], [ %161, %164 ], !dbg !882
  call void @llvm.dbg.value(metadata i8 %168, metadata !731, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %167, metadata !727, metadata !DIExpression()), !dbg !814
  %169 = add nsw i8 %168, -48, !dbg !883
  call void @llvm.dbg.value(metadata i8 %169, metadata !731, metadata !DIExpression()), !dbg !814
  %170 = load i8, i8* %167, align 1, !dbg !884, !tbaa !772
  %171 = and i8 %170, -8, !dbg !886
  %172 = icmp eq i8 %171, 48, !dbg !886
  %173 = shl nuw nsw i8 %169, 3, !dbg !886
  %174 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !886
  %175 = add i8 %170, -48, !dbg !886
  %176 = add i8 %175, %173, !dbg !886
  %177 = select i1 %172, i8* %174, i8* %167, !dbg !886
  %178 = select i1 %172, i8 %176, i8 %169, !dbg !886
  call void @llvm.dbg.value(metadata i8 %178, metadata !731, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %177, metadata !727, metadata !DIExpression()), !dbg !814
  %179 = load i8, i8* %177, align 1, !dbg !887, !tbaa !772
  %180 = and i8 %179, -8, !dbg !889
  %181 = icmp eq i8 %180, 48, !dbg !889
  br i1 %181, label %182, label %198, !dbg !889

182:                                              ; preds = %166
  %183 = shl i8 %178, 3, !dbg !890
  %184 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !891
  call void @llvm.dbg.value(metadata i8* %184, metadata !727, metadata !DIExpression()), !dbg !814
  %185 = add nsw i8 %179, -48, !dbg !892
  %186 = add i8 %185, %183, !dbg !893
  call void @llvm.dbg.value(metadata i8 %186, metadata !731, metadata !DIExpression()), !dbg !814
  br label %198, !dbg !894

187:                                              ; preds = %115, %105
  call void @llvm.dbg.value(metadata i8 %103, metadata !731, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %106, metadata !727, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i32 92, metadata !895, metadata !DIExpression()) #26, !dbg !901
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !903, !tbaa !583
  %189 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %188, i64 0, i32 5, !dbg !903
  %190 = load i8*, i8** %189, align 8, !dbg !903, !tbaa !904
  %191 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %188, i64 0, i32 6, !dbg !903
  %192 = load i8*, i8** %191, align 8, !dbg !903, !tbaa !908
  %193 = icmp ult i8* %190, %192, !dbg !903
  br i1 %193, label %196, label %194, !dbg !903, !prof !909

194:                                              ; preds = %187
  %195 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %188, i32 92) #26, !dbg !903
  br label %198, !dbg !903

196:                                              ; preds = %187
  %197 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !903
  store i8* %197, i8** %189, align 8, !dbg !903, !tbaa !904
  store i8 92, i8* %190, align 1, !dbg !903, !tbaa !772
  br label %198, !dbg !903

198:                                              ; preds = %196, %194, %156, %98, %107, %108, %109, %110, %111, %112, %113, %114, %105, %160, %182, %166, %102
  %199 = phi i8* [ %106, %105 ], [ %184, %182 ], [ %177, %166 ], [ %106, %160 ], [ %106, %114 ], [ %106, %113 ], [ %106, %112 ], [ %106, %111 ], [ %106, %110 ], [ %106, %109 ], [ %106, %108 ], [ %106, %107 ], [ %100, %102 ], [ %100, %98 ], [ %157, %156 ], [ %106, %194 ], [ %106, %196 ], !dbg !814
  %200 = phi i8 [ %103, %105 ], [ %186, %182 ], [ %178, %166 ], [ 0, %160 ], [ 11, %114 ], [ 9, %113 ], [ 13, %112 ], [ 10, %111 ], [ 12, %110 ], [ 27, %109 ], [ 8, %108 ], [ 7, %107 ], [ 92, %102 ], [ %101, %98 ], [ %159, %156 ], [ %103, %194 ], [ %103, %196 ], !dbg !814
  call void @llvm.dbg.value(metadata i8 %200, metadata !731, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %199, metadata !727, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8 %200, metadata !895, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #26, !dbg !910
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !912, !tbaa !583
  %202 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %201, i64 0, i32 5, !dbg !912
  %203 = load i8*, i8** %202, align 8, !dbg !912, !tbaa !904
  %204 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %201, i64 0, i32 6, !dbg !912
  %205 = load i8*, i8** %204, align 8, !dbg !912, !tbaa !908
  %206 = icmp ult i8* %203, %205, !dbg !912
  br i1 %206, label %211, label %207, !dbg !912, !prof !909

207:                                              ; preds = %198
  %208 = zext i8 %200 to i32, !dbg !913
  call void @llvm.dbg.value(metadata i32 %208, metadata !895, metadata !DIExpression()) #26, !dbg !910
  %209 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %201, i32 %208) #26, !dbg !912
  br label %210, !dbg !912

210:                                              ; preds = %207, %211
  br label %98, !dbg !814, !llvm.loop !914

211:                                              ; preds = %198
  %212 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !912
  store i8* %212, i8** %202, align 8, !dbg !912, !tbaa !904
  store i8 %200, i8* %203, align 1, !dbg !912, !tbaa !772
  br label %210, !dbg !912

213:                                              ; preds = %98
  %214 = add nsw i32 %95, -1, !dbg !916
  call void @llvm.dbg.value(metadata i32 %214, metadata !717, metadata !DIExpression()), !dbg !740
  %215 = getelementptr inbounds i8*, i8** %96, i64 1, !dbg !917
  call void @llvm.dbg.value(metadata i8** %215, metadata !718, metadata !DIExpression()), !dbg !740
  %216 = icmp sgt i32 %95, 1, !dbg !918
  br i1 %216, label %217, label %251, !dbg !920

217:                                              ; preds = %213
  call void @llvm.dbg.value(metadata i32 32, metadata !895, metadata !DIExpression()) #26, !dbg !921
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !923, !tbaa !583
  %219 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %218, i64 0, i32 5, !dbg !923
  %220 = load i8*, i8** %219, align 8, !dbg !923, !tbaa !904
  %221 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %218, i64 0, i32 6, !dbg !923
  %222 = load i8*, i8** %221, align 8, !dbg !923, !tbaa !908
  %223 = icmp ult i8* %220, %222, !dbg !923
  br i1 %223, label %226, label %224, !dbg !923, !prof !909

224:                                              ; preds = %217
  %225 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %218, i32 32) #26, !dbg !923
  br label %228, !dbg !923

226:                                              ; preds = %217
  %227 = getelementptr inbounds i8, i8* %220, i64 1, !dbg !923
  store i8* %227, i8** %219, align 8, !dbg !923, !tbaa !904
  store i8 32, i8* %220, align 1, !dbg !923, !tbaa !772
  br label %228, !dbg !923

228:                                              ; preds = %226, %224
  br label %94, !dbg !740

229:                                              ; preds = %93, %249
  %230 = phi i32 [ %235, %249 ], [ %86, %93 ]
  %231 = phi i8** [ %236, %249 ], [ %84, %93 ]
  call void @llvm.dbg.value(metadata i32 %230, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %231, metadata !718, metadata !DIExpression()), !dbg !740
  %232 = load i8*, i8** %231, align 8, !dbg !924, !tbaa !583
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !924, !tbaa !583
  %234 = tail call i32 @fputs_unlocked(i8* %232, %struct._IO_FILE* %233), !dbg !924
  %235 = add nsw i32 %230, -1, !dbg !926
  call void @llvm.dbg.value(metadata i32 %235, metadata !717, metadata !DIExpression()), !dbg !740
  %236 = getelementptr inbounds i8*, i8** %231, i64 1, !dbg !927
  call void @llvm.dbg.value(metadata i8** %236, metadata !718, metadata !DIExpression()), !dbg !740
  %237 = icmp eq i32 %230, 1, !dbg !928
  br i1 %237, label %251, label %238, !dbg !930

238:                                              ; preds = %229
  call void @llvm.dbg.value(metadata i32 32, metadata !895, metadata !DIExpression()) #26, !dbg !931
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !933, !tbaa !583
  %240 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %239, i64 0, i32 5, !dbg !933
  %241 = load i8*, i8** %240, align 8, !dbg !933, !tbaa !904
  %242 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %239, i64 0, i32 6, !dbg !933
  %243 = load i8*, i8** %242, align 8, !dbg !933, !tbaa !908
  %244 = icmp ult i8* %241, %243, !dbg !933
  br i1 %244, label %247, label %245, !dbg !933, !prof !909

245:                                              ; preds = %238
  %246 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %239, i32 32) #26, !dbg !933
  br label %249, !dbg !933

247:                                              ; preds = %238
  %248 = getelementptr inbounds i8, i8* %241, i64 1, !dbg !933
  store i8* %248, i8** %240, align 8, !dbg !933, !tbaa !904
  store i8 32, i8* %241, align 1, !dbg !933, !tbaa !772
  br label %249, !dbg !933

249:                                              ; preds = %247, %245
  call void @llvm.dbg.value(metadata i32 %235, metadata !717, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8** %236, metadata !718, metadata !DIExpression()), !dbg !740
  %250 = icmp sgt i32 %230, 1, !dbg !934
  br i1 %250, label %229, label %251, !dbg !811, !llvm.loop !935

251:                                              ; preds = %77, %213, %229, %249, %92, %93
  %252 = phi i8 [ %85, %92 ], [ %85, %93 ], [ %85, %249 ], [ %85, %229 ], [ %85, %213 ], [ %78, %77 ]
  %253 = and i8 %252, 1, !dbg !937
  %254 = icmp eq i8 %253, 0, !dbg !937
  br i1 %254, label %266, label %255, !dbg !939

255:                                              ; preds = %251
  call void @llvm.dbg.value(metadata i32 10, metadata !895, metadata !DIExpression()) #26, !dbg !940
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !942, !tbaa !583
  %257 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %256, i64 0, i32 5, !dbg !942
  %258 = load i8*, i8** %257, align 8, !dbg !942, !tbaa !904
  %259 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %256, i64 0, i32 6, !dbg !942
  %260 = load i8*, i8** %259, align 8, !dbg !942, !tbaa !908
  %261 = icmp ult i8* %258, %260, !dbg !942
  br i1 %261, label %264, label %262, !dbg !942, !prof !909

262:                                              ; preds = %255
  %263 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %256, i32 10) #26, !dbg !942
  br label %266, !dbg !942

264:                                              ; preds = %255
  %265 = getelementptr inbounds i8, i8* %258, i64 1, !dbg !942
  store i8* %265, i8** %257, align 8, !dbg !942, !tbaa !904
  store i8 10, i8* %258, align 1, !dbg !942, !tbaa !772
  br label %266, !dbg !942

266:                                              ; preds = %105, %264, %262, %251, %30
  ret i32 0, !dbg !943
}

; Function Attrs: nofree nounwind readonly
declare !dbg !944 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !948 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !951 i8* @textdomain(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !952 i32 @atexit(void ()*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !958 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !960, metadata !DIExpression()), !dbg !961
  store i8* %0, i8** @file_name, align 8, !dbg !962, !tbaa !583
  ret void, !dbg !963
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !964 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !968, metadata !DIExpression()), !dbg !969
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !970, !tbaa !971
  ret void, !dbg !973
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #9 !dbg !974 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !979, !tbaa !583
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #26, !dbg !980
  %3 = icmp eq i32 %2, 0, !dbg !981
  br i1 %3, label %22, label %4, !dbg !982

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !983, !tbaa !971, !range !984
  %6 = icmp eq i8 %5, 0, !dbg !983
  br i1 %6, label %11, label %7, !dbg !985

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !986
  %9 = load i32, i32* %8, align 4, !dbg !986, !tbaa !987
  %10 = icmp eq i32 %9, 32, !dbg !988
  br i1 %10, label %22, label %11, !dbg !989

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 5) #26, !dbg !990
  call void @llvm.dbg.value(metadata i8* %12, metadata !976, metadata !DIExpression()), !dbg !991
  %13 = load i8*, i8** @file_name, align 8, !dbg !992, !tbaa !583
  %14 = icmp eq i8* %13, null, !dbg !992
  %15 = tail call i32* @__errno_location() #29, !dbg !994
  %16 = load i32, i32* %15, align 4, !dbg !994, !tbaa !987
  br i1 %14, label %19, label %17, !dbg !995

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #26, !dbg !996
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.41, i64 0, i64 0), i8* %18, i8* %12) #26, !dbg !997
  br label %20, !dbg !997

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.42, i64 0, i64 0), i8* %12) #26, !dbg !998
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !999, !tbaa !987
  tail call void @_exit(i32 %21) #25, !dbg !1000
  unreachable, !dbg !1000

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1001, !tbaa !583
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #26, !dbg !1003
  %25 = icmp eq i32 %24, 0, !dbg !1004
  br i1 %25, label %28, label %26, !dbg !1005

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1006, !tbaa !987
  tail call void @_exit(i32 %27) #25, !dbg !1007
  unreachable, !dbg !1007

28:                                               ; preds = %22
  ret void, !dbg !1008
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !1009 void @error(i32, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #9 !dbg !1013 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1015, metadata !DIExpression()), !dbg !1018
  %2 = icmp eq i8* %0, null, !dbg !1019
  br i1 %2, label %3, label %6, !dbg !1021

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1022, !tbaa !583
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1024
  tail call void @abort() #25, !dbg !1025
  unreachable, !dbg !1025

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #27, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %7, metadata !1016, metadata !DIExpression()), !dbg !1018
  %8 = icmp eq i8* %7, null, !dbg !1027
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1028
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %10, metadata !1017, metadata !DIExpression()), !dbg !1018
  %11 = ptrtoint i8* %10 to i64, !dbg !1029
  %12 = ptrtoint i8* %0 to i64, !dbg !1029
  %13 = sub i64 %11, %12, !dbg !1029
  %14 = icmp sgt i64 %13, 6, !dbg !1031
  br i1 %14, label %15, label %24, !dbg !1032

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1033
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #27, !dbg !1034
  %18 = icmp eq i32 %17, 0, !dbg !1035
  br i1 %18, label %19, label %24, !dbg !1036

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1015, metadata !DIExpression()), !dbg !1018
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #27, !dbg !1037
  %21 = icmp eq i32 %20, 0, !dbg !1040
  br i1 %21, label %22, label %24, !dbg !1041

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %23, metadata !1015, metadata !DIExpression()), !dbg !1018
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1044, !tbaa !583
  br label %24, !dbg !1045

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1015, metadata !DIExpression()), !dbg !1018
  store i8* %25, i8** @program_name, align 8, !dbg !1046, !tbaa !583
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1047, !tbaa !583
  ret void, !dbg !1048
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #9 !dbg !1049 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1054, metadata !DIExpression()), !dbg !1057
  %2 = tail call i32* @__errno_location() #29, !dbg !1058
  %3 = load i32, i32* %2, align 4, !dbg !1058, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %3, metadata !1055, metadata !DIExpression()), !dbg !1057
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1059
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1059
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1059
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #26, !dbg !1060
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1060
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1056, metadata !DIExpression()), !dbg !1057
  store i32 %3, i32* %2, align 4, !dbg !1061, !tbaa !987
  ret %struct.quoting_options* %8, !dbg !1062
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1063 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1069, metadata !DIExpression()), !dbg !1070
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1071
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1071
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1072
  %5 = load i32, i32* %4, align 8, !dbg !1072, !tbaa !1073
  ret i32 %5, !dbg !1075
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1076 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1080, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %1, metadata !1081, metadata !DIExpression()), !dbg !1082
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1083
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1083
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1084
  store i32 %1, i32* %5, align 8, !dbg !1085, !tbaa !1073
  ret void, !dbg !1086
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1087 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1091, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %1, metadata !1092, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %2, metadata !1093, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %1, metadata !1094, metadata !DIExpression()), !dbg !1099
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1100
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1100
  %6 = lshr i8 %1, 5, !dbg !1101
  %7 = zext i8 %6 to i64, !dbg !1101
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1102
  call void @llvm.dbg.value(metadata i32* %8, metadata !1095, metadata !DIExpression()), !dbg !1099
  %9 = and i8 %1, 31, !dbg !1103
  %10 = zext i8 %9 to i32, !dbg !1103
  call void @llvm.dbg.value(metadata i32 %10, metadata !1097, metadata !DIExpression()), !dbg !1099
  %11 = load i32, i32* %8, align 4, !dbg !1104, !tbaa !987
  %12 = lshr i32 %11, %10, !dbg !1105
  %13 = and i32 %12, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %13, metadata !1098, metadata !DIExpression()), !dbg !1099
  %14 = and i32 %2, 1, !dbg !1107
  %15 = xor i32 %13, %14, !dbg !1108
  %16 = shl i32 %15, %10, !dbg !1109
  %17 = xor i32 %16, %11, !dbg !1110
  store i32 %17, i32* %8, align 4, !dbg !1110, !tbaa !987
  ret i32 %13, !dbg !1111
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1112 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1116, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %1, metadata !1117, metadata !DIExpression()), !dbg !1119
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1120
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1122
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1116, metadata !DIExpression()), !dbg !1119
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1123
  %6 = load i32, i32* %5, align 4, !dbg !1123, !tbaa !1124
  call void @llvm.dbg.value(metadata i32 %6, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i32 %1, i32* %5, align 4, !dbg !1125, !tbaa !1124
  ret i32 %6, !dbg !1126
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !1127 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1131, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %1, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8* %2, metadata !1133, metadata !DIExpression()), !dbg !1134
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1135
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1137
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1131, metadata !DIExpression()), !dbg !1134
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1138
  store i32 10, i32* %6, align 8, !dbg !1139, !tbaa !1073
  %7 = icmp ne i8* %1, null, !dbg !1140
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1142
  br i1 %9, label %11, label %10, !dbg !1142

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !1143
  unreachable, !dbg !1143

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1144
  store i8* %1, i8** %12, align 8, !dbg !1145, !tbaa !1146
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1147
  store i8* %2, i8** %13, align 8, !dbg !1148, !tbaa !1149
  ret void, !dbg !1150
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #9 !dbg !1151 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1155, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %1, metadata !1156, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8* %2, metadata !1157, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1158, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1159, metadata !DIExpression()), !dbg !1163
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1164
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1160, metadata !DIExpression()), !dbg !1163
  %8 = tail call i32* @__errno_location() #29, !dbg !1165
  %9 = load i32, i32* %8, align 4, !dbg !1165, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %9, metadata !1161, metadata !DIExpression()), !dbg !1163
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1166
  %11 = load i32, i32* %10, align 8, !dbg !1166, !tbaa !1073
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1167
  %13 = load i32, i32* %12, align 4, !dbg !1167, !tbaa !1124
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1168
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1169
  %16 = load i8*, i8** %15, align 8, !dbg !1169, !tbaa !1146
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1170
  %18 = load i8*, i8** %17, align 8, !dbg !1170, !tbaa !1149
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %19, metadata !1162, metadata !DIExpression()), !dbg !1163
  store i32 %9, i32* %8, align 4, !dbg !1172, !tbaa !987
  ret i64 %19, !dbg !1173
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #9 !dbg !1174 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1180, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %1, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %2, metadata !1182, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %3, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %4, metadata !1184, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %5, metadata !1185, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32* %6, metadata !1186, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %7, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %8, metadata !1188, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1191, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* null, metadata !1192, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1193, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1194, metadata !DIExpression()), !dbg !1250
  %13 = tail call i64 @__ctype_get_mb_cur_max() #26, !dbg !1251
  %14 = icmp eq i64 %13, 1, !dbg !1252
  call void @llvm.dbg.value(metadata i1 %14, metadata !1195, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1250
  %15 = lshr i32 %5, 1, !dbg !1253
  %16 = trunc i32 %15 to i8, !dbg !1253
  %17 = and i8 %16, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i8 %17, metadata !1196, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1199, metadata !DIExpression()), !dbg !1250
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1254

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1255
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1256
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1257
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1258
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1250
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1259
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1260
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1261
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %38, metadata !1199, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %37, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %36, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %35, metadata !1196, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %34, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %33, metadata !1194, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %32, metadata !1193, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %31, metadata !1192, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %30, metadata !1191, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %29, metadata !1188, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %28, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %27, metadata !1184, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.label(metadata !1244), !dbg !1262
  switch i32 %27, label %91 [
    i32 6, label %40
    i32 5, label %41
    i32 7, label %92
    i32 0, label %90
    i32 2, label %82
    i32 4, label %76
    i32 3, label %73
    i32 1, label %74
    i32 10, label %50
    i32 8, label %47
    i32 9, label %47
  ], !dbg !1263

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1196, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 5, metadata !1184, metadata !DIExpression()), !dbg !1250
  br label %92, !dbg !1264

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1196, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 5, metadata !1184, metadata !DIExpression()), !dbg !1250
  %42 = and i8 %35, 1, !dbg !1266
  %43 = icmp eq i8 %42, 0, !dbg !1266
  br i1 %43, label %44, label %92, !dbg !1264

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1268
  br i1 %45, label %92, label %46, !dbg !1271

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1268, !tbaa !772
  br label %92, !dbg !1268

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %27), !dbg !1272
  call void @llvm.dbg.value(metadata i8* %48, metadata !1187, metadata !DIExpression()), !dbg !1250
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %27), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %49, metadata !1188, metadata !DIExpression()), !dbg !1250
  br label %50, !dbg !1277

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1188, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %51, metadata !1187, metadata !DIExpression()), !dbg !1250
  %53 = and i8 %35, 1, !dbg !1278
  %54 = icmp eq i8 %53, 0, !dbg !1278
  br i1 %54, label %55, label %70, !dbg !1280

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1192, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1190, metadata !DIExpression()), !dbg !1250
  %56 = load i8, i8* %51, align 1, !dbg !1281, !tbaa !772
  %57 = icmp eq i8 %56, 0, !dbg !1284
  br i1 %57, label %70, label %58, !dbg !1284

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1192, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %61, metadata !1190, metadata !DIExpression()), !dbg !1250
  %62 = icmp ult i64 %61, %39, !dbg !1285
  br i1 %62, label %63, label %65, !dbg !1288

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1285
  store i8 %59, i8* %64, align 1, !dbg !1285, !tbaa !772
  br label %65, !dbg !1285

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %66, metadata !1190, metadata !DIExpression()), !dbg !1250
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %67, metadata !1192, metadata !DIExpression()), !dbg !1250
  %68 = load i8, i8* %67, align 1, !dbg !1281, !tbaa !772
  %69 = icmp eq i8 %68, 0, !dbg !1284
  br i1 %69, label %70, label %58, !dbg !1284, !llvm.loop !1290

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1292
  call void @llvm.dbg.value(metadata i64 %71, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1194, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %52, metadata !1192, metadata !DIExpression()), !dbg !1250
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #27, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %72, metadata !1193, metadata !DIExpression()), !dbg !1250
  br label %92, !dbg !1294

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1194, metadata !DIExpression()), !dbg !1250
  br label %74, !dbg !1295

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %75, metadata !1194, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1196, metadata !DIExpression()), !dbg !1250
  br label %76, !dbg !1296

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1258
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %78, metadata !1196, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %77, metadata !1194, metadata !DIExpression()), !dbg !1250
  %79 = and i8 %78, 1, !dbg !1297
  %80 = icmp eq i8 %79, 0, !dbg !1297
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1299
  br label %82, !dbg !1299

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1250
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1253
  call void @llvm.dbg.value(metadata i8 %84, metadata !1196, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %83, metadata !1194, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 2, metadata !1184, metadata !DIExpression()), !dbg !1250
  %85 = and i8 %84, 1, !dbg !1300
  %86 = icmp eq i8 %85, 0, !dbg !1300
  br i1 %86, label %87, label %92, !dbg !1302

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1303
  br i1 %88, label %92, label %89, !dbg !1306

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1303, !tbaa !772
  br label %92, !dbg !1303

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1196, metadata !DIExpression()), !dbg !1250
  br label %92, !dbg !1307

91:                                               ; preds = %26
  call void @abort() #25, !dbg !1308
  unreachable, !dbg !1308

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1292
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %40 ], !dbg !1250
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1250
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1250
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %100, metadata !1196, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %99, metadata !1194, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %98, metadata !1193, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %97, metadata !1192, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %96, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %95, metadata !1188, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8* %94, metadata !1187, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i32 %93, metadata !1184, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 0, metadata !1189, metadata !DIExpression()), !dbg !1250
  %101 = and i8 %99, 1
  %102 = icmp ne i8 %101, 0
  %103 = icmp ne i32 %93, 2
  %104 = and i1 %103, %102
  %105 = icmp ne i64 %98, 0
  %106 = and i1 %105, %104
  %107 = icmp ugt i64 %98, 1
  %108 = and i8 %100, 1
  %109 = icmp eq i8 %108, 0
  %110 = icmp eq i32 %93, 2
  %111 = or i1 %103, %109
  %112 = icmp ne i8 %108, 0
  %113 = and i1 %110, %112
  %114 = xor i1 %104, true
  %115 = and i1 %109, %114
  %116 = or i1 %25, %115
  %117 = and i8 %99, %100
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %105
  br label %121, !dbg !1309

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1310
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1292
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1255
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1259
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1260
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1261
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %128, metadata !1199, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %127, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %126, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %125, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %124, metadata !1191, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %122, metadata !1189, metadata !DIExpression()), !dbg !1250
  %130 = icmp eq i64 %125, -1, !dbg !1311
  br i1 %130, label %131, label %135, !dbg !1312

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1313
  %133 = load i8, i8* %132, align 1, !dbg !1313, !tbaa !772
  %134 = icmp eq i8 %133, 0, !dbg !1314
  br i1 %134, label %587, label %137, !dbg !1315

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1316
  br i1 %136, label %587, label %137, !dbg !1315

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1205, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 0, metadata !1206, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 0, metadata !1207, metadata !DIExpression()), !dbg !1317
  br i1 %106, label %138, label %153, !dbg !1318

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1320
  %140 = and i1 %107, %130, !dbg !1321
  br i1 %140, label %141, label %143, !dbg !1321

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %142, metadata !1183, metadata !DIExpression()), !dbg !1250
  br label %143, !dbg !1323

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1323
  call void @llvm.dbg.value(metadata i64 %144, metadata !1183, metadata !DIExpression()), !dbg !1250
  %145 = icmp ugt i64 %139, %144, !dbg !1324
  br i1 %145, label %153, label %146, !dbg !1325

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1326
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1327
  %149 = icmp ne i32 %148, 0, !dbg !1328
  %150 = or i1 %149, %109, !dbg !1329
  %151 = xor i1 %149, true, !dbg !1329
  %152 = zext i1 %151 to i8, !dbg !1329
  br i1 %150, label %153, label %646, !dbg !1329

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1317
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1317
  call void @llvm.dbg.value(metadata i8 %156, metadata !1205, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %154, metadata !1183, metadata !DIExpression()), !dbg !1250
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1330
  %158 = load i8, i8* %157, align 1, !dbg !1330, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %158, metadata !1200, metadata !DIExpression()), !dbg !1317
  switch i8 %158, label %290 [
    i8 0, label %159
    i8 63, label %209
    i8 7, label %256
    i8 8, label %246
    i8 12, label %247
    i8 10, label %254
    i8 13, label %248
    i8 9, label %249
    i8 11, label %250
    i8 92, label %251
    i8 123, label %258
    i8 125, label %258
    i8 35, label %262
    i8 126, label %262
    i8 32, label %264
    i8 33, label %265
    i8 34, label %265
    i8 36, label %265
    i8 38, label %265
    i8 40, label %265
    i8 41, label %265
    i8 42, label %265
    i8 59, label %265
    i8 60, label %265
    i8 61, label %265
    i8 62, label %265
    i8 91, label %265
    i8 94, label %265
    i8 96, label %265
    i8 124, label %265
    i8 39, label %267
    i8 37, label %473
    i8 43, label %473
    i8 44, label %473
    i8 45, label %473
    i8 46, label %473
    i8 47, label %473
    i8 48, label %473
    i8 49, label %473
    i8 50, label %473
    i8 51, label %473
    i8 52, label %473
    i8 53, label %473
    i8 54, label %473
    i8 55, label %473
    i8 56, label %473
    i8 57, label %473
    i8 58, label %473
    i8 65, label %473
    i8 66, label %473
    i8 67, label %473
    i8 68, label %473
    i8 69, label %473
    i8 70, label %473
    i8 71, label %473
    i8 72, label %473
    i8 73, label %473
    i8 74, label %473
    i8 75, label %473
    i8 76, label %473
    i8 77, label %473
    i8 78, label %473
    i8 79, label %473
    i8 80, label %473
    i8 81, label %473
    i8 82, label %473
    i8 83, label %473
    i8 84, label %473
    i8 85, label %473
    i8 86, label %473
    i8 87, label %473
    i8 88, label %473
    i8 89, label %473
    i8 90, label %473
    i8 93, label %473
    i8 95, label %473
    i8 97, label %473
    i8 98, label %473
    i8 99, label %473
    i8 100, label %473
    i8 101, label %473
    i8 102, label %473
    i8 103, label %473
    i8 104, label %473
    i8 105, label %473
    i8 106, label %473
    i8 107, label %473
    i8 108, label %473
    i8 109, label %473
    i8 110, label %473
    i8 111, label %473
    i8 112, label %473
    i8 113, label %473
    i8 114, label %473
    i8 115, label %473
    i8 116, label %473
    i8 117, label %473
    i8 118, label %473
    i8 119, label %473
    i8 120, label %473
    i8 121, label %473
    i8 122, label %473
  ], !dbg !1331

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1332

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1333

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1206, metadata !DIExpression()), !dbg !1317
  %162 = and i8 %126, 1, !dbg !1337
  %163 = icmp eq i8 %162, 0, !dbg !1337
  %164 = and i1 %110, %163, !dbg !1337
  br i1 %164, label %165, label %181, !dbg !1337

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1339
  br i1 %166, label %167, label %169, !dbg !1343

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1339
  store i8 39, i8* %168, align 1, !dbg !1339, !tbaa !772
  br label %169, !dbg !1339

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %170, metadata !1190, metadata !DIExpression()), !dbg !1250
  %171 = icmp ult i64 %170, %129, !dbg !1344
  br i1 %171, label %172, label %174, !dbg !1347

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1344
  store i8 36, i8* %173, align 1, !dbg !1344, !tbaa !772
  br label %174, !dbg !1344

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %175, metadata !1190, metadata !DIExpression()), !dbg !1250
  %176 = icmp ult i64 %175, %129, !dbg !1348
  br i1 %176, label %177, label %179, !dbg !1351

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1348
  store i8 39, i8* %178, align 1, !dbg !1348, !tbaa !772
  br label %179, !dbg !1348

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %180, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1197, metadata !DIExpression()), !dbg !1250
  br label %181, !dbg !1352

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1250
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %183, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %182, metadata !1190, metadata !DIExpression()), !dbg !1250
  %184 = icmp ult i64 %182, %129, !dbg !1353
  br i1 %184, label %185, label %187, !dbg !1356

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1353
  store i8 92, i8* %186, align 1, !dbg !1353, !tbaa !772
  br label %187, !dbg !1353

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %188, metadata !1190, metadata !DIExpression()), !dbg !1250
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1357
  br i1 %191, label %192, label %473, !dbg !1357

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1359
  %194 = load i8, i8* %193, align 1, !dbg !1359, !tbaa !772
  %195 = add i8 %194, -48, !dbg !1360
  %196 = icmp ult i8 %195, 10, !dbg !1360
  br i1 %196, label %197, label %473, !dbg !1360

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1361
  br i1 %198, label %199, label %201, !dbg !1365

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1361
  store i8 48, i8* %200, align 1, !dbg !1361, !tbaa !772
  br label %201, !dbg !1361

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %202, metadata !1190, metadata !DIExpression()), !dbg !1250
  %203 = icmp ult i64 %202, %129, !dbg !1366
  br i1 %203, label %204, label %206, !dbg !1369

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1366
  store i8 48, i8* %205, align 1, !dbg !1366, !tbaa !772
  br label %206, !dbg !1366

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %207, metadata !1190, metadata !DIExpression()), !dbg !1250
  br label %473, !dbg !1370

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1371

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1372

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1373

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1375
  br i1 %214, label %215, label %473, !dbg !1375

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1377
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1378
  %218 = load i8, i8* %217, align 1, !dbg !1378, !tbaa !772
  %219 = icmp eq i8 %218, 63, !dbg !1379
  br i1 %219, label %220, label %473, !dbg !1380

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1381
  %222 = load i8, i8* %221, align 1, !dbg !1381, !tbaa !772
  %223 = sext i8 %222 to i32, !dbg !1381
  switch i32 %223, label %473 [
    i32 33, label %224
    i32 39, label %224
    i32 40, label %224
    i32 41, label %224
    i32 45, label %224
    i32 47, label %224
    i32 60, label %224
    i32 61, label %224
    i32 62, label %224
  ], !dbg !1382

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1383

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 undef, metadata !1189, metadata !DIExpression()), !dbg !1250
  %226 = icmp ult i64 %123, %129, !dbg !1385
  br i1 %226, label %227, label %229, !dbg !1388

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1385
  store i8 63, i8* %228, align 1, !dbg !1385, !tbaa !772
  br label %229, !dbg !1385

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %230, metadata !1190, metadata !DIExpression()), !dbg !1250
  %231 = icmp ult i64 %230, %129, !dbg !1389
  br i1 %231, label %232, label %234, !dbg !1392

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1389
  store i8 34, i8* %233, align 1, !dbg !1389, !tbaa !772
  br label %234, !dbg !1389

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %235, metadata !1190, metadata !DIExpression()), !dbg !1250
  %236 = icmp ult i64 %235, %129, !dbg !1393
  br i1 %236, label %237, label %239, !dbg !1396

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1393
  store i8 34, i8* %238, align 1, !dbg !1393, !tbaa !772
  br label %239, !dbg !1393

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %240, metadata !1190, metadata !DIExpression()), !dbg !1250
  %241 = icmp ult i64 %240, %129, !dbg !1397
  br i1 %241, label %242, label %244, !dbg !1400

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1397
  store i8 63, i8* %243, align 1, !dbg !1397, !tbaa !772
  br label %244, !dbg !1397

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1400
  call void @llvm.dbg.value(metadata i64 %245, metadata !1190, metadata !DIExpression()), !dbg !1250
  br label %473, !dbg !1401

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1204, metadata !DIExpression()), !dbg !1317
  br label %256, !dbg !1402

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1204, metadata !DIExpression()), !dbg !1317
  br label %256, !dbg !1403

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1204, metadata !DIExpression()), !dbg !1317
  br label %254, !dbg !1404

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1204, metadata !DIExpression()), !dbg !1317
  br label %254, !dbg !1405

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1204, metadata !DIExpression()), !dbg !1317
  br label %256, !dbg !1406

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1204, metadata !DIExpression()), !dbg !1317
  br i1 %110, label %252, label %253, !dbg !1407

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1408

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1411

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %255, metadata !1204, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.label(metadata !1245), !dbg !1414
  br i1 %111, label %256, label %631, !dbg !1415

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %257, metadata !1204, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.label(metadata !1246), !dbg !1417
  br i1 %102, label %495, label %473, !dbg !1418

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1419

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1420, !tbaa !772
  %261 = icmp eq i8 %260, 0, !dbg !1422
  br i1 %261, label %262, label %473, !dbg !1423

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1424
  br i1 %263, label %264, label %473, !dbg !1426

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1207, metadata !DIExpression()), !dbg !1317
  br label %265, !dbg !1427

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1317
  call void @llvm.dbg.value(metadata i8 %266, metadata !1207, metadata !DIExpression()), !dbg !1317
  br i1 %111, label %473, label %631, !dbg !1428

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1207, metadata !DIExpression()), !dbg !1317
  br i1 %110, label %268, label %473, !dbg !1430

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1431

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1434
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1436
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1436
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %274, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %273, metadata !1191, metadata !DIExpression()), !dbg !1250
  %275 = icmp ult i64 %123, %274, !dbg !1437
  br i1 %275, label %276, label %278, !dbg !1440

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1437
  store i8 39, i8* %277, align 1, !dbg !1437, !tbaa !772
  br label %278, !dbg !1437

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %279, metadata !1190, metadata !DIExpression()), !dbg !1250
  %280 = icmp ult i64 %279, %274, !dbg !1441
  br i1 %280, label %281, label %283, !dbg !1444

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1441
  store i8 92, i8* %282, align 1, !dbg !1441, !tbaa !772
  br label %283, !dbg !1441

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %284, metadata !1190, metadata !DIExpression()), !dbg !1250
  %285 = icmp ult i64 %284, %274, !dbg !1445
  br i1 %285, label %286, label %288, !dbg !1448

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1445
  store i8 39, i8* %287, align 1, !dbg !1445, !tbaa !772
  br label %288, !dbg !1445

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %289, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1197, metadata !DIExpression()), !dbg !1250
  br label %473, !dbg !1449

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1450

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1208, metadata !DIExpression()), !dbg !1451
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !1452
  %293 = load i16*, i16** %292, align 8, !dbg !1452, !tbaa !583
  %294 = zext i8 %158 to i64, !dbg !1452
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1452
  %296 = load i16, i16* %295, align 2, !dbg !1452, !tbaa !834
  %297 = lshr i16 %296, 14, !dbg !1454
  %298 = trunc i16 %297 to i8, !dbg !1454
  %299 = and i8 %298, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i8 %354, metadata !1211, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %355, metadata !1208, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %306, metadata !1183, metadata !DIExpression()), !dbg !1250
  %300 = icmp eq i8 %299, 0, !dbg !1455
  call void @llvm.dbg.value(metadata i1 %357, metadata !1207, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1317
  br label %359, !dbg !1456

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1457
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1212, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %23, metadata !1459, metadata !DIExpression()) #26, !dbg !1467
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()) #26, !dbg !1467
  call void @llvm.dbg.value(metadata i64 8, metadata !1466, metadata !DIExpression()) #26, !dbg !1467
  store i64 0, i64* %10, align 8, !dbg !1469
  call void @llvm.dbg.value(metadata i64 0, metadata !1208, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8 1, metadata !1211, metadata !DIExpression()), !dbg !1451
  %302 = icmp eq i64 %154, -1, !dbg !1470
  br i1 %302, label %303, label %305, !dbg !1472

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #27, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %304, metadata !1183, metadata !DIExpression()), !dbg !1250
  br label %305, !dbg !1474

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1317
  call void @llvm.dbg.value(metadata i64 %306, metadata !1183, metadata !DIExpression()), !dbg !1250
  br label %307, !dbg !1475

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1476
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1477
  call void @llvm.dbg.value(metadata i8 %309, metadata !1211, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %308, metadata !1208, metadata !DIExpression()), !dbg !1451
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1478
  %310 = add i64 %308, %122, !dbg !1479
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1480
  %312 = sub i64 %306, %310, !dbg !1481
  call void @llvm.dbg.value(metadata i32* %12, metadata !1230, metadata !DIExpression(DW_OP_deref)), !dbg !1482
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #26, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %313, metadata !1233, metadata !DIExpression()), !dbg !1482
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1484

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1208, metadata !DIExpression()), !dbg !1451
  %315 = icmp ugt i64 %306, %310, !dbg !1485
  br i1 %315, label %316, label %341, !dbg !1487

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1488
  br label %318, !dbg !1488

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1208, metadata !DIExpression()), !dbg !1451
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1489
  %322 = load i8, i8* %321, align 1, !dbg !1489, !tbaa !772
  %323 = icmp eq i8 %322, 0, !dbg !1487
  br i1 %323, label %341, label %324, !dbg !1488

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %325, metadata !1208, metadata !DIExpression()), !dbg !1451
  %326 = add i64 %325, %122, !dbg !1491
  %327 = icmp ult i64 %326, %306, !dbg !1485
  br i1 %327, label %318, label %341, !dbg !1487, !llvm.loop !1492

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1493
  call void @llvm.dbg.value(metadata i64 1, metadata !1234, metadata !DIExpression()), !dbg !1494
  br i1 %330, label %331, label %344, !dbg !1493

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1234, metadata !DIExpression()), !dbg !1494
  %333 = add i64 %332, %310, !dbg !1495
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1498
  %335 = load i8, i8* %334, align 1, !dbg !1498, !tbaa !772
  %336 = sext i8 %335 to i32, !dbg !1498
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1499

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %338, metadata !1234, metadata !DIExpression()), !dbg !1494
  %339 = icmp eq i64 %338, %313, !dbg !1501
  br i1 %339, label %344, label %331, !dbg !1502, !llvm.loop !1503

340:                                              ; preds = %307
  br label %341, !dbg !1505

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1211, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 undef, metadata !1208, metadata !DIExpression()), !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1505
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1506, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %345, metadata !1230, metadata !DIExpression()), !dbg !1482
  %346 = call i32 @iswprint(i32 %345) #26, !dbg !1508
  %347 = icmp eq i32 %346, 0, !dbg !1508
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1509
  call void @llvm.dbg.value(metadata i8 %348, metadata !1211, metadata !DIExpression()), !dbg !1451
  %349 = add i64 %313, %308, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %349, metadata !1208, metadata !DIExpression()), !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1505
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #27, !dbg !1511
  %351 = icmp eq i32 %350, 0, !dbg !1512
  br i1 %351, label %307, label %353, !dbg !1513, !llvm.loop !1514

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1211, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 undef, metadata !1208, metadata !DIExpression()), !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #26, !dbg !1505
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1516
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #26, !dbg !1516
  call void @llvm.dbg.value(metadata i8 %354, metadata !1211, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %355, metadata !1208, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %306, metadata !1183, metadata !DIExpression()), !dbg !1250
  %356 = and i8 %354, 1, !dbg !1455
  %357 = icmp eq i8 %356, 0, !dbg !1455
  call void @llvm.dbg.value(metadata i1 %357, metadata !1207, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1317
  %358 = icmp ugt i64 %355, 1, !dbg !1517
  br i1 %358, label %367, label %359, !dbg !1456

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1518
  br i1 %364, label %367, label %365, !dbg !1518

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i8 %472, metadata !1207, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %441, metadata !1206, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %440, metadata !1205, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %439, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %438, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %371, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %437, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %375, metadata !1189, metadata !DIExpression()), !dbg !1250
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %372, metadata !1241, metadata !DIExpression()), !dbg !1520
  %373 = and i1 %102, %368
  br label %374, !dbg !1521

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1310
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1250
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1259
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1317
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1317
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1522
  call void @llvm.dbg.value(metadata i8 %380, metadata !1206, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %379, metadata !1205, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %378, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %377, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %376, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %375, metadata !1189, metadata !DIExpression()), !dbg !1250
  br i1 %373, label %381, label %427, !dbg !1523

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1528

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1206, metadata !DIExpression()), !dbg !1317
  %383 = and i8 %377, 1, !dbg !1531
  %384 = icmp eq i8 %383, 0, !dbg !1531
  %385 = and i1 %110, %384, !dbg !1531
  br i1 %385, label %386, label %402, !dbg !1531

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1533
  br i1 %387, label %388, label %390, !dbg !1537

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1533
  store i8 39, i8* %389, align 1, !dbg !1533, !tbaa !772
  br label %390, !dbg !1533

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %391, metadata !1190, metadata !DIExpression()), !dbg !1250
  %392 = icmp ult i64 %391, %129, !dbg !1538
  br i1 %392, label %393, label %395, !dbg !1541

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1538
  store i8 36, i8* %394, align 1, !dbg !1538, !tbaa !772
  br label %395, !dbg !1538

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %396, metadata !1190, metadata !DIExpression()), !dbg !1250
  %397 = icmp ult i64 %396, %129, !dbg !1542
  br i1 %397, label %398, label %400, !dbg !1545

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1542
  store i8 39, i8* %399, align 1, !dbg !1542, !tbaa !772
  br label %400, !dbg !1542

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %401, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1197, metadata !DIExpression()), !dbg !1250
  br label %402, !dbg !1546

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1250
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %404, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %403, metadata !1190, metadata !DIExpression()), !dbg !1250
  %405 = icmp ult i64 %403, %129, !dbg !1547
  br i1 %405, label %406, label %408, !dbg !1550

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1547
  store i8 92, i8* %407, align 1, !dbg !1547, !tbaa !772
  br label %408, !dbg !1547

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %409, metadata !1190, metadata !DIExpression()), !dbg !1250
  %410 = icmp ult i64 %409, %129, !dbg !1551
  br i1 %410, label %411, label %415, !dbg !1554

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1551
  %413 = or i8 %412, 48, !dbg !1551
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1551
  store i8 %413, i8* %414, align 1, !dbg !1551, !tbaa !772
  br label %415, !dbg !1551

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %416, metadata !1190, metadata !DIExpression()), !dbg !1250
  %417 = icmp ult i64 %416, %129, !dbg !1555
  br i1 %417, label %418, label %423, !dbg !1558

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1555
  %420 = and i8 %419, 7, !dbg !1555
  %421 = or i8 %420, 48, !dbg !1555
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1555
  store i8 %421, i8* %422, align 1, !dbg !1555, !tbaa !772
  br label %423, !dbg !1555

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %424, metadata !1190, metadata !DIExpression()), !dbg !1250
  %425 = and i8 %378, 7, !dbg !1559
  %426 = or i8 %425, 48, !dbg !1560
  call void @llvm.dbg.value(metadata i8 %426, metadata !1200, metadata !DIExpression()), !dbg !1317
  br label %436, !dbg !1561

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1562
  %429 = icmp eq i8 %428, 0, !dbg !1562
  br i1 %429, label %436, label %430, !dbg !1564

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1565
  br i1 %431, label %432, label %434, !dbg !1569

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1565
  store i8 92, i8* %433, align 1, !dbg !1565, !tbaa !772
  br label %434, !dbg !1565

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %435, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1205, metadata !DIExpression()), !dbg !1317
  br label %436, !dbg !1570

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1250
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1259
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1317
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1317
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1317
  call void @llvm.dbg.value(metadata i8 %441, metadata !1206, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %440, metadata !1205, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %439, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %438, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %437, metadata !1190, metadata !DIExpression()), !dbg !1250
  %442 = add i64 %375, 1, !dbg !1571
  %443 = icmp ugt i64 %372, %442, !dbg !1573
  br i1 %443, label %444, label %471, !dbg !1574

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1575
  %446 = icmp ne i8 %445, 0, !dbg !1575
  %447 = and i8 %441, 1, !dbg !1575
  %448 = icmp eq i8 %447, 0, !dbg !1575
  %449 = and i1 %446, %448, !dbg !1575
  br i1 %449, label %450, label %461, !dbg !1575

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1578
  br i1 %451, label %452, label %454, !dbg !1582

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1578
  store i8 39, i8* %453, align 1, !dbg !1578, !tbaa !772
  br label %454, !dbg !1578

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %455, metadata !1190, metadata !DIExpression()), !dbg !1250
  %456 = icmp ult i64 %455, %129, !dbg !1583
  br i1 %456, label %457, label %459, !dbg !1586

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1583
  store i8 39, i8* %458, align 1, !dbg !1583, !tbaa !772
  br label %459, !dbg !1583

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %460, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1197, metadata !DIExpression()), !dbg !1250
  br label %461, !dbg !1587

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1588
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %463, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %462, metadata !1190, metadata !DIExpression()), !dbg !1250
  %464 = icmp ult i64 %462, %129, !dbg !1589
  br i1 %464, label %465, label %467, !dbg !1592

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1589
  store i8 %439, i8* %466, align 1, !dbg !1589, !tbaa !772
  br label %467, !dbg !1589

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %468, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %442, metadata !1189, metadata !DIExpression()), !dbg !1250
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1593
  %470 = load i8, i8* %469, align 1, !dbg !1593, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %470, metadata !1200, metadata !DIExpression()), !dbg !1317
  br label %374, !dbg !1594, !llvm.loop !1595

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i8 %472, metadata !1207, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %441, metadata !1206, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %440, metadata !1205, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %439, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %438, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %371, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %437, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %375, metadata !1189, metadata !DIExpression()), !dbg !1250
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1310
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1250
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1255
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1598
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1250
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1250
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1317
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1317
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1317
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %482, metadata !1207, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %481, metadata !1206, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %156, metadata !1205, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %480, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %479, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %478, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %477, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %476, metadata !1191, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %475, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %474, metadata !1189, metadata !DIExpression()), !dbg !1250
  br i1 %116, label %494, label %484, !dbg !1599

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1601
  %486 = zext i8 %485 to i64, !dbg !1601
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1602
  %488 = load i32, i32* %487, align 4, !dbg !1602, !tbaa !987
  %489 = and i8 %480, 31, !dbg !1603
  %490 = zext i8 %489 to i32, !dbg !1603
  %491 = shl nuw i32 1, %490, !dbg !1604
  %492 = and i32 %488, %491, !dbg !1604
  %493 = icmp eq i32 %492, 0, !dbg !1604
  br i1 %493, label %494, label %495, !dbg !1605

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1606

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1607
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1250
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1255
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1598
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1259
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1260
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1317
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1317
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %503, metadata !1207, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %502, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %501, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %500, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %499, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %498, metadata !1191, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %497, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %496, metadata !1189, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.label(metadata !1247), !dbg !1608
  br i1 %109, label %505, label %635, !dbg !1609

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1206, metadata !DIExpression()), !dbg !1317
  %506 = and i8 %500, 1, !dbg !1611
  %507 = icmp eq i8 %506, 0, !dbg !1611
  %508 = and i1 %110, %507, !dbg !1611
  br i1 %508, label %509, label %525, !dbg !1611

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1613
  br i1 %510, label %511, label %513, !dbg !1617

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1613
  store i8 39, i8* %512, align 1, !dbg !1613, !tbaa !772
  br label %513, !dbg !1613

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %514, metadata !1190, metadata !DIExpression()), !dbg !1250
  %515 = icmp ult i64 %514, %504, !dbg !1618
  br i1 %515, label %516, label %518, !dbg !1621

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1618
  store i8 36, i8* %517, align 1, !dbg !1618, !tbaa !772
  br label %518, !dbg !1618

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %519, metadata !1190, metadata !DIExpression()), !dbg !1250
  %520 = icmp ult i64 %519, %504, !dbg !1622
  br i1 %520, label %521, label %523, !dbg !1625

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1622
  store i8 39, i8* %522, align 1, !dbg !1622, !tbaa !772
  br label %523, !dbg !1622

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %524, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 1, metadata !1197, metadata !DIExpression()), !dbg !1250
  br label %525, !dbg !1626

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1317
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %527, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %526, metadata !1190, metadata !DIExpression()), !dbg !1250
  %528 = icmp ult i64 %526, %504, !dbg !1627
  br i1 %528, label %529, label %531, !dbg !1630

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1627
  store i8 92, i8* %530, align 1, !dbg !1627, !tbaa !772
  br label %531, !dbg !1627

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %543, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %542, metadata !1207, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %541, metadata !1206, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %540, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %539, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %538, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %537, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %536, metadata !1191, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %535, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %534, metadata !1189, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.label(metadata !1248), !dbg !1631
  br label %560, !dbg !1632

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1607
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1250
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1255
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1598
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1259
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1260
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1635
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1317
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1317
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %542, metadata !1207, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %541, metadata !1206, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %540, metadata !1200, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8 %539, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %538, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %537, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %536, metadata !1191, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %535, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %534, metadata !1189, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.label(metadata !1248), !dbg !1631
  %544 = and i8 %538, 1, !dbg !1632
  %545 = icmp ne i8 %544, 0, !dbg !1632
  %546 = and i8 %541, 1, !dbg !1632
  %547 = icmp eq i8 %546, 0, !dbg !1632
  %548 = and i1 %545, %547, !dbg !1632
  br i1 %548, label %549, label %560, !dbg !1632

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1636
  br i1 %550, label %551, label %553, !dbg !1640

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1636
  store i8 39, i8* %552, align 1, !dbg !1636, !tbaa !772
  br label %553, !dbg !1636

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %554, metadata !1190, metadata !DIExpression()), !dbg !1250
  %555 = icmp ult i64 %554, %543, !dbg !1641
  br i1 %555, label %556, label %558, !dbg !1644

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1641
  store i8 39, i8* %557, align 1, !dbg !1641, !tbaa !772
  br label %558, !dbg !1641

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %559, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1197, metadata !DIExpression()), !dbg !1250
  br label %560, !dbg !1645

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1317
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %569, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %568, metadata !1190, metadata !DIExpression()), !dbg !1250
  %570 = icmp ult i64 %568, %561, !dbg !1646
  br i1 %570, label %571, label %573, !dbg !1649

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1646
  store i8 %563, i8* %572, align 1, !dbg !1646, !tbaa !772
  br label %573, !dbg !1646

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %574, metadata !1190, metadata !DIExpression()), !dbg !1250
  %575 = icmp eq i8 %562, 0, !dbg !1650
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1652
  call void @llvm.dbg.value(metadata i8 %576, metadata !1199, metadata !DIExpression()), !dbg !1250
  br label %577, !dbg !1653

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1607
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1250
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1255
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1598
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1259
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1250
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1261
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %584, metadata !1199, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %583, metadata !1198, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %582, metadata !1197, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %581, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %580, metadata !1191, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %579, metadata !1190, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %578, metadata !1189, metadata !DIExpression()), !dbg !1250
  %586 = add i64 %578, 1, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %586, metadata !1189, metadata !DIExpression()), !dbg !1250
  br label %121, !dbg !1655, !llvm.loop !1656

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1658
  %590 = and i1 %110, %589, !dbg !1660
  %591 = xor i1 %590, true, !dbg !1660
  %592 = or i1 %109, %591, !dbg !1660
  br i1 %592, label %593, label %635, !dbg !1660

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1661
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1661
  br i1 %597, label %598, label %607, !dbg !1661

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1663
  %600 = icmp eq i8 %599, 0, !dbg !1663
  br i1 %600, label %603, label %601, !dbg !1666

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1667
  br label %652, !dbg !1668

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1669
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1671
  br i1 %606, label %26, label %607, !dbg !1671

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1672
  %610 = and i1 %609, %608, !dbg !1674
  br i1 %610, label %611, label %626, !dbg !1674

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1192, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %123, metadata !1190, metadata !DIExpression()), !dbg !1250
  %612 = load i8, i8* %97, align 1, !dbg !1675, !tbaa !772
  %613 = icmp eq i8 %612, 0, !dbg !1678
  br i1 %613, label %626, label %614, !dbg !1678

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1192, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %617, metadata !1190, metadata !DIExpression()), !dbg !1250
  %618 = icmp ult i64 %617, %129, !dbg !1679
  br i1 %618, label %619, label %621, !dbg !1682

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1679
  store i8 %615, i8* %620, align 1, !dbg !1679, !tbaa !772
  br label %621, !dbg !1679

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %622, metadata !1190, metadata !DIExpression()), !dbg !1250
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1683
  call void @llvm.dbg.value(metadata i8* %623, metadata !1192, metadata !DIExpression()), !dbg !1250
  %624 = load i8, i8* %623, align 1, !dbg !1675, !tbaa !772
  %625 = icmp eq i8 %624, 0, !dbg !1678
  br i1 %625, label %626, label %614, !dbg !1678, !llvm.loop !1684

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1292
  call void @llvm.dbg.value(metadata i64 %627, metadata !1190, metadata !DIExpression()), !dbg !1250
  %628 = icmp ult i64 %627, %129, !dbg !1686
  br i1 %628, label %629, label %652, !dbg !1688

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1689
  store i8 0, i8* %630, align 1, !dbg !1690, !tbaa !772
  br label %652, !dbg !1689

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %637, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.label(metadata !1249), !dbg !1691
  %633 = icmp eq i8 %101, 0, !dbg !1692
  %634 = select i1 %633, i32 2, i32 4, !dbg !1692
  br label %642, !dbg !1692

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1181, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i64 %637, metadata !1183, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.label(metadata !1249), !dbg !1691
  %639 = icmp eq i32 %93, 2, !dbg !1694
  %640 = icmp eq i8 %636, 0, !dbg !1692
  %641 = select i1 %640, i32 2, i32 4, !dbg !1692
  br i1 %639, label %642, label %646, !dbg !1692

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1692

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1184, metadata !DIExpression()), !dbg !1250
  %650 = and i32 %5, -3, !dbg !1695
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1696
  br label %652, !dbg !1697

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1698
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #9 !dbg !1699 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1703, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %1, metadata !1704, metadata !DIExpression()), !dbg !1707
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #26, !dbg !1708
  call void @llvm.dbg.value(metadata i8* %3, metadata !1705, metadata !DIExpression()), !dbg !1707
  %4 = icmp eq i8* %3, %0, !dbg !1709
  br i1 %4, label %5, label %72, !dbg !1711

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #26, !dbg !1712
  call void @llvm.dbg.value(metadata i8* %6, metadata !1706, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %6, metadata !1713, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* undef, metadata !1719, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 85, metadata !1720, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 84, metadata !1721, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 70, metadata !1722, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 45, metadata !1723, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 56, metadata !1724, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1729
  %7 = load i8, i8* %6, align 1, !dbg !1732, !tbaa !772
  %8 = and i8 %7, -33, !dbg !1732
  %9 = sext i8 %8 to i32, !dbg !1732
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1732

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1734, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8* undef, metadata !1739, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 84, metadata !1740, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 70, metadata !1741, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 45, metadata !1742, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 56, metadata !1743, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1744, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1746, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1747, metadata !DIExpression()), !dbg !1748
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1752
  %12 = load i8, i8* %11, align 1, !dbg !1752, !tbaa !772
  %13 = and i8 %12, -33, !dbg !1752
  %14 = icmp eq i8 %13, 84, !dbg !1752
  br i1 %14, label %15, label %69, !dbg !1752

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1754, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8* undef, metadata !1759, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 70, metadata !1760, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 45, metadata !1761, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 56, metadata !1762, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1767
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1771
  %17 = load i8, i8* %16, align 1, !dbg !1771, !tbaa !772
  %18 = and i8 %17, -33, !dbg !1771
  %19 = icmp eq i8 %18, 70, !dbg !1771
  br i1 %19, label %20, label %69, !dbg !1771

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1773, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8* undef, metadata !1778, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 45, metadata !1779, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 56, metadata !1780, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1781, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1782, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1785
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1789
  %22 = load i8, i8* %21, align 1, !dbg !1789, !tbaa !772
  %23 = icmp eq i8 %22, 45, !dbg !1789
  br i1 %23, label %24, label %69, !dbg !1791

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1792, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* undef, metadata !1797, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 56, metadata !1798, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1803
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1807
  %26 = load i8, i8* %25, align 1, !dbg !1807, !tbaa !772
  %27 = icmp eq i8 %26, 56, !dbg !1807
  br i1 %27, label %28, label %69, !dbg !1809

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1810, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8* undef, metadata !1815, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1820
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1824
  %30 = load i8, i8* %29, align 1, !dbg !1824, !tbaa !772
  %31 = icmp eq i8 %30, 0, !dbg !1824
  br i1 %31, label %32, label %69, !dbg !1826

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1827, !tbaa !772
  %34 = icmp eq i8 %33, 96, !dbg !1828
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !1827
  br label %72, !dbg !1829

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1734, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8* undef, metadata !1739, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 66, metadata !1740, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 49, metadata !1741, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 56, metadata !1742, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 48, metadata !1743, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 51, metadata !1744, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 48, metadata !1745, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 0, metadata !1746, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 0, metadata !1747, metadata !DIExpression()), !dbg !1830
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1834
  %38 = load i8, i8* %37, align 1, !dbg !1834, !tbaa !772
  %39 = and i8 %38, -33, !dbg !1834
  %40 = icmp eq i8 %39, 66, !dbg !1834
  br i1 %40, label %41, label %69, !dbg !1834

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1754, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* undef, metadata !1759, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 49, metadata !1760, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 56, metadata !1761, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 48, metadata !1762, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 51, metadata !1763, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 48, metadata !1764, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 0, metadata !1765, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1835
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1837
  %43 = load i8, i8* %42, align 1, !dbg !1837, !tbaa !772
  %44 = icmp eq i8 %43, 49, !dbg !1837
  br i1 %44, label %45, label %69, !dbg !1838

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1773, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* undef, metadata !1778, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 56, metadata !1779, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 48, metadata !1780, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 51, metadata !1781, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 48, metadata !1782, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1839
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1841
  %47 = load i8, i8* %46, align 1, !dbg !1841, !tbaa !772
  %48 = icmp eq i8 %47, 56, !dbg !1841
  br i1 %48, label %49, label %69, !dbg !1842

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1792, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* undef, metadata !1797, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 48, metadata !1798, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 51, metadata !1799, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 48, metadata !1800, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1843
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1845
  %51 = load i8, i8* %50, align 1, !dbg !1845, !tbaa !772
  %52 = icmp eq i8 %51, 48, !dbg !1845
  br i1 %52, label %53, label %69, !dbg !1846

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1810, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* undef, metadata !1815, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 51, metadata !1816, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 48, metadata !1817, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1819, metadata !DIExpression()), !dbg !1847
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1849
  %55 = load i8, i8* %54, align 1, !dbg !1849, !tbaa !772
  %56 = icmp eq i8 %55, 51, !dbg !1849
  br i1 %56, label %57, label %69, !dbg !1850

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1851, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* undef, metadata !1856, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 48, metadata !1857, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, metadata !1858, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, metadata !1859, metadata !DIExpression()), !dbg !1860
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1864
  %59 = load i8, i8* %58, align 1, !dbg !1864, !tbaa !772
  %60 = icmp eq i8 %59, 48, !dbg !1864
  br i1 %60, label %61, label %69, !dbg !1866

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1867, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* undef, metadata !1872, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1875
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1879
  %63 = load i8, i8* %62, align 1, !dbg !1879, !tbaa !772
  %64 = icmp eq i8 %63, 0, !dbg !1879
  br i1 %64, label %65, label %69, !dbg !1881

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1882, !tbaa !772
  %67 = icmp eq i8 %66, 96, !dbg !1883
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !1882
  br label %72, !dbg !1884

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1885
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !1886
  br label %72, !dbg !1887

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1707
  ret i8* %73, !dbg !1888
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !1889 i32 @iswprint(i32) local_unnamed_addr #3

; Function Attrs: nounwind readonly willreturn
declare !dbg !1893 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #9 !dbg !1899 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1903, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %1, metadata !1904, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1905, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8* %0, metadata !1907, metadata !DIExpression()) #26, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %1, metadata !1912, metadata !DIExpression()) #26, !dbg !1920
  call void @llvm.dbg.value(metadata i64* null, metadata !1913, metadata !DIExpression()) #26, !dbg !1920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1914, metadata !DIExpression()) #26, !dbg !1920
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1922
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1922
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1915, metadata !DIExpression()) #26, !dbg !1920
  %6 = tail call i32* @__errno_location() #29, !dbg !1923
  %7 = load i32, i32* %6, align 4, !dbg !1923, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %7, metadata !1916, metadata !DIExpression()) #26, !dbg !1920
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1924
  %9 = load i32, i32* %8, align 4, !dbg !1924, !tbaa !1124
  %10 = or i32 %9, 1, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %10, metadata !1917, metadata !DIExpression()) #26, !dbg !1920
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1926
  %12 = load i32, i32* %11, align 8, !dbg !1926, !tbaa !1073
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1927
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1928
  %15 = load i8*, i8** %14, align 8, !dbg !1928, !tbaa !1146
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1929
  %17 = load i8*, i8** %16, align 8, !dbg !1929, !tbaa !1149
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #26, !dbg !1930
  %19 = add i64 %18, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %19, metadata !1918, metadata !DIExpression()) #26, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %19, metadata !1932, metadata !DIExpression()) #26, !dbg !1937
  %20 = tail call noalias i8* @xmalloc(i64 %19) #26, !dbg !1939
  call void @llvm.dbg.value(metadata i8* %20, metadata !1919, metadata !DIExpression()) #26, !dbg !1920
  %21 = load i32, i32* %11, align 8, !dbg !1940, !tbaa !1073
  %22 = load i8*, i8** %14, align 8, !dbg !1941, !tbaa !1146
  %23 = load i8*, i8** %16, align 8, !dbg !1942, !tbaa !1149
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #26, !dbg !1943
  store i32 %7, i32* %6, align 4, !dbg !1944, !tbaa !987
  ret i8* %20, !dbg !1945
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #9 !dbg !1908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1907, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %1, metadata !1912, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64* %2, metadata !1913, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1914, metadata !DIExpression()), !dbg !1946
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1947
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1947
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1915, metadata !DIExpression()), !dbg !1946
  %7 = tail call i32* @__errno_location() #29, !dbg !1948
  %8 = load i32, i32* %7, align 4, !dbg !1948, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %8, metadata !1916, metadata !DIExpression()), !dbg !1946
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1949
  %10 = load i32, i32* %9, align 4, !dbg !1949, !tbaa !1124
  %11 = icmp eq i64* %2, null, !dbg !1950
  %12 = zext i1 %11 to i32, !dbg !1950
  %13 = or i32 %10, %12, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %13, metadata !1917, metadata !DIExpression()), !dbg !1946
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1952
  %15 = load i32, i32* %14, align 8, !dbg !1952, !tbaa !1073
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1953
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1954
  %18 = load i8*, i8** %17, align 8, !dbg !1954, !tbaa !1146
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1955
  %20 = load i8*, i8** %19, align 8, !dbg !1955, !tbaa !1149
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1956
  %22 = add i64 %21, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %22, metadata !1918, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %22, metadata !1932, metadata !DIExpression()) #26, !dbg !1958
  %23 = tail call noalias i8* @xmalloc(i64 %22) #26, !dbg !1960
  call void @llvm.dbg.value(metadata i8* %23, metadata !1919, metadata !DIExpression()), !dbg !1946
  %24 = load i32, i32* %14, align 8, !dbg !1961, !tbaa !1073
  %25 = load i8*, i8** %17, align 8, !dbg !1962, !tbaa !1146
  %26 = load i8*, i8** %19, align 8, !dbg !1963, !tbaa !1149
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1964
  store i32 %8, i32* %7, align 4, !dbg !1965, !tbaa !987
  br i1 %11, label %29, label %28, !dbg !1966

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1967, !tbaa !1969
  br label %29, !dbg !1970

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1971
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #9 !dbg !1972 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1976, !tbaa !583
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1974, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i32 1, metadata !1975, metadata !DIExpression()), !dbg !1977
  %2 = load i32, i32* @nslots, align 4, !dbg !1978, !tbaa !987
  %3 = icmp sgt i32 %2, 1, !dbg !1981
  br i1 %3, label %4, label %12, !dbg !1982

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1981
  br label %6, !dbg !1982

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1975, metadata !DIExpression()), !dbg !1977
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1983
  %9 = load i8*, i8** %8, align 8, !dbg !1983, !tbaa !1984
  tail call void @free(i8* %9) #26, !dbg !1986
  %10 = add nuw nsw i64 %7, 1, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %10, metadata !1975, metadata !DIExpression()), !dbg !1977
  %11 = icmp eq i64 %10, %5, !dbg !1981
  br i1 %11, label %12, label %6, !dbg !1982, !llvm.loop !1988

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1990
  %14 = load i8*, i8** %13, align 8, !dbg !1990, !tbaa !1984
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1992
  br i1 %15, label %17, label %16, !dbg !1993

16:                                               ; preds = %12
  tail call void @free(i8* %14) #26, !dbg !1994
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1996, !tbaa !1997
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1998, !tbaa !1984
  br label %17, !dbg !1999

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2000
  br i1 %18, label %21, label %19, !dbg !2002

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2003
  tail call void @free(i8* %20) #26, !dbg !2005
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2006, !tbaa !583
  br label %21, !dbg !2007

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2008, !tbaa !987
  ret void, !dbg !2009
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2012, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i8* %1, metadata !2013, metadata !DIExpression()), !dbg !2014
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2015
  ret i8* %3, !dbg !2016
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #9 !dbg !2017 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2021, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %1, metadata !2022, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %2, metadata !2023, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2024, metadata !DIExpression()), !dbg !2036
  %5 = tail call i32* @__errno_location() #29, !dbg !2037
  %6 = load i32, i32* %5, align 4, !dbg !2037, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %6, metadata !2025, metadata !DIExpression()), !dbg !2036
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2038, !tbaa !583
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2026, metadata !DIExpression()), !dbg !2036
  %8 = icmp slt i32 %0, 0, !dbg !2039
  br i1 %8, label %9, label %10, !dbg !2041

9:                                                ; preds = %4
  tail call void @abort() #25, !dbg !2042
  unreachable, !dbg !2042

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2043, !tbaa !987
  %12 = icmp sgt i32 %11, %0, !dbg !2044
  br i1 %12, label %34, label %13, !dbg !2045

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2046
  call void @llvm.dbg.value(metadata i1 %14, metadata !2027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2047
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2030, metadata !DIExpression()), !dbg !2047
  %15 = icmp eq i32 %0, 2147483647, !dbg !2048
  br i1 %15, label %16, label %17, !dbg !2050

16:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !2051
  unreachable, !dbg !2051

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2052
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2052
  %20 = add nuw nsw i32 %0, 1, !dbg !2053
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2054
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #26, !dbg !2055
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2055
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2026, metadata !DIExpression()), !dbg !2036
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2056, !tbaa !583
  br i1 %14, label %25, label %26, !dbg !2057

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2058, !tbaa.struct !2060
  br label %26, !dbg !2061

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2062, !tbaa !987
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2063
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2064
  %31 = sub nsw i32 %20, %27, !dbg !2065
  %32 = sext i32 %31 to i64, !dbg !2066
  %33 = shl nsw i64 %32, 4, !dbg !2067
  call void @llvm.dbg.value(metadata i8* %30, metadata !1459, metadata !DIExpression()) #26, !dbg !2068
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()) #26, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %33, metadata !1466, metadata !DIExpression()) #26, !dbg !2068
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #26, !dbg !2070
  store i32 %20, i32* @nslots, align 4, !dbg !2071, !tbaa !987
  br label %34, !dbg !2072

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2036
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2026, metadata !DIExpression()), !dbg !2036
  %36 = zext i32 %0 to i64, !dbg !2073
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2074
  %38 = load i64, i64* %37, align 8, !dbg !2074, !tbaa !1997
  call void @llvm.dbg.value(metadata i64 %38, metadata !2031, metadata !DIExpression()), !dbg !2075
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2076
  %40 = load i8*, i8** %39, align 8, !dbg !2076, !tbaa !1984
  call void @llvm.dbg.value(metadata i8* %40, metadata !2033, metadata !DIExpression()), !dbg !2075
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2077
  %42 = load i32, i32* %41, align 4, !dbg !2077, !tbaa !1124
  %43 = or i32 %42, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i32 %43, metadata !2034, metadata !DIExpression()), !dbg !2075
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2079
  %45 = load i32, i32* %44, align 8, !dbg !2079, !tbaa !1073
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2080
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2081
  %48 = load i8*, i8** %47, align 8, !dbg !2081, !tbaa !1146
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2082
  %50 = load i8*, i8** %49, align 8, !dbg !2082, !tbaa !1149
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %51, metadata !2035, metadata !DIExpression()), !dbg !2075
  %52 = icmp ugt i64 %38, %51, !dbg !2084
  br i1 %52, label %63, label %53, !dbg !2086

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %54, metadata !2031, metadata !DIExpression()), !dbg !2075
  store i64 %54, i64* %37, align 8, !dbg !2089, !tbaa !1997
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2090
  br i1 %55, label %57, label %56, !dbg !2092

56:                                               ; preds = %53
  tail call void @free(i8* %40) #26, !dbg !2093
  br label %57, !dbg !2093

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1932, metadata !DIExpression()) #26, !dbg !2094
  %58 = tail call noalias i8* @xmalloc(i64 %54) #26, !dbg !2096
  call void @llvm.dbg.value(metadata i8* %58, metadata !2033, metadata !DIExpression()), !dbg !2075
  store i8* %58, i8** %39, align 8, !dbg !2097, !tbaa !1984
  %59 = load i32, i32* %44, align 8, !dbg !2098, !tbaa !1073
  %60 = load i8*, i8** %47, align 8, !dbg !2099, !tbaa !1146
  %61 = load i8*, i8** %49, align 8, !dbg !2100, !tbaa !1149
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2101
  br label %63, !dbg !2102

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2075
  call void @llvm.dbg.value(metadata i8* %64, metadata !2033, metadata !DIExpression()), !dbg !2075
  store i32 %6, i32* %5, align 4, !dbg !2103, !tbaa !987
  ret i8* %64, !dbg !2104
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2109, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8* %1, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i64 %2, metadata !2111, metadata !DIExpression()), !dbg !2112
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2113
  ret i8* %4, !dbg !2114
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #9 !dbg !2115 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2117, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 0, metadata !2012, metadata !DIExpression()) #26, !dbg !2119
  call void @llvm.dbg.value(metadata i8* %0, metadata !2013, metadata !DIExpression()) #26, !dbg !2119
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2121
  ret i8* %2, !dbg !2122
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2123 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %1, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 0, metadata !2109, metadata !DIExpression()) #26, !dbg !2130
  call void @llvm.dbg.value(metadata i8* %0, metadata !2110, metadata !DIExpression()) #26, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %1, metadata !2111, metadata !DIExpression()) #26, !dbg !2130
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #26, !dbg !2132
  ret i8* %3, !dbg !2133
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2134 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2138, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i32 %1, metadata !2139, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8* %2, metadata !2140, metadata !DIExpression()), !dbg !2142
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2143
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2143
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2141, metadata !DIExpression()), !dbg !2144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145), !dbg !2148
  call void @llvm.dbg.value(metadata i32 %1, metadata !2149, metadata !DIExpression()) #26, !dbg !2155
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2154, metadata !DIExpression()) #26, !dbg !2157
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2157, !alias.scope !2145
  %6 = icmp eq i32 %1, 10, !dbg !2158
  br i1 %6, label %7, label %8, !dbg !2160

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !2161, !noalias !2145
  unreachable, !dbg !2161

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2162
  store i32 %1, i32* %9, align 8, !dbg !2163, !tbaa !1073, !alias.scope !2145
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2164
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2165
  ret i8* %10, !dbg !2166
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2167 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %1, metadata !2172, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %2, metadata !2173, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %3, metadata !2174, metadata !DIExpression()), !dbg !2176
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2177
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2177
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2175, metadata !DIExpression()), !dbg !2178
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2179), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %1, metadata !2149, metadata !DIExpression()) #26, !dbg !2183
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2154, metadata !DIExpression()) #26, !dbg !2185
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #26, !dbg !2185, !alias.scope !2179
  %7 = icmp eq i32 %1, 10, !dbg !2186
  br i1 %7, label %8, label %9, !dbg !2187

8:                                                ; preds = %4
  tail call void @abort() #25, !dbg !2188, !noalias !2179
  unreachable, !dbg !2188

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2189
  store i32 %1, i32* %10, align 8, !dbg !2190, !tbaa !1073, !alias.scope !2179
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2191
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2192
  ret i8* %11, !dbg !2193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2194 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8* %1, metadata !2199, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 0, metadata !2138, metadata !DIExpression()) #26, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %0, metadata !2139, metadata !DIExpression()) #26, !dbg !2201
  call void @llvm.dbg.value(metadata i8* %1, metadata !2140, metadata !DIExpression()) #26, !dbg !2201
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2203
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2203
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2141, metadata !DIExpression()) #26, !dbg !2204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205) #26, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %0, metadata !2149, metadata !DIExpression()) #26, !dbg !2209
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2154, metadata !DIExpression()) #26, !dbg !2211
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #26, !dbg !2211, !alias.scope !2205
  %5 = icmp eq i32 %0, 10, !dbg !2212
  br i1 %5, label %6, label %7, !dbg !2213

6:                                                ; preds = %2
  tail call void @abort() #25, !dbg !2214, !noalias !2205
  unreachable, !dbg !2214

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2215
  store i32 %0, i32* %8, align 8, !dbg !2216, !tbaa !1073, !alias.scope !2205
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2217
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2218
  ret i8* %9, !dbg !2219
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2220 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8* %1, metadata !2225, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i64 %2, metadata !2226, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32 0, metadata !2171, metadata !DIExpression()) #26, !dbg !2228
  call void @llvm.dbg.value(metadata i32 %0, metadata !2172, metadata !DIExpression()) #26, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %1, metadata !2173, metadata !DIExpression()) #26, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %2, metadata !2174, metadata !DIExpression()) #26, !dbg !2228
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2230
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2175, metadata !DIExpression()) #26, !dbg !2231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232) #26, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %0, metadata !2149, metadata !DIExpression()) #26, !dbg !2236
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2154, metadata !DIExpression()) #26, !dbg !2238
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #26, !dbg !2238, !alias.scope !2232
  %6 = icmp eq i32 %0, 10, !dbg !2239
  br i1 %6, label %7, label %8, !dbg !2240

7:                                                ; preds = %3
  tail call void @abort() #25, !dbg !2241, !noalias !2232
  unreachable, !dbg !2241

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2242
  store i32 %0, i32* %9, align 8, !dbg !2243, !tbaa !1073, !alias.scope !2232
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #26, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2245
  ret i8* %10, !dbg !2246
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #9 !dbg !2247 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 %1, metadata !2252, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 %2, metadata !2253, metadata !DIExpression()), !dbg !2255
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2256
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2256
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2254, metadata !DIExpression()), !dbg !2257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2258, !tbaa.struct !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1091, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 %2, metadata !1092, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 %2, metadata !1094, metadata !DIExpression()), !dbg !2260
  %6 = lshr i8 %2, 5, !dbg !2262
  %7 = zext i8 %6 to i64, !dbg !2262
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2263
  call void @llvm.dbg.value(metadata i32* %8, metadata !1095, metadata !DIExpression()), !dbg !2260
  %9 = and i8 %2, 31, !dbg !2264
  %10 = zext i8 %9 to i32, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %10, metadata !1097, metadata !DIExpression()), !dbg !2260
  %11 = load i32, i32* %8, align 4, !dbg !2265, !tbaa !987
  %12 = lshr i32 %11, %10, !dbg !2266
  %13 = and i32 %12, 1, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %13, metadata !1098, metadata !DIExpression()), !dbg !2260
  %14 = xor i32 %13, 1, !dbg !2268
  %15 = shl i32 %14, %10, !dbg !2269
  %16 = xor i32 %15, %11, !dbg !2270
  store i32 %16, i32* %8, align 4, !dbg !2270, !tbaa !987
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2271
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2272
  ret i8* %17, !dbg !2273
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #9 !dbg !2274 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2278, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %1, metadata !2279, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()) #26, !dbg !2281
  call void @llvm.dbg.value(metadata i64 -1, metadata !2252, metadata !DIExpression()) #26, !dbg !2281
  call void @llvm.dbg.value(metadata i8 %1, metadata !2253, metadata !DIExpression()) #26, !dbg !2281
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2283
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2283
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2254, metadata !DIExpression()) #26, !dbg !2284
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2285, !tbaa.struct !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1091, metadata !DIExpression()) #26, !dbg !2286
  call void @llvm.dbg.value(metadata i8 %1, metadata !1092, metadata !DIExpression()) #26, !dbg !2286
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()) #26, !dbg !2286
  call void @llvm.dbg.value(metadata i8 %1, metadata !1094, metadata !DIExpression()) #26, !dbg !2286
  %5 = lshr i8 %1, 5, !dbg !2288
  %6 = zext i8 %5 to i64, !dbg !2288
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2289
  call void @llvm.dbg.value(metadata i32* %7, metadata !1095, metadata !DIExpression()) #26, !dbg !2286
  %8 = and i8 %1, 31, !dbg !2290
  %9 = zext i8 %8 to i32, !dbg !2290
  call void @llvm.dbg.value(metadata i32 %9, metadata !1097, metadata !DIExpression()) #26, !dbg !2286
  %10 = load i32, i32* %7, align 4, !dbg !2291, !tbaa !987
  %11 = lshr i32 %10, %9, !dbg !2292
  %12 = and i32 %11, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %12, metadata !1098, metadata !DIExpression()) #26, !dbg !2286
  %13 = xor i32 %12, 1, !dbg !2294
  %14 = shl i32 %13, %9, !dbg !2295
  %15 = xor i32 %14, %10, !dbg !2296
  store i32 %15, i32* %7, align 4, !dbg !2296, !tbaa !987
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #26, !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2298
  ret i8* %16, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #9 !dbg !2300 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %0, metadata !2278, metadata !DIExpression()) #26, !dbg !2304
  call void @llvm.dbg.value(metadata i8 58, metadata !2279, metadata !DIExpression()) #26, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()) #26, !dbg !2306
  call void @llvm.dbg.value(metadata i64 -1, metadata !2252, metadata !DIExpression()) #26, !dbg !2306
  call void @llvm.dbg.value(metadata i8 58, metadata !2253, metadata !DIExpression()) #26, !dbg !2306
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2308
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2254, metadata !DIExpression()) #26, !dbg !2309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2310, !tbaa.struct !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1091, metadata !DIExpression()) #26, !dbg !2311
  call void @llvm.dbg.value(metadata i8 58, metadata !1092, metadata !DIExpression()) #26, !dbg !2311
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()) #26, !dbg !2311
  call void @llvm.dbg.value(metadata i8 58, metadata !1094, metadata !DIExpression()) #26, !dbg !2311
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2313
  call void @llvm.dbg.value(metadata i32* %4, metadata !1095, metadata !DIExpression()) #26, !dbg !2311
  call void @llvm.dbg.value(metadata i32 26, metadata !1097, metadata !DIExpression()) #26, !dbg !2311
  %5 = load i32, i32* %4, align 4, !dbg !2314, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %5, metadata !1098, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2311
  %6 = or i32 %5, 67108864, !dbg !2315
  store i32 %6, i32* %4, align 4, !dbg !2315, !tbaa !987
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #26, !dbg !2316
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #26, !dbg !2317
  ret i8* %7, !dbg !2318
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2319 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2321, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i64 %1, metadata !2322, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()) #26, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %1, metadata !2252, metadata !DIExpression()) #26, !dbg !2324
  call void @llvm.dbg.value(metadata i8 58, metadata !2253, metadata !DIExpression()) #26, !dbg !2324
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2326
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2254, metadata !DIExpression()) #26, !dbg !2327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #26, !dbg !2328, !tbaa.struct !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1091, metadata !DIExpression()) #26, !dbg !2329
  call void @llvm.dbg.value(metadata i8 58, metadata !1092, metadata !DIExpression()) #26, !dbg !2329
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()) #26, !dbg !2329
  call void @llvm.dbg.value(metadata i8 58, metadata !1094, metadata !DIExpression()) #26, !dbg !2329
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32* %5, metadata !1095, metadata !DIExpression()) #26, !dbg !2329
  call void @llvm.dbg.value(metadata i32 26, metadata !1097, metadata !DIExpression()) #26, !dbg !2329
  %6 = load i32, i32* %5, align 4, !dbg !2332, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %6, metadata !1098, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #26, !dbg !2329
  %7 = or i32 %6, 67108864, !dbg !2333
  store i32 %7, i32* %5, align 4, !dbg !2333, !tbaa !987
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #26, !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #26, !dbg !2335
  ret i8* %8, !dbg !2336
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2337 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2154, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2343
  call void @llvm.dbg.value(metadata i32 %0, metadata !2339, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %1, metadata !2340, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %2, metadata !2341, metadata !DIExpression()), !dbg !2345
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2346
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2342, metadata !DIExpression()), !dbg !2347
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2348
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2349), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %1, metadata !2149, metadata !DIExpression()) #26, !dbg !2352
  call void @llvm.dbg.value(metadata i32 0, metadata !2154, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2352
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2343, !alias.scope !2349
  %8 = icmp eq i32 %1, 10, !dbg !2353
  br i1 %8, label %9, label %10, !dbg !2354

9:                                                ; preds = %3
  tail call void @abort() #25, !dbg !2355, !noalias !2349
  unreachable, !dbg !2355

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2154, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2352
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2348
  store i32 %1, i32* %11, align 8, !dbg !2348, !tbaa.struct !2259
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2348
  %13 = bitcast i32* %12 to i8*, !dbg !2348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2348, !tbaa.struct !2356
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2348
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1091, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 58, metadata !1092, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 58, metadata !1094, metadata !DIExpression()), !dbg !2357
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2359
  call void @llvm.dbg.value(metadata i32* %14, metadata !1095, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 26, metadata !1097, metadata !DIExpression()), !dbg !2357
  %15 = load i32, i32* %14, align 4, !dbg !2360, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %15, metadata !1098, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2357
  %16 = or i32 %15, 67108864, !dbg !2361
  store i32 %16, i32* %14, align 4, !dbg !2361, !tbaa !987
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2363
  ret i8* %17, !dbg !2364
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #9 !dbg !2365 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %1, metadata !2370, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %2, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %3, metadata !2372, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %0, metadata !2374, metadata !DIExpression()) #26, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %1, metadata !2379, metadata !DIExpression()) #26, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %2, metadata !2380, metadata !DIExpression()) #26, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %3, metadata !2381, metadata !DIExpression()) #26, !dbg !2384
  call void @llvm.dbg.value(metadata i64 -1, metadata !2382, metadata !DIExpression()) #26, !dbg !2384
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2383, metadata !DIExpression()) #26, !dbg !2387
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2388, !tbaa.struct !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1131, metadata !DIExpression()) #26, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %1, metadata !1132, metadata !DIExpression()) #26, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %2, metadata !1133, metadata !DIExpression()) #26, !dbg !2389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1131, metadata !DIExpression()) #26, !dbg !2389
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2391
  store i32 10, i32* %7, align 8, !dbg !2392, !tbaa !1073
  %8 = icmp ne i8* %1, null, !dbg !2393
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2394
  br i1 %10, label %12, label %11, !dbg !2394

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !2395
  unreachable, !dbg !2395

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2396
  store i8* %1, i8** %13, align 8, !dbg !2397, !tbaa !1146
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2398
  store i8* %2, i8** %14, align 8, !dbg !2399, !tbaa !1149
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #26, !dbg !2400
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2401
  ret i8* %15, !dbg !2402
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #9 !dbg !2375 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2374, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %1, metadata !2379, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %2, metadata !2380, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %3, metadata !2381, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %4, metadata !2382, metadata !DIExpression()), !dbg !2403
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2383, metadata !DIExpression()), !dbg !2405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2406, !tbaa.struct !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1131, metadata !DIExpression()) #26, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %1, metadata !1132, metadata !DIExpression()) #26, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %2, metadata !1133, metadata !DIExpression()) #26, !dbg !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1131, metadata !DIExpression()) #26, !dbg !2407
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2409
  store i32 10, i32* %8, align 8, !dbg !2410, !tbaa !1073
  %9 = icmp ne i8* %1, null, !dbg !2411
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2412
  br i1 %11, label %13, label %12, !dbg !2412

12:                                               ; preds = %5
  tail call void @abort() #25, !dbg !2413
  unreachable, !dbg !2413

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2414
  store i8* %1, i8** %14, align 8, !dbg !2415, !tbaa !1146
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2416
  store i8* %2, i8** %15, align 8, !dbg !2417, !tbaa !1149
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #26, !dbg !2419
  ret i8* %16, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !2421 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2425, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %2, metadata !2427, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 0, metadata !2369, metadata !DIExpression()) #26, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %0, metadata !2370, metadata !DIExpression()) #26, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %1, metadata !2371, metadata !DIExpression()) #26, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %2, metadata !2372, metadata !DIExpression()) #26, !dbg !2429
  call void @llvm.dbg.value(metadata i32 0, metadata !2374, metadata !DIExpression()) #26, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()) #26, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %1, metadata !2380, metadata !DIExpression()) #26, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %2, metadata !2381, metadata !DIExpression()) #26, !dbg !2431
  call void @llvm.dbg.value(metadata i64 -1, metadata !2382, metadata !DIExpression()) #26, !dbg !2431
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2433
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2383, metadata !DIExpression()) #26, !dbg !2434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2435, !tbaa.struct !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1131, metadata !DIExpression()) #26, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %0, metadata !1132, metadata !DIExpression()) #26, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %1, metadata !1133, metadata !DIExpression()) #26, !dbg !2436
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1131, metadata !DIExpression()) #26, !dbg !2436
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2438
  store i32 10, i32* %6, align 8, !dbg !2439, !tbaa !1073
  %7 = icmp ne i8* %0, null, !dbg !2440
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2441
  br i1 %9, label %11, label %10, !dbg !2441

10:                                               ; preds = %3
  tail call void @abort() #25, !dbg !2442
  unreachable, !dbg !2442

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2443
  store i8* %0, i8** %12, align 8, !dbg !2444, !tbaa !1146
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2445
  store i8* %1, i8** %13, align 8, !dbg !2446, !tbaa !1149
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #26, !dbg !2447
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #26, !dbg !2448
  ret i8* %14, !dbg !2449
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2450 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2454, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %1, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* %2, metadata !2456, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %3, metadata !2457, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 0, metadata !2374, metadata !DIExpression()) #26, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()) #26, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %1, metadata !2380, metadata !DIExpression()) #26, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %2, metadata !2381, metadata !DIExpression()) #26, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %3, metadata !2382, metadata !DIExpression()) #26, !dbg !2459
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2461
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2461
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2383, metadata !DIExpression()) #26, !dbg !2462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #26, !dbg !2463, !tbaa.struct !2259
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1131, metadata !DIExpression()) #26, !dbg !2464
  call void @llvm.dbg.value(metadata i8* %0, metadata !1132, metadata !DIExpression()) #26, !dbg !2464
  call void @llvm.dbg.value(metadata i8* %1, metadata !1133, metadata !DIExpression()) #26, !dbg !2464
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1131, metadata !DIExpression()) #26, !dbg !2464
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2466
  store i32 10, i32* %7, align 8, !dbg !2467, !tbaa !1073
  %8 = icmp ne i8* %0, null, !dbg !2468
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2469
  br i1 %10, label %12, label %11, !dbg !2469

11:                                               ; preds = %4
  tail call void @abort() #25, !dbg !2470
  unreachable, !dbg !2470

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2471
  store i8* %0, i8** %13, align 8, !dbg !2472, !tbaa !1146
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2473
  store i8* %1, i8** %14, align 8, !dbg !2474, !tbaa !1149
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #26, !dbg !2475
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #26, !dbg !2476
  ret i8* %15, !dbg !2477
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* %1, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %2, metadata !2484, metadata !DIExpression()), !dbg !2485
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2486
  ret i8* %4, !dbg !2487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2492, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %1, metadata !2493, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 0, metadata !2482, metadata !DIExpression()) #26, !dbg !2495
  call void @llvm.dbg.value(metadata i8* %0, metadata !2483, metadata !DIExpression()) #26, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %1, metadata !2484, metadata !DIExpression()) #26, !dbg !2495
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2497
  ret i8* %3, !dbg !2498
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2499 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2503, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8* %1, metadata !2504, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %0, metadata !2482, metadata !DIExpression()) #26, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %1, metadata !2483, metadata !DIExpression()) #26, !dbg !2506
  call void @llvm.dbg.value(metadata i64 -1, metadata !2484, metadata !DIExpression()) #26, !dbg !2506
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2508
  ret i8* %3, !dbg !2509
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #9 !dbg !2510 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2514, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 0, metadata !2503, metadata !DIExpression()) #26, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %0, metadata !2504, metadata !DIExpression()) #26, !dbg !2516
  call void @llvm.dbg.value(metadata i32 0, metadata !2482, metadata !DIExpression()) #26, !dbg !2518
  call void @llvm.dbg.value(metadata i8* %0, metadata !2483, metadata !DIExpression()) #26, !dbg !2518
  call void @llvm.dbg.value(metadata i64 -1, metadata !2484, metadata !DIExpression()) #26, !dbg !2518
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #26, !dbg !2520
  ret i8* %2, !dbg !2521
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #9 !dbg !2522 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2562, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %1, metadata !2563, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %2, metadata !2564, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %3, metadata !2565, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8** %4, metadata !2566, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %5, metadata !2567, metadata !DIExpression()), !dbg !2568
  %7 = icmp eq i8* %1, null, !dbg !2569
  br i1 %7, label %10, label %8, !dbg !2571

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #26, !dbg !2572
  br label %12, !dbg !2572

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.72, i64 0, i64 0), i8* %2, i8* %3) #26, !dbg !2573
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.73, i64 0, i64 0), i32 5) #26, !dbg !2574
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #26, !dbg !2574
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.74, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2575
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.75, i64 0, i64 0), i32 5) #26, !dbg !2576
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.76, i64 0, i64 0)) #26, !dbg !2576
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.74, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2577
  switch i64 %5, label %127 [
    i64 0, label %147
    i64 1, label %19
    i64 2, label %23
    i64 3, label %29
    i64 4, label %37
    i64 5, label %47
    i64 6, label %59
    i64 7, label %73
    i64 8, label %89
    i64 9, label %107
  ], !dbg !2578

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.77, i64 0, i64 0), i32 5) #26, !dbg !2579
  %21 = load i8*, i8** %4, align 8, !dbg !2579, !tbaa !583
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #26, !dbg !2579
  br label %147, !dbg !2581

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.78, i64 0, i64 0), i32 5) #26, !dbg !2582
  %25 = load i8*, i8** %4, align 8, !dbg !2582, !tbaa !583
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2582
  %27 = load i8*, i8** %26, align 8, !dbg !2582, !tbaa !583
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #26, !dbg !2582
  br label %147, !dbg !2583

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.79, i64 0, i64 0), i32 5) #26, !dbg !2584
  %31 = load i8*, i8** %4, align 8, !dbg !2584, !tbaa !583
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2584
  %33 = load i8*, i8** %32, align 8, !dbg !2584, !tbaa !583
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2584
  %35 = load i8*, i8** %34, align 8, !dbg !2584, !tbaa !583
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #26, !dbg !2584
  br label %147, !dbg !2585

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.80, i64 0, i64 0), i32 5) #26, !dbg !2586
  %39 = load i8*, i8** %4, align 8, !dbg !2586, !tbaa !583
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2586
  %41 = load i8*, i8** %40, align 8, !dbg !2586, !tbaa !583
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2586
  %43 = load i8*, i8** %42, align 8, !dbg !2586, !tbaa !583
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2586
  %45 = load i8*, i8** %44, align 8, !dbg !2586, !tbaa !583
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #26, !dbg !2586
  br label %147, !dbg !2587

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.81, i64 0, i64 0), i32 5) #26, !dbg !2588
  %49 = load i8*, i8** %4, align 8, !dbg !2588, !tbaa !583
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2588
  %51 = load i8*, i8** %50, align 8, !dbg !2588, !tbaa !583
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2588
  %53 = load i8*, i8** %52, align 8, !dbg !2588, !tbaa !583
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2588
  %55 = load i8*, i8** %54, align 8, !dbg !2588, !tbaa !583
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2588
  %57 = load i8*, i8** %56, align 8, !dbg !2588, !tbaa !583
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #26, !dbg !2588
  br label %147, !dbg !2589

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.82, i64 0, i64 0), i32 5) #26, !dbg !2590
  %61 = load i8*, i8** %4, align 8, !dbg !2590, !tbaa !583
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2590
  %63 = load i8*, i8** %62, align 8, !dbg !2590, !tbaa !583
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2590
  %65 = load i8*, i8** %64, align 8, !dbg !2590, !tbaa !583
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2590
  %67 = load i8*, i8** %66, align 8, !dbg !2590, !tbaa !583
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2590
  %69 = load i8*, i8** %68, align 8, !dbg !2590, !tbaa !583
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2590
  %71 = load i8*, i8** %70, align 8, !dbg !2590, !tbaa !583
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #26, !dbg !2590
  br label %147, !dbg !2591

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.83, i64 0, i64 0), i32 5) #26, !dbg !2592
  %75 = load i8*, i8** %4, align 8, !dbg !2592, !tbaa !583
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2592
  %77 = load i8*, i8** %76, align 8, !dbg !2592, !tbaa !583
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2592
  %79 = load i8*, i8** %78, align 8, !dbg !2592, !tbaa !583
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2592
  %81 = load i8*, i8** %80, align 8, !dbg !2592, !tbaa !583
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2592
  %83 = load i8*, i8** %82, align 8, !dbg !2592, !tbaa !583
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2592
  %85 = load i8*, i8** %84, align 8, !dbg !2592, !tbaa !583
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2592
  %87 = load i8*, i8** %86, align 8, !dbg !2592, !tbaa !583
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #26, !dbg !2592
  br label %147, !dbg !2593

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.84, i64 0, i64 0), i32 5) #26, !dbg !2594
  %91 = load i8*, i8** %4, align 8, !dbg !2594, !tbaa !583
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2594
  %93 = load i8*, i8** %92, align 8, !dbg !2594, !tbaa !583
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2594
  %95 = load i8*, i8** %94, align 8, !dbg !2594, !tbaa !583
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2594
  %97 = load i8*, i8** %96, align 8, !dbg !2594, !tbaa !583
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2594
  %99 = load i8*, i8** %98, align 8, !dbg !2594, !tbaa !583
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2594
  %101 = load i8*, i8** %100, align 8, !dbg !2594, !tbaa !583
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2594
  %103 = load i8*, i8** %102, align 8, !dbg !2594, !tbaa !583
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2594
  %105 = load i8*, i8** %104, align 8, !dbg !2594, !tbaa !583
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #26, !dbg !2594
  br label %147, !dbg !2595

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.85, i64 0, i64 0), i32 5) #26, !dbg !2596
  %109 = load i8*, i8** %4, align 8, !dbg !2596, !tbaa !583
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2596
  %111 = load i8*, i8** %110, align 8, !dbg !2596, !tbaa !583
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2596
  %113 = load i8*, i8** %112, align 8, !dbg !2596, !tbaa !583
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2596
  %115 = load i8*, i8** %114, align 8, !dbg !2596, !tbaa !583
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2596
  %117 = load i8*, i8** %116, align 8, !dbg !2596, !tbaa !583
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2596
  %119 = load i8*, i8** %118, align 8, !dbg !2596, !tbaa !583
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2596
  %121 = load i8*, i8** %120, align 8, !dbg !2596, !tbaa !583
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2596
  %123 = load i8*, i8** %122, align 8, !dbg !2596, !tbaa !583
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2596
  %125 = load i8*, i8** %124, align 8, !dbg !2596, !tbaa !583
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #26, !dbg !2596
  br label %147, !dbg !2597

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.86, i64 0, i64 0), i32 5) #26, !dbg !2598
  %129 = load i8*, i8** %4, align 8, !dbg !2598, !tbaa !583
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2598
  %131 = load i8*, i8** %130, align 8, !dbg !2598, !tbaa !583
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2598
  %133 = load i8*, i8** %132, align 8, !dbg !2598, !tbaa !583
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2598
  %135 = load i8*, i8** %134, align 8, !dbg !2598, !tbaa !583
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2598
  %137 = load i8*, i8** %136, align 8, !dbg !2598, !tbaa !583
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2598
  %139 = load i8*, i8** %138, align 8, !dbg !2598, !tbaa !583
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2598
  %141 = load i8*, i8** %140, align 8, !dbg !2598, !tbaa !583
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2598
  %143 = load i8*, i8** %142, align 8, !dbg !2598, !tbaa !583
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2598
  %145 = load i8*, i8** %144, align 8, !dbg !2598, !tbaa !583
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #26, !dbg !2598
  br label %147, !dbg !2599

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2600
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #9 !dbg !2601 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2605, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !2606, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %2, metadata !2607, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %3, metadata !2608, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8** %4, metadata !2609, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 0, metadata !2610, metadata !DIExpression()), !dbg !2611
  br label %6, !dbg !2612

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2614
  call void @llvm.dbg.value(metadata i64 %7, metadata !2610, metadata !DIExpression()), !dbg !2611
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2615
  %9 = load i8*, i8** %8, align 8, !dbg !2615, !tbaa !583
  %10 = icmp eq i8* %9, null, !dbg !2617
  %11 = add i64 %7, 1, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %11, metadata !2610, metadata !DIExpression()), !dbg !2611
  br i1 %10, label %12, label %6, !dbg !2617, !llvm.loop !2619

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2621
  ret void, !dbg !2622
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #9 !dbg !2623 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2634, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %1, metadata !2635, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %2, metadata !2636, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8* %3, metadata !2637, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2638, metadata !DIExpression()), !dbg !2642
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2643
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2643
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2640, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i64 0, metadata !2639, metadata !DIExpression()), !dbg !2642
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2639, metadata !DIExpression()), !dbg !2642
  %11 = load i32, i32* %8, align 8, !dbg !2645
  %12 = icmp ult i32 %11, 41, !dbg !2645
  br i1 %12, label %13, label %18, !dbg !2645

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2645
  %15 = zext i32 %11 to i64, !dbg !2645
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2645
  %17 = add nuw nsw i32 %11, 8, !dbg !2645
  store i32 %17, i32* %8, align 8, !dbg !2645
  br label %21, !dbg !2645

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2645
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2645
  store i8* %20, i8** %9, align 8, !dbg !2645
  br label %21, !dbg !2645

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2645
  %25 = load i8*, i8** %24, align 8, !dbg !2645
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2648
  store i8* %25, i8** %26, align 16, !dbg !2649, !tbaa !583
  %27 = icmp eq i8* %25, null, !dbg !2650
  br i1 %27, label %30, label %28, !dbg !2651

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 1, metadata !2639, metadata !DIExpression()), !dbg !2642
  %29 = icmp ult i32 %22, 41, !dbg !2645
  br i1 %29, label %35, label %32, !dbg !2645

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2652
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2653
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #26, !dbg !2654
  ret void, !dbg !2654

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2645
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2645
  store i8* %34, i8** %9, align 8, !dbg !2645
  br label %40, !dbg !2645

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2645
  %37 = zext i32 %22 to i64, !dbg !2645
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2645
  %39 = add nuw nsw i32 %22, 8, !dbg !2645
  store i32 %39, i32* %8, align 8, !dbg !2645
  br label %40, !dbg !2645

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2645
  %44 = load i8*, i8** %43, align 8, !dbg !2645
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2648
  store i8* %44, i8** %45, align 8, !dbg !2649, !tbaa !583
  %46 = icmp eq i8* %44, null, !dbg !2650
  br i1 %46, label %30, label %47, !dbg !2651

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 2, metadata !2639, metadata !DIExpression()), !dbg !2642
  %48 = icmp ult i32 %41, 41, !dbg !2645
  br i1 %48, label %52, label %49, !dbg !2645

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2645
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2645
  store i8* %51, i8** %9, align 8, !dbg !2645
  br label %57, !dbg !2645

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2645
  %54 = zext i32 %41 to i64, !dbg !2645
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2645
  %56 = add nuw nsw i32 %41, 8, !dbg !2645
  store i32 %56, i32* %8, align 8, !dbg !2645
  br label %57, !dbg !2645

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2645
  %61 = load i8*, i8** %60, align 8, !dbg !2645
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2648
  store i8* %61, i8** %62, align 16, !dbg !2649, !tbaa !583
  %63 = icmp eq i8* %61, null, !dbg !2650
  br i1 %63, label %30, label %64, !dbg !2651

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 3, metadata !2639, metadata !DIExpression()), !dbg !2642
  %65 = icmp ult i32 %58, 41, !dbg !2645
  br i1 %65, label %69, label %66, !dbg !2645

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2645
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2645
  store i8* %68, i8** %9, align 8, !dbg !2645
  br label %74, !dbg !2645

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2645
  %71 = zext i32 %58 to i64, !dbg !2645
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2645
  %73 = add nuw nsw i32 %58, 8, !dbg !2645
  store i32 %73, i32* %8, align 8, !dbg !2645
  br label %74, !dbg !2645

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2645
  %78 = load i8*, i8** %77, align 8, !dbg !2645
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2648
  store i8* %78, i8** %79, align 8, !dbg !2649, !tbaa !583
  %80 = icmp eq i8* %78, null, !dbg !2650
  br i1 %80, label %30, label %81, !dbg !2651

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 4, metadata !2639, metadata !DIExpression()), !dbg !2642
  %82 = icmp ult i32 %75, 41, !dbg !2645
  br i1 %82, label %86, label %83, !dbg !2645

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2645
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2645
  store i8* %85, i8** %9, align 8, !dbg !2645
  br label %91, !dbg !2645

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2645
  %88 = zext i32 %75 to i64, !dbg !2645
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2645
  %90 = add nuw nsw i32 %75, 8, !dbg !2645
  store i32 %90, i32* %8, align 8, !dbg !2645
  br label %91, !dbg !2645

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2645
  %95 = load i8*, i8** %94, align 8, !dbg !2645
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2648
  store i8* %95, i8** %96, align 16, !dbg !2649, !tbaa !583
  %97 = icmp eq i8* %95, null, !dbg !2650
  br i1 %97, label %30, label %98, !dbg !2651

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 5, metadata !2639, metadata !DIExpression()), !dbg !2642
  %99 = icmp ult i32 %92, 41, !dbg !2645
  br i1 %99, label %103, label %100, !dbg !2645

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2645
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2645
  store i8* %102, i8** %9, align 8, !dbg !2645
  br label %108, !dbg !2645

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2645
  %105 = zext i32 %92 to i64, !dbg !2645
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2645
  %107 = add nuw nsw i32 %92, 8, !dbg !2645
  store i32 %107, i32* %8, align 8, !dbg !2645
  br label %108, !dbg !2645

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2645
  %111 = load i8*, i8** %110, align 8, !dbg !2645
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2648
  store i8* %111, i8** %112, align 8, !dbg !2649, !tbaa !583
  %113 = icmp eq i8* %111, null, !dbg !2650
  br i1 %113, label %30, label %114, !dbg !2651

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2639, metadata !DIExpression()), !dbg !2642
  %115 = load i8*, i8** %9, align 8, !dbg !2645
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2645
  store i8* %116, i8** %9, align 8, !dbg !2645
  %117 = bitcast i8* %115 to i8**, !dbg !2645
  %118 = load i8*, i8** %117, align 8, !dbg !2645
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2648
  store i8* %118, i8** %119, align 16, !dbg !2649, !tbaa !583
  %120 = icmp eq i8* %118, null, !dbg !2650
  br i1 %120, label %30, label %121, !dbg !2651

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2639, metadata !DIExpression()), !dbg !2642
  %122 = load i8*, i8** %9, align 8, !dbg !2645
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2645
  store i8* %123, i8** %9, align 8, !dbg !2645
  %124 = bitcast i8* %122 to i8**, !dbg !2645
  %125 = load i8*, i8** %124, align 8, !dbg !2645
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2648
  store i8* %125, i8** %126, align 8, !dbg !2649, !tbaa !583
  %127 = icmp eq i8* %125, null, !dbg !2650
  br i1 %127, label %30, label %128, !dbg !2651

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2639, metadata !DIExpression()), !dbg !2642
  %129 = load i8*, i8** %9, align 8, !dbg !2645
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2645
  store i8* %130, i8** %9, align 8, !dbg !2645
  %131 = bitcast i8* %129 to i8**, !dbg !2645
  %132 = load i8*, i8** %131, align 8, !dbg !2645
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2648
  store i8* %132, i8** %133, align 16, !dbg !2649, !tbaa !583
  %134 = icmp eq i8* %132, null, !dbg !2650
  br i1 %134, label %30, label %135, !dbg !2651

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2639, metadata !DIExpression()), !dbg !2642
  %136 = load i8*, i8** %9, align 8, !dbg !2645
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2645
  store i8* %137, i8** %9, align 8, !dbg !2645
  %138 = bitcast i8* %136 to i8**, !dbg !2645
  %139 = load i8*, i8** %138, align 8, !dbg !2645
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2648
  store i8* %139, i8** %140, align 8, !dbg !2649, !tbaa !583
  %141 = icmp eq i8* %139, null, !dbg !2650
  %142 = select i1 %141, i64 9, i64 10, !dbg !2651
  br label %30, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #9 !dbg !2655 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2659, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %1, metadata !2660, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %2, metadata !2661, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %3, metadata !2662, metadata !DIExpression()), !dbg !2669
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2670
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2663, metadata !DIExpression()), !dbg !2671
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2672
  call void @llvm.va_start(i8* nonnull %6), !dbg !2672
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2673
  call void @llvm.va_end(i8* nonnull %6), !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #26, !dbg !2675
  ret void, !dbg !2675
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #22

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #9 !dbg !2676 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2677, !tbaa !583
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.74, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2677
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.89, i64 0, i64 0), i32 5) #26, !dbg !2678
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.90, i64 0, i64 0)) #26, !dbg !2678
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.91, i64 0, i64 0), i32 5) #26, !dbg !2679
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.92, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.93, i64 0, i64 0)) #26, !dbg !2679
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.94, i64 0, i64 0), i32 5) #26, !dbg !2680
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.95, i64 0, i64 0)) #26, !dbg !2680
  ret void, !dbg !2681
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #6 !dbg !2682 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2686, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %1, metadata !2687, metadata !DIExpression()), !dbg !2688
  %3 = udiv i64 9223372036854775807, %1, !dbg !2689
  %4 = icmp ult i64 %3, %0, !dbg !2689
  br i1 %4, label %5, label %6, !dbg !2691

5:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !2692
  unreachable, !dbg !2692

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %7, metadata !2694, metadata !DIExpression()) #26, !dbg !2700
  %8 = tail call noalias i8* @malloc(i64 %7) #26, !dbg !2702
  call void @llvm.dbg.value(metadata i8* %8, metadata !2699, metadata !DIExpression()) #26, !dbg !2700
  %9 = icmp eq i8* %8, null, !dbg !2703
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2705
  br i1 %11, label %12, label %13, !dbg !2705

12:                                               ; preds = %6
  tail call void @xalloc_die() #25, !dbg !2706
  unreachable, !dbg !2706

13:                                               ; preds = %6
  ret i8* %8, !dbg !2707
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #9 !dbg !2695 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2694, metadata !DIExpression()), !dbg !2708
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %2, metadata !2699, metadata !DIExpression()), !dbg !2708
  %3 = icmp eq i8* %2, null, !dbg !2710
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2711
  br i1 %5, label %6, label %7, !dbg !2711

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2712
  unreachable, !dbg !2712

7:                                                ; preds = %1
  ret i8* %2, !dbg !2713
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #6 !dbg !2714 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2718, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %1, metadata !2719, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %2, metadata !2720, metadata !DIExpression()), !dbg !2721
  %4 = udiv i64 9223372036854775807, %2, !dbg !2722
  %5 = icmp ult i64 %4, %1, !dbg !2722
  br i1 %5, label %6, label %7, !dbg !2724

6:                                                ; preds = %3
  tail call void @xalloc_die() #25, !dbg !2725
  unreachable, !dbg !2725

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()) #26, !dbg !2733
  call void @llvm.dbg.value(metadata i64 %8, metadata !2732, metadata !DIExpression()) #26, !dbg !2733
  %9 = icmp eq i64 %8, 0, !dbg !2735
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2737
  br i1 %11, label %12, label %13, !dbg !2737

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #26, !dbg !2738
  br label %19, !dbg !2740

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #26, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %14, metadata !2727, metadata !DIExpression()) #26, !dbg !2733
  %15 = icmp eq i8* %14, null, !dbg !2742
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2744
  br i1 %17, label %18, label %19, !dbg !2744

18:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !2745
  unreachable, !dbg !2745

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2733
  ret i8* %20, !dbg !2746
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2728 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %1, metadata !2732, metadata !DIExpression()), !dbg !2747
  %3 = icmp eq i64 %1, 0, !dbg !2748
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2749
  br i1 %5, label %6, label %7, !dbg !2749

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #26, !dbg !2750
  br label %13, !dbg !2751

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #26, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %8, metadata !2727, metadata !DIExpression()), !dbg !2747
  %9 = icmp eq i8* %8, null, !dbg !2753
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2754
  br i1 %11, label %12, label %13, !dbg !2754

12:                                               ; preds = %7
  tail call void @xalloc_die() #25, !dbg !2755
  unreachable, !dbg !2755

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2747
  ret i8* %14, !dbg !2756
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #6 !dbg !146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !151, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64* %1, metadata !152, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %2, metadata !153, metadata !DIExpression()), !dbg !2757
  %4 = load i64, i64* %1, align 8, !dbg !2758, !tbaa !1969
  call void @llvm.dbg.value(metadata i64 %4, metadata !154, metadata !DIExpression()), !dbg !2757
  %5 = icmp eq i8* %0, null, !dbg !2759
  br i1 %5, label %6, label %20, !dbg !2761

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2762
  br i1 %7, label %8, label %13, !dbg !2765

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %9, metadata !154, metadata !DIExpression()), !dbg !2757
  %10 = icmp ugt i64 %2, 128, !dbg !2768
  %11 = zext i1 %10 to i64, !dbg !2768
  %12 = add nuw nsw i64 %9, %11, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %12, metadata !154, metadata !DIExpression()), !dbg !2757
  br label %13, !dbg !2770

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2757
  call void @llvm.dbg.value(metadata i64 %14, metadata !154, metadata !DIExpression()), !dbg !2757
  %15 = udiv i64 9223372036854775807, %2, !dbg !2771
  %16 = icmp ult i64 %15, %14, !dbg !2771
  br i1 %16, label %19, label %17, !dbg !2773

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !154, metadata !DIExpression()), !dbg !2757
  store i64 %14, i64* %1, align 8, !dbg !2774, !tbaa !1969
  %18 = mul i64 %14, %2, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()) #26, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %28, metadata !2732, metadata !DIExpression()) #26, !dbg !2776
  br label %31, !dbg !2778

19:                                               ; preds = %13
  tail call void @xalloc_die() #25, !dbg !2779
  unreachable, !dbg !2779

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2780
  %22 = icmp ugt i64 %21, %4, !dbg !2783
  br i1 %22, label %24, label %23, !dbg !2784

23:                                               ; preds = %20
  tail call void @xalloc_die() #25, !dbg !2785
  unreachable, !dbg !2785

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2786
  %26 = add nuw i64 %4, 1, !dbg !2787
  %27 = add i64 %26, %25, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %27, metadata !154, metadata !DIExpression()), !dbg !2757
  store i64 %27, i64* %1, align 8, !dbg !2774, !tbaa !1969
  %28 = mul i64 %27, %2, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()) #26, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %28, metadata !2732, metadata !DIExpression()) #26, !dbg !2776
  %29 = icmp eq i64 %28, 0, !dbg !2789
  br i1 %29, label %30, label %31, !dbg !2778

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #26, !dbg !2790
  br label %38, !dbg !2791

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #26, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %33, metadata !2727, metadata !DIExpression()) #26, !dbg !2776
  %34 = icmp eq i8* %33, null, !dbg !2793
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2794
  br i1 %36, label %37, label %38, !dbg !2794

37:                                               ; preds = %31
  tail call void @xalloc_die() #25, !dbg !2795
  unreachable, !dbg !2795

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2776
  ret i8* %39, !dbg !2796
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #6 !dbg !2797 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2799, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %0, metadata !2694, metadata !DIExpression()) #26, !dbg !2801
  %2 = tail call noalias i8* @malloc(i64 %0) #26, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %2, metadata !2699, metadata !DIExpression()) #26, !dbg !2801
  %3 = icmp eq i8* %2, null, !dbg !2804
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2805
  br i1 %5, label %6, label %7, !dbg !2805

6:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2806
  unreachable, !dbg !2806

7:                                                ; preds = %1
  ret i8* %2, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #9 !dbg !2808 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2812, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64* %1, metadata !2813, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8* %0, metadata !151, metadata !DIExpression()) #26, !dbg !2815
  call void @llvm.dbg.value(metadata i64* %1, metadata !152, metadata !DIExpression()) #26, !dbg !2815
  call void @llvm.dbg.value(metadata i64 1, metadata !153, metadata !DIExpression()) #26, !dbg !2815
  %3 = load i64, i64* %1, align 8, !dbg !2817, !tbaa !1969
  call void @llvm.dbg.value(metadata i64 %3, metadata !154, metadata !DIExpression()) #26, !dbg !2815
  %4 = icmp eq i8* %0, null, !dbg !2818
  br i1 %4, label %5, label %10, !dbg !2819

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2820
  br i1 %6, label %17, label %7, !dbg !2821

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !154, metadata !DIExpression()) #26, !dbg !2815
  %8 = icmp slt i64 %3, 0, !dbg !2822
  br i1 %8, label %9, label %17, !dbg !2823

9:                                                ; preds = %7
  tail call void @xalloc_die() #25, !dbg !2824
  unreachable, !dbg !2824

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2825
  br i1 %11, label %13, label %12, !dbg !2826

12:                                               ; preds = %10
  tail call void @xalloc_die() #25, !dbg !2827
  unreachable, !dbg !2827

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2828
  %15 = add nuw nsw i64 %3, 1, !dbg !2829
  %16 = add nuw nsw i64 %15, %14, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %16, metadata !154, metadata !DIExpression()) #26, !dbg !2815
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()) #26, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %16, metadata !2732, metadata !DIExpression()) #26, !dbg !2831
  br label %17, !dbg !2833

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2834
  store i64 %18, i64* %1, align 8, !dbg !2834, !tbaa !1969
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #26, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %19, metadata !2727, metadata !DIExpression()) #26, !dbg !2831
  %20 = icmp eq i8* %19, null, !dbg !2836
  br i1 %20, label %21, label %22, !dbg !2837

21:                                               ; preds = %17
  tail call void @xalloc_die() #25, !dbg !2838
  unreachable, !dbg !2838

22:                                               ; preds = %17
  ret i8* %19, !dbg !2839
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #9 !dbg !2840 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2842, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %0, metadata !2844, metadata !DIExpression()) #26, !dbg !2849
  call void @llvm.dbg.value(metadata i64 1, metadata !2847, metadata !DIExpression()) #26, !dbg !2849
  %2 = icmp slt i64 %0, 0, !dbg !2851
  br i1 %2, label %6, label %3, !dbg !2853

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #26, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %4, metadata !2848, metadata !DIExpression()) #26, !dbg !2849
  %5 = icmp eq i8* %4, null, !dbg !2855
  br i1 %5, label %6, label %7, !dbg !2856

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #25, !dbg !2857
  unreachable, !dbg !2857

7:                                                ; preds = %3
  ret i8* %4, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #9 !dbg !2845 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2844, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i64 %1, metadata !2847, metadata !DIExpression()), !dbg !2859
  %3 = udiv i64 9223372036854775807, %1, !dbg !2860
  %4 = icmp ult i64 %3, %0, !dbg !2860
  br i1 %4, label %8, label %5, !dbg !2861

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #26, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %6, metadata !2848, metadata !DIExpression()), !dbg !2859
  %7 = icmp eq i8* %6, null, !dbg !2863
  br i1 %7, label %8, label %9, !dbg !2864

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #25, !dbg !2865
  unreachable, !dbg !2865

9:                                                ; preds = %5
  ret i8* %6, !dbg !2866
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2867 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2694, metadata !DIExpression()) #26, !dbg !2876
  %3 = tail call noalias i8* @malloc(i64 %1) #26, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %3, metadata !2699, metadata !DIExpression()) #26, !dbg !2876
  %4 = icmp eq i8* %3, null, !dbg !2879
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2880
  br i1 %6, label %7, label %8, !dbg !2880

7:                                                ; preds = %2
  tail call void @xalloc_die() #25, !dbg !2881
  unreachable, !dbg !2881

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2882, metadata !DIExpression()) #26, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !2889, metadata !DIExpression()) #26, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()) #26, !dbg !2891
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #26, !dbg !2893
  ret i8* %3, !dbg !2894
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #9 !dbg !2895 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2897, metadata !DIExpression()), !dbg !2898
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #27, !dbg !2899
  %3 = add i64 %2, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()) #26, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %3, metadata !2874, metadata !DIExpression()) #26, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %3, metadata !2694, metadata !DIExpression()) #26, !dbg !2903
  %4 = tail call noalias i8* @malloc(i64 %3) #26, !dbg !2905
  call void @llvm.dbg.value(metadata i8* %4, metadata !2699, metadata !DIExpression()) #26, !dbg !2903
  %5 = icmp eq i8* %4, null, !dbg !2906
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2907
  br i1 %7, label %8, label %9, !dbg !2907

8:                                                ; preds = %1
  tail call void @xalloc_die() #25, !dbg !2908
  unreachable, !dbg !2908

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2882, metadata !DIExpression()) #26, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %0, metadata !2889, metadata !DIExpression()) #26, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %3, metadata !2890, metadata !DIExpression()) #26, !dbg !2909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #26, !dbg !2911
  ret i8* %4, !dbg !2912
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2913 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2914, !tbaa !987
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.106, i64 0, i64 0), i32 5) #26, !dbg !2915
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %2) #26, !dbg !2916
  tail call void @abort() #25, !dbg !2917
  unreachable, !dbg !2917
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !2918 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2920, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2921, metadata !DIExpression()), !dbg !2926
  %3 = icmp eq i64 %0, 0, !dbg !2927
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2928
  br i1 %5, label %11, label %6, !dbg !2928

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2923, metadata !DIExpression()), !dbg !2929
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2930
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2930
  br i1 %8, label %9, label %11, !dbg !2932

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !2933
  store i32 12, i32* %10, align 4, !dbg !2935, !tbaa !987
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2920, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %12, metadata !2921, metadata !DIExpression()), !dbg !2926
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #26, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %14, metadata !2922, metadata !DIExpression()), !dbg !2926
  br label %15, !dbg !2937

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2926
  ret i8* %16, !dbg !2938
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #9 !dbg !2939 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2955, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %1, metadata !2956, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %2, metadata !2957, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2958, metadata !DIExpression()), !dbg !2964
  %6 = bitcast i32* %5 to i8*, !dbg !2965
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #26, !dbg !2965
  %7 = icmp eq i32* %0, null, !dbg !2966
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2968
  call void @llvm.dbg.value(metadata i32* %8, metadata !2955, metadata !DIExpression()), !dbg !2964
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #26, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %9, metadata !2959, metadata !DIExpression()), !dbg !2964
  %10 = icmp ugt i64 %9, -3, !dbg !2970
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2971
  br i1 %12, label %13, label %18, !dbg !2971

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #26, !dbg !2972
  br i1 %14, label %18, label %15, !dbg !2973

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2974, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %16, metadata !2961, metadata !DIExpression()), !dbg !2975
  %17 = zext i8 %16 to i32, !dbg !2976
  store i32 %17, i32* %8, align 4, !dbg !2977, !tbaa !987
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #26, !dbg !2978
  ret i64 %19, !dbg !2978
}

; Function Attrs: nounwind
declare !dbg !2979 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !2984 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3022, metadata !DIExpression()), !dbg !3027
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #26, !dbg !3028
  call void @llvm.dbg.value(metadata i1 undef, metadata !3023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3027
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3029, metadata !DIExpression()), !dbg !3032
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3034
  %4 = load i32, i32* %3, align 8, !dbg !3034, !tbaa !3035
  %5 = and i32 %4, 32, !dbg !3036
  %6 = icmp eq i32 %5, 0, !dbg !3036
  call void @llvm.dbg.value(metadata i1 %6, metadata !3025, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3027
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #26, !dbg !3037
  %8 = icmp eq i32 %7, 0, !dbg !3038
  call void @llvm.dbg.value(metadata i1 %8, metadata !3026, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3027
  br i1 %6, label %9, label %19, !dbg !3039

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3041
  call void @llvm.dbg.value(metadata i1 %10, metadata !3023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3027
  %11 = or i1 %10, %8, !dbg !3042
  %12 = xor i1 %8, true, !dbg !3042
  %13 = sext i1 %12 to i32, !dbg !3042
  br i1 %11, label %22, label %14, !dbg !3042

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !3043
  %16 = load i32, i32* %15, align 4, !dbg !3043, !tbaa !987
  %17 = icmp ne i32 %16, 9, !dbg !3044
  %18 = sext i1 %17 to i32, !dbg !3045
  br label %22, !dbg !3045

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3046

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !3048
  store i32 0, i32* %21, align 4, !dbg !3050, !tbaa !987
  br label %22, !dbg !3048

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3027
  ret i32 %23, !dbg !3051
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #9 !dbg !3052 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3056, metadata !DIExpression()), !dbg !3061
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3062
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3062
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3057, metadata !DIExpression()), !dbg !3063
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #26, !dbg !3064
  %5 = icmp eq i32 %4, 0, !dbg !3064
  br i1 %5, label %6, label %13, !dbg !3066

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3067
  %8 = load i16, i16* %7, align 16, !dbg !3067
  %9 = icmp eq i16 %8, 67, !dbg !3067
  br i1 %9, label %13, label %10, !dbg !3068

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i64 6), !dbg !3069
  %12 = icmp ne i32 %11, 0, !dbg !3070
  br label %13, !dbg !3068

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3061
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #26, !dbg !3071
  ret i1 %14, !dbg !3071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #9 !dbg !3072 {
  %1 = tail call i8* @nl_langinfo(i32 14) #26, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %1, metadata !3076, metadata !DIExpression()), !dbg !3078
  %2 = icmp eq i8* %1, null, !dbg !3079
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), i8* %1, !dbg !3081
  call void @llvm.dbg.value(metadata i8* %3, metadata !3076, metadata !DIExpression()), !dbg !3078
  %4 = load i8, i8* %3, align 1, !dbg !3082, !tbaa !772
  %5 = icmp eq i8 %4, 0, !dbg !3086
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0), i8* %3, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %6, metadata !3076, metadata !DIExpression()), !dbg !3078
  ret i8* %6, !dbg !3088
}

; Function Attrs: nounwind
declare !dbg !3089 i8* @nl_langinfo(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #9 !dbg !3092 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8* %1, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %2, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 %0, metadata !3100, metadata !DIExpression()) #26, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %1, metadata !3103, metadata !DIExpression()) #26, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %2, metadata !3104, metadata !DIExpression()) #26, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %0, metadata !3111, metadata !DIExpression()) #26, !dbg !3117
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %4, metadata !3116, metadata !DIExpression()) #26, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %4, metadata !3105, metadata !DIExpression()) #26, !dbg !3109
  %5 = icmp eq i8* %4, null, !dbg !3120
  br i1 %5, label %6, label %9, !dbg !3121

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3122
  br i1 %7, label %19, label %8, !dbg !3125

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3126, !tbaa !772
  br label %19, !dbg !3127

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #27, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %10, metadata !3106, metadata !DIExpression()) #26, !dbg !3129
  %11 = icmp ult i64 %10, %2, !dbg !3130
  br i1 %11, label %12, label %14, !dbg !3132

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i8* %1, metadata !3135, metadata !DIExpression()) #26, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %4, metadata !3138, metadata !DIExpression()) #26, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %13, metadata !3139, metadata !DIExpression()) #26, !dbg !3140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #26, !dbg !3142
  br label %19, !dbg !3143

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3144
  br i1 %15, label %19, label %16, !dbg !3147

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %1, metadata !3135, metadata !DIExpression()) #26, !dbg !3150
  call void @llvm.dbg.value(metadata i8* %4, metadata !3138, metadata !DIExpression()) #26, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %17, metadata !3139, metadata !DIExpression()) #26, !dbg !3150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #26, !dbg !3152
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3153
  store i8 0, i8* %18, align 1, !dbg !3154, !tbaa !772
  br label %19, !dbg !3155

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3156
  ret i32 %20, !dbg !3157
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #9 !dbg !3158 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %0, metadata !3111, metadata !DIExpression()) #26, !dbg !3162
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #26, !dbg !3164
  call void @llvm.dbg.value(metadata i8* %2, metadata !3116, metadata !DIExpression()) #26, !dbg !3162
  ret i8* %2, !dbg !3165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #9 !dbg !3166 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 0, metadata !3205, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 0, metadata !3207, metadata !DIExpression()), !dbg !3208
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3209
  call void @llvm.dbg.value(metadata i32 %2, metadata !3206, metadata !DIExpression()), !dbg !3208
  %3 = icmp slt i32 %2, 0, !dbg !3210
  br i1 %3, label %4, label %6, !dbg !3212

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3213
  br label %24, !dbg !3214

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3215
  %8 = icmp eq i32 %7, 0, !dbg !3215
  br i1 %8, label %13, label %9, !dbg !3217

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3218
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #26, !dbg !3219
  %12 = icmp eq i64 %11, -1, !dbg !3220
  br i1 %12, label %16, label %13, !dbg !3221

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #26, !dbg !3222
  %15 = icmp eq i32 %14, 0, !dbg !3222
  br i1 %15, label %16, label %18, !dbg !3223

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3205, metadata !DIExpression()), !dbg !3208
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %21, metadata !3207, metadata !DIExpression()), !dbg !3208
  br label %24, !dbg !3225

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3226
  %20 = load i32, i32* %19, align 4, !dbg !3226, !tbaa !987
  call void @llvm.dbg.value(metadata i32 %20, metadata !3205, metadata !DIExpression()), !dbg !3208
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %21, metadata !3207, metadata !DIExpression()), !dbg !3208
  %22 = icmp eq i32 %20, 0, !dbg !3227
  br i1 %22, label %24, label %23, !dbg !3225

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3229, !tbaa !987
  call void @llvm.dbg.value(metadata i32 -1, metadata !3207, metadata !DIExpression()), !dbg !3208
  br label %24, !dbg !3231

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3208
  ret i32 %25, !dbg !3232
}

; Function Attrs: nofree nounwind
declare !dbg !3233 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !3236 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3237 i64 @lseek(i32, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3241 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3279, metadata !DIExpression()), !dbg !3280
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3281
  br i1 %2, label %6, label %3, !dbg !3283

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #26, !dbg !3284
  %5 = icmp eq i32 %4, 0, !dbg !3284
  br i1 %5, label %6, label %8, !dbg !3285

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3286
  br label %17, !dbg !3287

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3288, metadata !DIExpression()) #26, !dbg !3293
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3295
  %10 = load i32, i32* %9, align 8, !dbg !3295, !tbaa !3035
  %11 = and i32 %10, 256, !dbg !3297
  %12 = icmp eq i32 %11, 0, !dbg !3297
  br i1 %12, label %15, label %13, !dbg !3298

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #26, !dbg !3299
  br label %15, !dbg !3299

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3300
  br label %17, !dbg !3301

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3280
  ret i32 %18, !dbg !3302
}

; Function Attrs: nofree nounwind
declare !dbg !3303 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #9 !dbg !3306 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3345, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %1, metadata !3346, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 %2, metadata !3347, metadata !DIExpression()), !dbg !3351
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3352
  %5 = load i8*, i8** %4, align 8, !dbg !3352, !tbaa !3353
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3354
  %7 = load i8*, i8** %6, align 8, !dbg !3354, !tbaa !3355
  %8 = icmp eq i8* %5, %7, !dbg !3356
  br i1 %8, label %9, label %28, !dbg !3357

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3358
  %11 = load i8*, i8** %10, align 8, !dbg !3358, !tbaa !904
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3359
  %13 = load i8*, i8** %12, align 8, !dbg !3359, !tbaa !3360
  %14 = icmp eq i8* %11, %13, !dbg !3361
  br i1 %14, label %15, label %28, !dbg !3362

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3363
  %17 = load i8*, i8** %16, align 8, !dbg !3363, !tbaa !3364
  %18 = icmp eq i8* %17, null, !dbg !3365
  br i1 %18, label %19, label %28, !dbg !3366

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #26, !dbg !3367
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #26, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %21, metadata !3348, metadata !DIExpression()), !dbg !3369
  %22 = icmp eq i64 %21, -1, !dbg !3370
  br i1 %22, label %30, label %23, !dbg !3372

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3373
  %25 = load i32, i32* %24, align 8, !dbg !3374, !tbaa !3035
  %26 = and i32 %25, -17, !dbg !3374
  store i32 %26, i32* %24, align 8, !dbg !3374, !tbaa !3035
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3375
  store i64 %21, i64* %27, align 8, !dbg !3376, !tbaa !3377
  br label %30, !dbg !3378

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3379
  br label %30, !dbg !3380

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3351
  ret i32 %31, !dbg !3381
}

; Function Attrs: nofree nounwind
declare !dbg !3382 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nosync nounwind willreturn }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!126, !2, !11, !19, !26, !34, !134, !120, !141, !158, !160, !162, !165, !167, !169, !558, !560, !562, !564}
!llvm.ident = !{!566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566, !566}
!llvm.module.flags = !{!567, !568, !569, !570, !571}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !12, line: 46, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!9, !14}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !12, line: 56, type: !16, isLocal: true, isDefinition: true)
!16 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "exit_failure", scope: !19, file: !20, line: 24, type: !22, isLocal: false, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!21 = !{!17}
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "program_name", scope: !26, file: !27, line: 33, type: !6, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !31, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!31 = !{!24}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !34, file: !35, line: 85, type: !114, isLocal: false, isDefinition: true)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !72, globals: !77, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!36 = !{!37, !52, !57}
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !38, line: 32, baseType: !39, size: 32, elements: !40)
!38 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!41 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!47 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!48 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!49 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!50 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!51 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !38, line: 242, baseType: !39, size: 32, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 46, baseType: !39, size: 32, elements: !59)
!58 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!60 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!61 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!62 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!63 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!66 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!67 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!68 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!71 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!72 = !{!23, !73, !74, !30}
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !{!32, !78, !84, !96, !98, !103, !110, !112}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !34, file: !35, line: 101, type: !80, isLocal: false, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 320, elements: !82)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!82 = !{!83}
!83 = !DISubrange(count: 10)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !34, file: !35, line: 1052, type: !86, isLocal: false, isDefinition: true)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !35, line: 65, size: 448, elements: !87)
!87 = !{!88, !89, !90, !94, !95}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !86, file: !35, line: 68, baseType: !37, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !35, line: 71, baseType: !23, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !86, file: !35, line: 75, baseType: !91, size: 256, offset: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !86, file: !35, line: 78, baseType: !6, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !86, file: !35, line: 81, baseType: !6, size: 64, offset: 384)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !34, file: !35, line: 116, type: !86, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "slot0", scope: !34, file: !35, line: 842, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 256)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "slotvec", scope: !34, file: !35, line: 845, type: !105, isLocal: true, isDefinition: true)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !35, line: 834, size: 128, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !106, file: !35, line: 836, baseType: !74, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !106, file: !35, line: 837, baseType: !30, size: 64, offset: 64)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "nslots", scope: !34, file: !35, line: 843, type: !23, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "slotvec0", scope: !34, file: !35, line: 844, type: !106, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 704, elements: !116)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!116 = !{!117}
!117 = !DISubrange(count: 11)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !120, file: !121, line: 26, type: !123, isLocal: false, isDefinition: true)
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !122, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !{!118}
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 47)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !128, retainedTypes: !132, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "src/echo.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!128 = !{!129, !57}
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 32, baseType: !39, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0, isUnsigned: true)
!132 = !{!30, !29, !23, !73, !133}
!133 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!136 = !{!137}
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 40, baseType: !39, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!140 = !{!29}
!141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !142, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !143, retainedTypes: !157, splitDebugInlining: false, nameTableKind: None)
!142 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!143 = !{!144}
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !146, file: !145, line: 186, baseType: !39, size: 32, elements: !155)
!145 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!146 = distinct !DISubprogram(name: "x2nrealloc", scope: !145, file: !145, line: 174, type: !147, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !150)
!147 = !DISubroutineType(types: !148)
!148 = !{!29, !29, !149, !74}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!150 = !{!151, !152, !153, !154}
!151 = !DILocalVariable(name: "p", arg: 1, scope: !146, file: !145, line: 174, type: !29)
!152 = !DILocalVariable(name: "pn", arg: 2, scope: !146, file: !145, line: 174, type: !149)
!153 = !DILocalVariable(name: "s", arg: 3, scope: !146, file: !145, line: 174, type: !74)
!154 = !DILocalVariable(name: "n", scope: !146, file: !145, line: 176, type: !74)
!155 = !{!156}
!156 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!157 = !{!74, !30, !29}
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!159 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !164, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!164 = !{!74}
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!168 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !171, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!172}
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !173, line: 41, baseType: !39, size: 32, elements: !174)
!173 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!175 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!176 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!177 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!178 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!179 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!180 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!181 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!182 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!183 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!184 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!185 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!186 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!187 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!188 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!189 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!190 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!191 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!192 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!193 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!194 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!195 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!196 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!197 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!198 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!199 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!200 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!201 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!202 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!203 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!204 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!205 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!206 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!207 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!208 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!209 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!210 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!211 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!212 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!213 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!214 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!215 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!216 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!217 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!218 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!219 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!220 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!221 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!222 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!223 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!224 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!225 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!226 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!227 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!228 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!229 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!230 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!231 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!232 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!233 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!234 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!235 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!236 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!237 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!283 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!286 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!287 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!288 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!289 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!290 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!291 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!292 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!293 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!294 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!295 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!296 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!297 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!370 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!443 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!444 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!445 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!446 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!447 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!448 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!449 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!450 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!451 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!452 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!453 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!454 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!455 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!456 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!457 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!459 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!460 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!461 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!462 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!463 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!464 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!490 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!491 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!492 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!493 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!494 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!499 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!500 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!501 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!502 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!558 = distinct !DICompileUnit(language: DW_LANG_C99, file: !559, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!559 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!561 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!562 = distinct !DICompileUnit(language: DW_LANG_C99, file: !563, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!563 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!566 = !{!"clang version 12.0.1"}
!567 = !{i32 7, !"Dwarf Version", i32 4}
!568 = !{i32 2, !"Debug Info Version", i32 3}
!569 = !{i32 1, !"wchar_size", i32 4}
!570 = !{i32 7, !"PIC Level", i32 2}
!571 = !{i32 7, !"PIE Level", i32 2}
!572 = distinct !DISubprogram(name: "usage", scope: !127, file: !127, line: 36, type: !573, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !23}
!575 = !{!576}
!576 = !DILocalVariable(name: "status", arg: 1, scope: !572, file: !127, line: 36, type: !23)
!577 = !DILocation(line: 0, scope: !572)
!578 = !DILocation(line: 40, column: 3, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !127, line: 40, column: 3)
!580 = distinct !DILexicalBlock(scope: !572, file: !127, line: 40, column: 3)
!581 = !DILocation(line: 40, column: 3, scope: !580)
!582 = !DILocation(line: 42, column: 3, scope: !572)
!583 = !{!584, !584, i64 0}
!584 = !{!"any pointer", !585, i64 0}
!585 = !{!"omnipotent char", !586, i64 0}
!586 = !{!"Simple C/C++ TBAA"}
!587 = !DILocation(line: 46, column: 3, scope: !572)
!588 = !DILocation(line: 51, column: 3, scope: !572)
!589 = !DILocation(line: 59, column: 3, scope: !572)
!590 = !DILocation(line: 60, column: 3, scope: !572)
!591 = !DILocation(line: 61, column: 3, scope: !572)
!592 = !DILocation(line: 66, column: 3, scope: !572)
!593 = !DILocation(line: 78, column: 3, scope: !572)
!594 = !DILocation(line: 82, column: 3, scope: !572)
!595 = !DILocation(line: 83, column: 3, scope: !572)
!596 = !DILocation(line: 84, column: 3, scope: !572)
!597 = !DISubprogram(name: "dcgettext", scope: !598, file: !598, line: 51, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!598 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!599 = !DISubroutineType(types: !600)
!600 = !{!30, !6, !6, !23}
!601 = !DISubprogram(name: "fputs_unlocked", scope: !602, file: !602, line: 667, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!602 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!603 = !DISubroutineType(types: !604)
!604 = !{!23, !6, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !607, line: 49, size: 1728, elements: !608)
!607 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !624, !625, !626, !627, !631, !632, !634, !638, !641, !643, !646, !649, !650, !651, !652, !653}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !606, file: !607, line: 51, baseType: !23, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !606, file: !607, line: 54, baseType: !30, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !606, file: !607, line: 55, baseType: !30, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !606, file: !607, line: 56, baseType: !30, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !606, file: !607, line: 57, baseType: !30, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !606, file: !607, line: 58, baseType: !30, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !606, file: !607, line: 59, baseType: !30, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !606, file: !607, line: 60, baseType: !30, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !606, file: !607, line: 61, baseType: !30, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !606, file: !607, line: 64, baseType: !30, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !606, file: !607, line: 65, baseType: !30, size: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !606, file: !607, line: 66, baseType: !30, size: 64, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !606, file: !607, line: 68, baseType: !622, size: 64, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !607, line: 36, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !606, file: !607, line: 70, baseType: !605, size: 64, offset: 832)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !606, file: !607, line: 72, baseType: !23, size: 32, offset: 896)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !606, file: !607, line: 73, baseType: !23, size: 32, offset: 928)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !606, file: !607, line: 74, baseType: !628, size: 64, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !629, line: 152, baseType: !630)
!629 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!630 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !606, file: !607, line: 77, baseType: !73, size: 16, offset: 1024)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !606, file: !607, line: 78, baseType: !633, size: 8, offset: 1040)
!633 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !606, file: !607, line: 79, baseType: !635, size: 8, offset: 1048)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 1)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !606, file: !607, line: 81, baseType: !639, size: 64, offset: 1088)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !607, line: 43, baseType: null)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !606, file: !607, line: 89, baseType: !642, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !629, line: 153, baseType: !630)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !606, file: !607, line: 91, baseType: !644, size: 64, offset: 1216)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !607, line: 37, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !606, file: !607, line: 92, baseType: !647, size: 64, offset: 1280)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !607, line: 38, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !606, file: !607, line: 93, baseType: !605, size: 64, offset: 1344)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !606, file: !607, line: 94, baseType: !29, size: 64, offset: 1408)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !606, file: !607, line: 95, baseType: !74, size: 64, offset: 1472)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !606, file: !607, line: 96, baseType: !23, size: 32, offset: 1536)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !606, file: !607, line: 98, baseType: !654, size: 160, offset: 1568)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 20)
!657 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !658, file: !658, line: 634, type: !659, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !661)
!658 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!659 = !DISubroutineType(types: !660)
!660 = !{null, !6}
!661 = !{!662, !663, !672, !673, !675}
!662 = !DILocalVariable(name: "program", arg: 1, scope: !657, file: !658, line: 634, type: !6)
!663 = !DILocalVariable(name: "infomap", scope: !657, file: !658, line: 636, type: !664)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 896, elements: !670)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !657, file: !658, line: 636, size: 128, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !666, file: !658, line: 636, baseType: !6, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !666, file: !658, line: 636, baseType: !6, size: 64, offset: 64)
!670 = !{!671}
!671 = !DISubrange(count: 7)
!672 = !DILocalVariable(name: "node", scope: !657, file: !658, line: 646, type: !6)
!673 = !DILocalVariable(name: "map_prog", scope: !657, file: !658, line: 647, type: !674)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!675 = !DILocalVariable(name: "lc_messages", scope: !657, file: !658, line: 659, type: !6)
!676 = !DILocation(line: 0, scope: !657)
!677 = !DILocation(line: 636, column: 3, scope: !657)
!678 = !DILocation(line: 636, column: 67, scope: !657)
!679 = !DILocation(line: 647, column: 36, scope: !657)
!680 = !DILocation(line: 649, column: 3, scope: !657)
!681 = !DILocation(line: 649, column: 33, scope: !657)
!682 = !DILocation(line: 650, column: 13, scope: !657)
!683 = !DILocation(line: 649, column: 20, scope: !657)
!684 = !{!685, !584, i64 0}
!685 = !{!"infomap", !584, i64 0, !584, i64 8}
!686 = !DILocation(line: 649, column: 10, scope: !657)
!687 = !DILocation(line: 649, column: 28, scope: !657)
!688 = distinct !{!688, !680, !682, !689}
!689 = !{!"llvm.loop.mustprogress"}
!690 = !DILocation(line: 652, column: 17, scope: !691)
!691 = distinct !DILexicalBlock(scope: !657, file: !658, line: 652, column: 7)
!692 = !{!685, !584, i64 8}
!693 = !DILocation(line: 652, column: 7, scope: !691)
!694 = !DILocation(line: 652, column: 7, scope: !657)
!695 = !DILocation(line: 655, column: 3, scope: !657)
!696 = !DILocation(line: 659, column: 29, scope: !657)
!697 = !DILocation(line: 660, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !657, file: !658, line: 660, column: 7)
!699 = !DILocation(line: 660, column: 19, scope: !698)
!700 = !DILocation(line: 660, column: 22, scope: !698)
!701 = !DILocation(line: 660, column: 7, scope: !657)
!702 = !DILocation(line: 666, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !698, file: !658, line: 661, column: 5)
!704 = !DILocation(line: 668, column: 5, scope: !703)
!705 = !DILocation(line: 669, column: 3, scope: !657)
!706 = !DILocation(line: 671, column: 3, scope: !657)
!707 = !DILocation(line: 673, column: 1, scope: !657)
!708 = !DISubprogram(name: "setlocale", scope: !709, file: !709, line: 122, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!709 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!710 = !DISubroutineType(types: !711)
!711 = !{!30, !23, !6}
!712 = distinct !DISubprogram(name: "main", scope: !127, file: !127, line: 108, type: !713, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{!23, !23, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !726, !727, !731, !732, !738, !739}
!717 = !DILocalVariable(name: "argc", arg: 1, scope: !712, file: !127, line: 108, type: !23)
!718 = !DILocalVariable(name: "argv", arg: 2, scope: !712, file: !127, line: 108, type: !715)
!719 = !DILocalVariable(name: "display_return", scope: !712, file: !127, line: 110, type: !16)
!720 = !DILocalVariable(name: "posixly_correct", scope: !712, file: !127, line: 111, type: !16)
!721 = !DILocalVariable(name: "allow_options", scope: !712, file: !127, line: 112, type: !16)
!722 = !DILocalVariable(name: "do_v9", scope: !712, file: !127, line: 119, type: !16)
!723 = !DILocalVariable(name: "temp", scope: !724, file: !127, line: 150, type: !6)
!724 = distinct !DILexicalBlock(scope: !725, file: !127, line: 149, column: 7)
!725 = distinct !DILexicalBlock(scope: !712, file: !127, line: 147, column: 7)
!726 = !DILocalVariable(name: "i", scope: !724, file: !127, line: 151, type: !74)
!727 = !DILocalVariable(name: "s", scope: !728, file: !127, line: 197, type: !6)
!728 = distinct !DILexicalBlock(scope: !729, file: !127, line: 196, column: 9)
!729 = distinct !DILexicalBlock(scope: !730, file: !127, line: 194, column: 5)
!730 = distinct !DILexicalBlock(scope: !712, file: !127, line: 193, column: 7)
!731 = !DILocalVariable(name: "c", scope: !728, file: !127, line: 198, type: !133)
!732 = !DILocalVariable(name: "ch", scope: !733, file: !127, line: 217, type: !133)
!733 = distinct !DILexicalBlock(scope: !734, file: !127, line: 216, column: 23)
!734 = distinct !DILexicalBlock(scope: !735, file: !127, line: 205, column: 21)
!735 = distinct !DILexicalBlock(scope: !736, file: !127, line: 203, column: 17)
!736 = distinct !DILexicalBlock(scope: !737, file: !127, line: 202, column: 19)
!737 = distinct !DILexicalBlock(scope: !728, file: !127, line: 201, column: 13)
!738 = !DILabel(scope: !712, name: "just_echo", file: !127, line: 191)
!739 = !DILabel(scope: !734, name: "not_an_escape", file: !127, line: 246)
!740 = !DILocation(line: 0, scope: !712)
!741 = !DILocation(line: 111, column: 26, scope: !712)
!742 = !DILocation(line: 114, column: 6, scope: !712)
!743 = !DILocation(line: 114, column: 37, scope: !712)
!744 = !DILocation(line: 114, column: 44, scope: !712)
!745 = !DILocation(line: 114, column: 47, scope: !712)
!746 = !DILocation(line: 122, column: 21, scope: !712)
!747 = !DILocation(line: 122, column: 3, scope: !712)
!748 = !DILocation(line: 123, column: 3, scope: !712)
!749 = !DILocation(line: 124, column: 3, scope: !712)
!750 = !DILocation(line: 125, column: 3, scope: !712)
!751 = !DILocation(line: 127, column: 3, scope: !712)
!752 = !DILocation(line: 131, column: 21, scope: !753)
!753 = distinct !DILexicalBlock(scope: !712, file: !127, line: 131, column: 7)
!754 = !DILocation(line: 133, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !127, line: 133, column: 11)
!756 = distinct !DILexicalBlock(scope: !753, file: !127, line: 132, column: 5)
!757 = !DILocation(line: 133, column: 11, scope: !756)
!758 = !DILocation(line: 134, column: 9, scope: !755)
!759 = !DILocation(line: 136, column: 11, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !127, line: 136, column: 11)
!761 = !DILocation(line: 136, column: 11, scope: !756)
!762 = !DILocation(line: 138, column: 24, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !127, line: 137, column: 9)
!764 = !DILocation(line: 138, column: 60, scope: !763)
!765 = !DILocation(line: 138, column: 11, scope: !763)
!766 = !DILocation(line: 140, column: 11, scope: !763)
!767 = !DILocation(line: 144, column: 3, scope: !712)
!768 = !DILocation(line: 145, column: 3, scope: !712)
!769 = !DILocation(line: 147, column: 7, scope: !712)
!770 = !DILocation(line: 148, column: 25, scope: !725)
!771 = !DILocation(line: 148, column: 24, scope: !725)
!772 = !{!585, !585, i64 0}
!773 = !DILocation(line: 148, column: 33, scope: !725)
!774 = !DILocation(line: 148, column: 5, scope: !725)
!775 = !DILocation(line: 150, column: 36, scope: !724)
!776 = !DILocation(line: 0, scope: !724)
!777 = !DILocation(line: 157, column: 21, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !127, line: 157, column: 9)
!779 = distinct !DILexicalBlock(scope: !724, file: !127, line: 157, column: 9)
!780 = !DILocation(line: 157, column: 9, scope: !779)
!781 = !DILocation(line: 158, column: 19, scope: !778)
!782 = !DILocation(line: 158, column: 11, scope: !778)
!783 = !DILocation(line: 157, column: 31, scope: !778)
!784 = distinct !{!784, !780, !785, !689}
!785 = !DILocation(line: 164, column: 13, scope: !779)
!786 = !DILocation(line: 166, column: 15, scope: !787)
!787 = distinct !DILexicalBlock(scope: !724, file: !127, line: 166, column: 13)
!788 = !DILocation(line: 166, column: 13, scope: !724)
!789 = !DILocation(line: 171, column: 9, scope: !724)
!790 = !DILocation(line: 172, column: 24, scope: !724)
!791 = !DILocation(line: 172, column: 19, scope: !724)
!792 = !DILocation(line: 172, column: 11, scope: !724)
!793 = !DILocation(line: 176, column: 15, scope: !794)
!794 = distinct !DILexicalBlock(scope: !724, file: !127, line: 173, column: 13)
!795 = !DILocation(line: 180, column: 15, scope: !794)
!796 = !DILocation(line: 184, column: 15, scope: !794)
!797 = !DILocation(line: 171, column: 16, scope: !724)
!798 = distinct !{!798, !789, !799, !689}
!799 = !DILocation(line: 185, column: 13, scope: !724)
!800 = !DILocation(line: 110, column: 8, scope: !712)
!801 = !DILocation(line: 119, column: 8, scope: !712)
!802 = !DILocation(line: 187, column: 13, scope: !724)
!803 = !DILocation(line: 188, column: 13, scope: !724)
!804 = !DILocation(line: 148, column: 17, scope: !725)
!805 = !DILocation(line: 148, column: 21, scope: !725)
!806 = !DILocation(line: 191, column: 1, scope: !712)
!807 = !DILocation(line: 193, column: 7, scope: !730)
!808 = !DILocation(line: 193, column: 13, scope: !730)
!809 = !DILocation(line: 0, scope: !730)
!810 = !DILocation(line: 195, column: 7, scope: !729)
!811 = !DILocation(line: 260, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !730, file: !127, line: 259, column: 5)
!813 = !DILocation(line: 197, column: 27, scope: !728)
!814 = !DILocation(line: 0, scope: !728)
!815 = !DILocation(line: 200, column: 11, scope: !728)
!816 = !DILocation(line: 200, column: 25, scope: !728)
!817 = !DILocation(line: 200, column: 23, scope: !728)
!818 = !DILocation(line: 202, column: 32, scope: !736)
!819 = !DILocation(line: 202, column: 19, scope: !737)
!820 = !DILocation(line: 204, column: 33, scope: !735)
!821 = !DILocation(line: 204, column: 19, scope: !735)
!822 = !DILocation(line: 206, column: 41, scope: !734)
!823 = !DILocation(line: 207, column: 41, scope: !734)
!824 = !DILocation(line: 209, column: 43, scope: !734)
!825 = !DILocation(line: 210, column: 41, scope: !734)
!826 = !DILocation(line: 211, column: 41, scope: !734)
!827 = !DILocation(line: 212, column: 41, scope: !734)
!828 = !DILocation(line: 213, column: 41, scope: !734)
!829 = !DILocation(line: 214, column: 41, scope: !734)
!830 = !DILocation(line: 217, column: 44, scope: !733)
!831 = !DILocation(line: 0, scope: !733)
!832 = !DILocation(line: 218, column: 31, scope: !833)
!833 = distinct !DILexicalBlock(scope: !733, file: !127, line: 218, column: 29)
!834 = !{!835, !835, i64 0}
!835 = !{!"short", !585, i64 0}
!836 = !DILocation(line: 218, column: 29, scope: !733)
!837 = !DILocation(line: 220, column: 26, scope: !733)
!838 = !DILocalVariable(name: "c", arg: 1, scope: !839, file: !127, line: 89, type: !133)
!839 = distinct !DISubprogram(name: "hextobin", scope: !127, file: !127, line: 89, type: !840, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{!23, !133}
!842 = !{!838}
!843 = !DILocation(line: 0, scope: !839, inlinedAt: !844)
!844 = distinct !DILocation(line: 221, column: 29, scope: !733)
!845 = !DILocation(line: 91, column: 3, scope: !839, inlinedAt: !844)
!846 = !DILocation(line: 91, column: 11, scope: !839, inlinedAt: !844)
!847 = !DILocation(line: 93, column: 23, scope: !848, inlinedAt: !844)
!848 = distinct !DILexicalBlock(scope: !839, file: !127, line: 92, column: 5)
!849 = !DILocation(line: 93, column: 14, scope: !848, inlinedAt: !844)
!850 = !DILocation(line: 95, column: 25, scope: !848, inlinedAt: !844)
!851 = !DILocation(line: 96, column: 25, scope: !848, inlinedAt: !844)
!852 = !DILocation(line: 97, column: 25, scope: !848, inlinedAt: !844)
!853 = !DILocation(line: 98, column: 25, scope: !848, inlinedAt: !844)
!854 = !DILocation(line: 99, column: 25, scope: !848, inlinedAt: !844)
!855 = !DILocation(line: 0, scope: !848, inlinedAt: !844)
!856 = !DILocation(line: 222, column: 30, scope: !733)
!857 = !DILocation(line: 223, column: 29, scope: !858)
!858 = distinct !DILexicalBlock(scope: !733, file: !127, line: 223, column: 29)
!859 = !DILocation(line: 223, column: 29, scope: !733)
!860 = !DILocation(line: 225, column: 30, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !127, line: 224, column: 27)
!862 = !DILocation(line: 226, column: 35, scope: !861)
!863 = !DILocation(line: 0, scope: !839, inlinedAt: !864)
!864 = distinct !DILocation(line: 226, column: 42, scope: !861)
!865 = !DILocation(line: 91, column: 3, scope: !839, inlinedAt: !864)
!866 = !DILocation(line: 91, column: 11, scope: !839, inlinedAt: !864)
!867 = !DILocation(line: 93, column: 23, scope: !848, inlinedAt: !864)
!868 = !DILocation(line: 93, column: 14, scope: !848, inlinedAt: !864)
!869 = !DILocation(line: 95, column: 25, scope: !848, inlinedAt: !864)
!870 = !DILocation(line: 96, column: 25, scope: !848, inlinedAt: !864)
!871 = !DILocation(line: 97, column: 25, scope: !848, inlinedAt: !864)
!872 = !DILocation(line: 98, column: 25, scope: !848, inlinedAt: !864)
!873 = !DILocation(line: 99, column: 25, scope: !848, inlinedAt: !864)
!874 = !DILocation(line: 0, scope: !848, inlinedAt: !864)
!875 = !DILocation(line: 226, column: 40, scope: !861)
!876 = !DILocation(line: 227, column: 27, scope: !861)
!877 = !DILocation(line: 232, column: 37, scope: !878)
!878 = distinct !DILexicalBlock(scope: !734, file: !127, line: 232, column: 27)
!879 = !DILocation(line: 232, column: 40, scope: !878)
!880 = !DILocation(line: 234, column: 29, scope: !734)
!881 = !DILocation(line: 235, column: 23, scope: !734)
!882 = !DILocation(line: 0, scope: !735)
!883 = !DILocation(line: 238, column: 25, scope: !734)
!884 = !DILocation(line: 239, column: 34, scope: !885)
!885 = distinct !DILexicalBlock(scope: !734, file: !127, line: 239, column: 27)
!886 = !DILocation(line: 239, column: 37, scope: !885)
!887 = !DILocation(line: 241, column: 34, scope: !888)
!888 = distinct !DILexicalBlock(scope: !734, file: !127, line: 241, column: 27)
!889 = !DILocation(line: 241, column: 37, scope: !888)
!890 = !DILocation(line: 242, column: 31, scope: !888)
!891 = !DILocation(line: 242, column: 40, scope: !888)
!892 = !DILocation(line: 242, column: 43, scope: !888)
!893 = !DILocation(line: 242, column: 35, scope: !888)
!894 = !DILocation(line: 242, column: 25, scope: !888)
!895 = !DILocalVariable(name: "__c", arg: 1, scope: !896, file: !897, line: 108, type: !23)
!896 = distinct !DISubprogram(name: "putchar_unlocked", scope: !897, file: !897, line: 108, type: !898, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !900)
!897 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!898 = !DISubroutineType(types: !899)
!899 = !{!23, !23}
!900 = !{!895}
!901 = !DILocation(line: 0, scope: !896, inlinedAt: !902)
!902 = distinct !DILocation(line: 247, column: 31, scope: !734)
!903 = !DILocation(line: 110, column: 10, scope: !896, inlinedAt: !902)
!904 = !{!905, !584, i64 40}
!905 = !{!"_IO_FILE", !906, i64 0, !584, i64 8, !584, i64 16, !584, i64 24, !584, i64 32, !584, i64 40, !584, i64 48, !584, i64 56, !584, i64 64, !584, i64 72, !584, i64 80, !584, i64 88, !584, i64 96, !584, i64 104, !906, i64 112, !906, i64 116, !907, i64 120, !835, i64 128, !585, i64 130, !585, i64 131, !584, i64 136, !907, i64 144, !584, i64 152, !584, i64 160, !584, i64 168, !584, i64 176, !907, i64 184, !906, i64 192, !585, i64 196}
!906 = !{!"int", !585, i64 0}
!907 = !{!"long", !585, i64 0}
!908 = !{!905, !584, i64 48}
!909 = !{!"branch_weights", i32 2000, i32 1}
!910 = !DILocation(line: 0, scope: !896, inlinedAt: !911)
!911 = distinct !DILocation(line: 250, column: 15, scope: !737)
!912 = !DILocation(line: 110, column: 10, scope: !896, inlinedAt: !911)
!913 = !DILocation(line: 250, column: 15, scope: !737)
!914 = distinct !{!914, !815, !915, !689}
!915 = !DILocation(line: 251, column: 13, scope: !728)
!916 = !DILocation(line: 252, column: 15, scope: !728)
!917 = !DILocation(line: 253, column: 15, scope: !728)
!918 = !DILocation(line: 254, column: 20, scope: !919)
!919 = distinct !DILexicalBlock(scope: !728, file: !127, line: 254, column: 15)
!920 = !DILocation(line: 254, column: 15, scope: !728)
!921 = !DILocation(line: 0, scope: !896, inlinedAt: !922)
!922 = distinct !DILocation(line: 255, column: 13, scope: !919)
!923 = !DILocation(line: 110, column: 10, scope: !896, inlinedAt: !922)
!924 = !DILocation(line: 262, column: 11, scope: !925)
!925 = distinct !DILexicalBlock(scope: !812, file: !127, line: 261, column: 9)
!926 = !DILocation(line: 263, column: 15, scope: !925)
!927 = !DILocation(line: 264, column: 15, scope: !925)
!928 = !DILocation(line: 265, column: 20, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !127, line: 265, column: 15)
!930 = !DILocation(line: 265, column: 15, scope: !925)
!931 = !DILocation(line: 0, scope: !896, inlinedAt: !932)
!932 = distinct !DILocation(line: 266, column: 13, scope: !929)
!933 = !DILocation(line: 110, column: 10, scope: !896, inlinedAt: !932)
!934 = !DILocation(line: 260, column: 19, scope: !812)
!935 = distinct !{!935, !811, !936, !689}
!936 = !DILocation(line: 267, column: 9, scope: !812)
!937 = !DILocation(line: 270, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !712, file: !127, line: 270, column: 7)
!939 = !DILocation(line: 270, column: 7, scope: !712)
!940 = !DILocation(line: 0, scope: !896, inlinedAt: !941)
!941 = distinct !DILocation(line: 271, column: 5, scope: !938)
!942 = !DILocation(line: 110, column: 10, scope: !896, inlinedAt: !941)
!943 = !DILocation(line: 273, column: 1, scope: !712)
!944 = !DISubprogram(name: "getenv", scope: !945, file: !945, line: 634, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!945 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!946 = !DISubroutineType(types: !947)
!947 = !{!30, !6}
!948 = !DISubprogram(name: "bindtextdomain", scope: !598, file: !598, line: 86, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!949 = !DISubroutineType(types: !950)
!950 = !{!30, !6, !6}
!951 = !DISubprogram(name: "textdomain", scope: !598, file: !598, line: 82, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!952 = !DISubprogram(name: "atexit", scope: !945, file: !945, line: 595, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!953 = !DISubroutineType(types: !954)
!954 = !{!23, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null}
!958 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !659, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !959)
!959 = !{!960}
!960 = !DILocalVariable(name: "file", arg: 1, scope: !958, file: !12, line: 51, type: !6)
!961 = !DILocation(line: 0, scope: !958)
!962 = !DILocation(line: 53, column: 13, scope: !958)
!963 = !DILocation(line: 54, column: 1, scope: !958)
!964 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !965, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !16}
!967 = !{!968}
!968 = !DILocalVariable(name: "ignore", arg: 1, scope: !964, file: !12, line: 88, type: !16)
!969 = !DILocation(line: 0, scope: !964)
!970 = !DILocation(line: 90, column: 16, scope: !964)
!971 = !{!972, !972, i64 0}
!972 = !{!"_Bool", !585, i64 0}
!973 = !DILocation(line: 91, column: 1, scope: !964)
!974 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !956, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !975)
!975 = !{!976}
!976 = !DILocalVariable(name: "write_error", scope: !977, file: !12, line: 122, type: !6)
!977 = distinct !DILexicalBlock(scope: !978, file: !12, line: 121, column: 5)
!978 = distinct !DILexicalBlock(scope: !974, file: !12, line: 119, column: 7)
!979 = !DILocation(line: 119, column: 21, scope: !978)
!980 = !DILocation(line: 119, column: 7, scope: !978)
!981 = !DILocation(line: 119, column: 29, scope: !978)
!982 = !DILocation(line: 120, column: 7, scope: !978)
!983 = !DILocation(line: 120, column: 12, scope: !978)
!984 = !{i8 0, i8 2}
!985 = !DILocation(line: 120, column: 25, scope: !978)
!986 = !DILocation(line: 120, column: 28, scope: !978)
!987 = !{!906, !906, i64 0}
!988 = !DILocation(line: 120, column: 34, scope: !978)
!989 = !DILocation(line: 119, column: 7, scope: !974)
!990 = !DILocation(line: 122, column: 33, scope: !977)
!991 = !DILocation(line: 0, scope: !977)
!992 = !DILocation(line: 123, column: 11, scope: !993)
!993 = distinct !DILexicalBlock(scope: !977, file: !12, line: 123, column: 11)
!994 = !DILocation(line: 0, scope: !993)
!995 = !DILocation(line: 123, column: 11, scope: !977)
!996 = !DILocation(line: 124, column: 36, scope: !993)
!997 = !DILocation(line: 124, column: 9, scope: !993)
!998 = !DILocation(line: 127, column: 9, scope: !993)
!999 = !DILocation(line: 129, column: 14, scope: !977)
!1000 = !DILocation(line: 129, column: 7, scope: !977)
!1001 = !DILocation(line: 134, column: 42, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !974, file: !12, line: 134, column: 7)
!1003 = !DILocation(line: 134, column: 28, scope: !1002)
!1004 = !DILocation(line: 134, column: 50, scope: !1002)
!1005 = !DILocation(line: 134, column: 7, scope: !974)
!1006 = !DILocation(line: 135, column: 12, scope: !1002)
!1007 = !DILocation(line: 135, column: 5, scope: !1002)
!1008 = !DILocation(line: 136, column: 1, scope: !974)
!1009 = !DISubprogram(name: "error", scope: !1010, file: !1010, line: 52, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1010 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !23, !23, !6, null}
!1013 = distinct !DISubprogram(name: "set_program_name", scope: !27, file: !27, line: 39, type: !659, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DILocalVariable(name: "argv0", arg: 1, scope: !1013, file: !27, line: 39, type: !6)
!1016 = !DILocalVariable(name: "slash", scope: !1013, file: !27, line: 46, type: !6)
!1017 = !DILocalVariable(name: "base", scope: !1013, file: !27, line: 47, type: !6)
!1018 = !DILocation(line: 0, scope: !1013)
!1019 = !DILocation(line: 51, column: 13, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !27, line: 51, column: 7)
!1021 = !DILocation(line: 51, column: 7, scope: !1013)
!1022 = !DILocation(line: 55, column: 14, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !27, line: 52, column: 5)
!1024 = !DILocation(line: 54, column: 7, scope: !1023)
!1025 = !DILocation(line: 56, column: 7, scope: !1023)
!1026 = !DILocation(line: 59, column: 11, scope: !1013)
!1027 = !DILocation(line: 60, column: 17, scope: !1013)
!1028 = !DILocation(line: 60, column: 11, scope: !1013)
!1029 = !DILocation(line: 61, column: 12, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1013, file: !27, line: 61, column: 7)
!1031 = !DILocation(line: 61, column: 20, scope: !1030)
!1032 = !DILocation(line: 61, column: 25, scope: !1030)
!1033 = !DILocation(line: 61, column: 42, scope: !1030)
!1034 = !DILocation(line: 61, column: 28, scope: !1030)
!1035 = !DILocation(line: 61, column: 61, scope: !1030)
!1036 = !DILocation(line: 61, column: 7, scope: !1013)
!1037 = !DILocation(line: 64, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !27, line: 64, column: 11)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !27, line: 62, column: 5)
!1040 = !DILocation(line: 64, column: 36, scope: !1038)
!1041 = !DILocation(line: 64, column: 11, scope: !1039)
!1042 = !DILocation(line: 66, column: 24, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !27, line: 65, column: 9)
!1044 = !DILocation(line: 70, column: 41, scope: !1043)
!1045 = !DILocation(line: 72, column: 9, scope: !1043)
!1046 = !DILocation(line: 84, column: 16, scope: !1013)
!1047 = !DILocation(line: 90, column: 27, scope: !1013)
!1048 = !DILocation(line: 92, column: 1, scope: !1013)
!1049 = distinct !DISubprogram(name: "clone_quoting_options", scope: !35, file: !35, line: 122, type: !1050, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1053)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1053 = !{!1054, !1055, !1056}
!1054 = !DILocalVariable(name: "o", arg: 1, scope: !1049, file: !35, line: 122, type: !1052)
!1055 = !DILocalVariable(name: "e", scope: !1049, file: !35, line: 124, type: !23)
!1056 = !DILocalVariable(name: "p", scope: !1049, file: !35, line: 125, type: !1052)
!1057 = !DILocation(line: 0, scope: !1049)
!1058 = !DILocation(line: 124, column: 11, scope: !1049)
!1059 = !DILocation(line: 125, column: 40, scope: !1049)
!1060 = !DILocation(line: 125, column: 31, scope: !1049)
!1061 = !DILocation(line: 127, column: 9, scope: !1049)
!1062 = !DILocation(line: 128, column: 3, scope: !1049)
!1063 = distinct !DISubprogram(name: "get_quoting_style", scope: !35, file: !35, line: 133, type: !1064, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1068)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!37, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1068 = !{!1069}
!1069 = !DILocalVariable(name: "o", arg: 1, scope: !1063, file: !35, line: 133, type: !1066)
!1070 = !DILocation(line: 0, scope: !1063)
!1071 = !DILocation(line: 135, column: 11, scope: !1063)
!1072 = !DILocation(line: 135, column: 46, scope: !1063)
!1073 = !{!1074, !585, i64 0}
!1074 = !{!"quoting_options", !585, i64 0, !906, i64 4, !585, i64 8, !584, i64 40, !584, i64 48}
!1075 = !DILocation(line: 135, column: 3, scope: !1063)
!1076 = distinct !DISubprogram(name: "set_quoting_style", scope: !35, file: !35, line: 141, type: !1077, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1079)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !1052, !37}
!1079 = !{!1080, !1081}
!1080 = !DILocalVariable(name: "o", arg: 1, scope: !1076, file: !35, line: 141, type: !1052)
!1081 = !DILocalVariable(name: "s", arg: 2, scope: !1076, file: !35, line: 141, type: !37)
!1082 = !DILocation(line: 0, scope: !1076)
!1083 = !DILocation(line: 143, column: 4, scope: !1076)
!1084 = !DILocation(line: 143, column: 39, scope: !1076)
!1085 = !DILocation(line: 143, column: 45, scope: !1076)
!1086 = !DILocation(line: 144, column: 1, scope: !1076)
!1087 = distinct !DISubprogram(name: "set_char_quoting", scope: !35, file: !35, line: 152, type: !1088, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!23, !1052, !8, !23}
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1097, !1098}
!1091 = !DILocalVariable(name: "o", arg: 1, scope: !1087, file: !35, line: 152, type: !1052)
!1092 = !DILocalVariable(name: "c", arg: 2, scope: !1087, file: !35, line: 152, type: !8)
!1093 = !DILocalVariable(name: "i", arg: 3, scope: !1087, file: !35, line: 152, type: !23)
!1094 = !DILocalVariable(name: "uc", scope: !1087, file: !35, line: 154, type: !133)
!1095 = !DILocalVariable(name: "p", scope: !1087, file: !35, line: 155, type: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1097 = !DILocalVariable(name: "shift", scope: !1087, file: !35, line: 157, type: !23)
!1098 = !DILocalVariable(name: "r", scope: !1087, file: !35, line: 158, type: !23)
!1099 = !DILocation(line: 0, scope: !1087)
!1100 = !DILocation(line: 156, column: 6, scope: !1087)
!1101 = !DILocation(line: 156, column: 62, scope: !1087)
!1102 = !DILocation(line: 156, column: 57, scope: !1087)
!1103 = !DILocation(line: 157, column: 15, scope: !1087)
!1104 = !DILocation(line: 158, column: 12, scope: !1087)
!1105 = !DILocation(line: 158, column: 15, scope: !1087)
!1106 = !DILocation(line: 158, column: 25, scope: !1087)
!1107 = !DILocation(line: 159, column: 13, scope: !1087)
!1108 = !DILocation(line: 159, column: 18, scope: !1087)
!1109 = !DILocation(line: 159, column: 23, scope: !1087)
!1110 = !DILocation(line: 159, column: 6, scope: !1087)
!1111 = !DILocation(line: 160, column: 3, scope: !1087)
!1112 = distinct !DISubprogram(name: "set_quoting_flags", scope: !35, file: !35, line: 168, type: !1113, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!23, !1052, !23}
!1115 = !{!1116, !1117, !1118}
!1116 = !DILocalVariable(name: "o", arg: 1, scope: !1112, file: !35, line: 168, type: !1052)
!1117 = !DILocalVariable(name: "i", arg: 2, scope: !1112, file: !35, line: 168, type: !23)
!1118 = !DILocalVariable(name: "r", scope: !1112, file: !35, line: 170, type: !23)
!1119 = !DILocation(line: 0, scope: !1112)
!1120 = !DILocation(line: 171, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1112, file: !35, line: 171, column: 7)
!1122 = !DILocation(line: 171, column: 7, scope: !1112)
!1123 = !DILocation(line: 173, column: 10, scope: !1112)
!1124 = !{!1074, !906, i64 4}
!1125 = !DILocation(line: 174, column: 12, scope: !1112)
!1126 = !DILocation(line: 175, column: 3, scope: !1112)
!1127 = distinct !DISubprogram(name: "set_custom_quoting", scope: !35, file: !35, line: 179, type: !1128, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1130)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !1052, !6, !6}
!1130 = !{!1131, !1132, !1133}
!1131 = !DILocalVariable(name: "o", arg: 1, scope: !1127, file: !35, line: 179, type: !1052)
!1132 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1127, file: !35, line: 180, type: !6)
!1133 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1127, file: !35, line: 180, type: !6)
!1134 = !DILocation(line: 0, scope: !1127)
!1135 = !DILocation(line: 182, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1127, file: !35, line: 182, column: 7)
!1137 = !DILocation(line: 182, column: 7, scope: !1127)
!1138 = !DILocation(line: 184, column: 6, scope: !1127)
!1139 = !DILocation(line: 184, column: 12, scope: !1127)
!1140 = !DILocation(line: 185, column: 8, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1127, file: !35, line: 185, column: 7)
!1142 = !DILocation(line: 185, column: 19, scope: !1141)
!1143 = !DILocation(line: 186, column: 5, scope: !1141)
!1144 = !DILocation(line: 187, column: 6, scope: !1127)
!1145 = !DILocation(line: 187, column: 17, scope: !1127)
!1146 = !{!1074, !584, i64 40}
!1147 = !DILocation(line: 188, column: 6, scope: !1127)
!1148 = !DILocation(line: 188, column: 18, scope: !1127)
!1149 = !{!1074, !584, i64 48}
!1150 = !DILocation(line: 189, column: 1, scope: !1127)
!1151 = distinct !DISubprogram(name: "quotearg_buffer", scope: !35, file: !35, line: 784, type: !1152, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1154)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!74, !30, !74, !6, !74, !1066}
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1155 = !DILocalVariable(name: "buffer", arg: 1, scope: !1151, file: !35, line: 784, type: !30)
!1156 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1151, file: !35, line: 784, type: !74)
!1157 = !DILocalVariable(name: "arg", arg: 3, scope: !1151, file: !35, line: 785, type: !6)
!1158 = !DILocalVariable(name: "argsize", arg: 4, scope: !1151, file: !35, line: 785, type: !74)
!1159 = !DILocalVariable(name: "o", arg: 5, scope: !1151, file: !35, line: 786, type: !1066)
!1160 = !DILocalVariable(name: "p", scope: !1151, file: !35, line: 788, type: !1066)
!1161 = !DILocalVariable(name: "e", scope: !1151, file: !35, line: 789, type: !23)
!1162 = !DILocalVariable(name: "r", scope: !1151, file: !35, line: 790, type: !74)
!1163 = !DILocation(line: 0, scope: !1151)
!1164 = !DILocation(line: 788, column: 37, scope: !1151)
!1165 = !DILocation(line: 789, column: 11, scope: !1151)
!1166 = !DILocation(line: 791, column: 43, scope: !1151)
!1167 = !DILocation(line: 791, column: 53, scope: !1151)
!1168 = !DILocation(line: 791, column: 60, scope: !1151)
!1169 = !DILocation(line: 792, column: 43, scope: !1151)
!1170 = !DILocation(line: 792, column: 58, scope: !1151)
!1171 = !DILocation(line: 790, column: 14, scope: !1151)
!1172 = !DILocation(line: 793, column: 9, scope: !1151)
!1173 = !DILocation(line: 794, column: 3, scope: !1151)
!1174 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !35, file: !35, line: 256, type: !1175, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1179)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!74, !30, !74, !6, !74, !37, !23, !1177, !6, !6}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1204, !1205, !1206, !1207, !1208, !1211, !1212, !1230, !1233, !1234, !1241, !1244, !1245, !1246, !1247, !1248, !1249}
!1180 = !DILocalVariable(name: "buffer", arg: 1, scope: !1174, file: !35, line: 256, type: !30)
!1181 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1174, file: !35, line: 256, type: !74)
!1182 = !DILocalVariable(name: "arg", arg: 3, scope: !1174, file: !35, line: 257, type: !6)
!1183 = !DILocalVariable(name: "argsize", arg: 4, scope: !1174, file: !35, line: 257, type: !74)
!1184 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1174, file: !35, line: 258, type: !37)
!1185 = !DILocalVariable(name: "flags", arg: 6, scope: !1174, file: !35, line: 258, type: !23)
!1186 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1174, file: !35, line: 259, type: !1177)
!1187 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1174, file: !35, line: 260, type: !6)
!1188 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1174, file: !35, line: 261, type: !6)
!1189 = !DILocalVariable(name: "i", scope: !1174, file: !35, line: 263, type: !74)
!1190 = !DILocalVariable(name: "len", scope: !1174, file: !35, line: 264, type: !74)
!1191 = !DILocalVariable(name: "orig_buffersize", scope: !1174, file: !35, line: 265, type: !74)
!1192 = !DILocalVariable(name: "quote_string", scope: !1174, file: !35, line: 266, type: !6)
!1193 = !DILocalVariable(name: "quote_string_len", scope: !1174, file: !35, line: 267, type: !74)
!1194 = !DILocalVariable(name: "backslash_escapes", scope: !1174, file: !35, line: 268, type: !16)
!1195 = !DILocalVariable(name: "unibyte_locale", scope: !1174, file: !35, line: 269, type: !16)
!1196 = !DILocalVariable(name: "elide_outer_quotes", scope: !1174, file: !35, line: 270, type: !16)
!1197 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1174, file: !35, line: 271, type: !16)
!1198 = !DILocalVariable(name: "encountered_single_quote", scope: !1174, file: !35, line: 272, type: !16)
!1199 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1174, file: !35, line: 273, type: !16)
!1200 = !DILocalVariable(name: "c", scope: !1201, file: !35, line: 402, type: !133)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !35, line: 401, column: 5)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !35, line: 400, column: 3)
!1203 = distinct !DILexicalBlock(scope: !1174, file: !35, line: 400, column: 3)
!1204 = !DILocalVariable(name: "esc", scope: !1201, file: !35, line: 403, type: !133)
!1205 = !DILocalVariable(name: "is_right_quote", scope: !1201, file: !35, line: 404, type: !16)
!1206 = !DILocalVariable(name: "escaping", scope: !1201, file: !35, line: 405, type: !16)
!1207 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1201, file: !35, line: 406, type: !16)
!1208 = !DILocalVariable(name: "m", scope: !1209, file: !35, line: 610, type: !74)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 608, column: 11)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !35, line: 426, column: 9)
!1211 = !DILocalVariable(name: "printable", scope: !1209, file: !35, line: 612, type: !16)
!1212 = !DILocalVariable(name: "mbstate", scope: !1213, file: !35, line: 621, type: !1215)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !35, line: 620, column: 15)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !35, line: 614, column: 17)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1216, line: 6, baseType: !1217)
!1216 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1218, line: 21, baseType: !1219)
!1218 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1218, line: 13, size: 64, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1219, file: !1218, line: 15, baseType: !23, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1219, file: !1218, line: 20, baseType: !1223, size: 32, offset: 32)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1219, file: !1218, line: 16, size: 32, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1223, file: !1218, line: 18, baseType: !39, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1223, file: !1218, line: 19, baseType: !1227, size: 32)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1228)
!1228 = !{!1229}
!1229 = !DISubrange(count: 4)
!1230 = !DILocalVariable(name: "w", scope: !1231, file: !35, line: 631, type: !1232)
!1231 = distinct !DILexicalBlock(scope: !1213, file: !35, line: 630, column: 19)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!1233 = !DILocalVariable(name: "bytes", scope: !1231, file: !35, line: 632, type: !74)
!1234 = !DILocalVariable(name: "j", scope: !1235, file: !35, line: 657, type: !74)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !35, line: 656, column: 27)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !35, line: 654, column: 29)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !35, line: 649, column: 23)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !35, line: 641, column: 30)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !35, line: 636, column: 30)
!1240 = distinct !DILexicalBlock(scope: !1231, file: !35, line: 634, column: 25)
!1241 = !DILocalVariable(name: "ilim", scope: !1242, file: !35, line: 684, type: !74)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !35, line: 681, column: 15)
!1243 = distinct !DILexicalBlock(scope: !1209, file: !35, line: 680, column: 17)
!1244 = !DILabel(scope: !1174, name: "process_input", file: !35, line: 314)
!1245 = !DILabel(scope: !1210, name: "c_and_shell_escape", file: !35, line: 512)
!1246 = !DILabel(scope: !1210, name: "c_escape", file: !35, line: 517)
!1247 = !DILabel(scope: !1201, name: "store_escape", file: !35, line: 719)
!1248 = !DILabel(scope: !1201, name: "store_c", file: !35, line: 722)
!1249 = !DILabel(scope: !1174, name: "force_outer_quoting_style", file: !35, line: 763)
!1250 = !DILocation(line: 0, scope: !1174)
!1251 = !DILocation(line: 269, column: 25, scope: !1174)
!1252 = !DILocation(line: 269, column: 36, scope: !1174)
!1253 = !DILocation(line: 270, column: 8, scope: !1174)
!1254 = !DILocation(line: 273, column: 3, scope: !1174)
!1255 = !DILocation(line: 265, column: 10, scope: !1174)
!1256 = !DILocation(line: 266, column: 15, scope: !1174)
!1257 = !DILocation(line: 267, column: 10, scope: !1174)
!1258 = !DILocation(line: 268, column: 8, scope: !1174)
!1259 = !DILocation(line: 271, column: 8, scope: !1174)
!1260 = !DILocation(line: 272, column: 8, scope: !1174)
!1261 = !DILocation(line: 273, column: 8, scope: !1174)
!1262 = !DILocation(line: 314, column: 2, scope: !1174)
!1263 = !DILocation(line: 316, column: 3, scope: !1174)
!1264 = !DILocation(line: 323, column: 11, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1174, file: !35, line: 317, column: 5)
!1266 = !DILocation(line: 323, column: 12, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1265, file: !35, line: 323, column: 11)
!1268 = !DILocation(line: 324, column: 9, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !35, line: 324, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !35, line: 324, column: 9)
!1271 = !DILocation(line: 324, column: 9, scope: !1270)
!1272 = !DILocation(line: 362, column: 26, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !35, line: 340, column: 11)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !35, line: 339, column: 13)
!1275 = distinct !DILexicalBlock(scope: !1265, file: !35, line: 338, column: 7)
!1276 = !DILocation(line: 363, column: 27, scope: !1273)
!1277 = !DILocation(line: 364, column: 11, scope: !1273)
!1278 = !DILocation(line: 365, column: 14, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1275, file: !35, line: 365, column: 13)
!1280 = !DILocation(line: 365, column: 13, scope: !1275)
!1281 = !DILocation(line: 366, column: 43, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !35, line: 366, column: 11)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !35, line: 366, column: 11)
!1284 = !DILocation(line: 366, column: 11, scope: !1283)
!1285 = !DILocation(line: 367, column: 13, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !35, line: 367, column: 13)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !35, line: 367, column: 13)
!1288 = !DILocation(line: 367, column: 13, scope: !1287)
!1289 = !DILocation(line: 366, column: 70, scope: !1282)
!1290 = distinct !{!1290, !1284, !1291, !689}
!1291 = !DILocation(line: 367, column: 13, scope: !1283)
!1292 = !DILocation(line: 264, column: 10, scope: !1174)
!1293 = !DILocation(line: 370, column: 28, scope: !1275)
!1294 = !DILocation(line: 372, column: 7, scope: !1265)
!1295 = !DILocation(line: 376, column: 7, scope: !1265)
!1296 = !DILocation(line: 379, column: 7, scope: !1265)
!1297 = !DILocation(line: 381, column: 12, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1265, file: !35, line: 381, column: 11)
!1299 = !DILocation(line: 381, column: 11, scope: !1265)
!1300 = !DILocation(line: 386, column: 12, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1265, file: !35, line: 386, column: 11)
!1302 = !DILocation(line: 386, column: 11, scope: !1265)
!1303 = !DILocation(line: 387, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !35, line: 387, column: 9)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !35, line: 387, column: 9)
!1306 = !DILocation(line: 387, column: 9, scope: !1305)
!1307 = !DILocation(line: 394, column: 7, scope: !1265)
!1308 = !DILocation(line: 397, column: 7, scope: !1265)
!1309 = !DILocation(line: 400, column: 8, scope: !1203)
!1310 = !DILocation(line: 0, scope: !1203)
!1311 = !DILocation(line: 400, column: 27, scope: !1202)
!1312 = !DILocation(line: 400, column: 19, scope: !1202)
!1313 = !DILocation(line: 400, column: 41, scope: !1202)
!1314 = !DILocation(line: 400, column: 48, scope: !1202)
!1315 = !DILocation(line: 400, column: 3, scope: !1203)
!1316 = !DILocation(line: 400, column: 60, scope: !1202)
!1317 = !DILocation(line: 0, scope: !1201)
!1318 = !DILocation(line: 409, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1201, file: !35, line: 408, column: 11)
!1320 = !DILocation(line: 411, column: 17, scope: !1319)
!1321 = !DILocation(line: 412, column: 39, scope: !1319)
!1322 = !DILocation(line: 416, column: 32, scope: !1319)
!1323 = !DILocation(line: 412, column: 19, scope: !1319)
!1324 = !DILocation(line: 412, column: 15, scope: !1319)
!1325 = !DILocation(line: 417, column: 11, scope: !1319)
!1326 = !DILocation(line: 417, column: 26, scope: !1319)
!1327 = !DILocation(line: 417, column: 14, scope: !1319)
!1328 = !DILocation(line: 417, column: 63, scope: !1319)
!1329 = !DILocation(line: 408, column: 11, scope: !1201)
!1330 = !DILocation(line: 424, column: 11, scope: !1201)
!1331 = !DILocation(line: 425, column: 7, scope: !1201)
!1332 = !DILocation(line: 428, column: 15, scope: !1210)
!1333 = !DILocation(line: 430, column: 15, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !35, line: 430, column: 15)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !35, line: 429, column: 13)
!1336 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 428, column: 15)
!1337 = !DILocation(line: 430, column: 15, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !35, line: 430, column: 15)
!1339 = !DILocation(line: 430, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !35, line: 430, column: 15)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !35, line: 430, column: 15)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !35, line: 430, column: 15)
!1343 = !DILocation(line: 430, column: 15, scope: !1341)
!1344 = !DILocation(line: 430, column: 15, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !35, line: 430, column: 15)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !35, line: 430, column: 15)
!1347 = !DILocation(line: 430, column: 15, scope: !1346)
!1348 = !DILocation(line: 430, column: 15, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !35, line: 430, column: 15)
!1350 = distinct !DILexicalBlock(scope: !1342, file: !35, line: 430, column: 15)
!1351 = !DILocation(line: 430, column: 15, scope: !1350)
!1352 = !DILocation(line: 430, column: 15, scope: !1342)
!1353 = !DILocation(line: 430, column: 15, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !35, line: 430, column: 15)
!1355 = distinct !DILexicalBlock(scope: !1334, file: !35, line: 430, column: 15)
!1356 = !DILocation(line: 430, column: 15, scope: !1355)
!1357 = !DILocation(line: 438, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1335, file: !35, line: 437, column: 19)
!1359 = !DILocation(line: 438, column: 48, scope: !1358)
!1360 = !DILocation(line: 438, column: 59, scope: !1358)
!1361 = !DILocation(line: 440, column: 19, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !35, line: 440, column: 19)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !35, line: 440, column: 19)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !35, line: 439, column: 17)
!1365 = !DILocation(line: 440, column: 19, scope: !1363)
!1366 = !DILocation(line: 441, column: 19, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !35, line: 441, column: 19)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !35, line: 441, column: 19)
!1369 = !DILocation(line: 441, column: 19, scope: !1368)
!1370 = !DILocation(line: 442, column: 17, scope: !1364)
!1371 = !DILocation(line: 449, column: 20, scope: !1336)
!1372 = !DILocation(line: 454, column: 11, scope: !1210)
!1373 = !DILocation(line: 457, column: 19, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 455, column: 13)
!1375 = !DILocation(line: 463, column: 19, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1374, file: !35, line: 462, column: 19)
!1377 = !DILocation(line: 463, column: 47, scope: !1376)
!1378 = !DILocation(line: 463, column: 41, scope: !1376)
!1379 = !DILocation(line: 463, column: 52, scope: !1376)
!1380 = !DILocation(line: 462, column: 19, scope: !1374)
!1381 = !DILocation(line: 464, column: 25, scope: !1376)
!1382 = !DILocation(line: 464, column: 17, scope: !1376)
!1383 = !DILocation(line: 471, column: 25, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1376, file: !35, line: 465, column: 19)
!1385 = !DILocation(line: 475, column: 21, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !35, line: 475, column: 21)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !35, line: 475, column: 21)
!1388 = !DILocation(line: 475, column: 21, scope: !1387)
!1389 = !DILocation(line: 476, column: 21, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !35, line: 476, column: 21)
!1391 = distinct !DILexicalBlock(scope: !1384, file: !35, line: 476, column: 21)
!1392 = !DILocation(line: 476, column: 21, scope: !1391)
!1393 = !DILocation(line: 477, column: 21, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !35, line: 477, column: 21)
!1395 = distinct !DILexicalBlock(scope: !1384, file: !35, line: 477, column: 21)
!1396 = !DILocation(line: 477, column: 21, scope: !1395)
!1397 = !DILocation(line: 478, column: 21, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !35, line: 478, column: 21)
!1399 = distinct !DILexicalBlock(scope: !1384, file: !35, line: 478, column: 21)
!1400 = !DILocation(line: 478, column: 21, scope: !1399)
!1401 = !DILocation(line: 479, column: 21, scope: !1384)
!1402 = !DILocation(line: 492, column: 31, scope: !1210)
!1403 = !DILocation(line: 493, column: 31, scope: !1210)
!1404 = !DILocation(line: 495, column: 31, scope: !1210)
!1405 = !DILocation(line: 496, column: 31, scope: !1210)
!1406 = !DILocation(line: 497, column: 31, scope: !1210)
!1407 = !DILocation(line: 500, column: 15, scope: !1210)
!1408 = !DILocation(line: 502, column: 19, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !35, line: 501, column: 13)
!1410 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 500, column: 15)
!1411 = !DILocation(line: 509, column: 33, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 509, column: 15)
!1413 = !DILocation(line: 0, scope: !1210)
!1414 = !DILocation(line: 512, column: 9, scope: !1210)
!1415 = !DILocation(line: 514, column: 15, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 513, column: 15)
!1417 = !DILocation(line: 517, column: 9, scope: !1210)
!1418 = !DILocation(line: 518, column: 15, scope: !1210)
!1419 = !DILocation(line: 526, column: 15, scope: !1210)
!1420 = !DILocation(line: 526, column: 40, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 526, column: 15)
!1422 = !DILocation(line: 526, column: 47, scope: !1421)
!1423 = !DILocation(line: 526, column: 18, scope: !1421)
!1424 = !DILocation(line: 530, column: 17, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 530, column: 15)
!1426 = !DILocation(line: 530, column: 15, scope: !1210)
!1427 = !DILocation(line: 535, column: 11, scope: !1210)
!1428 = !DILocation(line: 549, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 548, column: 15)
!1430 = !DILocation(line: 556, column: 15, scope: !1210)
!1431 = !DILocation(line: 558, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !35, line: 557, column: 13)
!1433 = distinct !DILexicalBlock(scope: !1210, file: !35, line: 556, column: 15)
!1434 = !DILocation(line: 561, column: 19, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !35, line: 561, column: 19)
!1436 = !DILocation(line: 561, column: 30, scope: !1435)
!1437 = !DILocation(line: 570, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !35, line: 570, column: 15)
!1439 = distinct !DILexicalBlock(scope: !1432, file: !35, line: 570, column: 15)
!1440 = !DILocation(line: 570, column: 15, scope: !1439)
!1441 = !DILocation(line: 571, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !35, line: 571, column: 15)
!1443 = distinct !DILexicalBlock(scope: !1432, file: !35, line: 571, column: 15)
!1444 = !DILocation(line: 571, column: 15, scope: !1443)
!1445 = !DILocation(line: 572, column: 15, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !35, line: 572, column: 15)
!1447 = distinct !DILexicalBlock(scope: !1432, file: !35, line: 572, column: 15)
!1448 = !DILocation(line: 572, column: 15, scope: !1447)
!1449 = !DILocation(line: 574, column: 13, scope: !1432)
!1450 = !DILocation(line: 614, column: 17, scope: !1209)
!1451 = !DILocation(line: 0, scope: !1209)
!1452 = !DILocation(line: 617, column: 29, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1214, file: !35, line: 615, column: 15)
!1454 = !DILocation(line: 617, column: 27, scope: !1453)
!1455 = !DILocation(line: 678, column: 40, scope: !1209)
!1456 = !DILocation(line: 680, column: 23, scope: !1243)
!1457 = !DILocation(line: 621, column: 17, scope: !1213)
!1458 = !DILocation(line: 621, column: 27, scope: !1213)
!1459 = !DILocalVariable(name: "__dest", arg: 1, scope: !1460, file: !1461, line: 57, type: !29)
!1460 = distinct !DISubprogram(name: "memset", scope: !1461, file: !1461, line: 57, type: !1462, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1464)
!1461 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!29, !29, !23, !74}
!1464 = !{!1459, !1465, !1466}
!1465 = !DILocalVariable(name: "__ch", arg: 2, scope: !1460, file: !1461, line: 57, type: !23)
!1466 = !DILocalVariable(name: "__len", arg: 3, scope: !1460, file: !1461, line: 57, type: !74)
!1467 = !DILocation(line: 0, scope: !1460, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 622, column: 17, scope: !1213)
!1469 = !DILocation(line: 59, column: 10, scope: !1460, inlinedAt: !1468)
!1470 = !DILocation(line: 626, column: 29, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1213, file: !35, line: 626, column: 21)
!1472 = !DILocation(line: 626, column: 21, scope: !1213)
!1473 = !DILocation(line: 627, column: 29, scope: !1471)
!1474 = !DILocation(line: 627, column: 19, scope: !1471)
!1475 = !DILocation(line: 629, column: 17, scope: !1213)
!1476 = !DILocation(line: 624, column: 19, scope: !1213)
!1477 = !DILocation(line: 625, column: 27, scope: !1213)
!1478 = !DILocation(line: 631, column: 21, scope: !1231)
!1479 = !DILocation(line: 632, column: 56, scope: !1231)
!1480 = !DILocation(line: 632, column: 50, scope: !1231)
!1481 = !DILocation(line: 633, column: 53, scope: !1231)
!1482 = !DILocation(line: 0, scope: !1231)
!1483 = !DILocation(line: 632, column: 36, scope: !1231)
!1484 = !DILocation(line: 634, column: 25, scope: !1231)
!1485 = !DILocation(line: 644, column: 38, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1238, file: !35, line: 642, column: 23)
!1487 = !DILocation(line: 644, column: 48, scope: !1486)
!1488 = !DILocation(line: 644, column: 25, scope: !1486)
!1489 = !DILocation(line: 644, column: 51, scope: !1486)
!1490 = !DILocation(line: 645, column: 28, scope: !1486)
!1491 = !DILocation(line: 644, column: 34, scope: !1486)
!1492 = distinct !{!1492, !1488, !1490, !689}
!1493 = !DILocation(line: 655, column: 29, scope: !1236)
!1494 = !DILocation(line: 0, scope: !1235)
!1495 = !DILocation(line: 659, column: 49, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !35, line: 658, column: 29)
!1497 = distinct !DILexicalBlock(scope: !1235, file: !35, line: 658, column: 29)
!1498 = !DILocation(line: 659, column: 39, scope: !1496)
!1499 = !DILocation(line: 659, column: 31, scope: !1496)
!1500 = !DILocation(line: 658, column: 53, scope: !1496)
!1501 = !DILocation(line: 658, column: 43, scope: !1496)
!1502 = !DILocation(line: 658, column: 29, scope: !1497)
!1503 = distinct !{!1503, !1502, !1504, !689}
!1504 = !DILocation(line: 667, column: 33, scope: !1497)
!1505 = !DILocation(line: 674, column: 19, scope: !1213)
!1506 = !DILocation(line: 670, column: 41, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1237, file: !35, line: 670, column: 29)
!1508 = !DILocation(line: 670, column: 31, scope: !1507)
!1509 = !DILocation(line: 670, column: 29, scope: !1237)
!1510 = !DILocation(line: 672, column: 27, scope: !1237)
!1511 = !DILocation(line: 675, column: 26, scope: !1213)
!1512 = !DILocation(line: 675, column: 24, scope: !1213)
!1513 = !DILocation(line: 674, column: 19, scope: !1231)
!1514 = distinct !{!1514, !1475, !1515, !689}
!1515 = !DILocation(line: 675, column: 44, scope: !1213)
!1516 = !DILocation(line: 676, column: 15, scope: !1214)
!1517 = !DILocation(line: 680, column: 19, scope: !1243)
!1518 = !DILocation(line: 680, column: 45, scope: !1243)
!1519 = !DILocation(line: 684, column: 33, scope: !1242)
!1520 = !DILocation(line: 0, scope: !1242)
!1521 = !DILocation(line: 686, column: 17, scope: !1242)
!1522 = !DILocation(line: 405, column: 12, scope: !1201)
!1523 = !DILocation(line: 688, column: 43, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !35, line: 688, column: 25)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !35, line: 687, column: 19)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !35, line: 686, column: 17)
!1527 = distinct !DILexicalBlock(scope: !1242, file: !35, line: 686, column: 17)
!1528 = !DILocation(line: 690, column: 25, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !35, line: 690, column: 25)
!1530 = distinct !DILexicalBlock(scope: !1524, file: !35, line: 689, column: 23)
!1531 = !DILocation(line: 690, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !35, line: 690, column: 25)
!1533 = !DILocation(line: 690, column: 25, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !35, line: 690, column: 25)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !35, line: 690, column: 25)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !35, line: 690, column: 25)
!1537 = !DILocation(line: 690, column: 25, scope: !1535)
!1538 = !DILocation(line: 690, column: 25, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !35, line: 690, column: 25)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !35, line: 690, column: 25)
!1541 = !DILocation(line: 690, column: 25, scope: !1540)
!1542 = !DILocation(line: 690, column: 25, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !35, line: 690, column: 25)
!1544 = distinct !DILexicalBlock(scope: !1536, file: !35, line: 690, column: 25)
!1545 = !DILocation(line: 690, column: 25, scope: !1544)
!1546 = !DILocation(line: 690, column: 25, scope: !1536)
!1547 = !DILocation(line: 690, column: 25, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !35, line: 690, column: 25)
!1549 = distinct !DILexicalBlock(scope: !1529, file: !35, line: 690, column: 25)
!1550 = !DILocation(line: 690, column: 25, scope: !1549)
!1551 = !DILocation(line: 691, column: 25, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !35, line: 691, column: 25)
!1553 = distinct !DILexicalBlock(scope: !1530, file: !35, line: 691, column: 25)
!1554 = !DILocation(line: 691, column: 25, scope: !1553)
!1555 = !DILocation(line: 692, column: 25, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !35, line: 692, column: 25)
!1557 = distinct !DILexicalBlock(scope: !1530, file: !35, line: 692, column: 25)
!1558 = !DILocation(line: 692, column: 25, scope: !1557)
!1559 = !DILocation(line: 693, column: 38, scope: !1530)
!1560 = !DILocation(line: 693, column: 33, scope: !1530)
!1561 = !DILocation(line: 694, column: 23, scope: !1530)
!1562 = !DILocation(line: 695, column: 30, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1524, file: !35, line: 695, column: 30)
!1564 = !DILocation(line: 695, column: 30, scope: !1524)
!1565 = !DILocation(line: 697, column: 25, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !35, line: 697, column: 25)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !35, line: 697, column: 25)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !35, line: 696, column: 23)
!1569 = !DILocation(line: 697, column: 25, scope: !1567)
!1570 = !DILocation(line: 699, column: 23, scope: !1568)
!1571 = !DILocation(line: 700, column: 35, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1525, file: !35, line: 700, column: 25)
!1573 = !DILocation(line: 700, column: 30, scope: !1572)
!1574 = !DILocation(line: 700, column: 25, scope: !1525)
!1575 = !DILocation(line: 702, column: 21, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !35, line: 702, column: 21)
!1577 = distinct !DILexicalBlock(scope: !1525, file: !35, line: 702, column: 21)
!1578 = !DILocation(line: 702, column: 21, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !35, line: 702, column: 21)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !35, line: 702, column: 21)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !35, line: 702, column: 21)
!1582 = !DILocation(line: 702, column: 21, scope: !1580)
!1583 = !DILocation(line: 702, column: 21, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !35, line: 702, column: 21)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !35, line: 702, column: 21)
!1586 = !DILocation(line: 702, column: 21, scope: !1585)
!1587 = !DILocation(line: 702, column: 21, scope: !1581)
!1588 = !DILocation(line: 0, scope: !1525)
!1589 = !DILocation(line: 703, column: 21, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !35, line: 703, column: 21)
!1591 = distinct !DILexicalBlock(scope: !1525, file: !35, line: 703, column: 21)
!1592 = !DILocation(line: 703, column: 21, scope: !1591)
!1593 = !DILocation(line: 704, column: 25, scope: !1525)
!1594 = !DILocation(line: 686, column: 17, scope: !1526)
!1595 = distinct !{!1595, !1596, !1597}
!1596 = !DILocation(line: 686, column: 17, scope: !1527)
!1597 = !DILocation(line: 705, column: 19, scope: !1527)
!1598 = !DILocation(line: 416, column: 30, scope: !1319)
!1599 = !DILocation(line: 712, column: 34, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1201, file: !35, line: 712, column: 11)
!1601 = !DILocation(line: 715, column: 35, scope: !1600)
!1602 = !DILocation(line: 715, column: 17, scope: !1600)
!1603 = !DILocation(line: 715, column: 47, scope: !1600)
!1604 = !DILocation(line: 715, column: 65, scope: !1600)
!1605 = !DILocation(line: 716, column: 11, scope: !1600)
!1606 = !DILocation(line: 712, column: 11, scope: !1201)
!1607 = !DILocation(line: 400, column: 10, scope: !1203)
!1608 = !DILocation(line: 719, column: 5, scope: !1201)
!1609 = !DILocation(line: 720, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1201, file: !35, line: 720, column: 7)
!1611 = !DILocation(line: 720, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !35, line: 720, column: 7)
!1613 = !DILocation(line: 720, column: 7, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !35, line: 720, column: 7)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !35, line: 720, column: 7)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !35, line: 720, column: 7)
!1617 = !DILocation(line: 720, column: 7, scope: !1615)
!1618 = !DILocation(line: 720, column: 7, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !35, line: 720, column: 7)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !35, line: 720, column: 7)
!1621 = !DILocation(line: 720, column: 7, scope: !1620)
!1622 = !DILocation(line: 720, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !35, line: 720, column: 7)
!1624 = distinct !DILexicalBlock(scope: !1616, file: !35, line: 720, column: 7)
!1625 = !DILocation(line: 720, column: 7, scope: !1624)
!1626 = !DILocation(line: 720, column: 7, scope: !1616)
!1627 = !DILocation(line: 720, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !35, line: 720, column: 7)
!1629 = distinct !DILexicalBlock(scope: !1610, file: !35, line: 720, column: 7)
!1630 = !DILocation(line: 720, column: 7, scope: !1629)
!1631 = !DILocation(line: 722, column: 5, scope: !1201)
!1632 = !DILocation(line: 723, column: 7, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !35, line: 723, column: 7)
!1634 = distinct !DILexicalBlock(scope: !1201, file: !35, line: 723, column: 7)
!1635 = !DILocation(line: 424, column: 9, scope: !1201)
!1636 = !DILocation(line: 723, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !35, line: 723, column: 7)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !35, line: 723, column: 7)
!1639 = distinct !DILexicalBlock(scope: !1633, file: !35, line: 723, column: 7)
!1640 = !DILocation(line: 723, column: 7, scope: !1638)
!1641 = !DILocation(line: 723, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !35, line: 723, column: 7)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !35, line: 723, column: 7)
!1644 = !DILocation(line: 723, column: 7, scope: !1643)
!1645 = !DILocation(line: 723, column: 7, scope: !1639)
!1646 = !DILocation(line: 724, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !35, line: 724, column: 7)
!1648 = distinct !DILexicalBlock(scope: !1201, file: !35, line: 724, column: 7)
!1649 = !DILocation(line: 724, column: 7, scope: !1648)
!1650 = !DILocation(line: 726, column: 13, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1201, file: !35, line: 726, column: 11)
!1652 = !DILocation(line: 726, column: 11, scope: !1201)
!1653 = !DILocation(line: 728, column: 5, scope: !1202)
!1654 = !DILocation(line: 400, column: 75, scope: !1202)
!1655 = !DILocation(line: 400, column: 3, scope: !1202)
!1656 = distinct !{!1656, !1315, !1657, !689}
!1657 = !DILocation(line: 728, column: 5, scope: !1203)
!1658 = !DILocation(line: 730, column: 11, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1174, file: !35, line: 730, column: 7)
!1660 = !DILocation(line: 730, column: 16, scope: !1659)
!1661 = !DILocation(line: 738, column: 51, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1174, file: !35, line: 738, column: 7)
!1663 = !DILocation(line: 741, column: 11, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !35, line: 741, column: 11)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !35, line: 740, column: 5)
!1666 = !DILocation(line: 741, column: 11, scope: !1665)
!1667 = !DILocation(line: 742, column: 16, scope: !1664)
!1668 = !DILocation(line: 742, column: 9, scope: !1664)
!1669 = !DILocation(line: 746, column: 18, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1664, file: !35, line: 746, column: 16)
!1671 = !DILocation(line: 746, column: 29, scope: !1670)
!1672 = !DILocation(line: 755, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1174, file: !35, line: 755, column: 7)
!1674 = !DILocation(line: 755, column: 20, scope: !1673)
!1675 = !DILocation(line: 756, column: 12, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !35, line: 756, column: 5)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !35, line: 756, column: 5)
!1678 = !DILocation(line: 756, column: 5, scope: !1677)
!1679 = !DILocation(line: 757, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !35, line: 757, column: 7)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !35, line: 757, column: 7)
!1682 = !DILocation(line: 757, column: 7, scope: !1681)
!1683 = !DILocation(line: 756, column: 39, scope: !1676)
!1684 = distinct !{!1684, !1678, !1685, !689}
!1685 = !DILocation(line: 757, column: 7, scope: !1677)
!1686 = !DILocation(line: 759, column: 11, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1174, file: !35, line: 759, column: 7)
!1688 = !DILocation(line: 759, column: 7, scope: !1174)
!1689 = !DILocation(line: 760, column: 5, scope: !1687)
!1690 = !DILocation(line: 760, column: 17, scope: !1687)
!1691 = !DILocation(line: 763, column: 2, scope: !1174)
!1692 = !DILocation(line: 766, column: 51, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1174, file: !35, line: 766, column: 7)
!1694 = !DILocation(line: 766, column: 21, scope: !1693)
!1695 = !DILocation(line: 770, column: 42, scope: !1174)
!1696 = !DILocation(line: 768, column: 10, scope: !1174)
!1697 = !DILocation(line: 768, column: 3, scope: !1174)
!1698 = !DILocation(line: 772, column: 1, scope: !1174)
!1699 = distinct !DISubprogram(name: "gettext_quote", scope: !35, file: !35, line: 207, type: !1700, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!6, !6, !37}
!1702 = !{!1703, !1704, !1705, !1706}
!1703 = !DILocalVariable(name: "msgid", arg: 1, scope: !1699, file: !35, line: 207, type: !6)
!1704 = !DILocalVariable(name: "s", arg: 2, scope: !1699, file: !35, line: 207, type: !37)
!1705 = !DILocalVariable(name: "translation", scope: !1699, file: !35, line: 209, type: !6)
!1706 = !DILocalVariable(name: "locale_code", scope: !1699, file: !35, line: 210, type: !6)
!1707 = !DILocation(line: 0, scope: !1699)
!1708 = !DILocation(line: 209, column: 29, scope: !1699)
!1709 = !DILocation(line: 212, column: 19, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1699, file: !35, line: 212, column: 7)
!1711 = !DILocation(line: 212, column: 7, scope: !1699)
!1712 = !DILocation(line: 233, column: 17, scope: !1699)
!1713 = !DILocalVariable(name: "s1", arg: 1, scope: !1714, file: !1715, line: 160, type: !6)
!1714 = distinct !DISubprogram(name: "strcaseeq0", scope: !1715, file: !1715, line: 160, type: !1716, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1718)
!1715 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1718 = !{!1713, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1719 = !DILocalVariable(name: "s2", arg: 2, scope: !1714, file: !1715, line: 160, type: !6)
!1720 = !DILocalVariable(name: "s20", arg: 3, scope: !1714, file: !1715, line: 160, type: !8)
!1721 = !DILocalVariable(name: "s21", arg: 4, scope: !1714, file: !1715, line: 160, type: !8)
!1722 = !DILocalVariable(name: "s22", arg: 5, scope: !1714, file: !1715, line: 160, type: !8)
!1723 = !DILocalVariable(name: "s23", arg: 6, scope: !1714, file: !1715, line: 160, type: !8)
!1724 = !DILocalVariable(name: "s24", arg: 7, scope: !1714, file: !1715, line: 160, type: !8)
!1725 = !DILocalVariable(name: "s25", arg: 8, scope: !1714, file: !1715, line: 160, type: !8)
!1726 = !DILocalVariable(name: "s26", arg: 9, scope: !1714, file: !1715, line: 160, type: !8)
!1727 = !DILocalVariable(name: "s27", arg: 10, scope: !1714, file: !1715, line: 160, type: !8)
!1728 = !DILocalVariable(name: "s28", arg: 11, scope: !1714, file: !1715, line: 160, type: !8)
!1729 = !DILocation(line: 0, scope: !1714, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 234, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1699, file: !35, line: 234, column: 7)
!1732 = !DILocation(line: 162, column: 7, scope: !1733, inlinedAt: !1730)
!1733 = distinct !DILexicalBlock(scope: !1714, file: !1715, line: 162, column: 7)
!1734 = !DILocalVariable(name: "s1", arg: 1, scope: !1735, file: !1715, line: 146, type: !6)
!1735 = distinct !DISubprogram(name: "strcaseeq1", scope: !1715, file: !1715, line: 146, type: !1736, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1738 = !{!1734, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1739 = !DILocalVariable(name: "s2", arg: 2, scope: !1735, file: !1715, line: 146, type: !6)
!1740 = !DILocalVariable(name: "s21", arg: 3, scope: !1735, file: !1715, line: 146, type: !8)
!1741 = !DILocalVariable(name: "s22", arg: 4, scope: !1735, file: !1715, line: 146, type: !8)
!1742 = !DILocalVariable(name: "s23", arg: 5, scope: !1735, file: !1715, line: 146, type: !8)
!1743 = !DILocalVariable(name: "s24", arg: 6, scope: !1735, file: !1715, line: 146, type: !8)
!1744 = !DILocalVariable(name: "s25", arg: 7, scope: !1735, file: !1715, line: 146, type: !8)
!1745 = !DILocalVariable(name: "s26", arg: 8, scope: !1735, file: !1715, line: 146, type: !8)
!1746 = !DILocalVariable(name: "s27", arg: 9, scope: !1735, file: !1715, line: 146, type: !8)
!1747 = !DILocalVariable(name: "s28", arg: 10, scope: !1735, file: !1715, line: 146, type: !8)
!1748 = !DILocation(line: 0, scope: !1735, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 167, column: 16, scope: !1750, inlinedAt: !1730)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !1715, line: 164, column: 11)
!1751 = distinct !DILexicalBlock(scope: !1733, file: !1715, line: 163, column: 5)
!1752 = !DILocation(line: 148, column: 7, scope: !1753, inlinedAt: !1749)
!1753 = distinct !DILexicalBlock(scope: !1735, file: !1715, line: 148, column: 7)
!1754 = !DILocalVariable(name: "s1", arg: 1, scope: !1755, file: !1715, line: 132, type: !6)
!1755 = distinct !DISubprogram(name: "strcaseeq2", scope: !1715, file: !1715, line: 132, type: !1756, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1758 = !{!1754, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1759 = !DILocalVariable(name: "s2", arg: 2, scope: !1755, file: !1715, line: 132, type: !6)
!1760 = !DILocalVariable(name: "s22", arg: 3, scope: !1755, file: !1715, line: 132, type: !8)
!1761 = !DILocalVariable(name: "s23", arg: 4, scope: !1755, file: !1715, line: 132, type: !8)
!1762 = !DILocalVariable(name: "s24", arg: 5, scope: !1755, file: !1715, line: 132, type: !8)
!1763 = !DILocalVariable(name: "s25", arg: 6, scope: !1755, file: !1715, line: 132, type: !8)
!1764 = !DILocalVariable(name: "s26", arg: 7, scope: !1755, file: !1715, line: 132, type: !8)
!1765 = !DILocalVariable(name: "s27", arg: 8, scope: !1755, file: !1715, line: 132, type: !8)
!1766 = !DILocalVariable(name: "s28", arg: 9, scope: !1755, file: !1715, line: 132, type: !8)
!1767 = !DILocation(line: 0, scope: !1755, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 153, column: 16, scope: !1769, inlinedAt: !1749)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !1715, line: 150, column: 11)
!1770 = distinct !DILexicalBlock(scope: !1753, file: !1715, line: 149, column: 5)
!1771 = !DILocation(line: 134, column: 7, scope: !1772, inlinedAt: !1768)
!1772 = distinct !DILexicalBlock(scope: !1755, file: !1715, line: 134, column: 7)
!1773 = !DILocalVariable(name: "s1", arg: 1, scope: !1774, file: !1715, line: 118, type: !6)
!1774 = distinct !DISubprogram(name: "strcaseeq3", scope: !1715, file: !1715, line: 118, type: !1775, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1777 = !{!1773, !1778, !1779, !1780, !1781, !1782, !1783, !1784}
!1778 = !DILocalVariable(name: "s2", arg: 2, scope: !1774, file: !1715, line: 118, type: !6)
!1779 = !DILocalVariable(name: "s23", arg: 3, scope: !1774, file: !1715, line: 118, type: !8)
!1780 = !DILocalVariable(name: "s24", arg: 4, scope: !1774, file: !1715, line: 118, type: !8)
!1781 = !DILocalVariable(name: "s25", arg: 5, scope: !1774, file: !1715, line: 118, type: !8)
!1782 = !DILocalVariable(name: "s26", arg: 6, scope: !1774, file: !1715, line: 118, type: !8)
!1783 = !DILocalVariable(name: "s27", arg: 7, scope: !1774, file: !1715, line: 118, type: !8)
!1784 = !DILocalVariable(name: "s28", arg: 8, scope: !1774, file: !1715, line: 118, type: !8)
!1785 = !DILocation(line: 0, scope: !1774, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 139, column: 16, scope: !1787, inlinedAt: !1768)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !1715, line: 136, column: 11)
!1788 = distinct !DILexicalBlock(scope: !1772, file: !1715, line: 135, column: 5)
!1789 = !DILocation(line: 120, column: 7, scope: !1790, inlinedAt: !1786)
!1790 = distinct !DILexicalBlock(scope: !1774, file: !1715, line: 120, column: 7)
!1791 = !DILocation(line: 120, column: 7, scope: !1774, inlinedAt: !1786)
!1792 = !DILocalVariable(name: "s1", arg: 1, scope: !1793, file: !1715, line: 104, type: !6)
!1793 = distinct !DISubprogram(name: "strcaseeq4", scope: !1715, file: !1715, line: 104, type: !1794, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1796 = !{!1792, !1797, !1798, !1799, !1800, !1801, !1802}
!1797 = !DILocalVariable(name: "s2", arg: 2, scope: !1793, file: !1715, line: 104, type: !6)
!1798 = !DILocalVariable(name: "s24", arg: 3, scope: !1793, file: !1715, line: 104, type: !8)
!1799 = !DILocalVariable(name: "s25", arg: 4, scope: !1793, file: !1715, line: 104, type: !8)
!1800 = !DILocalVariable(name: "s26", arg: 5, scope: !1793, file: !1715, line: 104, type: !8)
!1801 = !DILocalVariable(name: "s27", arg: 6, scope: !1793, file: !1715, line: 104, type: !8)
!1802 = !DILocalVariable(name: "s28", arg: 7, scope: !1793, file: !1715, line: 104, type: !8)
!1803 = !DILocation(line: 0, scope: !1793, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 125, column: 16, scope: !1805, inlinedAt: !1786)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !1715, line: 122, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1790, file: !1715, line: 121, column: 5)
!1807 = !DILocation(line: 106, column: 7, scope: !1808, inlinedAt: !1804)
!1808 = distinct !DILexicalBlock(scope: !1793, file: !1715, line: 106, column: 7)
!1809 = !DILocation(line: 106, column: 7, scope: !1793, inlinedAt: !1804)
!1810 = !DILocalVariable(name: "s1", arg: 1, scope: !1811, file: !1715, line: 90, type: !6)
!1811 = distinct !DISubprogram(name: "strcaseeq5", scope: !1715, file: !1715, line: 90, type: !1812, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1814)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!23, !6, !6, !8, !8, !8, !8}
!1814 = !{!1810, !1815, !1816, !1817, !1818, !1819}
!1815 = !DILocalVariable(name: "s2", arg: 2, scope: !1811, file: !1715, line: 90, type: !6)
!1816 = !DILocalVariable(name: "s25", arg: 3, scope: !1811, file: !1715, line: 90, type: !8)
!1817 = !DILocalVariable(name: "s26", arg: 4, scope: !1811, file: !1715, line: 90, type: !8)
!1818 = !DILocalVariable(name: "s27", arg: 5, scope: !1811, file: !1715, line: 90, type: !8)
!1819 = !DILocalVariable(name: "s28", arg: 6, scope: !1811, file: !1715, line: 90, type: !8)
!1820 = !DILocation(line: 0, scope: !1811, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 111, column: 16, scope: !1822, inlinedAt: !1804)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !1715, line: 108, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1808, file: !1715, line: 107, column: 5)
!1824 = !DILocation(line: 92, column: 7, scope: !1825, inlinedAt: !1821)
!1825 = distinct !DILexicalBlock(scope: !1811, file: !1715, line: 92, column: 7)
!1826 = !DILocation(line: 92, column: 7, scope: !1811, inlinedAt: !1821)
!1827 = !DILocation(line: 235, column: 12, scope: !1731)
!1828 = !DILocation(line: 235, column: 21, scope: !1731)
!1829 = !DILocation(line: 235, column: 5, scope: !1731)
!1830 = !DILocation(line: 0, scope: !1735, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 167, column: 16, scope: !1750, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 236, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1699, file: !35, line: 236, column: 7)
!1834 = !DILocation(line: 148, column: 7, scope: !1753, inlinedAt: !1831)
!1835 = !DILocation(line: 0, scope: !1755, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 153, column: 16, scope: !1769, inlinedAt: !1831)
!1837 = !DILocation(line: 134, column: 7, scope: !1772, inlinedAt: !1836)
!1838 = !DILocation(line: 134, column: 7, scope: !1755, inlinedAt: !1836)
!1839 = !DILocation(line: 0, scope: !1774, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 139, column: 16, scope: !1787, inlinedAt: !1836)
!1841 = !DILocation(line: 120, column: 7, scope: !1790, inlinedAt: !1840)
!1842 = !DILocation(line: 120, column: 7, scope: !1774, inlinedAt: !1840)
!1843 = !DILocation(line: 0, scope: !1793, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 125, column: 16, scope: !1805, inlinedAt: !1840)
!1845 = !DILocation(line: 106, column: 7, scope: !1808, inlinedAt: !1844)
!1846 = !DILocation(line: 106, column: 7, scope: !1793, inlinedAt: !1844)
!1847 = !DILocation(line: 0, scope: !1811, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 111, column: 16, scope: !1822, inlinedAt: !1844)
!1849 = !DILocation(line: 92, column: 7, scope: !1825, inlinedAt: !1848)
!1850 = !DILocation(line: 92, column: 7, scope: !1811, inlinedAt: !1848)
!1851 = !DILocalVariable(name: "s1", arg: 1, scope: !1852, file: !1715, line: 76, type: !6)
!1852 = distinct !DISubprogram(name: "strcaseeq6", scope: !1715, file: !1715, line: 76, type: !1853, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!23, !6, !6, !8, !8, !8}
!1855 = !{!1851, !1856, !1857, !1858, !1859}
!1856 = !DILocalVariable(name: "s2", arg: 2, scope: !1852, file: !1715, line: 76, type: !6)
!1857 = !DILocalVariable(name: "s26", arg: 3, scope: !1852, file: !1715, line: 76, type: !8)
!1858 = !DILocalVariable(name: "s27", arg: 4, scope: !1852, file: !1715, line: 76, type: !8)
!1859 = !DILocalVariable(name: "s28", arg: 5, scope: !1852, file: !1715, line: 76, type: !8)
!1860 = !DILocation(line: 0, scope: !1852, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 97, column: 16, scope: !1862, inlinedAt: !1848)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !1715, line: 94, column: 11)
!1863 = distinct !DILexicalBlock(scope: !1825, file: !1715, line: 93, column: 5)
!1864 = !DILocation(line: 78, column: 7, scope: !1865, inlinedAt: !1861)
!1865 = distinct !DILexicalBlock(scope: !1852, file: !1715, line: 78, column: 7)
!1866 = !DILocation(line: 78, column: 7, scope: !1852, inlinedAt: !1861)
!1867 = !DILocalVariable(name: "s1", arg: 1, scope: !1868, file: !1715, line: 62, type: !6)
!1868 = distinct !DISubprogram(name: "strcaseeq7", scope: !1715, file: !1715, line: 62, type: !1869, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1871)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!23, !6, !6, !8, !8}
!1871 = !{!1867, !1872, !1873, !1874}
!1872 = !DILocalVariable(name: "s2", arg: 2, scope: !1868, file: !1715, line: 62, type: !6)
!1873 = !DILocalVariable(name: "s27", arg: 3, scope: !1868, file: !1715, line: 62, type: !8)
!1874 = !DILocalVariable(name: "s28", arg: 4, scope: !1868, file: !1715, line: 62, type: !8)
!1875 = !DILocation(line: 0, scope: !1868, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 83, column: 16, scope: !1877, inlinedAt: !1861)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1715, line: 80, column: 11)
!1878 = distinct !DILexicalBlock(scope: !1865, file: !1715, line: 79, column: 5)
!1879 = !DILocation(line: 64, column: 7, scope: !1880, inlinedAt: !1876)
!1880 = distinct !DILexicalBlock(scope: !1868, file: !1715, line: 64, column: 7)
!1881 = !DILocation(line: 236, column: 7, scope: !1699)
!1882 = !DILocation(line: 237, column: 12, scope: !1833)
!1883 = !DILocation(line: 237, column: 21, scope: !1833)
!1884 = !DILocation(line: 237, column: 5, scope: !1833)
!1885 = !DILocation(line: 239, column: 13, scope: !1699)
!1886 = !DILocation(line: 239, column: 11, scope: !1699)
!1887 = !DILocation(line: 239, column: 3, scope: !1699)
!1888 = !DILocation(line: 240, column: 1, scope: !1699)
!1889 = !DISubprogram(name: "iswprint", scope: !1890, file: !1890, line: 120, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1890 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!23, !39}
!1893 = !DISubprogram(name: "mbsinit", scope: !1894, file: !1894, line: 292, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1894 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!23, !1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1899 = distinct !DISubprogram(name: "quotearg_alloc", scope: !35, file: !35, line: 799, type: !1900, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1902)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!30, !6, !74, !1066}
!1902 = !{!1903, !1904, !1905}
!1903 = !DILocalVariable(name: "arg", arg: 1, scope: !1899, file: !35, line: 799, type: !6)
!1904 = !DILocalVariable(name: "argsize", arg: 2, scope: !1899, file: !35, line: 799, type: !74)
!1905 = !DILocalVariable(name: "o", arg: 3, scope: !1899, file: !35, line: 800, type: !1066)
!1906 = !DILocation(line: 0, scope: !1899)
!1907 = !DILocalVariable(name: "arg", arg: 1, scope: !1908, file: !35, line: 812, type: !6)
!1908 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !35, file: !35, line: 812, type: !1909, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!30, !6, !74, !149, !1066}
!1911 = !{!1907, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919}
!1912 = !DILocalVariable(name: "argsize", arg: 2, scope: !1908, file: !35, line: 812, type: !74)
!1913 = !DILocalVariable(name: "size", arg: 3, scope: !1908, file: !35, line: 812, type: !149)
!1914 = !DILocalVariable(name: "o", arg: 4, scope: !1908, file: !35, line: 813, type: !1066)
!1915 = !DILocalVariable(name: "p", scope: !1908, file: !35, line: 815, type: !1066)
!1916 = !DILocalVariable(name: "e", scope: !1908, file: !35, line: 816, type: !23)
!1917 = !DILocalVariable(name: "flags", scope: !1908, file: !35, line: 818, type: !23)
!1918 = !DILocalVariable(name: "bufsize", scope: !1908, file: !35, line: 819, type: !74)
!1919 = !DILocalVariable(name: "buf", scope: !1908, file: !35, line: 823, type: !30)
!1920 = !DILocation(line: 0, scope: !1908, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 802, column: 10, scope: !1899)
!1922 = !DILocation(line: 815, column: 37, scope: !1908, inlinedAt: !1921)
!1923 = !DILocation(line: 816, column: 11, scope: !1908, inlinedAt: !1921)
!1924 = !DILocation(line: 818, column: 18, scope: !1908, inlinedAt: !1921)
!1925 = !DILocation(line: 818, column: 24, scope: !1908, inlinedAt: !1921)
!1926 = !DILocation(line: 819, column: 69, scope: !1908, inlinedAt: !1921)
!1927 = !DILocation(line: 820, column: 53, scope: !1908, inlinedAt: !1921)
!1928 = !DILocation(line: 821, column: 49, scope: !1908, inlinedAt: !1921)
!1929 = !DILocation(line: 822, column: 49, scope: !1908, inlinedAt: !1921)
!1930 = !DILocation(line: 819, column: 20, scope: !1908, inlinedAt: !1921)
!1931 = !DILocation(line: 822, column: 62, scope: !1908, inlinedAt: !1921)
!1932 = !DILocalVariable(name: "n", arg: 1, scope: !1933, file: !145, line: 216, type: !74)
!1933 = distinct !DISubprogram(name: "xcharalloc", scope: !145, file: !145, line: 216, type: !1934, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!30, !74}
!1936 = !{!1932}
!1937 = !DILocation(line: 0, scope: !1933, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 823, column: 15, scope: !1908, inlinedAt: !1921)
!1939 = !DILocation(line: 218, column: 10, scope: !1933, inlinedAt: !1938)
!1940 = !DILocation(line: 824, column: 60, scope: !1908, inlinedAt: !1921)
!1941 = !DILocation(line: 826, column: 32, scope: !1908, inlinedAt: !1921)
!1942 = !DILocation(line: 826, column: 47, scope: !1908, inlinedAt: !1921)
!1943 = !DILocation(line: 824, column: 3, scope: !1908, inlinedAt: !1921)
!1944 = !DILocation(line: 827, column: 9, scope: !1908, inlinedAt: !1921)
!1945 = !DILocation(line: 802, column: 3, scope: !1899)
!1946 = !DILocation(line: 0, scope: !1908)
!1947 = !DILocation(line: 815, column: 37, scope: !1908)
!1948 = !DILocation(line: 816, column: 11, scope: !1908)
!1949 = !DILocation(line: 818, column: 18, scope: !1908)
!1950 = !DILocation(line: 818, column: 27, scope: !1908)
!1951 = !DILocation(line: 818, column: 24, scope: !1908)
!1952 = !DILocation(line: 819, column: 69, scope: !1908)
!1953 = !DILocation(line: 820, column: 53, scope: !1908)
!1954 = !DILocation(line: 821, column: 49, scope: !1908)
!1955 = !DILocation(line: 822, column: 49, scope: !1908)
!1956 = !DILocation(line: 819, column: 20, scope: !1908)
!1957 = !DILocation(line: 822, column: 62, scope: !1908)
!1958 = !DILocation(line: 0, scope: !1933, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 823, column: 15, scope: !1908)
!1960 = !DILocation(line: 218, column: 10, scope: !1933, inlinedAt: !1959)
!1961 = !DILocation(line: 824, column: 60, scope: !1908)
!1962 = !DILocation(line: 826, column: 32, scope: !1908)
!1963 = !DILocation(line: 826, column: 47, scope: !1908)
!1964 = !DILocation(line: 824, column: 3, scope: !1908)
!1965 = !DILocation(line: 827, column: 9, scope: !1908)
!1966 = !DILocation(line: 828, column: 7, scope: !1908)
!1967 = !DILocation(line: 829, column: 11, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1908, file: !35, line: 828, column: 7)
!1969 = !{!907, !907, i64 0}
!1970 = !DILocation(line: 829, column: 5, scope: !1968)
!1971 = !DILocation(line: 830, column: 3, scope: !1908)
!1972 = distinct !DISubprogram(name: "quotearg_free", scope: !35, file: !35, line: 848, type: !956, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !1973)
!1973 = !{!1974, !1975}
!1974 = !DILocalVariable(name: "sv", scope: !1972, file: !35, line: 850, type: !105)
!1975 = !DILocalVariable(name: "i", scope: !1972, file: !35, line: 851, type: !23)
!1976 = !DILocation(line: 850, column: 24, scope: !1972)
!1977 = !DILocation(line: 0, scope: !1972)
!1978 = !DILocation(line: 852, column: 19, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !35, line: 852, column: 3)
!1980 = distinct !DILexicalBlock(scope: !1972, file: !35, line: 852, column: 3)
!1981 = !DILocation(line: 852, column: 17, scope: !1979)
!1982 = !DILocation(line: 852, column: 3, scope: !1980)
!1983 = !DILocation(line: 853, column: 17, scope: !1979)
!1984 = !{!1985, !584, i64 8}
!1985 = !{!"slotvec", !907, i64 0, !584, i64 8}
!1986 = !DILocation(line: 853, column: 5, scope: !1979)
!1987 = !DILocation(line: 852, column: 28, scope: !1979)
!1988 = distinct !{!1988, !1982, !1989, !689}
!1989 = !DILocation(line: 853, column: 20, scope: !1980)
!1990 = !DILocation(line: 854, column: 13, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1972, file: !35, line: 854, column: 7)
!1992 = !DILocation(line: 854, column: 17, scope: !1991)
!1993 = !DILocation(line: 854, column: 7, scope: !1972)
!1994 = !DILocation(line: 856, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !35, line: 855, column: 5)
!1996 = !DILocation(line: 857, column: 21, scope: !1995)
!1997 = !{!1985, !907, i64 0}
!1998 = !DILocation(line: 858, column: 20, scope: !1995)
!1999 = !DILocation(line: 859, column: 5, scope: !1995)
!2000 = !DILocation(line: 860, column: 10, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1972, file: !35, line: 860, column: 7)
!2002 = !DILocation(line: 860, column: 7, scope: !1972)
!2003 = !DILocation(line: 862, column: 13, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !35, line: 861, column: 5)
!2005 = !DILocation(line: 862, column: 7, scope: !2004)
!2006 = !DILocation(line: 863, column: 15, scope: !2004)
!2007 = !DILocation(line: 864, column: 5, scope: !2004)
!2008 = !DILocation(line: 865, column: 10, scope: !1972)
!2009 = !DILocation(line: 866, column: 1, scope: !1972)
!2010 = distinct !DISubprogram(name: "quotearg_n", scope: !35, file: !35, line: 931, type: !710, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2011)
!2011 = !{!2012, !2013}
!2012 = !DILocalVariable(name: "n", arg: 1, scope: !2010, file: !35, line: 931, type: !23)
!2013 = !DILocalVariable(name: "arg", arg: 2, scope: !2010, file: !35, line: 931, type: !6)
!2014 = !DILocation(line: 0, scope: !2010)
!2015 = !DILocation(line: 933, column: 10, scope: !2010)
!2016 = !DILocation(line: 933, column: 3, scope: !2010)
!2017 = distinct !DISubprogram(name: "quotearg_n_options", scope: !35, file: !35, line: 877, type: !2018, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!30, !23, !6, !74, !1066}
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2030, !2031, !2033, !2034, !2035}
!2021 = !DILocalVariable(name: "n", arg: 1, scope: !2017, file: !35, line: 877, type: !23)
!2022 = !DILocalVariable(name: "arg", arg: 2, scope: !2017, file: !35, line: 877, type: !6)
!2023 = !DILocalVariable(name: "argsize", arg: 3, scope: !2017, file: !35, line: 877, type: !74)
!2024 = !DILocalVariable(name: "options", arg: 4, scope: !2017, file: !35, line: 878, type: !1066)
!2025 = !DILocalVariable(name: "e", scope: !2017, file: !35, line: 880, type: !23)
!2026 = !DILocalVariable(name: "sv", scope: !2017, file: !35, line: 882, type: !105)
!2027 = !DILocalVariable(name: "preallocated", scope: !2028, file: !35, line: 889, type: !16)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !35, line: 888, column: 5)
!2029 = distinct !DILexicalBlock(scope: !2017, file: !35, line: 887, column: 7)
!2030 = !DILocalVariable(name: "nmax", scope: !2028, file: !35, line: 890, type: !23)
!2031 = !DILocalVariable(name: "size", scope: !2032, file: !35, line: 903, type: !74)
!2032 = distinct !DILexicalBlock(scope: !2017, file: !35, line: 902, column: 3)
!2033 = !DILocalVariable(name: "val", scope: !2032, file: !35, line: 904, type: !30)
!2034 = !DILocalVariable(name: "flags", scope: !2032, file: !35, line: 906, type: !23)
!2035 = !DILocalVariable(name: "qsize", scope: !2032, file: !35, line: 907, type: !74)
!2036 = !DILocation(line: 0, scope: !2017)
!2037 = !DILocation(line: 880, column: 11, scope: !2017)
!2038 = !DILocation(line: 882, column: 24, scope: !2017)
!2039 = !DILocation(line: 884, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2017, file: !35, line: 884, column: 7)
!2041 = !DILocation(line: 884, column: 7, scope: !2017)
!2042 = !DILocation(line: 885, column: 5, scope: !2040)
!2043 = !DILocation(line: 887, column: 7, scope: !2029)
!2044 = !DILocation(line: 887, column: 14, scope: !2029)
!2045 = !DILocation(line: 887, column: 7, scope: !2017)
!2046 = !DILocation(line: 889, column: 31, scope: !2028)
!2047 = !DILocation(line: 0, scope: !2028)
!2048 = !DILocation(line: 892, column: 16, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2028, file: !35, line: 892, column: 11)
!2050 = !DILocation(line: 892, column: 11, scope: !2028)
!2051 = !DILocation(line: 893, column: 9, scope: !2049)
!2052 = !DILocation(line: 895, column: 32, scope: !2028)
!2053 = !DILocation(line: 895, column: 61, scope: !2028)
!2054 = !DILocation(line: 895, column: 66, scope: !2028)
!2055 = !DILocation(line: 895, column: 22, scope: !2028)
!2056 = !DILocation(line: 895, column: 15, scope: !2028)
!2057 = !DILocation(line: 896, column: 11, scope: !2028)
!2058 = !DILocation(line: 897, column: 15, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2028, file: !35, line: 896, column: 11)
!2060 = !{i64 0, i64 8, !1969, i64 8, i64 8, !583}
!2061 = !DILocation(line: 897, column: 9, scope: !2059)
!2062 = !DILocation(line: 898, column: 20, scope: !2028)
!2063 = !DILocation(line: 898, column: 18, scope: !2028)
!2064 = !DILocation(line: 898, column: 15, scope: !2028)
!2065 = !DILocation(line: 898, column: 38, scope: !2028)
!2066 = !DILocation(line: 898, column: 31, scope: !2028)
!2067 = !DILocation(line: 898, column: 48, scope: !2028)
!2068 = !DILocation(line: 0, scope: !1460, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 898, column: 7, scope: !2028)
!2070 = !DILocation(line: 59, column: 10, scope: !1460, inlinedAt: !2069)
!2071 = !DILocation(line: 899, column: 14, scope: !2028)
!2072 = !DILocation(line: 900, column: 5, scope: !2028)
!2073 = !DILocation(line: 903, column: 19, scope: !2032)
!2074 = !DILocation(line: 903, column: 25, scope: !2032)
!2075 = !DILocation(line: 0, scope: !2032)
!2076 = !DILocation(line: 904, column: 23, scope: !2032)
!2077 = !DILocation(line: 906, column: 26, scope: !2032)
!2078 = !DILocation(line: 906, column: 32, scope: !2032)
!2079 = !DILocation(line: 908, column: 55, scope: !2032)
!2080 = !DILocation(line: 909, column: 46, scope: !2032)
!2081 = !DILocation(line: 910, column: 55, scope: !2032)
!2082 = !DILocation(line: 911, column: 55, scope: !2032)
!2083 = !DILocation(line: 907, column: 20, scope: !2032)
!2084 = !DILocation(line: 913, column: 14, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2032, file: !35, line: 913, column: 9)
!2086 = !DILocation(line: 913, column: 9, scope: !2032)
!2087 = !DILocation(line: 915, column: 35, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !35, line: 914, column: 7)
!2089 = !DILocation(line: 915, column: 20, scope: !2088)
!2090 = !DILocation(line: 916, column: 17, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !35, line: 916, column: 13)
!2092 = !DILocation(line: 916, column: 13, scope: !2088)
!2093 = !DILocation(line: 917, column: 11, scope: !2091)
!2094 = !DILocation(line: 0, scope: !1933, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 918, column: 27, scope: !2088)
!2096 = !DILocation(line: 218, column: 10, scope: !1933, inlinedAt: !2095)
!2097 = !DILocation(line: 918, column: 19, scope: !2088)
!2098 = !DILocation(line: 919, column: 69, scope: !2088)
!2099 = !DILocation(line: 921, column: 44, scope: !2088)
!2100 = !DILocation(line: 922, column: 44, scope: !2088)
!2101 = !DILocation(line: 919, column: 9, scope: !2088)
!2102 = !DILocation(line: 923, column: 7, scope: !2088)
!2103 = !DILocation(line: 925, column: 11, scope: !2032)
!2104 = !DILocation(line: 926, column: 5, scope: !2032)
!2105 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !35, file: !35, line: 937, type: !2106, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!30, !23, !6, !74}
!2108 = !{!2109, !2110, !2111}
!2109 = !DILocalVariable(name: "n", arg: 1, scope: !2105, file: !35, line: 937, type: !23)
!2110 = !DILocalVariable(name: "arg", arg: 2, scope: !2105, file: !35, line: 937, type: !6)
!2111 = !DILocalVariable(name: "argsize", arg: 3, scope: !2105, file: !35, line: 937, type: !74)
!2112 = !DILocation(line: 0, scope: !2105)
!2113 = !DILocation(line: 939, column: 10, scope: !2105)
!2114 = !DILocation(line: 939, column: 3, scope: !2105)
!2115 = distinct !DISubprogram(name: "quotearg", scope: !35, file: !35, line: 943, type: !946, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2116)
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "arg", arg: 1, scope: !2115, file: !35, line: 943, type: !6)
!2118 = !DILocation(line: 0, scope: !2115)
!2119 = !DILocation(line: 0, scope: !2010, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 945, column: 10, scope: !2115)
!2121 = !DILocation(line: 933, column: 10, scope: !2010, inlinedAt: !2120)
!2122 = !DILocation(line: 945, column: 3, scope: !2115)
!2123 = distinct !DISubprogram(name: "quotearg_mem", scope: !35, file: !35, line: 949, type: !2124, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!30, !6, !74}
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "arg", arg: 1, scope: !2123, file: !35, line: 949, type: !6)
!2128 = !DILocalVariable(name: "argsize", arg: 2, scope: !2123, file: !35, line: 949, type: !74)
!2129 = !DILocation(line: 0, scope: !2123)
!2130 = !DILocation(line: 0, scope: !2105, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 951, column: 10, scope: !2123)
!2132 = !DILocation(line: 939, column: 10, scope: !2105, inlinedAt: !2131)
!2133 = !DILocation(line: 951, column: 3, scope: !2123)
!2134 = distinct !DISubprogram(name: "quotearg_n_style", scope: !35, file: !35, line: 955, type: !2135, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!30, !23, !37, !6}
!2137 = !{!2138, !2139, !2140, !2141}
!2138 = !DILocalVariable(name: "n", arg: 1, scope: !2134, file: !35, line: 955, type: !23)
!2139 = !DILocalVariable(name: "s", arg: 2, scope: !2134, file: !35, line: 955, type: !37)
!2140 = !DILocalVariable(name: "arg", arg: 3, scope: !2134, file: !35, line: 955, type: !6)
!2141 = !DILocalVariable(name: "o", scope: !2134, file: !35, line: 957, type: !1067)
!2142 = !DILocation(line: 0, scope: !2134)
!2143 = !DILocation(line: 957, column: 3, scope: !2134)
!2144 = !DILocation(line: 957, column: 32, scope: !2134)
!2145 = !{!2146}
!2146 = distinct !{!2146, !2147, !"quoting_options_from_style: argument 0"}
!2147 = distinct !{!2147, !"quoting_options_from_style"}
!2148 = !DILocation(line: 957, column: 36, scope: !2134)
!2149 = !DILocalVariable(name: "style", arg: 1, scope: !2150, file: !35, line: 193, type: !37)
!2150 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !35, file: !35, line: 193, type: !2151, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!86, !37}
!2153 = !{!2149, !2154}
!2154 = !DILocalVariable(name: "o", scope: !2150, file: !35, line: 195, type: !86)
!2155 = !DILocation(line: 0, scope: !2150, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 957, column: 36, scope: !2134)
!2157 = !DILocation(line: 195, column: 26, scope: !2150, inlinedAt: !2156)
!2158 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2156)
!2159 = distinct !DILexicalBlock(scope: !2150, file: !35, line: 196, column: 7)
!2160 = !DILocation(line: 196, column: 7, scope: !2150, inlinedAt: !2156)
!2161 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2156)
!2162 = !DILocation(line: 198, column: 5, scope: !2150, inlinedAt: !2156)
!2163 = !DILocation(line: 198, column: 11, scope: !2150, inlinedAt: !2156)
!2164 = !DILocation(line: 958, column: 10, scope: !2134)
!2165 = !DILocation(line: 959, column: 1, scope: !2134)
!2166 = !DILocation(line: 958, column: 3, scope: !2134)
!2167 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !35, file: !35, line: 962, type: !2168, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!30, !23, !37, !6, !74}
!2170 = !{!2171, !2172, !2173, !2174, !2175}
!2171 = !DILocalVariable(name: "n", arg: 1, scope: !2167, file: !35, line: 962, type: !23)
!2172 = !DILocalVariable(name: "s", arg: 2, scope: !2167, file: !35, line: 962, type: !37)
!2173 = !DILocalVariable(name: "arg", arg: 3, scope: !2167, file: !35, line: 963, type: !6)
!2174 = !DILocalVariable(name: "argsize", arg: 4, scope: !2167, file: !35, line: 963, type: !74)
!2175 = !DILocalVariable(name: "o", scope: !2167, file: !35, line: 965, type: !1067)
!2176 = !DILocation(line: 0, scope: !2167)
!2177 = !DILocation(line: 965, column: 3, scope: !2167)
!2178 = !DILocation(line: 965, column: 32, scope: !2167)
!2179 = !{!2180}
!2180 = distinct !{!2180, !2181, !"quoting_options_from_style: argument 0"}
!2181 = distinct !{!2181, !"quoting_options_from_style"}
!2182 = !DILocation(line: 965, column: 36, scope: !2167)
!2183 = !DILocation(line: 0, scope: !2150, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 965, column: 36, scope: !2167)
!2185 = !DILocation(line: 195, column: 26, scope: !2150, inlinedAt: !2184)
!2186 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2184)
!2187 = !DILocation(line: 196, column: 7, scope: !2150, inlinedAt: !2184)
!2188 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2184)
!2189 = !DILocation(line: 198, column: 5, scope: !2150, inlinedAt: !2184)
!2190 = !DILocation(line: 198, column: 11, scope: !2150, inlinedAt: !2184)
!2191 = !DILocation(line: 966, column: 10, scope: !2167)
!2192 = !DILocation(line: 967, column: 1, scope: !2167)
!2193 = !DILocation(line: 966, column: 3, scope: !2167)
!2194 = distinct !DISubprogram(name: "quotearg_style", scope: !35, file: !35, line: 970, type: !2195, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2197)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!30, !37, !6}
!2197 = !{!2198, !2199}
!2198 = !DILocalVariable(name: "s", arg: 1, scope: !2194, file: !35, line: 970, type: !37)
!2199 = !DILocalVariable(name: "arg", arg: 2, scope: !2194, file: !35, line: 970, type: !6)
!2200 = !DILocation(line: 0, scope: !2194)
!2201 = !DILocation(line: 0, scope: !2134, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 972, column: 10, scope: !2194)
!2203 = !DILocation(line: 957, column: 3, scope: !2134, inlinedAt: !2202)
!2204 = !DILocation(line: 957, column: 32, scope: !2134, inlinedAt: !2202)
!2205 = !{!2206}
!2206 = distinct !{!2206, !2207, !"quoting_options_from_style: argument 0"}
!2207 = distinct !{!2207, !"quoting_options_from_style"}
!2208 = !DILocation(line: 957, column: 36, scope: !2134, inlinedAt: !2202)
!2209 = !DILocation(line: 0, scope: !2150, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 957, column: 36, scope: !2134, inlinedAt: !2202)
!2211 = !DILocation(line: 195, column: 26, scope: !2150, inlinedAt: !2210)
!2212 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2210)
!2213 = !DILocation(line: 196, column: 7, scope: !2150, inlinedAt: !2210)
!2214 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2210)
!2215 = !DILocation(line: 198, column: 5, scope: !2150, inlinedAt: !2210)
!2216 = !DILocation(line: 198, column: 11, scope: !2150, inlinedAt: !2210)
!2217 = !DILocation(line: 958, column: 10, scope: !2134, inlinedAt: !2202)
!2218 = !DILocation(line: 959, column: 1, scope: !2134, inlinedAt: !2202)
!2219 = !DILocation(line: 972, column: 3, scope: !2194)
!2220 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !35, file: !35, line: 976, type: !2221, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!30, !37, !6, !74}
!2223 = !{!2224, !2225, !2226}
!2224 = !DILocalVariable(name: "s", arg: 1, scope: !2220, file: !35, line: 976, type: !37)
!2225 = !DILocalVariable(name: "arg", arg: 2, scope: !2220, file: !35, line: 976, type: !6)
!2226 = !DILocalVariable(name: "argsize", arg: 3, scope: !2220, file: !35, line: 976, type: !74)
!2227 = !DILocation(line: 0, scope: !2220)
!2228 = !DILocation(line: 0, scope: !2167, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 978, column: 10, scope: !2220)
!2230 = !DILocation(line: 965, column: 3, scope: !2167, inlinedAt: !2229)
!2231 = !DILocation(line: 965, column: 32, scope: !2167, inlinedAt: !2229)
!2232 = !{!2233}
!2233 = distinct !{!2233, !2234, !"quoting_options_from_style: argument 0"}
!2234 = distinct !{!2234, !"quoting_options_from_style"}
!2235 = !DILocation(line: 965, column: 36, scope: !2167, inlinedAt: !2229)
!2236 = !DILocation(line: 0, scope: !2150, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 965, column: 36, scope: !2167, inlinedAt: !2229)
!2238 = !DILocation(line: 195, column: 26, scope: !2150, inlinedAt: !2237)
!2239 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2237)
!2240 = !DILocation(line: 196, column: 7, scope: !2150, inlinedAt: !2237)
!2241 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2237)
!2242 = !DILocation(line: 198, column: 5, scope: !2150, inlinedAt: !2237)
!2243 = !DILocation(line: 198, column: 11, scope: !2150, inlinedAt: !2237)
!2244 = !DILocation(line: 966, column: 10, scope: !2167, inlinedAt: !2229)
!2245 = !DILocation(line: 967, column: 1, scope: !2167, inlinedAt: !2229)
!2246 = !DILocation(line: 978, column: 3, scope: !2220)
!2247 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !35, file: !35, line: 982, type: !2248, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!30, !6, !74, !8}
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DILocalVariable(name: "arg", arg: 1, scope: !2247, file: !35, line: 982, type: !6)
!2252 = !DILocalVariable(name: "argsize", arg: 2, scope: !2247, file: !35, line: 982, type: !74)
!2253 = !DILocalVariable(name: "ch", arg: 3, scope: !2247, file: !35, line: 982, type: !8)
!2254 = !DILocalVariable(name: "options", scope: !2247, file: !35, line: 984, type: !86)
!2255 = !DILocation(line: 0, scope: !2247)
!2256 = !DILocation(line: 984, column: 3, scope: !2247)
!2257 = !DILocation(line: 984, column: 26, scope: !2247)
!2258 = !DILocation(line: 985, column: 13, scope: !2247)
!2259 = !{i64 0, i64 4, !772, i64 4, i64 4, !987, i64 8, i64 32, !772, i64 40, i64 8, !583, i64 48, i64 8, !583}
!2260 = !DILocation(line: 0, scope: !1087, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 986, column: 3, scope: !2247)
!2262 = !DILocation(line: 156, column: 62, scope: !1087, inlinedAt: !2261)
!2263 = !DILocation(line: 156, column: 57, scope: !1087, inlinedAt: !2261)
!2264 = !DILocation(line: 157, column: 15, scope: !1087, inlinedAt: !2261)
!2265 = !DILocation(line: 158, column: 12, scope: !1087, inlinedAt: !2261)
!2266 = !DILocation(line: 158, column: 15, scope: !1087, inlinedAt: !2261)
!2267 = !DILocation(line: 158, column: 25, scope: !1087, inlinedAt: !2261)
!2268 = !DILocation(line: 159, column: 18, scope: !1087, inlinedAt: !2261)
!2269 = !DILocation(line: 159, column: 23, scope: !1087, inlinedAt: !2261)
!2270 = !DILocation(line: 159, column: 6, scope: !1087, inlinedAt: !2261)
!2271 = !DILocation(line: 987, column: 10, scope: !2247)
!2272 = !DILocation(line: 988, column: 1, scope: !2247)
!2273 = !DILocation(line: 987, column: 3, scope: !2247)
!2274 = distinct !DISubprogram(name: "quotearg_char", scope: !35, file: !35, line: 991, type: !2275, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!30, !6, !8}
!2277 = !{!2278, !2279}
!2278 = !DILocalVariable(name: "arg", arg: 1, scope: !2274, file: !35, line: 991, type: !6)
!2279 = !DILocalVariable(name: "ch", arg: 2, scope: !2274, file: !35, line: 991, type: !8)
!2280 = !DILocation(line: 0, scope: !2274)
!2281 = !DILocation(line: 0, scope: !2247, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 993, column: 10, scope: !2274)
!2283 = !DILocation(line: 984, column: 3, scope: !2247, inlinedAt: !2282)
!2284 = !DILocation(line: 984, column: 26, scope: !2247, inlinedAt: !2282)
!2285 = !DILocation(line: 985, column: 13, scope: !2247, inlinedAt: !2282)
!2286 = !DILocation(line: 0, scope: !1087, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 986, column: 3, scope: !2247, inlinedAt: !2282)
!2288 = !DILocation(line: 156, column: 62, scope: !1087, inlinedAt: !2287)
!2289 = !DILocation(line: 156, column: 57, scope: !1087, inlinedAt: !2287)
!2290 = !DILocation(line: 157, column: 15, scope: !1087, inlinedAt: !2287)
!2291 = !DILocation(line: 158, column: 12, scope: !1087, inlinedAt: !2287)
!2292 = !DILocation(line: 158, column: 15, scope: !1087, inlinedAt: !2287)
!2293 = !DILocation(line: 158, column: 25, scope: !1087, inlinedAt: !2287)
!2294 = !DILocation(line: 159, column: 18, scope: !1087, inlinedAt: !2287)
!2295 = !DILocation(line: 159, column: 23, scope: !1087, inlinedAt: !2287)
!2296 = !DILocation(line: 159, column: 6, scope: !1087, inlinedAt: !2287)
!2297 = !DILocation(line: 987, column: 10, scope: !2247, inlinedAt: !2282)
!2298 = !DILocation(line: 988, column: 1, scope: !2247, inlinedAt: !2282)
!2299 = !DILocation(line: 993, column: 3, scope: !2274)
!2300 = distinct !DISubprogram(name: "quotearg_colon", scope: !35, file: !35, line: 997, type: !946, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2301)
!2301 = !{!2302}
!2302 = !DILocalVariable(name: "arg", arg: 1, scope: !2300, file: !35, line: 997, type: !6)
!2303 = !DILocation(line: 0, scope: !2300)
!2304 = !DILocation(line: 0, scope: !2274, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 999, column: 10, scope: !2300)
!2306 = !DILocation(line: 0, scope: !2247, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 993, column: 10, scope: !2274, inlinedAt: !2305)
!2308 = !DILocation(line: 984, column: 3, scope: !2247, inlinedAt: !2307)
!2309 = !DILocation(line: 984, column: 26, scope: !2247, inlinedAt: !2307)
!2310 = !DILocation(line: 985, column: 13, scope: !2247, inlinedAt: !2307)
!2311 = !DILocation(line: 0, scope: !1087, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 986, column: 3, scope: !2247, inlinedAt: !2307)
!2313 = !DILocation(line: 156, column: 57, scope: !1087, inlinedAt: !2312)
!2314 = !DILocation(line: 158, column: 12, scope: !1087, inlinedAt: !2312)
!2315 = !DILocation(line: 159, column: 6, scope: !1087, inlinedAt: !2312)
!2316 = !DILocation(line: 987, column: 10, scope: !2247, inlinedAt: !2307)
!2317 = !DILocation(line: 988, column: 1, scope: !2247, inlinedAt: !2307)
!2318 = !DILocation(line: 999, column: 3, scope: !2300)
!2319 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !35, file: !35, line: 1003, type: !2124, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2320)
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "arg", arg: 1, scope: !2319, file: !35, line: 1003, type: !6)
!2322 = !DILocalVariable(name: "argsize", arg: 2, scope: !2319, file: !35, line: 1003, type: !74)
!2323 = !DILocation(line: 0, scope: !2319)
!2324 = !DILocation(line: 0, scope: !2247, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 1005, column: 10, scope: !2319)
!2326 = !DILocation(line: 984, column: 3, scope: !2247, inlinedAt: !2325)
!2327 = !DILocation(line: 984, column: 26, scope: !2247, inlinedAt: !2325)
!2328 = !DILocation(line: 985, column: 13, scope: !2247, inlinedAt: !2325)
!2329 = !DILocation(line: 0, scope: !1087, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 986, column: 3, scope: !2247, inlinedAt: !2325)
!2331 = !DILocation(line: 156, column: 57, scope: !1087, inlinedAt: !2330)
!2332 = !DILocation(line: 158, column: 12, scope: !1087, inlinedAt: !2330)
!2333 = !DILocation(line: 159, column: 6, scope: !1087, inlinedAt: !2330)
!2334 = !DILocation(line: 987, column: 10, scope: !2247, inlinedAt: !2325)
!2335 = !DILocation(line: 988, column: 1, scope: !2247, inlinedAt: !2325)
!2336 = !DILocation(line: 1005, column: 3, scope: !2319)
!2337 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !35, file: !35, line: 1009, type: !2135, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2338)
!2338 = !{!2339, !2340, !2341, !2342}
!2339 = !DILocalVariable(name: "n", arg: 1, scope: !2337, file: !35, line: 1009, type: !23)
!2340 = !DILocalVariable(name: "s", arg: 2, scope: !2337, file: !35, line: 1009, type: !37)
!2341 = !DILocalVariable(name: "arg", arg: 3, scope: !2337, file: !35, line: 1009, type: !6)
!2342 = !DILocalVariable(name: "options", scope: !2337, file: !35, line: 1011, type: !86)
!2343 = !DILocation(line: 195, column: 26, scope: !2150, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 1012, column: 13, scope: !2337)
!2345 = !DILocation(line: 0, scope: !2337)
!2346 = !DILocation(line: 1011, column: 3, scope: !2337)
!2347 = !DILocation(line: 1011, column: 26, scope: !2337)
!2348 = !DILocation(line: 1012, column: 13, scope: !2337)
!2349 = !{!2350}
!2350 = distinct !{!2350, !2351, !"quoting_options_from_style: argument 0"}
!2351 = distinct !{!2351, !"quoting_options_from_style"}
!2352 = !DILocation(line: 0, scope: !2150, inlinedAt: !2344)
!2353 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2344)
!2354 = !DILocation(line: 196, column: 7, scope: !2150, inlinedAt: !2344)
!2355 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2344)
!2356 = !{i64 0, i64 4, !987, i64 4, i64 32, !772, i64 36, i64 8, !583, i64 44, i64 8, !583}
!2357 = !DILocation(line: 0, scope: !1087, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 1013, column: 3, scope: !2337)
!2359 = !DILocation(line: 156, column: 57, scope: !1087, inlinedAt: !2358)
!2360 = !DILocation(line: 158, column: 12, scope: !1087, inlinedAt: !2358)
!2361 = !DILocation(line: 159, column: 6, scope: !1087, inlinedAt: !2358)
!2362 = !DILocation(line: 1014, column: 10, scope: !2337)
!2363 = !DILocation(line: 1015, column: 1, scope: !2337)
!2364 = !DILocation(line: 1014, column: 3, scope: !2337)
!2365 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !35, file: !35, line: 1018, type: !2366, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!30, !23, !6, !6, !6}
!2368 = !{!2369, !2370, !2371, !2372}
!2369 = !DILocalVariable(name: "n", arg: 1, scope: !2365, file: !35, line: 1018, type: !23)
!2370 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2365, file: !35, line: 1018, type: !6)
!2371 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2365, file: !35, line: 1019, type: !6)
!2372 = !DILocalVariable(name: "arg", arg: 4, scope: !2365, file: !35, line: 1019, type: !6)
!2373 = !DILocation(line: 0, scope: !2365)
!2374 = !DILocalVariable(name: "n", arg: 1, scope: !2375, file: !35, line: 1026, type: !23)
!2375 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !35, file: !35, line: 1026, type: !2376, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!30, !23, !6, !6, !6, !74}
!2378 = !{!2374, !2379, !2380, !2381, !2382, !2383}
!2379 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2375, file: !35, line: 1026, type: !6)
!2380 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2375, file: !35, line: 1027, type: !6)
!2381 = !DILocalVariable(name: "arg", arg: 4, scope: !2375, file: !35, line: 1028, type: !6)
!2382 = !DILocalVariable(name: "argsize", arg: 5, scope: !2375, file: !35, line: 1028, type: !74)
!2383 = !DILocalVariable(name: "o", scope: !2375, file: !35, line: 1030, type: !86)
!2384 = !DILocation(line: 0, scope: !2375, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 1021, column: 10, scope: !2365)
!2386 = !DILocation(line: 1030, column: 3, scope: !2375, inlinedAt: !2385)
!2387 = !DILocation(line: 1030, column: 26, scope: !2375, inlinedAt: !2385)
!2388 = !DILocation(line: 1030, column: 30, scope: !2375, inlinedAt: !2385)
!2389 = !DILocation(line: 0, scope: !1127, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 1031, column: 3, scope: !2375, inlinedAt: !2385)
!2391 = !DILocation(line: 184, column: 6, scope: !1127, inlinedAt: !2390)
!2392 = !DILocation(line: 184, column: 12, scope: !1127, inlinedAt: !2390)
!2393 = !DILocation(line: 185, column: 8, scope: !1141, inlinedAt: !2390)
!2394 = !DILocation(line: 185, column: 19, scope: !1141, inlinedAt: !2390)
!2395 = !DILocation(line: 186, column: 5, scope: !1141, inlinedAt: !2390)
!2396 = !DILocation(line: 187, column: 6, scope: !1127, inlinedAt: !2390)
!2397 = !DILocation(line: 187, column: 17, scope: !1127, inlinedAt: !2390)
!2398 = !DILocation(line: 188, column: 6, scope: !1127, inlinedAt: !2390)
!2399 = !DILocation(line: 188, column: 18, scope: !1127, inlinedAt: !2390)
!2400 = !DILocation(line: 1032, column: 10, scope: !2375, inlinedAt: !2385)
!2401 = !DILocation(line: 1033, column: 1, scope: !2375, inlinedAt: !2385)
!2402 = !DILocation(line: 1021, column: 3, scope: !2365)
!2403 = !DILocation(line: 0, scope: !2375)
!2404 = !DILocation(line: 1030, column: 3, scope: !2375)
!2405 = !DILocation(line: 1030, column: 26, scope: !2375)
!2406 = !DILocation(line: 1030, column: 30, scope: !2375)
!2407 = !DILocation(line: 0, scope: !1127, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 1031, column: 3, scope: !2375)
!2409 = !DILocation(line: 184, column: 6, scope: !1127, inlinedAt: !2408)
!2410 = !DILocation(line: 184, column: 12, scope: !1127, inlinedAt: !2408)
!2411 = !DILocation(line: 185, column: 8, scope: !1141, inlinedAt: !2408)
!2412 = !DILocation(line: 185, column: 19, scope: !1141, inlinedAt: !2408)
!2413 = !DILocation(line: 186, column: 5, scope: !1141, inlinedAt: !2408)
!2414 = !DILocation(line: 187, column: 6, scope: !1127, inlinedAt: !2408)
!2415 = !DILocation(line: 187, column: 17, scope: !1127, inlinedAt: !2408)
!2416 = !DILocation(line: 188, column: 6, scope: !1127, inlinedAt: !2408)
!2417 = !DILocation(line: 188, column: 18, scope: !1127, inlinedAt: !2408)
!2418 = !DILocation(line: 1032, column: 10, scope: !2375)
!2419 = !DILocation(line: 1033, column: 1, scope: !2375)
!2420 = !DILocation(line: 1032, column: 3, scope: !2375)
!2421 = distinct !DISubprogram(name: "quotearg_custom", scope: !35, file: !35, line: 1036, type: !2422, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!30, !6, !6, !6}
!2424 = !{!2425, !2426, !2427}
!2425 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2421, file: !35, line: 1036, type: !6)
!2426 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2421, file: !35, line: 1036, type: !6)
!2427 = !DILocalVariable(name: "arg", arg: 3, scope: !2421, file: !35, line: 1037, type: !6)
!2428 = !DILocation(line: 0, scope: !2421)
!2429 = !DILocation(line: 0, scope: !2365, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 1039, column: 10, scope: !2421)
!2431 = !DILocation(line: 0, scope: !2375, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1021, column: 10, scope: !2365, inlinedAt: !2430)
!2433 = !DILocation(line: 1030, column: 3, scope: !2375, inlinedAt: !2432)
!2434 = !DILocation(line: 1030, column: 26, scope: !2375, inlinedAt: !2432)
!2435 = !DILocation(line: 1030, column: 30, scope: !2375, inlinedAt: !2432)
!2436 = !DILocation(line: 0, scope: !1127, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 1031, column: 3, scope: !2375, inlinedAt: !2432)
!2438 = !DILocation(line: 184, column: 6, scope: !1127, inlinedAt: !2437)
!2439 = !DILocation(line: 184, column: 12, scope: !1127, inlinedAt: !2437)
!2440 = !DILocation(line: 185, column: 8, scope: !1141, inlinedAt: !2437)
!2441 = !DILocation(line: 185, column: 19, scope: !1141, inlinedAt: !2437)
!2442 = !DILocation(line: 186, column: 5, scope: !1141, inlinedAt: !2437)
!2443 = !DILocation(line: 187, column: 6, scope: !1127, inlinedAt: !2437)
!2444 = !DILocation(line: 187, column: 17, scope: !1127, inlinedAt: !2437)
!2445 = !DILocation(line: 188, column: 6, scope: !1127, inlinedAt: !2437)
!2446 = !DILocation(line: 188, column: 18, scope: !1127, inlinedAt: !2437)
!2447 = !DILocation(line: 1032, column: 10, scope: !2375, inlinedAt: !2432)
!2448 = !DILocation(line: 1033, column: 1, scope: !2375, inlinedAt: !2432)
!2449 = !DILocation(line: 1039, column: 3, scope: !2421)
!2450 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !35, file: !35, line: 1043, type: !2451, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!30, !6, !6, !6, !74}
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2450, file: !35, line: 1043, type: !6)
!2455 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2450, file: !35, line: 1043, type: !6)
!2456 = !DILocalVariable(name: "arg", arg: 3, scope: !2450, file: !35, line: 1044, type: !6)
!2457 = !DILocalVariable(name: "argsize", arg: 4, scope: !2450, file: !35, line: 1044, type: !74)
!2458 = !DILocation(line: 0, scope: !2450)
!2459 = !DILocation(line: 0, scope: !2375, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 1046, column: 10, scope: !2450)
!2461 = !DILocation(line: 1030, column: 3, scope: !2375, inlinedAt: !2460)
!2462 = !DILocation(line: 1030, column: 26, scope: !2375, inlinedAt: !2460)
!2463 = !DILocation(line: 1030, column: 30, scope: !2375, inlinedAt: !2460)
!2464 = !DILocation(line: 0, scope: !1127, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 1031, column: 3, scope: !2375, inlinedAt: !2460)
!2466 = !DILocation(line: 184, column: 6, scope: !1127, inlinedAt: !2465)
!2467 = !DILocation(line: 184, column: 12, scope: !1127, inlinedAt: !2465)
!2468 = !DILocation(line: 185, column: 8, scope: !1141, inlinedAt: !2465)
!2469 = !DILocation(line: 185, column: 19, scope: !1141, inlinedAt: !2465)
!2470 = !DILocation(line: 186, column: 5, scope: !1141, inlinedAt: !2465)
!2471 = !DILocation(line: 187, column: 6, scope: !1127, inlinedAt: !2465)
!2472 = !DILocation(line: 187, column: 17, scope: !1127, inlinedAt: !2465)
!2473 = !DILocation(line: 188, column: 6, scope: !1127, inlinedAt: !2465)
!2474 = !DILocation(line: 188, column: 18, scope: !1127, inlinedAt: !2465)
!2475 = !DILocation(line: 1032, column: 10, scope: !2375, inlinedAt: !2460)
!2476 = !DILocation(line: 1033, column: 1, scope: !2375, inlinedAt: !2460)
!2477 = !DILocation(line: 1046, column: 3, scope: !2450)
!2478 = distinct !DISubprogram(name: "quote_n_mem", scope: !35, file: !35, line: 1061, type: !2479, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!6, !23, !6, !74}
!2481 = !{!2482, !2483, !2484}
!2482 = !DILocalVariable(name: "n", arg: 1, scope: !2478, file: !35, line: 1061, type: !23)
!2483 = !DILocalVariable(name: "arg", arg: 2, scope: !2478, file: !35, line: 1061, type: !6)
!2484 = !DILocalVariable(name: "argsize", arg: 3, scope: !2478, file: !35, line: 1061, type: !74)
!2485 = !DILocation(line: 0, scope: !2478)
!2486 = !DILocation(line: 1063, column: 10, scope: !2478)
!2487 = !DILocation(line: 1063, column: 3, scope: !2478)
!2488 = distinct !DISubprogram(name: "quote_mem", scope: !35, file: !35, line: 1067, type: !2489, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!6, !6, !74}
!2491 = !{!2492, !2493}
!2492 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !35, line: 1067, type: !6)
!2493 = !DILocalVariable(name: "argsize", arg: 2, scope: !2488, file: !35, line: 1067, type: !74)
!2494 = !DILocation(line: 0, scope: !2488)
!2495 = !DILocation(line: 0, scope: !2478, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 1069, column: 10, scope: !2488)
!2497 = !DILocation(line: 1063, column: 10, scope: !2478, inlinedAt: !2496)
!2498 = !DILocation(line: 1069, column: 3, scope: !2488)
!2499 = distinct !DISubprogram(name: "quote_n", scope: !35, file: !35, line: 1073, type: !2500, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!6, !23, !6}
!2502 = !{!2503, !2504}
!2503 = !DILocalVariable(name: "n", arg: 1, scope: !2499, file: !35, line: 1073, type: !23)
!2504 = !DILocalVariable(name: "arg", arg: 2, scope: !2499, file: !35, line: 1073, type: !6)
!2505 = !DILocation(line: 0, scope: !2499)
!2506 = !DILocation(line: 0, scope: !2478, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 1075, column: 10, scope: !2499)
!2508 = !DILocation(line: 1063, column: 10, scope: !2478, inlinedAt: !2507)
!2509 = !DILocation(line: 1075, column: 3, scope: !2499)
!2510 = distinct !DISubprogram(name: "quote", scope: !35, file: !35, line: 1079, type: !2511, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !2513)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!6, !6}
!2513 = !{!2514}
!2514 = !DILocalVariable(name: "arg", arg: 1, scope: !2510, file: !35, line: 1079, type: !6)
!2515 = !DILocation(line: 0, scope: !2510)
!2516 = !DILocation(line: 0, scope: !2499, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 1081, column: 10, scope: !2510)
!2518 = !DILocation(line: 0, scope: !2478, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 1075, column: 10, scope: !2499, inlinedAt: !2517)
!2520 = !DILocation(line: 1063, column: 10, scope: !2478, inlinedAt: !2519)
!2521 = !DILocation(line: 1081, column: 3, scope: !2510)
!2522 = distinct !DISubprogram(name: "version_etc_arn", scope: !135, file: !135, line: 61, type: !2523, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2561)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2525, !6, !6, !6, !2560, !74}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2527, line: 7, baseType: !2528)
!2527 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !607, line: 49, size: 1728, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2528, file: !607, line: 51, baseType: !23, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2528, file: !607, line: 54, baseType: !30, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2528, file: !607, line: 55, baseType: !30, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2528, file: !607, line: 56, baseType: !30, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2528, file: !607, line: 57, baseType: !30, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2528, file: !607, line: 58, baseType: !30, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2528, file: !607, line: 59, baseType: !30, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2528, file: !607, line: 60, baseType: !30, size: 64, offset: 448)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2528, file: !607, line: 61, baseType: !30, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2528, file: !607, line: 64, baseType: !30, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2528, file: !607, line: 65, baseType: !30, size: 64, offset: 640)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2528, file: !607, line: 66, baseType: !30, size: 64, offset: 704)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2528, file: !607, line: 68, baseType: !622, size: 64, offset: 768)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2528, file: !607, line: 70, baseType: !2544, size: 64, offset: 832)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2528, file: !607, line: 72, baseType: !23, size: 32, offset: 896)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2528, file: !607, line: 73, baseType: !23, size: 32, offset: 928)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2528, file: !607, line: 74, baseType: !628, size: 64, offset: 960)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2528, file: !607, line: 77, baseType: !73, size: 16, offset: 1024)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2528, file: !607, line: 78, baseType: !633, size: 8, offset: 1040)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2528, file: !607, line: 79, baseType: !635, size: 8, offset: 1048)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2528, file: !607, line: 81, baseType: !639, size: 64, offset: 1088)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2528, file: !607, line: 89, baseType: !642, size: 64, offset: 1152)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2528, file: !607, line: 91, baseType: !644, size: 64, offset: 1216)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2528, file: !607, line: 92, baseType: !647, size: 64, offset: 1280)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2528, file: !607, line: 93, baseType: !2544, size: 64, offset: 1344)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2528, file: !607, line: 94, baseType: !29, size: 64, offset: 1408)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2528, file: !607, line: 95, baseType: !74, size: 64, offset: 1472)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2528, file: !607, line: 96, baseType: !23, size: 32, offset: 1536)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2528, file: !607, line: 98, baseType: !654, size: 160, offset: 1568)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567}
!2562 = !DILocalVariable(name: "stream", arg: 1, scope: !2522, file: !135, line: 61, type: !2525)
!2563 = !DILocalVariable(name: "command_name", arg: 2, scope: !2522, file: !135, line: 62, type: !6)
!2564 = !DILocalVariable(name: "package", arg: 3, scope: !2522, file: !135, line: 62, type: !6)
!2565 = !DILocalVariable(name: "version", arg: 4, scope: !2522, file: !135, line: 63, type: !6)
!2566 = !DILocalVariable(name: "authors", arg: 5, scope: !2522, file: !135, line: 64, type: !2560)
!2567 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2522, file: !135, line: 64, type: !74)
!2568 = !DILocation(line: 0, scope: !2522)
!2569 = !DILocation(line: 66, column: 7, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2522, file: !135, line: 66, column: 7)
!2571 = !DILocation(line: 66, column: 7, scope: !2522)
!2572 = !DILocation(line: 67, column: 5, scope: !2570)
!2573 = !DILocation(line: 69, column: 5, scope: !2570)
!2574 = !DILocation(line: 83, column: 3, scope: !2522)
!2575 = !DILocation(line: 85, column: 3, scope: !2522)
!2576 = !DILocation(line: 88, column: 3, scope: !2522)
!2577 = !DILocation(line: 95, column: 3, scope: !2522)
!2578 = !DILocation(line: 97, column: 3, scope: !2522)
!2579 = !DILocation(line: 105, column: 7, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2522, file: !135, line: 98, column: 5)
!2581 = !DILocation(line: 106, column: 7, scope: !2580)
!2582 = !DILocation(line: 109, column: 7, scope: !2580)
!2583 = !DILocation(line: 110, column: 7, scope: !2580)
!2584 = !DILocation(line: 113, column: 7, scope: !2580)
!2585 = !DILocation(line: 115, column: 7, scope: !2580)
!2586 = !DILocation(line: 120, column: 7, scope: !2580)
!2587 = !DILocation(line: 122, column: 7, scope: !2580)
!2588 = !DILocation(line: 127, column: 7, scope: !2580)
!2589 = !DILocation(line: 129, column: 7, scope: !2580)
!2590 = !DILocation(line: 134, column: 7, scope: !2580)
!2591 = !DILocation(line: 137, column: 7, scope: !2580)
!2592 = !DILocation(line: 142, column: 7, scope: !2580)
!2593 = !DILocation(line: 145, column: 7, scope: !2580)
!2594 = !DILocation(line: 150, column: 7, scope: !2580)
!2595 = !DILocation(line: 154, column: 7, scope: !2580)
!2596 = !DILocation(line: 159, column: 7, scope: !2580)
!2597 = !DILocation(line: 163, column: 7, scope: !2580)
!2598 = !DILocation(line: 170, column: 7, scope: !2580)
!2599 = !DILocation(line: 174, column: 7, scope: !2580)
!2600 = !DILocation(line: 176, column: 1, scope: !2522)
!2601 = distinct !DISubprogram(name: "version_etc_ar", scope: !135, file: !135, line: 183, type: !2602, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !2525, !6, !6, !6, !2560}
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610}
!2605 = !DILocalVariable(name: "stream", arg: 1, scope: !2601, file: !135, line: 183, type: !2525)
!2606 = !DILocalVariable(name: "command_name", arg: 2, scope: !2601, file: !135, line: 184, type: !6)
!2607 = !DILocalVariable(name: "package", arg: 3, scope: !2601, file: !135, line: 184, type: !6)
!2608 = !DILocalVariable(name: "version", arg: 4, scope: !2601, file: !135, line: 185, type: !6)
!2609 = !DILocalVariable(name: "authors", arg: 5, scope: !2601, file: !135, line: 185, type: !2560)
!2610 = !DILocalVariable(name: "n_authors", scope: !2601, file: !135, line: 187, type: !74)
!2611 = !DILocation(line: 0, scope: !2601)
!2612 = !DILocation(line: 189, column: 8, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2601, file: !135, line: 189, column: 3)
!2614 = !DILocation(line: 0, scope: !2613)
!2615 = !DILocation(line: 189, column: 23, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2613, file: !135, line: 189, column: 3)
!2617 = !DILocation(line: 189, column: 3, scope: !2613)
!2618 = !DILocation(line: 189, column: 52, scope: !2616)
!2619 = distinct !{!2619, !2617, !2620, !689}
!2620 = !DILocation(line: 190, column: 5, scope: !2613)
!2621 = !DILocation(line: 191, column: 3, scope: !2601)
!2622 = !DILocation(line: 192, column: 1, scope: !2601)
!2623 = distinct !DISubprogram(name: "version_etc_va", scope: !135, file: !135, line: 199, type: !2624, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2633)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{null, !2525, !6, !6, !6, !2626}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2628)
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2627, file: !135, line: 192, baseType: !39, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2627, file: !135, line: 192, baseType: !39, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2627, file: !135, line: 192, baseType: !29, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2627, file: !135, line: 192, baseType: !29, size: 64, offset: 128)
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640}
!2634 = !DILocalVariable(name: "stream", arg: 1, scope: !2623, file: !135, line: 199, type: !2525)
!2635 = !DILocalVariable(name: "command_name", arg: 2, scope: !2623, file: !135, line: 200, type: !6)
!2636 = !DILocalVariable(name: "package", arg: 3, scope: !2623, file: !135, line: 200, type: !6)
!2637 = !DILocalVariable(name: "version", arg: 4, scope: !2623, file: !135, line: 201, type: !6)
!2638 = !DILocalVariable(name: "authors", arg: 5, scope: !2623, file: !135, line: 201, type: !2626)
!2639 = !DILocalVariable(name: "n_authors", scope: !2623, file: !135, line: 203, type: !74)
!2640 = !DILocalVariable(name: "authtab", scope: !2623, file: !135, line: 204, type: !2641)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !82)
!2642 = !DILocation(line: 0, scope: !2623)
!2643 = !DILocation(line: 204, column: 3, scope: !2623)
!2644 = !DILocation(line: 204, column: 15, scope: !2623)
!2645 = !DILocation(line: 208, column: 35, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !135, line: 206, column: 3)
!2647 = distinct !DILexicalBlock(scope: !2623, file: !135, line: 206, column: 3)
!2648 = !DILocation(line: 208, column: 14, scope: !2646)
!2649 = !DILocation(line: 208, column: 33, scope: !2646)
!2650 = !DILocation(line: 208, column: 67, scope: !2646)
!2651 = !DILocation(line: 206, column: 3, scope: !2647)
!2652 = !DILocation(line: 0, scope: !2647)
!2653 = !DILocation(line: 211, column: 3, scope: !2623)
!2654 = !DILocation(line: 213, column: 1, scope: !2623)
!2655 = distinct !DISubprogram(name: "version_etc", scope: !135, file: !135, line: 230, type: !2656, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{null, !2525, !6, !6, !6, null}
!2658 = !{!2659, !2660, !2661, !2662, !2663}
!2659 = !DILocalVariable(name: "stream", arg: 1, scope: !2655, file: !135, line: 230, type: !2525)
!2660 = !DILocalVariable(name: "command_name", arg: 2, scope: !2655, file: !135, line: 231, type: !6)
!2661 = !DILocalVariable(name: "package", arg: 3, scope: !2655, file: !135, line: 231, type: !6)
!2662 = !DILocalVariable(name: "version", arg: 4, scope: !2655, file: !135, line: 232, type: !6)
!2663 = !DILocalVariable(name: "authors", scope: !2655, file: !135, line: 234, type: !2664)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !602, line: 52, baseType: !2665)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2666, line: 32, baseType: !2667)
!2666 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !135, baseType: !2668)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2627, size: 192, elements: !636)
!2669 = !DILocation(line: 0, scope: !2655)
!2670 = !DILocation(line: 234, column: 3, scope: !2655)
!2671 = !DILocation(line: 234, column: 11, scope: !2655)
!2672 = !DILocation(line: 236, column: 3, scope: !2655)
!2673 = !DILocation(line: 237, column: 3, scope: !2655)
!2674 = !DILocation(line: 238, column: 3, scope: !2655)
!2675 = !DILocation(line: 239, column: 1, scope: !2655)
!2676 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !135, file: !135, line: 242, type: !956, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !134, retainedNodes: !4)
!2677 = !DILocation(line: 244, column: 3, scope: !2676)
!2678 = !DILocation(line: 249, column: 3, scope: !2676)
!2679 = !DILocation(line: 255, column: 3, scope: !2676)
!2680 = !DILocation(line: 260, column: 3, scope: !2676)
!2681 = !DILocation(line: 262, column: 1, scope: !2676)
!2682 = distinct !DISubprogram(name: "xnmalloc", scope: !145, file: !145, line: 99, type: !2683, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!29, !74, !74}
!2685 = !{!2686, !2687}
!2686 = !DILocalVariable(name: "n", arg: 1, scope: !2682, file: !145, line: 99, type: !74)
!2687 = !DILocalVariable(name: "s", arg: 2, scope: !2682, file: !145, line: 99, type: !74)
!2688 = !DILocation(line: 0, scope: !2682)
!2689 = !DILocation(line: 101, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2682, file: !145, line: 101, column: 7)
!2691 = !DILocation(line: 101, column: 7, scope: !2682)
!2692 = !DILocation(line: 102, column: 5, scope: !2690)
!2693 = !DILocation(line: 103, column: 21, scope: !2682)
!2694 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !142, line: 39, type: !74)
!2695 = distinct !DISubprogram(name: "xmalloc", scope: !142, file: !142, line: 39, type: !2696, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!29, !74}
!2698 = !{!2694, !2699}
!2699 = !DILocalVariable(name: "p", scope: !2695, file: !142, line: 41, type: !29)
!2700 = !DILocation(line: 0, scope: !2695, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 103, column: 10, scope: !2682)
!2702 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2701)
!2703 = !DILocation(line: 42, column: 8, scope: !2704, inlinedAt: !2701)
!2704 = distinct !DILexicalBlock(scope: !2695, file: !142, line: 42, column: 7)
!2705 = !DILocation(line: 42, column: 10, scope: !2704, inlinedAt: !2701)
!2706 = !DILocation(line: 43, column: 5, scope: !2704, inlinedAt: !2701)
!2707 = !DILocation(line: 103, column: 3, scope: !2682)
!2708 = !DILocation(line: 0, scope: !2695)
!2709 = !DILocation(line: 41, column: 13, scope: !2695)
!2710 = !DILocation(line: 42, column: 8, scope: !2704)
!2711 = !DILocation(line: 42, column: 10, scope: !2704)
!2712 = !DILocation(line: 43, column: 5, scope: !2704)
!2713 = !DILocation(line: 44, column: 3, scope: !2695)
!2714 = distinct !DISubprogram(name: "xnrealloc", scope: !145, file: !145, line: 112, type: !2715, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!29, !29, !74, !74}
!2717 = !{!2718, !2719, !2720}
!2718 = !DILocalVariable(name: "p", arg: 1, scope: !2714, file: !145, line: 112, type: !29)
!2719 = !DILocalVariable(name: "n", arg: 2, scope: !2714, file: !145, line: 112, type: !74)
!2720 = !DILocalVariable(name: "s", arg: 3, scope: !2714, file: !145, line: 112, type: !74)
!2721 = !DILocation(line: 0, scope: !2714)
!2722 = !DILocation(line: 114, column: 7, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2714, file: !145, line: 114, column: 7)
!2724 = !DILocation(line: 114, column: 7, scope: !2714)
!2725 = !DILocation(line: 115, column: 5, scope: !2723)
!2726 = !DILocation(line: 116, column: 25, scope: !2714)
!2727 = !DILocalVariable(name: "p", arg: 1, scope: !2728, file: !142, line: 51, type: !29)
!2728 = distinct !DISubprogram(name: "xrealloc", scope: !142, file: !142, line: 51, type: !2729, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!29, !29, !74}
!2731 = !{!2727, !2732}
!2732 = !DILocalVariable(name: "n", arg: 2, scope: !2728, file: !142, line: 51, type: !74)
!2733 = !DILocation(line: 0, scope: !2728, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 116, column: 10, scope: !2714)
!2735 = !DILocation(line: 53, column: 8, scope: !2736, inlinedAt: !2734)
!2736 = distinct !DILexicalBlock(scope: !2728, file: !142, line: 53, column: 7)
!2737 = !DILocation(line: 53, column: 10, scope: !2736, inlinedAt: !2734)
!2738 = !DILocation(line: 57, column: 7, scope: !2739, inlinedAt: !2734)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !142, line: 54, column: 5)
!2740 = !DILocation(line: 58, column: 7, scope: !2739, inlinedAt: !2734)
!2741 = !DILocation(line: 61, column: 7, scope: !2728, inlinedAt: !2734)
!2742 = !DILocation(line: 62, column: 8, scope: !2743, inlinedAt: !2734)
!2743 = distinct !DILexicalBlock(scope: !2728, file: !142, line: 62, column: 7)
!2744 = !DILocation(line: 62, column: 10, scope: !2743, inlinedAt: !2734)
!2745 = !DILocation(line: 63, column: 5, scope: !2743, inlinedAt: !2734)
!2746 = !DILocation(line: 116, column: 3, scope: !2714)
!2747 = !DILocation(line: 0, scope: !2728)
!2748 = !DILocation(line: 53, column: 8, scope: !2736)
!2749 = !DILocation(line: 53, column: 10, scope: !2736)
!2750 = !DILocation(line: 57, column: 7, scope: !2739)
!2751 = !DILocation(line: 58, column: 7, scope: !2739)
!2752 = !DILocation(line: 61, column: 7, scope: !2728)
!2753 = !DILocation(line: 62, column: 8, scope: !2743)
!2754 = !DILocation(line: 62, column: 10, scope: !2743)
!2755 = !DILocation(line: 63, column: 5, scope: !2743)
!2756 = !DILocation(line: 65, column: 1, scope: !2728)
!2757 = !DILocation(line: 0, scope: !146)
!2758 = !DILocation(line: 176, column: 14, scope: !146)
!2759 = !DILocation(line: 178, column: 9, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !146, file: !145, line: 178, column: 7)
!2761 = !DILocation(line: 178, column: 7, scope: !146)
!2762 = !DILocation(line: 180, column: 13, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !145, line: 180, column: 11)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !145, line: 179, column: 5)
!2765 = !DILocation(line: 180, column: 11, scope: !2764)
!2766 = !DILocation(line: 188, column: 30, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !145, line: 181, column: 9)
!2768 = !DILocation(line: 189, column: 16, scope: !2767)
!2769 = !DILocation(line: 189, column: 13, scope: !2767)
!2770 = !DILocation(line: 190, column: 9, scope: !2767)
!2771 = !DILocation(line: 191, column: 11, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2764, file: !145, line: 191, column: 11)
!2773 = !DILocation(line: 191, column: 11, scope: !2764)
!2774 = !DILocation(line: 206, column: 7, scope: !146)
!2775 = !DILocation(line: 207, column: 25, scope: !146)
!2776 = !DILocation(line: 0, scope: !2728, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 207, column: 10, scope: !146)
!2778 = !DILocation(line: 53, column: 10, scope: !2736, inlinedAt: !2777)
!2779 = !DILocation(line: 192, column: 9, scope: !2772)
!2780 = !DILocation(line: 200, column: 69, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !145, line: 200, column: 11)
!2782 = distinct !DILexicalBlock(scope: !2760, file: !145, line: 195, column: 5)
!2783 = !DILocation(line: 201, column: 11, scope: !2781)
!2784 = !DILocation(line: 200, column: 11, scope: !2782)
!2785 = !DILocation(line: 202, column: 9, scope: !2781)
!2786 = !DILocation(line: 203, column: 14, scope: !2782)
!2787 = !DILocation(line: 203, column: 18, scope: !2782)
!2788 = !DILocation(line: 203, column: 9, scope: !2782)
!2789 = !DILocation(line: 53, column: 8, scope: !2736, inlinedAt: !2777)
!2790 = !DILocation(line: 57, column: 7, scope: !2739, inlinedAt: !2777)
!2791 = !DILocation(line: 58, column: 7, scope: !2739, inlinedAt: !2777)
!2792 = !DILocation(line: 61, column: 7, scope: !2728, inlinedAt: !2777)
!2793 = !DILocation(line: 62, column: 8, scope: !2743, inlinedAt: !2777)
!2794 = !DILocation(line: 62, column: 10, scope: !2743, inlinedAt: !2777)
!2795 = !DILocation(line: 63, column: 5, scope: !2743, inlinedAt: !2777)
!2796 = !DILocation(line: 207, column: 3, scope: !146)
!2797 = distinct !DISubprogram(name: "xcharalloc", scope: !145, file: !145, line: 216, type: !1934, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2798)
!2798 = !{!2799}
!2799 = !DILocalVariable(name: "n", arg: 1, scope: !2797, file: !145, line: 216, type: !74)
!2800 = !DILocation(line: 0, scope: !2797)
!2801 = !DILocation(line: 0, scope: !2695, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 218, column: 10, scope: !2797)
!2803 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2802)
!2804 = !DILocation(line: 42, column: 8, scope: !2704, inlinedAt: !2802)
!2805 = !DILocation(line: 42, column: 10, scope: !2704, inlinedAt: !2802)
!2806 = !DILocation(line: 43, column: 5, scope: !2704, inlinedAt: !2802)
!2807 = !DILocation(line: 218, column: 3, scope: !2797)
!2808 = distinct !DISubprogram(name: "x2realloc", scope: !142, file: !142, line: 74, type: !2809, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!29, !29, !149}
!2811 = !{!2812, !2813}
!2812 = !DILocalVariable(name: "p", arg: 1, scope: !2808, file: !142, line: 74, type: !29)
!2813 = !DILocalVariable(name: "pn", arg: 2, scope: !2808, file: !142, line: 74, type: !149)
!2814 = !DILocation(line: 0, scope: !2808)
!2815 = !DILocation(line: 0, scope: !146, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 76, column: 10, scope: !2808)
!2817 = !DILocation(line: 176, column: 14, scope: !146, inlinedAt: !2816)
!2818 = !DILocation(line: 178, column: 9, scope: !2760, inlinedAt: !2816)
!2819 = !DILocation(line: 178, column: 7, scope: !146, inlinedAt: !2816)
!2820 = !DILocation(line: 180, column: 13, scope: !2763, inlinedAt: !2816)
!2821 = !DILocation(line: 180, column: 11, scope: !2764, inlinedAt: !2816)
!2822 = !DILocation(line: 191, column: 11, scope: !2772, inlinedAt: !2816)
!2823 = !DILocation(line: 191, column: 11, scope: !2764, inlinedAt: !2816)
!2824 = !DILocation(line: 192, column: 9, scope: !2772, inlinedAt: !2816)
!2825 = !DILocation(line: 201, column: 11, scope: !2781, inlinedAt: !2816)
!2826 = !DILocation(line: 200, column: 11, scope: !2782, inlinedAt: !2816)
!2827 = !DILocation(line: 202, column: 9, scope: !2781, inlinedAt: !2816)
!2828 = !DILocation(line: 203, column: 14, scope: !2782, inlinedAt: !2816)
!2829 = !DILocation(line: 203, column: 18, scope: !2782, inlinedAt: !2816)
!2830 = !DILocation(line: 203, column: 9, scope: !2782, inlinedAt: !2816)
!2831 = !DILocation(line: 0, scope: !2728, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 207, column: 10, scope: !146, inlinedAt: !2816)
!2833 = !DILocation(line: 53, column: 10, scope: !2736, inlinedAt: !2832)
!2834 = !DILocation(line: 206, column: 7, scope: !146, inlinedAt: !2816)
!2835 = !DILocation(line: 61, column: 7, scope: !2728, inlinedAt: !2832)
!2836 = !DILocation(line: 62, column: 8, scope: !2743, inlinedAt: !2832)
!2837 = !DILocation(line: 62, column: 10, scope: !2743, inlinedAt: !2832)
!2838 = !DILocation(line: 63, column: 5, scope: !2743, inlinedAt: !2832)
!2839 = !DILocation(line: 76, column: 3, scope: !2808)
!2840 = distinct !DISubprogram(name: "xzalloc", scope: !142, file: !142, line: 84, type: !2696, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2841)
!2841 = !{!2842}
!2842 = !DILocalVariable(name: "n", arg: 1, scope: !2840, file: !142, line: 84, type: !74)
!2843 = !DILocation(line: 0, scope: !2840)
!2844 = !DILocalVariable(name: "n", arg: 1, scope: !2845, file: !142, line: 93, type: !74)
!2845 = distinct !DISubprogram(name: "xcalloc", scope: !142, file: !142, line: 93, type: !2683, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2846)
!2846 = !{!2844, !2847, !2848}
!2847 = !DILocalVariable(name: "s", arg: 2, scope: !2845, file: !142, line: 93, type: !74)
!2848 = !DILocalVariable(name: "p", scope: !2845, file: !142, line: 95, type: !29)
!2849 = !DILocation(line: 0, scope: !2845, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 86, column: 10, scope: !2840)
!2851 = !DILocation(line: 100, column: 7, scope: !2852, inlinedAt: !2850)
!2852 = distinct !DILexicalBlock(scope: !2845, file: !142, line: 100, column: 7)
!2853 = !DILocation(line: 101, column: 7, scope: !2852, inlinedAt: !2850)
!2854 = !DILocation(line: 101, column: 18, scope: !2852, inlinedAt: !2850)
!2855 = !DILocation(line: 101, column: 16, scope: !2852, inlinedAt: !2850)
!2856 = !DILocation(line: 100, column: 7, scope: !2845, inlinedAt: !2850)
!2857 = !DILocation(line: 102, column: 5, scope: !2852, inlinedAt: !2850)
!2858 = !DILocation(line: 86, column: 3, scope: !2840)
!2859 = !DILocation(line: 0, scope: !2845)
!2860 = !DILocation(line: 100, column: 7, scope: !2852)
!2861 = !DILocation(line: 101, column: 7, scope: !2852)
!2862 = !DILocation(line: 101, column: 18, scope: !2852)
!2863 = !DILocation(line: 101, column: 16, scope: !2852)
!2864 = !DILocation(line: 100, column: 7, scope: !2845)
!2865 = !DILocation(line: 102, column: 5, scope: !2852)
!2866 = !DILocation(line: 103, column: 3, scope: !2845)
!2867 = distinct !DISubprogram(name: "xmemdup", scope: !142, file: !142, line: 111, type: !2868, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2872)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!29, !2870, !74}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2872 = !{!2873, !2874}
!2873 = !DILocalVariable(name: "p", arg: 1, scope: !2867, file: !142, line: 111, type: !2870)
!2874 = !DILocalVariable(name: "s", arg: 2, scope: !2867, file: !142, line: 111, type: !74)
!2875 = !DILocation(line: 0, scope: !2867)
!2876 = !DILocation(line: 0, scope: !2695, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 113, column: 18, scope: !2867)
!2878 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2877)
!2879 = !DILocation(line: 42, column: 8, scope: !2704, inlinedAt: !2877)
!2880 = !DILocation(line: 42, column: 10, scope: !2704, inlinedAt: !2877)
!2881 = !DILocation(line: 43, column: 5, scope: !2704, inlinedAt: !2877)
!2882 = !DILocalVariable(name: "__dest", arg: 1, scope: !2883, file: !1461, line: 26, type: !2886)
!2883 = distinct !DISubprogram(name: "memcpy", scope: !1461, file: !1461, line: 26, type: !2884, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2888)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!29, !2886, !2887, !74}
!2886 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!2887 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2870)
!2888 = !{!2882, !2889, !2890}
!2889 = !DILocalVariable(name: "__src", arg: 2, scope: !2883, file: !1461, line: 26, type: !2887)
!2890 = !DILocalVariable(name: "__len", arg: 3, scope: !2883, file: !1461, line: 26, type: !74)
!2891 = !DILocation(line: 0, scope: !2883, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 113, column: 10, scope: !2867)
!2893 = !DILocation(line: 29, column: 10, scope: !2883, inlinedAt: !2892)
!2894 = !DILocation(line: 113, column: 3, scope: !2867)
!2895 = distinct !DISubprogram(name: "xstrdup", scope: !142, file: !142, line: 119, type: !946, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2896)
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "string", arg: 1, scope: !2895, file: !142, line: 119, type: !6)
!2898 = !DILocation(line: 0, scope: !2895)
!2899 = !DILocation(line: 121, column: 27, scope: !2895)
!2900 = !DILocation(line: 121, column: 43, scope: !2895)
!2901 = !DILocation(line: 0, scope: !2867, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 121, column: 10, scope: !2895)
!2903 = !DILocation(line: 0, scope: !2695, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 113, column: 18, scope: !2867, inlinedAt: !2902)
!2905 = !DILocation(line: 41, column: 13, scope: !2695, inlinedAt: !2904)
!2906 = !DILocation(line: 42, column: 8, scope: !2704, inlinedAt: !2904)
!2907 = !DILocation(line: 42, column: 10, scope: !2704, inlinedAt: !2904)
!2908 = !DILocation(line: 43, column: 5, scope: !2704, inlinedAt: !2904)
!2909 = !DILocation(line: 0, scope: !2883, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 113, column: 10, scope: !2867, inlinedAt: !2902)
!2911 = !DILocation(line: 29, column: 10, scope: !2883, inlinedAt: !2910)
!2912 = !DILocation(line: 121, column: 3, scope: !2895)
!2913 = distinct !DISubprogram(name: "xalloc_die", scope: !159, file: !159, line: 32, type: !956, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !4)
!2914 = !DILocation(line: 34, column: 10, scope: !2913)
!2915 = !DILocation(line: 34, column: 33, scope: !2913)
!2916 = !DILocation(line: 34, column: 3, scope: !2913)
!2917 = !DILocation(line: 40, column: 3, scope: !2913)
!2918 = distinct !DISubprogram(name: "rpl_calloc", scope: !161, file: !161, line: 42, type: !2683, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2919)
!2919 = !{!2920, !2921, !2922, !2923}
!2920 = !DILocalVariable(name: "n", arg: 1, scope: !2918, file: !161, line: 42, type: !74)
!2921 = !DILocalVariable(name: "s", arg: 2, scope: !2918, file: !161, line: 42, type: !74)
!2922 = !DILocalVariable(name: "result", scope: !2918, file: !161, line: 44, type: !29)
!2923 = !DILocalVariable(name: "bytes", scope: !2924, file: !161, line: 56, type: !74)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !161, line: 53, column: 5)
!2925 = distinct !DILexicalBlock(scope: !2918, file: !161, line: 47, column: 7)
!2926 = !DILocation(line: 0, scope: !2918)
!2927 = !DILocation(line: 47, column: 9, scope: !2925)
!2928 = !DILocation(line: 47, column: 14, scope: !2925)
!2929 = !DILocation(line: 0, scope: !2924)
!2930 = !DILocation(line: 57, column: 21, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2924, file: !161, line: 57, column: 11)
!2932 = !DILocation(line: 57, column: 11, scope: !2924)
!2933 = !DILocation(line: 59, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !161, line: 58, column: 9)
!2935 = !DILocation(line: 59, column: 17, scope: !2934)
!2936 = !DILocation(line: 65, column: 12, scope: !2918)
!2937 = !DILocation(line: 72, column: 3, scope: !2918)
!2938 = !DILocation(line: 73, column: 1, scope: !2918)
!2939 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !163, file: !163, line: 86, type: !2940, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !162, retainedNodes: !2954)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!74, !2942, !6, !74, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1216, line: 6, baseType: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1218, line: 21, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1218, line: 13, size: 64, elements: !2947)
!2947 = !{!2948, !2949}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2946, file: !1218, line: 15, baseType: !23, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2946, file: !1218, line: 20, baseType: !2950, size: 32, offset: 32)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2946, file: !1218, line: 16, size: 32, elements: !2951)
!2951 = !{!2952, !2953}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2950, file: !1218, line: 18, baseType: !39, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2950, file: !1218, line: 19, baseType: !1227, size: 32)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2955 = !DILocalVariable(name: "pwc", arg: 1, scope: !2939, file: !163, line: 86, type: !2942)
!2956 = !DILocalVariable(name: "s", arg: 2, scope: !2939, file: !163, line: 86, type: !6)
!2957 = !DILocalVariable(name: "n", arg: 3, scope: !2939, file: !163, line: 86, type: !74)
!2958 = !DILocalVariable(name: "ps", arg: 4, scope: !2939, file: !163, line: 86, type: !2943)
!2959 = !DILocalVariable(name: "ret", scope: !2939, file: !163, line: 88, type: !74)
!2960 = !DILocalVariable(name: "wc", scope: !2939, file: !163, line: 89, type: !1232)
!2961 = !DILocalVariable(name: "uc", scope: !2962, file: !163, line: 156, type: !133)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !163, line: 155, column: 5)
!2963 = distinct !DILexicalBlock(scope: !2939, file: !163, line: 154, column: 7)
!2964 = !DILocation(line: 0, scope: !2939)
!2965 = !DILocation(line: 89, column: 3, scope: !2939)
!2966 = !DILocation(line: 105, column: 9, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2939, file: !163, line: 105, column: 7)
!2968 = !DILocation(line: 105, column: 7, scope: !2939)
!2969 = !DILocation(line: 145, column: 9, scope: !2939)
!2970 = !DILocation(line: 154, column: 19, scope: !2963)
!2971 = !DILocation(line: 154, column: 26, scope: !2963)
!2972 = !DILocation(line: 154, column: 41, scope: !2963)
!2973 = !DILocation(line: 154, column: 7, scope: !2939)
!2974 = !DILocation(line: 156, column: 26, scope: !2962)
!2975 = !DILocation(line: 0, scope: !2962)
!2976 = !DILocation(line: 157, column: 14, scope: !2962)
!2977 = !DILocation(line: 157, column: 12, scope: !2962)
!2978 = !DILocation(line: 163, column: 1, scope: !2939)
!2979 = !DISubprogram(name: "mbrtowc", scope: !1894, file: !1894, line: 296, type: !2980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!76, !2982, !6, !76, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2984 = distinct !DISubprogram(name: "close_stream", scope: !166, file: !166, line: 56, type: !2985, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3021)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!23, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2527, line: 7, baseType: !2989)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !607, line: 49, size: 1728, elements: !2990)
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2989, file: !607, line: 51, baseType: !23, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2989, file: !607, line: 54, baseType: !30, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2989, file: !607, line: 55, baseType: !30, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2989, file: !607, line: 56, baseType: !30, size: 64, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2989, file: !607, line: 57, baseType: !30, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2989, file: !607, line: 58, baseType: !30, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2989, file: !607, line: 59, baseType: !30, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2989, file: !607, line: 60, baseType: !30, size: 64, offset: 448)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2989, file: !607, line: 61, baseType: !30, size: 64, offset: 512)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2989, file: !607, line: 64, baseType: !30, size: 64, offset: 576)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2989, file: !607, line: 65, baseType: !30, size: 64, offset: 640)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2989, file: !607, line: 66, baseType: !30, size: 64, offset: 704)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2989, file: !607, line: 68, baseType: !622, size: 64, offset: 768)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2989, file: !607, line: 70, baseType: !3005, size: 64, offset: 832)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2989, file: !607, line: 72, baseType: !23, size: 32, offset: 896)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2989, file: !607, line: 73, baseType: !23, size: 32, offset: 928)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2989, file: !607, line: 74, baseType: !628, size: 64, offset: 960)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2989, file: !607, line: 77, baseType: !73, size: 16, offset: 1024)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2989, file: !607, line: 78, baseType: !633, size: 8, offset: 1040)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2989, file: !607, line: 79, baseType: !635, size: 8, offset: 1048)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2989, file: !607, line: 81, baseType: !639, size: 64, offset: 1088)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2989, file: !607, line: 89, baseType: !642, size: 64, offset: 1152)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2989, file: !607, line: 91, baseType: !644, size: 64, offset: 1216)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2989, file: !607, line: 92, baseType: !647, size: 64, offset: 1280)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2989, file: !607, line: 93, baseType: !3005, size: 64, offset: 1344)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2989, file: !607, line: 94, baseType: !29, size: 64, offset: 1408)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2989, file: !607, line: 95, baseType: !74, size: 64, offset: 1472)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2989, file: !607, line: 96, baseType: !23, size: 32, offset: 1536)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2989, file: !607, line: 98, baseType: !654, size: 160, offset: 1568)
!3021 = !{!3022, !3023, !3025, !3026}
!3022 = !DILocalVariable(name: "stream", arg: 1, scope: !2984, file: !166, line: 56, type: !2987)
!3023 = !DILocalVariable(name: "some_pending", scope: !2984, file: !166, line: 58, type: !3024)
!3024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!3025 = !DILocalVariable(name: "prev_fail", scope: !2984, file: !166, line: 59, type: !3024)
!3026 = !DILocalVariable(name: "fclose_fail", scope: !2984, file: !166, line: 60, type: !3024)
!3027 = !DILocation(line: 0, scope: !2984)
!3028 = !DILocation(line: 58, column: 30, scope: !2984)
!3029 = !DILocalVariable(name: "__stream", arg: 1, scope: !3030, file: !897, line: 135, type: !2987)
!3030 = distinct !DISubprogram(name: "ferror_unlocked", scope: !897, file: !897, line: 135, type: !2985, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3031)
!3031 = !{!3029}
!3032 = !DILocation(line: 0, scope: !3030, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 59, column: 27, scope: !2984)
!3034 = !DILocation(line: 137, column: 10, scope: !3030, inlinedAt: !3033)
!3035 = !{!905, !906, i64 0}
!3036 = !DILocation(line: 59, column: 43, scope: !2984)
!3037 = !DILocation(line: 60, column: 29, scope: !2984)
!3038 = !DILocation(line: 60, column: 45, scope: !2984)
!3039 = !DILocation(line: 70, column: 17, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2984, file: !166, line: 70, column: 7)
!3041 = !DILocation(line: 58, column: 50, scope: !2984)
!3042 = !DILocation(line: 70, column: 33, scope: !3040)
!3043 = !DILocation(line: 70, column: 53, scope: !3040)
!3044 = !DILocation(line: 70, column: 59, scope: !3040)
!3045 = !DILocation(line: 70, column: 7, scope: !2984)
!3046 = !DILocation(line: 72, column: 11, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3040, file: !166, line: 71, column: 5)
!3048 = !DILocation(line: 73, column: 9, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3047, file: !166, line: 72, column: 11)
!3050 = !DILocation(line: 73, column: 15, scope: !3049)
!3051 = !DILocation(line: 78, column: 1, scope: !2984)
!3052 = distinct !DISubprogram(name: "hard_locale", scope: !168, file: !168, line: 27, type: !3053, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!16, !23}
!3055 = !{!3056, !3057}
!3056 = !DILocalVariable(name: "category", arg: 1, scope: !3052, file: !168, line: 27, type: !23)
!3057 = !DILocalVariable(name: "locale", scope: !3052, file: !168, line: 29, type: !3058)
!3058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3059)
!3059 = !{!3060}
!3060 = !DISubrange(count: 257)
!3061 = !DILocation(line: 0, scope: !3052)
!3062 = !DILocation(line: 29, column: 3, scope: !3052)
!3063 = !DILocation(line: 29, column: 8, scope: !3052)
!3064 = !DILocation(line: 31, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3052, file: !168, line: 31, column: 7)
!3066 = !DILocation(line: 31, column: 7, scope: !3052)
!3067 = !DILocation(line: 34, column: 12, scope: !3052)
!3068 = !DILocation(line: 34, column: 38, scope: !3052)
!3069 = !DILocation(line: 34, column: 41, scope: !3052)
!3070 = !DILocation(line: 34, column: 66, scope: !3052)
!3071 = !DILocation(line: 35, column: 1, scope: !3052)
!3072 = distinct !DISubprogram(name: "locale_charset", scope: !170, file: !170, line: 831, type: !3073, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!6}
!3075 = !{!3076}
!3076 = !DILocalVariable(name: "codeset", scope: !3072, file: !170, line: 833, type: !6)
!3077 = !DILocation(line: 847, column: 13, scope: !3072)
!3078 = !DILocation(line: 0, scope: !3072)
!3079 = !DILocation(line: 911, column: 15, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3072, file: !170, line: 911, column: 7)
!3081 = !DILocation(line: 911, column: 7, scope: !3072)
!3082 = !DILocation(line: 1070, column: 13, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !170, line: 1070, column: 13)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !170, line: 1060, column: 7)
!3085 = distinct !DILexicalBlock(scope: !3072, file: !170, line: 1019, column: 3)
!3086 = !DILocation(line: 1070, column: 24, scope: !3083)
!3087 = !DILocation(line: 1070, column: 13, scope: !3084)
!3088 = !DILocation(line: 1158, column: 3, scope: !3072)
!3089 = !DISubprogram(name: "nl_langinfo", scope: !173, file: !173, line: 661, type: !3090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!30, !23}
!3092 = distinct !DISubprogram(name: "setlocale_null_r", scope: !559, file: !559, line: 269, type: !3093, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!23, !23, !30, !74}
!3095 = !{!3096, !3097, !3098}
!3096 = !DILocalVariable(name: "category", arg: 1, scope: !3092, file: !559, line: 269, type: !23)
!3097 = !DILocalVariable(name: "buf", arg: 2, scope: !3092, file: !559, line: 269, type: !30)
!3098 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3092, file: !559, line: 269, type: !74)
!3099 = !DILocation(line: 0, scope: !3092)
!3100 = !DILocalVariable(name: "category", arg: 1, scope: !3101, file: !559, line: 91, type: !23)
!3101 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !559, file: !559, line: 91, type: !3093, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3102)
!3102 = !{!3100, !3103, !3104, !3105, !3106}
!3103 = !DILocalVariable(name: "buf", arg: 2, scope: !3101, file: !559, line: 91, type: !30)
!3104 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3101, file: !559, line: 91, type: !74)
!3105 = !DILocalVariable(name: "result", scope: !3101, file: !559, line: 140, type: !6)
!3106 = !DILocalVariable(name: "length", scope: !3107, file: !559, line: 154, type: !74)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !559, line: 153, column: 5)
!3108 = distinct !DILexicalBlock(scope: !3101, file: !559, line: 142, column: 7)
!3109 = !DILocation(line: 0, scope: !3101, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 274, column: 10, scope: !3092)
!3111 = !DILocalVariable(name: "category", arg: 1, scope: !3112, file: !559, line: 60, type: !23)
!3112 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !559, file: !559, line: 60, type: !3113, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!6, !23}
!3115 = !{!3111, !3116}
!3116 = !DILocalVariable(name: "result", scope: !3112, file: !559, line: 62, type: !6)
!3117 = !DILocation(line: 0, scope: !3112, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 140, column: 24, scope: !3101, inlinedAt: !3110)
!3119 = !DILocation(line: 62, column: 24, scope: !3112, inlinedAt: !3118)
!3120 = !DILocation(line: 142, column: 14, scope: !3108, inlinedAt: !3110)
!3121 = !DILocation(line: 142, column: 7, scope: !3101, inlinedAt: !3110)
!3122 = !DILocation(line: 145, column: 19, scope: !3123, inlinedAt: !3110)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !559, line: 145, column: 11)
!3124 = distinct !DILexicalBlock(scope: !3108, file: !559, line: 143, column: 5)
!3125 = !DILocation(line: 145, column: 11, scope: !3124, inlinedAt: !3110)
!3126 = !DILocation(line: 149, column: 16, scope: !3123, inlinedAt: !3110)
!3127 = !DILocation(line: 149, column: 9, scope: !3123, inlinedAt: !3110)
!3128 = !DILocation(line: 154, column: 23, scope: !3107, inlinedAt: !3110)
!3129 = !DILocation(line: 0, scope: !3107, inlinedAt: !3110)
!3130 = !DILocation(line: 155, column: 18, scope: !3131, inlinedAt: !3110)
!3131 = distinct !DILexicalBlock(scope: !3107, file: !559, line: 155, column: 11)
!3132 = !DILocation(line: 155, column: 11, scope: !3107, inlinedAt: !3110)
!3133 = !DILocation(line: 157, column: 39, scope: !3134, inlinedAt: !3110)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !559, line: 156, column: 9)
!3135 = !DILocalVariable(name: "__dest", arg: 1, scope: !3136, file: !1461, line: 26, type: !2886)
!3136 = distinct !DISubprogram(name: "memcpy", scope: !1461, file: !1461, line: 26, type: !2884, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3137)
!3137 = !{!3135, !3138, !3139}
!3138 = !DILocalVariable(name: "__src", arg: 2, scope: !3136, file: !1461, line: 26, type: !2887)
!3139 = !DILocalVariable(name: "__len", arg: 3, scope: !3136, file: !1461, line: 26, type: !74)
!3140 = !DILocation(line: 0, scope: !3136, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 157, column: 11, scope: !3134, inlinedAt: !3110)
!3142 = !DILocation(line: 29, column: 10, scope: !3136, inlinedAt: !3141)
!3143 = !DILocation(line: 158, column: 11, scope: !3134, inlinedAt: !3110)
!3144 = !DILocation(line: 162, column: 23, scope: !3145, inlinedAt: !3110)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !559, line: 162, column: 15)
!3146 = distinct !DILexicalBlock(scope: !3131, file: !559, line: 161, column: 9)
!3147 = !DILocation(line: 162, column: 15, scope: !3146, inlinedAt: !3110)
!3148 = !DILocation(line: 167, column: 44, scope: !3149, inlinedAt: !3110)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !559, line: 163, column: 13)
!3150 = !DILocation(line: 0, scope: !3136, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 167, column: 15, scope: !3149, inlinedAt: !3110)
!3152 = !DILocation(line: 29, column: 10, scope: !3136, inlinedAt: !3151)
!3153 = !DILocation(line: 168, column: 15, scope: !3149, inlinedAt: !3110)
!3154 = !DILocation(line: 168, column: 32, scope: !3149, inlinedAt: !3110)
!3155 = !DILocation(line: 169, column: 13, scope: !3149, inlinedAt: !3110)
!3156 = !DILocation(line: 0, scope: !3108, inlinedAt: !3110)
!3157 = !DILocation(line: 274, column: 3, scope: !3092)
!3158 = distinct !DISubprogram(name: "setlocale_null", scope: !559, file: !559, line: 301, type: !3113, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !558, retainedNodes: !3159)
!3159 = !{!3160}
!3160 = !DILocalVariable(name: "category", arg: 1, scope: !3158, file: !559, line: 301, type: !23)
!3161 = !DILocation(line: 0, scope: !3158)
!3162 = !DILocation(line: 0, scope: !3112, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 304, column: 10, scope: !3158)
!3164 = !DILocation(line: 62, column: 24, scope: !3112, inlinedAt: !3163)
!3165 = !DILocation(line: 304, column: 3, scope: !3158)
!3166 = distinct !DISubprogram(name: "rpl_fclose", scope: !561, file: !561, line: 58, type: !3167, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3203)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!23, !3169}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2527, line: 7, baseType: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !607, line: 49, size: 1728, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3171, file: !607, line: 51, baseType: !23, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3171, file: !607, line: 54, baseType: !30, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3171, file: !607, line: 55, baseType: !30, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3171, file: !607, line: 56, baseType: !30, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3171, file: !607, line: 57, baseType: !30, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3171, file: !607, line: 58, baseType: !30, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3171, file: !607, line: 59, baseType: !30, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3171, file: !607, line: 60, baseType: !30, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3171, file: !607, line: 61, baseType: !30, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3171, file: !607, line: 64, baseType: !30, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3171, file: !607, line: 65, baseType: !30, size: 64, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3171, file: !607, line: 66, baseType: !30, size: 64, offset: 704)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3171, file: !607, line: 68, baseType: !622, size: 64, offset: 768)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3171, file: !607, line: 70, baseType: !3187, size: 64, offset: 832)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3171, file: !607, line: 72, baseType: !23, size: 32, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3171, file: !607, line: 73, baseType: !23, size: 32, offset: 928)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3171, file: !607, line: 74, baseType: !628, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3171, file: !607, line: 77, baseType: !73, size: 16, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3171, file: !607, line: 78, baseType: !633, size: 8, offset: 1040)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3171, file: !607, line: 79, baseType: !635, size: 8, offset: 1048)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3171, file: !607, line: 81, baseType: !639, size: 64, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3171, file: !607, line: 89, baseType: !642, size: 64, offset: 1152)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3171, file: !607, line: 91, baseType: !644, size: 64, offset: 1216)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3171, file: !607, line: 92, baseType: !647, size: 64, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3171, file: !607, line: 93, baseType: !3187, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3171, file: !607, line: 94, baseType: !29, size: 64, offset: 1408)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3171, file: !607, line: 95, baseType: !74, size: 64, offset: 1472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3171, file: !607, line: 96, baseType: !23, size: 32, offset: 1536)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3171, file: !607, line: 98, baseType: !654, size: 160, offset: 1568)
!3203 = !{!3204, !3205, !3206, !3207}
!3204 = !DILocalVariable(name: "fp", arg: 1, scope: !3166, file: !561, line: 58, type: !3169)
!3205 = !DILocalVariable(name: "saved_errno", scope: !3166, file: !561, line: 60, type: !23)
!3206 = !DILocalVariable(name: "fd", scope: !3166, file: !561, line: 61, type: !23)
!3207 = !DILocalVariable(name: "result", scope: !3166, file: !561, line: 62, type: !23)
!3208 = !DILocation(line: 0, scope: !3166)
!3209 = !DILocation(line: 65, column: 8, scope: !3166)
!3210 = !DILocation(line: 66, column: 10, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3166, file: !561, line: 66, column: 7)
!3212 = !DILocation(line: 66, column: 7, scope: !3166)
!3213 = !DILocation(line: 67, column: 12, scope: !3211)
!3214 = !DILocation(line: 67, column: 5, scope: !3211)
!3215 = !DILocation(line: 72, column: 9, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3166, file: !561, line: 72, column: 7)
!3217 = !DILocation(line: 72, column: 23, scope: !3216)
!3218 = !DILocation(line: 72, column: 33, scope: !3216)
!3219 = !DILocation(line: 72, column: 26, scope: !3216)
!3220 = !DILocation(line: 72, column: 59, scope: !3216)
!3221 = !DILocation(line: 73, column: 7, scope: !3216)
!3222 = !DILocation(line: 73, column: 10, scope: !3216)
!3223 = !DILocation(line: 72, column: 7, scope: !3166)
!3224 = !DILocation(line: 100, column: 12, scope: !3166)
!3225 = !DILocation(line: 105, column: 7, scope: !3166)
!3226 = !DILocation(line: 74, column: 19, scope: !3216)
!3227 = !DILocation(line: 105, column: 19, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3166, file: !561, line: 105, column: 7)
!3229 = !DILocation(line: 107, column: 13, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3228, file: !561, line: 106, column: 5)
!3231 = !DILocation(line: 109, column: 5, scope: !3230)
!3232 = !DILocation(line: 112, column: 1, scope: !3166)
!3233 = !DISubprogram(name: "fileno", scope: !602, file: !602, line: 785, type: !3234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!23, !3187}
!3236 = !DISubprogram(name: "fclose", scope: !602, file: !602, line: 213, type: !3234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3237 = !DISubprogram(name: "lseek", scope: !3238, file: !3238, line: 334, type: !3239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3238 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!630, !23, !630, !23}
!3241 = distinct !DISubprogram(name: "rpl_fflush", scope: !563, file: !563, line: 129, type: !3242, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3278)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!23, !3244}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2527, line: 7, baseType: !3246)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !607, line: 49, size: 1728, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3246, file: !607, line: 51, baseType: !23, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3246, file: !607, line: 54, baseType: !30, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3246, file: !607, line: 55, baseType: !30, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3246, file: !607, line: 56, baseType: !30, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3246, file: !607, line: 57, baseType: !30, size: 64, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3246, file: !607, line: 58, baseType: !30, size: 64, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3246, file: !607, line: 59, baseType: !30, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3246, file: !607, line: 60, baseType: !30, size: 64, offset: 448)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3246, file: !607, line: 61, baseType: !30, size: 64, offset: 512)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3246, file: !607, line: 64, baseType: !30, size: 64, offset: 576)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3246, file: !607, line: 65, baseType: !30, size: 64, offset: 640)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3246, file: !607, line: 66, baseType: !30, size: 64, offset: 704)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3246, file: !607, line: 68, baseType: !622, size: 64, offset: 768)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3246, file: !607, line: 70, baseType: !3262, size: 64, offset: 832)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3246, file: !607, line: 72, baseType: !23, size: 32, offset: 896)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3246, file: !607, line: 73, baseType: !23, size: 32, offset: 928)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3246, file: !607, line: 74, baseType: !628, size: 64, offset: 960)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3246, file: !607, line: 77, baseType: !73, size: 16, offset: 1024)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3246, file: !607, line: 78, baseType: !633, size: 8, offset: 1040)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3246, file: !607, line: 79, baseType: !635, size: 8, offset: 1048)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3246, file: !607, line: 81, baseType: !639, size: 64, offset: 1088)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3246, file: !607, line: 89, baseType: !642, size: 64, offset: 1152)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3246, file: !607, line: 91, baseType: !644, size: 64, offset: 1216)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3246, file: !607, line: 92, baseType: !647, size: 64, offset: 1280)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3246, file: !607, line: 93, baseType: !3262, size: 64, offset: 1344)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3246, file: !607, line: 94, baseType: !29, size: 64, offset: 1408)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3246, file: !607, line: 95, baseType: !74, size: 64, offset: 1472)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3246, file: !607, line: 96, baseType: !23, size: 32, offset: 1536)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3246, file: !607, line: 98, baseType: !654, size: 160, offset: 1568)
!3278 = !{!3279}
!3279 = !DILocalVariable(name: "stream", arg: 1, scope: !3241, file: !563, line: 129, type: !3244)
!3280 = !DILocation(line: 0, scope: !3241)
!3281 = !DILocation(line: 150, column: 14, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3241, file: !563, line: 150, column: 7)
!3283 = !DILocation(line: 150, column: 22, scope: !3282)
!3284 = !DILocation(line: 150, column: 27, scope: !3282)
!3285 = !DILocation(line: 150, column: 7, scope: !3241)
!3286 = !DILocation(line: 151, column: 12, scope: !3282)
!3287 = !DILocation(line: 151, column: 5, scope: !3282)
!3288 = !DILocalVariable(name: "fp", arg: 1, scope: !3289, file: !563, line: 41, type: !3244)
!3289 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !563, file: !563, line: 41, type: !3290, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !562, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{null, !3244}
!3292 = !{!3288}
!3293 = !DILocation(line: 0, scope: !3289, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 156, column: 3, scope: !3241)
!3295 = !DILocation(line: 43, column: 11, scope: !3296, inlinedAt: !3294)
!3296 = distinct !DILexicalBlock(scope: !3289, file: !563, line: 43, column: 7)
!3297 = !DILocation(line: 43, column: 18, scope: !3296, inlinedAt: !3294)
!3298 = !DILocation(line: 43, column: 7, scope: !3289, inlinedAt: !3294)
!3299 = !DILocation(line: 45, column: 5, scope: !3296, inlinedAt: !3294)
!3300 = !DILocation(line: 158, column: 10, scope: !3241)
!3301 = !DILocation(line: 158, column: 3, scope: !3241)
!3302 = !DILocation(line: 235, column: 1, scope: !3241)
!3303 = !DISubprogram(name: "fflush", scope: !602, file: !602, line: 218, type: !3304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!23, !3262}
!3306 = distinct !DISubprogram(name: "rpl_fseeko", scope: !565, file: !565, line: 28, type: !3307, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !3344)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!23, !3309, !3343, !23}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2527, line: 7, baseType: !3311)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !607, line: 49, size: 1728, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3311, file: !607, line: 51, baseType: !23, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3311, file: !607, line: 54, baseType: !30, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3311, file: !607, line: 55, baseType: !30, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3311, file: !607, line: 56, baseType: !30, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3311, file: !607, line: 57, baseType: !30, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3311, file: !607, line: 58, baseType: !30, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3311, file: !607, line: 59, baseType: !30, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3311, file: !607, line: 60, baseType: !30, size: 64, offset: 448)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3311, file: !607, line: 61, baseType: !30, size: 64, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3311, file: !607, line: 64, baseType: !30, size: 64, offset: 576)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3311, file: !607, line: 65, baseType: !30, size: 64, offset: 640)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3311, file: !607, line: 66, baseType: !30, size: 64, offset: 704)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3311, file: !607, line: 68, baseType: !622, size: 64, offset: 768)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3311, file: !607, line: 70, baseType: !3327, size: 64, offset: 832)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3311, file: !607, line: 72, baseType: !23, size: 32, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3311, file: !607, line: 73, baseType: !23, size: 32, offset: 928)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3311, file: !607, line: 74, baseType: !628, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3311, file: !607, line: 77, baseType: !73, size: 16, offset: 1024)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3311, file: !607, line: 78, baseType: !633, size: 8, offset: 1040)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3311, file: !607, line: 79, baseType: !635, size: 8, offset: 1048)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3311, file: !607, line: 81, baseType: !639, size: 64, offset: 1088)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3311, file: !607, line: 89, baseType: !642, size: 64, offset: 1152)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3311, file: !607, line: 91, baseType: !644, size: 64, offset: 1216)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3311, file: !607, line: 92, baseType: !647, size: 64, offset: 1280)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3311, file: !607, line: 93, baseType: !3327, size: 64, offset: 1344)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3311, file: !607, line: 94, baseType: !29, size: 64, offset: 1408)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3311, file: !607, line: 95, baseType: !74, size: 64, offset: 1472)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3311, file: !607, line: 96, baseType: !23, size: 32, offset: 1536)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3311, file: !607, line: 98, baseType: !654, size: 160, offset: 1568)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !602, line: 63, baseType: !628)
!3344 = !{!3345, !3346, !3347, !3348}
!3345 = !DILocalVariable(name: "fp", arg: 1, scope: !3306, file: !565, line: 28, type: !3309)
!3346 = !DILocalVariable(name: "offset", arg: 2, scope: !3306, file: !565, line: 28, type: !3343)
!3347 = !DILocalVariable(name: "whence", arg: 3, scope: !3306, file: !565, line: 28, type: !23)
!3348 = !DILocalVariable(name: "pos", scope: !3349, file: !565, line: 117, type: !3343)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !565, line: 113, column: 5)
!3350 = distinct !DILexicalBlock(scope: !3306, file: !565, line: 52, column: 7)
!3351 = !DILocation(line: 0, scope: !3306)
!3352 = !DILocation(line: 52, column: 11, scope: !3350)
!3353 = !{!905, !584, i64 16}
!3354 = !DILocation(line: 52, column: 31, scope: !3350)
!3355 = !{!905, !584, i64 8}
!3356 = !DILocation(line: 52, column: 24, scope: !3350)
!3357 = !DILocation(line: 53, column: 7, scope: !3350)
!3358 = !DILocation(line: 53, column: 14, scope: !3350)
!3359 = !DILocation(line: 53, column: 35, scope: !3350)
!3360 = !{!905, !584, i64 32}
!3361 = !DILocation(line: 53, column: 28, scope: !3350)
!3362 = !DILocation(line: 54, column: 7, scope: !3350)
!3363 = !DILocation(line: 54, column: 14, scope: !3350)
!3364 = !{!905, !584, i64 72}
!3365 = !DILocation(line: 54, column: 28, scope: !3350)
!3366 = !DILocation(line: 52, column: 7, scope: !3306)
!3367 = !DILocation(line: 117, column: 26, scope: !3349)
!3368 = !DILocation(line: 117, column: 19, scope: !3349)
!3369 = !DILocation(line: 0, scope: !3349)
!3370 = !DILocation(line: 118, column: 15, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3349, file: !565, line: 118, column: 11)
!3372 = !DILocation(line: 118, column: 11, scope: !3349)
!3373 = !DILocation(line: 129, column: 11, scope: !3349)
!3374 = !DILocation(line: 129, column: 18, scope: !3349)
!3375 = !DILocation(line: 130, column: 11, scope: !3349)
!3376 = !DILocation(line: 130, column: 19, scope: !3349)
!3377 = !{!905, !907, i64 144}
!3378 = !DILocation(line: 161, column: 7, scope: !3349)
!3379 = !DILocation(line: 163, column: 10, scope: !3306)
!3380 = !DILocation(line: 163, column: 3, scope: !3306)
!3381 = !DILocation(line: 164, column: 1, scope: !3306)
!3382 = !DISubprogram(name: "fseeko", scope: !602, file: !602, line: 712, type: !3383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!23, !3327, !630, !23}
