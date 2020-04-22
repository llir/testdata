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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !99
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !141
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !256
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !262
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !264
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !271
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !278
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !266
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !280
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !286
@.str.1.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1020 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1024, metadata !DIExpression()), !dbg !1025
  %2 = icmp eq i32 %0, 0, !dbg !1026
  br i1 %2, label %4, label %3, !dbg !1029

3:                                                ; preds = %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.usage, i64 0, i64 0)) #21, !dbg !1026
  unreachable, !dbg !1026

4:                                                ; preds = %1
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 5) #19, !dbg !1030
  %6 = load i8*, i8** @program_name, align 8, !dbg !1030, !tbaa !1031
  %7 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* %6, i8* %6) #19, !dbg !1030
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 5) #19, !dbg !1035
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1035, !tbaa !1031
  %10 = tail call i32 @fputs_unlocked(i8* %8, %struct._IO_FILE* %9), !dbg !1035
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), i32 5) #19, !dbg !1036
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1036, !tbaa !1031
  %13 = tail call i32 @fputs_unlocked(i8* %11, %struct._IO_FILE* %12), !dbg !1036
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #19, !dbg !1037
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1037, !tbaa !1031
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15), !dbg !1037
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #19, !dbg !1038
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1038, !tbaa !1031
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18), !dbg !1038
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 5) #19, !dbg !1039
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1039, !tbaa !1031
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21), !dbg !1039
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.8, i64 0, i64 0), i32 5) #19, !dbg !1040
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1040, !tbaa !1031
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24), !dbg !1040
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.9, i64 0, i64 0), i32 5) #19, !dbg !1041
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1041, !tbaa !1031
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27), !dbg !1041
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.10, i64 0, i64 0), i32 5) #19, !dbg !1042
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !1042
  tail call fastcc void @emit_ancillary_info(), !dbg !1043
  tail call void @exit(i32 0) #21, !dbg !1044
  unreachable, !dbg !1044
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !77 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !301 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @emit_ancillary_info() unnamed_addr #6 !dbg !1045 {
  %1 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), metadata !1048, metadata !DIExpression()), !dbg !1062
  %2 = bitcast [7 x %struct.infomap]* %1 to i8*, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %2) #19, !dbg !1063
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %1, metadata !1049, metadata !DIExpression()), !dbg !1064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %2, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false), !dbg !1064
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), metadata !1058, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %1, metadata !1059, metadata !DIExpression()), !dbg !1062
  %3 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %1, i64 0, i64 0, !dbg !1065
  call void @llvm.dbg.value(metadata %struct.infomap* %3, metadata !1059, metadata !DIExpression()), !dbg !1062
  br label %4, !dbg !1066

4:                                                ; preds = %0, %9
  %5 = phi i8* [ %12, %9 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %0 ]
  %6 = phi %struct.infomap* [ %10, %9 ], [ %3, %0 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %6, metadata !1059, metadata !DIExpression()), !dbg !1062
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* nonnull %5) #22, !dbg !1067
  %8 = icmp eq i32 %7, 0, !dbg !1067
  br i1 %8, label %14, label %9, !dbg !1066

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i64 1, !dbg !1068
  call void @llvm.dbg.value(metadata %struct.infomap* %10, metadata !1059, metadata !DIExpression()), !dbg !1062
  %11 = getelementptr inbounds %struct.infomap, %struct.infomap* %10, i64 0, i32 0, !dbg !1069
  %12 = load i8*, i8** %11, align 8, !dbg !1069, !tbaa !1070
  %13 = icmp eq i8* %12, null, !dbg !1072
  br i1 %13, label %14, label %4, !dbg !1073, !llvm.loop !1074

14:                                               ; preds = %9, %4
  %15 = phi %struct.infomap* [ %10, %9 ], [ %6, %4 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !1059, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata %struct.infomap* %15, metadata !1059, metadata !DIExpression()), !dbg !1062
  %16 = getelementptr inbounds %struct.infomap, %struct.infomap* %15, i64 0, i32 1, !dbg !1075
  %17 = load i8*, i8** %16, align 8, !dbg !1075, !tbaa !1077
  %18 = icmp eq i8* %17, null, !dbg !1078
  %19 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %17, !dbg !1079
  call void @llvm.dbg.value(metadata i8* %19, metadata !1058, metadata !DIExpression()), !dbg !1062
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #19, !dbg !1080
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #19, !dbg !1080
  %22 = tail call i8* @setlocale(i32 5, i8* null) #19, !dbg !1081
  call void @llvm.dbg.value(metadata i8* %22, metadata !1061, metadata !DIExpression()), !dbg !1062
  %23 = icmp eq i8* %22, null, !dbg !1082
  br i1 %23, label %31, label %24, !dbg !1084

24:                                               ; preds = %14
  %25 = tail call i32 @strncmp(i8* nonnull %22, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #22, !dbg !1085
  %26 = icmp eq i32 %25, 0, !dbg !1085
  br i1 %26, label %31, label %27, !dbg !1086

27:                                               ; preds = %24
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #19, !dbg !1087
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1087, !tbaa !1031
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1087
  br label %31, !dbg !1089

31:                                               ; preds = %24, %14, %27
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #19, !dbg !1090
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #19, !dbg !1090
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #19, !dbg !1091
  %35 = icmp eq i8* %19, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), !dbg !1091
  %36 = select i1 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), !dbg !1091
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* %19, i8* %36) #19, !dbg !1091
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %2) #19, !dbg !1092
  ret void, !dbg !1092
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !341 i8* @setlocale(i32, i8*) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #9 !dbg !1093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %1, metadata !1099, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 1, metadata !1100, metadata !DIExpression()), !dbg !1121
  %3 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0)) #19, !dbg !1122
  %4 = icmp ne i8* %3, null, !dbg !1122
  call void @llvm.dbg.value(metadata i1 %4, metadata !1101, metadata !DIExpression()), !dbg !1121
  br i1 %4, label %5, label %12, !dbg !1123

5:                                                ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !1124
  br i1 %6, label %7, label %12, !dbg !1125

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1126
  %9 = load i8*, i8** %8, align 8, !dbg !1126, !tbaa !1031
  %10 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #22, !dbg !1126
  %11 = icmp eq i32 %10, 0, !dbg !1126
  br label %12

12:                                               ; preds = %5, %7, %2
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i1 %13, metadata !1102, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1121
  %14 = load i8*, i8** %1, align 8, !dbg !1127, !tbaa !1031
  tail call void @set_program_name(i8* %14) #19, !dbg !1128
  %15 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #19, !dbg !1129
  %16 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #19, !dbg !1130
  %17 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #19, !dbg !1131
  %18 = tail call i32 @atexit(void ()* nonnull @close_stdout) #19, !dbg !1132
  %19 = icmp eq i32 %0, 2, !dbg !1133
  %20 = and i1 %19, %13, !dbg !1135
  br i1 %20, label %21, label %33, !dbg !1135

21:                                               ; preds = %12
  %22 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1136
  %23 = load i8*, i8** %22, align 8, !dbg !1136, !tbaa !1031
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %23, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #22, !dbg !1136
  %25 = icmp eq i32 %24, 0, !dbg !1136
  br i1 %25, label %26, label %27, !dbg !1139

26:                                               ; preds = %21
  tail call void @usage(i32 0) #23, !dbg !1140
  unreachable, !dbg !1140

27:                                               ; preds = %21
  %28 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %23, i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #22, !dbg !1141
  %29 = icmp eq i32 %28, 0, !dbg !1141
  br i1 %29, label %30, label %33, !dbg !1143

30:                                               ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1144, !tbaa !1031
  %32 = load i8*, i8** @Version, align 8, !dbg !1146, !tbaa !1031
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* null) #19, !dbg !1147
  br label %270, !dbg !1148

33:                                               ; preds = %27, %12
  %34 = add nsw i32 %0, -1, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %34, metadata !1098, metadata !DIExpression()), !dbg !1121
  %35 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1150
  call void @llvm.dbg.value(metadata i8** %35, metadata !1099, metadata !DIExpression()), !dbg !1121
  %36 = icmp sgt i32 %0, 1, !dbg !1151
  %37 = and i1 %13, %36, !dbg !1152
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %34, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 1, metadata !1100, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %35, metadata !1099, metadata !DIExpression()), !dbg !1121
  br i1 %37, label %38, label %88, !dbg !1152

38:                                               ; preds = %33
  %39 = add nsw i32 %0, -2, !dbg !1153
  %40 = zext i32 %39 to i64, !dbg !1153
  %41 = add nuw nsw i64 %40, 2, !dbg !1153
  %42 = getelementptr i8*, i8** %1, i64 %41, !dbg !1153
  br label %43, !dbg !1153

43:                                               ; preds = %38, %82
  %44 = phi i8 [ %84, %82 ], [ 0, %38 ]
  %45 = phi i32 [ %85, %82 ], [ %34, %38 ]
  %46 = phi i8 [ %83, %82 ], [ 1, %38 ]
  %47 = phi i8** [ %86, %82 ], [ %35, %38 ]
  call void @llvm.dbg.value(metadata i8 %44, metadata !1103, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %45, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %46, metadata !1100, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %47, metadata !1099, metadata !DIExpression()), !dbg !1121
  %48 = load i8*, i8** %47, align 8, !dbg !1154, !tbaa !1031
  %49 = load i8, i8* %48, align 1, !dbg !1155, !tbaa !1156
  %50 = icmp eq i8 %49, 45, !dbg !1157
  br i1 %50, label %51, label %88, !dbg !1153

51:                                               ; preds = %43
  %52 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %52, metadata !1104, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !1107, metadata !DIExpression()), !dbg !1159
  %53 = load i8, i8* %52, align 1, !dbg !1160, !tbaa !1156
  %54 = icmp eq i8 %53, 0, !dbg !1163
  br i1 %54, label %88, label %55, !dbg !1163

55:                                               ; preds = %51, %59
  %56 = phi i8 [ %62, %59 ], [ %53, %51 ]
  %57 = phi i64 [ %60, %59 ], [ 0, %51 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !1107, metadata !DIExpression()), !dbg !1159
  %58 = sext i8 %56 to i32, !dbg !1164
  switch i32 %58, label %88 [
    i32 101, label %59
    i32 69, label %59
    i32 110, label %59
  ], !dbg !1165

59:                                               ; preds = %55, %55, %55
  %60 = add i64 %57, 1, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %60, metadata !1107, metadata !DIExpression()), !dbg !1159
  %61 = getelementptr inbounds i8, i8* %52, i64 %60, !dbg !1160
  %62 = load i8, i8* %61, align 1, !dbg !1160, !tbaa !1156
  %63 = icmp eq i8 %62, 0, !dbg !1163
  br i1 %63, label %64, label %55, !dbg !1163, !llvm.loop !1167

64:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 %60, metadata !1107, metadata !DIExpression()), !dbg !1159
  %65 = icmp eq i64 %60, 0, !dbg !1169
  br i1 %65, label %88, label %66, !dbg !1171

66:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i8* %52, metadata !1104, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %44, metadata !1103, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %46, metadata !1100, metadata !DIExpression()), !dbg !1121
  br i1 %54, label %82, label %67, !dbg !1172

67:                                               ; preds = %66, %77
  %68 = phi i8 [ %80, %77 ], [ %53, %66 ]
  %69 = phi i8* [ %72, %77 ], [ %52, %66 ]
  %70 = phi i8 [ %79, %77 ], [ %44, %66 ]
  %71 = phi i8 [ %78, %77 ], [ %46, %66 ]
  call void @llvm.dbg.value(metadata i8* %69, metadata !1104, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %70, metadata !1103, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %71, metadata !1100, metadata !DIExpression()), !dbg !1121
  %72 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1173
  call void @llvm.dbg.value(metadata i8* %72, metadata !1104, metadata !DIExpression()), !dbg !1159
  %73 = sext i8 %68 to i32, !dbg !1174
  switch i32 %73, label %77 [
    i32 101, label %74
    i32 69, label %75
    i32 110, label %76
  ], !dbg !1175

74:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1121
  br label %77, !dbg !1176

75:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1121
  br label %77, !dbg !1178

76:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i8 0, metadata !1100, metadata !DIExpression()), !dbg !1121
  br label %77, !dbg !1179

77:                                               ; preds = %67, %76, %75, %74
  %78 = phi i8 [ %71, %67 ], [ 0, %76 ], [ %71, %75 ], [ %71, %74 ], !dbg !1121
  %79 = phi i8 [ %70, %67 ], [ %70, %76 ], [ 0, %75 ], [ 1, %74 ], !dbg !1121
  call void @llvm.dbg.value(metadata i8* %72, metadata !1104, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %79, metadata !1103, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %78, metadata !1100, metadata !DIExpression()), !dbg !1121
  %80 = load i8, i8* %72, align 1, !dbg !1180, !tbaa !1156
  %81 = icmp eq i8 %80, 0, !dbg !1172
  br i1 %81, label %82, label %67, !dbg !1172, !llvm.loop !1181

82:                                               ; preds = %77, %66
  %83 = phi i8 [ %46, %66 ], [ %78, %77 ], !dbg !1183
  %84 = phi i8 [ %44, %66 ], [ %79, %77 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8 %83, metadata !1100, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %84, metadata !1103, metadata !DIExpression()), !dbg !1121
  %85 = add nsw i32 %45, -1, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %85, metadata !1098, metadata !DIExpression()), !dbg !1121
  %86 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !1186
  call void @llvm.dbg.value(metadata i8** %86, metadata !1099, metadata !DIExpression()), !dbg !1121
  %87 = icmp sgt i32 %45, 1, !dbg !1151
  br i1 %87, label %43, label %88, !dbg !1187

88:                                               ; preds = %51, %43, %82, %64, %55, %33
  %89 = phi i8** [ %35, %33 ], [ %47, %55 ], [ %47, %51 ], [ %47, %43 ], [ %42, %82 ], [ %47, %64 ], !dbg !1150
  %90 = phi i8 [ 1, %33 ], [ %46, %55 ], [ %46, %51 ], [ %46, %43 ], [ %83, %82 ], [ %46, %64 ], !dbg !1183
  %91 = phi i32 [ %34, %33 ], [ %45, %55 ], [ %45, %51 ], [ %45, %43 ], [ 0, %82 ], [ %45, %64 ], !dbg !1149
  %92 = phi i8 [ 0, %33 ], [ %44, %55 ], [ %44, %51 ], [ %44, %43 ], [ %84, %82 ], [ %44, %64 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8 %92, metadata !1103, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %91, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %90, metadata !1100, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %89, metadata !1099, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.label(metadata !1119), !dbg !1188
  %93 = and i8 %92, 1, !dbg !1189
  %94 = icmp ne i8 %93, 0, !dbg !1189
  %95 = or i1 %4, %94, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %91, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %91, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %89, metadata !1099, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %89, metadata !1099, metadata !DIExpression()), !dbg !1121
  %96 = icmp sgt i32 %91, 0, !dbg !1191
  br i1 %95, label %98, label %97, !dbg !1190

97:                                               ; preds = %88
  br i1 %96, label %234, label %256, !dbg !1192

98:                                               ; preds = %88
  br i1 %96, label %99, label %256, !dbg !1194

99:                                               ; preds = %98, %233
  %100 = phi i32 [ %219, %233 ], [ %91, %98 ]
  %101 = phi i8** [ %220, %233 ], [ %89, %98 ]
  call void @llvm.dbg.value(metadata i32 %100, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %101, metadata !1099, metadata !DIExpression()), !dbg !1121
  %102 = load i8*, i8** %101, align 8, !dbg !1195, !tbaa !1031
  call void @llvm.dbg.value(metadata i8* %102, metadata !1108, metadata !DIExpression()), !dbg !1196
  br label %103, !dbg !1197

103:                                              ; preds = %215, %99
  %104 = phi i8* [ %102, %99 ], [ %204, %215 ], !dbg !1196
  call void @llvm.dbg.value(metadata i8* %104, metadata !1108, metadata !DIExpression()), !dbg !1196
  %105 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !1198
  call void @llvm.dbg.value(metadata i8* %105, metadata !1108, metadata !DIExpression()), !dbg !1196
  %106 = load i8, i8* %104, align 1, !dbg !1199, !tbaa !1156
  call void @llvm.dbg.value(metadata i8 %106, metadata !1112, metadata !DIExpression()), !dbg !1196
  switch i8 %106, label %203 [
    i8 0, label %218
    i8 92, label %107
  ], !dbg !1197

107:                                              ; preds = %103
  %108 = load i8, i8* %105, align 1, !dbg !1200, !tbaa !1156
  %109 = icmp eq i8 %108, 0, !dbg !1200
  br i1 %109, label %203, label %110, !dbg !1201

110:                                              ; preds = %107
  %111 = getelementptr inbounds i8, i8* %104, i64 2, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %111, metadata !1108, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %108, metadata !1112, metadata !DIExpression()), !dbg !1196
  switch i8 %108, label %192 [
    i8 97, label %112
    i8 98, label %113
    i8 99, label %270
    i8 101, label %114
    i8 102, label %115
    i8 110, label %116
    i8 114, label %117
    i8 116, label %118
    i8 118, label %119
    i8 120, label %120
    i8 48, label %165
    i8 49, label %171
    i8 50, label %171
    i8 51, label %171
    i8 52, label %171
    i8 53, label %171
    i8 54, label %171
    i8 55, label %171
    i8 92, label %203
  ], !dbg !1203

112:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 7, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1204

113:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 8, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1205

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 27, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1206

115:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 12, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1207

116:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 10, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1208

117:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 13, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1209

118:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 9, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1210

119:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 11, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1211

120:                                              ; preds = %110
  %121 = load i8, i8* %111, align 1, !dbg !1212, !tbaa !1156
  call void @llvm.dbg.value(metadata i8 %121, metadata !1113, metadata !DIExpression()), !dbg !1213
  %122 = tail call i16** @__ctype_b_loc() #24, !dbg !1214
  %123 = load i16*, i16** %122, align 8, !dbg !1214, !tbaa !1031
  %124 = zext i8 %121 to i64, !dbg !1214
  %125 = getelementptr inbounds i16, i16* %123, i64 %124, !dbg !1214
  %126 = load i16, i16* %125, align 2, !dbg !1214, !tbaa !1216
  %127 = and i16 %126, 4096, !dbg !1214
  %128 = icmp eq i16 %127, 0, !dbg !1214
  br i1 %128, label %192, label %129, !dbg !1218

129:                                              ; preds = %120
  %130 = getelementptr inbounds i8, i8* %104, i64 3, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %130, metadata !1108, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %121, metadata !1220, metadata !DIExpression()), !dbg !1225
  switch i8 %121, label %131 [
    i8 97, label %139
    i8 65, label %139
    i8 98, label %134
    i8 66, label %134
    i8 99, label %135
    i8 67, label %135
    i8 100, label %136
    i8 68, label %136
    i8 101, label %137
    i8 69, label %137
    i8 102, label %138
    i8 70, label %138
  ], !dbg !1227

131:                                              ; preds = %129
  %132 = zext i8 %121 to i32, !dbg !1228
  %133 = add nsw i32 %132, -48, !dbg !1229
  br label %139, !dbg !1231

134:                                              ; preds = %129, %129
  br label %139, !dbg !1232

135:                                              ; preds = %129, %129
  br label %139, !dbg !1233

136:                                              ; preds = %129, %129
  br label %139, !dbg !1234

137:                                              ; preds = %129, %129
  br label %139, !dbg !1235

138:                                              ; preds = %129, %129
  br label %139, !dbg !1236

139:                                              ; preds = %129, %129, %131, %134, %135, %136, %137, %138
  %140 = phi i32 [ %133, %131 ], [ 15, %138 ], [ 14, %137 ], [ 13, %136 ], [ 12, %135 ], [ 11, %134 ], [ 10, %129 ], [ 10, %129 ], !dbg !1237
  call void @llvm.dbg.value(metadata i32 %140, metadata !1112, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1196
  %141 = load i8, i8* %130, align 1, !dbg !1238, !tbaa !1156
  call void @llvm.dbg.value(metadata i8 %141, metadata !1113, metadata !DIExpression()), !dbg !1213
  %142 = zext i8 %141 to i64, !dbg !1239
  %143 = getelementptr inbounds i16, i16* %123, i64 %142, !dbg !1239
  %144 = load i16, i16* %143, align 2, !dbg !1239, !tbaa !1216
  %145 = and i16 %144, 4096, !dbg !1239
  %146 = icmp eq i16 %145, 0, !dbg !1239
  br i1 %146, label %161, label %147, !dbg !1241

147:                                              ; preds = %139
  %148 = getelementptr inbounds i8, i8* %104, i64 4, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %148, metadata !1108, metadata !DIExpression()), !dbg !1196
  %149 = shl nsw i32 %140, 4, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %141, metadata !1220, metadata !DIExpression()), !dbg !1245
  switch i8 %141, label %150 [
    i8 97, label %158
    i8 65, label %158
    i8 98, label %153
    i8 66, label %153
    i8 99, label %154
    i8 67, label %154
    i8 100, label %155
    i8 68, label %155
    i8 101, label %156
    i8 69, label %156
    i8 102, label %157
    i8 70, label %157
  ], !dbg !1247

150:                                              ; preds = %147
  %151 = zext i8 %141 to i32, !dbg !1248
  %152 = add nsw i32 %151, -48, !dbg !1249
  br label %158, !dbg !1250

153:                                              ; preds = %147, %147
  br label %158, !dbg !1251

154:                                              ; preds = %147, %147
  br label %158, !dbg !1252

155:                                              ; preds = %147, %147
  br label %158, !dbg !1253

156:                                              ; preds = %147, %147
  br label %158, !dbg !1254

157:                                              ; preds = %147, %147
  br label %158, !dbg !1255

158:                                              ; preds = %147, %147, %150, %153, %154, %155, %156, %157
  %159 = phi i32 [ %152, %150 ], [ 15, %157 ], [ 14, %156 ], [ 13, %155 ], [ 12, %154 ], [ 11, %153 ], [ 10, %147 ], [ 10, %147 ], !dbg !1256
  %160 = add i32 %159, %149, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %160, metadata !1112, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1196
  br label %161, !dbg !1258

161:                                              ; preds = %158, %139
  %162 = phi i8* [ %148, %158 ], [ %130, %139 ], !dbg !1213
  %163 = phi i32 [ %160, %158 ], [ %140, %139 ]
  %164 = trunc i32 %163 to i8, !dbg !1213
  call void @llvm.dbg.value(metadata i8 %164, metadata !1112, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %162, metadata !1108, metadata !DIExpression()), !dbg !1196
  br label %203

165:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i8 0, metadata !1112, metadata !DIExpression()), !dbg !1196
  %166 = load i8, i8* %111, align 1, !dbg !1259, !tbaa !1156
  %167 = and i8 %166, -8, !dbg !1261
  %168 = icmp eq i8 %167, 48, !dbg !1261
  br i1 %168, label %169, label %203, !dbg !1261

169:                                              ; preds = %165
  %170 = getelementptr inbounds i8, i8* %104, i64 3, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %170, metadata !1108, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %166, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %171, !dbg !1263

171:                                              ; preds = %110, %110, %110, %110, %110, %110, %110, %169
  %172 = phi i8* [ %111, %110 ], [ %111, %110 ], [ %111, %110 ], [ %111, %110 ], [ %111, %110 ], [ %111, %110 ], [ %111, %110 ], [ %170, %169 ], !dbg !1264
  %173 = phi i8 [ %108, %110 ], [ %108, %110 ], [ %108, %110 ], [ %108, %110 ], [ %108, %110 ], [ %108, %110 ], [ %108, %110 ], [ %166, %169 ], !dbg !1264
  call void @llvm.dbg.value(metadata i8 %173, metadata !1112, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %172, metadata !1108, metadata !DIExpression()), !dbg !1196
  %174 = add nsw i8 %173, -48, !dbg !1265
  call void @llvm.dbg.value(metadata i8 %174, metadata !1112, metadata !DIExpression()), !dbg !1196
  %175 = load i8, i8* %172, align 1, !dbg !1266, !tbaa !1156
  %176 = and i8 %175, -8, !dbg !1268
  %177 = icmp eq i8 %176, 48, !dbg !1268
  %178 = shl nuw nsw i8 %174, 3, !dbg !1268
  %179 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !1268
  %180 = add i8 %175, -48, !dbg !1268
  %181 = add i8 %180, %178, !dbg !1268
  %182 = select i1 %177, i8* %179, i8* %172, !dbg !1268
  %183 = select i1 %177, i8 %181, i8 %174, !dbg !1268
  call void @llvm.dbg.value(metadata i8 %183, metadata !1112, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %182, metadata !1108, metadata !DIExpression()), !dbg !1196
  %184 = load i8, i8* %182, align 1, !dbg !1269, !tbaa !1156
  %185 = and i8 %184, -8, !dbg !1271
  %186 = icmp eq i8 %185, 48, !dbg !1271
  br i1 %186, label %187, label %203, !dbg !1271

187:                                              ; preds = %171
  %188 = shl i8 %183, 3, !dbg !1272
  %189 = getelementptr inbounds i8, i8* %182, i64 1, !dbg !1273
  call void @llvm.dbg.value(metadata i8* %189, metadata !1108, metadata !DIExpression()), !dbg !1196
  %190 = add nsw i8 %184, -48, !dbg !1274
  %191 = add i8 %190, %188, !dbg !1275
  call void @llvm.dbg.value(metadata i8 %191, metadata !1112, metadata !DIExpression()), !dbg !1196
  br label %203, !dbg !1276

192:                                              ; preds = %120, %110
  call void @llvm.dbg.value(metadata i8 %108, metadata !1112, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %111, metadata !1108, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i32 92, metadata !1277, metadata !DIExpression()) #19, !dbg !1283
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1285, !tbaa !1031
  %194 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %193, i64 0, i32 5, !dbg !1285
  %195 = load i8*, i8** %194, align 8, !dbg !1285, !tbaa !1286
  %196 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %193, i64 0, i32 6, !dbg !1285
  %197 = load i8*, i8** %196, align 8, !dbg !1285, !tbaa !1290
  %198 = icmp ult i8* %195, %197, !dbg !1285
  br i1 %198, label %201, label %199, !dbg !1285, !prof !1291, !misexpect !1292

199:                                              ; preds = %192
  %200 = tail call i32 @__overflow(%struct._IO_FILE* %193, i32 92) #19, !dbg !1285
  br label %203, !dbg !1285

201:                                              ; preds = %192
  %202 = getelementptr inbounds i8, i8* %195, i64 1, !dbg !1285
  store i8* %202, i8** %194, align 8, !dbg !1285, !tbaa !1286
  store i8 92, i8* %195, align 1, !dbg !1285, !tbaa !1156
  br label %203, !dbg !1285

203:                                              ; preds = %201, %199, %161, %103, %107, %112, %113, %114, %115, %116, %117, %118, %119, %110, %165, %187, %171
  %204 = phi i8* [ %111, %110 ], [ %189, %187 ], [ %182, %171 ], [ %111, %165 ], [ %111, %119 ], [ %111, %118 ], [ %111, %117 ], [ %111, %116 ], [ %111, %115 ], [ %111, %114 ], [ %111, %113 ], [ %111, %112 ], [ %105, %107 ], [ %105, %103 ], [ %162, %161 ], [ %111, %199 ], [ %111, %201 ], !dbg !1196
  %205 = phi i8 [ %108, %110 ], [ %191, %187 ], [ %183, %171 ], [ 0, %165 ], [ 11, %119 ], [ 9, %118 ], [ 13, %117 ], [ 10, %116 ], [ 12, %115 ], [ 27, %114 ], [ 8, %113 ], [ 7, %112 ], [ 92, %107 ], [ %106, %103 ], [ %164, %161 ], [ %108, %199 ], [ %108, %201 ], !dbg !1196
  call void @llvm.dbg.value(metadata i8 %205, metadata !1112, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %204, metadata !1108, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %205, metadata !1277, metadata !DIExpression()) #19, !dbg !1293
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1295, !tbaa !1031
  %207 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %206, i64 0, i32 5, !dbg !1295
  %208 = load i8*, i8** %207, align 8, !dbg !1295, !tbaa !1286
  %209 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %206, i64 0, i32 6, !dbg !1295
  %210 = load i8*, i8** %209, align 8, !dbg !1295, !tbaa !1290
  %211 = icmp ult i8* %208, %210, !dbg !1295
  br i1 %211, label %216, label %212, !dbg !1295, !prof !1291, !misexpect !1292

212:                                              ; preds = %203
  %213 = zext i8 %205 to i32, !dbg !1296
  call void @llvm.dbg.value(metadata i32 %213, metadata !1277, metadata !DIExpression()) #19, !dbg !1293
  %214 = tail call i32 @__overflow(%struct._IO_FILE* %206, i32 %213) #19, !dbg !1295
  br label %215, !dbg !1295

215:                                              ; preds = %212, %216
  br label %103, !dbg !1196, !llvm.loop !1297

216:                                              ; preds = %203
  %217 = getelementptr inbounds i8, i8* %208, i64 1, !dbg !1295
  store i8* %217, i8** %207, align 8, !dbg !1295, !tbaa !1286
  store i8 %205, i8* %208, align 1, !dbg !1295, !tbaa !1156
  br label %215, !dbg !1295

218:                                              ; preds = %103
  %219 = add nsw i32 %100, -1, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %219, metadata !1098, metadata !DIExpression()), !dbg !1121
  %220 = getelementptr inbounds i8*, i8** %101, i64 1, !dbg !1300
  call void @llvm.dbg.value(metadata i8** %220, metadata !1099, metadata !DIExpression()), !dbg !1121
  %221 = icmp sgt i32 %100, 1, !dbg !1301
  br i1 %221, label %222, label %256, !dbg !1303

222:                                              ; preds = %218
  call void @llvm.dbg.value(metadata i32 32, metadata !1277, metadata !DIExpression()) #19, !dbg !1304
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1306, !tbaa !1031
  %224 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %223, i64 0, i32 5, !dbg !1306
  %225 = load i8*, i8** %224, align 8, !dbg !1306, !tbaa !1286
  %226 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %223, i64 0, i32 6, !dbg !1306
  %227 = load i8*, i8** %226, align 8, !dbg !1306, !tbaa !1290
  %228 = icmp ult i8* %225, %227, !dbg !1306
  br i1 %228, label %231, label %229, !dbg !1306, !prof !1291, !misexpect !1292

229:                                              ; preds = %222
  %230 = tail call i32 @__overflow(%struct._IO_FILE* %223, i32 32) #19, !dbg !1306
  br label %233, !dbg !1306

231:                                              ; preds = %222
  %232 = getelementptr inbounds i8, i8* %225, i64 1, !dbg !1306
  store i8* %232, i8** %224, align 8, !dbg !1306, !tbaa !1286
  store i8 32, i8* %225, align 1, !dbg !1306, !tbaa !1156
  br label %233, !dbg !1306

233:                                              ; preds = %231, %229
  br label %99, !dbg !1121

234:                                              ; preds = %97, %254
  %235 = phi i32 [ %240, %254 ], [ %91, %97 ]
  %236 = phi i8** [ %241, %254 ], [ %89, %97 ]
  call void @llvm.dbg.value(metadata i32 %235, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %236, metadata !1099, metadata !DIExpression()), !dbg !1121
  %237 = load i8*, i8** %236, align 8, !dbg !1307, !tbaa !1031
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1307, !tbaa !1031
  %239 = tail call i32 @fputs_unlocked(i8* %237, %struct._IO_FILE* %238), !dbg !1307
  %240 = add nsw i32 %235, -1, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %240, metadata !1098, metadata !DIExpression()), !dbg !1121
  %241 = getelementptr inbounds i8*, i8** %236, i64 1, !dbg !1310
  call void @llvm.dbg.value(metadata i8** %241, metadata !1099, metadata !DIExpression()), !dbg !1121
  %242 = icmp eq i32 %235, 1, !dbg !1311
  br i1 %242, label %256, label %243, !dbg !1313

243:                                              ; preds = %234
  call void @llvm.dbg.value(metadata i32 32, metadata !1277, metadata !DIExpression()) #19, !dbg !1314
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1316, !tbaa !1031
  %245 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %244, i64 0, i32 5, !dbg !1316
  %246 = load i8*, i8** %245, align 8, !dbg !1316, !tbaa !1286
  %247 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %244, i64 0, i32 6, !dbg !1316
  %248 = load i8*, i8** %247, align 8, !dbg !1316, !tbaa !1290
  %249 = icmp ult i8* %246, %248, !dbg !1316
  br i1 %249, label %252, label %250, !dbg !1316, !prof !1291, !misexpect !1292

250:                                              ; preds = %243
  %251 = tail call i32 @__overflow(%struct._IO_FILE* %244, i32 32) #19, !dbg !1316
  br label %254, !dbg !1316

252:                                              ; preds = %243
  %253 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1316
  store i8* %253, i8** %245, align 8, !dbg !1316, !tbaa !1286
  store i8 32, i8* %246, align 1, !dbg !1316, !tbaa !1156
  br label %254, !dbg !1316

254:                                              ; preds = %252, %250
  call void @llvm.dbg.value(metadata i32 %240, metadata !1098, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8** %241, metadata !1099, metadata !DIExpression()), !dbg !1121
  %255 = icmp sgt i32 %235, 1, !dbg !1317
  br i1 %255, label %234, label %256, !dbg !1192, !llvm.loop !1318

256:                                              ; preds = %234, %254, %218, %97, %98
  %257 = and i8 %90, 1, !dbg !1320
  %258 = icmp eq i8 %257, 0, !dbg !1320
  br i1 %258, label %270, label %259, !dbg !1322

259:                                              ; preds = %256
  call void @llvm.dbg.value(metadata i32 10, metadata !1277, metadata !DIExpression()) #19, !dbg !1323
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1325, !tbaa !1031
  %261 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %260, i64 0, i32 5, !dbg !1325
  %262 = load i8*, i8** %261, align 8, !dbg !1325, !tbaa !1286
  %263 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %260, i64 0, i32 6, !dbg !1325
  %264 = load i8*, i8** %263, align 8, !dbg !1325, !tbaa !1290
  %265 = icmp ult i8* %262, %264, !dbg !1325
  br i1 %265, label %268, label %266, !dbg !1325, !prof !1291, !misexpect !1292

266:                                              ; preds = %259
  %267 = tail call i32 @__overflow(%struct._IO_FILE* %260, i32 10) #19, !dbg !1325
  br label %270, !dbg !1325

268:                                              ; preds = %259
  %269 = getelementptr inbounds i8, i8* %262, i64 1, !dbg !1325
  store i8* %269, i8** %261, align 8, !dbg !1325, !tbaa !1286
  store i8 10, i8* %262, align 1, !dbg !1325, !tbaa !1156
  br label %270, !dbg !1325

270:                                              ; preds = %110, %268, %266, %256, %30
  ret i32 0, !dbg !1326
}

; Function Attrs: nofree nounwind readonly
declare !dbg !336 i8* @getenv(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !345 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !348 i8* @textdomain(i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !349 i32 @atexit(void ()*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1329, metadata !DIExpression()), !dbg !1330
  store i8* %0, i8** @file_name, align 8, !dbg !1331, !tbaa !1031
  ret void, !dbg !1332
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1333 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1337, metadata !DIExpression()), !dbg !1338
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1339, !tbaa !1340
  ret void, !dbg !1342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #9 !dbg !1343 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1348, !tbaa !1031
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #19, !dbg !1349
  %3 = icmp eq i32 %2, 0, !dbg !1350
  br i1 %3, label %22, label %4, !dbg !1351

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1352, !tbaa !1340, !range !1353
  %6 = icmp eq i8 %5, 0, !dbg !1352
  br i1 %6, label %11, label %7, !dbg !1354

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1355
  %9 = load i32, i32* %8, align 4, !dbg !1355, !tbaa !1356
  %10 = icmp eq i32 %9, 32, !dbg !1357
  br i1 %10, label %22, label %11, !dbg !1358

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 5) #19, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %12, metadata !1345, metadata !DIExpression()), !dbg !1360
  %13 = load i8*, i8** @file_name, align 8, !dbg !1361, !tbaa !1031
  %14 = icmp eq i8* %13, null, !dbg !1361
  %15 = tail call i32* @__errno_location() #24, !dbg !1363
  %16 = load i32, i32* %15, align 4, !dbg !1363, !tbaa !1356
  br i1 %14, label %19, label %17, !dbg !1364

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #19, !dbg !1365
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.41, i64 0, i64 0), i8* %18, i8* %12) #19, !dbg !1366
  br label %20, !dbg !1366

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.42, i64 0, i64 0), i8* %12) #19, !dbg !1367
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1368, !tbaa !1356
  tail call void @_exit(i32 %21) #21, !dbg !1369
  unreachable, !dbg !1369

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1370, !tbaa !1031
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #19, !dbg !1372
  %25 = icmp eq i32 %24, 0, !dbg !1373
  br i1 %25, label %28, label %26, !dbg !1374

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1375, !tbaa !1356
  tail call void @_exit(i32 %27) #21, !dbg !1376
  unreachable, !dbg !1376

28:                                               ; preds = %22
  ret void, !dbg !1377
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #9 !dbg !1378 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1380, metadata !DIExpression()), !dbg !1383
  %2 = icmp eq i8* %0, null, !dbg !1384
  br i1 %2, label %3, label %6, !dbg !1386

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1387, !tbaa !1031
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1389
  tail call void @abort() #21, !dbg !1390
  unreachable, !dbg !1390

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1391
  call void @llvm.dbg.value(metadata i8* %7, metadata !1381, metadata !DIExpression()), !dbg !1383
  %8 = icmp eq i8* %7, null, !dbg !1392
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1393
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %10, metadata !1382, metadata !DIExpression()), !dbg !1383
  %11 = ptrtoint i8* %10 to i64, !dbg !1394
  %12 = ptrtoint i8* %0 to i64, !dbg !1394
  %13 = sub i64 %11, %12, !dbg !1394
  %14 = icmp sgt i64 %13, 6, !dbg !1396
  br i1 %14, label %15, label %24, !dbg !1397

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1398
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #22, !dbg !1399
  %18 = icmp eq i32 %17, 0, !dbg !1400
  br i1 %18, label %19, label %24, !dbg !1401

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1380, metadata !DIExpression()), !dbg !1383
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #22, !dbg !1402
  %21 = icmp eq i32 %20, 0, !dbg !1405
  br i1 %21, label %22, label %24, !dbg !1406

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %23, metadata !1380, metadata !DIExpression()), !dbg !1383
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1409, !tbaa !1031
  br label %24, !dbg !1410

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1380, metadata !DIExpression()), !dbg !1383
  store i8* %25, i8** @program_name, align 8, !dbg !1411, !tbaa !1031
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1412, !tbaa !1031
  ret void, !dbg !1413
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #9 !dbg !1414 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1419, metadata !DIExpression()), !dbg !1422
  %2 = tail call i32* @__errno_location() #24, !dbg !1423
  %3 = load i32, i32* %2, align 4, !dbg !1423, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %3, metadata !1420, metadata !DIExpression()), !dbg !1422
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1424
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1424
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1424
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #19, !dbg !1425
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1425
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1421, metadata !DIExpression()), !dbg !1422
  store i32 %3, i32* %2, align 4, !dbg !1426, !tbaa !1356
  ret %struct.quoting_options* %8, !dbg !1427
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1428 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1432, metadata !DIExpression()), !dbg !1433
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1434
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1434
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1435
  %5 = load i32, i32* %4, align 8, !dbg !1435, !tbaa !1436
  ret i32 %5, !dbg !1438
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1439 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1443, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i32 %1, metadata !1444, metadata !DIExpression()), !dbg !1445
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1446
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1446
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1447
  store i32 %1, i32* %5, align 8, !dbg !1448, !tbaa !1436
  ret void, !dbg !1449
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1450 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1454, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %1, metadata !1455, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %2, metadata !1456, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i8 %1, metadata !1457, metadata !DIExpression()), !dbg !1462
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1463
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1463
  %6 = lshr i8 %1, 5, !dbg !1464
  %7 = zext i8 %6 to i64, !dbg !1464
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1465
  call void @llvm.dbg.value(metadata i32* %8, metadata !1458, metadata !DIExpression()), !dbg !1462
  %9 = and i8 %1, 31, !dbg !1466
  %10 = zext i8 %9 to i32, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %10, metadata !1460, metadata !DIExpression()), !dbg !1462
  %11 = load i32, i32* %8, align 4, !dbg !1467, !tbaa !1356
  %12 = lshr i32 %11, %10, !dbg !1468
  %13 = and i32 %12, 1, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %13, metadata !1461, metadata !DIExpression()), !dbg !1462
  %14 = and i32 %2, 1, !dbg !1470
  %15 = xor i32 %13, %14, !dbg !1471
  %16 = shl i32 %15, %10, !dbg !1472
  %17 = xor i32 %16, %11, !dbg !1473
  store i32 %17, i32* %8, align 4, !dbg !1473, !tbaa !1356
  ret i32 %13, !dbg !1474
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1475 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1479, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i32 %1, metadata !1480, metadata !DIExpression()), !dbg !1482
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1483
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1479, metadata !DIExpression()), !dbg !1482
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1486
  %6 = load i32, i32* %5, align 4, !dbg !1486, !tbaa !1487
  call void @llvm.dbg.value(metadata i32 %6, metadata !1481, metadata !DIExpression()), !dbg !1482
  store i32 %1, i32* %5, align 4, !dbg !1488, !tbaa !1487
  ret i32 %6, !dbg !1489
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !1490 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1494, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %1, metadata !1495, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %2, metadata !1496, metadata !DIExpression()), !dbg !1497
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1498
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1494, metadata !DIExpression()), !dbg !1497
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1501
  store i32 10, i32* %6, align 8, !dbg !1502, !tbaa !1436
  %7 = icmp ne i8* %1, null, !dbg !1503
  %8 = icmp ne i8* %2, null, !dbg !1505
  %9 = and i1 %7, %8, !dbg !1506
  br i1 %9, label %11, label %10, !dbg !1506

10:                                               ; preds = %3
  tail call void @abort() #21, !dbg !1507
  unreachable, !dbg !1507

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1508
  store i8* %1, i8** %12, align 8, !dbg !1509, !tbaa !1510
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1511
  store i8* %2, i8** %13, align 8, !dbg !1512, !tbaa !1513
  ret void, !dbg !1514
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #9 !dbg !1515 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1519, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %1, metadata !1520, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* %2, metadata !1521, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i64 %3, metadata !1522, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1523, metadata !DIExpression()), !dbg !1527
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1528
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1528
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1524, metadata !DIExpression()), !dbg !1527
  %8 = tail call i32* @__errno_location() #24, !dbg !1529
  %9 = load i32, i32* %8, align 4, !dbg !1529, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %9, metadata !1525, metadata !DIExpression()), !dbg !1527
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1530
  %11 = load i32, i32* %10, align 8, !dbg !1530, !tbaa !1436
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1531
  %13 = load i32, i32* %12, align 4, !dbg !1531, !tbaa !1487
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1532
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1533
  %16 = load i8*, i8** %15, align 8, !dbg !1533, !tbaa !1510
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1534
  %18 = load i8*, i8** %17, align 8, !dbg !1534, !tbaa !1513
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %19, metadata !1526, metadata !DIExpression()), !dbg !1527
  store i32 %9, i32* %8, align 4, !dbg !1536, !tbaa !1356
  ret i64 %19, !dbg !1537
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #9 !dbg !1538 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1544, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %1, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %2, metadata !1546, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %3, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %4, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %5, metadata !1549, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32* %6, metadata !1550, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %7, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %8, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* null, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1557, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1558, metadata !DIExpression()), !dbg !1602
  %13 = tail call i64 @__ctype_get_mb_cur_max() #19, !dbg !1603
  %14 = icmp eq i64 %13, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i1 %14, metadata !1559, metadata !DIExpression()), !dbg !1602
  %15 = lshr i32 %5, 1, !dbg !1605
  %16 = trunc i32 %15 to i8, !dbg !1605
  %17 = and i8 %16, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i8 %17, metadata !1560, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1563, metadata !DIExpression()), !dbg !1602
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1606
  %19 = and i32 %5, 4, !dbg !1608
  %20 = icmp eq i32 %19, 0, !dbg !1608
  %21 = and i32 %5, 1, !dbg !1611
  %22 = icmp eq i32 %21, 0, !dbg !1611
  %23 = bitcast i64* %10 to i8*, !dbg !1614
  %24 = bitcast i32* %12 to i8*, !dbg !1615
  %25 = icmp eq i32* %6, null, !dbg !1616
  br label %26, !dbg !1618

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1619
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1620
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1621
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1622
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1602
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1623
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1624
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1625
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %38, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %37, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %36, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %35, metadata !1560, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %34, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %33, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %32, metadata !1557, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %31, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %30, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %29, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %28, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %27, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1596), !dbg !1626
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
  ], !dbg !1627

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %35, metadata !1560, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 5, metadata !1548, metadata !DIExpression()), !dbg !1602
  br label %92, !dbg !1628

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1560, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 5, metadata !1548, metadata !DIExpression()), !dbg !1602
  %42 = and i8 %35, 1, !dbg !1630
  %43 = icmp eq i8 %42, 0, !dbg !1630
  br i1 %43, label %44, label %92, !dbg !1628

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1632
  br i1 %45, label %92, label %46, !dbg !1635

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1632, !tbaa !1156
  br label %92, !dbg !1632

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %27), !dbg !1636
  call void @llvm.dbg.value(metadata i8* %48, metadata !1551, metadata !DIExpression()), !dbg !1602
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %27), !dbg !1640
  call void @llvm.dbg.value(metadata i8* %49, metadata !1552, metadata !DIExpression()), !dbg !1602
  br label %50, !dbg !1641

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %51, metadata !1551, metadata !DIExpression()), !dbg !1602
  %53 = and i8 %35, 1, !dbg !1642
  %54 = icmp eq i8 %53, 0, !dbg !1642
  br i1 %54, label %55, label %70, !dbg !1644

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1554, metadata !DIExpression()), !dbg !1602
  %56 = load i8, i8* %51, align 1, !dbg !1645, !tbaa !1156
  %57 = icmp eq i8 %56, 0, !dbg !1648
  br i1 %57, label %70, label %58, !dbg !1648

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %61, metadata !1554, metadata !DIExpression()), !dbg !1602
  %62 = icmp ult i64 %61, %39, !dbg !1649
  br i1 %62, label %63, label %65, !dbg !1652

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1649
  store i8 %59, i8* %64, align 1, !dbg !1649, !tbaa !1156
  br label %65, !dbg !1649

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %66, metadata !1554, metadata !DIExpression()), !dbg !1602
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %67, metadata !1556, metadata !DIExpression()), !dbg !1602
  %68 = load i8, i8* %67, align 1, !dbg !1645, !tbaa !1156
  %69 = icmp eq i8 %68, 0, !dbg !1648
  br i1 %69, label %70, label %58, !dbg !1648, !llvm.loop !1654

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1656
  call void @llvm.dbg.value(metadata i64 %71, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %52, metadata !1556, metadata !DIExpression()), !dbg !1602
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %72, metadata !1557, metadata !DIExpression()), !dbg !1602
  br label %92, !dbg !1658

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1602
  br label %74, !dbg !1659

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %75, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1602
  br label %76, !dbg !1660

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1622
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %78, metadata !1560, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %77, metadata !1558, metadata !DIExpression()), !dbg !1602
  %79 = and i8 %78, 1, !dbg !1661
  %80 = icmp eq i8 %79, 0, !dbg !1661
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1663
  br label %82, !dbg !1663

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1602
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1605
  call void @llvm.dbg.value(metadata i8 %84, metadata !1560, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %83, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  %85 = and i8 %84, 1, !dbg !1664
  %86 = icmp eq i8 %85, 0, !dbg !1664
  br i1 %86, label %87, label %92, !dbg !1666

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1667
  br i1 %88, label %92, label %89, !dbg !1670

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1667, !tbaa !1156
  br label %92, !dbg !1667

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1560, metadata !DIExpression()), !dbg !1602
  br label %92, !dbg !1671

91:                                               ; preds = %26
  call void @abort() #21, !dbg !1672
  unreachable, !dbg !1672

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1656
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %40 ], !dbg !1602
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1602
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1602
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %100, metadata !1560, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %98, metadata !1557, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %96, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %93, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 0, metadata !1553, metadata !DIExpression()), !dbg !1602
  %101 = and i8 %99, 1, !dbg !1673
  %102 = icmp ne i8 %101, 0, !dbg !1673
  %103 = icmp ne i32 %93, 2, !dbg !1673
  %104 = and i1 %103, %102, !dbg !1673
  %105 = icmp ne i64 %98, 0, !dbg !1673
  %106 = and i1 %105, %104, !dbg !1673
  %107 = icmp ugt i64 %98, 1, !dbg !1673
  %108 = and i8 %100, 1, !dbg !1675
  %109 = icmp eq i8 %108, 0, !dbg !1675
  %110 = icmp eq i32 %93, 2, !dbg !1678
  %111 = or i1 %103, %109, !dbg !1680
  %112 = icmp ne i8 %108, 0, !dbg !1682
  %113 = and i1 %110, %112, !dbg !1682
  %114 = xor i1 %102, true, !dbg !1683
  %115 = xor i1 %104, true, !dbg !1616
  %116 = and i1 %109, %115, !dbg !1616
  %117 = or i1 %25, %116, !dbg !1616
  %118 = and i8 %99, %100, !dbg !1684
  %119 = and i8 %118, 1, !dbg !1684
  %120 = icmp ne i8 %119, 0, !dbg !1684
  %121 = and i1 %120, %105, !dbg !1684
  br label %122, !dbg !1686

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1687
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1656
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1619
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1623
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1624
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1625
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %126, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %123, metadata !1553, metadata !DIExpression()), !dbg !1602
  %131 = icmp eq i64 %126, -1, !dbg !1688
  br i1 %131, label %132, label %136, !dbg !1689

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1690
  %134 = load i8, i8* %133, align 1, !dbg !1690, !tbaa !1156
  %135 = icmp eq i8 %134, 0, !dbg !1691
  br i1 %135, label %581, label %138, !dbg !1692

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1693
  br i1 %137, label %581, label %138, !dbg !1692

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1569, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 0, metadata !1570, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 0, metadata !1571, metadata !DIExpression()), !dbg !1694
  br i1 %106, label %139, label %154, !dbg !1695

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1696
  %141 = and i1 %107, %131, !dbg !1697
  br i1 %141, label %142, label %144, !dbg !1697

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %143, metadata !1547, metadata !DIExpression()), !dbg !1602
  br label %144, !dbg !1699

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1547, metadata !DIExpression()), !dbg !1602
  %146 = icmp ugt i64 %140, %145, !dbg !1700
  br i1 %146, label %154, label %147, !dbg !1701

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1702
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1703
  %150 = icmp ne i32 %149, 0, !dbg !1704
  %151 = or i1 %150, %109, !dbg !1705
  %152 = xor i1 %150, true, !dbg !1705
  %153 = zext i1 %152 to i8, !dbg !1705
  br i1 %151, label %154, label %639, !dbg !1705

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1694
  call void @llvm.dbg.value(metadata i8 %156, metadata !1569, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %155, metadata !1547, metadata !DIExpression()), !dbg !1602
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1706
  %158 = load i8, i8* %157, align 1, !dbg !1706, !tbaa !1156
  call void @llvm.dbg.value(metadata i8 %158, metadata !1564, metadata !DIExpression()), !dbg !1694
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
    i8 37, label %463
    i8 43, label %463
    i8 44, label %463
    i8 45, label %463
    i8 46, label %463
    i8 47, label %463
    i8 48, label %463
    i8 49, label %463
    i8 50, label %463
    i8 51, label %463
    i8 52, label %463
    i8 53, label %463
    i8 54, label %463
    i8 55, label %463
    i8 56, label %463
    i8 57, label %463
    i8 58, label %463
    i8 65, label %463
    i8 66, label %463
    i8 67, label %463
    i8 68, label %463
    i8 69, label %463
    i8 70, label %463
    i8 71, label %463
    i8 72, label %463
    i8 73, label %463
    i8 74, label %463
    i8 75, label %463
    i8 76, label %463
    i8 77, label %463
    i8 78, label %463
    i8 79, label %463
    i8 80, label %463
    i8 81, label %463
    i8 82, label %463
    i8 83, label %463
    i8 84, label %463
    i8 85, label %463
    i8 86, label %463
    i8 87, label %463
    i8 88, label %463
    i8 89, label %463
    i8 90, label %463
    i8 93, label %463
    i8 95, label %463
    i8 97, label %463
    i8 98, label %463
    i8 99, label %463
    i8 100, label %463
    i8 101, label %463
    i8 102, label %463
    i8 103, label %463
    i8 104, label %463
    i8 105, label %463
    i8 106, label %463
    i8 107, label %463
    i8 108, label %463
    i8 109, label %463
    i8 110, label %463
    i8 111, label %463
    i8 112, label %463
    i8 113, label %463
    i8 114, label %463
    i8 115, label %463
    i8 116, label %463
    i8 117, label %463
    i8 118, label %463
    i8 119, label %463
    i8 120, label %463
    i8 121, label %463
    i8 122, label %463
  ], !dbg !1707

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1708

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1709

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1570, metadata !DIExpression()), !dbg !1694
  %162 = and i8 %127, 1, !dbg !1712
  %163 = icmp eq i8 %162, 0, !dbg !1712
  %164 = and i1 %110, %163, !dbg !1712
  br i1 %164, label %165, label %181, !dbg !1712

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1714
  br i1 %166, label %167, label %169, !dbg !1718

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1714
  store i8 39, i8* %168, align 1, !dbg !1714, !tbaa !1156
  br label %169, !dbg !1714

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %170, metadata !1554, metadata !DIExpression()), !dbg !1602
  %171 = icmp ult i64 %170, %130, !dbg !1719
  br i1 %171, label %172, label %174, !dbg !1722

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1719
  store i8 36, i8* %173, align 1, !dbg !1719, !tbaa !1156
  br label %174, !dbg !1719

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %175, metadata !1554, metadata !DIExpression()), !dbg !1602
  %176 = icmp ult i64 %175, %130, !dbg !1723
  br i1 %176, label %177, label %179, !dbg !1726

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1723
  store i8 39, i8* %178, align 1, !dbg !1723, !tbaa !1156
  br label %179, !dbg !1723

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %180, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1602
  br label %181, !dbg !1727

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1602
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %183, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %182, metadata !1554, metadata !DIExpression()), !dbg !1602
  %184 = icmp ult i64 %182, %130, !dbg !1728
  br i1 %184, label %185, label %187, !dbg !1731

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1728
  store i8 92, i8* %186, align 1, !dbg !1728, !tbaa !1156
  br label %187, !dbg !1728

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %188, metadata !1554, metadata !DIExpression()), !dbg !1602
  br i1 %103, label %189, label %463, !dbg !1732

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1734
  %191 = icmp ult i64 %190, %155, !dbg !1735
  br i1 %191, label %192, label %463, !dbg !1736

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1737
  %194 = load i8, i8* %193, align 1, !dbg !1737, !tbaa !1156
  %195 = add i8 %194, -48, !dbg !1738
  %196 = icmp ult i8 %195, 10, !dbg !1738
  br i1 %196, label %197, label %463, !dbg !1738

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1739
  br i1 %198, label %199, label %201, !dbg !1743

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1739
  store i8 48, i8* %200, align 1, !dbg !1739, !tbaa !1156
  br label %201, !dbg !1739

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %202, metadata !1554, metadata !DIExpression()), !dbg !1602
  %203 = icmp ult i64 %202, %130, !dbg !1744
  br i1 %203, label %204, label %206, !dbg !1747

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1744
  store i8 48, i8* %205, align 1, !dbg !1744, !tbaa !1156
  br label %206, !dbg !1744

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %207, metadata !1554, metadata !DIExpression()), !dbg !1602
  br label %463, !dbg !1748

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1749

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1750

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1751

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1752

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1753
  %214 = icmp ult i64 %213, %155, !dbg !1754
  br i1 %214, label %215, label %463, !dbg !1755

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1756
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1757
  %218 = load i8, i8* %217, align 1, !dbg !1757, !tbaa !1156
  %219 = icmp eq i8 %218, 63, !dbg !1758
  br i1 %219, label %220, label %463, !dbg !1759

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1760
  %222 = load i8, i8* %221, align 1, !dbg !1760, !tbaa !1156
  %223 = sext i8 %222 to i32, !dbg !1760
  switch i32 %223, label %463 [
    i32 33, label %224
    i32 39, label %224
    i32 40, label %224
    i32 41, label %224
    i32 45, label %224
    i32 47, label %224
    i32 60, label %224
    i32 61, label %224
    i32 62, label %224
  ], !dbg !1761

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1762

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1564, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %213, metadata !1553, metadata !DIExpression()), !dbg !1602
  %226 = icmp ult i64 %124, %130, !dbg !1764
  br i1 %226, label %227, label %229, !dbg !1767

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1764
  store i8 63, i8* %228, align 1, !dbg !1764, !tbaa !1156
  br label %229, !dbg !1764

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %230, metadata !1554, metadata !DIExpression()), !dbg !1602
  %231 = icmp ult i64 %230, %130, !dbg !1768
  br i1 %231, label %232, label %234, !dbg !1771

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1768
  store i8 34, i8* %233, align 1, !dbg !1768, !tbaa !1156
  br label %234, !dbg !1768

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %235, metadata !1554, metadata !DIExpression()), !dbg !1602
  %236 = icmp ult i64 %235, %130, !dbg !1772
  br i1 %236, label %237, label %239, !dbg !1775

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1772
  store i8 34, i8* %238, align 1, !dbg !1772, !tbaa !1156
  br label %239, !dbg !1772

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %240, metadata !1554, metadata !DIExpression()), !dbg !1602
  %241 = icmp ult i64 %240, %130, !dbg !1776
  br i1 %241, label %242, label %244, !dbg !1779

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1776
  store i8 63, i8* %243, align 1, !dbg !1776, !tbaa !1156
  br label %244, !dbg !1776

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %245, metadata !1554, metadata !DIExpression()), !dbg !1602
  br label %463, !dbg !1780

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1568, metadata !DIExpression()), !dbg !1694
  br label %256, !dbg !1781

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1568, metadata !DIExpression()), !dbg !1694
  br label %256, !dbg !1782

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1568, metadata !DIExpression()), !dbg !1694
  br label %254, !dbg !1783

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1568, metadata !DIExpression()), !dbg !1694
  br label %254, !dbg !1784

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1568, metadata !DIExpression()), !dbg !1694
  br label %256, !dbg !1785

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1568, metadata !DIExpression()), !dbg !1694
  br i1 %110, label %252, label %253, !dbg !1786

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1787

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1790

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1791
  call void @llvm.dbg.value(metadata i8 %255, metadata !1568, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.label(metadata !1597), !dbg !1792
  br i1 %111, label %256, label %625, !dbg !1793

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1791
  call void @llvm.dbg.value(metadata i8 %257, metadata !1568, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.label(metadata !1598), !dbg !1795
  br i1 %102, label %488, label %463, !dbg !1796

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1797

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1798, !tbaa !1156
  %261 = icmp eq i8 %260, 0, !dbg !1799
  br i1 %261, label %262, label %463, !dbg !1800

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1801
  br i1 %263, label %264, label %463, !dbg !1803

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1571, metadata !DIExpression()), !dbg !1694
  br label %265, !dbg !1804

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1694
  call void @llvm.dbg.value(metadata i8 %266, metadata !1571, metadata !DIExpression()), !dbg !1694
  br i1 %111, label %463, label %625, !dbg !1805

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1571, metadata !DIExpression()), !dbg !1694
  br i1 %110, label %268, label %463, !dbg !1806

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1807

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1809
  %271 = icmp ne i64 %125, 0, !dbg !1811
  %272 = or i1 %271, %270, !dbg !1812
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1812
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %274, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %273, metadata !1555, metadata !DIExpression()), !dbg !1602
  %275 = icmp ult i64 %124, %274, !dbg !1813
  br i1 %275, label %276, label %278, !dbg !1816

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1813
  store i8 39, i8* %277, align 1, !dbg !1813, !tbaa !1156
  br label %278, !dbg !1813

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %279, metadata !1554, metadata !DIExpression()), !dbg !1602
  %280 = icmp ult i64 %279, %274, !dbg !1817
  br i1 %280, label %281, label %283, !dbg !1820

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1817
  store i8 92, i8* %282, align 1, !dbg !1817, !tbaa !1156
  br label %283, !dbg !1817

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %284, metadata !1554, metadata !DIExpression()), !dbg !1602
  %285 = icmp ult i64 %284, %274, !dbg !1821
  br i1 %285, label %286, label %288, !dbg !1824

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1821
  store i8 39, i8* %287, align 1, !dbg !1821, !tbaa !1156
  br label %288, !dbg !1821

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %289, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1602
  br label %463, !dbg !1825

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1826

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1572, metadata !DIExpression()), !dbg !1827
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1828
  %293 = load i16*, i16** %292, align 8, !dbg !1828, !tbaa !1031
  %294 = zext i8 %158 to i64, !dbg !1828
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1828
  %296 = load i16, i16* %295, align 2, !dbg !1828, !tbaa !1216
  %297 = lshr i16 %296, 14, !dbg !1830
  %298 = trunc i16 %297 to i8, !dbg !1830
  %299 = and i8 %298, 1, !dbg !1830
  call void @llvm.dbg.value(metadata i8 %299, metadata !1575, metadata !DIExpression()), !dbg !1827
  br label %355, !dbg !1831

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1832
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1576, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8* %23, metadata !1834, metadata !DIExpression()) #19, !dbg !1842
  call void @llvm.dbg.value(metadata i32 0, metadata !1840, metadata !DIExpression()) #19, !dbg !1842
  call void @llvm.dbg.value(metadata i64 8, metadata !1841, metadata !DIExpression()) #19, !dbg !1842
  store i64 0, i64* %10, align 8, !dbg !1844
  call void @llvm.dbg.value(metadata i64 0, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 1, metadata !1575, metadata !DIExpression()), !dbg !1827
  %301 = icmp eq i64 %155, -1, !dbg !1845
  br i1 %301, label %302, label %304, !dbg !1847

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %303, metadata !1547, metadata !DIExpression()), !dbg !1602
  br label %304, !dbg !1849

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1694
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  br label %306, !dbg !1850

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1851
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1852
  call void @llvm.dbg.value(metadata i8 %308, metadata !1575, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1853
  %309 = add i64 %307, %123, !dbg !1854
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1855
  %311 = sub i64 %305, %309, !dbg !1856
  call void @llvm.dbg.value(metadata i32* %12, metadata !1582, metadata !DIExpression(DW_OP_deref)), !dbg !1615
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #19, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %312, metadata !1585, metadata !DIExpression()), !dbg !1615
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1858

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  %314 = icmp ugt i64 %305, %309, !dbg !1859
  br i1 %314, label %315, label %340, !dbg !1861

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1862
  br label %317, !dbg !1862

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1572, metadata !DIExpression()), !dbg !1827
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1863
  %321 = load i8, i8* %320, align 1, !dbg !1863, !tbaa !1156
  %322 = icmp eq i8 %321, 0, !dbg !1861
  br i1 %322, label %340, label %323, !dbg !1862

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %324, metadata !1572, metadata !DIExpression()), !dbg !1827
  %325 = add i64 %324, %123, !dbg !1865
  %326 = icmp ult i64 %325, %305, !dbg !1859
  br i1 %326, label %317, label %340, !dbg !1861, !llvm.loop !1866

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1867
  %329 = and i1 %113, %328, !dbg !1870
  call void @llvm.dbg.value(metadata i64 1, metadata !1586, metadata !DIExpression()), !dbg !1871
  br i1 %329, label %330, label %343, !dbg !1870

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1586, metadata !DIExpression()), !dbg !1871
  %332 = add i64 %331, %309, !dbg !1872
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1873
  %334 = load i8, i8* %333, align 1, !dbg !1873, !tbaa !1156
  %335 = sext i8 %334 to i32, !dbg !1873
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1874

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %337, metadata !1586, metadata !DIExpression()), !dbg !1871
  %338 = icmp eq i64 %337, %312, !dbg !1867
  br i1 %338, label %343, label %330, !dbg !1876, !llvm.loop !1877

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %308, metadata !1575, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %307, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %308, metadata !1575, metadata !DIExpression()), !dbg !1827
  br label %340, !dbg !1879

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1879
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1880, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %344, metadata !1582, metadata !DIExpression()), !dbg !1615
  %345 = call i32 @iswprint(i32 %344) #19, !dbg !1882
  %346 = icmp eq i32 %345, 0, !dbg !1882
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1883
  call void @llvm.dbg.value(metadata i8 %347, metadata !1575, metadata !DIExpression()), !dbg !1827
  %348 = add i64 %312, %307, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %348, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 %347, metadata !1575, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %348, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1879
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !1885
  %350 = icmp eq i32 %349, 0, !dbg !1886
  br i1 %350, label %306, label %351, !dbg !1887, !llvm.loop !1888

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1890
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 2, metadata !1548, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %99, metadata !1558, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %305, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19, !dbg !1879
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19, !dbg !1890
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1694
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1891
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1891
  call void @llvm.dbg.value(metadata i8 %358, metadata !1575, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %357, metadata !1572, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i64 %356, metadata !1547, metadata !DIExpression()), !dbg !1602
  %359 = and i8 %358, 1, !dbg !1892
  %360 = icmp ne i8 %359, 0, !dbg !1892
  call void @llvm.dbg.value(metadata i8 %359, metadata !1571, metadata !DIExpression()), !dbg !1694
  %361 = icmp ult i64 %357, 2, !dbg !1893
  %362 = or i1 %360, %114, !dbg !1894
  %363 = and i1 %361, %362, !dbg !1895
  br i1 %363, label %463, label %364, !dbg !1895

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %365, metadata !1593, metadata !DIExpression()), !dbg !1897
  br label %366, !dbg !1898

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1687
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1602
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1623
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1694
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1694
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1899
  call void @llvm.dbg.value(metadata i8 %372, metadata !1570, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %371, metadata !1569, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %370, metadata !1564, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %369, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %368, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %367, metadata !1553, metadata !DIExpression()), !dbg !1602
  br i1 %362, label %419, label %373, !dbg !1900

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1905

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1570, metadata !DIExpression()), !dbg !1694
  %375 = and i8 %369, 1, !dbg !1908
  %376 = icmp eq i8 %375, 0, !dbg !1908
  %377 = and i1 %110, %376, !dbg !1908
  br i1 %377, label %378, label %394, !dbg !1908

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1910
  br i1 %379, label %380, label %382, !dbg !1914

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1910
  store i8 39, i8* %381, align 1, !dbg !1910, !tbaa !1156
  br label %382, !dbg !1910

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %383, metadata !1554, metadata !DIExpression()), !dbg !1602
  %384 = icmp ult i64 %383, %130, !dbg !1915
  br i1 %384, label %385, label %387, !dbg !1918

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1915
  store i8 36, i8* %386, align 1, !dbg !1915, !tbaa !1156
  br label %387, !dbg !1915

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %388, metadata !1554, metadata !DIExpression()), !dbg !1602
  %389 = icmp ult i64 %388, %130, !dbg !1919
  br i1 %389, label %390, label %392, !dbg !1922

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1919
  store i8 39, i8* %391, align 1, !dbg !1919, !tbaa !1156
  br label %392, !dbg !1919

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %393, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1602
  br label %394, !dbg !1923

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1602
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %396, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %395, metadata !1554, metadata !DIExpression()), !dbg !1602
  %397 = icmp ult i64 %395, %130, !dbg !1924
  br i1 %397, label %398, label %400, !dbg !1927

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1924
  store i8 92, i8* %399, align 1, !dbg !1924, !tbaa !1156
  br label %400, !dbg !1924

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %401, metadata !1554, metadata !DIExpression()), !dbg !1602
  %402 = icmp ult i64 %401, %130, !dbg !1928
  br i1 %402, label %403, label %407, !dbg !1931

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1928
  %405 = or i8 %404, 48, !dbg !1928
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1928
  store i8 %405, i8* %406, align 1, !dbg !1928, !tbaa !1156
  br label %407, !dbg !1928

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %408, metadata !1554, metadata !DIExpression()), !dbg !1602
  %409 = icmp ult i64 %408, %130, !dbg !1932
  br i1 %409, label %410, label %415, !dbg !1935

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1932
  %412 = and i8 %411, 7, !dbg !1932
  %413 = or i8 %412, 48, !dbg !1932
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1932
  store i8 %413, i8* %414, align 1, !dbg !1932, !tbaa !1156
  br label %415, !dbg !1932

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %416, metadata !1554, metadata !DIExpression()), !dbg !1602
  %417 = and i8 %370, 7, !dbg !1936
  %418 = or i8 %417, 48, !dbg !1937
  call void @llvm.dbg.value(metadata i8 %418, metadata !1564, metadata !DIExpression()), !dbg !1694
  br label %428, !dbg !1938

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1939
  %421 = icmp eq i8 %420, 0, !dbg !1939
  br i1 %421, label %428, label %422, !dbg !1941

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1942
  br i1 %423, label %424, label %426, !dbg !1946

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1942
  store i8 92, i8* %425, align 1, !dbg !1942, !tbaa !1156
  br label %426, !dbg !1942

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %427, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1569, metadata !DIExpression()), !dbg !1694
  br label %428, !dbg !1947

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1602
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1623
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1694
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1694
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1694
  call void @llvm.dbg.value(metadata i8 %433, metadata !1570, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %432, metadata !1569, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %431, metadata !1564, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %430, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %429, metadata !1554, metadata !DIExpression()), !dbg !1602
  %434 = add i64 %367, 1, !dbg !1948
  %435 = icmp ugt i64 %365, %434, !dbg !1950
  br i1 %435, label %436, label %526, !dbg !1951

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1952
  %438 = icmp ne i8 %437, 0, !dbg !1952
  %439 = and i8 %433, 1, !dbg !1952
  %440 = icmp eq i8 %439, 0, !dbg !1952
  %441 = and i1 %438, %440, !dbg !1952
  br i1 %441, label %442, label %453, !dbg !1952

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1955
  br i1 %443, label %444, label %446, !dbg !1959

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1955
  store i8 39, i8* %445, align 1, !dbg !1955, !tbaa !1156
  br label %446, !dbg !1955

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %447, metadata !1554, metadata !DIExpression()), !dbg !1602
  %448 = icmp ult i64 %447, %130, !dbg !1960
  br i1 %448, label %449, label %451, !dbg !1963

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1960
  store i8 39, i8* %450, align 1, !dbg !1960, !tbaa !1156
  br label %451, !dbg !1960

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %452, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1602
  br label %453, !dbg !1964

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1965
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %455, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %454, metadata !1554, metadata !DIExpression()), !dbg !1602
  %456 = icmp ult i64 %454, %130, !dbg !1966
  br i1 %456, label %457, label %459, !dbg !1969

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1966
  store i8 %431, i8* %458, align 1, !dbg !1966, !tbaa !1156
  br label %459, !dbg !1966

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %460, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %434, metadata !1553, metadata !DIExpression()), !dbg !1602
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1970
  %462 = load i8, i8* %461, align 1, !dbg !1970, !tbaa !1156
  call void @llvm.dbg.value(metadata i8 %462, metadata !1564, metadata !DIExpression()), !dbg !1694
  br label %366, !dbg !1971, !llvm.loop !1972

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1687
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1602
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1619
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1975
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1602
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1602
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1694
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1694
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1694
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %472, metadata !1571, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %471, metadata !1570, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %156, metadata !1569, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %470, metadata !1564, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %469, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %468, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %467, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %466, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %465, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %464, metadata !1553, metadata !DIExpression()), !dbg !1602
  br i1 %117, label %486, label %474, !dbg !1976

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1977
  %476 = zext i8 %475 to i64, !dbg !1977
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1978
  %478 = load i32, i32* %477, align 4, !dbg !1978, !tbaa !1356
  %479 = and i8 %470, 31, !dbg !1979
  %480 = zext i8 %479 to i32, !dbg !1979
  %481 = shl nuw i32 1, %480, !dbg !1980
  %482 = and i32 %478, %481, !dbg !1980
  %483 = icmp eq i32 %482, 0, !dbg !1980
  %484 = icmp eq i8 %156, 0, !dbg !1981
  %485 = and i1 %484, %483, !dbg !1982
  br i1 %485, label %526, label %488, !dbg !1982

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1981
  br i1 %487, label %526, label %488, !dbg !1983

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1984
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1602
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1619
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1975
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1623
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1624
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1694
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1694
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %496, metadata !1571, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %495, metadata !1564, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %494, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %493, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %492, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %491, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %490, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %489, metadata !1553, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1599), !dbg !1985
  br i1 %109, label %498, label %629, !dbg !1986

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1570, metadata !DIExpression()), !dbg !1694
  %499 = and i8 %493, 1, !dbg !1988
  %500 = icmp eq i8 %499, 0, !dbg !1988
  %501 = and i1 %110, %500, !dbg !1988
  br i1 %501, label %502, label %518, !dbg !1988

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1990
  br i1 %503, label %504, label %506, !dbg !1994

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1990
  store i8 39, i8* %505, align 1, !dbg !1990, !tbaa !1156
  br label %506, !dbg !1990

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %507, metadata !1554, metadata !DIExpression()), !dbg !1602
  %508 = icmp ult i64 %507, %497, !dbg !1995
  br i1 %508, label %509, label %511, !dbg !1998

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1995
  store i8 36, i8* %510, align 1, !dbg !1995, !tbaa !1156
  br label %511, !dbg !1995

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %512, metadata !1554, metadata !DIExpression()), !dbg !1602
  %513 = icmp ult i64 %512, %497, !dbg !1999
  br i1 %513, label %514, label %516, !dbg !2002

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1999
  store i8 39, i8* %515, align 1, !dbg !1999, !tbaa !1156
  br label %516, !dbg !1999

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %517, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1602
  br label %518, !dbg !2003

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1694
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %520, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %519, metadata !1554, metadata !DIExpression()), !dbg !1602
  %521 = icmp ult i64 %519, %497, !dbg !2004
  br i1 %521, label %522, label %524, !dbg !2007

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2004
  store i8 92, i8* %523, align 1, !dbg !2004, !tbaa !1156
  br label %524, !dbg !2004

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %525, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %536, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %535, metadata !1571, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %534, metadata !1570, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %533, metadata !1564, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %532, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %531, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %530, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %529, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %528, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %527, metadata !1553, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1600), !dbg !2008
  br label %553, !dbg !2009

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1984
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1602
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1619
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1975
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1623
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1624
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2012
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1694
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1694
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %535, metadata !1571, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %534, metadata !1570, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %533, metadata !1564, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %532, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %531, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %530, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %529, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %528, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %527, metadata !1553, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1600), !dbg !2008
  %537 = and i8 %531, 1, !dbg !2009
  %538 = icmp ne i8 %537, 0, !dbg !2009
  %539 = and i8 %534, 1, !dbg !2009
  %540 = icmp eq i8 %539, 0, !dbg !2009
  %541 = and i1 %538, %540, !dbg !2009
  br i1 %541, label %542, label %553, !dbg !2009

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2013
  br i1 %543, label %544, label %546, !dbg !2017

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2013
  store i8 39, i8* %545, align 1, !dbg !2013, !tbaa !1156
  br label %546, !dbg !2013

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %547, metadata !1554, metadata !DIExpression()), !dbg !1602
  %548 = icmp ult i64 %547, %536, !dbg !2018
  br i1 %548, label %549, label %551, !dbg !2021

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2018
  store i8 39, i8* %550, align 1, !dbg !2018, !tbaa !1156
  br label %551, !dbg !2018

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %552, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1602
  br label %553, !dbg !2022

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1694
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1602
  call void @llvm.dbg.value(metadata i8 %562, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %561, metadata !1554, metadata !DIExpression()), !dbg !1602
  %563 = icmp ult i64 %561, %554, !dbg !2023
  br i1 %563, label %564, label %566, !dbg !2026

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2023
  store i8 %556, i8* %565, align 1, !dbg !2023, !tbaa !1156
  br label %566, !dbg !2023

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %567, metadata !1554, metadata !DIExpression()), !dbg !1602
  %568 = and i8 %555, 1, !dbg !2027
  %569 = icmp eq i8 %568, 0, !dbg !2027
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2029
  call void @llvm.dbg.value(metadata i8 %570, metadata !1563, metadata !DIExpression()), !dbg !1602
  br label %571, !dbg !2030

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1984
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1602
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1619
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1975
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1623
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1602
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1625
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %578, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %577, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %576, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %575, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %574, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %573, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %572, metadata !1553, metadata !DIExpression()), !dbg !1602
  %580 = add i64 %572, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %580, metadata !1553, metadata !DIExpression()), !dbg !1602
  br label %122, !dbg !2032, !llvm.loop !2033

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %127, metadata !1561, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %128, metadata !1562, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 %129, metadata !1563, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  %583 = icmp eq i64 %124, 0, !dbg !2035
  %584 = and i1 %110, %583, !dbg !2037
  %585 = xor i1 %584, true, !dbg !2037
  %586 = or i1 %109, %585, !dbg !2037
  br i1 %586, label %587, label %629, !dbg !2037

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2038
  %589 = xor i1 %588, true, !dbg !2038
  %590 = and i8 %128, 1, !dbg !2040
  %591 = icmp eq i8 %590, 0, !dbg !2040
  %592 = or i1 %591, %589, !dbg !2038
  br i1 %592, label %602, label %593, !dbg !2038

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2041
  %595 = icmp eq i8 %594, 0, !dbg !2041
  br i1 %595, label %598, label %596, !dbg !2044

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %94, metadata !1551, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %95, metadata !1552, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %125, metadata !1555, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %582, metadata !1547, metadata !DIExpression()), !dbg !1602
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2045
  br label %645, !dbg !2046

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2047
  %600 = icmp ne i64 %125, 0, !dbg !2049
  %601 = and i1 %600, %599, !dbg !2050
  br i1 %601, label %26, label %602, !dbg !2050

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %130, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  %603 = icmp ne i8* %97, null, !dbg !2051
  %604 = and i1 %603, %109, !dbg !2053
  br i1 %604, label %605, label %620, !dbg !2053

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %124, metadata !1554, metadata !DIExpression()), !dbg !1602
  %606 = load i8, i8* %97, align 1, !dbg !2054, !tbaa !1156
  %607 = icmp eq i8 %606, 0, !dbg !2057
  br i1 %607, label %620, label %608, !dbg !2057

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1556, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %611, metadata !1554, metadata !DIExpression()), !dbg !1602
  %612 = icmp ult i64 %611, %130, !dbg !2058
  br i1 %612, label %613, label %615, !dbg !2061

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2058
  store i8 %609, i8* %614, align 1, !dbg !2058, !tbaa !1156
  br label %615, !dbg !2058

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %616, metadata !1554, metadata !DIExpression()), !dbg !1602
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2062
  call void @llvm.dbg.value(metadata i8* %617, metadata !1556, metadata !DIExpression()), !dbg !1602
  %618 = load i8, i8* %617, align 1, !dbg !2054, !tbaa !1156
  %619 = icmp eq i8 %618, 0, !dbg !2057
  br i1 %619, label %620, label %608, !dbg !2057, !llvm.loop !2063

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1656
  call void @llvm.dbg.value(metadata i64 %621, metadata !1554, metadata !DIExpression()), !dbg !1602
  %622 = icmp ult i64 %621, %130, !dbg !2065
  br i1 %622, label %623, label %645, !dbg !2067

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2068
  store i8 0, i8* %624, align 1, !dbg !2069, !tbaa !1156
  br label %645, !dbg !2068

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %630, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1601), !dbg !2070
  %627 = icmp eq i8 %101, 0, !dbg !2071
  %628 = select i1 %627, i32 2, i32 4, !dbg !2071
  br label %635, !dbg !2071

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1545, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %630, metadata !1547, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.label(metadata !1601), !dbg !2070
  %632 = icmp eq i32 %93, 2, !dbg !2073
  %633 = icmp eq i8 %101, 0, !dbg !2071
  %634 = select i1 %633, i32 2, i32 4, !dbg !2071
  br i1 %632, label %635, label %639, !dbg !2071

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2071

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1548, metadata !DIExpression()), !dbg !1602
  %643 = and i32 %5, -3, !dbg !2074
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2075
  br label %645, !dbg !2076

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2077
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #9 !dbg !2078 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2082, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %1, metadata !2083, metadata !DIExpression()), !dbg !2086
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #19, !dbg !2087
  call void @llvm.dbg.value(metadata i8* %3, metadata !2084, metadata !DIExpression()), !dbg !2086
  %4 = icmp eq i8* %3, %0, !dbg !2088
  br i1 %4, label %5, label %71, !dbg !2090

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #19, !dbg !2091
  call void @llvm.dbg.value(metadata i8* %6, metadata !2085, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %6, metadata !2092, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8* undef, metadata !2098, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 85, metadata !2099, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 84, metadata !2100, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 70, metadata !2101, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 45, metadata !2102, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 56, metadata !2103, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 0, metadata !2104, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 0, metadata !2105, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 0, metadata !2106, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 0, metadata !2107, metadata !DIExpression()), !dbg !2108
  %7 = load i8, i8* %6, align 1, !dbg !2111, !tbaa !1156
  %8 = and i8 %7, -33, !dbg !2111
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2111

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2113, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8* undef, metadata !2118, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 84, metadata !2119, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 70, metadata !2120, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 45, metadata !2121, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 56, metadata !2122, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 0, metadata !2123, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 0, metadata !2124, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 0, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8 0, metadata !2126, metadata !DIExpression()), !dbg !2127
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2131
  %11 = load i8, i8* %10, align 1, !dbg !2131, !tbaa !1156
  %12 = and i8 %11, -33, !dbg !2131
  %13 = icmp eq i8 %12, 84, !dbg !2131
  br i1 %13, label %14, label %68, !dbg !2131

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2133, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* undef, metadata !2138, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 70, metadata !2139, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 45, metadata !2140, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 56, metadata !2141, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 0, metadata !2142, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 0, metadata !2143, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 0, metadata !2144, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2146
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2150
  %16 = load i8, i8* %15, align 1, !dbg !2150, !tbaa !1156
  %17 = and i8 %16, -33, !dbg !2150
  %18 = icmp eq i8 %17, 70, !dbg !2150
  br i1 %18, label %19, label %68, !dbg !2150

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2152, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* undef, metadata !2157, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 45, metadata !2158, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 56, metadata !2159, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2161, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2164
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2168
  %21 = load i8, i8* %20, align 1, !dbg !2168, !tbaa !1156
  %22 = icmp eq i8 %21, 45, !dbg !2168
  br i1 %22, label %23, label %68, !dbg !2170

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2171, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* undef, metadata !2176, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8 56, metadata !2177, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8 0, metadata !2179, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2182
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2186
  %25 = load i8, i8* %24, align 1, !dbg !2186, !tbaa !1156
  %26 = icmp eq i8 %25, 56, !dbg !2186
  br i1 %26, label %27, label %68, !dbg !2188

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2189, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* undef, metadata !2194, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2198, metadata !DIExpression()), !dbg !2199
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2203
  %29 = load i8, i8* %28, align 1, !dbg !2203, !tbaa !1156
  %30 = icmp eq i8 %29, 0, !dbg !2203
  br i1 %30, label %31, label %68, !dbg !2205

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2206, !tbaa !1156
  %33 = icmp eq i8 %32, 96, !dbg !2207
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !2206
  br label %71, !dbg !2208

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2113, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* undef, metadata !2118, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 66, metadata !2119, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 49, metadata !2120, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 56, metadata !2121, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 48, metadata !2122, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 51, metadata !2123, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 48, metadata !2124, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2125, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2126, metadata !DIExpression()), !dbg !2209
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2213
  %37 = load i8, i8* %36, align 1, !dbg !2213, !tbaa !1156
  %38 = and i8 %37, -33, !dbg !2213
  %39 = icmp eq i8 %38, 66, !dbg !2213
  br i1 %39, label %40, label %68, !dbg !2213

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2133, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* undef, metadata !2138, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 49, metadata !2139, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 56, metadata !2140, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 48, metadata !2141, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 51, metadata !2142, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 48, metadata !2143, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 0, metadata !2144, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2214
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2216
  %42 = load i8, i8* %41, align 1, !dbg !2216, !tbaa !1156
  %43 = icmp eq i8 %42, 49, !dbg !2216
  br i1 %43, label %44, label %68, !dbg !2217

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2152, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* undef, metadata !2157, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 56, metadata !2158, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 48, metadata !2159, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 51, metadata !2160, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 48, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2218
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2220
  %46 = load i8, i8* %45, align 1, !dbg !2220, !tbaa !1156
  %47 = icmp eq i8 %46, 56, !dbg !2220
  br i1 %47, label %48, label %68, !dbg !2221

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8* undef, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 48, metadata !2177, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 51, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 48, metadata !2179, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2222
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2224
  %50 = load i8, i8* %49, align 1, !dbg !2224, !tbaa !1156
  %51 = icmp eq i8 %50, 48, !dbg !2224
  br i1 %51, label %52, label %68, !dbg !2225

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2189, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8* undef, metadata !2194, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 51, metadata !2195, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 48, metadata !2196, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 0, metadata !2198, metadata !DIExpression()), !dbg !2226
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2228
  %54 = load i8, i8* %53, align 1, !dbg !2228, !tbaa !1156
  %55 = icmp eq i8 %54, 51, !dbg !2228
  br i1 %55, label %56, label %68, !dbg !2229

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2230, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* undef, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 48, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 0, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 0, metadata !2238, metadata !DIExpression()), !dbg !2239
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2243
  %58 = load i8, i8* %57, align 1, !dbg !2243, !tbaa !1156
  %59 = icmp eq i8 %58, 48, !dbg !2243
  br i1 %59, label %60, label %68, !dbg !2245

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2246, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8* undef, metadata !2251, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2254
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2258
  %62 = load i8, i8* %61, align 1, !dbg !2258, !tbaa !1156
  %63 = icmp eq i8 %62, 0, !dbg !2258
  br i1 %63, label %64, label %68, !dbg !2260

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2261, !tbaa !1156
  %66 = icmp eq i8 %65, 96, !dbg !2262
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !2261
  br label %71, !dbg !2263

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2264
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !2265
  br label %71, !dbg !2266

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2086
  ret i8* %72, !dbg !2267
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !228 i32 @iswprint(i32) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare !dbg !232 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #9 !dbg !2268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i64 %1, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2274, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %0, metadata !2276, metadata !DIExpression()) #19, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %1, metadata !2281, metadata !DIExpression()) #19, !dbg !2289
  call void @llvm.dbg.value(metadata i64* null, metadata !2282, metadata !DIExpression()) #19, !dbg !2289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2283, metadata !DIExpression()) #19, !dbg !2289
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2291
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2284, metadata !DIExpression()) #19, !dbg !2289
  %6 = tail call i32* @__errno_location() #24, !dbg !2292
  %7 = load i32, i32* %6, align 4, !dbg !2292, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %7, metadata !2285, metadata !DIExpression()) #19, !dbg !2289
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2293
  %9 = load i32, i32* %8, align 4, !dbg !2293, !tbaa !1487
  %10 = or i32 %9, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i32 %10, metadata !2286, metadata !DIExpression()) #19, !dbg !2289
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2295
  %12 = load i32, i32* %11, align 8, !dbg !2295, !tbaa !1436
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2296
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2297
  %15 = load i8*, i8** %14, align 8, !dbg !2297, !tbaa !1510
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2298
  %17 = load i8*, i8** %16, align 8, !dbg !2298, !tbaa !1513
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #19, !dbg !2299
  %19 = add i64 %18, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %19, metadata !2287, metadata !DIExpression()) #19, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %19, metadata !2301, metadata !DIExpression()) #19, !dbg !2306
  %20 = tail call noalias i8* @xmalloc(i64 %19) #19, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %20, metadata !2288, metadata !DIExpression()) #19, !dbg !2289
  %21 = load i32, i32* %11, align 8, !dbg !2309, !tbaa !1436
  %22 = load i8*, i8** %14, align 8, !dbg !2310, !tbaa !1510
  %23 = load i8*, i8** %16, align 8, !dbg !2311, !tbaa !1513
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #19, !dbg !2312
  store i32 %7, i32* %6, align 4, !dbg !2313, !tbaa !1356
  ret i8* %20, !dbg !2314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #9 !dbg !2277 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2276, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i64 %1, metadata !2281, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i64* %2, metadata !2282, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2283, metadata !DIExpression()), !dbg !2315
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2316
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2316
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2284, metadata !DIExpression()), !dbg !2315
  %7 = tail call i32* @__errno_location() #24, !dbg !2317
  %8 = load i32, i32* %7, align 4, !dbg !2317, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %8, metadata !2285, metadata !DIExpression()), !dbg !2315
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2318
  %10 = load i32, i32* %9, align 4, !dbg !2318, !tbaa !1487
  %11 = icmp ne i64* %2, null, !dbg !2319
  %12 = xor i1 %11, true, !dbg !2319
  %13 = zext i1 %12 to i32, !dbg !2319
  %14 = or i32 %10, %13, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %14, metadata !2286, metadata !DIExpression()), !dbg !2315
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2321
  %16 = load i32, i32* %15, align 8, !dbg !2321, !tbaa !1436
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2322
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2323
  %19 = load i8*, i8** %18, align 8, !dbg !2323, !tbaa !1510
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2324
  %21 = load i8*, i8** %20, align 8, !dbg !2324, !tbaa !1513
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2325
  %23 = add i64 %22, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %23, metadata !2287, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i64 %23, metadata !2301, metadata !DIExpression()) #19, !dbg !2327
  %24 = tail call noalias i8* @xmalloc(i64 %23) #19, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %24, metadata !2288, metadata !DIExpression()), !dbg !2315
  %25 = load i32, i32* %15, align 8, !dbg !2330, !tbaa !1436
  %26 = load i8*, i8** %18, align 8, !dbg !2331, !tbaa !1510
  %27 = load i8*, i8** %20, align 8, !dbg !2332, !tbaa !1513
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2333
  store i32 %8, i32* %7, align 4, !dbg !2334, !tbaa !1356
  br i1 %11, label %29, label %30, !dbg !2335

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2336, !tbaa !2338
  br label %30, !dbg !2339

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2340
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #9 !dbg !2341 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2345, !tbaa !1031
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 1, metadata !2344, metadata !DIExpression()), !dbg !2346
  %2 = load i32, i32* @nslots, align 4, !dbg !2347, !tbaa !1356
  %3 = icmp sgt i32 %2, 1, !dbg !2350
  br i1 %3, label %4, label %12, !dbg !2351

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2344, metadata !DIExpression()), !dbg !2346
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2352
  %7 = load i8*, i8** %6, align 8, !dbg !2352, !tbaa !2353
  tail call void @free(i8* %7) #19, !dbg !2355
  %8 = add nuw nsw i64 %5, 1, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %8, metadata !2344, metadata !DIExpression()), !dbg !2346
  %9 = load i32, i32* @nslots, align 4, !dbg !2347, !tbaa !1356
  %10 = sext i32 %9 to i64, !dbg !2350
  %11 = icmp slt i64 %8, %10, !dbg !2350
  br i1 %11, label %4, label %12, !dbg !2351, !llvm.loop !2357

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2359
  %14 = load i8*, i8** %13, align 8, !dbg !2359, !tbaa !2353
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2361
  br i1 %15, label %17, label %16, !dbg !2362

16:                                               ; preds = %12
  tail call void @free(i8* %14) #19, !dbg !2363
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2365, !tbaa !2366
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2367, !tbaa !2353
  br label %17, !dbg !2368

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2369
  br i1 %18, label %21, label %19, !dbg !2371

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2372
  tail call void @free(i8* %20) #19, !dbg !2374
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2375, !tbaa !1031
  br label %21, !dbg !2376

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2377, !tbaa !1356
  ret void, !dbg !2378
}

; Function Attrs: nounwind
declare !dbg !203 void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2381, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* %1, metadata !2382, metadata !DIExpression()), !dbg !2383
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2384
  ret i8* %3, !dbg !2385
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #9 !dbg !2386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8* %1, metadata !2391, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i64 %2, metadata !2392, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2393, metadata !DIExpression()), !dbg !2405
  %5 = tail call i32* @__errno_location() #24, !dbg !2406
  %6 = load i32, i32* %5, align 4, !dbg !2406, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %6, metadata !2394, metadata !DIExpression()), !dbg !2405
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2407, !tbaa !1031
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2395, metadata !DIExpression()), !dbg !2405
  %8 = icmp slt i32 %0, 0, !dbg !2408
  br i1 %8, label %9, label %10, !dbg !2410

9:                                                ; preds = %4
  tail call void @abort() #21, !dbg !2411
  unreachable, !dbg !2411

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2412, !tbaa !1356
  %12 = icmp sgt i32 %11, %0, !dbg !2413
  br i1 %12, label %34, label %13, !dbg !2414

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2415
  call void @llvm.dbg.value(metadata i1 %14, metadata !2396, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2399, metadata !DIExpression()), !dbg !2416
  %15 = icmp eq i32 %0, 2147483647, !dbg !2417
  br i1 %15, label %16, label %17, !dbg !2419

16:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !2420
  unreachable, !dbg !2420

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2421
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2421
  %20 = add nuw nsw i32 %0, 1, !dbg !2422
  %21 = sext i32 %20 to i64, !dbg !2423
  %22 = shl nuw nsw i64 %21, 4, !dbg !2424
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #19, !dbg !2425
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2425
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2395, metadata !DIExpression()), !dbg !2405
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2426, !tbaa !1031
  br i1 %14, label %25, label %26, !dbg !2427

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2428, !tbaa.struct !2430
  br label %26, !dbg !2431

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2432, !tbaa !1356
  %28 = sext i32 %27 to i64, !dbg !2433
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2433
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2434
  %31 = sub nsw i32 %20, %27, !dbg !2435
  %32 = sext i32 %31 to i64, !dbg !2436
  %33 = shl nsw i64 %32, 4, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %30, metadata !1834, metadata !DIExpression()) #19, !dbg !2438
  call void @llvm.dbg.value(metadata i32 0, metadata !1840, metadata !DIExpression()) #19, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %33, metadata !1841, metadata !DIExpression()) #19, !dbg !2438
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #19, !dbg !2440
  store i32 %20, i32* @nslots, align 4, !dbg !2441, !tbaa !1356
  br label %34, !dbg !2442

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2405
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2395, metadata !DIExpression()), !dbg !2405
  %36 = zext i32 %0 to i64, !dbg !2443
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2444
  %38 = load i64, i64* %37, align 8, !dbg !2444, !tbaa !2366
  call void @llvm.dbg.value(metadata i64 %38, metadata !2400, metadata !DIExpression()), !dbg !2445
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2446
  %40 = load i8*, i8** %39, align 8, !dbg !2446, !tbaa !2353
  call void @llvm.dbg.value(metadata i8* %40, metadata !2402, metadata !DIExpression()), !dbg !2445
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2447
  %42 = load i32, i32* %41, align 4, !dbg !2447, !tbaa !1487
  %43 = or i32 %42, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %43, metadata !2403, metadata !DIExpression()), !dbg !2445
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2449
  %45 = load i32, i32* %44, align 8, !dbg !2449, !tbaa !1436
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2450
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2451
  %48 = load i8*, i8** %47, align 8, !dbg !2451, !tbaa !1510
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2452
  %50 = load i8*, i8** %49, align 8, !dbg !2452, !tbaa !1513
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2453
  call void @llvm.dbg.value(metadata i64 %51, metadata !2404, metadata !DIExpression()), !dbg !2445
  %52 = icmp ugt i64 %38, %51, !dbg !2454
  br i1 %52, label %63, label %53, !dbg !2456

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %54, metadata !2400, metadata !DIExpression()), !dbg !2445
  store i64 %54, i64* %37, align 8, !dbg !2459, !tbaa !2366
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2460
  br i1 %55, label %57, label %56, !dbg !2462

56:                                               ; preds = %53
  tail call void @free(i8* %40) #19, !dbg !2463
  br label %57, !dbg !2463

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2301, metadata !DIExpression()) #19, !dbg !2464
  %58 = tail call noalias i8* @xmalloc(i64 %54) #19, !dbg !2466
  call void @llvm.dbg.value(metadata i8* %58, metadata !2402, metadata !DIExpression()), !dbg !2445
  store i8* %58, i8** %39, align 8, !dbg !2467, !tbaa !2353
  %59 = load i32, i32* %44, align 8, !dbg !2468, !tbaa !1436
  %60 = load i8*, i8** %47, align 8, !dbg !2469, !tbaa !1510
  %61 = load i8*, i8** %49, align 8, !dbg !2470, !tbaa !1513
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2471
  br label %63, !dbg !2472

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2445
  call void @llvm.dbg.value(metadata i8* %64, metadata !2402, metadata !DIExpression()), !dbg !2445
  store i32 %6, i32* %5, align 4, !dbg !2473, !tbaa !1356
  ret i8* %64, !dbg !2474
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2475 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8* %1, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %2, metadata !2481, metadata !DIExpression()), !dbg !2482
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2483
  ret i8* %4, !dbg !2484
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #9 !dbg !2485 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 0, metadata !2381, metadata !DIExpression()) #19, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %0, metadata !2382, metadata !DIExpression()) #19, !dbg !2489
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2491
  ret i8* %2, !dbg !2492
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2493 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i64 %1, metadata !2498, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 0, metadata !2479, metadata !DIExpression()) #19, !dbg !2500
  call void @llvm.dbg.value(metadata i8* %0, metadata !2480, metadata !DIExpression()) #19, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()) #19, !dbg !2500
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #19, !dbg !2502
  ret i8* %3, !dbg !2503
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2504 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2508, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i32 %1, metadata !2509, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8* %2, metadata !2510, metadata !DIExpression()), !dbg !2512
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2513
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %1, metadata !2515, metadata !DIExpression()) #19, !dbg !2521
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2520, metadata !DIExpression()) #19, !dbg !2523
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2523, !alias.scope !2524
  %6 = icmp eq i32 %1, 10, !dbg !2527
  br i1 %6, label %7, label %8, !dbg !2529

7:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2530, !noalias !2524
  unreachable, !dbg !2530

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2531
  store i32 %1, i32* %9, align 8, !dbg !2532, !tbaa !1436, !alias.scope !2524
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2534
  ret i8* %10, !dbg !2535
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2536 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2540, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 %1, metadata !2541, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8* %2, metadata !2542, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %3, metadata !2543, metadata !DIExpression()), !dbg !2545
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2546
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2546
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 %1, metadata !2515, metadata !DIExpression()) #19, !dbg !2548
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2520, metadata !DIExpression()) #19, !dbg !2550
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #19, !dbg !2550, !alias.scope !2551
  %7 = icmp eq i32 %1, 10, !dbg !2554
  br i1 %7, label %8, label %9, !dbg !2555

8:                                                ; preds = %4
  tail call void @abort() #21, !dbg !2556, !noalias !2551
  unreachable, !dbg !2556

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2557
  store i32 %1, i32* %10, align 8, !dbg !2558, !tbaa !1436, !alias.scope !2551
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2560
  ret i8* %11, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2562 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2520, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2511, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %1, metadata !2567, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 0, metadata !2508, metadata !DIExpression()) #19, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %0, metadata !2509, metadata !DIExpression()) #19, !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2510, metadata !DIExpression()) #19, !dbg !2573
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %0, metadata !2515, metadata !DIExpression()) #19, !dbg !2575
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #19, !dbg !2568, !alias.scope !2576
  %5 = icmp eq i32 %0, 10, !dbg !2579
  br i1 %5, label %6, label %7, !dbg !2580

6:                                                ; preds = %2
  tail call void @abort() #21, !dbg !2581, !noalias !2576
  unreachable, !dbg !2581

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2582
  store i32 %0, i32* %8, align 8, !dbg !2583, !tbaa !1436, !alias.scope !2576
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2584
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2585
  ret i8* %9, !dbg !2586
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2587 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2520, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2544, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %0, metadata !2591, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8* %1, metadata !2592, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i64 %2, metadata !2593, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 0, metadata !2540, metadata !DIExpression()) #19, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %0, metadata !2541, metadata !DIExpression()) #19, !dbg !2599
  call void @llvm.dbg.value(metadata i8* %1, metadata !2542, metadata !DIExpression()) #19, !dbg !2599
  call void @llvm.dbg.value(metadata i64 %2, metadata !2543, metadata !DIExpression()) #19, !dbg !2599
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2600
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %0, metadata !2515, metadata !DIExpression()) #19, !dbg !2601
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #19, !dbg !2594, !alias.scope !2602
  %6 = icmp eq i32 %0, 10, !dbg !2605
  br i1 %6, label %7, label %8, !dbg !2606

7:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2607, !noalias !2602
  unreachable, !dbg !2607

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2608
  store i32 %0, i32* %9, align 8, !dbg !2609, !tbaa !1436, !alias.scope !2602
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #19, !dbg !2610
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2611
  ret i8* %10, !dbg !2612
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #9 !dbg !2613 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 %1, metadata !2618, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 %2, metadata !2619, metadata !DIExpression()), !dbg !2621
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2622
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2622
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2624, !tbaa.struct !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1454, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 %2, metadata !1455, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 %2, metadata !1457, metadata !DIExpression()), !dbg !2626
  %6 = lshr i8 %2, 5, !dbg !2628
  %7 = zext i8 %6 to i64, !dbg !2628
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2629
  call void @llvm.dbg.value(metadata i32* %8, metadata !1458, metadata !DIExpression()), !dbg !2626
  %9 = and i8 %2, 31, !dbg !2630
  %10 = zext i8 %9 to i32, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %10, metadata !1460, metadata !DIExpression()), !dbg !2626
  %11 = load i32, i32* %8, align 4, !dbg !2631, !tbaa !1356
  %12 = lshr i32 %11, %10, !dbg !2632
  %13 = and i32 %12, 1, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %13, metadata !1461, metadata !DIExpression()), !dbg !2626
  %14 = xor i32 %13, 1, !dbg !2634
  %15 = shl i32 %14, %10, !dbg !2635
  %16 = xor i32 %15, %11, !dbg !2636
  store i32 %16, i32* %8, align 4, !dbg !2636, !tbaa !1356
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2637
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2638
  ret i8* %17, !dbg !2639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #9 !dbg !2640 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2620, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %0, metadata !2644, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 %1, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()) #19, !dbg !2649
  call void @llvm.dbg.value(metadata i64 -1, metadata !2618, metadata !DIExpression()) #19, !dbg !2649
  call void @llvm.dbg.value(metadata i8 %1, metadata !2619, metadata !DIExpression()) #19, !dbg !2649
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2651, !tbaa.struct !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1454, metadata !DIExpression()) #19, !dbg !2652
  call void @llvm.dbg.value(metadata i8 %1, metadata !1455, metadata !DIExpression()) #19, !dbg !2652
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()) #19, !dbg !2652
  call void @llvm.dbg.value(metadata i8 %1, metadata !1457, metadata !DIExpression()) #19, !dbg !2652
  %5 = lshr i8 %1, 5, !dbg !2654
  %6 = zext i8 %5 to i64, !dbg !2654
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2655
  call void @llvm.dbg.value(metadata i32* %7, metadata !1458, metadata !DIExpression()) #19, !dbg !2652
  %8 = and i8 %1, 31, !dbg !2656
  %9 = zext i8 %8 to i32, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %9, metadata !1460, metadata !DIExpression()) #19, !dbg !2652
  %10 = load i32, i32* %7, align 4, !dbg !2657, !tbaa !1356
  %11 = lshr i32 %10, %9, !dbg !2658
  %12 = and i32 %11, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %12, metadata !1461, metadata !DIExpression()) #19, !dbg !2652
  %13 = xor i32 %12, 1, !dbg !2660
  %14 = shl i32 %13, %9, !dbg !2661
  %15 = xor i32 %14, %10, !dbg !2662
  store i32 %15, i32* %7, align 4, !dbg !2662, !tbaa !1356
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #19, !dbg !2663
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2664
  ret i8* %16, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #9 !dbg !2666 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2620, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8* %0, metadata !2644, metadata !DIExpression()) #19, !dbg !2673
  call void @llvm.dbg.value(metadata i8 58, metadata !2645, metadata !DIExpression()) #19, !dbg !2673
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()) #19, !dbg !2674
  call void @llvm.dbg.value(metadata i64 -1, metadata !2618, metadata !DIExpression()) #19, !dbg !2674
  call void @llvm.dbg.value(metadata i8 58, metadata !2619, metadata !DIExpression()) #19, !dbg !2674
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2675
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2676, !tbaa.struct !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1454, metadata !DIExpression()) #19, !dbg !2677
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()) #19, !dbg !2677
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()) #19, !dbg !2677
  call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()) #19, !dbg !2677
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2679
  call void @llvm.dbg.value(metadata i32* %4, metadata !1458, metadata !DIExpression()) #19, !dbg !2677
  call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()) #19, !dbg !2677
  %5 = load i32, i32* %4, align 4, !dbg !2680, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %5, metadata !1461, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2677
  %6 = or i32 %5, 67108864, !dbg !2681
  store i32 %6, i32* %4, align 4, !dbg !2681, !tbaa !1356
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #19, !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #19, !dbg !2683
  ret i8* %7, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2685 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2620, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %0, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %1, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()) #19, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %1, metadata !2618, metadata !DIExpression()) #19, !dbg !2692
  call void @llvm.dbg.value(metadata i8 58, metadata !2619, metadata !DIExpression()) #19, !dbg !2692
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2693
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2694, !tbaa.struct !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1454, metadata !DIExpression()) #19, !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()) #19, !dbg !2695
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()) #19, !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()) #19, !dbg !2695
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2697
  call void @llvm.dbg.value(metadata i32* %5, metadata !1458, metadata !DIExpression()) #19, !dbg !2695
  call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()) #19, !dbg !2695
  %6 = load i32, i32* %5, align 4, !dbg !2698, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %6, metadata !1461, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #19, !dbg !2695
  %7 = or i32 %6, 67108864, !dbg !2699
  store i32 %7, i32* %5, align 4, !dbg !2699, !tbaa !1356
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #19, !dbg !2700
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #19, !dbg !2701
  ret i8* %8, !dbg !2702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #9 !dbg !2703 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2520, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2709
  call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32 %1, metadata !2706, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8* %2, metadata !2707, metadata !DIExpression()), !dbg !2711
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2712
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2708, metadata !DIExpression()), !dbg !2713
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2714
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2714
  call void @llvm.dbg.value(metadata i32 %1, metadata !2515, metadata !DIExpression()) #19, !dbg !2715
  call void @llvm.dbg.value(metadata i32 0, metadata !2520, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2715
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2709, !alias.scope !2716
  %8 = icmp eq i32 %1, 10, !dbg !2719
  br i1 %8, label %9, label %10, !dbg !2720

9:                                                ; preds = %3
  tail call void @abort() #21, !dbg !2721, !noalias !2716
  unreachable, !dbg !2721

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2715
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2714
  store i32 %1, i32* %11, align 8, !dbg !2714, !tbaa.struct !2625
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2714
  %13 = bitcast i32* %12 to i8*, !dbg !2714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2714, !tbaa.struct !2625
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1454, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8 58, metadata !1455, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 1, metadata !1456, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8 58, metadata !1457, metadata !DIExpression()), !dbg !2722
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2724
  call void @llvm.dbg.value(metadata i32* %14, metadata !1458, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 26, metadata !1460, metadata !DIExpression()), !dbg !2722
  %15 = load i32, i32* %14, align 4, !dbg !2725, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %15, metadata !1461, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2722
  %16 = or i32 %15, 67108864, !dbg !2726
  store i32 %16, i32* %14, align 4, !dbg !2726, !tbaa !1356
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2728
  ret i8* %17, !dbg !2729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #9 !dbg !2730 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2738, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %0, metadata !2734, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %1, metadata !2735, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %2, metadata !2736, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %3, metadata !2737, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()) #19, !dbg !2751
  call void @llvm.dbg.value(metadata i8* %1, metadata !2744, metadata !DIExpression()) #19, !dbg !2751
  call void @llvm.dbg.value(metadata i8* %2, metadata !2745, metadata !DIExpression()) #19, !dbg !2751
  call void @llvm.dbg.value(metadata i8* %3, metadata !2746, metadata !DIExpression()) #19, !dbg !2751
  call void @llvm.dbg.value(metadata i64 -1, metadata !2747, metadata !DIExpression()) #19, !dbg !2751
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2752
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2753, !tbaa.struct !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1494, metadata !DIExpression()) #19, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !1495, metadata !DIExpression()) #19, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %2, metadata !1496, metadata !DIExpression()) #19, !dbg !2754
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1494, metadata !DIExpression()) #19, !dbg !2754
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2756
  store i32 10, i32* %7, align 8, !dbg !2757, !tbaa !1436
  %8 = icmp ne i8* %1, null, !dbg !2758
  %9 = icmp ne i8* %2, null, !dbg !2759
  %10 = and i1 %8, %9, !dbg !2760
  br i1 %10, label %12, label %11, !dbg !2760

11:                                               ; preds = %4
  tail call void @abort() #21, !dbg !2761
  unreachable, !dbg !2761

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2762
  store i8* %1, i8** %13, align 8, !dbg !2763, !tbaa !1510
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2764
  store i8* %2, i8** %14, align 8, !dbg !2765, !tbaa !1513
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #19, !dbg !2766
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2767
  ret i8* %15, !dbg !2768
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #9 !dbg !2739 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %1, metadata !2744, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %2, metadata !2745, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %3, metadata !2746, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %4, metadata !2747, metadata !DIExpression()), !dbg !2769
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2770
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #19, !dbg !2770
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2738, metadata !DIExpression()), !dbg !2771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2772, !tbaa.struct !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1494, metadata !DIExpression()) #19, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %1, metadata !1495, metadata !DIExpression()) #19, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %2, metadata !1496, metadata !DIExpression()) #19, !dbg !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1494, metadata !DIExpression()) #19, !dbg !2773
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2775
  store i32 10, i32* %8, align 8, !dbg !2776, !tbaa !1436
  %9 = icmp ne i8* %1, null, !dbg !2777
  %10 = icmp ne i8* %2, null, !dbg !2778
  %11 = and i1 %9, %10, !dbg !2779
  br i1 %11, label %13, label %12, !dbg !2779

12:                                               ; preds = %5
  tail call void @abort() #21, !dbg !2780
  unreachable, !dbg !2780

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2781
  store i8* %1, i8** %14, align 8, !dbg !2782, !tbaa !1510
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2783
  store i8* %2, i8** %15, align 8, !dbg !2784, !tbaa !1513
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #19, !dbg !2786
  ret i8* %16, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #9 !dbg !2788 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2738, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %0, metadata !2792, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %1, metadata !2793, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %2, metadata !2794, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 0, metadata !2734, metadata !DIExpression()) #19, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %0, metadata !2735, metadata !DIExpression()) #19, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %1, metadata !2736, metadata !DIExpression()) #19, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %2, metadata !2737, metadata !DIExpression()) #19, !dbg !2799
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()) #19, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %0, metadata !2744, metadata !DIExpression()) #19, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %1, metadata !2745, metadata !DIExpression()) #19, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %2, metadata !2746, metadata !DIExpression()) #19, !dbg !2800
  call void @llvm.dbg.value(metadata i64 -1, metadata !2747, metadata !DIExpression()) #19, !dbg !2800
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2801
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2801
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2802, !tbaa.struct !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1494, metadata !DIExpression()) #19, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %0, metadata !1495, metadata !DIExpression()) #19, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %1, metadata !1496, metadata !DIExpression()) #19, !dbg !2803
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1494, metadata !DIExpression()) #19, !dbg !2803
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2805
  store i32 10, i32* %6, align 8, !dbg !2806, !tbaa !1436
  %7 = icmp ne i8* %0, null, !dbg !2807
  %8 = icmp ne i8* %1, null, !dbg !2808
  %9 = and i1 %7, %8, !dbg !2809
  br i1 %9, label %11, label %10, !dbg !2809

10:                                               ; preds = %3
  tail call void @abort() #21, !dbg !2810
  unreachable, !dbg !2810

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2811
  store i8* %0, i8** %12, align 8, !dbg !2812, !tbaa !1510
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2813
  store i8* %1, i8** %13, align 8, !dbg !2814, !tbaa !1513
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #19, !dbg !2815
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #19, !dbg !2816
  ret i8* %14, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #9 !dbg !2818 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2738, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* %1, metadata !2823, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* %2, metadata !2824, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %3, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()) #19, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %0, metadata !2744, metadata !DIExpression()) #19, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %1, metadata !2745, metadata !DIExpression()) #19, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %2, metadata !2746, metadata !DIExpression()) #19, !dbg !2829
  call void @llvm.dbg.value(metadata i64 %3, metadata !2747, metadata !DIExpression()) #19, !dbg !2829
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2830
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #19, !dbg !2831, !tbaa.struct !2625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1494, metadata !DIExpression()) #19, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %0, metadata !1495, metadata !DIExpression()) #19, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %1, metadata !1496, metadata !DIExpression()) #19, !dbg !2832
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1494, metadata !DIExpression()) #19, !dbg !2832
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2834
  store i32 10, i32* %7, align 8, !dbg !2835, !tbaa !1436
  %8 = icmp ne i8* %0, null, !dbg !2836
  %9 = icmp ne i8* %1, null, !dbg !2837
  %10 = and i1 %8, %9, !dbg !2838
  br i1 %10, label %12, label %11, !dbg !2838

11:                                               ; preds = %4
  tail call void @abort() #21, !dbg !2839
  unreachable, !dbg !2839

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2840
  store i8* %0, i8** %13, align 8, !dbg !2841, !tbaa !1510
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2842
  store i8* %1, i8** %14, align 8, !dbg !2843, !tbaa !1513
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #19, !dbg !2844
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #19, !dbg !2845
  ret i8* %15, !dbg !2846
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #9 !dbg !2847 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %1, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %2, metadata !2853, metadata !DIExpression()), !dbg !2854
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2855
  ret i8* %4, !dbg !2856
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !2857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2861, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 0, metadata !2851, metadata !DIExpression()) #19, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #19, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %1, metadata !2853, metadata !DIExpression()) #19, !dbg !2864
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2866
  ret i8* %3, !dbg !2867
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #9 !dbg !2868 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2872, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8* %1, metadata !2873, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %0, metadata !2851, metadata !DIExpression()) #19, !dbg !2875
  call void @llvm.dbg.value(metadata i8* %1, metadata !2852, metadata !DIExpression()) #19, !dbg !2875
  call void @llvm.dbg.value(metadata i64 -1, metadata !2853, metadata !DIExpression()) #19, !dbg !2875
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2877
  ret i8* %3, !dbg !2878
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #9 !dbg !2879 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2883, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 0, metadata !2872, metadata !DIExpression()) #19, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()) #19, !dbg !2885
  call void @llvm.dbg.value(metadata i32 0, metadata !2851, metadata !DIExpression()) #19, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #19, !dbg !2887
  call void @llvm.dbg.value(metadata i64 -1, metadata !2853, metadata !DIExpression()) #19, !dbg !2887
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #19, !dbg !2889
  ret i8* %2, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #9 !dbg !2891 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2899, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %1, metadata !2900, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %2, metadata !2901, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %3, metadata !2902, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8** %4, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 %5, metadata !2904, metadata !DIExpression()), !dbg !2905
  %7 = icmp eq i8* %1, null, !dbg !2906
  br i1 %7, label %10, label %8, !dbg !2908

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #19, !dbg !2909
  br label %12, !dbg !2909

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.72, i64 0, i64 0), i8* %2, i8* %3) #19, !dbg !2910
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.73, i64 0, i64 0), i32 5) #19, !dbg !2911
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #19, !dbg !2911
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.74, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2912
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.75, i64 0, i64 0), i32 5) #19, !dbg !2913
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.76, i64 0, i64 0)) #19, !dbg !2913
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.74, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2914
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
  ], !dbg !2915

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.77, i64 0, i64 0), i32 5) #19, !dbg !2916
  %21 = load i8*, i8** %4, align 8, !dbg !2916, !tbaa !1031
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #19, !dbg !2916
  br label %147, !dbg !2918

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.78, i64 0, i64 0), i32 5) #19, !dbg !2919
  %25 = load i8*, i8** %4, align 8, !dbg !2919, !tbaa !1031
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2919
  %27 = load i8*, i8** %26, align 8, !dbg !2919, !tbaa !1031
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #19, !dbg !2919
  br label %147, !dbg !2920

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.79, i64 0, i64 0), i32 5) #19, !dbg !2921
  %31 = load i8*, i8** %4, align 8, !dbg !2921, !tbaa !1031
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2921
  %33 = load i8*, i8** %32, align 8, !dbg !2921, !tbaa !1031
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2921
  %35 = load i8*, i8** %34, align 8, !dbg !2921, !tbaa !1031
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #19, !dbg !2921
  br label %147, !dbg !2922

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.80, i64 0, i64 0), i32 5) #19, !dbg !2923
  %39 = load i8*, i8** %4, align 8, !dbg !2923, !tbaa !1031
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2923
  %41 = load i8*, i8** %40, align 8, !dbg !2923, !tbaa !1031
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2923
  %43 = load i8*, i8** %42, align 8, !dbg !2923, !tbaa !1031
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2923
  %45 = load i8*, i8** %44, align 8, !dbg !2923, !tbaa !1031
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #19, !dbg !2923
  br label %147, !dbg !2924

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.81, i64 0, i64 0), i32 5) #19, !dbg !2925
  %49 = load i8*, i8** %4, align 8, !dbg !2925, !tbaa !1031
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2925
  %51 = load i8*, i8** %50, align 8, !dbg !2925, !tbaa !1031
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2925
  %53 = load i8*, i8** %52, align 8, !dbg !2925, !tbaa !1031
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2925
  %55 = load i8*, i8** %54, align 8, !dbg !2925, !tbaa !1031
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2925
  %57 = load i8*, i8** %56, align 8, !dbg !2925, !tbaa !1031
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #19, !dbg !2925
  br label %147, !dbg !2926

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.82, i64 0, i64 0), i32 5) #19, !dbg !2927
  %61 = load i8*, i8** %4, align 8, !dbg !2927, !tbaa !1031
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2927
  %63 = load i8*, i8** %62, align 8, !dbg !2927, !tbaa !1031
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2927
  %65 = load i8*, i8** %64, align 8, !dbg !2927, !tbaa !1031
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2927
  %67 = load i8*, i8** %66, align 8, !dbg !2927, !tbaa !1031
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2927
  %69 = load i8*, i8** %68, align 8, !dbg !2927, !tbaa !1031
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2927
  %71 = load i8*, i8** %70, align 8, !dbg !2927, !tbaa !1031
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #19, !dbg !2927
  br label %147, !dbg !2928

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.83, i64 0, i64 0), i32 5) #19, !dbg !2929
  %75 = load i8*, i8** %4, align 8, !dbg !2929, !tbaa !1031
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2929
  %77 = load i8*, i8** %76, align 8, !dbg !2929, !tbaa !1031
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2929
  %79 = load i8*, i8** %78, align 8, !dbg !2929, !tbaa !1031
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2929
  %81 = load i8*, i8** %80, align 8, !dbg !2929, !tbaa !1031
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2929
  %83 = load i8*, i8** %82, align 8, !dbg !2929, !tbaa !1031
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2929
  %85 = load i8*, i8** %84, align 8, !dbg !2929, !tbaa !1031
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2929
  %87 = load i8*, i8** %86, align 8, !dbg !2929, !tbaa !1031
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #19, !dbg !2929
  br label %147, !dbg !2930

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.84, i64 0, i64 0), i32 5) #19, !dbg !2931
  %91 = load i8*, i8** %4, align 8, !dbg !2931, !tbaa !1031
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2931
  %93 = load i8*, i8** %92, align 8, !dbg !2931, !tbaa !1031
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2931
  %95 = load i8*, i8** %94, align 8, !dbg !2931, !tbaa !1031
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2931
  %97 = load i8*, i8** %96, align 8, !dbg !2931, !tbaa !1031
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2931
  %99 = load i8*, i8** %98, align 8, !dbg !2931, !tbaa !1031
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2931
  %101 = load i8*, i8** %100, align 8, !dbg !2931, !tbaa !1031
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2931
  %103 = load i8*, i8** %102, align 8, !dbg !2931, !tbaa !1031
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2931
  %105 = load i8*, i8** %104, align 8, !dbg !2931, !tbaa !1031
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #19, !dbg !2931
  br label %147, !dbg !2932

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.85, i64 0, i64 0), i32 5) #19, !dbg !2933
  %109 = load i8*, i8** %4, align 8, !dbg !2933, !tbaa !1031
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2933
  %111 = load i8*, i8** %110, align 8, !dbg !2933, !tbaa !1031
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2933
  %113 = load i8*, i8** %112, align 8, !dbg !2933, !tbaa !1031
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2933
  %115 = load i8*, i8** %114, align 8, !dbg !2933, !tbaa !1031
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2933
  %117 = load i8*, i8** %116, align 8, !dbg !2933, !tbaa !1031
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2933
  %119 = load i8*, i8** %118, align 8, !dbg !2933, !tbaa !1031
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2933
  %121 = load i8*, i8** %120, align 8, !dbg !2933, !tbaa !1031
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2933
  %123 = load i8*, i8** %122, align 8, !dbg !2933, !tbaa !1031
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2933
  %125 = load i8*, i8** %124, align 8, !dbg !2933, !tbaa !1031
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #19, !dbg !2933
  br label %147, !dbg !2934

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.86, i64 0, i64 0), i32 5) #19, !dbg !2935
  %129 = load i8*, i8** %4, align 8, !dbg !2935, !tbaa !1031
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2935
  %131 = load i8*, i8** %130, align 8, !dbg !2935, !tbaa !1031
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2935
  %133 = load i8*, i8** %132, align 8, !dbg !2935, !tbaa !1031
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2935
  %135 = load i8*, i8** %134, align 8, !dbg !2935, !tbaa !1031
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2935
  %137 = load i8*, i8** %136, align 8, !dbg !2935, !tbaa !1031
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2935
  %139 = load i8*, i8** %138, align 8, !dbg !2935, !tbaa !1031
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2935
  %141 = load i8*, i8** %140, align 8, !dbg !2935, !tbaa !1031
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2935
  %143 = load i8*, i8** %142, align 8, !dbg !2935, !tbaa !1031
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2935
  %145 = load i8*, i8** %144, align 8, !dbg !2935, !tbaa !1031
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #19, !dbg !2935
  br label %147, !dbg !2936

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2937
}

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #9 !dbg !2938 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2942, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* %1, metadata !2943, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* %2, metadata !2944, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* %3, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8** %4, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 0, metadata !2947, metadata !DIExpression()), !dbg !2948
  br label %6, !dbg !2949

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2951
  call void @llvm.dbg.value(metadata i64 %7, metadata !2947, metadata !DIExpression()), !dbg !2948
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2952
  %9 = load i8*, i8** %8, align 8, !dbg !2952, !tbaa !1031
  %10 = icmp eq i8* %9, null, !dbg !2954
  %11 = add i64 %7, 1, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %11, metadata !2947, metadata !DIExpression()), !dbg !2948
  br i1 %10, label %12, label %6, !dbg !2954, !llvm.loop !2956

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %7, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %7, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %7, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %7, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %7, metadata !2947, metadata !DIExpression()), !dbg !2948
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2958
  ret void, !dbg !2959
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #9 !dbg !2960 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2971, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* %1, metadata !2972, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* %2, metadata !2973, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2975, metadata !DIExpression()), !dbg !2979
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2980
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #19, !dbg !2980
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2977, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 0, metadata !2976, metadata !DIExpression()), !dbg !2979
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2982
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2982
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2982
  %11 = load i32, i32* %8, align 8, !dbg !2985
  %12 = icmp ult i32 %11, 41, !dbg !2985
  br i1 %12, label %13, label %18, !dbg !2985

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2985
  %15 = zext i32 %11 to i64, !dbg !2985
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2985
  %17 = add nuw nsw i32 %11, 8, !dbg !2985
  store i32 %17, i32* %8, align 8, !dbg !2985
  br label %21, !dbg !2985

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2985
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2985
  store i8* %20, i8** %9, align 8, !dbg !2985
  br label %21, !dbg !2985

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2985
  %25 = load i8*, i8** %24, align 8, !dbg !2985
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2986
  store i8* %25, i8** %26, align 16, !dbg !2987, !tbaa !1031
  %27 = icmp eq i8* %25, null, !dbg !2988
  br i1 %27, label %30, label %28, !dbg !2989

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2976, metadata !DIExpression()), !dbg !2979
  %29 = icmp ult i32 %22, 41, !dbg !2985
  br i1 %29, label %35, label %32, !dbg !2985

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2990
  call void @llvm.dbg.value(metadata i64 %31, metadata !2976, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %31, metadata !2976, metadata !DIExpression()), !dbg !2979
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2991
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #19, !dbg !2992
  ret void, !dbg !2992

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2985
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2985
  store i8* %34, i8** %9, align 8, !dbg !2985
  br label %40, !dbg !2985

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2985
  %37 = zext i32 %22 to i64, !dbg !2985
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2985
  %39 = add nuw nsw i32 %22, 8, !dbg !2985
  store i32 %39, i32* %8, align 8, !dbg !2985
  br label %40, !dbg !2985

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2985
  %44 = load i8*, i8** %43, align 8, !dbg !2985
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2986
  store i8* %44, i8** %45, align 8, !dbg !2987, !tbaa !1031
  %46 = icmp eq i8* %44, null, !dbg !2988
  br i1 %46, label %30, label %47, !dbg !2989

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2976, metadata !DIExpression()), !dbg !2979
  %48 = icmp ult i32 %41, 41, !dbg !2985
  br i1 %48, label %52, label %49, !dbg !2985

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2985
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2985
  store i8* %51, i8** %9, align 8, !dbg !2985
  br label %57, !dbg !2985

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2985
  %54 = zext i32 %41 to i64, !dbg !2985
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2985
  %56 = add nuw nsw i32 %41, 8, !dbg !2985
  store i32 %56, i32* %8, align 8, !dbg !2985
  br label %57, !dbg !2985

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2985
  %61 = load i8*, i8** %60, align 8, !dbg !2985
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2986
  store i8* %61, i8** %62, align 16, !dbg !2987, !tbaa !1031
  %63 = icmp eq i8* %61, null, !dbg !2988
  br i1 %63, label %30, label %64, !dbg !2989

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2976, metadata !DIExpression()), !dbg !2979
  %65 = icmp ult i32 %58, 41, !dbg !2985
  br i1 %65, label %69, label %66, !dbg !2985

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2985
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2985
  store i8* %68, i8** %9, align 8, !dbg !2985
  br label %74, !dbg !2985

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2985
  %71 = zext i32 %58 to i64, !dbg !2985
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2985
  %73 = add nuw nsw i32 %58, 8, !dbg !2985
  store i32 %73, i32* %8, align 8, !dbg !2985
  br label %74, !dbg !2985

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2985
  %78 = load i8*, i8** %77, align 8, !dbg !2985
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2986
  store i8* %78, i8** %79, align 8, !dbg !2987, !tbaa !1031
  %80 = icmp eq i8* %78, null, !dbg !2988
  br i1 %80, label %30, label %81, !dbg !2989

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2976, metadata !DIExpression()), !dbg !2979
  %82 = icmp ult i32 %75, 41, !dbg !2985
  br i1 %82, label %86, label %83, !dbg !2985

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2985
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2985
  store i8* %85, i8** %9, align 8, !dbg !2985
  br label %91, !dbg !2985

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2985
  %88 = zext i32 %75 to i64, !dbg !2985
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2985
  %90 = add nuw nsw i32 %75, 8, !dbg !2985
  store i32 %90, i32* %8, align 8, !dbg !2985
  br label %91, !dbg !2985

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2985
  %95 = load i8*, i8** %94, align 8, !dbg !2985
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2986
  store i8* %95, i8** %96, align 16, !dbg !2987, !tbaa !1031
  %97 = icmp eq i8* %95, null, !dbg !2988
  br i1 %97, label %30, label %98, !dbg !2989

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2976, metadata !DIExpression()), !dbg !2979
  %99 = icmp ult i32 %92, 41, !dbg !2985
  br i1 %99, label %103, label %100, !dbg !2985

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2985
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2985
  store i8* %102, i8** %9, align 8, !dbg !2985
  br label %108, !dbg !2985

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2985
  %105 = zext i32 %92 to i64, !dbg !2985
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2985
  %107 = add nuw nsw i32 %92, 8, !dbg !2985
  store i32 %107, i32* %8, align 8, !dbg !2985
  br label %108, !dbg !2985

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2985
  %111 = load i8*, i8** %110, align 8, !dbg !2985
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2986
  store i8* %111, i8** %112, align 8, !dbg !2987, !tbaa !1031
  %113 = icmp eq i8* %111, null, !dbg !2988
  br i1 %113, label %30, label %114, !dbg !2989

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2976, metadata !DIExpression()), !dbg !2979
  %115 = load i8*, i8** %9, align 8, !dbg !2985
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2985
  store i8* %116, i8** %9, align 8, !dbg !2985
  %117 = bitcast i8* %115 to i8**, !dbg !2985
  %118 = load i8*, i8** %117, align 8, !dbg !2985
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2986
  store i8* %118, i8** %119, align 16, !dbg !2987, !tbaa !1031
  %120 = icmp eq i8* %118, null, !dbg !2988
  br i1 %120, label %30, label %121, !dbg !2989

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2976, metadata !DIExpression()), !dbg !2979
  %122 = load i8*, i8** %9, align 8, !dbg !2985
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2985
  store i8* %123, i8** %9, align 8, !dbg !2985
  %124 = bitcast i8* %122 to i8**, !dbg !2985
  %125 = load i8*, i8** %124, align 8, !dbg !2985
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2986
  store i8* %125, i8** %126, align 8, !dbg !2987, !tbaa !1031
  %127 = icmp eq i8* %125, null, !dbg !2988
  br i1 %127, label %30, label %128, !dbg !2989

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2976, metadata !DIExpression()), !dbg !2979
  %129 = load i8*, i8** %9, align 8, !dbg !2985
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2985
  store i8* %130, i8** %9, align 8, !dbg !2985
  %131 = bitcast i8* %129 to i8**, !dbg !2985
  %132 = load i8*, i8** %131, align 8, !dbg !2985
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2986
  store i8* %132, i8** %133, align 16, !dbg !2987, !tbaa !1031
  %134 = icmp eq i8* %132, null, !dbg !2988
  br i1 %134, label %30, label %135, !dbg !2989

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2976, metadata !DIExpression()), !dbg !2979
  %136 = load i8*, i8** %9, align 8, !dbg !2985
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2985
  store i8* %137, i8** %9, align 8, !dbg !2985
  %138 = bitcast i8* %136 to i8**, !dbg !2985
  %139 = load i8*, i8** %138, align 8, !dbg !2985
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2986
  store i8* %139, i8** %140, align 8, !dbg !2987, !tbaa !1031
  %141 = icmp eq i8* %139, null, !dbg !2988
  %142 = select i1 %141, i64 9, i64 10, !dbg !2989
  br label %30, !dbg !2989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #9 !dbg !2993 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2997, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %1, metadata !2998, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %2, metadata !2999, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()), !dbg !3007
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3008
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3008
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3001, metadata !DIExpression()), !dbg !3009
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3010
  call void @llvm.va_start(i8* nonnull %6), !dbg !3010
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3011
  call void @llvm.va_end(i8* nonnull %6), !dbg !3012
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #19, !dbg !3013
  ret void, !dbg !3013
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #19

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #9 !dbg !3014 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3015, !tbaa !1031
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.74, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3015
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.89, i64 0, i64 0), i32 5) #19, !dbg !3016
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.90, i64 0, i64 0)) #19, !dbg !3016
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.91, i64 0, i64 0), i32 5) #19, !dbg !3017
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.92, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.93, i64 0, i64 0)) #19, !dbg !3017
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.94, i64 0, i64 0), i32 5) #19, !dbg !3018
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.95, i64 0, i64 0)) #19, !dbg !3018
  ret void, !dbg !3019
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #6 !dbg !3020 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3024, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3025, metadata !DIExpression()), !dbg !3026
  %3 = udiv i64 9223372036854775807, %1, !dbg !3027
  %4 = icmp ult i64 %3, %0, !dbg !3027
  br i1 %4, label %5, label %6, !dbg !3029

5:                                                ; preds = %2
  tail call void @xalloc_die() #21, !dbg !3030
  unreachable, !dbg !3030

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %7, metadata !3032, metadata !DIExpression()) #19, !dbg !3038
  %8 = tail call noalias i8* @malloc(i64 %7) #19, !dbg !3040
  call void @llvm.dbg.value(metadata i8* %8, metadata !3037, metadata !DIExpression()) #19, !dbg !3038
  %9 = icmp eq i8* %8, null, !dbg !3041
  %10 = icmp ne i64 %7, 0, !dbg !3043
  %11 = and i1 %10, %9, !dbg !3044
  br i1 %11, label %12, label %13, !dbg !3044

12:                                               ; preds = %6
  tail call void @xalloc_die() #21, !dbg !3045
  unreachable, !dbg !3045

13:                                               ; preds = %6
  ret i8* %8, !dbg !3046
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #9 !dbg !3033 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3032, metadata !DIExpression()), !dbg !3047
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %2, metadata !3037, metadata !DIExpression()), !dbg !3047
  %3 = icmp eq i8* %2, null, !dbg !3049
  %4 = icmp ne i64 %0, 0, !dbg !3050
  %5 = and i1 %4, %3, !dbg !3051
  br i1 %5, label %6, label %7, !dbg !3051

6:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !3052
  unreachable, !dbg !3052

7:                                                ; preds = %1
  ret i8* %2, !dbg !3053
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #6 !dbg !3054 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3058, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %2, metadata !3060, metadata !DIExpression()), !dbg !3061
  %4 = udiv i64 9223372036854775807, %2, !dbg !3062
  %5 = icmp ult i64 %4, %1, !dbg !3062
  br i1 %5, label %6, label %7, !dbg !3064

6:                                                ; preds = %3
  tail call void @xalloc_die() #21, !dbg !3065
  unreachable, !dbg !3065

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #19, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %8, metadata !3072, metadata !DIExpression()) #19, !dbg !3073
  %9 = icmp eq i64 %8, 0, !dbg !3075
  %10 = icmp ne i8* %0, null, !dbg !3077
  %11 = and i1 %10, %9, !dbg !3078
  br i1 %11, label %12, label %13, !dbg !3078

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #19, !dbg !3079
  br label %19, !dbg !3081

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #19, !dbg !3082
  call void @llvm.dbg.value(metadata i8* %14, metadata !3067, metadata !DIExpression()) #19, !dbg !3073
  %15 = icmp eq i8* %14, null, !dbg !3083
  %16 = icmp ne i64 %8, 0, !dbg !3085
  %17 = and i1 %16, %15, !dbg !3086
  br i1 %17, label %18, label %19, !dbg !3086

18:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !3087
  unreachable, !dbg !3087

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3073
  ret i8* %20, !dbg !3088
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !3068 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3089
  %3 = icmp eq i64 %1, 0, !dbg !3090
  %4 = icmp ne i8* %0, null, !dbg !3091
  %5 = and i1 %4, %3, !dbg !3092
  br i1 %5, label %6, label %7, !dbg !3092

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #19, !dbg !3093
  br label %13, !dbg !3094

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #19, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %8, metadata !3067, metadata !DIExpression()), !dbg !3089
  %9 = icmp eq i8* %8, null, !dbg !3096
  %10 = icmp ne i64 %1, 0, !dbg !3097
  %11 = and i1 %10, %9, !dbg !3098
  br i1 %11, label %12, label %13, !dbg !3098

12:                                               ; preds = %7
  tail call void @xalloc_die() #21, !dbg !3099
  unreachable, !dbg !3099

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3089
  ret i8* %14, !dbg !3100
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #6 !dbg !404 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !409, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64* %1, metadata !410, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %2, metadata !411, metadata !DIExpression()), !dbg !3101
  %4 = load i64, i64* %1, align 8, !dbg !3102, !tbaa !2338
  call void @llvm.dbg.value(metadata i64 %4, metadata !412, metadata !DIExpression()), !dbg !3101
  %5 = icmp eq i8* %0, null, !dbg !3103
  br i1 %5, label %6, label %20, !dbg !3105

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3106
  br i1 %7, label %8, label %13, !dbg !3109

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %9, metadata !412, metadata !DIExpression()), !dbg !3101
  %10 = icmp ugt i64 %2, 128, !dbg !3112
  %11 = zext i1 %10 to i64, !dbg !3112
  %12 = add nuw nsw i64 %9, %11, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %12, metadata !412, metadata !DIExpression()), !dbg !3101
  br label %13, !dbg !3114

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3101
  call void @llvm.dbg.value(metadata i64 %14, metadata !412, metadata !DIExpression()), !dbg !3101
  %15 = udiv i64 9223372036854775807, %2, !dbg !3115
  %16 = icmp ult i64 %15, %14, !dbg !3115
  br i1 %16, label %19, label %17, !dbg !3117

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !412, metadata !DIExpression()), !dbg !3101
  store i64 %14, i64* %1, align 8, !dbg !3118, !tbaa !2338
  %18 = mul i64 %14, %2, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #19, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %28, metadata !3072, metadata !DIExpression()) #19, !dbg !3120
  br label %31, !dbg !3122

19:                                               ; preds = %13
  tail call void @xalloc_die() #21, !dbg !3123
  unreachable, !dbg !3123

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3124
  %22 = icmp ugt i64 %21, %4, !dbg !3127
  br i1 %22, label %24, label %23, !dbg !3128

23:                                               ; preds = %20
  tail call void @xalloc_die() #21, !dbg !3129
  unreachable, !dbg !3129

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3130
  %26 = add nuw i64 %4, 1, !dbg !3131
  %27 = add i64 %26, %25, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %27, metadata !412, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %27, metadata !412, metadata !DIExpression()), !dbg !3101
  store i64 %27, i64* %1, align 8, !dbg !3118, !tbaa !2338
  %28 = mul i64 %27, %2, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #19, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %28, metadata !3072, metadata !DIExpression()) #19, !dbg !3120
  %29 = icmp eq i64 %28, 0, !dbg !3133
  br i1 %29, label %30, label %31, !dbg !3122

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #19, !dbg !3134
  br label %38, !dbg !3135

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #19, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %33, metadata !3067, metadata !DIExpression()) #19, !dbg !3120
  %34 = icmp eq i8* %33, null, !dbg !3137
  %35 = icmp ne i64 %32, 0, !dbg !3138
  %36 = and i1 %35, %34, !dbg !3139
  br i1 %36, label %37, label %38, !dbg !3139

37:                                               ; preds = %31
  tail call void @xalloc_die() #21, !dbg !3140
  unreachable, !dbg !3140

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3120
  ret i8* %39, !dbg !3141
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #6 !dbg !3142 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %0, metadata !3032, metadata !DIExpression()) #19, !dbg !3146
  %2 = tail call noalias i8* @malloc(i64 %0) #19, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %2, metadata !3037, metadata !DIExpression()) #19, !dbg !3146
  %3 = icmp eq i8* %2, null, !dbg !3149
  %4 = icmp ne i64 %0, 0, !dbg !3150
  %5 = and i1 %4, %3, !dbg !3151
  br i1 %5, label %6, label %7, !dbg !3151

6:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !3152
  unreachable, !dbg !3152

7:                                                ; preds = %1
  ret i8* %2, !dbg !3153
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #9 !dbg !3154 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3158, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64* %1, metadata !3159, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8* %0, metadata !409, metadata !DIExpression()) #19, !dbg !3161
  call void @llvm.dbg.value(metadata i64* %1, metadata !410, metadata !DIExpression()) #19, !dbg !3161
  call void @llvm.dbg.value(metadata i64 1, metadata !411, metadata !DIExpression()) #19, !dbg !3161
  %3 = load i64, i64* %1, align 8, !dbg !3163, !tbaa !2338
  call void @llvm.dbg.value(metadata i64 %3, metadata !412, metadata !DIExpression()) #19, !dbg !3161
  %4 = icmp eq i8* %0, null, !dbg !3164
  br i1 %4, label %5, label %12, !dbg !3165

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3166
  br i1 %6, label %9, label %7, !dbg !3167

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !412, metadata !DIExpression()) #19, !dbg !3161
  %8 = icmp slt i64 %3, 0, !dbg !3168
  br i1 %8, label %11, label %9, !dbg !3169

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !412, metadata !DIExpression()) #19, !dbg !3161
  store i64 %10, i64* %1, align 8, !dbg !3170, !tbaa !2338
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #19, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %18, metadata !3072, metadata !DIExpression()) #19, !dbg !3171
  br label %21, !dbg !3173

11:                                               ; preds = %7
  tail call void @xalloc_die() #21, !dbg !3174
  unreachable, !dbg !3174

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3175
  br i1 %13, label %15, label %14, !dbg !3176

14:                                               ; preds = %12
  tail call void @xalloc_die() #21, !dbg !3177
  unreachable, !dbg !3177

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3178
  %17 = add nuw nsw i64 %3, 1, !dbg !3179
  %18 = add nuw nsw i64 %17, %16, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %18, metadata !412, metadata !DIExpression()) #19, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %18, metadata !412, metadata !DIExpression()) #19, !dbg !3161
  store i64 %18, i64* %1, align 8, !dbg !3170, !tbaa !2338
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()) #19, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %18, metadata !3072, metadata !DIExpression()) #19, !dbg !3171
  %19 = icmp eq i64 %18, 0, !dbg !3181
  br i1 %19, label %20, label %21, !dbg !3173

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #19, !dbg !3182
  br label %28, !dbg !3183

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #19, !dbg !3184
  call void @llvm.dbg.value(metadata i8* %23, metadata !3067, metadata !DIExpression()) #19, !dbg !3171
  %24 = icmp eq i8* %23, null, !dbg !3185
  %25 = icmp ne i64 %22, 0, !dbg !3186
  %26 = and i1 %25, %24, !dbg !3187
  br i1 %26, label %27, label %28, !dbg !3187

27:                                               ; preds = %21
  tail call void @xalloc_die() #21, !dbg !3188
  unreachable, !dbg !3188

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3171
  ret i8* %29, !dbg !3189
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #9 !dbg !3190 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3192, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()) #19, !dbg !3199
  call void @llvm.dbg.value(metadata i64 1, metadata !3197, metadata !DIExpression()) #19, !dbg !3199
  %2 = icmp slt i64 %0, 0, !dbg !3201
  br i1 %2, label %6, label %3, !dbg !3203

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #19, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %4, metadata !3198, metadata !DIExpression()) #19, !dbg !3199
  %5 = icmp eq i8* %4, null, !dbg !3205
  br i1 %5, label %6, label %7, !dbg !3206

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #21, !dbg !3207
  unreachable, !dbg !3207

7:                                                ; preds = %3
  ret i8* %4, !dbg !3208
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #9 !dbg !3195 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3209
  %3 = udiv i64 9223372036854775807, %1, !dbg !3210
  %4 = icmp ult i64 %3, %0, !dbg !3210
  br i1 %4, label %8, label %5, !dbg !3211

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #19, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %6, metadata !3198, metadata !DIExpression()), !dbg !3209
  %7 = icmp eq i8* %6, null, !dbg !3213
  br i1 %7, label %8, label %9, !dbg !3214

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #21, !dbg !3215
  unreachable, !dbg !3215

9:                                                ; preds = %5
  ret i8* %6, !dbg !3216
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #9 !dbg !3217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %1, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()) #19, !dbg !3224
  %3 = tail call noalias i8* @malloc(i64 %1) #19, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %3, metadata !3037, metadata !DIExpression()) #19, !dbg !3224
  %4 = icmp eq i8* %3, null, !dbg !3227
  %5 = icmp ne i64 %1, 0, !dbg !3228
  %6 = and i1 %5, %4, !dbg !3229
  br i1 %6, label %7, label %8, !dbg !3229

7:                                                ; preds = %2
  tail call void @xalloc_die() #21, !dbg !3230
  unreachable, !dbg !3230

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3231, metadata !DIExpression()) #19, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %0, metadata !3238, metadata !DIExpression()) #19, !dbg !3240
  call void @llvm.dbg.value(metadata i64 %1, metadata !3239, metadata !DIExpression()) #19, !dbg !3240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #19, !dbg !3242
  ret i8* %3, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #9 !dbg !3244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3246, metadata !DIExpression()), !dbg !3247
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3248
  %3 = add i64 %2, 1, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %0, metadata !3221, metadata !DIExpression()) #19, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %3, metadata !3222, metadata !DIExpression()) #19, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %3, metadata !3032, metadata !DIExpression()) #19, !dbg !3252
  %4 = tail call noalias i8* @malloc(i64 %3) #19, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %4, metadata !3037, metadata !DIExpression()) #19, !dbg !3252
  %5 = icmp eq i8* %4, null, !dbg !3255
  %6 = icmp ne i64 %3, 0, !dbg !3256
  %7 = and i1 %6, %5, !dbg !3257
  br i1 %7, label %8, label %9, !dbg !3257

8:                                                ; preds = %1
  tail call void @xalloc_die() #21, !dbg !3258
  unreachable, !dbg !3258

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3231, metadata !DIExpression()) #19, !dbg !3259
  call void @llvm.dbg.value(metadata i8* %0, metadata !3238, metadata !DIExpression()) #19, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %3, metadata !3239, metadata !DIExpression()) #19, !dbg !3259
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #19, !dbg !3261
  ret i8* %4, !dbg !3262
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3263 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3264, !tbaa !1356
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.106, i64 0, i64 0), i32 5) #19, !dbg !3265
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %2) #19, !dbg !3266
  tail call void @abort() #21, !dbg !3267
  unreachable, !dbg !3267
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3268 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3270, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3276
  %3 = icmp eq i64 %0, 0, !dbg !3277
  %4 = icmp eq i64 %1, 0, !dbg !3278
  %5 = or i1 %3, %4, !dbg !3279
  br i1 %5, label %11, label %6, !dbg !3279

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3273, metadata !DIExpression()), !dbg !3280
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3281
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3281
  br i1 %8, label %9, label %11, !dbg !3283

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3284
  store i32 12, i32* %10, align 4, !dbg !3286, !tbaa !1356
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3270, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %12, metadata !3271, metadata !DIExpression()), !dbg !3276
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #19, !dbg !3287
  call void @llvm.dbg.value(metadata i8* %14, metadata !3272, metadata !DIExpression()), !dbg !3276
  br label %15, !dbg !3288

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3276
  ret i8* %16, !dbg !3289
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #9 !dbg !3290 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3298, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8* %1, metadata !3299, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %2, metadata !3300, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3301, metadata !DIExpression()), !dbg !3307
  %6 = bitcast i32* %5 to i8*, !dbg !3308
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3308
  %7 = icmp eq i32* %0, null, !dbg !3309
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3311
  call void @llvm.dbg.value(metadata i32* %8, metadata !3298, metadata !DIExpression()), !dbg !3307
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #19, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %9, metadata !3302, metadata !DIExpression()), !dbg !3307
  %10 = icmp ugt i64 %9, -3, !dbg !3313
  %11 = icmp ne i64 %2, 0, !dbg !3314
  %12 = and i1 %11, %10, !dbg !3315
  br i1 %12, label %13, label %18, !dbg !3315

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #19, !dbg !3316
  br i1 %14, label %18, label %15, !dbg !3317

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3318, !tbaa !1156
  call void @llvm.dbg.value(metadata i8 %16, metadata !3304, metadata !DIExpression()), !dbg !3319
  %17 = zext i8 %16 to i32, !dbg !3320
  store i32 %17, i32* %8, align 4, !dbg !3321, !tbaa !1356
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #19, !dbg !3322
  ret i64 %19, !dbg !3322
}

; Function Attrs: nounwind
declare !dbg !430 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3323 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3329, metadata !DIExpression()), !dbg !3334
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #19, !dbg !3335
  call void @llvm.dbg.value(metadata i1 undef, metadata !3330, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3336, metadata !DIExpression()), !dbg !3339
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3341
  %4 = load i32, i32* %3, align 8, !dbg !3341, !tbaa !3342
  %5 = and i32 %4, 32, !dbg !3341
  %6 = icmp eq i32 %5, 0, !dbg !3343
  call void @llvm.dbg.value(metadata i1 %6, metadata !3332, metadata !DIExpression()), !dbg !3334
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #19, !dbg !3344
  %8 = icmp ne i32 %7, 0, !dbg !3345
  call void @llvm.dbg.value(metadata i1 %8, metadata !3333, metadata !DIExpression()), !dbg !3334
  br i1 %6, label %9, label %19, !dbg !3346

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3348
  call void @llvm.dbg.value(metadata i1 %10, metadata !3330, metadata !DIExpression()), !dbg !3334
  %11 = xor i1 %8, true, !dbg !3349
  %12 = or i1 %10, %11, !dbg !3349
  %13 = sext i1 %8 to i32, !dbg !3349
  br i1 %12, label %22, label %14, !dbg !3349

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3350
  %16 = load i32, i32* %15, align 4, !dbg !3350, !tbaa !1356
  %17 = icmp ne i32 %16, 9, !dbg !3351
  %18 = sext i1 %17 to i32, !dbg !3352
  br label %22, !dbg !3352

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3353

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3355
  store i32 0, i32* %21, align 4, !dbg !3357, !tbaa !1356
  br label %22, !dbg !3355

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3334
  ret i32 %23, !dbg !3358
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #9 !dbg !3359 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3361, metadata !DIExpression()), !dbg !3366
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3367
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3367
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3362, metadata !DIExpression()), !dbg !3368
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #19, !dbg !3369
  %5 = icmp eq i32 %4, 0, !dbg !3369
  br i1 %5, label %6, label %13, !dbg !3371

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3372
  %8 = load i16, i16* %7, align 16, !dbg !3372
  %9 = icmp eq i16 %8, 67, !dbg !3372
  br i1 %9, label %13, label %10, !dbg !3373

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i64 6), !dbg !3374
  %12 = icmp ne i32 %11, 0, !dbg !3375
  br label %13, !dbg !3373

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3366
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #19, !dbg !3376
  ret i1 %14, !dbg !3376
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #9 !dbg !3377 {
  %1 = tail call i8* @nl_langinfo(i32 14) #19, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %1, metadata !3379, metadata !DIExpression()), !dbg !3381
  %2 = icmp eq i8* %1, null, !dbg !3382
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), i8* %1, !dbg !3384
  call void @llvm.dbg.value(metadata i8* %3, metadata !3379, metadata !DIExpression()), !dbg !3381
  %4 = load i8, i8* %3, align 1, !dbg !3385, !tbaa !1156
  %5 = icmp eq i8 %4, 0, !dbg !3389
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0), i8* %3, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %6, metadata !3379, metadata !DIExpression()), !dbg !3381
  ret i8* %6, !dbg !3391
}

; Function Attrs: nounwind
declare !dbg !882 i8* @nl_langinfo(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #9 !dbg !3392 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8* %1, metadata !3397, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %2, metadata !3398, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 %0, metadata !3400, metadata !DIExpression()) #19, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %1, metadata !3403, metadata !DIExpression()) #19, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %2, metadata !3404, metadata !DIExpression()) #19, !dbg !3409
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()) #19, !dbg !3417
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %4, metadata !3416, metadata !DIExpression()) #19, !dbg !3417
  call void @llvm.dbg.value(metadata i8* %4, metadata !3405, metadata !DIExpression()) #19, !dbg !3409
  %5 = icmp eq i8* %4, null, !dbg !3420
  br i1 %5, label %6, label %9, !dbg !3421

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3422
  br i1 %7, label %19, label %8, !dbg !3425

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3426, !tbaa !1156
  br label %19, !dbg !3427

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %10, metadata !3406, metadata !DIExpression()) #19, !dbg !3429
  %11 = icmp ult i64 %10, %2, !dbg !3430
  br i1 %11, label %12, label %14, !dbg !3432

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %1, metadata !3435, metadata !DIExpression()) #19, !dbg !3440
  call void @llvm.dbg.value(metadata i8* %4, metadata !3438, metadata !DIExpression()) #19, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %13, metadata !3439, metadata !DIExpression()) #19, !dbg !3440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #19, !dbg !3442
  br label %19, !dbg !3443

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3444
  br i1 %15, label %19, label %16, !dbg !3447

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %1, metadata !3435, metadata !DIExpression()) #19, !dbg !3450
  call void @llvm.dbg.value(metadata i8* %4, metadata !3438, metadata !DIExpression()) #19, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %17, metadata !3439, metadata !DIExpression()) #19, !dbg !3450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #19, !dbg !3452
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3453
  store i8 0, i8* %18, align 1, !dbg !3454, !tbaa !1156
  br label %19, !dbg !3455

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3456
  ret i32 %20, !dbg !3457
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #9 !dbg !3458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3460, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()) #19, !dbg !3462
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #19, !dbg !3464
  call void @llvm.dbg.value(metadata i8* %2, metadata !3416, metadata !DIExpression()) #19, !dbg !3462
  ret i8* %2, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #9 !dbg !3466 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3472, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 0, metadata !3473, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 0, metadata !3475, metadata !DIExpression()), !dbg !3476
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %2, metadata !3474, metadata !DIExpression()), !dbg !3476
  %3 = icmp slt i32 %2, 0, !dbg !3478
  br i1 %3, label %4, label %6, !dbg !3480

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3481
  br label %24, !dbg !3482

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !3483
  %8 = icmp eq i32 %7, 0, !dbg !3483
  br i1 %8, label %13, label %9, !dbg !3485

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3486
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #19, !dbg !3487
  %12 = icmp eq i64 %11, -1, !dbg !3488
  br i1 %12, label %16, label %13, !dbg !3489

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #19, !dbg !3490
  %15 = icmp eq i32 %14, 0, !dbg !3490
  br i1 %15, label %16, label %18, !dbg !3491

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3473, metadata !DIExpression()), !dbg !3476
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %21, metadata !3475, metadata !DIExpression()), !dbg !3476
  br label %24, !dbg !3493

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3494
  %20 = load i32, i32* %19, align 4, !dbg !3494, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 %20, metadata !3473, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %20, metadata !3473, metadata !DIExpression()), !dbg !3476
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %21, metadata !3475, metadata !DIExpression()), !dbg !3476
  %22 = icmp eq i32 %20, 0, !dbg !3495
  br i1 %22, label %24, label %23, !dbg !3493

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3497, !tbaa !1356
  call void @llvm.dbg.value(metadata i32 -1, metadata !3475, metadata !DIExpression()), !dbg !3476
  br label %24, !dbg !3499

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3476
  ret i32 %25, !dbg !3500
}

; Function Attrs: nofree nounwind
declare !dbg !891 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !926 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !927 i64 @lseek(i32, i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #9 !dbg !3501 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3507, metadata !DIExpression()), !dbg !3508
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3509
  br i1 %2, label %6, label %3, !dbg !3511

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #19, !dbg !3512
  %5 = icmp eq i32 %4, 0, !dbg !3512
  br i1 %5, label %6, label %8, !dbg !3513

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3514
  br label %17, !dbg !3515

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3516, metadata !DIExpression()) #19, !dbg !3521
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3523
  %10 = load i32, i32* %9, align 8, !dbg !3523, !tbaa !3342
  %11 = and i32 %10, 256, !dbg !3525
  %12 = icmp eq i32 %11, 0, !dbg !3525
  br i1 %12, label %15, label %13, !dbg !3526

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #19, !dbg !3527
  br label %15, !dbg !3527

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3528
  br label %17, !dbg !3529

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3508
  ret i32 %18, !dbg !3530
}

; Function Attrs: nofree nounwind
declare !dbg !935 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #9 !dbg !3531 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3539, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %2, metadata !3540, metadata !DIExpression()), !dbg !3544
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3545
  %5 = load i8*, i8** %4, align 8, !dbg !3545, !tbaa !3546
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3547
  %7 = load i8*, i8** %6, align 8, !dbg !3547, !tbaa !3548
  %8 = icmp eq i8* %5, %7, !dbg !3549
  br i1 %8, label %9, label %28, !dbg !3550

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3551
  %11 = load i8*, i8** %10, align 8, !dbg !3551, !tbaa !1286
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3552
  %13 = load i8*, i8** %12, align 8, !dbg !3552, !tbaa !3553
  %14 = icmp eq i8* %11, %13, !dbg !3554
  br i1 %14, label %15, label %28, !dbg !3555

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3556
  %17 = load i8*, i8** %16, align 8, !dbg !3556, !tbaa !3557
  %18 = icmp eq i8* %17, null, !dbg !3558
  br i1 %18, label %19, label %28, !dbg !3559

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #19, !dbg !3560
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #19, !dbg !3561
  call void @llvm.dbg.value(metadata i64 %21, metadata !3541, metadata !DIExpression()), !dbg !3562
  %22 = icmp eq i64 %21, -1, !dbg !3563
  br i1 %22, label %30, label %23, !dbg !3565

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3566
  %25 = load i32, i32* %24, align 8, !dbg !3567, !tbaa !3342
  %26 = and i32 %25, -17, !dbg !3567
  store i32 %26, i32* %24, align 8, !dbg !3567, !tbaa !3342
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3568
  store i64 %21, i64* %27, align 8, !dbg !3569, !tbaa !3570
  br label %30, !dbg !3571

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3572
  br label %30, !dbg !3573

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3544
  ret i32 %31, !dbg !3574
}

; Function Attrs: nofree nounwind
declare !dbg !1011 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #5

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nounwind }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!294, !2, !11, !95, !101, !143, !358, !288, !400, !421, !424, !427, !446, !485, !492, !885, !888, !932, !973}
!llvm.ident = !{!1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014, !1014}
!llvm.module.flags = !{!1015, !1016, !1017, !1018, !1019}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !12, line: 46, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !89, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !77, !81, !85}
!14 = !DISubprogram(name: "close_stream", scope: !15, file: !15, line: 2, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!15 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!22 = !{!23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !39, !40, !41, !42, !46, !48, !50, !54, !57, !59, !62, !65, !66, !68, !72, !73}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 51, baseType: !18, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 36, flags: DIFlagFwdDecl)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 70, baseType: !19, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 152, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!49 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 43, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 153, baseType: !45)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !20, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !21, line: 37, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !20, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !21, line: 38, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !20, file: !21, line: 93, baseType: !19, size: 64, offset: 1344)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !20, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 20)
!77 = !DISubprogram(name: "dcgettext", scope: !78, file: !78, line: 51, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!78 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!79 = !DISubroutineType(types: !80)
!80 = !{!25, !6, !6, !18}
!81 = !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 391, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!82 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!83 = !DISubroutineType(types: !84)
!84 = !{!25, !6}
!85 = !DISubprogram(name: "error", scope: !86, file: !86, line: 52, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!86 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!87 = !DISubroutineType(types: !88)
!88 = !{null, !18, !18, !6, null}
!89 = !{!9, !90}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !12, line: 56, type: !92, isLocal: true, isDefinition: true)
!92 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "exit_failure", scope: !95, file: !96, line: 24, type: !98, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !97, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!97 = !{!93}
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "program_name", scope: !101, file: !102, line: 33, type: !6, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !103, globals: !140, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !{!67, !104, !25}
!104 = !DISubprogram(name: "fputs", scope: !105, file: !105, line: 626, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!105 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!18, !6, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !109, file: !21, line: 51, baseType: !18, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !109, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !109, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !109, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !109, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !109, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !109, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !109, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !109, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !109, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !109, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !109, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !109, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !109, file: !21, line: 70, baseType: !108, size: 64, offset: 832)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !109, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !109, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !109, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !109, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !109, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !109, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !109, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !109, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !109, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !109, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !109, file: !21, line: 93, baseType: !108, size: 64, offset: 1344)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !109, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !109, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !109, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !109, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!140 = !{!99}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !143, file: !144, line: 85, type: !282, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !180, globals: !255, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!146, !160, !165}
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !82, line: 32, baseType: !147, size: 32, elements: !148)
!147 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!149 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!152 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!153 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!154 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!155 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!156 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!157 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!158 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!159 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !82, line: 242, baseType: !147, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 46, baseType: !147, size: 32, elements: !167)
!166 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!168 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!169 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!170 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!171 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!172 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!173 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!174 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!175 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!176 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!177 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!178 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!179 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!180 = !{!181, !187, !203, !207, !18, !47, !210, !69, !228, !232, !77, !238, !242, !25, !246, !249, !252}
!181 = !DISubprogram(name: "xmemdup", scope: !182, file: !182, line: 62, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!182 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = !DISubroutineType(types: !184)
!184 = !{!67, !185, !71}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!187 = !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 342, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!188 = !DISubroutineType(types: !189)
!189 = !{!25, !6, !71, !190, !191}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !144, line: 65, size: 448, elements: !194)
!194 = !{!195, !196, !197, !201, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !193, file: !144, line: 68, baseType: !146, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !144, line: 71, baseType: !18, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !193, file: !144, line: 75, baseType: !198, size: 256, offset: 64)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 8)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !193, file: !144, line: 78, baseType: !6, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !193, file: !144, line: 81, baseType: !6, size: 64, offset: 384)
!203 = !DISubprogram(name: "free", scope: !204, file: !204, line: 565, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!204 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!205 = !DISubroutineType(types: !206)
!206 = !{null, !67}
!207 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 408, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!208 = !DISubroutineType(types: !209)
!209 = !{!25, !18, !6, !6, !6, !71}
!210 = !DISubprogram(name: "rpl_mbrtowc", scope: !211, file: !211, line: 717, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!211 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!212 = !DISubroutineType(types: !213)
!213 = !{!71, !214, !6, !71, !215}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !218)
!217 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !216, file: !217, line: 15, baseType: !18, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !216, file: !217, line: 20, baseType: !221, size: 32, offset: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !217, line: 16, size: 32, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !221, file: !217, line: 18, baseType: !147, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !221, file: !217, line: 19, baseType: !225, size: 32)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 4)
!228 = !DISubprogram(name: "iswprint", scope: !229, file: !229, line: 120, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!229 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!230 = !DISubroutineType(types: !231)
!231 = !{!18, !147}
!232 = !DISubprogram(name: "mbsinit", scope: !233, file: !233, line: 292, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!233 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!234 = !DISubroutineType(types: !235)
!235 = !{!18, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!238 = !DISubprogram(name: "locale_charset", scope: !239, file: !239, line: 35, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!239 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !DISubroutineType(types: !241)
!241 = !{!6}
!242 = !DISubprogram(name: "c_strcasecmp", scope: !243, file: !243, line: 42, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!243 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!244 = !DISubroutineType(types: !245)
!245 = !{!18, !6, !6}
!246 = !DISubprogram(name: "xmalloc", scope: !182, file: !182, line: 53, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!247 = !DISubroutineType(types: !248)
!248 = !{!67, !71}
!249 = !DISubprogram(name: "xalloc_die", scope: !182, file: !182, line: 51, type: !250, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!250 = !DISubroutineType(types: !251)
!251 = !{null}
!252 = !DISubprogram(name: "xrealloc", scope: !182, file: !182, line: 59, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!253 = !DISubroutineType(types: !254)
!254 = !{!67, !67, !71}
!255 = !{!141, !256, !262, !264, !266, !271, !278, !280}
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !143, file: !144, line: 101, type: !258, isLocal: false, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 320, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!260 = !{!261}
!261 = !DISubrange(count: 10)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !143, file: !144, line: 1052, type: !193, isLocal: false, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !143, file: !144, line: 116, type: !193, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "slot0", scope: !143, file: !144, line: 842, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 256)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "slotvec", scope: !143, file: !144, line: 845, type: !273, isLocal: true, isDefinition: true)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !144, line: 834, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !274, file: !144, line: 836, baseType: !69, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !274, file: !144, line: 837, baseType: !25, size: 64, offset: 64)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "nslots", scope: !143, file: !144, line: 843, type: !18, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "slotvec0", scope: !143, file: !144, line: 844, type: !274, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 704, elements: !284)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!284 = !{!285}
!285 = !DISubrange(count: 11)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !288, file: !289, line: 26, type: !291, isLocal: false, isDefinition: true)
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !290, splitDebugInlining: false, nameTableKind: None)
!289 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!290 = !{!286}
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 47)
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !300, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "src/echo.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!296 = !{!297, !165}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 32, baseType: !147, size: 32, elements: !298)
!298 = !{!299}
!299 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0, isUnsigned: true)
!300 = !{!77, !301, !336, !337, !341, !345, !348, !349, !25, !67, !353, !18, !47, !357}
!301 = !DISubprogram(name: "fputs_unlocked", scope: !105, file: !105, line: 662, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!302 = !DISubroutineType(types: !303)
!303 = !{!18, !6, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !305, file: !21, line: 51, baseType: !18, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !305, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !305, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !305, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !305, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !305, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !305, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !305, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !305, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !305, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !305, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !305, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !305, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !305, file: !21, line: 70, baseType: !304, size: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !305, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !305, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !305, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !305, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !305, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !305, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !305, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !305, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !305, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !305, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !305, file: !21, line: 93, baseType: !304, size: 64, offset: 1344)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !305, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !305, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !305, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !305, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!336 = !DISubprogram(name: "getenv", scope: !204, file: !204, line: 634, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!337 = !DISubprogram(name: "set_program_name", scope: !338, file: !338, line: 37, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!338 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!339 = !DISubroutineType(types: !340)
!340 = !{null, !6}
!341 = !DISubprogram(name: "setlocale", scope: !342, file: !342, line: 122, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!342 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!343 = !DISubroutineType(types: !344)
!344 = !{!25, !18, !6}
!345 = !DISubprogram(name: "bindtextdomain", scope: !78, file: !78, line: 86, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!346 = !DISubroutineType(types: !347)
!347 = !{!25, !6, !6}
!348 = !DISubprogram(name: "textdomain", scope: !78, file: !78, line: 82, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!349 = !DISubprogram(name: "atexit", scope: !204, file: !204, line: 595, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!350 = !DISubroutineType(types: !351)
!351 = !{!18, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!353 = !DISubprogram(name: "version_etc", scope: !354, file: !354, line: 69, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!354 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!355 = !DISubroutineType(types: !356)
!356 = !{null, !304, !6, !6, !6, null}
!357 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !360, retainedTypes: !364, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!360 = !{!361}
!361 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !359, line: 40, baseType: !147, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!364 = !{!77, !365, !67}
!365 = !DISubprogram(name: "fputs_unlocked", scope: !105, file: !105, line: 662, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!366 = !DISubroutineType(types: !367)
!367 = !{!18, !6, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !369, file: !21, line: 51, baseType: !18, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !369, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !369, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !369, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !369, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !369, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !369, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !369, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !369, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !369, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !369, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !369, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !369, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !369, file: !21, line: 70, baseType: !368, size: 64, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !369, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !369, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !369, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !369, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !369, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !369, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !369, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !369, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !369, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !369, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !369, file: !21, line: 93, baseType: !368, size: 64, offset: 1344)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !369, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !369, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !369, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !369, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !402, retainedTypes: !415, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!402 = !{!403}
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !404, file: !182, line: 186, baseType: !147, size: 32, elements: !413)
!404 = distinct !DISubprogram(name: "x2nrealloc", scope: !182, file: !182, line: 174, type: !405, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !408)
!405 = !DISubroutineType(types: !406)
!406 = !{!67, !67, !407, !69}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!408 = !{!409, !410, !411, !412}
!409 = !DILocalVariable(name: "p", arg: 1, scope: !404, file: !182, line: 174, type: !67)
!410 = !DILocalVariable(name: "pn", arg: 2, scope: !404, file: !182, line: 174, type: !407)
!411 = !DILocalVariable(name: "s", arg: 3, scope: !404, file: !182, line: 174, type: !69)
!412 = !DILocalVariable(name: "n", scope: !404, file: !182, line: 176, type: !69)
!413 = !{!414}
!414 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!415 = !{!69, !249, !246, !252, !25, !203, !67, !416, !419}
!416 = !DISubprogram(name: "xcalloc", scope: !182, file: !182, line: 57, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!417 = !DISubroutineType(types: !418)
!418 = !{!67, !71, !71}
!419 = !DISubprogram(name: "rpl_calloc", scope: !420, file: !420, line: 688, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!420 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !423, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!423 = !{!77, !85}
!424 = distinct !DICompileUnit(language: DW_LANG_C99, file: !425, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !426, splitDebugInlining: false, nameTableKind: None)
!425 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!426 = !{!67}
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !429, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!429 = !{!430, !69, !442}
!430 = !DISubprogram(name: "mbrtowc", scope: !233, file: !233, line: 296, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{!71, !214, !6, !71, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 13, size: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !434, file: !217, line: 15, baseType: !18, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !434, file: !217, line: 20, baseType: !438, size: 32, offset: 32)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !217, line: 16, size: 32, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !438, file: !217, line: 18, baseType: !147, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !438, file: !217, line: 19, baseType: !225, size: 32)
!442 = !DISubprogram(name: "hard_locale", scope: !443, file: !443, line: 26, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!443 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!444 = !DISubroutineType(types: !445)
!445 = !{!92, !18}
!446 = distinct !DICompileUnit(language: DW_LANG_C99, file: !447, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !448, splitDebugInlining: false, nameTableKind: None)
!447 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!448 = !{!449}
!449 = !DISubprogram(name: "rpl_fclose", scope: !450, file: !450, line: 672, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!450 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!451 = !DISubroutineType(types: !452)
!452 = !{!18, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !454, file: !21, line: 51, baseType: !18, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !454, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !454, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !454, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !454, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !454, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !454, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !454, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !454, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !454, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !454, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !454, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !454, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !454, file: !21, line: 70, baseType: !453, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !454, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !454, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !454, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !454, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !454, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !454, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !454, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !454, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !454, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !454, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !454, file: !21, line: 93, baseType: !453, size: 64, offset: 1344)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !454, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !454, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !454, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !454, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !487, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!487 = !{!488}
!488 = !DISubprogram(name: "setlocale_null_r", scope: !489, file: !489, line: 64, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!489 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!490 = !DISubroutineType(types: !491)
!491 = !{!18, !18, !25, !71}
!492 = distinct !DICompileUnit(language: DW_LANG_C99, file: !493, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !494, retainedTypes: !881, splitDebugInlining: false, nameTableKind: None)
!493 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!494 = !{!495}
!495 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !496, line: 41, baseType: !147, size: 32, elements: !497)
!496 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880}
!498 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!499 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!500 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!501 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!502 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!503 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!504 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!505 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!506 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!507 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!508 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!509 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!510 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!511 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!512 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!513 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!514 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!515 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!516 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!517 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!518 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!519 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!520 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!521 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!522 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!523 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!524 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!525 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!526 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!527 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!528 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!529 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!530 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!531 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!532 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!533 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!534 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!535 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!536 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!537 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!538 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!539 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!540 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!541 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!542 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!543 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!544 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!545 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!546 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!547 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!606 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!609 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!610 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!611 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!612 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!613 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!614 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!615 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!616 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!617 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!618 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!619 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!620 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!693 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!766 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!767 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!768 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!769 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!770 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!771 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!772 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!773 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!774 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!775 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!776 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!777 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!778 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!779 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!780 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!782 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!783 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!784 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!785 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!786 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!787 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!813 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!814 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!815 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!816 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!817 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!822 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!823 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!824 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!825 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!881 = !{!882, !67}
!882 = !DISubprogram(name: "nl_langinfo", scope: !496, file: !496, line: 661, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!883 = !DISubroutineType(types: !884)
!884 = !{!25, !18}
!885 = distinct !DICompileUnit(language: DW_LANG_C99, file: !886, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !887, splitDebugInlining: false, nameTableKind: None)
!886 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!887 = !{!67, !341}
!888 = distinct !DICompileUnit(language: DW_LANG_C99, file: !889, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !890, splitDebugInlining: false, nameTableKind: None)
!889 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!890 = !{!891, !926, !927, !931}
!891 = !DISubprogram(name: "fileno", scope: !105, file: !105, line: 786, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!892 = !DISubroutineType(types: !893)
!893 = !{!18, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !896)
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !895, file: !21, line: 51, baseType: !18, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !895, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !895, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !895, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !895, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !895, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !895, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !895, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !895, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !895, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !895, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !895, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !895, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !895, file: !21, line: 70, baseType: !894, size: 64, offset: 832)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !895, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !895, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !895, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !895, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !895, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !895, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !895, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !895, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !895, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !895, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !895, file: !21, line: 93, baseType: !894, size: 64, offset: 1344)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !895, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !895, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !895, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !895, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!926 = !DISubprogram(name: "fclose", scope: !105, file: !105, line: 213, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!927 = !DISubprogram(name: "lseek", scope: !928, file: !928, line: 334, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!928 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!929 = !DISubroutineType(types: !930)
!930 = !{!45, !18, !45, !18}
!931 = !DISubprogram(name: "rpl_fflush", scope: !450, file: !450, line: 718, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!932 = distinct !DICompileUnit(language: DW_LANG_C99, file: !933, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !934, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!934 = !{!67, !935, !970}
!935 = !DISubprogram(name: "fflush", scope: !105, file: !105, line: 218, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!936 = !DISubroutineType(types: !937)
!937 = !{!18, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !939, file: !21, line: 51, baseType: !18, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !939, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !939, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !939, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !939, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !939, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !939, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !939, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !939, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !939, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !939, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !939, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !939, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !939, file: !21, line: 70, baseType: !938, size: 64, offset: 832)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !939, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !939, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !939, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !939, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !939, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !939, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !939, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !939, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !939, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !939, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !939, file: !21, line: 93, baseType: !938, size: 64, offset: 1344)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !939, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !939, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !939, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !939, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!970 = !DISubprogram(name: "rpl_fseeko", scope: !450, file: !450, line: 1034, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!971 = !DISubroutineType(types: !972)
!972 = !{!18, !938, !45, !18}
!973 = distinct !DICompileUnit(language: DW_LANG_C99, file: !974, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!975 = !{!67, !976, !927, !1011}
!976 = !DISubprogram(name: "fileno", scope: !105, file: !105, line: 786, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!977 = !DISubroutineType(types: !978)
!978 = !{!18, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !980, file: !21, line: 51, baseType: !18, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !980, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !980, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !980, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !980, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !980, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !980, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !980, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !980, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !980, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !980, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !980, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !980, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !980, file: !21, line: 70, baseType: !979, size: 64, offset: 832)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !980, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !980, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !980, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !980, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !980, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !980, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !980, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !980, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !980, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !980, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !980, file: !21, line: 93, baseType: !979, size: 64, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !980, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !980, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !980, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !980, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1011 = !DISubprogram(name: "fseeko", scope: !105, file: !105, line: 707, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!18, !979, !45, !18}
!1014 = !{!"clang version 10.0.0 "}
!1015 = !{i32 7, !"Dwarf Version", i32 4}
!1016 = !{i32 2, !"Debug Info Version", i32 3}
!1017 = !{i32 1, !"wchar_size", i32 4}
!1018 = !{i32 7, !"PIC Level", i32 2}
!1019 = !{i32 7, !"PIE Level", i32 2}
!1020 = distinct !DISubprogram(name: "usage", scope: !295, file: !295, line: 36, type: !1021, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !18}
!1023 = !{!1024}
!1024 = !DILocalVariable(name: "status", arg: 1, scope: !1020, file: !295, line: 36, type: !18)
!1025 = !DILocation(line: 0, scope: !1020)
!1026 = !DILocation(line: 40, column: 3, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !295, line: 40, column: 3)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !295, line: 40, column: 3)
!1029 = !DILocation(line: 40, column: 3, scope: !1028)
!1030 = !DILocation(line: 42, column: 3, scope: !1020)
!1031 = !{!1032, !1032, i64 0}
!1032 = !{!"any pointer", !1033, i64 0}
!1033 = !{!"omnipotent char", !1034, i64 0}
!1034 = !{!"Simple C/C++ TBAA"}
!1035 = !DILocation(line: 46, column: 3, scope: !1020)
!1036 = !DILocation(line: 51, column: 3, scope: !1020)
!1037 = !DILocation(line: 59, column: 3, scope: !1020)
!1038 = !DILocation(line: 60, column: 3, scope: !1020)
!1039 = !DILocation(line: 61, column: 3, scope: !1020)
!1040 = !DILocation(line: 66, column: 3, scope: !1020)
!1041 = !DILocation(line: 78, column: 3, scope: !1020)
!1042 = !DILocation(line: 82, column: 3, scope: !1020)
!1043 = !DILocation(line: 83, column: 3, scope: !1020)
!1044 = !DILocation(line: 84, column: 3, scope: !1020)
!1045 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1046, file: !1046, line: 634, type: !339, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1047)
!1046 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1047 = !{!1048, !1049, !1058, !1059, !1061}
!1048 = !DILocalVariable(name: "program", arg: 1, scope: !1045, file: !1046, line: 634, type: !6)
!1049 = !DILocalVariable(name: "infomap", scope: !1045, file: !1046, line: 636, type: !1050)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 896, elements: !1056)
!1051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1045, file: !1046, line: 636, size: 128, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1052, file: !1046, line: 636, baseType: !6, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1052, file: !1046, line: 636, baseType: !6, size: 64, offset: 64)
!1056 = !{!1057}
!1057 = !DISubrange(count: 7)
!1058 = !DILocalVariable(name: "node", scope: !1045, file: !1046, line: 646, type: !6)
!1059 = !DILocalVariable(name: "map_prog", scope: !1045, file: !1046, line: 647, type: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1061 = !DILocalVariable(name: "lc_messages", scope: !1045, file: !1046, line: 659, type: !6)
!1062 = !DILocation(line: 0, scope: !1045)
!1063 = !DILocation(line: 636, column: 3, scope: !1045)
!1064 = !DILocation(line: 636, column: 67, scope: !1045)
!1065 = !DILocation(line: 647, column: 36, scope: !1045)
!1066 = !DILocation(line: 649, column: 3, scope: !1045)
!1067 = !DILocation(line: 649, column: 33, scope: !1045)
!1068 = !DILocation(line: 650, column: 13, scope: !1045)
!1069 = !DILocation(line: 649, column: 20, scope: !1045)
!1070 = !{!1071, !1032, i64 0}
!1071 = !{!"infomap", !1032, i64 0, !1032, i64 8}
!1072 = !DILocation(line: 649, column: 10, scope: !1045)
!1073 = !DILocation(line: 649, column: 28, scope: !1045)
!1074 = distinct !{!1074, !1066, !1068}
!1075 = !DILocation(line: 652, column: 17, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1045, file: !1046, line: 652, column: 7)
!1077 = !{!1071, !1032, i64 8}
!1078 = !DILocation(line: 652, column: 7, scope: !1076)
!1079 = !DILocation(line: 652, column: 7, scope: !1045)
!1080 = !DILocation(line: 655, column: 3, scope: !1045)
!1081 = !DILocation(line: 659, column: 29, scope: !1045)
!1082 = !DILocation(line: 660, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1045, file: !1046, line: 660, column: 7)
!1084 = !DILocation(line: 660, column: 19, scope: !1083)
!1085 = !DILocation(line: 660, column: 22, scope: !1083)
!1086 = !DILocation(line: 660, column: 7, scope: !1045)
!1087 = !DILocation(line: 666, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !1046, line: 661, column: 5)
!1089 = !DILocation(line: 668, column: 5, scope: !1088)
!1090 = !DILocation(line: 669, column: 3, scope: !1045)
!1091 = !DILocation(line: 671, column: 3, scope: !1045)
!1092 = !DILocation(line: 673, column: 1, scope: !1045)
!1093 = distinct !DISubprogram(name: "main", scope: !295, file: !295, line: 108, type: !1094, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1097)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!18, !18, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1107, !1108, !1112, !1113, !1119, !1120}
!1098 = !DILocalVariable(name: "argc", arg: 1, scope: !1093, file: !295, line: 108, type: !18)
!1099 = !DILocalVariable(name: "argv", arg: 2, scope: !1093, file: !295, line: 108, type: !1096)
!1100 = !DILocalVariable(name: "display_return", scope: !1093, file: !295, line: 110, type: !92)
!1101 = !DILocalVariable(name: "posixly_correct", scope: !1093, file: !295, line: 111, type: !92)
!1102 = !DILocalVariable(name: "allow_options", scope: !1093, file: !295, line: 112, type: !92)
!1103 = !DILocalVariable(name: "do_v9", scope: !1093, file: !295, line: 119, type: !92)
!1104 = !DILocalVariable(name: "temp", scope: !1105, file: !295, line: 150, type: !6)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !295, line: 149, column: 7)
!1106 = distinct !DILexicalBlock(scope: !1093, file: !295, line: 147, column: 7)
!1107 = !DILocalVariable(name: "i", scope: !1105, file: !295, line: 151, type: !69)
!1108 = !DILocalVariable(name: "s", scope: !1109, file: !295, line: 197, type: !6)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !295, line: 196, column: 9)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !295, line: 194, column: 5)
!1111 = distinct !DILexicalBlock(scope: !1093, file: !295, line: 193, column: 7)
!1112 = !DILocalVariable(name: "c", scope: !1109, file: !295, line: 198, type: !357)
!1113 = !DILocalVariable(name: "ch", scope: !1114, file: !295, line: 217, type: !357)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !295, line: 216, column: 23)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !295, line: 205, column: 21)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !295, line: 203, column: 17)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !295, line: 202, column: 19)
!1118 = distinct !DILexicalBlock(scope: !1109, file: !295, line: 201, column: 13)
!1119 = !DILabel(scope: !1093, name: "just_echo", file: !295, line: 191)
!1120 = !DILabel(scope: !1115, name: "not_an_escape", file: !295, line: 246)
!1121 = !DILocation(line: 0, scope: !1093)
!1122 = !DILocation(line: 111, column: 26, scope: !1093)
!1123 = !DILocation(line: 114, column: 6, scope: !1093)
!1124 = !DILocation(line: 114, column: 37, scope: !1093)
!1125 = !DILocation(line: 114, column: 44, scope: !1093)
!1126 = !DILocation(line: 114, column: 47, scope: !1093)
!1127 = !DILocation(line: 122, column: 21, scope: !1093)
!1128 = !DILocation(line: 122, column: 3, scope: !1093)
!1129 = !DILocation(line: 123, column: 3, scope: !1093)
!1130 = !DILocation(line: 124, column: 3, scope: !1093)
!1131 = !DILocation(line: 125, column: 3, scope: !1093)
!1132 = !DILocation(line: 127, column: 3, scope: !1093)
!1133 = !DILocation(line: 131, column: 29, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1093, file: !295, line: 131, column: 7)
!1135 = !DILocation(line: 131, column: 21, scope: !1134)
!1136 = !DILocation(line: 133, column: 11, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !295, line: 133, column: 11)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !295, line: 132, column: 5)
!1139 = !DILocation(line: 133, column: 11, scope: !1138)
!1140 = !DILocation(line: 134, column: 9, scope: !1137)
!1141 = !DILocation(line: 136, column: 11, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !295, line: 136, column: 11)
!1143 = !DILocation(line: 136, column: 11, scope: !1138)
!1144 = !DILocation(line: 138, column: 24, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !295, line: 137, column: 9)
!1146 = !DILocation(line: 138, column: 60, scope: !1145)
!1147 = !DILocation(line: 138, column: 11, scope: !1145)
!1148 = !DILocation(line: 140, column: 11, scope: !1145)
!1149 = !DILocation(line: 144, column: 3, scope: !1093)
!1150 = !DILocation(line: 145, column: 3, scope: !1093)
!1151 = !DILocation(line: 148, column: 17, scope: !1106)
!1152 = !DILocation(line: 147, column: 7, scope: !1093)
!1153 = !DILocation(line: 148, column: 5, scope: !1106)
!1154 = !DILocation(line: 148, column: 25, scope: !1106)
!1155 = !DILocation(line: 148, column: 24, scope: !1106)
!1156 = !{!1033, !1033, i64 0}
!1157 = !DILocation(line: 148, column: 33, scope: !1106)
!1158 = !DILocation(line: 150, column: 36, scope: !1105)
!1159 = !DILocation(line: 0, scope: !1105)
!1160 = !DILocation(line: 157, column: 21, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !295, line: 157, column: 9)
!1162 = distinct !DILexicalBlock(scope: !1105, file: !295, line: 157, column: 9)
!1163 = !DILocation(line: 157, column: 9, scope: !1162)
!1164 = !DILocation(line: 158, column: 19, scope: !1161)
!1165 = !DILocation(line: 158, column: 11, scope: !1161)
!1166 = !DILocation(line: 157, column: 31, scope: !1161)
!1167 = distinct !{!1167, !1163, !1168}
!1168 = !DILocation(line: 164, column: 13, scope: !1162)
!1169 = !DILocation(line: 166, column: 15, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1105, file: !295, line: 166, column: 13)
!1171 = !DILocation(line: 166, column: 13, scope: !1105)
!1172 = !DILocation(line: 171, column: 9, scope: !1105)
!1173 = !DILocation(line: 172, column: 24, scope: !1105)
!1174 = !DILocation(line: 172, column: 19, scope: !1105)
!1175 = !DILocation(line: 172, column: 11, scope: !1105)
!1176 = !DILocation(line: 176, column: 15, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1105, file: !295, line: 173, column: 13)
!1178 = !DILocation(line: 180, column: 15, scope: !1177)
!1179 = !DILocation(line: 184, column: 15, scope: !1177)
!1180 = !DILocation(line: 171, column: 16, scope: !1105)
!1181 = distinct !{!1181, !1172, !1182}
!1182 = !DILocation(line: 185, column: 13, scope: !1105)
!1183 = !DILocation(line: 110, column: 8, scope: !1093)
!1184 = !DILocation(line: 119, column: 8, scope: !1093)
!1185 = !DILocation(line: 187, column: 13, scope: !1105)
!1186 = !DILocation(line: 188, column: 13, scope: !1105)
!1187 = !DILocation(line: 148, column: 21, scope: !1106)
!1188 = !DILocation(line: 191, column: 1, scope: !1093)
!1189 = !DILocation(line: 193, column: 7, scope: !1111)
!1190 = !DILocation(line: 193, column: 13, scope: !1111)
!1191 = !DILocation(line: 0, scope: !1111)
!1192 = !DILocation(line: 260, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1111, file: !295, line: 259, column: 5)
!1194 = !DILocation(line: 195, column: 7, scope: !1110)
!1195 = !DILocation(line: 197, column: 27, scope: !1109)
!1196 = !DILocation(line: 0, scope: !1109)
!1197 = !DILocation(line: 200, column: 11, scope: !1109)
!1198 = !DILocation(line: 200, column: 25, scope: !1109)
!1199 = !DILocation(line: 200, column: 23, scope: !1109)
!1200 = !DILocation(line: 202, column: 32, scope: !1117)
!1201 = !DILocation(line: 202, column: 19, scope: !1118)
!1202 = !DILocation(line: 204, column: 33, scope: !1116)
!1203 = !DILocation(line: 204, column: 19, scope: !1116)
!1204 = !DILocation(line: 206, column: 41, scope: !1115)
!1205 = !DILocation(line: 207, column: 41, scope: !1115)
!1206 = !DILocation(line: 209, column: 43, scope: !1115)
!1207 = !DILocation(line: 210, column: 41, scope: !1115)
!1208 = !DILocation(line: 211, column: 41, scope: !1115)
!1209 = !DILocation(line: 212, column: 41, scope: !1115)
!1210 = !DILocation(line: 213, column: 41, scope: !1115)
!1211 = !DILocation(line: 214, column: 41, scope: !1115)
!1212 = !DILocation(line: 217, column: 44, scope: !1114)
!1213 = !DILocation(line: 0, scope: !1114)
!1214 = !DILocation(line: 218, column: 31, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1114, file: !295, line: 218, column: 29)
!1216 = !{!1217, !1217, i64 0}
!1217 = !{!"short", !1033, i64 0}
!1218 = !DILocation(line: 218, column: 29, scope: !1114)
!1219 = !DILocation(line: 220, column: 26, scope: !1114)
!1220 = !DILocalVariable(name: "c", arg: 1, scope: !1221, file: !295, line: 89, type: !357)
!1221 = distinct !DISubprogram(name: "hextobin", scope: !295, file: !295, line: 89, type: !1222, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1224)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!18, !357}
!1224 = !{!1220}
!1225 = !DILocation(line: 0, scope: !1221, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 221, column: 29, scope: !1114)
!1227 = !DILocation(line: 91, column: 3, scope: !1221, inlinedAt: !1226)
!1228 = !DILocation(line: 91, column: 11, scope: !1221, inlinedAt: !1226)
!1229 = !DILocation(line: 93, column: 23, scope: !1230, inlinedAt: !1226)
!1230 = distinct !DILexicalBlock(scope: !1221, file: !295, line: 92, column: 5)
!1231 = !DILocation(line: 93, column: 14, scope: !1230, inlinedAt: !1226)
!1232 = !DILocation(line: 95, column: 25, scope: !1230, inlinedAt: !1226)
!1233 = !DILocation(line: 96, column: 25, scope: !1230, inlinedAt: !1226)
!1234 = !DILocation(line: 97, column: 25, scope: !1230, inlinedAt: !1226)
!1235 = !DILocation(line: 98, column: 25, scope: !1230, inlinedAt: !1226)
!1236 = !DILocation(line: 99, column: 25, scope: !1230, inlinedAt: !1226)
!1237 = !DILocation(line: 0, scope: !1230, inlinedAt: !1226)
!1238 = !DILocation(line: 222, column: 30, scope: !1114)
!1239 = !DILocation(line: 223, column: 29, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1114, file: !295, line: 223, column: 29)
!1241 = !DILocation(line: 223, column: 29, scope: !1114)
!1242 = !DILocation(line: 225, column: 30, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !295, line: 224, column: 27)
!1244 = !DILocation(line: 226, column: 35, scope: !1243)
!1245 = !DILocation(line: 0, scope: !1221, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 226, column: 42, scope: !1243)
!1247 = !DILocation(line: 91, column: 3, scope: !1221, inlinedAt: !1246)
!1248 = !DILocation(line: 91, column: 11, scope: !1221, inlinedAt: !1246)
!1249 = !DILocation(line: 93, column: 23, scope: !1230, inlinedAt: !1246)
!1250 = !DILocation(line: 93, column: 14, scope: !1230, inlinedAt: !1246)
!1251 = !DILocation(line: 95, column: 25, scope: !1230, inlinedAt: !1246)
!1252 = !DILocation(line: 96, column: 25, scope: !1230, inlinedAt: !1246)
!1253 = !DILocation(line: 97, column: 25, scope: !1230, inlinedAt: !1246)
!1254 = !DILocation(line: 98, column: 25, scope: !1230, inlinedAt: !1246)
!1255 = !DILocation(line: 99, column: 25, scope: !1230, inlinedAt: !1246)
!1256 = !DILocation(line: 0, scope: !1230, inlinedAt: !1246)
!1257 = !DILocation(line: 226, column: 40, scope: !1243)
!1258 = !DILocation(line: 227, column: 27, scope: !1243)
!1259 = !DILocation(line: 232, column: 37, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1115, file: !295, line: 232, column: 27)
!1261 = !DILocation(line: 232, column: 40, scope: !1260)
!1262 = !DILocation(line: 234, column: 29, scope: !1115)
!1263 = !DILocation(line: 235, column: 23, scope: !1115)
!1264 = !DILocation(line: 0, scope: !1116)
!1265 = !DILocation(line: 238, column: 25, scope: !1115)
!1266 = !DILocation(line: 239, column: 34, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1115, file: !295, line: 239, column: 27)
!1268 = !DILocation(line: 239, column: 37, scope: !1267)
!1269 = !DILocation(line: 241, column: 34, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1115, file: !295, line: 241, column: 27)
!1271 = !DILocation(line: 241, column: 37, scope: !1270)
!1272 = !DILocation(line: 242, column: 31, scope: !1270)
!1273 = !DILocation(line: 242, column: 40, scope: !1270)
!1274 = !DILocation(line: 242, column: 43, scope: !1270)
!1275 = !DILocation(line: 242, column: 35, scope: !1270)
!1276 = !DILocation(line: 242, column: 25, scope: !1270)
!1277 = !DILocalVariable(name: "__c", arg: 1, scope: !1278, file: !1279, line: 108, type: !18)
!1278 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1279, file: !1279, line: 108, type: !1280, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !1282)
!1279 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!18, !18}
!1282 = !{!1277}
!1283 = !DILocation(line: 0, scope: !1278, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 247, column: 31, scope: !1115)
!1285 = !DILocation(line: 110, column: 10, scope: !1278, inlinedAt: !1284)
!1286 = !{!1287, !1032, i64 40}
!1287 = !{!"_IO_FILE", !1288, i64 0, !1032, i64 8, !1032, i64 16, !1032, i64 24, !1032, i64 32, !1032, i64 40, !1032, i64 48, !1032, i64 56, !1032, i64 64, !1032, i64 72, !1032, i64 80, !1032, i64 88, !1032, i64 96, !1032, i64 104, !1288, i64 112, !1288, i64 116, !1289, i64 120, !1217, i64 128, !1033, i64 130, !1033, i64 131, !1032, i64 136, !1289, i64 144, !1032, i64 152, !1032, i64 160, !1032, i64 168, !1032, i64 176, !1289, i64 184, !1288, i64 192, !1033, i64 196}
!1288 = !{!"int", !1033, i64 0}
!1289 = !{!"long", !1033, i64 0}
!1290 = !{!1287, !1032, i64 48}
!1291 = !{!"branch_weights", i32 2000, i32 1}
!1292 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1293 = !DILocation(line: 0, scope: !1278, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 250, column: 15, scope: !1118)
!1295 = !DILocation(line: 110, column: 10, scope: !1278, inlinedAt: !1294)
!1296 = !DILocation(line: 250, column: 15, scope: !1118)
!1297 = distinct !{!1297, !1197, !1298}
!1298 = !DILocation(line: 251, column: 13, scope: !1109)
!1299 = !DILocation(line: 252, column: 15, scope: !1109)
!1300 = !DILocation(line: 253, column: 15, scope: !1109)
!1301 = !DILocation(line: 254, column: 20, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1109, file: !295, line: 254, column: 15)
!1303 = !DILocation(line: 254, column: 15, scope: !1109)
!1304 = !DILocation(line: 0, scope: !1278, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 255, column: 13, scope: !1302)
!1306 = !DILocation(line: 110, column: 10, scope: !1278, inlinedAt: !1305)
!1307 = !DILocation(line: 262, column: 11, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1193, file: !295, line: 261, column: 9)
!1309 = !DILocation(line: 263, column: 15, scope: !1308)
!1310 = !DILocation(line: 264, column: 15, scope: !1308)
!1311 = !DILocation(line: 265, column: 20, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !295, line: 265, column: 15)
!1313 = !DILocation(line: 265, column: 15, scope: !1308)
!1314 = !DILocation(line: 0, scope: !1278, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 266, column: 13, scope: !1312)
!1316 = !DILocation(line: 110, column: 10, scope: !1278, inlinedAt: !1315)
!1317 = !DILocation(line: 260, column: 19, scope: !1193)
!1318 = distinct !{!1318, !1192, !1319}
!1319 = !DILocation(line: 267, column: 9, scope: !1193)
!1320 = !DILocation(line: 270, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1093, file: !295, line: 270, column: 7)
!1322 = !DILocation(line: 270, column: 7, scope: !1093)
!1323 = !DILocation(line: 0, scope: !1278, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 271, column: 5, scope: !1321)
!1325 = !DILocation(line: 110, column: 10, scope: !1278, inlinedAt: !1324)
!1326 = !DILocation(line: 273, column: 1, scope: !1093)
!1327 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !339, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1328)
!1328 = !{!1329}
!1329 = !DILocalVariable(name: "file", arg: 1, scope: !1327, file: !12, line: 51, type: !6)
!1330 = !DILocation(line: 0, scope: !1327)
!1331 = !DILocation(line: 53, column: 13, scope: !1327)
!1332 = !DILocation(line: 54, column: 1, scope: !1327)
!1333 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1334, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !92}
!1336 = !{!1337}
!1337 = !DILocalVariable(name: "ignore", arg: 1, scope: !1333, file: !12, line: 88, type: !92)
!1338 = !DILocation(line: 0, scope: !1333)
!1339 = !DILocation(line: 90, column: 16, scope: !1333)
!1340 = !{!1341, !1341, i64 0}
!1341 = !{!"_Bool", !1033, i64 0}
!1342 = !DILocation(line: 91, column: 1, scope: !1333)
!1343 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !250, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1344)
!1344 = !{!1345}
!1345 = !DILocalVariable(name: "write_error", scope: !1346, file: !12, line: 122, type: !6)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !12, line: 121, column: 5)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !12, line: 119, column: 7)
!1348 = !DILocation(line: 119, column: 21, scope: !1347)
!1349 = !DILocation(line: 119, column: 7, scope: !1347)
!1350 = !DILocation(line: 119, column: 29, scope: !1347)
!1351 = !DILocation(line: 120, column: 7, scope: !1347)
!1352 = !DILocation(line: 120, column: 12, scope: !1347)
!1353 = !{i8 0, i8 2}
!1354 = !DILocation(line: 120, column: 25, scope: !1347)
!1355 = !DILocation(line: 120, column: 28, scope: !1347)
!1356 = !{!1288, !1288, i64 0}
!1357 = !DILocation(line: 120, column: 34, scope: !1347)
!1358 = !DILocation(line: 119, column: 7, scope: !1343)
!1359 = !DILocation(line: 122, column: 33, scope: !1346)
!1360 = !DILocation(line: 0, scope: !1346)
!1361 = !DILocation(line: 123, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1346, file: !12, line: 123, column: 11)
!1363 = !DILocation(line: 0, scope: !1362)
!1364 = !DILocation(line: 123, column: 11, scope: !1346)
!1365 = !DILocation(line: 124, column: 36, scope: !1362)
!1366 = !DILocation(line: 124, column: 9, scope: !1362)
!1367 = !DILocation(line: 127, column: 9, scope: !1362)
!1368 = !DILocation(line: 129, column: 14, scope: !1346)
!1369 = !DILocation(line: 129, column: 7, scope: !1346)
!1370 = !DILocation(line: 134, column: 42, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1343, file: !12, line: 134, column: 7)
!1372 = !DILocation(line: 134, column: 28, scope: !1371)
!1373 = !DILocation(line: 134, column: 50, scope: !1371)
!1374 = !DILocation(line: 134, column: 7, scope: !1343)
!1375 = !DILocation(line: 135, column: 12, scope: !1371)
!1376 = !DILocation(line: 135, column: 5, scope: !1371)
!1377 = !DILocation(line: 136, column: 1, scope: !1343)
!1378 = distinct !DISubprogram(name: "set_program_name", scope: !102, file: !102, line: 39, type: !339, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DILocalVariable(name: "argv0", arg: 1, scope: !1378, file: !102, line: 39, type: !6)
!1381 = !DILocalVariable(name: "slash", scope: !1378, file: !102, line: 46, type: !6)
!1382 = !DILocalVariable(name: "base", scope: !1378, file: !102, line: 47, type: !6)
!1383 = !DILocation(line: 0, scope: !1378)
!1384 = !DILocation(line: 51, column: 13, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !102, line: 51, column: 7)
!1386 = !DILocation(line: 51, column: 7, scope: !1378)
!1387 = !DILocation(line: 55, column: 14, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !102, line: 52, column: 5)
!1389 = !DILocation(line: 54, column: 7, scope: !1388)
!1390 = !DILocation(line: 56, column: 7, scope: !1388)
!1391 = !DILocation(line: 59, column: 11, scope: !1378)
!1392 = !DILocation(line: 60, column: 17, scope: !1378)
!1393 = !DILocation(line: 60, column: 11, scope: !1378)
!1394 = !DILocation(line: 61, column: 12, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1378, file: !102, line: 61, column: 7)
!1396 = !DILocation(line: 61, column: 20, scope: !1395)
!1397 = !DILocation(line: 61, column: 25, scope: !1395)
!1398 = !DILocation(line: 61, column: 42, scope: !1395)
!1399 = !DILocation(line: 61, column: 28, scope: !1395)
!1400 = !DILocation(line: 61, column: 61, scope: !1395)
!1401 = !DILocation(line: 61, column: 7, scope: !1378)
!1402 = !DILocation(line: 64, column: 11, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !102, line: 64, column: 11)
!1404 = distinct !DILexicalBlock(scope: !1395, file: !102, line: 62, column: 5)
!1405 = !DILocation(line: 64, column: 36, scope: !1403)
!1406 = !DILocation(line: 64, column: 11, scope: !1404)
!1407 = !DILocation(line: 66, column: 24, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !102, line: 65, column: 9)
!1409 = !DILocation(line: 70, column: 41, scope: !1408)
!1410 = !DILocation(line: 72, column: 9, scope: !1408)
!1411 = !DILocation(line: 84, column: 16, scope: !1378)
!1412 = !DILocation(line: 90, column: 27, scope: !1378)
!1413 = !DILocation(line: 92, column: 1, scope: !1378)
!1414 = distinct !DISubprogram(name: "clone_quoting_options", scope: !144, file: !144, line: 122, type: !1415, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1418)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1417, !1417}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1418 = !{!1419, !1420, !1421}
!1419 = !DILocalVariable(name: "o", arg: 1, scope: !1414, file: !144, line: 122, type: !1417)
!1420 = !DILocalVariable(name: "e", scope: !1414, file: !144, line: 124, type: !18)
!1421 = !DILocalVariable(name: "p", scope: !1414, file: !144, line: 125, type: !1417)
!1422 = !DILocation(line: 0, scope: !1414)
!1423 = !DILocation(line: 124, column: 11, scope: !1414)
!1424 = !DILocation(line: 125, column: 40, scope: !1414)
!1425 = !DILocation(line: 125, column: 31, scope: !1414)
!1426 = !DILocation(line: 127, column: 9, scope: !1414)
!1427 = !DILocation(line: 128, column: 3, scope: !1414)
!1428 = distinct !DISubprogram(name: "get_quoting_style", scope: !144, file: !144, line: 133, type: !1429, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1431)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!146, !191}
!1431 = !{!1432}
!1432 = !DILocalVariable(name: "o", arg: 1, scope: !1428, file: !144, line: 133, type: !191)
!1433 = !DILocation(line: 0, scope: !1428)
!1434 = !DILocation(line: 135, column: 11, scope: !1428)
!1435 = !DILocation(line: 135, column: 46, scope: !1428)
!1436 = !{!1437, !1033, i64 0}
!1437 = !{!"quoting_options", !1033, i64 0, !1288, i64 4, !1033, i64 8, !1032, i64 40, !1032, i64 48}
!1438 = !DILocation(line: 135, column: 3, scope: !1428)
!1439 = distinct !DISubprogram(name: "set_quoting_style", scope: !144, file: !144, line: 141, type: !1440, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1417, !146}
!1442 = !{!1443, !1444}
!1443 = !DILocalVariable(name: "o", arg: 1, scope: !1439, file: !144, line: 141, type: !1417)
!1444 = !DILocalVariable(name: "s", arg: 2, scope: !1439, file: !144, line: 141, type: !146)
!1445 = !DILocation(line: 0, scope: !1439)
!1446 = !DILocation(line: 143, column: 4, scope: !1439)
!1447 = !DILocation(line: 143, column: 39, scope: !1439)
!1448 = !DILocation(line: 143, column: 45, scope: !1439)
!1449 = !DILocation(line: 144, column: 1, scope: !1439)
!1450 = distinct !DISubprogram(name: "set_char_quoting", scope: !144, file: !144, line: 152, type: !1451, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!18, !1417, !8, !18}
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1460, !1461}
!1454 = !DILocalVariable(name: "o", arg: 1, scope: !1450, file: !144, line: 152, type: !1417)
!1455 = !DILocalVariable(name: "c", arg: 2, scope: !1450, file: !144, line: 152, type: !8)
!1456 = !DILocalVariable(name: "i", arg: 3, scope: !1450, file: !144, line: 152, type: !18)
!1457 = !DILocalVariable(name: "uc", scope: !1450, file: !144, line: 154, type: !357)
!1458 = !DILocalVariable(name: "p", scope: !1450, file: !144, line: 155, type: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1460 = !DILocalVariable(name: "shift", scope: !1450, file: !144, line: 157, type: !18)
!1461 = !DILocalVariable(name: "r", scope: !1450, file: !144, line: 158, type: !18)
!1462 = !DILocation(line: 0, scope: !1450)
!1463 = !DILocation(line: 156, column: 6, scope: !1450)
!1464 = !DILocation(line: 156, column: 62, scope: !1450)
!1465 = !DILocation(line: 156, column: 57, scope: !1450)
!1466 = !DILocation(line: 157, column: 15, scope: !1450)
!1467 = !DILocation(line: 158, column: 12, scope: !1450)
!1468 = !DILocation(line: 158, column: 15, scope: !1450)
!1469 = !DILocation(line: 158, column: 25, scope: !1450)
!1470 = !DILocation(line: 159, column: 13, scope: !1450)
!1471 = !DILocation(line: 159, column: 18, scope: !1450)
!1472 = !DILocation(line: 159, column: 23, scope: !1450)
!1473 = !DILocation(line: 159, column: 6, scope: !1450)
!1474 = !DILocation(line: 160, column: 3, scope: !1450)
!1475 = distinct !DISubprogram(name: "set_quoting_flags", scope: !144, file: !144, line: 168, type: !1476, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!18, !1417, !18}
!1478 = !{!1479, !1480, !1481}
!1479 = !DILocalVariable(name: "o", arg: 1, scope: !1475, file: !144, line: 168, type: !1417)
!1480 = !DILocalVariable(name: "i", arg: 2, scope: !1475, file: !144, line: 168, type: !18)
!1481 = !DILocalVariable(name: "r", scope: !1475, file: !144, line: 170, type: !18)
!1482 = !DILocation(line: 0, scope: !1475)
!1483 = !DILocation(line: 171, column: 8, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1475, file: !144, line: 171, column: 7)
!1485 = !DILocation(line: 171, column: 7, scope: !1475)
!1486 = !DILocation(line: 173, column: 10, scope: !1475)
!1487 = !{!1437, !1288, i64 4}
!1488 = !DILocation(line: 174, column: 12, scope: !1475)
!1489 = !DILocation(line: 175, column: 3, scope: !1475)
!1490 = distinct !DISubprogram(name: "set_custom_quoting", scope: !144, file: !144, line: 179, type: !1491, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1417, !6, !6}
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1490, file: !144, line: 179, type: !1417)
!1495 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1490, file: !144, line: 180, type: !6)
!1496 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1490, file: !144, line: 180, type: !6)
!1497 = !DILocation(line: 0, scope: !1490)
!1498 = !DILocation(line: 182, column: 8, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1490, file: !144, line: 182, column: 7)
!1500 = !DILocation(line: 182, column: 7, scope: !1490)
!1501 = !DILocation(line: 184, column: 6, scope: !1490)
!1502 = !DILocation(line: 184, column: 12, scope: !1490)
!1503 = !DILocation(line: 185, column: 8, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1490, file: !144, line: 185, column: 7)
!1505 = !DILocation(line: 185, column: 23, scope: !1504)
!1506 = !DILocation(line: 185, column: 19, scope: !1504)
!1507 = !DILocation(line: 186, column: 5, scope: !1504)
!1508 = !DILocation(line: 187, column: 6, scope: !1490)
!1509 = !DILocation(line: 187, column: 17, scope: !1490)
!1510 = !{!1437, !1032, i64 40}
!1511 = !DILocation(line: 188, column: 6, scope: !1490)
!1512 = !DILocation(line: 188, column: 18, scope: !1490)
!1513 = !{!1437, !1032, i64 48}
!1514 = !DILocation(line: 189, column: 1, scope: !1490)
!1515 = distinct !DISubprogram(name: "quotearg_buffer", scope: !144, file: !144, line: 784, type: !1516, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!69, !25, !69, !6, !69, !191}
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1519 = !DILocalVariable(name: "buffer", arg: 1, scope: !1515, file: !144, line: 784, type: !25)
!1520 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1515, file: !144, line: 784, type: !69)
!1521 = !DILocalVariable(name: "arg", arg: 3, scope: !1515, file: !144, line: 785, type: !6)
!1522 = !DILocalVariable(name: "argsize", arg: 4, scope: !1515, file: !144, line: 785, type: !69)
!1523 = !DILocalVariable(name: "o", arg: 5, scope: !1515, file: !144, line: 786, type: !191)
!1524 = !DILocalVariable(name: "p", scope: !1515, file: !144, line: 788, type: !191)
!1525 = !DILocalVariable(name: "e", scope: !1515, file: !144, line: 789, type: !18)
!1526 = !DILocalVariable(name: "r", scope: !1515, file: !144, line: 790, type: !69)
!1527 = !DILocation(line: 0, scope: !1515)
!1528 = !DILocation(line: 788, column: 37, scope: !1515)
!1529 = !DILocation(line: 789, column: 11, scope: !1515)
!1530 = !DILocation(line: 791, column: 43, scope: !1515)
!1531 = !DILocation(line: 791, column: 53, scope: !1515)
!1532 = !DILocation(line: 791, column: 60, scope: !1515)
!1533 = !DILocation(line: 792, column: 43, scope: !1515)
!1534 = !DILocation(line: 792, column: 58, scope: !1515)
!1535 = !DILocation(line: 790, column: 14, scope: !1515)
!1536 = !DILocation(line: 793, column: 9, scope: !1515)
!1537 = !DILocation(line: 794, column: 3, scope: !1515)
!1538 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !144, file: !144, line: 256, type: !1539, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1543)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!69, !25, !69, !6, !69, !146, !18, !1541, !6, !6}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1568, !1569, !1570, !1571, !1572, !1575, !1576, !1582, !1585, !1586, !1593, !1596, !1597, !1598, !1599, !1600, !1601}
!1544 = !DILocalVariable(name: "buffer", arg: 1, scope: !1538, file: !144, line: 256, type: !25)
!1545 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1538, file: !144, line: 256, type: !69)
!1546 = !DILocalVariable(name: "arg", arg: 3, scope: !1538, file: !144, line: 257, type: !6)
!1547 = !DILocalVariable(name: "argsize", arg: 4, scope: !1538, file: !144, line: 257, type: !69)
!1548 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1538, file: !144, line: 258, type: !146)
!1549 = !DILocalVariable(name: "flags", arg: 6, scope: !1538, file: !144, line: 258, type: !18)
!1550 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1538, file: !144, line: 259, type: !1541)
!1551 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1538, file: !144, line: 260, type: !6)
!1552 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1538, file: !144, line: 261, type: !6)
!1553 = !DILocalVariable(name: "i", scope: !1538, file: !144, line: 263, type: !69)
!1554 = !DILocalVariable(name: "len", scope: !1538, file: !144, line: 264, type: !69)
!1555 = !DILocalVariable(name: "orig_buffersize", scope: !1538, file: !144, line: 265, type: !69)
!1556 = !DILocalVariable(name: "quote_string", scope: !1538, file: !144, line: 266, type: !6)
!1557 = !DILocalVariable(name: "quote_string_len", scope: !1538, file: !144, line: 267, type: !69)
!1558 = !DILocalVariable(name: "backslash_escapes", scope: !1538, file: !144, line: 268, type: !92)
!1559 = !DILocalVariable(name: "unibyte_locale", scope: !1538, file: !144, line: 269, type: !92)
!1560 = !DILocalVariable(name: "elide_outer_quotes", scope: !1538, file: !144, line: 270, type: !92)
!1561 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1538, file: !144, line: 271, type: !92)
!1562 = !DILocalVariable(name: "encountered_single_quote", scope: !1538, file: !144, line: 272, type: !92)
!1563 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1538, file: !144, line: 273, type: !92)
!1564 = !DILocalVariable(name: "c", scope: !1565, file: !144, line: 402, type: !357)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !144, line: 401, column: 5)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !144, line: 400, column: 3)
!1567 = distinct !DILexicalBlock(scope: !1538, file: !144, line: 400, column: 3)
!1568 = !DILocalVariable(name: "esc", scope: !1565, file: !144, line: 403, type: !357)
!1569 = !DILocalVariable(name: "is_right_quote", scope: !1565, file: !144, line: 404, type: !92)
!1570 = !DILocalVariable(name: "escaping", scope: !1565, file: !144, line: 405, type: !92)
!1571 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1565, file: !144, line: 406, type: !92)
!1572 = !DILocalVariable(name: "m", scope: !1573, file: !144, line: 610, type: !69)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 608, column: 11)
!1574 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 426, column: 9)
!1575 = !DILocalVariable(name: "printable", scope: !1573, file: !144, line: 612, type: !92)
!1576 = !DILocalVariable(name: "mbstate", scope: !1577, file: !144, line: 621, type: !1579)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !144, line: 620, column: 15)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !144, line: 614, column: 17)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1580, line: 6, baseType: !1581)
!1580 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !216)
!1582 = !DILocalVariable(name: "w", scope: !1583, file: !144, line: 631, type: !1584)
!1583 = distinct !DILexicalBlock(scope: !1577, file: !144, line: 630, column: 19)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1585 = !DILocalVariable(name: "bytes", scope: !1583, file: !144, line: 632, type: !69)
!1586 = !DILocalVariable(name: "j", scope: !1587, file: !144, line: 657, type: !69)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !144, line: 656, column: 27)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !144, line: 654, column: 29)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !144, line: 649, column: 23)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !144, line: 641, column: 30)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !144, line: 636, column: 30)
!1592 = distinct !DILexicalBlock(scope: !1583, file: !144, line: 634, column: 25)
!1593 = !DILocalVariable(name: "ilim", scope: !1594, file: !144, line: 684, type: !69)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !144, line: 681, column: 15)
!1595 = distinct !DILexicalBlock(scope: !1573, file: !144, line: 680, column: 17)
!1596 = !DILabel(scope: !1538, name: "process_input", file: !144, line: 314)
!1597 = !DILabel(scope: !1574, name: "c_and_shell_escape", file: !144, line: 512)
!1598 = !DILabel(scope: !1574, name: "c_escape", file: !144, line: 517)
!1599 = !DILabel(scope: !1565, name: "store_escape", file: !144, line: 719)
!1600 = !DILabel(scope: !1565, name: "store_c", file: !144, line: 722)
!1601 = !DILabel(scope: !1538, name: "force_outer_quoting_style", file: !144, line: 763)
!1602 = !DILocation(line: 0, scope: !1538)
!1603 = !DILocation(line: 269, column: 25, scope: !1538)
!1604 = !DILocation(line: 269, column: 36, scope: !1538)
!1605 = !DILocation(line: 270, column: 8, scope: !1538)
!1606 = !DILocation(line: 0, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 526, column: 15)
!1608 = !DILocation(line: 0, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !144, line: 462, column: 19)
!1610 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 455, column: 13)
!1611 = !DILocation(line: 0, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !144, line: 449, column: 20)
!1613 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 428, column: 15)
!1614 = !DILocation(line: 0, scope: !1577)
!1615 = !DILocation(line: 0, scope: !1583)
!1616 = !DILocation(line: 0, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 712, column: 11)
!1618 = !DILocation(line: 273, column: 3, scope: !1538)
!1619 = !DILocation(line: 265, column: 10, scope: !1538)
!1620 = !DILocation(line: 266, column: 15, scope: !1538)
!1621 = !DILocation(line: 267, column: 10, scope: !1538)
!1622 = !DILocation(line: 268, column: 8, scope: !1538)
!1623 = !DILocation(line: 271, column: 8, scope: !1538)
!1624 = !DILocation(line: 272, column: 8, scope: !1538)
!1625 = !DILocation(line: 273, column: 8, scope: !1538)
!1626 = !DILocation(line: 314, column: 2, scope: !1538)
!1627 = !DILocation(line: 316, column: 3, scope: !1538)
!1628 = !DILocation(line: 323, column: 11, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1538, file: !144, line: 317, column: 5)
!1630 = !DILocation(line: 323, column: 12, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1629, file: !144, line: 323, column: 11)
!1632 = !DILocation(line: 324, column: 9, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !144, line: 324, column: 9)
!1634 = distinct !DILexicalBlock(scope: !1631, file: !144, line: 324, column: 9)
!1635 = !DILocation(line: 324, column: 9, scope: !1634)
!1636 = !DILocation(line: 362, column: 26, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !144, line: 340, column: 11)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !144, line: 339, column: 13)
!1639 = distinct !DILexicalBlock(scope: !1629, file: !144, line: 338, column: 7)
!1640 = !DILocation(line: 363, column: 27, scope: !1637)
!1641 = !DILocation(line: 364, column: 11, scope: !1637)
!1642 = !DILocation(line: 365, column: 14, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !144, line: 365, column: 13)
!1644 = !DILocation(line: 365, column: 13, scope: !1639)
!1645 = !DILocation(line: 366, column: 43, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !144, line: 366, column: 11)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !144, line: 366, column: 11)
!1648 = !DILocation(line: 366, column: 11, scope: !1647)
!1649 = !DILocation(line: 367, column: 13, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !144, line: 367, column: 13)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !144, line: 367, column: 13)
!1652 = !DILocation(line: 367, column: 13, scope: !1651)
!1653 = !DILocation(line: 366, column: 70, scope: !1646)
!1654 = distinct !{!1654, !1648, !1655}
!1655 = !DILocation(line: 367, column: 13, scope: !1647)
!1656 = !DILocation(line: 264, column: 10, scope: !1538)
!1657 = !DILocation(line: 370, column: 28, scope: !1639)
!1658 = !DILocation(line: 372, column: 7, scope: !1629)
!1659 = !DILocation(line: 376, column: 7, scope: !1629)
!1660 = !DILocation(line: 379, column: 7, scope: !1629)
!1661 = !DILocation(line: 381, column: 12, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1629, file: !144, line: 381, column: 11)
!1663 = !DILocation(line: 381, column: 11, scope: !1629)
!1664 = !DILocation(line: 386, column: 12, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1629, file: !144, line: 386, column: 11)
!1666 = !DILocation(line: 386, column: 11, scope: !1629)
!1667 = !DILocation(line: 387, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !144, line: 387, column: 9)
!1669 = distinct !DILexicalBlock(scope: !1665, file: !144, line: 387, column: 9)
!1670 = !DILocation(line: 387, column: 9, scope: !1669)
!1671 = !DILocation(line: 394, column: 7, scope: !1629)
!1672 = !DILocation(line: 397, column: 7, scope: !1629)
!1673 = !DILocation(line: 0, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 408, column: 11)
!1675 = !DILocation(line: 0, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !144, line: 419, column: 15)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !144, line: 418, column: 9)
!1678 = !DILocation(line: 0, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 556, column: 15)
!1680 = !DILocation(line: 0, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 548, column: 15)
!1682 = !DILocation(line: 0, scope: !1588)
!1683 = !DILocation(line: 0, scope: !1595)
!1684 = !DILocation(line: 0, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 509, column: 15)
!1686 = !DILocation(line: 400, column: 8, scope: !1567)
!1687 = !DILocation(line: 0, scope: !1567)
!1688 = !DILocation(line: 400, column: 27, scope: !1566)
!1689 = !DILocation(line: 400, column: 19, scope: !1566)
!1690 = !DILocation(line: 400, column: 41, scope: !1566)
!1691 = !DILocation(line: 400, column: 48, scope: !1566)
!1692 = !DILocation(line: 400, column: 3, scope: !1567)
!1693 = !DILocation(line: 400, column: 60, scope: !1566)
!1694 = !DILocation(line: 0, scope: !1565)
!1695 = !DILocation(line: 409, column: 11, scope: !1674)
!1696 = !DILocation(line: 411, column: 17, scope: !1674)
!1697 = !DILocation(line: 412, column: 39, scope: !1674)
!1698 = !DILocation(line: 416, column: 32, scope: !1674)
!1699 = !DILocation(line: 412, column: 19, scope: !1674)
!1700 = !DILocation(line: 412, column: 15, scope: !1674)
!1701 = !DILocation(line: 417, column: 11, scope: !1674)
!1702 = !DILocation(line: 417, column: 26, scope: !1674)
!1703 = !DILocation(line: 417, column: 14, scope: !1674)
!1704 = !DILocation(line: 417, column: 63, scope: !1674)
!1705 = !DILocation(line: 408, column: 11, scope: !1565)
!1706 = !DILocation(line: 424, column: 11, scope: !1565)
!1707 = !DILocation(line: 425, column: 7, scope: !1565)
!1708 = !DILocation(line: 428, column: 15, scope: !1574)
!1709 = !DILocation(line: 430, column: 15, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !144, line: 430, column: 15)
!1711 = distinct !DILexicalBlock(scope: !1613, file: !144, line: 429, column: 13)
!1712 = !DILocation(line: 430, column: 15, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !144, line: 430, column: 15)
!1714 = !DILocation(line: 430, column: 15, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !144, line: 430, column: 15)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !144, line: 430, column: 15)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !144, line: 430, column: 15)
!1718 = !DILocation(line: 430, column: 15, scope: !1716)
!1719 = !DILocation(line: 430, column: 15, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !144, line: 430, column: 15)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !144, line: 430, column: 15)
!1722 = !DILocation(line: 430, column: 15, scope: !1721)
!1723 = !DILocation(line: 430, column: 15, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !144, line: 430, column: 15)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !144, line: 430, column: 15)
!1726 = !DILocation(line: 430, column: 15, scope: !1725)
!1727 = !DILocation(line: 430, column: 15, scope: !1717)
!1728 = !DILocation(line: 430, column: 15, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !144, line: 430, column: 15)
!1730 = distinct !DILexicalBlock(scope: !1710, file: !144, line: 430, column: 15)
!1731 = !DILocation(line: 430, column: 15, scope: !1730)
!1732 = !DILocation(line: 438, column: 19, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1711, file: !144, line: 437, column: 19)
!1734 = !DILocation(line: 438, column: 24, scope: !1733)
!1735 = !DILocation(line: 438, column: 28, scope: !1733)
!1736 = !DILocation(line: 438, column: 38, scope: !1733)
!1737 = !DILocation(line: 438, column: 48, scope: !1733)
!1738 = !DILocation(line: 438, column: 59, scope: !1733)
!1739 = !DILocation(line: 440, column: 19, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !144, line: 440, column: 19)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !144, line: 440, column: 19)
!1742 = distinct !DILexicalBlock(scope: !1733, file: !144, line: 439, column: 17)
!1743 = !DILocation(line: 440, column: 19, scope: !1741)
!1744 = !DILocation(line: 441, column: 19, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !144, line: 441, column: 19)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !144, line: 441, column: 19)
!1747 = !DILocation(line: 441, column: 19, scope: !1746)
!1748 = !DILocation(line: 442, column: 17, scope: !1742)
!1749 = !DILocation(line: 449, column: 20, scope: !1613)
!1750 = !DILocation(line: 454, column: 11, scope: !1574)
!1751 = !DILocation(line: 457, column: 19, scope: !1610)
!1752 = !DILocation(line: 463, column: 19, scope: !1609)
!1753 = !DILocation(line: 463, column: 24, scope: !1609)
!1754 = !DILocation(line: 463, column: 28, scope: !1609)
!1755 = !DILocation(line: 463, column: 38, scope: !1609)
!1756 = !DILocation(line: 463, column: 47, scope: !1609)
!1757 = !DILocation(line: 463, column: 41, scope: !1609)
!1758 = !DILocation(line: 463, column: 52, scope: !1609)
!1759 = !DILocation(line: 462, column: 19, scope: !1610)
!1760 = !DILocation(line: 464, column: 25, scope: !1609)
!1761 = !DILocation(line: 464, column: 17, scope: !1609)
!1762 = !DILocation(line: 471, column: 25, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1609, file: !144, line: 465, column: 19)
!1764 = !DILocation(line: 475, column: 21, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !144, line: 475, column: 21)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !144, line: 475, column: 21)
!1767 = !DILocation(line: 475, column: 21, scope: !1766)
!1768 = !DILocation(line: 476, column: 21, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !144, line: 476, column: 21)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !144, line: 476, column: 21)
!1771 = !DILocation(line: 476, column: 21, scope: !1770)
!1772 = !DILocation(line: 477, column: 21, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !144, line: 477, column: 21)
!1774 = distinct !DILexicalBlock(scope: !1763, file: !144, line: 477, column: 21)
!1775 = !DILocation(line: 477, column: 21, scope: !1774)
!1776 = !DILocation(line: 478, column: 21, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !144, line: 478, column: 21)
!1778 = distinct !DILexicalBlock(scope: !1763, file: !144, line: 478, column: 21)
!1779 = !DILocation(line: 478, column: 21, scope: !1778)
!1780 = !DILocation(line: 479, column: 21, scope: !1763)
!1781 = !DILocation(line: 492, column: 31, scope: !1574)
!1782 = !DILocation(line: 493, column: 31, scope: !1574)
!1783 = !DILocation(line: 495, column: 31, scope: !1574)
!1784 = !DILocation(line: 496, column: 31, scope: !1574)
!1785 = !DILocation(line: 497, column: 31, scope: !1574)
!1786 = !DILocation(line: 500, column: 15, scope: !1574)
!1787 = !DILocation(line: 502, column: 19, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !144, line: 501, column: 13)
!1789 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 500, column: 15)
!1790 = !DILocation(line: 509, column: 33, scope: !1685)
!1791 = !DILocation(line: 0, scope: !1574)
!1792 = !DILocation(line: 512, column: 9, scope: !1574)
!1793 = !DILocation(line: 514, column: 15, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 513, column: 15)
!1795 = !DILocation(line: 517, column: 9, scope: !1574)
!1796 = !DILocation(line: 518, column: 15, scope: !1574)
!1797 = !DILocation(line: 526, column: 15, scope: !1574)
!1798 = !DILocation(line: 526, column: 40, scope: !1607)
!1799 = !DILocation(line: 526, column: 47, scope: !1607)
!1800 = !DILocation(line: 526, column: 18, scope: !1607)
!1801 = !DILocation(line: 530, column: 17, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1574, file: !144, line: 530, column: 15)
!1803 = !DILocation(line: 530, column: 15, scope: !1574)
!1804 = !DILocation(line: 535, column: 11, scope: !1574)
!1805 = !DILocation(line: 549, column: 15, scope: !1681)
!1806 = !DILocation(line: 556, column: 15, scope: !1574)
!1807 = !DILocation(line: 558, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1679, file: !144, line: 557, column: 13)
!1809 = !DILocation(line: 561, column: 19, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1808, file: !144, line: 561, column: 19)
!1811 = !DILocation(line: 561, column: 35, scope: !1810)
!1812 = !DILocation(line: 561, column: 30, scope: !1810)
!1813 = !DILocation(line: 570, column: 15, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !144, line: 570, column: 15)
!1815 = distinct !DILexicalBlock(scope: !1808, file: !144, line: 570, column: 15)
!1816 = !DILocation(line: 570, column: 15, scope: !1815)
!1817 = !DILocation(line: 571, column: 15, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !144, line: 571, column: 15)
!1819 = distinct !DILexicalBlock(scope: !1808, file: !144, line: 571, column: 15)
!1820 = !DILocation(line: 571, column: 15, scope: !1819)
!1821 = !DILocation(line: 572, column: 15, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !144, line: 572, column: 15)
!1823 = distinct !DILexicalBlock(scope: !1808, file: !144, line: 572, column: 15)
!1824 = !DILocation(line: 572, column: 15, scope: !1823)
!1825 = !DILocation(line: 574, column: 13, scope: !1808)
!1826 = !DILocation(line: 614, column: 17, scope: !1573)
!1827 = !DILocation(line: 0, scope: !1573)
!1828 = !DILocation(line: 617, column: 29, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1578, file: !144, line: 615, column: 15)
!1830 = !DILocation(line: 617, column: 27, scope: !1829)
!1831 = !DILocation(line: 618, column: 15, scope: !1829)
!1832 = !DILocation(line: 621, column: 17, scope: !1577)
!1833 = !DILocation(line: 621, column: 27, scope: !1577)
!1834 = !DILocalVariable(name: "__dest", arg: 1, scope: !1835, file: !1836, line: 59, type: !67)
!1835 = distinct !DISubprogram(name: "memset", scope: !1836, file: !1836, line: 59, type: !1837, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !1839)
!1836 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!67, !67, !18, !69}
!1839 = !{!1834, !1840, !1841}
!1840 = !DILocalVariable(name: "__ch", arg: 2, scope: !1835, file: !1836, line: 59, type: !18)
!1841 = !DILocalVariable(name: "__len", arg: 3, scope: !1835, file: !1836, line: 59, type: !69)
!1842 = !DILocation(line: 0, scope: !1835, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 622, column: 17, scope: !1577)
!1844 = !DILocation(line: 71, column: 10, scope: !1835, inlinedAt: !1843)
!1845 = !DILocation(line: 626, column: 29, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1577, file: !144, line: 626, column: 21)
!1847 = !DILocation(line: 626, column: 21, scope: !1577)
!1848 = !DILocation(line: 627, column: 29, scope: !1846)
!1849 = !DILocation(line: 627, column: 19, scope: !1846)
!1850 = !DILocation(line: 629, column: 17, scope: !1577)
!1851 = !DILocation(line: 624, column: 19, scope: !1577)
!1852 = !DILocation(line: 625, column: 27, scope: !1577)
!1853 = !DILocation(line: 631, column: 21, scope: !1583)
!1854 = !DILocation(line: 632, column: 56, scope: !1583)
!1855 = !DILocation(line: 632, column: 50, scope: !1583)
!1856 = !DILocation(line: 633, column: 53, scope: !1583)
!1857 = !DILocation(line: 632, column: 36, scope: !1583)
!1858 = !DILocation(line: 634, column: 25, scope: !1583)
!1859 = !DILocation(line: 644, column: 38, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1590, file: !144, line: 642, column: 23)
!1861 = !DILocation(line: 644, column: 48, scope: !1860)
!1862 = !DILocation(line: 644, column: 25, scope: !1860)
!1863 = !DILocation(line: 644, column: 51, scope: !1860)
!1864 = !DILocation(line: 645, column: 28, scope: !1860)
!1865 = !DILocation(line: 644, column: 34, scope: !1860)
!1866 = distinct !{!1866, !1862, !1864}
!1867 = !DILocation(line: 658, column: 43, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !144, line: 658, column: 29)
!1869 = distinct !DILexicalBlock(scope: !1587, file: !144, line: 658, column: 29)
!1870 = !DILocation(line: 655, column: 29, scope: !1588)
!1871 = !DILocation(line: 0, scope: !1587)
!1872 = !DILocation(line: 659, column: 49, scope: !1868)
!1873 = !DILocation(line: 659, column: 39, scope: !1868)
!1874 = !DILocation(line: 659, column: 31, scope: !1868)
!1875 = !DILocation(line: 658, column: 53, scope: !1868)
!1876 = !DILocation(line: 658, column: 29, scope: !1869)
!1877 = distinct !{!1877, !1876, !1878}
!1878 = !DILocation(line: 667, column: 33, scope: !1869)
!1879 = !DILocation(line: 674, column: 19, scope: !1577)
!1880 = !DILocation(line: 670, column: 41, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1589, file: !144, line: 670, column: 29)
!1882 = !DILocation(line: 670, column: 31, scope: !1881)
!1883 = !DILocation(line: 670, column: 29, scope: !1589)
!1884 = !DILocation(line: 672, column: 27, scope: !1589)
!1885 = !DILocation(line: 675, column: 26, scope: !1577)
!1886 = !DILocation(line: 675, column: 24, scope: !1577)
!1887 = !DILocation(line: 674, column: 19, scope: !1583)
!1888 = distinct !{!1888, !1850, !1889}
!1889 = !DILocation(line: 675, column: 44, scope: !1577)
!1890 = !DILocation(line: 676, column: 15, scope: !1578)
!1891 = !DILocation(line: 0, scope: !1578)
!1892 = !DILocation(line: 678, column: 40, scope: !1573)
!1893 = !DILocation(line: 680, column: 19, scope: !1595)
!1894 = !DILocation(line: 680, column: 45, scope: !1595)
!1895 = !DILocation(line: 680, column: 23, scope: !1595)
!1896 = !DILocation(line: 684, column: 33, scope: !1594)
!1897 = !DILocation(line: 0, scope: !1594)
!1898 = !DILocation(line: 686, column: 17, scope: !1594)
!1899 = !DILocation(line: 405, column: 12, scope: !1565)
!1900 = !DILocation(line: 688, column: 43, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !144, line: 688, column: 25)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !144, line: 687, column: 19)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !144, line: 686, column: 17)
!1904 = distinct !DILexicalBlock(scope: !1594, file: !144, line: 686, column: 17)
!1905 = !DILocation(line: 690, column: 25, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !144, line: 690, column: 25)
!1907 = distinct !DILexicalBlock(scope: !1901, file: !144, line: 689, column: 23)
!1908 = !DILocation(line: 690, column: 25, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !144, line: 690, column: 25)
!1910 = !DILocation(line: 690, column: 25, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !144, line: 690, column: 25)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !144, line: 690, column: 25)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !144, line: 690, column: 25)
!1914 = !DILocation(line: 690, column: 25, scope: !1912)
!1915 = !DILocation(line: 690, column: 25, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !144, line: 690, column: 25)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !144, line: 690, column: 25)
!1918 = !DILocation(line: 690, column: 25, scope: !1917)
!1919 = !DILocation(line: 690, column: 25, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !144, line: 690, column: 25)
!1921 = distinct !DILexicalBlock(scope: !1913, file: !144, line: 690, column: 25)
!1922 = !DILocation(line: 690, column: 25, scope: !1921)
!1923 = !DILocation(line: 690, column: 25, scope: !1913)
!1924 = !DILocation(line: 690, column: 25, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !144, line: 690, column: 25)
!1926 = distinct !DILexicalBlock(scope: !1906, file: !144, line: 690, column: 25)
!1927 = !DILocation(line: 690, column: 25, scope: !1926)
!1928 = !DILocation(line: 691, column: 25, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !144, line: 691, column: 25)
!1930 = distinct !DILexicalBlock(scope: !1907, file: !144, line: 691, column: 25)
!1931 = !DILocation(line: 691, column: 25, scope: !1930)
!1932 = !DILocation(line: 692, column: 25, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !144, line: 692, column: 25)
!1934 = distinct !DILexicalBlock(scope: !1907, file: !144, line: 692, column: 25)
!1935 = !DILocation(line: 692, column: 25, scope: !1934)
!1936 = !DILocation(line: 693, column: 38, scope: !1907)
!1937 = !DILocation(line: 693, column: 33, scope: !1907)
!1938 = !DILocation(line: 694, column: 23, scope: !1907)
!1939 = !DILocation(line: 695, column: 30, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1901, file: !144, line: 695, column: 30)
!1941 = !DILocation(line: 695, column: 30, scope: !1901)
!1942 = !DILocation(line: 697, column: 25, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !144, line: 697, column: 25)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !144, line: 697, column: 25)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !144, line: 696, column: 23)
!1946 = !DILocation(line: 697, column: 25, scope: !1944)
!1947 = !DILocation(line: 699, column: 23, scope: !1945)
!1948 = !DILocation(line: 700, column: 35, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1902, file: !144, line: 700, column: 25)
!1950 = !DILocation(line: 700, column: 30, scope: !1949)
!1951 = !DILocation(line: 700, column: 25, scope: !1902)
!1952 = !DILocation(line: 702, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !144, line: 702, column: 21)
!1954 = distinct !DILexicalBlock(scope: !1902, file: !144, line: 702, column: 21)
!1955 = !DILocation(line: 702, column: 21, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !144, line: 702, column: 21)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !144, line: 702, column: 21)
!1958 = distinct !DILexicalBlock(scope: !1953, file: !144, line: 702, column: 21)
!1959 = !DILocation(line: 702, column: 21, scope: !1957)
!1960 = !DILocation(line: 702, column: 21, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !144, line: 702, column: 21)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !144, line: 702, column: 21)
!1963 = !DILocation(line: 702, column: 21, scope: !1962)
!1964 = !DILocation(line: 702, column: 21, scope: !1958)
!1965 = !DILocation(line: 0, scope: !1902)
!1966 = !DILocation(line: 703, column: 21, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !144, line: 703, column: 21)
!1968 = distinct !DILexicalBlock(scope: !1902, file: !144, line: 703, column: 21)
!1969 = !DILocation(line: 703, column: 21, scope: !1968)
!1970 = !DILocation(line: 704, column: 25, scope: !1902)
!1971 = !DILocation(line: 686, column: 17, scope: !1903)
!1972 = distinct !{!1972, !1973, !1974}
!1973 = !DILocation(line: 686, column: 17, scope: !1904)
!1974 = !DILocation(line: 705, column: 19, scope: !1904)
!1975 = !DILocation(line: 416, column: 30, scope: !1674)
!1976 = !DILocation(line: 712, column: 34, scope: !1617)
!1977 = !DILocation(line: 715, column: 35, scope: !1617)
!1978 = !DILocation(line: 715, column: 17, scope: !1617)
!1979 = !DILocation(line: 715, column: 47, scope: !1617)
!1980 = !DILocation(line: 715, column: 65, scope: !1617)
!1981 = !DILocation(line: 716, column: 15, scope: !1617)
!1982 = !DILocation(line: 716, column: 11, scope: !1617)
!1983 = !DILocation(line: 712, column: 11, scope: !1565)
!1984 = !DILocation(line: 400, column: 10, scope: !1567)
!1985 = !DILocation(line: 719, column: 5, scope: !1565)
!1986 = !DILocation(line: 720, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 720, column: 7)
!1988 = !DILocation(line: 720, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1987, file: !144, line: 720, column: 7)
!1990 = !DILocation(line: 720, column: 7, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !144, line: 720, column: 7)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !144, line: 720, column: 7)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !144, line: 720, column: 7)
!1994 = !DILocation(line: 720, column: 7, scope: !1992)
!1995 = !DILocation(line: 720, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !144, line: 720, column: 7)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !144, line: 720, column: 7)
!1998 = !DILocation(line: 720, column: 7, scope: !1997)
!1999 = !DILocation(line: 720, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !144, line: 720, column: 7)
!2001 = distinct !DILexicalBlock(scope: !1993, file: !144, line: 720, column: 7)
!2002 = !DILocation(line: 720, column: 7, scope: !2001)
!2003 = !DILocation(line: 720, column: 7, scope: !1993)
!2004 = !DILocation(line: 720, column: 7, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !144, line: 720, column: 7)
!2006 = distinct !DILexicalBlock(scope: !1987, file: !144, line: 720, column: 7)
!2007 = !DILocation(line: 720, column: 7, scope: !2006)
!2008 = !DILocation(line: 722, column: 5, scope: !1565)
!2009 = !DILocation(line: 723, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !144, line: 723, column: 7)
!2011 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 723, column: 7)
!2012 = !DILocation(line: 424, column: 9, scope: !1565)
!2013 = !DILocation(line: 723, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !144, line: 723, column: 7)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !144, line: 723, column: 7)
!2016 = distinct !DILexicalBlock(scope: !2010, file: !144, line: 723, column: 7)
!2017 = !DILocation(line: 723, column: 7, scope: !2015)
!2018 = !DILocation(line: 723, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !144, line: 723, column: 7)
!2020 = distinct !DILexicalBlock(scope: !2016, file: !144, line: 723, column: 7)
!2021 = !DILocation(line: 723, column: 7, scope: !2020)
!2022 = !DILocation(line: 723, column: 7, scope: !2016)
!2023 = !DILocation(line: 724, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !144, line: 724, column: 7)
!2025 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 724, column: 7)
!2026 = !DILocation(line: 724, column: 7, scope: !2025)
!2027 = !DILocation(line: 726, column: 13, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1565, file: !144, line: 726, column: 11)
!2029 = !DILocation(line: 726, column: 11, scope: !1565)
!2030 = !DILocation(line: 728, column: 5, scope: !1566)
!2031 = !DILocation(line: 400, column: 75, scope: !1566)
!2032 = !DILocation(line: 400, column: 3, scope: !1566)
!2033 = distinct !{!2033, !1692, !2034}
!2034 = !DILocation(line: 728, column: 5, scope: !1567)
!2035 = !DILocation(line: 730, column: 11, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1538, file: !144, line: 730, column: 7)
!2037 = !DILocation(line: 730, column: 16, scope: !2036)
!2038 = !DILocation(line: 738, column: 51, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1538, file: !144, line: 738, column: 7)
!2040 = !DILocation(line: 739, column: 10, scope: !2039)
!2041 = !DILocation(line: 741, column: 11, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !144, line: 741, column: 11)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !144, line: 740, column: 5)
!2044 = !DILocation(line: 741, column: 11, scope: !2043)
!2045 = !DILocation(line: 742, column: 16, scope: !2042)
!2046 = !DILocation(line: 742, column: 9, scope: !2042)
!2047 = !DILocation(line: 746, column: 18, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2042, file: !144, line: 746, column: 16)
!2049 = !DILocation(line: 746, column: 32, scope: !2048)
!2050 = !DILocation(line: 746, column: 29, scope: !2048)
!2051 = !DILocation(line: 755, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1538, file: !144, line: 755, column: 7)
!2053 = !DILocation(line: 755, column: 20, scope: !2052)
!2054 = !DILocation(line: 756, column: 12, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !144, line: 756, column: 5)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !144, line: 756, column: 5)
!2057 = !DILocation(line: 756, column: 5, scope: !2056)
!2058 = !DILocation(line: 757, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !144, line: 757, column: 7)
!2060 = distinct !DILexicalBlock(scope: !2055, file: !144, line: 757, column: 7)
!2061 = !DILocation(line: 757, column: 7, scope: !2060)
!2062 = !DILocation(line: 756, column: 39, scope: !2055)
!2063 = distinct !{!2063, !2057, !2064}
!2064 = !DILocation(line: 757, column: 7, scope: !2056)
!2065 = !DILocation(line: 759, column: 11, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1538, file: !144, line: 759, column: 7)
!2067 = !DILocation(line: 759, column: 7, scope: !1538)
!2068 = !DILocation(line: 760, column: 5, scope: !2066)
!2069 = !DILocation(line: 760, column: 17, scope: !2066)
!2070 = !DILocation(line: 763, column: 2, scope: !1538)
!2071 = !DILocation(line: 766, column: 51, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1538, file: !144, line: 766, column: 7)
!2073 = !DILocation(line: 766, column: 21, scope: !2072)
!2074 = !DILocation(line: 770, column: 42, scope: !1538)
!2075 = !DILocation(line: 768, column: 10, scope: !1538)
!2076 = !DILocation(line: 768, column: 3, scope: !1538)
!2077 = !DILocation(line: 772, column: 1, scope: !1538)
!2078 = distinct !DISubprogram(name: "gettext_quote", scope: !144, file: !144, line: 207, type: !2079, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!6, !6, !146}
!2081 = !{!2082, !2083, !2084, !2085}
!2082 = !DILocalVariable(name: "msgid", arg: 1, scope: !2078, file: !144, line: 207, type: !6)
!2083 = !DILocalVariable(name: "s", arg: 2, scope: !2078, file: !144, line: 207, type: !146)
!2084 = !DILocalVariable(name: "translation", scope: !2078, file: !144, line: 209, type: !6)
!2085 = !DILocalVariable(name: "locale_code", scope: !2078, file: !144, line: 210, type: !6)
!2086 = !DILocation(line: 0, scope: !2078)
!2087 = !DILocation(line: 209, column: 29, scope: !2078)
!2088 = !DILocation(line: 212, column: 19, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2078, file: !144, line: 212, column: 7)
!2090 = !DILocation(line: 212, column: 7, scope: !2078)
!2091 = !DILocation(line: 233, column: 17, scope: !2078)
!2092 = !DILocalVariable(name: "s1", arg: 1, scope: !2093, file: !2094, line: 160, type: !6)
!2093 = distinct !DISubprogram(name: "strcaseeq0", scope: !2094, file: !2094, line: 160, type: !2095, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2097)
!2094 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2097 = !{!2092, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2098 = !DILocalVariable(name: "s2", arg: 2, scope: !2093, file: !2094, line: 160, type: !6)
!2099 = !DILocalVariable(name: "s20", arg: 3, scope: !2093, file: !2094, line: 160, type: !8)
!2100 = !DILocalVariable(name: "s21", arg: 4, scope: !2093, file: !2094, line: 160, type: !8)
!2101 = !DILocalVariable(name: "s22", arg: 5, scope: !2093, file: !2094, line: 160, type: !8)
!2102 = !DILocalVariable(name: "s23", arg: 6, scope: !2093, file: !2094, line: 160, type: !8)
!2103 = !DILocalVariable(name: "s24", arg: 7, scope: !2093, file: !2094, line: 160, type: !8)
!2104 = !DILocalVariable(name: "s25", arg: 8, scope: !2093, file: !2094, line: 160, type: !8)
!2105 = !DILocalVariable(name: "s26", arg: 9, scope: !2093, file: !2094, line: 160, type: !8)
!2106 = !DILocalVariable(name: "s27", arg: 10, scope: !2093, file: !2094, line: 160, type: !8)
!2107 = !DILocalVariable(name: "s28", arg: 11, scope: !2093, file: !2094, line: 160, type: !8)
!2108 = !DILocation(line: 0, scope: !2093, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 234, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2078, file: !144, line: 234, column: 7)
!2111 = !DILocation(line: 162, column: 7, scope: !2112, inlinedAt: !2109)
!2112 = distinct !DILexicalBlock(scope: !2093, file: !2094, line: 162, column: 7)
!2113 = !DILocalVariable(name: "s1", arg: 1, scope: !2114, file: !2094, line: 146, type: !6)
!2114 = distinct !DISubprogram(name: "strcaseeq1", scope: !2094, file: !2094, line: 146, type: !2115, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2117 = !{!2113, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126}
!2118 = !DILocalVariable(name: "s2", arg: 2, scope: !2114, file: !2094, line: 146, type: !6)
!2119 = !DILocalVariable(name: "s21", arg: 3, scope: !2114, file: !2094, line: 146, type: !8)
!2120 = !DILocalVariable(name: "s22", arg: 4, scope: !2114, file: !2094, line: 146, type: !8)
!2121 = !DILocalVariable(name: "s23", arg: 5, scope: !2114, file: !2094, line: 146, type: !8)
!2122 = !DILocalVariable(name: "s24", arg: 6, scope: !2114, file: !2094, line: 146, type: !8)
!2123 = !DILocalVariable(name: "s25", arg: 7, scope: !2114, file: !2094, line: 146, type: !8)
!2124 = !DILocalVariable(name: "s26", arg: 8, scope: !2114, file: !2094, line: 146, type: !8)
!2125 = !DILocalVariable(name: "s27", arg: 9, scope: !2114, file: !2094, line: 146, type: !8)
!2126 = !DILocalVariable(name: "s28", arg: 10, scope: !2114, file: !2094, line: 146, type: !8)
!2127 = !DILocation(line: 0, scope: !2114, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 167, column: 16, scope: !2129, inlinedAt: !2109)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !2094, line: 164, column: 11)
!2130 = distinct !DILexicalBlock(scope: !2112, file: !2094, line: 163, column: 5)
!2131 = !DILocation(line: 148, column: 7, scope: !2132, inlinedAt: !2128)
!2132 = distinct !DILexicalBlock(scope: !2114, file: !2094, line: 148, column: 7)
!2133 = !DILocalVariable(name: "s1", arg: 1, scope: !2134, file: !2094, line: 132, type: !6)
!2134 = distinct !DISubprogram(name: "strcaseeq2", scope: !2094, file: !2094, line: 132, type: !2135, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2137 = !{!2133, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!2138 = !DILocalVariable(name: "s2", arg: 2, scope: !2134, file: !2094, line: 132, type: !6)
!2139 = !DILocalVariable(name: "s22", arg: 3, scope: !2134, file: !2094, line: 132, type: !8)
!2140 = !DILocalVariable(name: "s23", arg: 4, scope: !2134, file: !2094, line: 132, type: !8)
!2141 = !DILocalVariable(name: "s24", arg: 5, scope: !2134, file: !2094, line: 132, type: !8)
!2142 = !DILocalVariable(name: "s25", arg: 6, scope: !2134, file: !2094, line: 132, type: !8)
!2143 = !DILocalVariable(name: "s26", arg: 7, scope: !2134, file: !2094, line: 132, type: !8)
!2144 = !DILocalVariable(name: "s27", arg: 8, scope: !2134, file: !2094, line: 132, type: !8)
!2145 = !DILocalVariable(name: "s28", arg: 9, scope: !2134, file: !2094, line: 132, type: !8)
!2146 = !DILocation(line: 0, scope: !2134, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 153, column: 16, scope: !2148, inlinedAt: !2128)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !2094, line: 150, column: 11)
!2149 = distinct !DILexicalBlock(scope: !2132, file: !2094, line: 149, column: 5)
!2150 = !DILocation(line: 134, column: 7, scope: !2151, inlinedAt: !2147)
!2151 = distinct !DILexicalBlock(scope: !2134, file: !2094, line: 134, column: 7)
!2152 = !DILocalVariable(name: "s1", arg: 1, scope: !2153, file: !2094, line: 118, type: !6)
!2153 = distinct !DISubprogram(name: "strcaseeq3", scope: !2094, file: !2094, line: 118, type: !2154, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2156 = !{!2152, !2157, !2158, !2159, !2160, !2161, !2162, !2163}
!2157 = !DILocalVariable(name: "s2", arg: 2, scope: !2153, file: !2094, line: 118, type: !6)
!2158 = !DILocalVariable(name: "s23", arg: 3, scope: !2153, file: !2094, line: 118, type: !8)
!2159 = !DILocalVariable(name: "s24", arg: 4, scope: !2153, file: !2094, line: 118, type: !8)
!2160 = !DILocalVariable(name: "s25", arg: 5, scope: !2153, file: !2094, line: 118, type: !8)
!2161 = !DILocalVariable(name: "s26", arg: 6, scope: !2153, file: !2094, line: 118, type: !8)
!2162 = !DILocalVariable(name: "s27", arg: 7, scope: !2153, file: !2094, line: 118, type: !8)
!2163 = !DILocalVariable(name: "s28", arg: 8, scope: !2153, file: !2094, line: 118, type: !8)
!2164 = !DILocation(line: 0, scope: !2153, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 139, column: 16, scope: !2166, inlinedAt: !2147)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !2094, line: 136, column: 11)
!2167 = distinct !DILexicalBlock(scope: !2151, file: !2094, line: 135, column: 5)
!2168 = !DILocation(line: 120, column: 7, scope: !2169, inlinedAt: !2165)
!2169 = distinct !DILexicalBlock(scope: !2153, file: !2094, line: 120, column: 7)
!2170 = !DILocation(line: 120, column: 7, scope: !2153, inlinedAt: !2165)
!2171 = !DILocalVariable(name: "s1", arg: 1, scope: !2172, file: !2094, line: 104, type: !6)
!2172 = distinct !DISubprogram(name: "strcaseeq4", scope: !2094, file: !2094, line: 104, type: !2173, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2175 = !{!2171, !2176, !2177, !2178, !2179, !2180, !2181}
!2176 = !DILocalVariable(name: "s2", arg: 2, scope: !2172, file: !2094, line: 104, type: !6)
!2177 = !DILocalVariable(name: "s24", arg: 3, scope: !2172, file: !2094, line: 104, type: !8)
!2178 = !DILocalVariable(name: "s25", arg: 4, scope: !2172, file: !2094, line: 104, type: !8)
!2179 = !DILocalVariable(name: "s26", arg: 5, scope: !2172, file: !2094, line: 104, type: !8)
!2180 = !DILocalVariable(name: "s27", arg: 6, scope: !2172, file: !2094, line: 104, type: !8)
!2181 = !DILocalVariable(name: "s28", arg: 7, scope: !2172, file: !2094, line: 104, type: !8)
!2182 = !DILocation(line: 0, scope: !2172, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 125, column: 16, scope: !2184, inlinedAt: !2165)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !2094, line: 122, column: 11)
!2185 = distinct !DILexicalBlock(scope: !2169, file: !2094, line: 121, column: 5)
!2186 = !DILocation(line: 106, column: 7, scope: !2187, inlinedAt: !2183)
!2187 = distinct !DILexicalBlock(scope: !2172, file: !2094, line: 106, column: 7)
!2188 = !DILocation(line: 106, column: 7, scope: !2172, inlinedAt: !2183)
!2189 = !DILocalVariable(name: "s1", arg: 1, scope: !2190, file: !2094, line: 90, type: !6)
!2190 = distinct !DISubprogram(name: "strcaseeq5", scope: !2094, file: !2094, line: 90, type: !2191, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!18, !6, !6, !8, !8, !8, !8}
!2193 = !{!2189, !2194, !2195, !2196, !2197, !2198}
!2194 = !DILocalVariable(name: "s2", arg: 2, scope: !2190, file: !2094, line: 90, type: !6)
!2195 = !DILocalVariable(name: "s25", arg: 3, scope: !2190, file: !2094, line: 90, type: !8)
!2196 = !DILocalVariable(name: "s26", arg: 4, scope: !2190, file: !2094, line: 90, type: !8)
!2197 = !DILocalVariable(name: "s27", arg: 5, scope: !2190, file: !2094, line: 90, type: !8)
!2198 = !DILocalVariable(name: "s28", arg: 6, scope: !2190, file: !2094, line: 90, type: !8)
!2199 = !DILocation(line: 0, scope: !2190, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 111, column: 16, scope: !2201, inlinedAt: !2183)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !2094, line: 108, column: 11)
!2202 = distinct !DILexicalBlock(scope: !2187, file: !2094, line: 107, column: 5)
!2203 = !DILocation(line: 92, column: 7, scope: !2204, inlinedAt: !2200)
!2204 = distinct !DILexicalBlock(scope: !2190, file: !2094, line: 92, column: 7)
!2205 = !DILocation(line: 92, column: 7, scope: !2190, inlinedAt: !2200)
!2206 = !DILocation(line: 235, column: 12, scope: !2110)
!2207 = !DILocation(line: 235, column: 21, scope: !2110)
!2208 = !DILocation(line: 235, column: 5, scope: !2110)
!2209 = !DILocation(line: 0, scope: !2114, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 167, column: 16, scope: !2129, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 236, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2078, file: !144, line: 236, column: 7)
!2213 = !DILocation(line: 148, column: 7, scope: !2132, inlinedAt: !2210)
!2214 = !DILocation(line: 0, scope: !2134, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 153, column: 16, scope: !2148, inlinedAt: !2210)
!2216 = !DILocation(line: 134, column: 7, scope: !2151, inlinedAt: !2215)
!2217 = !DILocation(line: 134, column: 7, scope: !2134, inlinedAt: !2215)
!2218 = !DILocation(line: 0, scope: !2153, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 139, column: 16, scope: !2166, inlinedAt: !2215)
!2220 = !DILocation(line: 120, column: 7, scope: !2169, inlinedAt: !2219)
!2221 = !DILocation(line: 120, column: 7, scope: !2153, inlinedAt: !2219)
!2222 = !DILocation(line: 0, scope: !2172, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 125, column: 16, scope: !2184, inlinedAt: !2219)
!2224 = !DILocation(line: 106, column: 7, scope: !2187, inlinedAt: !2223)
!2225 = !DILocation(line: 106, column: 7, scope: !2172, inlinedAt: !2223)
!2226 = !DILocation(line: 0, scope: !2190, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 111, column: 16, scope: !2201, inlinedAt: !2223)
!2228 = !DILocation(line: 92, column: 7, scope: !2204, inlinedAt: !2227)
!2229 = !DILocation(line: 92, column: 7, scope: !2190, inlinedAt: !2227)
!2230 = !DILocalVariable(name: "s1", arg: 1, scope: !2231, file: !2094, line: 76, type: !6)
!2231 = distinct !DISubprogram(name: "strcaseeq6", scope: !2094, file: !2094, line: 76, type: !2232, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!18, !6, !6, !8, !8, !8}
!2234 = !{!2230, !2235, !2236, !2237, !2238}
!2235 = !DILocalVariable(name: "s2", arg: 2, scope: !2231, file: !2094, line: 76, type: !6)
!2236 = !DILocalVariable(name: "s26", arg: 3, scope: !2231, file: !2094, line: 76, type: !8)
!2237 = !DILocalVariable(name: "s27", arg: 4, scope: !2231, file: !2094, line: 76, type: !8)
!2238 = !DILocalVariable(name: "s28", arg: 5, scope: !2231, file: !2094, line: 76, type: !8)
!2239 = !DILocation(line: 0, scope: !2231, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 97, column: 16, scope: !2241, inlinedAt: !2227)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !2094, line: 94, column: 11)
!2242 = distinct !DILexicalBlock(scope: !2204, file: !2094, line: 93, column: 5)
!2243 = !DILocation(line: 78, column: 7, scope: !2244, inlinedAt: !2240)
!2244 = distinct !DILexicalBlock(scope: !2231, file: !2094, line: 78, column: 7)
!2245 = !DILocation(line: 78, column: 7, scope: !2231, inlinedAt: !2240)
!2246 = !DILocalVariable(name: "s1", arg: 1, scope: !2247, file: !2094, line: 62, type: !6)
!2247 = distinct !DISubprogram(name: "strcaseeq7", scope: !2094, file: !2094, line: 62, type: !2248, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!18, !6, !6, !8, !8}
!2250 = !{!2246, !2251, !2252, !2253}
!2251 = !DILocalVariable(name: "s2", arg: 2, scope: !2247, file: !2094, line: 62, type: !6)
!2252 = !DILocalVariable(name: "s27", arg: 3, scope: !2247, file: !2094, line: 62, type: !8)
!2253 = !DILocalVariable(name: "s28", arg: 4, scope: !2247, file: !2094, line: 62, type: !8)
!2254 = !DILocation(line: 0, scope: !2247, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 83, column: 16, scope: !2256, inlinedAt: !2240)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !2094, line: 80, column: 11)
!2257 = distinct !DILexicalBlock(scope: !2244, file: !2094, line: 79, column: 5)
!2258 = !DILocation(line: 64, column: 7, scope: !2259, inlinedAt: !2255)
!2259 = distinct !DILexicalBlock(scope: !2247, file: !2094, line: 64, column: 7)
!2260 = !DILocation(line: 236, column: 7, scope: !2078)
!2261 = !DILocation(line: 237, column: 12, scope: !2212)
!2262 = !DILocation(line: 237, column: 21, scope: !2212)
!2263 = !DILocation(line: 237, column: 5, scope: !2212)
!2264 = !DILocation(line: 239, column: 13, scope: !2078)
!2265 = !DILocation(line: 239, column: 11, scope: !2078)
!2266 = !DILocation(line: 239, column: 3, scope: !2078)
!2267 = !DILocation(line: 240, column: 1, scope: !2078)
!2268 = distinct !DISubprogram(name: "quotearg_alloc", scope: !144, file: !144, line: 799, type: !2269, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!25, !6, !69, !191}
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "arg", arg: 1, scope: !2268, file: !144, line: 799, type: !6)
!2273 = !DILocalVariable(name: "argsize", arg: 2, scope: !2268, file: !144, line: 799, type: !69)
!2274 = !DILocalVariable(name: "o", arg: 3, scope: !2268, file: !144, line: 800, type: !191)
!2275 = !DILocation(line: 0, scope: !2268)
!2276 = !DILocalVariable(name: "arg", arg: 1, scope: !2277, file: !144, line: 812, type: !6)
!2277 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !144, file: !144, line: 812, type: !2278, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!25, !6, !69, !407, !191}
!2280 = !{!2276, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288}
!2281 = !DILocalVariable(name: "argsize", arg: 2, scope: !2277, file: !144, line: 812, type: !69)
!2282 = !DILocalVariable(name: "size", arg: 3, scope: !2277, file: !144, line: 812, type: !407)
!2283 = !DILocalVariable(name: "o", arg: 4, scope: !2277, file: !144, line: 813, type: !191)
!2284 = !DILocalVariable(name: "p", scope: !2277, file: !144, line: 815, type: !191)
!2285 = !DILocalVariable(name: "e", scope: !2277, file: !144, line: 816, type: !18)
!2286 = !DILocalVariable(name: "flags", scope: !2277, file: !144, line: 818, type: !18)
!2287 = !DILocalVariable(name: "bufsize", scope: !2277, file: !144, line: 819, type: !69)
!2288 = !DILocalVariable(name: "buf", scope: !2277, file: !144, line: 823, type: !25)
!2289 = !DILocation(line: 0, scope: !2277, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 802, column: 10, scope: !2268)
!2291 = !DILocation(line: 815, column: 37, scope: !2277, inlinedAt: !2290)
!2292 = !DILocation(line: 816, column: 11, scope: !2277, inlinedAt: !2290)
!2293 = !DILocation(line: 818, column: 18, scope: !2277, inlinedAt: !2290)
!2294 = !DILocation(line: 818, column: 24, scope: !2277, inlinedAt: !2290)
!2295 = !DILocation(line: 819, column: 69, scope: !2277, inlinedAt: !2290)
!2296 = !DILocation(line: 820, column: 53, scope: !2277, inlinedAt: !2290)
!2297 = !DILocation(line: 821, column: 49, scope: !2277, inlinedAt: !2290)
!2298 = !DILocation(line: 822, column: 49, scope: !2277, inlinedAt: !2290)
!2299 = !DILocation(line: 819, column: 20, scope: !2277, inlinedAt: !2290)
!2300 = !DILocation(line: 822, column: 62, scope: !2277, inlinedAt: !2290)
!2301 = !DILocalVariable(name: "n", arg: 1, scope: !2302, file: !182, line: 216, type: !69)
!2302 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2303, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!25, !69}
!2305 = !{!2301}
!2306 = !DILocation(line: 0, scope: !2302, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 823, column: 15, scope: !2277, inlinedAt: !2290)
!2308 = !DILocation(line: 218, column: 10, scope: !2302, inlinedAt: !2307)
!2309 = !DILocation(line: 824, column: 60, scope: !2277, inlinedAt: !2290)
!2310 = !DILocation(line: 826, column: 32, scope: !2277, inlinedAt: !2290)
!2311 = !DILocation(line: 826, column: 47, scope: !2277, inlinedAt: !2290)
!2312 = !DILocation(line: 824, column: 3, scope: !2277, inlinedAt: !2290)
!2313 = !DILocation(line: 827, column: 9, scope: !2277, inlinedAt: !2290)
!2314 = !DILocation(line: 802, column: 3, scope: !2268)
!2315 = !DILocation(line: 0, scope: !2277)
!2316 = !DILocation(line: 815, column: 37, scope: !2277)
!2317 = !DILocation(line: 816, column: 11, scope: !2277)
!2318 = !DILocation(line: 818, column: 18, scope: !2277)
!2319 = !DILocation(line: 818, column: 27, scope: !2277)
!2320 = !DILocation(line: 818, column: 24, scope: !2277)
!2321 = !DILocation(line: 819, column: 69, scope: !2277)
!2322 = !DILocation(line: 820, column: 53, scope: !2277)
!2323 = !DILocation(line: 821, column: 49, scope: !2277)
!2324 = !DILocation(line: 822, column: 49, scope: !2277)
!2325 = !DILocation(line: 819, column: 20, scope: !2277)
!2326 = !DILocation(line: 822, column: 62, scope: !2277)
!2327 = !DILocation(line: 0, scope: !2302, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 823, column: 15, scope: !2277)
!2329 = !DILocation(line: 218, column: 10, scope: !2302, inlinedAt: !2328)
!2330 = !DILocation(line: 824, column: 60, scope: !2277)
!2331 = !DILocation(line: 826, column: 32, scope: !2277)
!2332 = !DILocation(line: 826, column: 47, scope: !2277)
!2333 = !DILocation(line: 824, column: 3, scope: !2277)
!2334 = !DILocation(line: 827, column: 9, scope: !2277)
!2335 = !DILocation(line: 828, column: 7, scope: !2277)
!2336 = !DILocation(line: 829, column: 11, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2277, file: !144, line: 828, column: 7)
!2338 = !{!1289, !1289, i64 0}
!2339 = !DILocation(line: 829, column: 5, scope: !2337)
!2340 = !DILocation(line: 830, column: 3, scope: !2277)
!2341 = distinct !DISubprogram(name: "quotearg_free", scope: !144, file: !144, line: 848, type: !250, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2342)
!2342 = !{!2343, !2344}
!2343 = !DILocalVariable(name: "sv", scope: !2341, file: !144, line: 850, type: !273)
!2344 = !DILocalVariable(name: "i", scope: !2341, file: !144, line: 851, type: !18)
!2345 = !DILocation(line: 850, column: 24, scope: !2341)
!2346 = !DILocation(line: 0, scope: !2341)
!2347 = !DILocation(line: 852, column: 19, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !144, line: 852, column: 3)
!2349 = distinct !DILexicalBlock(scope: !2341, file: !144, line: 852, column: 3)
!2350 = !DILocation(line: 852, column: 17, scope: !2348)
!2351 = !DILocation(line: 852, column: 3, scope: !2349)
!2352 = !DILocation(line: 853, column: 17, scope: !2348)
!2353 = !{!2354, !1032, i64 8}
!2354 = !{!"slotvec", !1289, i64 0, !1032, i64 8}
!2355 = !DILocation(line: 853, column: 5, scope: !2348)
!2356 = !DILocation(line: 852, column: 28, scope: !2348)
!2357 = distinct !{!2357, !2351, !2358}
!2358 = !DILocation(line: 853, column: 20, scope: !2349)
!2359 = !DILocation(line: 854, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2341, file: !144, line: 854, column: 7)
!2361 = !DILocation(line: 854, column: 17, scope: !2360)
!2362 = !DILocation(line: 854, column: 7, scope: !2341)
!2363 = !DILocation(line: 856, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2360, file: !144, line: 855, column: 5)
!2365 = !DILocation(line: 857, column: 21, scope: !2364)
!2366 = !{!2354, !1289, i64 0}
!2367 = !DILocation(line: 858, column: 20, scope: !2364)
!2368 = !DILocation(line: 859, column: 5, scope: !2364)
!2369 = !DILocation(line: 860, column: 10, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2341, file: !144, line: 860, column: 7)
!2371 = !DILocation(line: 860, column: 7, scope: !2341)
!2372 = !DILocation(line: 862, column: 13, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !144, line: 861, column: 5)
!2374 = !DILocation(line: 862, column: 7, scope: !2373)
!2375 = !DILocation(line: 863, column: 15, scope: !2373)
!2376 = !DILocation(line: 864, column: 5, scope: !2373)
!2377 = !DILocation(line: 865, column: 10, scope: !2341)
!2378 = !DILocation(line: 866, column: 1, scope: !2341)
!2379 = distinct !DISubprogram(name: "quotearg_n", scope: !144, file: !144, line: 931, type: !343, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2380)
!2380 = !{!2381, !2382}
!2381 = !DILocalVariable(name: "n", arg: 1, scope: !2379, file: !144, line: 931, type: !18)
!2382 = !DILocalVariable(name: "arg", arg: 2, scope: !2379, file: !144, line: 931, type: !6)
!2383 = !DILocation(line: 0, scope: !2379)
!2384 = !DILocation(line: 933, column: 10, scope: !2379)
!2385 = !DILocation(line: 933, column: 3, scope: !2379)
!2386 = distinct !DISubprogram(name: "quotearg_n_options", scope: !144, file: !144, line: 877, type: !2387, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!25, !18, !6, !69, !191}
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2399, !2400, !2402, !2403, !2404}
!2390 = !DILocalVariable(name: "n", arg: 1, scope: !2386, file: !144, line: 877, type: !18)
!2391 = !DILocalVariable(name: "arg", arg: 2, scope: !2386, file: !144, line: 877, type: !6)
!2392 = !DILocalVariable(name: "argsize", arg: 3, scope: !2386, file: !144, line: 877, type: !69)
!2393 = !DILocalVariable(name: "options", arg: 4, scope: !2386, file: !144, line: 878, type: !191)
!2394 = !DILocalVariable(name: "e", scope: !2386, file: !144, line: 880, type: !18)
!2395 = !DILocalVariable(name: "sv", scope: !2386, file: !144, line: 882, type: !273)
!2396 = !DILocalVariable(name: "preallocated", scope: !2397, file: !144, line: 889, type: !92)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !144, line: 888, column: 5)
!2398 = distinct !DILexicalBlock(scope: !2386, file: !144, line: 887, column: 7)
!2399 = !DILocalVariable(name: "nmax", scope: !2397, file: !144, line: 890, type: !18)
!2400 = !DILocalVariable(name: "size", scope: !2401, file: !144, line: 903, type: !69)
!2401 = distinct !DILexicalBlock(scope: !2386, file: !144, line: 902, column: 3)
!2402 = !DILocalVariable(name: "val", scope: !2401, file: !144, line: 904, type: !25)
!2403 = !DILocalVariable(name: "flags", scope: !2401, file: !144, line: 906, type: !18)
!2404 = !DILocalVariable(name: "qsize", scope: !2401, file: !144, line: 907, type: !69)
!2405 = !DILocation(line: 0, scope: !2386)
!2406 = !DILocation(line: 880, column: 11, scope: !2386)
!2407 = !DILocation(line: 882, column: 24, scope: !2386)
!2408 = !DILocation(line: 884, column: 9, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2386, file: !144, line: 884, column: 7)
!2410 = !DILocation(line: 884, column: 7, scope: !2386)
!2411 = !DILocation(line: 885, column: 5, scope: !2409)
!2412 = !DILocation(line: 887, column: 7, scope: !2398)
!2413 = !DILocation(line: 887, column: 14, scope: !2398)
!2414 = !DILocation(line: 887, column: 7, scope: !2386)
!2415 = !DILocation(line: 889, column: 31, scope: !2397)
!2416 = !DILocation(line: 0, scope: !2397)
!2417 = !DILocation(line: 892, column: 16, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2397, file: !144, line: 892, column: 11)
!2419 = !DILocation(line: 892, column: 11, scope: !2397)
!2420 = !DILocation(line: 893, column: 9, scope: !2418)
!2421 = !DILocation(line: 895, column: 32, scope: !2397)
!2422 = !DILocation(line: 895, column: 61, scope: !2397)
!2423 = !DILocation(line: 895, column: 58, scope: !2397)
!2424 = !DILocation(line: 895, column: 66, scope: !2397)
!2425 = !DILocation(line: 895, column: 22, scope: !2397)
!2426 = !DILocation(line: 895, column: 15, scope: !2397)
!2427 = !DILocation(line: 896, column: 11, scope: !2397)
!2428 = !DILocation(line: 897, column: 15, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2397, file: !144, line: 896, column: 11)
!2430 = !{i64 0, i64 8, !2338, i64 8, i64 8, !1031}
!2431 = !DILocation(line: 897, column: 9, scope: !2429)
!2432 = !DILocation(line: 898, column: 20, scope: !2397)
!2433 = !DILocation(line: 898, column: 18, scope: !2397)
!2434 = !DILocation(line: 898, column: 15, scope: !2397)
!2435 = !DILocation(line: 898, column: 38, scope: !2397)
!2436 = !DILocation(line: 898, column: 31, scope: !2397)
!2437 = !DILocation(line: 898, column: 48, scope: !2397)
!2438 = !DILocation(line: 0, scope: !1835, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 898, column: 7, scope: !2397)
!2440 = !DILocation(line: 71, column: 10, scope: !1835, inlinedAt: !2439)
!2441 = !DILocation(line: 899, column: 14, scope: !2397)
!2442 = !DILocation(line: 900, column: 5, scope: !2397)
!2443 = !DILocation(line: 903, column: 19, scope: !2401)
!2444 = !DILocation(line: 903, column: 25, scope: !2401)
!2445 = !DILocation(line: 0, scope: !2401)
!2446 = !DILocation(line: 904, column: 23, scope: !2401)
!2447 = !DILocation(line: 906, column: 26, scope: !2401)
!2448 = !DILocation(line: 906, column: 32, scope: !2401)
!2449 = !DILocation(line: 908, column: 55, scope: !2401)
!2450 = !DILocation(line: 909, column: 46, scope: !2401)
!2451 = !DILocation(line: 910, column: 55, scope: !2401)
!2452 = !DILocation(line: 911, column: 55, scope: !2401)
!2453 = !DILocation(line: 907, column: 20, scope: !2401)
!2454 = !DILocation(line: 913, column: 14, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2401, file: !144, line: 913, column: 9)
!2456 = !DILocation(line: 913, column: 9, scope: !2401)
!2457 = !DILocation(line: 915, column: 35, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2455, file: !144, line: 914, column: 7)
!2459 = !DILocation(line: 915, column: 20, scope: !2458)
!2460 = !DILocation(line: 916, column: 17, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !144, line: 916, column: 13)
!2462 = !DILocation(line: 916, column: 13, scope: !2458)
!2463 = !DILocation(line: 917, column: 11, scope: !2461)
!2464 = !DILocation(line: 0, scope: !2302, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 918, column: 27, scope: !2458)
!2466 = !DILocation(line: 218, column: 10, scope: !2302, inlinedAt: !2465)
!2467 = !DILocation(line: 918, column: 19, scope: !2458)
!2468 = !DILocation(line: 919, column: 69, scope: !2458)
!2469 = !DILocation(line: 921, column: 44, scope: !2458)
!2470 = !DILocation(line: 922, column: 44, scope: !2458)
!2471 = !DILocation(line: 919, column: 9, scope: !2458)
!2472 = !DILocation(line: 923, column: 7, scope: !2458)
!2473 = !DILocation(line: 925, column: 11, scope: !2401)
!2474 = !DILocation(line: 926, column: 5, scope: !2401)
!2475 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !144, file: !144, line: 937, type: !2476, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!25, !18, !6, !69}
!2478 = !{!2479, !2480, !2481}
!2479 = !DILocalVariable(name: "n", arg: 1, scope: !2475, file: !144, line: 937, type: !18)
!2480 = !DILocalVariable(name: "arg", arg: 2, scope: !2475, file: !144, line: 937, type: !6)
!2481 = !DILocalVariable(name: "argsize", arg: 3, scope: !2475, file: !144, line: 937, type: !69)
!2482 = !DILocation(line: 0, scope: !2475)
!2483 = !DILocation(line: 939, column: 10, scope: !2475)
!2484 = !DILocation(line: 939, column: 3, scope: !2475)
!2485 = distinct !DISubprogram(name: "quotearg", scope: !144, file: !144, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2486)
!2486 = !{!2487}
!2487 = !DILocalVariable(name: "arg", arg: 1, scope: !2485, file: !144, line: 943, type: !6)
!2488 = !DILocation(line: 0, scope: !2485)
!2489 = !DILocation(line: 0, scope: !2379, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 945, column: 10, scope: !2485)
!2491 = !DILocation(line: 933, column: 10, scope: !2379, inlinedAt: !2490)
!2492 = !DILocation(line: 945, column: 3, scope: !2485)
!2493 = distinct !DISubprogram(name: "quotearg_mem", scope: !144, file: !144, line: 949, type: !2494, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!25, !6, !69}
!2496 = !{!2497, !2498}
!2497 = !DILocalVariable(name: "arg", arg: 1, scope: !2493, file: !144, line: 949, type: !6)
!2498 = !DILocalVariable(name: "argsize", arg: 2, scope: !2493, file: !144, line: 949, type: !69)
!2499 = !DILocation(line: 0, scope: !2493)
!2500 = !DILocation(line: 0, scope: !2475, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 951, column: 10, scope: !2493)
!2502 = !DILocation(line: 939, column: 10, scope: !2475, inlinedAt: !2501)
!2503 = !DILocation(line: 951, column: 3, scope: !2493)
!2504 = distinct !DISubprogram(name: "quotearg_n_style", scope: !144, file: !144, line: 955, type: !2505, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!25, !18, !146, !6}
!2507 = !{!2508, !2509, !2510, !2511}
!2508 = !DILocalVariable(name: "n", arg: 1, scope: !2504, file: !144, line: 955, type: !18)
!2509 = !DILocalVariable(name: "s", arg: 2, scope: !2504, file: !144, line: 955, type: !146)
!2510 = !DILocalVariable(name: "arg", arg: 3, scope: !2504, file: !144, line: 955, type: !6)
!2511 = !DILocalVariable(name: "o", scope: !2504, file: !144, line: 957, type: !192)
!2512 = !DILocation(line: 0, scope: !2504)
!2513 = !DILocation(line: 957, column: 3, scope: !2504)
!2514 = !DILocation(line: 957, column: 32, scope: !2504)
!2515 = !DILocalVariable(name: "style", arg: 1, scope: !2516, file: !144, line: 193, type: !146)
!2516 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !144, file: !144, line: 193, type: !2517, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!193, !146}
!2519 = !{!2515, !2520}
!2520 = !DILocalVariable(name: "o", scope: !2516, file: !144, line: 195, type: !193)
!2521 = !DILocation(line: 0, scope: !2516, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 957, column: 36, scope: !2504)
!2523 = !DILocation(line: 195, column: 26, scope: !2516, inlinedAt: !2522)
!2524 = !{!2525}
!2525 = distinct !{!2525, !2526, !"quoting_options_from_style: argument 0"}
!2526 = distinct !{!2526, !"quoting_options_from_style"}
!2527 = !DILocation(line: 196, column: 13, scope: !2528, inlinedAt: !2522)
!2528 = distinct !DILexicalBlock(scope: !2516, file: !144, line: 196, column: 7)
!2529 = !DILocation(line: 196, column: 7, scope: !2516, inlinedAt: !2522)
!2530 = !DILocation(line: 197, column: 5, scope: !2528, inlinedAt: !2522)
!2531 = !DILocation(line: 198, column: 5, scope: !2516, inlinedAt: !2522)
!2532 = !DILocation(line: 198, column: 11, scope: !2516, inlinedAt: !2522)
!2533 = !DILocation(line: 958, column: 10, scope: !2504)
!2534 = !DILocation(line: 959, column: 1, scope: !2504)
!2535 = !DILocation(line: 958, column: 3, scope: !2504)
!2536 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !144, file: !144, line: 962, type: !2537, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!25, !18, !146, !6, !69}
!2539 = !{!2540, !2541, !2542, !2543, !2544}
!2540 = !DILocalVariable(name: "n", arg: 1, scope: !2536, file: !144, line: 962, type: !18)
!2541 = !DILocalVariable(name: "s", arg: 2, scope: !2536, file: !144, line: 962, type: !146)
!2542 = !DILocalVariable(name: "arg", arg: 3, scope: !2536, file: !144, line: 963, type: !6)
!2543 = !DILocalVariable(name: "argsize", arg: 4, scope: !2536, file: !144, line: 963, type: !69)
!2544 = !DILocalVariable(name: "o", scope: !2536, file: !144, line: 965, type: !192)
!2545 = !DILocation(line: 0, scope: !2536)
!2546 = !DILocation(line: 965, column: 3, scope: !2536)
!2547 = !DILocation(line: 965, column: 32, scope: !2536)
!2548 = !DILocation(line: 0, scope: !2516, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 965, column: 36, scope: !2536)
!2550 = !DILocation(line: 195, column: 26, scope: !2516, inlinedAt: !2549)
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"quoting_options_from_style: argument 0"}
!2553 = distinct !{!2553, !"quoting_options_from_style"}
!2554 = !DILocation(line: 196, column: 13, scope: !2528, inlinedAt: !2549)
!2555 = !DILocation(line: 196, column: 7, scope: !2516, inlinedAt: !2549)
!2556 = !DILocation(line: 197, column: 5, scope: !2528, inlinedAt: !2549)
!2557 = !DILocation(line: 198, column: 5, scope: !2516, inlinedAt: !2549)
!2558 = !DILocation(line: 198, column: 11, scope: !2516, inlinedAt: !2549)
!2559 = !DILocation(line: 966, column: 10, scope: !2536)
!2560 = !DILocation(line: 967, column: 1, scope: !2536)
!2561 = !DILocation(line: 966, column: 3, scope: !2536)
!2562 = distinct !DISubprogram(name: "quotearg_style", scope: !144, file: !144, line: 970, type: !2563, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!25, !146, !6}
!2565 = !{!2566, !2567}
!2566 = !DILocalVariable(name: "s", arg: 1, scope: !2562, file: !144, line: 970, type: !146)
!2567 = !DILocalVariable(name: "arg", arg: 2, scope: !2562, file: !144, line: 970, type: !6)
!2568 = !DILocation(line: 195, column: 26, scope: !2516, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 957, column: 36, scope: !2504, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 972, column: 10, scope: !2562)
!2571 = !DILocation(line: 957, column: 32, scope: !2504, inlinedAt: !2570)
!2572 = !DILocation(line: 0, scope: !2562)
!2573 = !DILocation(line: 0, scope: !2504, inlinedAt: !2570)
!2574 = !DILocation(line: 957, column: 3, scope: !2504, inlinedAt: !2570)
!2575 = !DILocation(line: 0, scope: !2516, inlinedAt: !2569)
!2576 = !{!2577}
!2577 = distinct !{!2577, !2578, !"quoting_options_from_style: argument 0"}
!2578 = distinct !{!2578, !"quoting_options_from_style"}
!2579 = !DILocation(line: 196, column: 13, scope: !2528, inlinedAt: !2569)
!2580 = !DILocation(line: 196, column: 7, scope: !2516, inlinedAt: !2569)
!2581 = !DILocation(line: 197, column: 5, scope: !2528, inlinedAt: !2569)
!2582 = !DILocation(line: 198, column: 5, scope: !2516, inlinedAt: !2569)
!2583 = !DILocation(line: 198, column: 11, scope: !2516, inlinedAt: !2569)
!2584 = !DILocation(line: 958, column: 10, scope: !2504, inlinedAt: !2570)
!2585 = !DILocation(line: 959, column: 1, scope: !2504, inlinedAt: !2570)
!2586 = !DILocation(line: 972, column: 3, scope: !2562)
!2587 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !144, file: !144, line: 976, type: !2588, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!25, !146, !6, !69}
!2590 = !{!2591, !2592, !2593}
!2591 = !DILocalVariable(name: "s", arg: 1, scope: !2587, file: !144, line: 976, type: !146)
!2592 = !DILocalVariable(name: "arg", arg: 2, scope: !2587, file: !144, line: 976, type: !6)
!2593 = !DILocalVariable(name: "argsize", arg: 3, scope: !2587, file: !144, line: 976, type: !69)
!2594 = !DILocation(line: 195, column: 26, scope: !2516, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 965, column: 36, scope: !2536, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 978, column: 10, scope: !2587)
!2597 = !DILocation(line: 965, column: 32, scope: !2536, inlinedAt: !2596)
!2598 = !DILocation(line: 0, scope: !2587)
!2599 = !DILocation(line: 0, scope: !2536, inlinedAt: !2596)
!2600 = !DILocation(line: 965, column: 3, scope: !2536, inlinedAt: !2596)
!2601 = !DILocation(line: 0, scope: !2516, inlinedAt: !2595)
!2602 = !{!2603}
!2603 = distinct !{!2603, !2604, !"quoting_options_from_style: argument 0"}
!2604 = distinct !{!2604, !"quoting_options_from_style"}
!2605 = !DILocation(line: 196, column: 13, scope: !2528, inlinedAt: !2595)
!2606 = !DILocation(line: 196, column: 7, scope: !2516, inlinedAt: !2595)
!2607 = !DILocation(line: 197, column: 5, scope: !2528, inlinedAt: !2595)
!2608 = !DILocation(line: 198, column: 5, scope: !2516, inlinedAt: !2595)
!2609 = !DILocation(line: 198, column: 11, scope: !2516, inlinedAt: !2595)
!2610 = !DILocation(line: 966, column: 10, scope: !2536, inlinedAt: !2596)
!2611 = !DILocation(line: 967, column: 1, scope: !2536, inlinedAt: !2596)
!2612 = !DILocation(line: 978, column: 3, scope: !2587)
!2613 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !144, file: !144, line: 982, type: !2614, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!25, !6, !69, !8}
!2616 = !{!2617, !2618, !2619, !2620}
!2617 = !DILocalVariable(name: "arg", arg: 1, scope: !2613, file: !144, line: 982, type: !6)
!2618 = !DILocalVariable(name: "argsize", arg: 2, scope: !2613, file: !144, line: 982, type: !69)
!2619 = !DILocalVariable(name: "ch", arg: 3, scope: !2613, file: !144, line: 982, type: !8)
!2620 = !DILocalVariable(name: "options", scope: !2613, file: !144, line: 984, type: !193)
!2621 = !DILocation(line: 0, scope: !2613)
!2622 = !DILocation(line: 984, column: 3, scope: !2613)
!2623 = !DILocation(line: 984, column: 26, scope: !2613)
!2624 = !DILocation(line: 985, column: 13, scope: !2613)
!2625 = !{i64 0, i64 4, !1156, i64 4, i64 4, !1356, i64 8, i64 32, !1156, i64 40, i64 8, !1031, i64 48, i64 8, !1031}
!2626 = !DILocation(line: 0, scope: !1450, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 986, column: 3, scope: !2613)
!2628 = !DILocation(line: 156, column: 62, scope: !1450, inlinedAt: !2627)
!2629 = !DILocation(line: 156, column: 57, scope: !1450, inlinedAt: !2627)
!2630 = !DILocation(line: 157, column: 15, scope: !1450, inlinedAt: !2627)
!2631 = !DILocation(line: 158, column: 12, scope: !1450, inlinedAt: !2627)
!2632 = !DILocation(line: 158, column: 15, scope: !1450, inlinedAt: !2627)
!2633 = !DILocation(line: 158, column: 25, scope: !1450, inlinedAt: !2627)
!2634 = !DILocation(line: 159, column: 18, scope: !1450, inlinedAt: !2627)
!2635 = !DILocation(line: 159, column: 23, scope: !1450, inlinedAt: !2627)
!2636 = !DILocation(line: 159, column: 6, scope: !1450, inlinedAt: !2627)
!2637 = !DILocation(line: 987, column: 10, scope: !2613)
!2638 = !DILocation(line: 988, column: 1, scope: !2613)
!2639 = !DILocation(line: 987, column: 3, scope: !2613)
!2640 = distinct !DISubprogram(name: "quotearg_char", scope: !144, file: !144, line: 991, type: !2641, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!25, !6, !8}
!2643 = !{!2644, !2645}
!2644 = !DILocalVariable(name: "arg", arg: 1, scope: !2640, file: !144, line: 991, type: !6)
!2645 = !DILocalVariable(name: "ch", arg: 2, scope: !2640, file: !144, line: 991, type: !8)
!2646 = !DILocation(line: 984, column: 26, scope: !2613, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 993, column: 10, scope: !2640)
!2648 = !DILocation(line: 0, scope: !2640)
!2649 = !DILocation(line: 0, scope: !2613, inlinedAt: !2647)
!2650 = !DILocation(line: 984, column: 3, scope: !2613, inlinedAt: !2647)
!2651 = !DILocation(line: 985, column: 13, scope: !2613, inlinedAt: !2647)
!2652 = !DILocation(line: 0, scope: !1450, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 986, column: 3, scope: !2613, inlinedAt: !2647)
!2654 = !DILocation(line: 156, column: 62, scope: !1450, inlinedAt: !2653)
!2655 = !DILocation(line: 156, column: 57, scope: !1450, inlinedAt: !2653)
!2656 = !DILocation(line: 157, column: 15, scope: !1450, inlinedAt: !2653)
!2657 = !DILocation(line: 158, column: 12, scope: !1450, inlinedAt: !2653)
!2658 = !DILocation(line: 158, column: 15, scope: !1450, inlinedAt: !2653)
!2659 = !DILocation(line: 158, column: 25, scope: !1450, inlinedAt: !2653)
!2660 = !DILocation(line: 159, column: 18, scope: !1450, inlinedAt: !2653)
!2661 = !DILocation(line: 159, column: 23, scope: !1450, inlinedAt: !2653)
!2662 = !DILocation(line: 159, column: 6, scope: !1450, inlinedAt: !2653)
!2663 = !DILocation(line: 987, column: 10, scope: !2613, inlinedAt: !2647)
!2664 = !DILocation(line: 988, column: 1, scope: !2613, inlinedAt: !2647)
!2665 = !DILocation(line: 993, column: 3, scope: !2640)
!2666 = distinct !DISubprogram(name: "quotearg_colon", scope: !144, file: !144, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2667)
!2667 = !{!2668}
!2668 = !DILocalVariable(name: "arg", arg: 1, scope: !2666, file: !144, line: 997, type: !6)
!2669 = !DILocation(line: 984, column: 26, scope: !2613, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 993, column: 10, scope: !2640, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 999, column: 10, scope: !2666)
!2672 = !DILocation(line: 0, scope: !2666)
!2673 = !DILocation(line: 0, scope: !2640, inlinedAt: !2671)
!2674 = !DILocation(line: 0, scope: !2613, inlinedAt: !2670)
!2675 = !DILocation(line: 984, column: 3, scope: !2613, inlinedAt: !2670)
!2676 = !DILocation(line: 985, column: 13, scope: !2613, inlinedAt: !2670)
!2677 = !DILocation(line: 0, scope: !1450, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 986, column: 3, scope: !2613, inlinedAt: !2670)
!2679 = !DILocation(line: 156, column: 57, scope: !1450, inlinedAt: !2678)
!2680 = !DILocation(line: 158, column: 12, scope: !1450, inlinedAt: !2678)
!2681 = !DILocation(line: 159, column: 6, scope: !1450, inlinedAt: !2678)
!2682 = !DILocation(line: 987, column: 10, scope: !2613, inlinedAt: !2670)
!2683 = !DILocation(line: 988, column: 1, scope: !2613, inlinedAt: !2670)
!2684 = !DILocation(line: 999, column: 3, scope: !2666)
!2685 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !144, file: !144, line: 1003, type: !2494, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2686)
!2686 = !{!2687, !2688}
!2687 = !DILocalVariable(name: "arg", arg: 1, scope: !2685, file: !144, line: 1003, type: !6)
!2688 = !DILocalVariable(name: "argsize", arg: 2, scope: !2685, file: !144, line: 1003, type: !69)
!2689 = !DILocation(line: 984, column: 26, scope: !2613, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1005, column: 10, scope: !2685)
!2691 = !DILocation(line: 0, scope: !2685)
!2692 = !DILocation(line: 0, scope: !2613, inlinedAt: !2690)
!2693 = !DILocation(line: 984, column: 3, scope: !2613, inlinedAt: !2690)
!2694 = !DILocation(line: 985, column: 13, scope: !2613, inlinedAt: !2690)
!2695 = !DILocation(line: 0, scope: !1450, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 986, column: 3, scope: !2613, inlinedAt: !2690)
!2697 = !DILocation(line: 156, column: 57, scope: !1450, inlinedAt: !2696)
!2698 = !DILocation(line: 158, column: 12, scope: !1450, inlinedAt: !2696)
!2699 = !DILocation(line: 159, column: 6, scope: !1450, inlinedAt: !2696)
!2700 = !DILocation(line: 987, column: 10, scope: !2613, inlinedAt: !2690)
!2701 = !DILocation(line: 988, column: 1, scope: !2613, inlinedAt: !2690)
!2702 = !DILocation(line: 1005, column: 3, scope: !2685)
!2703 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !144, file: !144, line: 1009, type: !2505, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2704)
!2704 = !{!2705, !2706, !2707, !2708}
!2705 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !144, line: 1009, type: !18)
!2706 = !DILocalVariable(name: "s", arg: 2, scope: !2703, file: !144, line: 1009, type: !146)
!2707 = !DILocalVariable(name: "arg", arg: 3, scope: !2703, file: !144, line: 1009, type: !6)
!2708 = !DILocalVariable(name: "options", scope: !2703, file: !144, line: 1011, type: !193)
!2709 = !DILocation(line: 195, column: 26, scope: !2516, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1012, column: 13, scope: !2703)
!2711 = !DILocation(line: 0, scope: !2703)
!2712 = !DILocation(line: 1011, column: 3, scope: !2703)
!2713 = !DILocation(line: 1011, column: 26, scope: !2703)
!2714 = !DILocation(line: 1012, column: 13, scope: !2703)
!2715 = !DILocation(line: 0, scope: !2516, inlinedAt: !2710)
!2716 = !{!2717}
!2717 = distinct !{!2717, !2718, !"quoting_options_from_style: argument 0"}
!2718 = distinct !{!2718, !"quoting_options_from_style"}
!2719 = !DILocation(line: 196, column: 13, scope: !2528, inlinedAt: !2710)
!2720 = !DILocation(line: 196, column: 7, scope: !2516, inlinedAt: !2710)
!2721 = !DILocation(line: 197, column: 5, scope: !2528, inlinedAt: !2710)
!2722 = !DILocation(line: 0, scope: !1450, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1013, column: 3, scope: !2703)
!2724 = !DILocation(line: 156, column: 57, scope: !1450, inlinedAt: !2723)
!2725 = !DILocation(line: 158, column: 12, scope: !1450, inlinedAt: !2723)
!2726 = !DILocation(line: 159, column: 6, scope: !1450, inlinedAt: !2723)
!2727 = !DILocation(line: 1014, column: 10, scope: !2703)
!2728 = !DILocation(line: 1015, column: 1, scope: !2703)
!2729 = !DILocation(line: 1014, column: 3, scope: !2703)
!2730 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !144, file: !144, line: 1018, type: !2731, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!25, !18, !6, !6, !6}
!2733 = !{!2734, !2735, !2736, !2737}
!2734 = !DILocalVariable(name: "n", arg: 1, scope: !2730, file: !144, line: 1018, type: !18)
!2735 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2730, file: !144, line: 1018, type: !6)
!2736 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2730, file: !144, line: 1019, type: !6)
!2737 = !DILocalVariable(name: "arg", arg: 4, scope: !2730, file: !144, line: 1019, type: !6)
!2738 = !DILocalVariable(name: "o", scope: !2739, file: !144, line: 1030, type: !193)
!2739 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !144, file: !144, line: 1026, type: !2740, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!25, !18, !6, !6, !6, !69}
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2738}
!2743 = !DILocalVariable(name: "n", arg: 1, scope: !2739, file: !144, line: 1026, type: !18)
!2744 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2739, file: !144, line: 1026, type: !6)
!2745 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2739, file: !144, line: 1027, type: !6)
!2746 = !DILocalVariable(name: "arg", arg: 4, scope: !2739, file: !144, line: 1028, type: !6)
!2747 = !DILocalVariable(name: "argsize", arg: 5, scope: !2739, file: !144, line: 1028, type: !69)
!2748 = !DILocation(line: 1030, column: 26, scope: !2739, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1021, column: 10, scope: !2730)
!2750 = !DILocation(line: 0, scope: !2730)
!2751 = !DILocation(line: 0, scope: !2739, inlinedAt: !2749)
!2752 = !DILocation(line: 1030, column: 3, scope: !2739, inlinedAt: !2749)
!2753 = !DILocation(line: 1030, column: 30, scope: !2739, inlinedAt: !2749)
!2754 = !DILocation(line: 0, scope: !1490, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 1031, column: 3, scope: !2739, inlinedAt: !2749)
!2756 = !DILocation(line: 184, column: 6, scope: !1490, inlinedAt: !2755)
!2757 = !DILocation(line: 184, column: 12, scope: !1490, inlinedAt: !2755)
!2758 = !DILocation(line: 185, column: 8, scope: !1504, inlinedAt: !2755)
!2759 = !DILocation(line: 185, column: 23, scope: !1504, inlinedAt: !2755)
!2760 = !DILocation(line: 185, column: 19, scope: !1504, inlinedAt: !2755)
!2761 = !DILocation(line: 186, column: 5, scope: !1504, inlinedAt: !2755)
!2762 = !DILocation(line: 187, column: 6, scope: !1490, inlinedAt: !2755)
!2763 = !DILocation(line: 187, column: 17, scope: !1490, inlinedAt: !2755)
!2764 = !DILocation(line: 188, column: 6, scope: !1490, inlinedAt: !2755)
!2765 = !DILocation(line: 188, column: 18, scope: !1490, inlinedAt: !2755)
!2766 = !DILocation(line: 1032, column: 10, scope: !2739, inlinedAt: !2749)
!2767 = !DILocation(line: 1033, column: 1, scope: !2739, inlinedAt: !2749)
!2768 = !DILocation(line: 1021, column: 3, scope: !2730)
!2769 = !DILocation(line: 0, scope: !2739)
!2770 = !DILocation(line: 1030, column: 3, scope: !2739)
!2771 = !DILocation(line: 1030, column: 26, scope: !2739)
!2772 = !DILocation(line: 1030, column: 30, scope: !2739)
!2773 = !DILocation(line: 0, scope: !1490, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 1031, column: 3, scope: !2739)
!2775 = !DILocation(line: 184, column: 6, scope: !1490, inlinedAt: !2774)
!2776 = !DILocation(line: 184, column: 12, scope: !1490, inlinedAt: !2774)
!2777 = !DILocation(line: 185, column: 8, scope: !1504, inlinedAt: !2774)
!2778 = !DILocation(line: 185, column: 23, scope: !1504, inlinedAt: !2774)
!2779 = !DILocation(line: 185, column: 19, scope: !1504, inlinedAt: !2774)
!2780 = !DILocation(line: 186, column: 5, scope: !1504, inlinedAt: !2774)
!2781 = !DILocation(line: 187, column: 6, scope: !1490, inlinedAt: !2774)
!2782 = !DILocation(line: 187, column: 17, scope: !1490, inlinedAt: !2774)
!2783 = !DILocation(line: 188, column: 6, scope: !1490, inlinedAt: !2774)
!2784 = !DILocation(line: 188, column: 18, scope: !1490, inlinedAt: !2774)
!2785 = !DILocation(line: 1032, column: 10, scope: !2739)
!2786 = !DILocation(line: 1033, column: 1, scope: !2739)
!2787 = !DILocation(line: 1032, column: 3, scope: !2739)
!2788 = distinct !DISubprogram(name: "quotearg_custom", scope: !144, file: !144, line: 1036, type: !2789, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!25, !6, !6, !6}
!2791 = !{!2792, !2793, !2794}
!2792 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2788, file: !144, line: 1036, type: !6)
!2793 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2788, file: !144, line: 1036, type: !6)
!2794 = !DILocalVariable(name: "arg", arg: 3, scope: !2788, file: !144, line: 1037, type: !6)
!2795 = !DILocation(line: 1030, column: 26, scope: !2739, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 1021, column: 10, scope: !2730, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1039, column: 10, scope: !2788)
!2798 = !DILocation(line: 0, scope: !2788)
!2799 = !DILocation(line: 0, scope: !2730, inlinedAt: !2797)
!2800 = !DILocation(line: 0, scope: !2739, inlinedAt: !2796)
!2801 = !DILocation(line: 1030, column: 3, scope: !2739, inlinedAt: !2796)
!2802 = !DILocation(line: 1030, column: 30, scope: !2739, inlinedAt: !2796)
!2803 = !DILocation(line: 0, scope: !1490, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 1031, column: 3, scope: !2739, inlinedAt: !2796)
!2805 = !DILocation(line: 184, column: 6, scope: !1490, inlinedAt: !2804)
!2806 = !DILocation(line: 184, column: 12, scope: !1490, inlinedAt: !2804)
!2807 = !DILocation(line: 185, column: 8, scope: !1504, inlinedAt: !2804)
!2808 = !DILocation(line: 185, column: 23, scope: !1504, inlinedAt: !2804)
!2809 = !DILocation(line: 185, column: 19, scope: !1504, inlinedAt: !2804)
!2810 = !DILocation(line: 186, column: 5, scope: !1504, inlinedAt: !2804)
!2811 = !DILocation(line: 187, column: 6, scope: !1490, inlinedAt: !2804)
!2812 = !DILocation(line: 187, column: 17, scope: !1490, inlinedAt: !2804)
!2813 = !DILocation(line: 188, column: 6, scope: !1490, inlinedAt: !2804)
!2814 = !DILocation(line: 188, column: 18, scope: !1490, inlinedAt: !2804)
!2815 = !DILocation(line: 1032, column: 10, scope: !2739, inlinedAt: !2796)
!2816 = !DILocation(line: 1033, column: 1, scope: !2739, inlinedAt: !2796)
!2817 = !DILocation(line: 1039, column: 3, scope: !2788)
!2818 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !144, file: !144, line: 1043, type: !2819, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!25, !6, !6, !6, !69}
!2821 = !{!2822, !2823, !2824, !2825}
!2822 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2818, file: !144, line: 1043, type: !6)
!2823 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2818, file: !144, line: 1043, type: !6)
!2824 = !DILocalVariable(name: "arg", arg: 3, scope: !2818, file: !144, line: 1044, type: !6)
!2825 = !DILocalVariable(name: "argsize", arg: 4, scope: !2818, file: !144, line: 1044, type: !69)
!2826 = !DILocation(line: 1030, column: 26, scope: !2739, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1046, column: 10, scope: !2818)
!2828 = !DILocation(line: 0, scope: !2818)
!2829 = !DILocation(line: 0, scope: !2739, inlinedAt: !2827)
!2830 = !DILocation(line: 1030, column: 3, scope: !2739, inlinedAt: !2827)
!2831 = !DILocation(line: 1030, column: 30, scope: !2739, inlinedAt: !2827)
!2832 = !DILocation(line: 0, scope: !1490, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 1031, column: 3, scope: !2739, inlinedAt: !2827)
!2834 = !DILocation(line: 184, column: 6, scope: !1490, inlinedAt: !2833)
!2835 = !DILocation(line: 184, column: 12, scope: !1490, inlinedAt: !2833)
!2836 = !DILocation(line: 185, column: 8, scope: !1504, inlinedAt: !2833)
!2837 = !DILocation(line: 185, column: 23, scope: !1504, inlinedAt: !2833)
!2838 = !DILocation(line: 185, column: 19, scope: !1504, inlinedAt: !2833)
!2839 = !DILocation(line: 186, column: 5, scope: !1504, inlinedAt: !2833)
!2840 = !DILocation(line: 187, column: 6, scope: !1490, inlinedAt: !2833)
!2841 = !DILocation(line: 187, column: 17, scope: !1490, inlinedAt: !2833)
!2842 = !DILocation(line: 188, column: 6, scope: !1490, inlinedAt: !2833)
!2843 = !DILocation(line: 188, column: 18, scope: !1490, inlinedAt: !2833)
!2844 = !DILocation(line: 1032, column: 10, scope: !2739, inlinedAt: !2827)
!2845 = !DILocation(line: 1033, column: 1, scope: !2739, inlinedAt: !2827)
!2846 = !DILocation(line: 1046, column: 3, scope: !2818)
!2847 = distinct !DISubprogram(name: "quote_n_mem", scope: !144, file: !144, line: 1061, type: !2848, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!6, !18, !6, !69}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "n", arg: 1, scope: !2847, file: !144, line: 1061, type: !18)
!2852 = !DILocalVariable(name: "arg", arg: 2, scope: !2847, file: !144, line: 1061, type: !6)
!2853 = !DILocalVariable(name: "argsize", arg: 3, scope: !2847, file: !144, line: 1061, type: !69)
!2854 = !DILocation(line: 0, scope: !2847)
!2855 = !DILocation(line: 1063, column: 10, scope: !2847)
!2856 = !DILocation(line: 1063, column: 3, scope: !2847)
!2857 = distinct !DISubprogram(name: "quote_mem", scope: !144, file: !144, line: 1067, type: !2858, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!6, !6, !69}
!2860 = !{!2861, !2862}
!2861 = !DILocalVariable(name: "arg", arg: 1, scope: !2857, file: !144, line: 1067, type: !6)
!2862 = !DILocalVariable(name: "argsize", arg: 2, scope: !2857, file: !144, line: 1067, type: !69)
!2863 = !DILocation(line: 0, scope: !2857)
!2864 = !DILocation(line: 0, scope: !2847, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1069, column: 10, scope: !2857)
!2866 = !DILocation(line: 1063, column: 10, scope: !2847, inlinedAt: !2865)
!2867 = !DILocation(line: 1069, column: 3, scope: !2857)
!2868 = distinct !DISubprogram(name: "quote_n", scope: !144, file: !144, line: 1073, type: !2869, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!6, !18, !6}
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "n", arg: 1, scope: !2868, file: !144, line: 1073, type: !18)
!2873 = !DILocalVariable(name: "arg", arg: 2, scope: !2868, file: !144, line: 1073, type: !6)
!2874 = !DILocation(line: 0, scope: !2868)
!2875 = !DILocation(line: 0, scope: !2847, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 1075, column: 10, scope: !2868)
!2877 = !DILocation(line: 1063, column: 10, scope: !2847, inlinedAt: !2876)
!2878 = !DILocation(line: 1075, column: 3, scope: !2868)
!2879 = distinct !DISubprogram(name: "quote", scope: !144, file: !144, line: 1079, type: !2880, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!6, !6}
!2882 = !{!2883}
!2883 = !DILocalVariable(name: "arg", arg: 1, scope: !2879, file: !144, line: 1079, type: !6)
!2884 = !DILocation(line: 0, scope: !2879)
!2885 = !DILocation(line: 0, scope: !2868, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 1081, column: 10, scope: !2879)
!2887 = !DILocation(line: 0, scope: !2847, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 1075, column: 10, scope: !2868, inlinedAt: !2886)
!2889 = !DILocation(line: 1063, column: 10, scope: !2847, inlinedAt: !2888)
!2890 = !DILocation(line: 1081, column: 3, scope: !2879)
!2891 = distinct !DISubprogram(name: "version_etc_arn", scope: !359, file: !359, line: 61, type: !2892, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2898)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !2894, !6, !6, !6, !2897, !69}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2896, line: 7, baseType: !369)
!2896 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904}
!2899 = !DILocalVariable(name: "stream", arg: 1, scope: !2891, file: !359, line: 61, type: !2894)
!2900 = !DILocalVariable(name: "command_name", arg: 2, scope: !2891, file: !359, line: 62, type: !6)
!2901 = !DILocalVariable(name: "package", arg: 3, scope: !2891, file: !359, line: 62, type: !6)
!2902 = !DILocalVariable(name: "version", arg: 4, scope: !2891, file: !359, line: 63, type: !6)
!2903 = !DILocalVariable(name: "authors", arg: 5, scope: !2891, file: !359, line: 64, type: !2897)
!2904 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2891, file: !359, line: 64, type: !69)
!2905 = !DILocation(line: 0, scope: !2891)
!2906 = !DILocation(line: 66, column: 7, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2891, file: !359, line: 66, column: 7)
!2908 = !DILocation(line: 66, column: 7, scope: !2891)
!2909 = !DILocation(line: 67, column: 5, scope: !2907)
!2910 = !DILocation(line: 69, column: 5, scope: !2907)
!2911 = !DILocation(line: 83, column: 3, scope: !2891)
!2912 = !DILocation(line: 85, column: 3, scope: !2891)
!2913 = !DILocation(line: 88, column: 3, scope: !2891)
!2914 = !DILocation(line: 95, column: 3, scope: !2891)
!2915 = !DILocation(line: 97, column: 3, scope: !2891)
!2916 = !DILocation(line: 105, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2891, file: !359, line: 98, column: 5)
!2918 = !DILocation(line: 106, column: 7, scope: !2917)
!2919 = !DILocation(line: 109, column: 7, scope: !2917)
!2920 = !DILocation(line: 110, column: 7, scope: !2917)
!2921 = !DILocation(line: 113, column: 7, scope: !2917)
!2922 = !DILocation(line: 115, column: 7, scope: !2917)
!2923 = !DILocation(line: 120, column: 7, scope: !2917)
!2924 = !DILocation(line: 122, column: 7, scope: !2917)
!2925 = !DILocation(line: 127, column: 7, scope: !2917)
!2926 = !DILocation(line: 129, column: 7, scope: !2917)
!2927 = !DILocation(line: 134, column: 7, scope: !2917)
!2928 = !DILocation(line: 137, column: 7, scope: !2917)
!2929 = !DILocation(line: 142, column: 7, scope: !2917)
!2930 = !DILocation(line: 145, column: 7, scope: !2917)
!2931 = !DILocation(line: 150, column: 7, scope: !2917)
!2932 = !DILocation(line: 154, column: 7, scope: !2917)
!2933 = !DILocation(line: 159, column: 7, scope: !2917)
!2934 = !DILocation(line: 163, column: 7, scope: !2917)
!2935 = !DILocation(line: 170, column: 7, scope: !2917)
!2936 = !DILocation(line: 174, column: 7, scope: !2917)
!2937 = !DILocation(line: 176, column: 1, scope: !2891)
!2938 = distinct !DISubprogram(name: "version_etc_ar", scope: !359, file: !359, line: 183, type: !2939, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !2894, !6, !6, !6, !2897}
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947}
!2942 = !DILocalVariable(name: "stream", arg: 1, scope: !2938, file: !359, line: 183, type: !2894)
!2943 = !DILocalVariable(name: "command_name", arg: 2, scope: !2938, file: !359, line: 184, type: !6)
!2944 = !DILocalVariable(name: "package", arg: 3, scope: !2938, file: !359, line: 184, type: !6)
!2945 = !DILocalVariable(name: "version", arg: 4, scope: !2938, file: !359, line: 185, type: !6)
!2946 = !DILocalVariable(name: "authors", arg: 5, scope: !2938, file: !359, line: 185, type: !2897)
!2947 = !DILocalVariable(name: "n_authors", scope: !2938, file: !359, line: 187, type: !69)
!2948 = !DILocation(line: 0, scope: !2938)
!2949 = !DILocation(line: 189, column: 8, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2938, file: !359, line: 189, column: 3)
!2951 = !DILocation(line: 0, scope: !2950)
!2952 = !DILocation(line: 189, column: 23, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !359, line: 189, column: 3)
!2954 = !DILocation(line: 189, column: 3, scope: !2950)
!2955 = !DILocation(line: 189, column: 52, scope: !2953)
!2956 = distinct !{!2956, !2954, !2957}
!2957 = !DILocation(line: 190, column: 5, scope: !2950)
!2958 = !DILocation(line: 191, column: 3, scope: !2938)
!2959 = !DILocation(line: 192, column: 1, scope: !2938)
!2960 = distinct !DISubprogram(name: "version_etc_va", scope: !359, file: !359, line: 199, type: !2961, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2970)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !2894, !6, !6, !6, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !359, line: 192, size: 192, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2964, file: !359, line: 192, baseType: !147, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2964, file: !359, line: 192, baseType: !147, size: 32, offset: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2964, file: !359, line: 192, baseType: !67, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2964, file: !359, line: 192, baseType: !67, size: 64, offset: 128)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976, !2977}
!2971 = !DILocalVariable(name: "stream", arg: 1, scope: !2960, file: !359, line: 199, type: !2894)
!2972 = !DILocalVariable(name: "command_name", arg: 2, scope: !2960, file: !359, line: 200, type: !6)
!2973 = !DILocalVariable(name: "package", arg: 3, scope: !2960, file: !359, line: 200, type: !6)
!2974 = !DILocalVariable(name: "version", arg: 4, scope: !2960, file: !359, line: 201, type: !6)
!2975 = !DILocalVariable(name: "authors", arg: 5, scope: !2960, file: !359, line: 201, type: !2963)
!2976 = !DILocalVariable(name: "n_authors", scope: !2960, file: !359, line: 203, type: !69)
!2977 = !DILocalVariable(name: "authtab", scope: !2960, file: !359, line: 204, type: !2978)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !260)
!2979 = !DILocation(line: 0, scope: !2960)
!2980 = !DILocation(line: 204, column: 3, scope: !2960)
!2981 = !DILocation(line: 204, column: 15, scope: !2960)
!2982 = !DILocation(line: 0, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !359, line: 206, column: 3)
!2984 = distinct !DILexicalBlock(scope: !2960, file: !359, line: 206, column: 3)
!2985 = !DILocation(line: 208, column: 35, scope: !2983)
!2986 = !DILocation(line: 208, column: 14, scope: !2983)
!2987 = !DILocation(line: 208, column: 33, scope: !2983)
!2988 = !DILocation(line: 208, column: 67, scope: !2983)
!2989 = !DILocation(line: 206, column: 3, scope: !2984)
!2990 = !DILocation(line: 0, scope: !2984)
!2991 = !DILocation(line: 211, column: 3, scope: !2960)
!2992 = !DILocation(line: 213, column: 1, scope: !2960)
!2993 = distinct !DISubprogram(name: "version_etc", scope: !359, file: !359, line: 230, type: !2994, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2894, !6, !6, !6, null}
!2996 = !{!2997, !2998, !2999, !3000, !3001}
!2997 = !DILocalVariable(name: "stream", arg: 1, scope: !2993, file: !359, line: 230, type: !2894)
!2998 = !DILocalVariable(name: "command_name", arg: 2, scope: !2993, file: !359, line: 231, type: !6)
!2999 = !DILocalVariable(name: "package", arg: 3, scope: !2993, file: !359, line: 231, type: !6)
!3000 = !DILocalVariable(name: "version", arg: 4, scope: !2993, file: !359, line: 232, type: !6)
!3001 = !DILocalVariable(name: "authors", scope: !2993, file: !359, line: 234, type: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !105, line: 52, baseType: !3003)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3004, line: 32, baseType: !3005)
!3004 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !359, line: 234, baseType: !3006)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2964, size: 192, elements: !52)
!3007 = !DILocation(line: 0, scope: !2993)
!3008 = !DILocation(line: 234, column: 3, scope: !2993)
!3009 = !DILocation(line: 234, column: 11, scope: !2993)
!3010 = !DILocation(line: 236, column: 3, scope: !2993)
!3011 = !DILocation(line: 237, column: 3, scope: !2993)
!3012 = !DILocation(line: 238, column: 3, scope: !2993)
!3013 = !DILocation(line: 239, column: 1, scope: !2993)
!3014 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !359, file: !359, line: 242, type: !250, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !4)
!3015 = !DILocation(line: 244, column: 3, scope: !3014)
!3016 = !DILocation(line: 249, column: 3, scope: !3014)
!3017 = !DILocation(line: 255, column: 3, scope: !3014)
!3018 = !DILocation(line: 260, column: 3, scope: !3014)
!3019 = !DILocation(line: 262, column: 1, scope: !3014)
!3020 = distinct !DISubprogram(name: "xnmalloc", scope: !182, file: !182, line: 99, type: !3021, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!67, !69, !69}
!3023 = !{!3024, !3025}
!3024 = !DILocalVariable(name: "n", arg: 1, scope: !3020, file: !182, line: 99, type: !69)
!3025 = !DILocalVariable(name: "s", arg: 2, scope: !3020, file: !182, line: 99, type: !69)
!3026 = !DILocation(line: 0, scope: !3020)
!3027 = !DILocation(line: 101, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3020, file: !182, line: 101, column: 7)
!3029 = !DILocation(line: 101, column: 7, scope: !3020)
!3030 = !DILocation(line: 102, column: 5, scope: !3028)
!3031 = !DILocation(line: 103, column: 21, scope: !3020)
!3032 = !DILocalVariable(name: "n", arg: 1, scope: !3033, file: !401, line: 39, type: !69)
!3033 = distinct !DISubprogram(name: "xmalloc", scope: !401, file: !401, line: 39, type: !3034, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!67, !69}
!3036 = !{!3032, !3037}
!3037 = !DILocalVariable(name: "p", scope: !3033, file: !401, line: 41, type: !67)
!3038 = !DILocation(line: 0, scope: !3033, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 103, column: 10, scope: !3020)
!3040 = !DILocation(line: 41, column: 13, scope: !3033, inlinedAt: !3039)
!3041 = !DILocation(line: 42, column: 8, scope: !3042, inlinedAt: !3039)
!3042 = distinct !DILexicalBlock(scope: !3033, file: !401, line: 42, column: 7)
!3043 = !DILocation(line: 42, column: 15, scope: !3042, inlinedAt: !3039)
!3044 = !DILocation(line: 42, column: 10, scope: !3042, inlinedAt: !3039)
!3045 = !DILocation(line: 43, column: 5, scope: !3042, inlinedAt: !3039)
!3046 = !DILocation(line: 103, column: 3, scope: !3020)
!3047 = !DILocation(line: 0, scope: !3033)
!3048 = !DILocation(line: 41, column: 13, scope: !3033)
!3049 = !DILocation(line: 42, column: 8, scope: !3042)
!3050 = !DILocation(line: 42, column: 15, scope: !3042)
!3051 = !DILocation(line: 42, column: 10, scope: !3042)
!3052 = !DILocation(line: 43, column: 5, scope: !3042)
!3053 = !DILocation(line: 44, column: 3, scope: !3033)
!3054 = distinct !DISubprogram(name: "xnrealloc", scope: !182, file: !182, line: 112, type: !3055, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!67, !67, !69, !69}
!3057 = !{!3058, !3059, !3060}
!3058 = !DILocalVariable(name: "p", arg: 1, scope: !3054, file: !182, line: 112, type: !67)
!3059 = !DILocalVariable(name: "n", arg: 2, scope: !3054, file: !182, line: 112, type: !69)
!3060 = !DILocalVariable(name: "s", arg: 3, scope: !3054, file: !182, line: 112, type: !69)
!3061 = !DILocation(line: 0, scope: !3054)
!3062 = !DILocation(line: 114, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3054, file: !182, line: 114, column: 7)
!3064 = !DILocation(line: 114, column: 7, scope: !3054)
!3065 = !DILocation(line: 115, column: 5, scope: !3063)
!3066 = !DILocation(line: 116, column: 25, scope: !3054)
!3067 = !DILocalVariable(name: "p", arg: 1, scope: !3068, file: !401, line: 51, type: !67)
!3068 = distinct !DISubprogram(name: "xrealloc", scope: !401, file: !401, line: 51, type: !3069, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!67, !67, !69}
!3071 = !{!3067, !3072}
!3072 = !DILocalVariable(name: "n", arg: 2, scope: !3068, file: !401, line: 51, type: !69)
!3073 = !DILocation(line: 0, scope: !3068, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 116, column: 10, scope: !3054)
!3075 = !DILocation(line: 53, column: 8, scope: !3076, inlinedAt: !3074)
!3076 = distinct !DILexicalBlock(scope: !3068, file: !401, line: 53, column: 7)
!3077 = !DILocation(line: 53, column: 13, scope: !3076, inlinedAt: !3074)
!3078 = !DILocation(line: 53, column: 10, scope: !3076, inlinedAt: !3074)
!3079 = !DILocation(line: 57, column: 7, scope: !3080, inlinedAt: !3074)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !401, line: 54, column: 5)
!3081 = !DILocation(line: 58, column: 7, scope: !3080, inlinedAt: !3074)
!3082 = !DILocation(line: 61, column: 7, scope: !3068, inlinedAt: !3074)
!3083 = !DILocation(line: 62, column: 8, scope: !3084, inlinedAt: !3074)
!3084 = distinct !DILexicalBlock(scope: !3068, file: !401, line: 62, column: 7)
!3085 = !DILocation(line: 62, column: 13, scope: !3084, inlinedAt: !3074)
!3086 = !DILocation(line: 62, column: 10, scope: !3084, inlinedAt: !3074)
!3087 = !DILocation(line: 63, column: 5, scope: !3084, inlinedAt: !3074)
!3088 = !DILocation(line: 116, column: 3, scope: !3054)
!3089 = !DILocation(line: 0, scope: !3068)
!3090 = !DILocation(line: 53, column: 8, scope: !3076)
!3091 = !DILocation(line: 53, column: 13, scope: !3076)
!3092 = !DILocation(line: 53, column: 10, scope: !3076)
!3093 = !DILocation(line: 57, column: 7, scope: !3080)
!3094 = !DILocation(line: 58, column: 7, scope: !3080)
!3095 = !DILocation(line: 61, column: 7, scope: !3068)
!3096 = !DILocation(line: 62, column: 8, scope: !3084)
!3097 = !DILocation(line: 62, column: 13, scope: !3084)
!3098 = !DILocation(line: 62, column: 10, scope: !3084)
!3099 = !DILocation(line: 63, column: 5, scope: !3084)
!3100 = !DILocation(line: 65, column: 1, scope: !3068)
!3101 = !DILocation(line: 0, scope: !404)
!3102 = !DILocation(line: 176, column: 14, scope: !404)
!3103 = !DILocation(line: 178, column: 9, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !404, file: !182, line: 178, column: 7)
!3105 = !DILocation(line: 178, column: 7, scope: !404)
!3106 = !DILocation(line: 180, column: 13, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !182, line: 180, column: 11)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !182, line: 179, column: 5)
!3109 = !DILocation(line: 180, column: 11, scope: !3108)
!3110 = !DILocation(line: 188, column: 30, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !182, line: 181, column: 9)
!3112 = !DILocation(line: 189, column: 16, scope: !3111)
!3113 = !DILocation(line: 189, column: 13, scope: !3111)
!3114 = !DILocation(line: 190, column: 9, scope: !3111)
!3115 = !DILocation(line: 191, column: 11, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3108, file: !182, line: 191, column: 11)
!3117 = !DILocation(line: 191, column: 11, scope: !3108)
!3118 = !DILocation(line: 206, column: 7, scope: !404)
!3119 = !DILocation(line: 207, column: 25, scope: !404)
!3120 = !DILocation(line: 0, scope: !3068, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 207, column: 10, scope: !404)
!3122 = !DILocation(line: 53, column: 10, scope: !3076, inlinedAt: !3121)
!3123 = !DILocation(line: 192, column: 9, scope: !3116)
!3124 = !DILocation(line: 200, column: 69, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !182, line: 200, column: 11)
!3126 = distinct !DILexicalBlock(scope: !3104, file: !182, line: 195, column: 5)
!3127 = !DILocation(line: 201, column: 11, scope: !3125)
!3128 = !DILocation(line: 200, column: 11, scope: !3126)
!3129 = !DILocation(line: 202, column: 9, scope: !3125)
!3130 = !DILocation(line: 203, column: 14, scope: !3126)
!3131 = !DILocation(line: 203, column: 18, scope: !3126)
!3132 = !DILocation(line: 203, column: 9, scope: !3126)
!3133 = !DILocation(line: 53, column: 8, scope: !3076, inlinedAt: !3121)
!3134 = !DILocation(line: 57, column: 7, scope: !3080, inlinedAt: !3121)
!3135 = !DILocation(line: 58, column: 7, scope: !3080, inlinedAt: !3121)
!3136 = !DILocation(line: 61, column: 7, scope: !3068, inlinedAt: !3121)
!3137 = !DILocation(line: 62, column: 8, scope: !3084, inlinedAt: !3121)
!3138 = !DILocation(line: 62, column: 13, scope: !3084, inlinedAt: !3121)
!3139 = !DILocation(line: 62, column: 10, scope: !3084, inlinedAt: !3121)
!3140 = !DILocation(line: 63, column: 5, scope: !3084, inlinedAt: !3121)
!3141 = !DILocation(line: 207, column: 3, scope: !404)
!3142 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2303, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3143)
!3143 = !{!3144}
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3142, file: !182, line: 216, type: !69)
!3145 = !DILocation(line: 0, scope: !3142)
!3146 = !DILocation(line: 0, scope: !3033, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 218, column: 10, scope: !3142)
!3148 = !DILocation(line: 41, column: 13, scope: !3033, inlinedAt: !3147)
!3149 = !DILocation(line: 42, column: 8, scope: !3042, inlinedAt: !3147)
!3150 = !DILocation(line: 42, column: 15, scope: !3042, inlinedAt: !3147)
!3151 = !DILocation(line: 42, column: 10, scope: !3042, inlinedAt: !3147)
!3152 = !DILocation(line: 43, column: 5, scope: !3042, inlinedAt: !3147)
!3153 = !DILocation(line: 218, column: 3, scope: !3142)
!3154 = distinct !DISubprogram(name: "x2realloc", scope: !401, file: !401, line: 74, type: !3155, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!67, !67, !407}
!3157 = !{!3158, !3159}
!3158 = !DILocalVariable(name: "p", arg: 1, scope: !3154, file: !401, line: 74, type: !67)
!3159 = !DILocalVariable(name: "pn", arg: 2, scope: !3154, file: !401, line: 74, type: !407)
!3160 = !DILocation(line: 0, scope: !3154)
!3161 = !DILocation(line: 0, scope: !404, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 76, column: 10, scope: !3154)
!3163 = !DILocation(line: 176, column: 14, scope: !404, inlinedAt: !3162)
!3164 = !DILocation(line: 178, column: 9, scope: !3104, inlinedAt: !3162)
!3165 = !DILocation(line: 178, column: 7, scope: !404, inlinedAt: !3162)
!3166 = !DILocation(line: 180, column: 13, scope: !3107, inlinedAt: !3162)
!3167 = !DILocation(line: 180, column: 11, scope: !3108, inlinedAt: !3162)
!3168 = !DILocation(line: 191, column: 11, scope: !3116, inlinedAt: !3162)
!3169 = !DILocation(line: 191, column: 11, scope: !3108, inlinedAt: !3162)
!3170 = !DILocation(line: 206, column: 7, scope: !404, inlinedAt: !3162)
!3171 = !DILocation(line: 0, scope: !3068, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 207, column: 10, scope: !404, inlinedAt: !3162)
!3173 = !DILocation(line: 53, column: 10, scope: !3076, inlinedAt: !3172)
!3174 = !DILocation(line: 192, column: 9, scope: !3116, inlinedAt: !3162)
!3175 = !DILocation(line: 201, column: 11, scope: !3125, inlinedAt: !3162)
!3176 = !DILocation(line: 200, column: 11, scope: !3126, inlinedAt: !3162)
!3177 = !DILocation(line: 202, column: 9, scope: !3125, inlinedAt: !3162)
!3178 = !DILocation(line: 203, column: 14, scope: !3126, inlinedAt: !3162)
!3179 = !DILocation(line: 203, column: 18, scope: !3126, inlinedAt: !3162)
!3180 = !DILocation(line: 203, column: 9, scope: !3126, inlinedAt: !3162)
!3181 = !DILocation(line: 53, column: 8, scope: !3076, inlinedAt: !3172)
!3182 = !DILocation(line: 57, column: 7, scope: !3080, inlinedAt: !3172)
!3183 = !DILocation(line: 58, column: 7, scope: !3080, inlinedAt: !3172)
!3184 = !DILocation(line: 61, column: 7, scope: !3068, inlinedAt: !3172)
!3185 = !DILocation(line: 62, column: 8, scope: !3084, inlinedAt: !3172)
!3186 = !DILocation(line: 62, column: 13, scope: !3084, inlinedAt: !3172)
!3187 = !DILocation(line: 62, column: 10, scope: !3084, inlinedAt: !3172)
!3188 = !DILocation(line: 63, column: 5, scope: !3084, inlinedAt: !3172)
!3189 = !DILocation(line: 76, column: 3, scope: !3154)
!3190 = distinct !DISubprogram(name: "xzalloc", scope: !401, file: !401, line: 84, type: !3034, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3191)
!3191 = !{!3192}
!3192 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !401, line: 84, type: !69)
!3193 = !DILocation(line: 0, scope: !3190)
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3195, file: !401, line: 93, type: !69)
!3195 = distinct !DISubprogram(name: "xcalloc", scope: !401, file: !401, line: 93, type: !3021, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3196)
!3196 = !{!3194, !3197, !3198}
!3197 = !DILocalVariable(name: "s", arg: 2, scope: !3195, file: !401, line: 93, type: !69)
!3198 = !DILocalVariable(name: "p", scope: !3195, file: !401, line: 95, type: !67)
!3199 = !DILocation(line: 0, scope: !3195, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 86, column: 10, scope: !3190)
!3201 = !DILocation(line: 100, column: 7, scope: !3202, inlinedAt: !3200)
!3202 = distinct !DILexicalBlock(scope: !3195, file: !401, line: 100, column: 7)
!3203 = !DILocation(line: 101, column: 7, scope: !3202, inlinedAt: !3200)
!3204 = !DILocation(line: 101, column: 18, scope: !3202, inlinedAt: !3200)
!3205 = !DILocation(line: 101, column: 16, scope: !3202, inlinedAt: !3200)
!3206 = !DILocation(line: 100, column: 7, scope: !3195, inlinedAt: !3200)
!3207 = !DILocation(line: 102, column: 5, scope: !3202, inlinedAt: !3200)
!3208 = !DILocation(line: 86, column: 3, scope: !3190)
!3209 = !DILocation(line: 0, scope: !3195)
!3210 = !DILocation(line: 100, column: 7, scope: !3202)
!3211 = !DILocation(line: 101, column: 7, scope: !3202)
!3212 = !DILocation(line: 101, column: 18, scope: !3202)
!3213 = !DILocation(line: 101, column: 16, scope: !3202)
!3214 = !DILocation(line: 100, column: 7, scope: !3195)
!3215 = !DILocation(line: 102, column: 5, scope: !3202)
!3216 = !DILocation(line: 103, column: 3, scope: !3195)
!3217 = distinct !DISubprogram(name: "xmemdup", scope: !401, file: !401, line: 111, type: !3218, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!67, !185, !69}
!3220 = !{!3221, !3222}
!3221 = !DILocalVariable(name: "p", arg: 1, scope: !3217, file: !401, line: 111, type: !185)
!3222 = !DILocalVariable(name: "s", arg: 2, scope: !3217, file: !401, line: 111, type: !69)
!3223 = !DILocation(line: 0, scope: !3217)
!3224 = !DILocation(line: 0, scope: !3033, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 113, column: 18, scope: !3217)
!3226 = !DILocation(line: 41, column: 13, scope: !3033, inlinedAt: !3225)
!3227 = !DILocation(line: 42, column: 8, scope: !3042, inlinedAt: !3225)
!3228 = !DILocation(line: 42, column: 15, scope: !3042, inlinedAt: !3225)
!3229 = !DILocation(line: 42, column: 10, scope: !3042, inlinedAt: !3225)
!3230 = !DILocation(line: 43, column: 5, scope: !3042, inlinedAt: !3225)
!3231 = !DILocalVariable(name: "__dest", arg: 1, scope: !3232, file: !1836, line: 31, type: !3235)
!3232 = distinct !DISubprogram(name: "memcpy", scope: !1836, file: !1836, line: 31, type: !3233, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3237)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!67, !3235, !3236, !69}
!3235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!3237 = !{!3231, !3238, !3239}
!3238 = !DILocalVariable(name: "__src", arg: 2, scope: !3232, file: !1836, line: 31, type: !3236)
!3239 = !DILocalVariable(name: "__len", arg: 3, scope: !3232, file: !1836, line: 31, type: !69)
!3240 = !DILocation(line: 0, scope: !3232, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 113, column: 10, scope: !3217)
!3242 = !DILocation(line: 34, column: 10, scope: !3232, inlinedAt: !3241)
!3243 = !DILocation(line: 113, column: 3, scope: !3217)
!3244 = distinct !DISubprogram(name: "xstrdup", scope: !401, file: !401, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3245)
!3245 = !{!3246}
!3246 = !DILocalVariable(name: "string", arg: 1, scope: !3244, file: !401, line: 119, type: !6)
!3247 = !DILocation(line: 0, scope: !3244)
!3248 = !DILocation(line: 121, column: 27, scope: !3244)
!3249 = !DILocation(line: 121, column: 43, scope: !3244)
!3250 = !DILocation(line: 0, scope: !3217, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 121, column: 10, scope: !3244)
!3252 = !DILocation(line: 0, scope: !3033, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 113, column: 18, scope: !3217, inlinedAt: !3251)
!3254 = !DILocation(line: 41, column: 13, scope: !3033, inlinedAt: !3253)
!3255 = !DILocation(line: 42, column: 8, scope: !3042, inlinedAt: !3253)
!3256 = !DILocation(line: 42, column: 15, scope: !3042, inlinedAt: !3253)
!3257 = !DILocation(line: 42, column: 10, scope: !3042, inlinedAt: !3253)
!3258 = !DILocation(line: 43, column: 5, scope: !3042, inlinedAt: !3253)
!3259 = !DILocation(line: 0, scope: !3232, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 113, column: 10, scope: !3217, inlinedAt: !3251)
!3261 = !DILocation(line: 34, column: 10, scope: !3232, inlinedAt: !3260)
!3262 = !DILocation(line: 121, column: 3, scope: !3244)
!3263 = distinct !DISubprogram(name: "xalloc_die", scope: !422, file: !422, line: 32, type: !250, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !4)
!3264 = !DILocation(line: 34, column: 10, scope: !3263)
!3265 = !DILocation(line: 34, column: 33, scope: !3263)
!3266 = !DILocation(line: 34, column: 3, scope: !3263)
!3267 = !DILocation(line: 40, column: 3, scope: !3263)
!3268 = distinct !DISubprogram(name: "rpl_calloc", scope: !425, file: !425, line: 42, type: !3021, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3269)
!3269 = !{!3270, !3271, !3272, !3273}
!3270 = !DILocalVariable(name: "n", arg: 1, scope: !3268, file: !425, line: 42, type: !69)
!3271 = !DILocalVariable(name: "s", arg: 2, scope: !3268, file: !425, line: 42, type: !69)
!3272 = !DILocalVariable(name: "result", scope: !3268, file: !425, line: 44, type: !67)
!3273 = !DILocalVariable(name: "bytes", scope: !3274, file: !425, line: 56, type: !69)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !425, line: 53, column: 5)
!3275 = distinct !DILexicalBlock(scope: !3268, file: !425, line: 47, column: 7)
!3276 = !DILocation(line: 0, scope: !3268)
!3277 = !DILocation(line: 47, column: 9, scope: !3275)
!3278 = !DILocation(line: 47, column: 19, scope: !3275)
!3279 = !DILocation(line: 47, column: 14, scope: !3275)
!3280 = !DILocation(line: 0, scope: !3274)
!3281 = !DILocation(line: 57, column: 21, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3274, file: !425, line: 57, column: 11)
!3283 = !DILocation(line: 57, column: 11, scope: !3274)
!3284 = !DILocation(line: 59, column: 11, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !425, line: 58, column: 9)
!3286 = !DILocation(line: 59, column: 17, scope: !3285)
!3287 = !DILocation(line: 65, column: 12, scope: !3268)
!3288 = !DILocation(line: 72, column: 3, scope: !3268)
!3289 = !DILocation(line: 73, column: 1, scope: !3268)
!3290 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !428, file: !428, line: 86, type: !3291, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3297)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!69, !3293, !6, !69, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1580, line: 6, baseType: !3296)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !217, line: 21, baseType: !434)
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3303, !3304}
!3298 = !DILocalVariable(name: "pwc", arg: 1, scope: !3290, file: !428, line: 86, type: !3293)
!3299 = !DILocalVariable(name: "s", arg: 2, scope: !3290, file: !428, line: 86, type: !6)
!3300 = !DILocalVariable(name: "n", arg: 3, scope: !3290, file: !428, line: 86, type: !69)
!3301 = !DILocalVariable(name: "ps", arg: 4, scope: !3290, file: !428, line: 86, type: !3294)
!3302 = !DILocalVariable(name: "ret", scope: !3290, file: !428, line: 88, type: !69)
!3303 = !DILocalVariable(name: "wc", scope: !3290, file: !428, line: 89, type: !1584)
!3304 = !DILocalVariable(name: "uc", scope: !3305, file: !428, line: 156, type: !357)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !428, line: 155, column: 5)
!3306 = distinct !DILexicalBlock(scope: !3290, file: !428, line: 154, column: 7)
!3307 = !DILocation(line: 0, scope: !3290)
!3308 = !DILocation(line: 89, column: 3, scope: !3290)
!3309 = !DILocation(line: 105, column: 9, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3290, file: !428, line: 105, column: 7)
!3311 = !DILocation(line: 105, column: 7, scope: !3290)
!3312 = !DILocation(line: 145, column: 9, scope: !3290)
!3313 = !DILocation(line: 154, column: 19, scope: !3306)
!3314 = !DILocation(line: 154, column: 31, scope: !3306)
!3315 = !DILocation(line: 154, column: 26, scope: !3306)
!3316 = !DILocation(line: 154, column: 41, scope: !3306)
!3317 = !DILocation(line: 154, column: 7, scope: !3290)
!3318 = !DILocation(line: 156, column: 26, scope: !3305)
!3319 = !DILocation(line: 0, scope: !3305)
!3320 = !DILocation(line: 157, column: 14, scope: !3305)
!3321 = !DILocation(line: 157, column: 12, scope: !3305)
!3322 = !DILocation(line: 163, column: 1, scope: !3290)
!3323 = distinct !DISubprogram(name: "close_stream", scope: !447, file: !447, line: 56, type: !3324, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3328)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!18, !3326}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2896, line: 7, baseType: !454)
!3328 = !{!3329, !3330, !3332, !3333}
!3329 = !DILocalVariable(name: "stream", arg: 1, scope: !3323, file: !447, line: 56, type: !3326)
!3330 = !DILocalVariable(name: "some_pending", scope: !3323, file: !447, line: 58, type: !3331)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3332 = !DILocalVariable(name: "prev_fail", scope: !3323, file: !447, line: 59, type: !3331)
!3333 = !DILocalVariable(name: "fclose_fail", scope: !3323, file: !447, line: 60, type: !3331)
!3334 = !DILocation(line: 0, scope: !3323)
!3335 = !DILocation(line: 58, column: 30, scope: !3323)
!3336 = !DILocalVariable(name: "__stream", arg: 1, scope: !3337, file: !1279, line: 135, type: !3326)
!3337 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1279, file: !1279, line: 135, type: !3324, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3338)
!3338 = !{!3336}
!3339 = !DILocation(line: 0, scope: !3337, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 59, column: 27, scope: !3323)
!3341 = !DILocation(line: 137, column: 10, scope: !3337, inlinedAt: !3340)
!3342 = !{!1287, !1288, i64 0}
!3343 = !DILocation(line: 59, column: 43, scope: !3323)
!3344 = !DILocation(line: 60, column: 29, scope: !3323)
!3345 = !DILocation(line: 60, column: 45, scope: !3323)
!3346 = !DILocation(line: 70, column: 17, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3323, file: !447, line: 70, column: 7)
!3348 = !DILocation(line: 58, column: 50, scope: !3323)
!3349 = !DILocation(line: 70, column: 33, scope: !3347)
!3350 = !DILocation(line: 70, column: 53, scope: !3347)
!3351 = !DILocation(line: 70, column: 59, scope: !3347)
!3352 = !DILocation(line: 70, column: 7, scope: !3323)
!3353 = !DILocation(line: 72, column: 11, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3347, file: !447, line: 71, column: 5)
!3355 = !DILocation(line: 73, column: 9, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3354, file: !447, line: 72, column: 11)
!3357 = !DILocation(line: 73, column: 15, scope: !3356)
!3358 = !DILocation(line: 78, column: 1, scope: !3323)
!3359 = distinct !DISubprogram(name: "hard_locale", scope: !486, file: !486, line: 27, type: !444, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3360)
!3360 = !{!3361, !3362}
!3361 = !DILocalVariable(name: "category", arg: 1, scope: !3359, file: !486, line: 27, type: !18)
!3362 = !DILocalVariable(name: "locale", scope: !3359, file: !486, line: 29, type: !3363)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3364)
!3364 = !{!3365}
!3365 = !DISubrange(count: 257)
!3366 = !DILocation(line: 0, scope: !3359)
!3367 = !DILocation(line: 29, column: 3, scope: !3359)
!3368 = !DILocation(line: 29, column: 8, scope: !3359)
!3369 = !DILocation(line: 31, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3359, file: !486, line: 31, column: 7)
!3371 = !DILocation(line: 31, column: 7, scope: !3359)
!3372 = !DILocation(line: 34, column: 12, scope: !3359)
!3373 = !DILocation(line: 34, column: 38, scope: !3359)
!3374 = !DILocation(line: 34, column: 41, scope: !3359)
!3375 = !DILocation(line: 34, column: 66, scope: !3359)
!3376 = !DILocation(line: 35, column: 1, scope: !3359)
!3377 = distinct !DISubprogram(name: "locale_charset", scope: !493, file: !493, line: 831, type: !240, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !3378)
!3378 = !{!3379}
!3379 = !DILocalVariable(name: "codeset", scope: !3377, file: !493, line: 833, type: !6)
!3380 = !DILocation(line: 847, column: 13, scope: !3377)
!3381 = !DILocation(line: 0, scope: !3377)
!3382 = !DILocation(line: 911, column: 15, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3377, file: !493, line: 911, column: 7)
!3384 = !DILocation(line: 911, column: 7, scope: !3377)
!3385 = !DILocation(line: 1070, column: 13, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !493, line: 1070, column: 13)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !493, line: 1060, column: 7)
!3388 = distinct !DILexicalBlock(scope: !3377, file: !493, line: 1019, column: 3)
!3389 = !DILocation(line: 1070, column: 24, scope: !3386)
!3390 = !DILocation(line: 1070, column: 13, scope: !3387)
!3391 = !DILocation(line: 1158, column: 3, scope: !3377)
!3392 = distinct !DISubprogram(name: "setlocale_null_r", scope: !886, file: !886, line: 269, type: !3393, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!18, !18, !25, !69}
!3395 = !{!3396, !3397, !3398}
!3396 = !DILocalVariable(name: "category", arg: 1, scope: !3392, file: !886, line: 269, type: !18)
!3397 = !DILocalVariable(name: "buf", arg: 2, scope: !3392, file: !886, line: 269, type: !25)
!3398 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3392, file: !886, line: 269, type: !69)
!3399 = !DILocation(line: 0, scope: !3392)
!3400 = !DILocalVariable(name: "category", arg: 1, scope: !3401, file: !886, line: 91, type: !18)
!3401 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !886, file: !886, line: 91, type: !3393, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !3402)
!3402 = !{!3400, !3403, !3404, !3405, !3406}
!3403 = !DILocalVariable(name: "buf", arg: 2, scope: !3401, file: !886, line: 91, type: !25)
!3404 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3401, file: !886, line: 91, type: !69)
!3405 = !DILocalVariable(name: "result", scope: !3401, file: !886, line: 140, type: !6)
!3406 = !DILocalVariable(name: "length", scope: !3407, file: !886, line: 154, type: !69)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !886, line: 153, column: 5)
!3408 = distinct !DILexicalBlock(scope: !3401, file: !886, line: 142, column: 7)
!3409 = !DILocation(line: 0, scope: !3401, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 274, column: 10, scope: !3392)
!3411 = !DILocalVariable(name: "category", arg: 1, scope: !3412, file: !886, line: 60, type: !18)
!3412 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !886, file: !886, line: 60, type: !3413, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!6, !18}
!3415 = !{!3411, !3416}
!3416 = !DILocalVariable(name: "result", scope: !3412, file: !886, line: 62, type: !6)
!3417 = !DILocation(line: 0, scope: !3412, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 140, column: 24, scope: !3401, inlinedAt: !3410)
!3419 = !DILocation(line: 62, column: 24, scope: !3412, inlinedAt: !3418)
!3420 = !DILocation(line: 142, column: 14, scope: !3408, inlinedAt: !3410)
!3421 = !DILocation(line: 142, column: 7, scope: !3401, inlinedAt: !3410)
!3422 = !DILocation(line: 145, column: 19, scope: !3423, inlinedAt: !3410)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !886, line: 145, column: 11)
!3424 = distinct !DILexicalBlock(scope: !3408, file: !886, line: 143, column: 5)
!3425 = !DILocation(line: 145, column: 11, scope: !3424, inlinedAt: !3410)
!3426 = !DILocation(line: 149, column: 16, scope: !3423, inlinedAt: !3410)
!3427 = !DILocation(line: 149, column: 9, scope: !3423, inlinedAt: !3410)
!3428 = !DILocation(line: 154, column: 23, scope: !3407, inlinedAt: !3410)
!3429 = !DILocation(line: 0, scope: !3407, inlinedAt: !3410)
!3430 = !DILocation(line: 155, column: 18, scope: !3431, inlinedAt: !3410)
!3431 = distinct !DILexicalBlock(scope: !3407, file: !886, line: 155, column: 11)
!3432 = !DILocation(line: 155, column: 11, scope: !3407, inlinedAt: !3410)
!3433 = !DILocation(line: 157, column: 39, scope: !3434, inlinedAt: !3410)
!3434 = distinct !DILexicalBlock(scope: !3431, file: !886, line: 156, column: 9)
!3435 = !DILocalVariable(name: "__dest", arg: 1, scope: !3436, file: !1836, line: 31, type: !3235)
!3436 = distinct !DISubprogram(name: "memcpy", scope: !1836, file: !1836, line: 31, type: !3233, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !3437)
!3437 = !{!3435, !3438, !3439}
!3438 = !DILocalVariable(name: "__src", arg: 2, scope: !3436, file: !1836, line: 31, type: !3236)
!3439 = !DILocalVariable(name: "__len", arg: 3, scope: !3436, file: !1836, line: 31, type: !69)
!3440 = !DILocation(line: 0, scope: !3436, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 157, column: 11, scope: !3434, inlinedAt: !3410)
!3442 = !DILocation(line: 34, column: 10, scope: !3436, inlinedAt: !3441)
!3443 = !DILocation(line: 158, column: 11, scope: !3434, inlinedAt: !3410)
!3444 = !DILocation(line: 162, column: 23, scope: !3445, inlinedAt: !3410)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !886, line: 162, column: 15)
!3446 = distinct !DILexicalBlock(scope: !3431, file: !886, line: 161, column: 9)
!3447 = !DILocation(line: 162, column: 15, scope: !3446, inlinedAt: !3410)
!3448 = !DILocation(line: 167, column: 44, scope: !3449, inlinedAt: !3410)
!3449 = distinct !DILexicalBlock(scope: !3445, file: !886, line: 163, column: 13)
!3450 = !DILocation(line: 0, scope: !3436, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 167, column: 15, scope: !3449, inlinedAt: !3410)
!3452 = !DILocation(line: 34, column: 10, scope: !3436, inlinedAt: !3451)
!3453 = !DILocation(line: 168, column: 15, scope: !3449, inlinedAt: !3410)
!3454 = !DILocation(line: 168, column: 32, scope: !3449, inlinedAt: !3410)
!3455 = !DILocation(line: 169, column: 13, scope: !3449, inlinedAt: !3410)
!3456 = !DILocation(line: 0, scope: !3408, inlinedAt: !3410)
!3457 = !DILocation(line: 274, column: 3, scope: !3392)
!3458 = distinct !DISubprogram(name: "setlocale_null", scope: !886, file: !886, line: 301, type: !3413, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !3459)
!3459 = !{!3460}
!3460 = !DILocalVariable(name: "category", arg: 1, scope: !3458, file: !886, line: 301, type: !18)
!3461 = !DILocation(line: 0, scope: !3458)
!3462 = !DILocation(line: 0, scope: !3412, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 304, column: 10, scope: !3458)
!3464 = !DILocation(line: 62, column: 24, scope: !3412, inlinedAt: !3463)
!3465 = !DILocation(line: 304, column: 3, scope: !3458)
!3466 = distinct !DISubprogram(name: "rpl_fclose", scope: !889, file: !889, line: 58, type: !3467, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !3471)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!18, !3469}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2896, line: 7, baseType: !895)
!3471 = !{!3472, !3473, !3474, !3475}
!3472 = !DILocalVariable(name: "fp", arg: 1, scope: !3466, file: !889, line: 58, type: !3469)
!3473 = !DILocalVariable(name: "saved_errno", scope: !3466, file: !889, line: 60, type: !18)
!3474 = !DILocalVariable(name: "fd", scope: !3466, file: !889, line: 61, type: !18)
!3475 = !DILocalVariable(name: "result", scope: !3466, file: !889, line: 62, type: !18)
!3476 = !DILocation(line: 0, scope: !3466)
!3477 = !DILocation(line: 65, column: 8, scope: !3466)
!3478 = !DILocation(line: 66, column: 10, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3466, file: !889, line: 66, column: 7)
!3480 = !DILocation(line: 66, column: 7, scope: !3466)
!3481 = !DILocation(line: 67, column: 12, scope: !3479)
!3482 = !DILocation(line: 67, column: 5, scope: !3479)
!3483 = !DILocation(line: 72, column: 9, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3466, file: !889, line: 72, column: 7)
!3485 = !DILocation(line: 72, column: 23, scope: !3484)
!3486 = !DILocation(line: 72, column: 33, scope: !3484)
!3487 = !DILocation(line: 72, column: 26, scope: !3484)
!3488 = !DILocation(line: 72, column: 59, scope: !3484)
!3489 = !DILocation(line: 73, column: 7, scope: !3484)
!3490 = !DILocation(line: 73, column: 10, scope: !3484)
!3491 = !DILocation(line: 72, column: 7, scope: !3466)
!3492 = !DILocation(line: 100, column: 12, scope: !3466)
!3493 = !DILocation(line: 105, column: 7, scope: !3466)
!3494 = !DILocation(line: 74, column: 19, scope: !3484)
!3495 = !DILocation(line: 105, column: 19, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3466, file: !889, line: 105, column: 7)
!3497 = !DILocation(line: 107, column: 13, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3496, file: !889, line: 106, column: 5)
!3499 = !DILocation(line: 109, column: 5, scope: !3498)
!3500 = !DILocation(line: 112, column: 1, scope: !3466)
!3501 = distinct !DISubprogram(name: "rpl_fflush", scope: !933, file: !933, line: 129, type: !3502, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !3506)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!18, !3504}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2896, line: 7, baseType: !939)
!3506 = !{!3507}
!3507 = !DILocalVariable(name: "stream", arg: 1, scope: !3501, file: !933, line: 129, type: !3504)
!3508 = !DILocation(line: 0, scope: !3501)
!3509 = !DILocation(line: 150, column: 14, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3501, file: !933, line: 150, column: 7)
!3511 = !DILocation(line: 150, column: 22, scope: !3510)
!3512 = !DILocation(line: 150, column: 27, scope: !3510)
!3513 = !DILocation(line: 150, column: 7, scope: !3501)
!3514 = !DILocation(line: 151, column: 12, scope: !3510)
!3515 = !DILocation(line: 151, column: 5, scope: !3510)
!3516 = !DILocalVariable(name: "fp", arg: 1, scope: !3517, file: !933, line: 41, type: !3504)
!3517 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !933, file: !933, line: 41, type: !3518, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !3504}
!3520 = !{!3516}
!3521 = !DILocation(line: 0, scope: !3517, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 156, column: 3, scope: !3501)
!3523 = !DILocation(line: 43, column: 11, scope: !3524, inlinedAt: !3522)
!3524 = distinct !DILexicalBlock(scope: !3517, file: !933, line: 43, column: 7)
!3525 = !DILocation(line: 43, column: 18, scope: !3524, inlinedAt: !3522)
!3526 = !DILocation(line: 43, column: 7, scope: !3517, inlinedAt: !3522)
!3527 = !DILocation(line: 45, column: 5, scope: !3524, inlinedAt: !3522)
!3528 = !DILocation(line: 158, column: 10, scope: !3501)
!3529 = !DILocation(line: 158, column: 3, scope: !3501)
!3530 = !DILocation(line: 235, column: 1, scope: !3501)
!3531 = distinct !DISubprogram(name: "rpl_fseeko", scope: !974, file: !974, line: 28, type: !3532, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !3537)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!18, !3534, !3536, !18}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2896, line: 7, baseType: !980)
!3536 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !105, line: 63, baseType: !43)
!3537 = !{!3538, !3539, !3540, !3541}
!3538 = !DILocalVariable(name: "fp", arg: 1, scope: !3531, file: !974, line: 28, type: !3534)
!3539 = !DILocalVariable(name: "offset", arg: 2, scope: !3531, file: !974, line: 28, type: !3536)
!3540 = !DILocalVariable(name: "whence", arg: 3, scope: !3531, file: !974, line: 28, type: !18)
!3541 = !DILocalVariable(name: "pos", scope: !3542, file: !974, line: 117, type: !3536)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !974, line: 113, column: 5)
!3543 = distinct !DILexicalBlock(scope: !3531, file: !974, line: 52, column: 7)
!3544 = !DILocation(line: 0, scope: !3531)
!3545 = !DILocation(line: 52, column: 11, scope: !3543)
!3546 = !{!1287, !1032, i64 16}
!3547 = !DILocation(line: 52, column: 31, scope: !3543)
!3548 = !{!1287, !1032, i64 8}
!3549 = !DILocation(line: 52, column: 24, scope: !3543)
!3550 = !DILocation(line: 53, column: 7, scope: !3543)
!3551 = !DILocation(line: 53, column: 14, scope: !3543)
!3552 = !DILocation(line: 53, column: 35, scope: !3543)
!3553 = !{!1287, !1032, i64 32}
!3554 = !DILocation(line: 53, column: 28, scope: !3543)
!3555 = !DILocation(line: 54, column: 7, scope: !3543)
!3556 = !DILocation(line: 54, column: 14, scope: !3543)
!3557 = !{!1287, !1032, i64 72}
!3558 = !DILocation(line: 54, column: 28, scope: !3543)
!3559 = !DILocation(line: 52, column: 7, scope: !3531)
!3560 = !DILocation(line: 117, column: 26, scope: !3542)
!3561 = !DILocation(line: 117, column: 19, scope: !3542)
!3562 = !DILocation(line: 0, scope: !3542)
!3563 = !DILocation(line: 118, column: 15, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3542, file: !974, line: 118, column: 11)
!3565 = !DILocation(line: 118, column: 11, scope: !3542)
!3566 = !DILocation(line: 129, column: 11, scope: !3542)
!3567 = !DILocation(line: 129, column: 18, scope: !3542)
!3568 = !DILocation(line: 130, column: 11, scope: !3542)
!3569 = !DILocation(line: 130, column: 19, scope: !3542)
!3570 = !{!1287, !1289, i64 144}
!3571 = !DILocation(line: 161, column: 7, scope: !3542)
!3572 = !DILocation(line: 163, column: 10, scope: !3531)
!3573 = !DILocation(line: 163, column: 3, scope: !3531)
!3574 = !DILocation(line: 164, column: 1, scope: !3531)
