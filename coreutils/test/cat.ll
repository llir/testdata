; ModuleID = 'coreutils-8.32/src/cat.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Concatenate FILE(s) to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [335 x i8] c"\0A  -A, --show-all           equivalent to -vET\0A  -b, --number-nonblank    number nonempty output lines, overrides -n\0A  -e                       equivalent to -vE\0A  -E, --show-ends          display $ at end of each line\0A  -n, --number             number all output lines\0A  -s, --squeeze-blank      suppress repeated empty output lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [212 x i8] c"  -t                       equivalent to -vT\0A  -T, --show-tabs          display TAB characters as ^I\0A  -u                       (ignored)\0A  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [137 x i8] c"\0AExamples:\0A  %s f - g  Output f's contents, then standard input, then g's contents.\0A  %s        Copy standard input to standard output.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"benstuvAET\00", align 1
@main.long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 69 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.23 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@infile = internal unnamed_addr global i8* null, align 8, !dbg !198
@optind = external local_unnamed_addr global i32, align 4
@input_desc = internal unnamed_addr global i32 0, align 4, !dbg !200
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@newlines2 = internal unnamed_addr global i32 0, align 4, !dbg !202
@.str.47 = private unnamed_addr constant [22 x i8] c"cannot do ioctl on %s\00", align 1
@line_num_start = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), align 8, !dbg !206
@line_buf = internal global [20 x i8] c"                 0\09\00", align 16, !dbg !208
@line_num_print = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 12), align 8, !dbg !210
@.str.29 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"number-nonblank\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"squeeze-blank\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"show-nonprinting\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"show-ends\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"show-tabs\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"show-all\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !280
@.str.48 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !285
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !328
@.str.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.52 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !330
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !336
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !377
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !465
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !469
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !471
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !478
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !485
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !473
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !487
@.str.94 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.95 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.96 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.97 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.98 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.99 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.100 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.101 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.102 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.103 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.104 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.105 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.106 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.107 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.108 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.109 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.112 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.113 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.114 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.115 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.116 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.117 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.118 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !493
@.str.1.129 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1219 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1224, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %0, metadata !1223, metadata !DIExpression()), !dbg !1245
  %3 = icmp eq i32 %0, 0, !dbg !1246
  br i1 %3, label %9, label %4, !dbg !1247

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1248, !tbaa !1250
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1248
  %7 = load i8*, i8** @program_name, align 8, !dbg !1248, !tbaa !1250
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1248
  br label %70, !dbg !1248

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1254
  %11 = load i8*, i8** @program_name, align 8, !dbg !1254, !tbaa !1250
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1254
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1255
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1255, !tbaa !1250
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1255
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #20, !dbg !1256
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1256, !tbaa !1250
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #20, !dbg !1256
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([335 x i8], [335 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1259
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1259, !tbaa !1250
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1259
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1260
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1260, !tbaa !1250
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1260
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1261
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1261, !tbaa !1250
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1261
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1262
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1262, !tbaa !1250
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1262
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.7, i64 0, i64 0), i32 5) #20, !dbg !1263
  %32 = load i8*, i8** @program_name, align 8, !dbg !1263, !tbaa !1250
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* %32, i8* %32) #20, !dbg !1263
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !1228, metadata !DIExpression()) #20, !dbg !1264
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1265
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #20, !dbg !1265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1241
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !1229, metadata !DIExpression()) #20, !dbg !1264
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1230, metadata !DIExpression()) #20, !dbg !1264
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1266
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1230, metadata !DIExpression()) #20, !dbg !1264
  br label %36, !dbg !1267

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1230, metadata !DIExpression()) #20, !dbg !1264
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %37) #22, !dbg !1268
  %40 = icmp eq i32 %39, 0, !dbg !1268
  br i1 %40, label %46, label %41, !dbg !1267

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !1269
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1230, metadata !DIExpression()) #20, !dbg !1264
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !1270
  %44 = load i8*, i8** %43, align 8, !dbg !1270, !tbaa !1271
  %45 = icmp eq i8* %44, null, !dbg !1273
  br i1 %45, label %46, label %36, !dbg !1274, !llvm.loop !1275

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %42, %41 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1230, metadata !DIExpression()) #20, !dbg !1264
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !1230, metadata !DIExpression()) #20, !dbg !1264
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !1276
  %49 = load i8*, i8** %48, align 8, !dbg !1276, !tbaa !1278
  %50 = icmp eq i8* %49, null, !dbg !1279
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %49, !dbg !1280
  call void @llvm.dbg.value(metadata i8* %51, metadata !1229, metadata !DIExpression()) #20, !dbg !1264
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #20, !dbg !1281
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0)) #20, !dbg !1281
  %54 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1282
  call void @llvm.dbg.value(metadata i8* %54, metadata !1237, metadata !DIExpression()) #20, !dbg !1264
  %55 = icmp eq i8* %54, null, !dbg !1283
  br i1 %55, label %63, label %56, !dbg !1285

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #22, !dbg !1286
  %58 = icmp eq i32 %57, 0, !dbg !1286
  br i1 %58, label %63, label %59, !dbg !1287

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.42, i64 0, i64 0), i32 5) #20, !dbg !1288
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1288, !tbaa !1250
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #20, !dbg !1288
  br label %63, !dbg !1290

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i32 5) #20, !dbg !1291
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #20, !dbg !1291
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #20, !dbg !1292
  %67 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !1292
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), !dbg !1292
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #20, !dbg !1292
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #20, !dbg !1293
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #23, !dbg !1294
  unreachable, !dbg !1294
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !41 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !48 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !117 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !213, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8** %1, metadata !214, metadata !DIExpression()), !dbg !1295
  %5 = tail call i32 @getpagesize() #24, !dbg !1296
  %6 = sext i32 %5 to i64, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %6, metadata !217, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 1, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !232, metadata !DIExpression()), !dbg !1295
  %7 = bitcast %struct.stat* %4 to i8*, !dbg !1297
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #20, !dbg !1297
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !233, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !268, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 0, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 0, metadata !274, metadata !DIExpression()), !dbg !1295
  %8 = load i8*, i8** %1, align 8, !dbg !1299, !tbaa !1250
  tail call void @set_program_name(i8* %8) #20, !dbg !1300
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)) #20, !dbg !1301
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #20, !dbg !1302
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #20, !dbg !1303
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1304
  br label %13, !dbg !1305

13:                                               ; preds = %21, %2
  %14 = phi i8 [ 0, %2 ], [ %22, %21 ], !dbg !1306
  %15 = phi i8 [ 0, %2 ], [ %23, %21 ], !dbg !1307
  %16 = phi i8 [ 0, %2 ], [ %24, %21 ], !dbg !1308
  %17 = phi i8 [ 0, %2 ], [ %25, %21 ], !dbg !1309
  %18 = phi i8 [ 0, %2 ], [ %26, %21 ], !dbg !1310
  %19 = phi i8 [ 0, %2 ], [ %27, %21 ], !dbg !1295
  call void @llvm.dbg.value(metadata i8 %19, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %18, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %17, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %16, metadata !270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %15, metadata !269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %14, metadata !268, metadata !DIExpression()), !dbg !1295
  %20 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null) #20, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %20, metadata !222, metadata !DIExpression()), !dbg !1295
  switch i32 %20, label %41 [
    i32 -1, label %42
    i32 98, label %28
    i32 101, label %29
    i32 110, label %30
    i32 115, label %31
    i32 116, label %32
    i32 117, label %21
    i32 118, label %33
    i32 65, label %34
    i32 69, label %35
    i32 84, label %36
    i32 -130, label %37
    i32 -131, label %38
  ], !dbg !1305

21:                                               ; preds = %13, %36, %35, %34, %33, %32, %31, %30, %29, %28
  %22 = phi i8 [ %14, %36 ], [ %14, %35 ], [ %14, %34 ], [ %14, %33 ], [ %14, %32 ], [ %14, %31 ], [ 1, %30 ], [ %14, %29 ], [ 1, %28 ], [ %14, %13 ]
  %23 = phi i8 [ %15, %36 ], [ %15, %35 ], [ %15, %34 ], [ %15, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ %15, %29 ], [ 1, %28 ], [ %15, %13 ]
  %24 = phi i8 [ %16, %36 ], [ %16, %35 ], [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ 1, %31 ], [ %16, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %13 ]
  %25 = phi i8 [ %17, %36 ], [ 1, %35 ], [ 1, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ 1, %29 ], [ %17, %28 ], [ %17, %13 ]
  %26 = phi i8 [ %18, %36 ], [ %18, %35 ], [ 1, %34 ], [ 1, %33 ], [ 1, %32 ], [ %18, %31 ], [ %18, %30 ], [ 1, %29 ], [ %18, %28 ], [ %18, %13 ]
  %27 = phi i8 [ 1, %36 ], [ %19, %35 ], [ 1, %34 ], [ %19, %33 ], [ 1, %32 ], [ %19, %31 ], [ %19, %30 ], [ %19, %29 ], [ %19, %28 ], [ %19, %13 ]
  br label %13, !dbg !1295, !llvm.loop !1312

28:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !268, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 1, metadata !269, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1314

29:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 1, metadata !272, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1317

30:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !268, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1318

31:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !270, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1319

32:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 1, metadata !272, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1320

33:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !272, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1321

34:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 1, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 1, metadata !273, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1322

35:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !271, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1323

36:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !273, metadata !DIExpression()), !dbg !1295
  br label %21, !dbg !1324

37:                                               ; preds = %13
  tail call void @usage(i32 0) #25, !dbg !1325
  unreachable, !dbg !1325

38:                                               ; preds = %13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1326, !tbaa !1250
  %40 = load i8*, i8** @Version, align 8, !dbg !1326, !tbaa !1250
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* null) #20, !dbg !1326
  tail call void @exit(i32 0) #23, !dbg !1326
  unreachable, !dbg !1326

41:                                               ; preds = %13
  tail call void @usage(i32 1) #25, !dbg !1327
  unreachable, !dbg !1327

42:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %14, metadata !268, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %15, metadata !269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %16, metadata !270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %17, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %18, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %19, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %14, metadata !268, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %15, metadata !269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %16, metadata !270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %17, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %18, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %19, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %14, metadata !268, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %15, metadata !269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %16, metadata !270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %17, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %18, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %19, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %14, metadata !268, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %15, metadata !269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %16, metadata !270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %17, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %18, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %19, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %14, metadata !268, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %15, metadata !269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %16, metadata !270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %17, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %18, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %19, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %14, metadata !268, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %15, metadata !269, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %16, metadata !270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %17, metadata !271, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %18, metadata !272, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %19, metadata !273, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 1, metadata !1328, metadata !DIExpression()) #20, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1335, metadata !DIExpression()) #20, !dbg !1336
  %43 = call i32 @__fxstat(i32 1, i32 1, %struct.stat* nonnull %4) #20, !dbg !1339
  %44 = icmp slt i32 %43, 0, !dbg !1340
  br i1 %44, label %45, label %49, !dbg !1341

45:                                               ; preds = %42
  %46 = tail call i32* @__errno_location() #24, !dbg !1342
  %47 = load i32, i32* %46, align 4, !dbg !1342, !tbaa !1343
  %48 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 5) #20, !dbg !1342
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* %48) #20, !dbg !1342
  unreachable, !dbg !1342

49:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1345, metadata !DIExpression()), !dbg !1350
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 9, !dbg !1352
  %51 = load i64, i64* %50, align 8, !dbg !1352, !tbaa !1353
  %52 = icmp sgt i64 %51, 0, !dbg !1352
  %53 = icmp ult i64 %51, 2305843009213693953, !dbg !1352
  %54 = and i1 %52, %53, !dbg !1352
  %55 = and i1 %52, %53, !dbg !1352
  %56 = xor i1 %55, true, !dbg !1352
  %57 = icmp slt i64 %51, 131072, !dbg !1352
  %58 = or i1 %57, %56, !dbg !1352
  %59 = select i1 %54, i64 %51, i64 512, !dbg !1352
  %60 = select i1 %58, i64 131072, i64 %59, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %60, metadata !215, metadata !DIExpression()), !dbg !1295
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0, !dbg !1357
  %62 = load i64, i64* %61, align 8, !dbg !1357, !tbaa !1358
  call void @llvm.dbg.value(metadata i64 %62, metadata !224, metadata !DIExpression()), !dbg !1295
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1, !dbg !1359
  %64 = load i64, i64* %63, align 8, !dbg !1359, !tbaa !1360
  call void @llvm.dbg.value(metadata i64 %64, metadata !228, metadata !DIExpression()), !dbg !1295
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !1361
  %66 = load i32, i32* %65, align 8, !dbg !1361, !tbaa !1362
  %67 = and i32 %66, 61440, !dbg !1361
  %68 = icmp eq i32 %67, 32768, !dbg !1361
  call void @llvm.dbg.value(metadata i1 %68, metadata !231, metadata !DIExpression()), !dbg !1295
  %69 = icmp eq i8 %14, 0, !dbg !1363
  call void @llvm.dbg.value(metadata i32 0, metadata !274, metadata !DIExpression()), !dbg !1295
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8** @infile, align 8, !dbg !1365, !tbaa !1250
  %70 = load i32, i32* @optind, align 4, !dbg !1366, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %70, metadata !223, metadata !DIExpression()), !dbg !1295
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !1367
  %72 = or i8 %16, %14, !dbg !1369
  %73 = or i8 %72, %17, !dbg !1370
  %74 = or i8 %73, %18, !dbg !1370
  %75 = or i8 %74, %19, !dbg !1370
  %76 = icmp eq i8 %75, 0, !dbg !1370
  %77 = add nsw i64 %6, 18, !dbg !1372
  %78 = add i64 %77, %60, !dbg !1372
  %79 = icmp eq i8 %18, 0, !dbg !1372
  %80 = icmp ne i8 %19, 0, !dbg !1372
  %81 = icmp ne i8 %15, 0, !dbg !1372
  %82 = icmp eq i8 %17, 0, !dbg !1372
  %83 = icmp eq i8 %16, 0, !dbg !1372
  %84 = or i1 %69, %81, !dbg !1374
  %85 = bitcast i32* %3 to i8*, !dbg !1412
  %86 = xor i1 %80, true, !dbg !1413
  %87 = add nsw i64 %6, -1, !dbg !1418
  %88 = sext i32 %70 to i64, !dbg !1420
  %89 = sext i32 %0 to i64, !dbg !1420
  br label %90, !dbg !1420

90:                                               ; preds = %466, %49
  %91 = phi i64 [ %469, %466 ], [ %88, %49 ], !dbg !1295
  %92 = phi i8 [ %467, %466 ], [ 1, %49 ], !dbg !1295
  %93 = phi i8 [ %468, %466 ], [ 0, %49 ], !dbg !1295
  call void @llvm.dbg.value(metadata i8 %93, metadata !232, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %91, metadata !223, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %92, metadata !220, metadata !DIExpression()), !dbg !1295
  %94 = icmp slt i64 %91, %89, !dbg !1421
  br i1 %94, label %97, label %95, !dbg !1423

95:                                               ; preds = %90
  %96 = load i8*, i8** @infile, align 8, !dbg !1424, !tbaa !1250
  br label %102, !dbg !1423

97:                                               ; preds = %90
  %98 = getelementptr inbounds i8*, i8** %1, i64 %91, !dbg !1426
  %99 = bitcast i8** %98 to i64*, !dbg !1426
  %100 = load i64, i64* %99, align 8, !dbg !1426, !tbaa !1250
  store i64 %100, i64* bitcast (i8** @infile to i64*), align 8, !dbg !1427, !tbaa !1250
  %101 = inttoptr i64 %100 to i8*, !dbg !1428
  br label %102, !dbg !1428

102:                                              ; preds = %95, %97
  %103 = phi i8* [ %96, %95 ], [ %101, %97 ], !dbg !1424
  %104 = call i32 @strcmp(i8* nonnull dereferenceable(1) %103, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #22, !dbg !1424
  %105 = icmp eq i32 %104, 0, !dbg !1424
  br i1 %105, label %106, label %107, !dbg !1429

106:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8 1, metadata !232, metadata !DIExpression()), !dbg !1295
  store i32 0, i32* @input_desc, align 4, !dbg !1430, !tbaa !1343
  br label %115, !dbg !1432

107:                                              ; preds = %102
  %108 = call i32 (i8*, i32, ...) @open(i8* %103, i32 0) #20, !dbg !1433
  store i32 %108, i32* @input_desc, align 4, !dbg !1435, !tbaa !1343
  %109 = icmp slt i32 %108, 0, !dbg !1436
  br i1 %109, label %110, label %115, !dbg !1438

110:                                              ; preds = %107
  %111 = tail call i32* @__errno_location() #24, !dbg !1439
  %112 = load i32, i32* %111, align 4, !dbg !1439, !tbaa !1343
  %113 = load i8*, i8** @infile, align 8, !dbg !1441, !tbaa !1250
  %114 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %113) #20, !dbg !1441
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %114) #20, !dbg !1442
  call void @llvm.dbg.value(metadata i8 0, metadata !220, metadata !DIExpression()), !dbg !1295
  br label %466, !dbg !1443

115:                                              ; preds = %106, %107
  %116 = phi i32 [ 0, %106 ], [ %108, %107 ], !dbg !1444
  %117 = phi i8 [ 1, %106 ], [ %93, %107 ], !dbg !1295
  call void @llvm.dbg.value(metadata i8 %117, metadata !232, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %116, metadata !1328, metadata !DIExpression()) #20, !dbg !1446
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1335, metadata !DIExpression()) #20, !dbg !1446
  %118 = call i32 @__fxstat(i32 1, i32 %116, %struct.stat* nonnull %4) #20, !dbg !1448
  %119 = icmp slt i32 %118, 0, !dbg !1449
  br i1 %119, label %120, label %125, !dbg !1450

120:                                              ; preds = %115
  %121 = tail call i32* @__errno_location() #24, !dbg !1451
  %122 = load i32, i32* %121, align 4, !dbg !1451, !tbaa !1343
  %123 = load i8*, i8** @infile, align 8, !dbg !1453, !tbaa !1250
  %124 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %123) #20, !dbg !1453
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %124) #20, !dbg !1454
  call void @llvm.dbg.value(metadata i8 0, metadata !220, metadata !DIExpression()), !dbg !1295
  br label %452, !dbg !1455

125:                                              ; preds = %115
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1345, metadata !DIExpression()), !dbg !1456
  %126 = load i64, i64* %50, align 8, !dbg !1458, !tbaa !1353
  %127 = icmp sgt i64 %126, 0, !dbg !1458
  %128 = icmp ult i64 %126, 2305843009213693953, !dbg !1458
  %129 = and i1 %127, %128, !dbg !1458
  %130 = and i1 %127, %128, !dbg !1458
  %131 = xor i1 %130, true, !dbg !1458
  %132 = icmp slt i64 %126, 131072, !dbg !1458
  %133 = or i1 %132, %131, !dbg !1458
  %134 = select i1 %129, i64 %126, i64 512, !dbg !1458
  %135 = select i1 %133, i64 131072, i64 %134, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %135, metadata !216, metadata !DIExpression()), !dbg !1295
  %136 = load i32, i32* @input_desc, align 4, !dbg !1459, !tbaa !1343
  call void @fdadvise(i32 %136, i64 0, i64 0, i32 2) #20, !dbg !1460
  %137 = load i64, i64* %61, align 8, !dbg !1461
  %138 = icmp eq i64 %137, %62, !dbg !1462
  %139 = and i1 %68, %138, !dbg !1463
  %140 = load i64, i64* %63, align 8, !dbg !1464
  %141 = icmp eq i64 %140, %64, !dbg !1465
  %142 = and i1 %139, %141, !dbg !1463
  br i1 %142, label %143, label %152, !dbg !1463

143:                                              ; preds = %125
  %144 = load i32, i32* @input_desc, align 4, !dbg !1466, !tbaa !1343
  %145 = call i64 @lseek(i32 %144, i64 0, i32 1) #20, !dbg !1467
  %146 = load i64, i64* %71, align 8, !dbg !1468, !tbaa !1469
  %147 = icmp slt i64 %145, %146, !dbg !1470
  br i1 %147, label %148, label %152, !dbg !1471

148:                                              ; preds = %143
  %149 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 5) #20, !dbg !1472
  %150 = load i8*, i8** @infile, align 8, !dbg !1474, !tbaa !1250
  %151 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %150) #20, !dbg !1474
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %149, i8* %151) #20, !dbg !1475
  call void @llvm.dbg.value(metadata i8 0, metadata !220, metadata !DIExpression()), !dbg !1295
  br label %452, !dbg !1476

152:                                              ; preds = %143, %125
  br i1 %76, label %153, label %179, !dbg !1477

153:                                              ; preds = %152
  %154 = icmp ugt i64 %135, %60, !dbg !1478
  %155 = select i1 %154, i64 %135, i64 %60, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %155, metadata !216, metadata !DIExpression()), !dbg !1295
  %156 = add i64 %87, %155, !dbg !1479
  %157 = call noalias i8* @xmalloc(i64 %156) #20, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %157, metadata !218, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8* %157, metadata !1481, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %6, metadata !1486, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8* %157, metadata !1487, metadata !DIExpression()), !dbg !1489
  %158 = getelementptr inbounds i8, i8* %157, i64 %6, !dbg !1491
  %159 = getelementptr inbounds i8, i8* %158, i64 -1, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %159, metadata !1488, metadata !DIExpression()), !dbg !1489
  %160 = ptrtoint i8* %159 to i64, !dbg !1493
  %161 = urem i64 %160, %6, !dbg !1494
  %162 = sub i64 0, %161, !dbg !1495
  %163 = getelementptr inbounds i8, i8* %159, i64 %162, !dbg !1495
  call void @llvm.dbg.value(metadata i8* %163, metadata !1496, metadata !DIExpression()) #20, !dbg !1506
  call void @llvm.dbg.value(metadata i64 %155, metadata !1501, metadata !DIExpression()) #20, !dbg !1506
  br label %164, !dbg !1508

164:                                              ; preds = %172, %153
  %165 = load i32, i32* @input_desc, align 4, !dbg !1509, !tbaa !1343
  %166 = call i64 @safe_read(i32 %165, i8* nonnull %163, i64 %155) #20, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %166, metadata !1502, metadata !DIExpression()) #20, !dbg !1506
  switch i64 %166, label %172 [
    i64 -1, label %167
    i64 0, label %448
  ], !dbg !1511

167:                                              ; preds = %164
  %168 = tail call i32* @__errno_location() #24, !dbg !1512
  %169 = load i32, i32* %168, align 4, !dbg !1512, !tbaa !1343
  %170 = load i8*, i8** @infile, align 8, !dbg !1515, !tbaa !1250
  %171 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %170) #20, !dbg !1515
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %171) #20, !dbg !1516
  br label %448, !dbg !1517

172:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 %166, metadata !1503, metadata !DIExpression()) #20, !dbg !1518
  %173 = call i64 @full_write(i32 1, i8* nonnull %163, i64 %166) #20, !dbg !1519
  %174 = icmp eq i64 %173, %166, !dbg !1521
  br i1 %174, label %164, label %175, !dbg !1522, !llvm.loop !1523

175:                                              ; preds = %172
  %176 = tail call i32* @__errno_location() #24, !dbg !1525
  %177 = load i32, i32* %176, align 4, !dbg !1525, !tbaa !1343
  %178 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #20, !dbg !1525
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %177, i8* %178) #20, !dbg !1525
  unreachable, !dbg !1525

179:                                              ; preds = %152
  %180 = add i64 %135, %6, !dbg !1526
  %181 = call noalias i8* @xmalloc(i64 %180) #20, !dbg !1527
  call void @llvm.dbg.value(metadata i8* %181, metadata !218, metadata !DIExpression()), !dbg !1295
  %182 = shl nuw i64 %135, 2, !dbg !1528
  %183 = add i64 %78, %182, !dbg !1529
  %184 = call noalias i8* @xmalloc(i64 %183) #20, !dbg !1530
  call void @llvm.dbg.value(metadata i8* %184, metadata !219, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8* %181, metadata !1481, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i64 %6, metadata !1486, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %181, metadata !1487, metadata !DIExpression()), !dbg !1531
  %185 = getelementptr inbounds i8, i8* %181, i64 %6, !dbg !1533
  %186 = getelementptr inbounds i8, i8* %185, i64 -1, !dbg !1534
  call void @llvm.dbg.value(metadata i8* %186, metadata !1488, metadata !DIExpression()), !dbg !1531
  %187 = ptrtoint i8* %186 to i64, !dbg !1535
  %188 = urem i64 %187, %6, !dbg !1536
  %189 = sub i64 0, %188, !dbg !1537
  %190 = getelementptr inbounds i8, i8* %186, i64 %189, !dbg !1537
  call void @llvm.dbg.value(metadata i8* %184, metadata !1481, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %6, metadata !1486, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %184, metadata !1487, metadata !DIExpression()), !dbg !1538
  %191 = getelementptr inbounds i8, i8* %184, i64 %6, !dbg !1540
  %192 = getelementptr inbounds i8, i8* %191, i64 -1, !dbg !1541
  call void @llvm.dbg.value(metadata i8* %192, metadata !1488, metadata !DIExpression()), !dbg !1538
  %193 = ptrtoint i8* %192 to i64, !dbg !1542
  %194 = urem i64 %193, %6, !dbg !1543
  %195 = sub i64 0, %194, !dbg !1544
  %196 = getelementptr inbounds i8, i8* %192, i64 %195, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %190, metadata !1386, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %135, metadata !1387, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %196, metadata !1388, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %60, metadata !1389, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i1 %79, metadata !1390, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i1 %80, metadata !1391, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i1 %69, metadata !1392, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i1 %81, metadata !1393, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i1 %82, metadata !1394, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i1 %83, metadata !1395, metadata !DIExpression()) #20, !dbg !1545
  %197 = load i32, i32* @newlines2, align 4, !dbg !1546, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %197, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 1, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %190, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  %198 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !1547
  call void @llvm.dbg.value(metadata i8* %198, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %196, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %199 = ptrtoint i8* %196 to i64, !dbg !1548
  %200 = getelementptr inbounds i8, i8* %196, i64 %60, !dbg !1549
  br label %201, !dbg !1550

201:                                              ; preds = %340, %179
  %202 = phi i64 [ %199, %179 ], [ %341, %340 ], !dbg !1548
  %203 = phi i8* [ %198, %179 ], [ %342, %340 ], !dbg !1545
  %204 = phi i8* [ %190, %179 ], [ %334, %340 ], !dbg !1551
  %205 = phi i32 [ %197, %179 ], [ %343, %340 ], !dbg !1552
  %206 = phi i8 [ 1, %179 ], [ %336, %340 ], !dbg !1545
  call void @llvm.dbg.value(metadata i8 %206, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %204, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %203, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  %207 = inttoptr i64 %202 to i8*, !dbg !1553
  call void @llvm.dbg.value(metadata i8* %207, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %208 = icmp ugt i8* %200, %207, !dbg !1554
  br i1 %208, label %225, label %209, !dbg !1555

209:                                              ; preds = %201, %217
  %210 = phi i8* [ %218, %217 ], [ %196, %201 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8* %210, metadata !1404, metadata !DIExpression()) #20, !dbg !1556
  %211 = call i64 @full_write(i32 1, i8* %210, i64 %60) #20, !dbg !1557
  %212 = icmp eq i64 %211, %60, !dbg !1560
  br i1 %212, label %217, label %213, !dbg !1561

213:                                              ; preds = %209
  %214 = tail call i32* @__errno_location() #24, !dbg !1562
  %215 = load i32, i32* %214, align 4, !dbg !1562, !tbaa !1343
  %216 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #20, !dbg !1562
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %215, i8* %216) #20, !dbg !1562
  unreachable, !dbg !1562

217:                                              ; preds = %209
  %218 = getelementptr inbounds i8, i8* %210, i64 %60, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %218, metadata !1404, metadata !DIExpression()) #20, !dbg !1556
  call void @llvm.dbg.value(metadata i8* undef, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %219 = ptrtoint i8* %218 to i64, !dbg !1564
  %220 = sub i64 %202, %219, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %220, metadata !1407, metadata !DIExpression()) #20, !dbg !1556
  %221 = icmp ult i64 %220, %60, !dbg !1565
  br i1 %221, label %222, label %209, !dbg !1566, !llvm.loop !1567

222:                                              ; preds = %217
  call void @llvm.dbg.value(metadata i8* %196, metadata !1570, metadata !DIExpression()) #20, !dbg !1578
  call void @llvm.dbg.value(metadata i8* %218, metadata !1576, metadata !DIExpression()) #20, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %220, metadata !1577, metadata !DIExpression()) #20, !dbg !1578
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %196, i8* nonnull align 1 %218, i64 %220, i1 false) #20, !dbg !1580
  %223 = getelementptr inbounds i8, i8* %196, i64 %220, !dbg !1581
  call void @llvm.dbg.value(metadata i8* %223, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %224 = ptrtoint i8* %223 to i64, !dbg !1582
  br label %225, !dbg !1583

225:                                              ; preds = %222, %201
  %226 = phi i8* [ %223, %222 ], [ %207, %201 ]
  %227 = phi i64 [ %224, %222 ], [ %202, %201 ], !dbg !1545
  %228 = icmp ugt i8* %203, %204, !dbg !1584
  br i1 %228, label %229, label %288, !dbg !1585

229:                                              ; preds = %225
  call void @llvm.dbg.value(metadata i8 0, metadata !1408, metadata !DIExpression()) #20, !dbg !1412
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %85) #20, !dbg !1586
  call void @llvm.dbg.value(metadata i32 0, metadata !1410, metadata !DIExpression()) #20, !dbg !1412
  store i32 0, i32* %3, align 4, !dbg !1587, !tbaa !1343
  %230 = and i8 %206, 1, !dbg !1588
  %231 = icmp eq i8 %230, 0, !dbg !1588
  br i1 %231, label %247, label %232, !dbg !1590

232:                                              ; preds = %229
  %233 = load i32, i32* @input_desc, align 4, !dbg !1591, !tbaa !1343
  call void @llvm.dbg.value(metadata i32* %3, metadata !1410, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1412
  %234 = call i32 (i32, i64, ...) @ioctl(i32 %233, i64 21531, i32* nonnull %3) #20, !dbg !1592
  %235 = icmp slt i32 %234, 0, !dbg !1593
  br i1 %235, label %236, label %243, !dbg !1594

236:                                              ; preds = %232
  %237 = tail call i32* @__errno_location() #24, !dbg !1595
  %238 = load i32, i32* %237, align 4, !dbg !1595, !tbaa !1343
  switch i32 %238, label %239 [
    i32 95, label %243
    i32 25, label %243
    i32 22, label %243
    i32 19, label %243
    i32 38, label %243
  ], !dbg !1598

239:                                              ; preds = %236
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  %240 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 5) #20, !dbg !1599
  %241 = load i8*, i8** @infile, align 8, !dbg !1601, !tbaa !1250
  %242 = call i8* @quotearg_style(i32 4, i8* %241) #20, !dbg !1601
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %238, i8* %240, i8* %242) #20, !dbg !1602
  br label %446, !dbg !1603

243:                                              ; preds = %236, %236, %236, %236, %236, %232
  %244 = phi i8 [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ 0, %236 ], [ %206, %232 ]
  %245 = load i32, i32* %3, align 4, !dbg !1604, !tbaa !1343
  call void @llvm.dbg.value(metadata i8 %244, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %245, metadata !1410, metadata !DIExpression()) #20, !dbg !1412
  %246 = icmp eq i32 %245, 0, !dbg !1606
  call void @llvm.dbg.value(metadata i8 undef, metadata !1408, metadata !DIExpression()) #20, !dbg !1412
  br i1 %246, label %247, label %258, !dbg !1607

247:                                              ; preds = %243, %229
  %248 = phi i8 [ %244, %243 ], [ %206, %229 ]
  call void @llvm.dbg.value(metadata i8** undef, metadata !1400, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %196, metadata !1608, metadata !DIExpression()) #20, !dbg !1615
  call void @llvm.dbg.value(metadata i8** undef, metadata !1613, metadata !DIExpression()) #20, !dbg !1615
  %249 = sub i64 %227, %199, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %249, metadata !1614, metadata !DIExpression()) #20, !dbg !1615
  %250 = icmp eq i64 %249, 0, !dbg !1619
  br i1 %250, label %258, label %251, !dbg !1621

251:                                              ; preds = %247
  %252 = call i64 @full_write(i32 1, i8* nonnull %196, i64 %249) #20, !dbg !1622
  %253 = icmp eq i64 %252, %249, !dbg !1625
  br i1 %253, label %258, label %254, !dbg !1626

254:                                              ; preds = %251
  %255 = tail call i32* @__errno_location() #24, !dbg !1627
  %256 = load i32, i32* %255, align 4, !dbg !1627, !tbaa !1343
  %257 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #20, !dbg !1627
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %256, i8* %257) #20, !dbg !1627
  unreachable, !dbg !1627

258:                                              ; preds = %251, %247, %243
  %259 = phi i8 [ %244, %243 ], [ %248, %247 ], [ %248, %251 ]
  %260 = phi i64 [ %227, %243 ], [ %227, %247 ], [ %199, %251 ], !dbg !1548
  %261 = load i32, i32* @input_desc, align 4, !dbg !1628, !tbaa !1343
  %262 = call i64 @safe_read(i32 %261, i8* nonnull %190, i64 %135) #20, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %262, metadata !1401, metadata !DIExpression()) #20, !dbg !1545
  switch i64 %262, label %286 [
    i64 -1, label %263
    i64 0, label %276
  ], !dbg !1630

263:                                              ; preds = %258
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  %264 = tail call i32* @__errno_location() #24, !dbg !1631
  %265 = load i32, i32* %264, align 4, !dbg !1631, !tbaa !1343
  %266 = load i8*, i8** @infile, align 8, !dbg !1634, !tbaa !1250
  %267 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %266) #20, !dbg !1634
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %267) #20, !dbg !1635
  call void @llvm.dbg.value(metadata i8** undef, metadata !1400, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %196, metadata !1608, metadata !DIExpression()) #20, !dbg !1636
  call void @llvm.dbg.value(metadata i8** undef, metadata !1613, metadata !DIExpression()) #20, !dbg !1636
  %268 = sub i64 %260, %199, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %268, metadata !1614, metadata !DIExpression()) #20, !dbg !1636
  %269 = icmp eq i64 %268, 0, !dbg !1639
  br i1 %269, label %446, label %270, !dbg !1640

270:                                              ; preds = %263
  %271 = call i64 @full_write(i32 1, i8* nonnull %196, i64 %268) #20, !dbg !1641
  %272 = icmp eq i64 %271, %268, !dbg !1642
  br i1 %272, label %446, label %273, !dbg !1643

273:                                              ; preds = %270
  %274 = load i32, i32* %264, align 4, !dbg !1644, !tbaa !1343
  %275 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #20, !dbg !1644
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %274, i8* %275) #20, !dbg !1644
  unreachable, !dbg !1644

276:                                              ; preds = %258
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %205, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8** undef, metadata !1400, metadata !DIExpression(DW_OP_deref)) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %196, metadata !1608, metadata !DIExpression()) #20, !dbg !1645
  call void @llvm.dbg.value(metadata i8** undef, metadata !1613, metadata !DIExpression()) #20, !dbg !1645
  %277 = sub i64 %260, %199, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %277, metadata !1614, metadata !DIExpression()) #20, !dbg !1645
  %278 = icmp eq i64 %277, 0, !dbg !1650
  br i1 %278, label %446, label %279, !dbg !1651

279:                                              ; preds = %276
  %280 = call i64 @full_write(i32 1, i8* nonnull %196, i64 %277) #20, !dbg !1652
  %281 = icmp eq i64 %280, %277, !dbg !1653
  br i1 %281, label %446, label %282, !dbg !1654

282:                                              ; preds = %279
  %283 = tail call i32* @__errno_location() #24, !dbg !1655
  %284 = load i32, i32* %283, align 4, !dbg !1655, !tbaa !1343
  %285 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #20, !dbg !1655
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %284, i8* %285) #20, !dbg !1655
  unreachable, !dbg !1655

286:                                              ; preds = %258
  call void @llvm.dbg.value(metadata i8* %190, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  %287 = getelementptr inbounds i8, i8* %190, i64 %262, !dbg !1656
  call void @llvm.dbg.value(metadata i8* %287, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  store i8 10, i8* %287, align 1, !dbg !1657, !tbaa !1658
  call void @llvm.dbg.value(metadata i8 %244, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %287, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %190, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #20, !dbg !1659
  br label %331

288:                                              ; preds = %225
  %289 = add nsw i32 %205, 1, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %289, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  %290 = icmp sgt i32 %205, -1, !dbg !1661
  br i1 %290, label %291, label %322, !dbg !1662

291:                                              ; preds = %288
  %292 = icmp eq i32 %205, 0, !dbg !1663
  %293 = or i1 %83, %292, !dbg !1665
  %294 = select i1 %292, i32 1, i32 2, !dbg !1665
  br i1 %293, label %295, label %331, !dbg !1665

295:                                              ; preds = %291
  call void @llvm.dbg.value(metadata i32 %294, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  br i1 %84, label %322, label %296, !dbg !1666

296:                                              ; preds = %295
  %297 = load i8*, i8** @line_num_start, align 8, !dbg !1667
  br label %298, !dbg !1673

298:                                              ; preds = %303, %296
  %299 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %296 ], [ %304, %303 ], !dbg !1667
  call void @llvm.dbg.value(metadata i8* %299, metadata !1670, metadata !DIExpression()) #20, !dbg !1667
  %300 = load i8, i8* %299, align 1, !dbg !1674, !tbaa !1658
  %301 = add i8 %300, 1, !dbg !1674
  store i8 %301, i8* %299, align 1, !dbg !1674, !tbaa !1658
  %302 = icmp slt i8 %300, 57, !dbg !1677
  br i1 %302, label %317, label %303, !dbg !1678

303:                                              ; preds = %298
  %304 = getelementptr inbounds i8, i8* %299, i64 -1, !dbg !1679
  call void @llvm.dbg.value(metadata i8* %304, metadata !1670, metadata !DIExpression()) #20, !dbg !1667
  store i8 48, i8* %299, align 1, !dbg !1680, !tbaa !1658
  %305 = icmp ult i8* %304, %297, !dbg !1681
  br i1 %305, label %306, label %298, !dbg !1682, !llvm.loop !1683

306:                                              ; preds = %303
  %307 = icmp ugt i8* %297, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1685
  br i1 %307, label %308, label %310, !dbg !1687

308:                                              ; preds = %306
  %309 = getelementptr inbounds i8, i8* %297, i64 -1, !dbg !1688
  store i8* %309, i8** @line_num_start, align 8, !dbg !1688, !tbaa !1250
  store i8 49, i8* %309, align 1, !dbg !1689, !tbaa !1658
  br label %311, !dbg !1690

310:                                              ; preds = %306
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1691, !tbaa !1658
  br label %311

311:                                              ; preds = %310, %308
  %312 = phi i8* [ %297, %310 ], [ %309, %308 ], !dbg !1692
  %313 = load i8*, i8** @line_num_print, align 8, !dbg !1694, !tbaa !1250
  %314 = icmp ult i8* %312, %313, !dbg !1695
  br i1 %314, label %315, label %319, !dbg !1696

315:                                              ; preds = %311
  %316 = getelementptr inbounds i8, i8* %313, i64 -1, !dbg !1697
  store i8* %316, i8** @line_num_print, align 8, !dbg !1697, !tbaa !1250
  br label %319, !dbg !1698

317:                                              ; preds = %298
  %318 = load i8*, i8** @line_num_print, align 8, !dbg !1699, !tbaa !1250
  br label %319, !dbg !1700

319:                                              ; preds = %317, %315, %311
  %320 = phi i8* [ %318, %317 ], [ %313, %311 ], [ %316, %315 ], !dbg !1699
  call void @llvm.dbg.value(metadata i8* %226, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %226, metadata !1701, metadata !DIExpression()) #20, !dbg !1709
  call void @llvm.dbg.value(metadata i8* %320, metadata !1708, metadata !DIExpression()) #20, !dbg !1709
  %321 = call i8* @stpcpy(i8* %226, i8* %320), !dbg !1711
  call void @llvm.dbg.value(metadata i8* %321, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  br label %322, !dbg !1712

322:                                              ; preds = %319, %295, %288
  %323 = phi i8* [ %226, %295 ], [ %321, %319 ], [ %226, %288 ]
  %324 = phi i32 [ %294, %295 ], [ %294, %319 ], [ %289, %288 ], !dbg !1713
  call void @llvm.dbg.value(metadata i32 %324, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  br i1 %82, label %327, label %325, !dbg !1714

325:                                              ; preds = %322
  call void @llvm.dbg.value(metadata i8* %323, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %326 = getelementptr inbounds i8, i8* %323, i64 1, !dbg !1715
  call void @llvm.dbg.value(metadata i8* %326, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 36, i8* %323, align 1, !dbg !1717, !tbaa !1658
  br label %327, !dbg !1718

327:                                              ; preds = %322, %325
  %328 = phi i8* [ %326, %325 ], [ %323, %322 ]
  call void @llvm.dbg.value(metadata i8* %328, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %329 = getelementptr inbounds i8, i8* %328, i64 1, !dbg !1719
  call void @llvm.dbg.value(metadata i8* %329, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %330 = ptrtoint i8* %329 to i64, !dbg !1719
  store i8 10, i8* %328, align 1, !dbg !1720, !tbaa !1658
  br label %331

331:                                              ; preds = %327, %291, %286
  %332 = phi i64 [ %260, %286 ], [ %330, %327 ], [ %227, %291 ], !dbg !1545
  %333 = phi i8* [ %190, %286 ], [ %203, %327 ], [ %203, %291 ]
  %334 = phi i8* [ %287, %286 ], [ %204, %327 ], [ %204, %291 ], !dbg !1551
  %335 = phi i32 [ %205, %286 ], [ %324, %327 ], [ 2, %291 ], !dbg !1545
  %336 = phi i8 [ %259, %286 ], [ %206, %327 ], [ %206, %291 ], !dbg !1545
  %337 = getelementptr inbounds i8, i8* %333, i64 1, !dbg !1721
  %338 = load i8, i8* %333, align 1, !dbg !1721, !tbaa !1658
  call void @llvm.dbg.value(metadata i8 %336, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %335, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 %338, metadata !1396, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %334, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %337, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  %339 = icmp eq i8 %338, 10, !dbg !1722
  br i1 %339, label %340, label %344, !dbg !1723

340:                                              ; preds = %414, %436, %331
  %341 = phi i64 [ %332, %331 ], [ %427, %436 ], [ %378, %414 ]
  %342 = phi i8* [ %337, %331 ], [ %428, %436 ], [ %379, %414 ]
  %343 = phi i32 [ %335, %331 ], [ -1, %436 ], [ -1, %414 ]
  br label %201, !dbg !1545, !llvm.loop !1724

344:                                              ; preds = %331
  call void @llvm.dbg.value(metadata i8* %334, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %335, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 %336, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %334, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %335, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 %336, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %334, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %335, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 %336, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %334, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %335, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 %336, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %334, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %335, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 %336, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %334, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %335, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 %336, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %334, metadata !1399, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %335, metadata !1402, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8 %336, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  %345 = icmp slt i32 %335, 0, !dbg !1727
  %346 = or i1 %69, %345, !dbg !1729
  br i1 %346, label %375, label %347, !dbg !1729

347:                                              ; preds = %344
  %348 = load i8*, i8** @line_num_start, align 8, !dbg !1730
  br label %349, !dbg !1733

349:                                              ; preds = %354, %347
  %350 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %347 ], [ %355, %354 ], !dbg !1730
  call void @llvm.dbg.value(metadata i8* %350, metadata !1670, metadata !DIExpression()) #20, !dbg !1730
  %351 = load i8, i8* %350, align 1, !dbg !1734, !tbaa !1658
  %352 = add i8 %351, 1, !dbg !1734
  store i8 %352, i8* %350, align 1, !dbg !1734, !tbaa !1658
  %353 = icmp slt i8 %351, 57, !dbg !1735
  br i1 %353, label %368, label %354, !dbg !1736

354:                                              ; preds = %349
  %355 = getelementptr inbounds i8, i8* %350, i64 -1, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %355, metadata !1670, metadata !DIExpression()) #20, !dbg !1730
  store i8 48, i8* %350, align 1, !dbg !1738, !tbaa !1658
  %356 = icmp ult i8* %355, %348, !dbg !1739
  br i1 %356, label %357, label %349, !dbg !1740, !llvm.loop !1741

357:                                              ; preds = %354
  %358 = icmp ugt i8* %348, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1743
  br i1 %358, label %359, label %361, !dbg !1744

359:                                              ; preds = %357
  %360 = getelementptr inbounds i8, i8* %348, i64 -1, !dbg !1745
  store i8* %360, i8** @line_num_start, align 8, !dbg !1745, !tbaa !1250
  store i8 49, i8* %360, align 1, !dbg !1746, !tbaa !1658
  br label %362, !dbg !1747

361:                                              ; preds = %357
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1748, !tbaa !1658
  br label %362

362:                                              ; preds = %361, %359
  %363 = phi i8* [ %348, %361 ], [ %360, %359 ], !dbg !1749
  %364 = load i8*, i8** @line_num_print, align 8, !dbg !1750, !tbaa !1250
  %365 = icmp ult i8* %363, %364, !dbg !1751
  br i1 %365, label %366, label %370, !dbg !1752

366:                                              ; preds = %362
  %367 = getelementptr inbounds i8, i8* %364, i64 -1, !dbg !1753
  store i8* %367, i8** @line_num_print, align 8, !dbg !1753, !tbaa !1250
  br label %370, !dbg !1754

368:                                              ; preds = %349
  %369 = load i8*, i8** @line_num_print, align 8, !dbg !1755, !tbaa !1250
  br label %370, !dbg !1756

370:                                              ; preds = %368, %366, %362
  %371 = phi i8* [ %369, %368 ], [ %364, %362 ], [ %367, %366 ], !dbg !1755
  %372 = inttoptr i64 %332 to i8*, !dbg !1756
  call void @llvm.dbg.value(metadata i8* %372, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %372, metadata !1701, metadata !DIExpression()) #20, !dbg !1757
  call void @llvm.dbg.value(metadata i8* %371, metadata !1708, metadata !DIExpression()) #20, !dbg !1757
  %373 = call i8* @stpcpy(i8* %372, i8* %371), !dbg !1759
  call void @llvm.dbg.value(metadata i8* %373, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %374 = ptrtoint i8* %373 to i64, !dbg !1760
  br label %375, !dbg !1761

375:                                              ; preds = %370, %344
  %376 = phi i64 [ %332, %344 ], [ %374, %370 ], !dbg !1545
  br i1 %79, label %426, label %377, !dbg !1762

377:                                              ; preds = %375, %421
  %378 = phi i64 [ %423, %421 ], [ %376, %375 ], !dbg !1545
  %379 = phi i8* [ %424, %421 ], [ %337, %375 ], !dbg !1763
  %380 = phi i8 [ %425, %421 ], [ %338, %375 ], !dbg !1763
  call void @llvm.dbg.value(metadata i8 %380, metadata !1396, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %379, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  %381 = icmp ugt i8 %380, 31, !dbg !1764
  br i1 %381, label %382, label %408, !dbg !1768

382:                                              ; preds = %377
  %383 = icmp ult i8 %380, 127, !dbg !1769
  br i1 %383, label %384, label %387, !dbg !1772

384:                                              ; preds = %382
  %385 = inttoptr i64 %378 to i8*, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %385, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %386 = getelementptr inbounds i8, i8* %385, i64 1, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %386, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 %380, i8* %385, align 1, !dbg !1774, !tbaa !1658
  br label %421, !dbg !1775

387:                                              ; preds = %382
  %388 = icmp eq i8 %380, 127, !dbg !1776
  %389 = inttoptr i64 %378 to i8*, !dbg !1778
  call void @llvm.dbg.value(metadata i8* %389, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %390 = getelementptr inbounds i8, i8* %389, i64 1, !dbg !1778
  call void @llvm.dbg.value(metadata i8* %390, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  br i1 %388, label %391, label %393, !dbg !1779

391:                                              ; preds = %387
  store i8 94, i8* %389, align 1, !dbg !1780, !tbaa !1658
  call void @llvm.dbg.value(metadata i8* %390, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %392 = getelementptr inbounds i8, i8* %389, i64 2, !dbg !1782
  call void @llvm.dbg.value(metadata i8* %392, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 63, i8* %390, align 1, !dbg !1783, !tbaa !1658
  br label %421, !dbg !1784

393:                                              ; preds = %387
  store i8 77, i8* %389, align 1, !dbg !1785, !tbaa !1658
  call void @llvm.dbg.value(metadata i8* %390, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %394 = getelementptr inbounds i8, i8* %389, i64 2, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %394, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 45, i8* %390, align 1, !dbg !1788, !tbaa !1658
  %395 = icmp ugt i8 %380, -97, !dbg !1789
  br i1 %395, label %396, label %404, !dbg !1791

396:                                              ; preds = %393
  %397 = icmp eq i8 %380, -1, !dbg !1792
  br i1 %397, label %401, label %398, !dbg !1795

398:                                              ; preds = %396
  %399 = xor i8 %380, -128, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %394, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %400 = getelementptr inbounds i8, i8* %389, i64 3, !dbg !1797
  call void @llvm.dbg.value(metadata i8* %400, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 %399, i8* %394, align 1, !dbg !1798, !tbaa !1658
  br label %421, !dbg !1799

401:                                              ; preds = %396
  call void @llvm.dbg.value(metadata i8* %394, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %402 = getelementptr inbounds i8, i8* %389, i64 3, !dbg !1800
  call void @llvm.dbg.value(metadata i8* %402, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 94, i8* %394, align 1, !dbg !1802, !tbaa !1658
  call void @llvm.dbg.value(metadata i8* %402, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %403 = getelementptr inbounds i8, i8* %389, i64 4, !dbg !1803
  call void @llvm.dbg.value(metadata i8* %403, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 63, i8* %402, align 1, !dbg !1804, !tbaa !1658
  br label %421

404:                                              ; preds = %393
  call void @llvm.dbg.value(metadata i8* %394, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %405 = getelementptr inbounds i8, i8* %389, i64 3, !dbg !1805
  call void @llvm.dbg.value(metadata i8* %405, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 94, i8* %394, align 1, !dbg !1807, !tbaa !1658
  %406 = add i8 %380, -64, !dbg !1808
  call void @llvm.dbg.value(metadata i8* %405, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %407 = getelementptr inbounds i8, i8* %389, i64 4, !dbg !1809
  call void @llvm.dbg.value(metadata i8* %407, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 %406, i8* %405, align 1, !dbg !1810, !tbaa !1658
  br label %421

408:                                              ; preds = %377
  %409 = icmp ne i8 %380, 9, !dbg !1811
  %410 = or i1 %80, %409, !dbg !1813
  br i1 %410, label %414, label %411, !dbg !1813

411:                                              ; preds = %408
  %412 = inttoptr i64 %378 to i8*, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %412, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %413 = getelementptr inbounds i8, i8* %412, i64 1, !dbg !1814
  call void @llvm.dbg.value(metadata i8* %413, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 9, i8* %412, align 1, !dbg !1815, !tbaa !1658
  br label %421, !dbg !1816

414:                                              ; preds = %408
  %415 = icmp eq i8 %380, 10, !dbg !1817
  br i1 %415, label %340, label %416, !dbg !1819, !llvm.loop !1820

416:                                              ; preds = %414
  %417 = inttoptr i64 %378 to i8*, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %417, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %418 = getelementptr inbounds i8, i8* %417, i64 1, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %418, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 94, i8* %417, align 1, !dbg !1824, !tbaa !1658
  %419 = add nuw nsw i8 %380, 64, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %418, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %420 = getelementptr inbounds i8, i8* %417, i64 2, !dbg !1826
  call void @llvm.dbg.value(metadata i8* %420, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 %419, i8* %418, align 1, !dbg !1827, !tbaa !1658
  br label %421

421:                                              ; preds = %416, %411, %404, %401, %398, %391, %384
  %422 = phi i8* [ %386, %384 ], [ %392, %391 ], [ %403, %401 ], [ %400, %398 ], [ %407, %404 ], [ %420, %416 ], [ %413, %411 ]
  %423 = ptrtoint i8* %422 to i64, !dbg !1828
  %424 = getelementptr inbounds i8, i8* %379, i64 1, !dbg !1829
  call void @llvm.dbg.value(metadata i8* %424, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  %425 = load i8, i8* %379, align 1, !dbg !1830, !tbaa !1658
  call void @llvm.dbg.value(metadata i8 %425, metadata !1396, metadata !DIExpression()) #20, !dbg !1545
  br label %377, !dbg !1831, !llvm.loop !1832

426:                                              ; preds = %375, %441
  %427 = phi i64 [ %443, %441 ], [ %376, %375 ], !dbg !1545
  %428 = phi i8* [ %444, %441 ], [ %337, %375 ], !dbg !1763
  %429 = phi i8 [ %445, %441 ], [ %338, %375 ], !dbg !1763
  call void @llvm.dbg.value(metadata i8 %429, metadata !1396, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %428, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  %430 = icmp ne i8 %429, 9, !dbg !1834
  %431 = or i1 %430, %86, !dbg !1835
  br i1 %431, label %436, label %432, !dbg !1835

432:                                              ; preds = %426
  %433 = inttoptr i64 %427 to i8*, !dbg !1836
  call void @llvm.dbg.value(metadata i8* %433, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %434 = getelementptr inbounds i8, i8* %433, i64 1, !dbg !1836
  call void @llvm.dbg.value(metadata i8* %434, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 94, i8* %433, align 1, !dbg !1838, !tbaa !1658
  call void @llvm.dbg.value(metadata i8* %434, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %435 = getelementptr inbounds i8, i8* %433, i64 2, !dbg !1839
  call void @llvm.dbg.value(metadata i8* %435, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 73, i8* %434, align 1, !dbg !1840, !tbaa !1658
  br label %441, !dbg !1841

436:                                              ; preds = %426
  %437 = icmp eq i8 %429, 10, !dbg !1842
  br i1 %437, label %340, label %438, !dbg !1844, !llvm.loop !1820

438:                                              ; preds = %436
  %439 = inttoptr i64 %427 to i8*, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %439, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  %440 = getelementptr inbounds i8, i8* %439, i64 1, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %440, metadata !1400, metadata !DIExpression()) #20, !dbg !1545
  store i8 %429, i8* %439, align 1, !dbg !1846, !tbaa !1658
  br label %441

441:                                              ; preds = %438, %432
  %442 = phi i8* [ %440, %438 ], [ %435, %432 ]
  %443 = ptrtoint i8* %442 to i64, !dbg !1413
  %444 = getelementptr inbounds i8, i8* %428, i64 1, !dbg !1847
  call void @llvm.dbg.value(metadata i8* %444, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  %445 = load i8, i8* %428, align 1, !dbg !1848, !tbaa !1658
  call void @llvm.dbg.value(metadata i8 %445, metadata !1396, metadata !DIExpression()) #20, !dbg !1545
  br label %426, !dbg !1849, !llvm.loop !1850

446:                                              ; preds = %276, %279, %263, %270, %239
  %447 = phi i8 [ 0, %239 ], [ 0, %270 ], [ 0, %263 ], [ 1, %279 ], [ 1, %276 ]
  store i32 %205, i32* @newlines2, align 4, !dbg !1412, !tbaa !1343
  call void @llvm.dbg.value(metadata i8 %244, metadata !1403, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %190, metadata !1398, metadata !DIExpression()) #20, !dbg !1545
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #20, !dbg !1659
  call void @llvm.dbg.value(metadata i8 undef, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @free(i8* %184) #20, !dbg !1852
  br label %448

448:                                              ; preds = %164, %167, %446
  %449 = phi i8 [ %447, %446 ], [ 0, %167 ], [ 1, %164 ]
  %450 = phi i8* [ %181, %446 ], [ %157, %167 ], [ %157, %164 ], !dbg !1370
  %451 = and i8 %92, %449, !dbg !1370
  call void @llvm.dbg.value(metadata i8* %450, metadata !218, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %451, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @free(i8* %450) #20, !dbg !1853
  br label %452, !dbg !1853

452:                                              ; preds = %448, %148, %120
  %453 = phi i8 [ 0, %120 ], [ 0, %148 ], [ %451, %448 ], !dbg !1854
  call void @llvm.dbg.value(metadata i8 %453, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.label(metadata !275), !dbg !1855
  %454 = load i8*, i8** @infile, align 8, !dbg !1856, !tbaa !1250
  %455 = call i32 @strcmp(i8* nonnull dereferenceable(1) %454, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #22, !dbg !1856
  %456 = icmp eq i32 %455, 0, !dbg !1856
  br i1 %456, label %466, label %457, !dbg !1858

457:                                              ; preds = %452
  %458 = load i32, i32* @input_desc, align 4, !dbg !1859, !tbaa !1343
  %459 = call i32 @close(i32 %458) #20, !dbg !1860
  %460 = icmp slt i32 %459, 0, !dbg !1861
  br i1 %460, label %461, label %466, !dbg !1862

461:                                              ; preds = %457
  %462 = tail call i32* @__errno_location() #24, !dbg !1863
  %463 = load i32, i32* %462, align 4, !dbg !1863, !tbaa !1343
  %464 = load i8*, i8** @infile, align 8, !dbg !1865, !tbaa !1250
  %465 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %464) #20, !dbg !1865
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %465) #20, !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !220, metadata !DIExpression()), !dbg !1295
  br label %466, !dbg !1867

466:                                              ; preds = %452, %457, %461, %110
  %467 = phi i8 [ %453, %452 ], [ 0, %461 ], [ %453, %457 ], [ 0, %110 ], !dbg !1854
  %468 = phi i8 [ %117, %452 ], [ %117, %461 ], [ %117, %457 ], [ %93, %110 ], !dbg !1295
  call void @llvm.dbg.value(metadata i8 %468, metadata !232, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %467, metadata !220, metadata !DIExpression()), !dbg !1295
  %469 = add nsw i64 %91, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %469, metadata !223, metadata !DIExpression()), !dbg !1295
  %470 = icmp slt i64 %469, %89, !dbg !1869
  br i1 %470, label %90, label %471, !dbg !1870, !llvm.loop !1871

471:                                              ; preds = %466
  call void @llvm.dbg.value(metadata i8 %467, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %468, metadata !232, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %467, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %468, metadata !232, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %467, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %468, metadata !232, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %467, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %468, metadata !232, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %467, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %468, metadata !232, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %467, metadata !220, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %468, metadata !232, metadata !DIExpression()), !dbg !1295
  %472 = and i8 %468, 1, !dbg !1873
  %473 = icmp eq i8 %472, 0, !dbg !1873
  br i1 %473, label %481, label %474, !dbg !1875

474:                                              ; preds = %471
  %475 = call i32 @close(i32 0) #20, !dbg !1876
  %476 = icmp slt i32 %475, 0, !dbg !1877
  br i1 %476, label %477, label %481, !dbg !1878

477:                                              ; preds = %474
  %478 = tail call i32* @__errno_location() #24, !dbg !1879
  %479 = load i32, i32* %478, align 4, !dbg !1879, !tbaa !1343
  %480 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #20, !dbg !1879
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %479, i8* %480) #20, !dbg !1879
  unreachable, !dbg !1879

481:                                              ; preds = %471, %474
  %482 = xor i8 %467, 1, !dbg !1880
  %483 = zext i8 %482 to i32, !dbg !1880
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #20, !dbg !1881
  ret i32 %483, !dbg !1881
}

; Function Attrs: nounwind readnone
declare !dbg !109 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !121 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !124 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !127 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !134 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !153 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !157 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !167 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare !dbg !190 i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i8* @stpcpy(i8*, i8* nocapture readonly) #11

; Function Attrs: nounwind
declare !dbg !174 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !177 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1882 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1884, metadata !DIExpression()), !dbg !1885
  store i8* %0, i8** @file_name, align 8, !dbg !1886, !tbaa !1250
  ret void, !dbg !1887
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1888 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1892, metadata !DIExpression()), !dbg !1893
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1894, !tbaa !1895
  ret void, !dbg !1897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1898 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1903, !tbaa !1250
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !1904
  %3 = icmp eq i32 %2, 0, !dbg !1905
  br i1 %3, label %22, label %4, !dbg !1906

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1907, !tbaa !1895, !range !1908
  %6 = icmp eq i8 %5, 0, !dbg !1907
  br i1 %6, label %11, label %7, !dbg !1909

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1910
  %9 = load i32, i32* %8, align 4, !dbg !1910, !tbaa !1343
  %10 = icmp eq i32 %9, 32, !dbg !1911
  br i1 %10, label %22, label %11, !dbg !1912

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #20, !dbg !1913
  call void @llvm.dbg.value(metadata i8* %12, metadata !1900, metadata !DIExpression()), !dbg !1914
  %13 = load i8*, i8** @file_name, align 8, !dbg !1915, !tbaa !1250
  %14 = icmp eq i8* %13, null, !dbg !1915
  %15 = tail call i32* @__errno_location() #24, !dbg !1917
  %16 = load i32, i32* %15, align 4, !dbg !1917, !tbaa !1343
  br i1 %14, label %19, label %17, !dbg !1918

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !1919
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.52, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !1920
  br label %20, !dbg !1920

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.53, i64 0, i64 0), i8* %12) #20, !dbg !1921
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1922, !tbaa !1343
  tail call void @_exit(i32 %21) #23, !dbg !1923
  unreachable, !dbg !1923

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1924, !tbaa !1250
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !1926
  %25 = icmp eq i32 %24, 0, !dbg !1927
  br i1 %25, label %28, label %26, !dbg !1928

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1929, !tbaa !1343
  tail call void @_exit(i32 %27) #23, !dbg !1930
  unreachable, !dbg !1930

28:                                               ; preds = %22
  ret void, !dbg !1931
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1938, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %1, metadata !1939, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %2, metadata !1940, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32 %3, metadata !1941, metadata !DIExpression()), !dbg !1944
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #20, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %5, metadata !1942, metadata !DIExpression()), !dbg !1946
  ret void, !dbg !1947
}

; Function Attrs: nounwind
declare !dbg !505 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1948 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1955, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i32 %1, metadata !1956, metadata !DIExpression()), !dbg !1957
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1958
  br i1 %3, label %7, label %4, !dbg !1960

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %5, metadata !1938, metadata !DIExpression()) #20, !dbg !1962
  call void @llvm.dbg.value(metadata i64 0, metadata !1939, metadata !DIExpression()) #20, !dbg !1962
  call void @llvm.dbg.value(metadata i64 0, metadata !1940, metadata !DIExpression()) #20, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %1, metadata !1941, metadata !DIExpression()) #20, !dbg !1962
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #20, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %6, metadata !1942, metadata !DIExpression()) #20, !dbg !1965
  br label %7, !dbg !1966

7:                                                ; preds = %2, %4
  ret void, !dbg !1967
}

; Function Attrs: nofree nounwind
declare !dbg !508 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_write(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !1968 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1972, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8* %1, metadata !1973, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %2, metadata !1974, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 0, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8* %1, metadata !1976, metadata !DIExpression()), !dbg !1979
  %4 = icmp eq i64 %2, 0, !dbg !1980
  br i1 %4, label %17, label %5, !dbg !1981

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %15, %12 ], [ %2, %3 ]
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ]
  %8 = phi i64 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1974, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8* %7, metadata !1976, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %8, metadata !1975, metadata !DIExpression()), !dbg !1979
  %9 = tail call i64 @safe_write(i32 %0, i8* %7, i64 %6) #20, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %9, metadata !1977, metadata !DIExpression()), !dbg !1983
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !1984

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 %8, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %8, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %8, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %8, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %8, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %8, metadata !1975, metadata !DIExpression()), !dbg !1979
  %11 = tail call i32* @__errno_location() #24, !dbg !1985
  store i32 28, i32* %11, align 4, !dbg !1988, !tbaa !1343
  br label %17, !dbg !1989

12:                                               ; preds = %5
  %13 = add i64 %9, %8, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %13, metadata !1975, metadata !DIExpression()), !dbg !1979
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !1991
  call void @llvm.dbg.value(metadata i8* %14, metadata !1976, metadata !DIExpression()), !dbg !1979
  %15 = sub i64 %6, %9, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %15, metadata !1974, metadata !DIExpression()), !dbg !1979
  %16 = icmp eq i64 %15, 0, !dbg !1980
  br i1 %16, label %17, label %5, !dbg !1981

17:                                               ; preds = %12, %5, %3, %10
  %18 = phi i64 [ %8, %10 ], [ 0, %3 ], [ %13, %12 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !1975, metadata !DIExpression()), !dbg !1979
  ret i64 %18, !dbg !1993
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1994 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1996, metadata !DIExpression()), !dbg !1999
  %2 = icmp eq i8* %0, null, !dbg !2000
  br i1 %2, label %3, label %6, !dbg !2002

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2003, !tbaa !1250
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2005
  tail call void @abort() #23, !dbg !2006
  unreachable, !dbg !2006

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2007
  call void @llvm.dbg.value(metadata i8* %7, metadata !1997, metadata !DIExpression()), !dbg !1999
  %8 = icmp eq i8* %7, null, !dbg !2008
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2009
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %10, metadata !1998, metadata !DIExpression()), !dbg !1999
  %11 = ptrtoint i8* %10 to i64, !dbg !2010
  %12 = ptrtoint i8* %0 to i64, !dbg !2010
  %13 = sub i64 %11, %12, !dbg !2010
  %14 = icmp sgt i64 %13, 6, !dbg !2012
  br i1 %14, label %15, label %24, !dbg !2013

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2014
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #22, !dbg !2015
  %18 = icmp eq i32 %17, 0, !dbg !2016
  br i1 %18, label %19, label %24, !dbg !2017

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1996, metadata !DIExpression()), !dbg !1999
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #22, !dbg !2018
  %21 = icmp eq i32 %20, 0, !dbg !2021
  br i1 %21, label %22, label %24, !dbg !2022

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2023
  call void @llvm.dbg.value(metadata i8* %23, metadata !1996, metadata !DIExpression()), !dbg !1999
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2025, !tbaa !1250
  br label %24, !dbg !2026

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1996, metadata !DIExpression()), !dbg !1999
  store i8* %25, i8** @program_name, align 8, !dbg !2027, !tbaa !1250
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2028, !tbaa !1250
  ret void, !dbg !2029
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2030 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2035, metadata !DIExpression()), !dbg !2038
  %2 = tail call i32* @__errno_location() #24, !dbg !2039
  %3 = load i32, i32* %2, align 4, !dbg !2039, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %3, metadata !2036, metadata !DIExpression()), !dbg !2038
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2040
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2040
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2040
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2041
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2041
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2037, metadata !DIExpression()), !dbg !2038
  store i32 %3, i32* %2, align 4, !dbg !2042, !tbaa !1343
  ret %struct.quoting_options* %8, !dbg !2043
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !2044 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2048, metadata !DIExpression()), !dbg !2049
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2050
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2050
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2051
  %5 = load i32, i32* %4, align 8, !dbg !2051, !tbaa !2052
  ret i32 %5, !dbg !2054
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !2055 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i32 %1, metadata !2060, metadata !DIExpression()), !dbg !2061
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2062
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2062
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2063
  store i32 %1, i32* %5, align 8, !dbg !2064, !tbaa !2052
  ret void, !dbg !2065
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !2066 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2070, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %1, metadata !2071, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %2, metadata !2072, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %1, metadata !2073, metadata !DIExpression()), !dbg !2078
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2079
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2079
  %6 = lshr i8 %1, 5, !dbg !2080
  %7 = zext i8 %6 to i64, !dbg !2080
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2081
  call void @llvm.dbg.value(metadata i32* %8, metadata !2074, metadata !DIExpression()), !dbg !2078
  %9 = and i8 %1, 31, !dbg !2082
  %10 = zext i8 %9 to i32, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %10, metadata !2076, metadata !DIExpression()), !dbg !2078
  %11 = load i32, i32* %8, align 4, !dbg !2083, !tbaa !1343
  %12 = lshr i32 %11, %10, !dbg !2084
  %13 = and i32 %12, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %13, metadata !2077, metadata !DIExpression()), !dbg !2078
  %14 = and i32 %2, 1, !dbg !2086
  %15 = xor i32 %13, %14, !dbg !2087
  %16 = shl i32 %15, %10, !dbg !2088
  %17 = xor i32 %16, %11, !dbg !2089
  store i32 %17, i32* %8, align 4, !dbg !2089, !tbaa !1343
  ret i32 %13, !dbg !2090
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !2091 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2095, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %1, metadata !2096, metadata !DIExpression()), !dbg !2098
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2099
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2101
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2095, metadata !DIExpression()), !dbg !2098
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2102
  %6 = load i32, i32* %5, align 4, !dbg !2102, !tbaa !2103
  call void @llvm.dbg.value(metadata i32 %6, metadata !2097, metadata !DIExpression()), !dbg !2098
  store i32 %1, i32* %5, align 4, !dbg !2104, !tbaa !2103
  ret i32 %6, !dbg !2105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2106 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %1, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %2, metadata !2112, metadata !DIExpression()), !dbg !2113
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2114
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2116
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()), !dbg !2113
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2117
  store i32 10, i32* %6, align 8, !dbg !2118, !tbaa !2052
  %7 = icmp ne i8* %1, null, !dbg !2119
  %8 = icmp ne i8* %2, null, !dbg !2121
  %9 = and i1 %7, %8, !dbg !2122
  br i1 %9, label %11, label %10, !dbg !2122

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2123
  unreachable, !dbg !2123

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2124
  store i8* %1, i8** %12, align 8, !dbg !2125, !tbaa !2126
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2127
  store i8* %2, i8** %13, align 8, !dbg !2128, !tbaa !2129
  ret void, !dbg !2130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2131 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %1, metadata !2136, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %2, metadata !2137, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %3, metadata !2138, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2139, metadata !DIExpression()), !dbg !2143
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2144
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2140, metadata !DIExpression()), !dbg !2143
  %8 = tail call i32* @__errno_location() #24, !dbg !2145
  %9 = load i32, i32* %8, align 4, !dbg !2145, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %9, metadata !2141, metadata !DIExpression()), !dbg !2143
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2146
  %11 = load i32, i32* %10, align 8, !dbg !2146, !tbaa !2052
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2147
  %13 = load i32, i32* %12, align 4, !dbg !2147, !tbaa !2103
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2148
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2149
  %16 = load i8*, i8** %15, align 8, !dbg !2149, !tbaa !2126
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2150
  %18 = load i8*, i8** %17, align 8, !dbg !2150, !tbaa !2129
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2151
  call void @llvm.dbg.value(metadata i64 %19, metadata !2142, metadata !DIExpression()), !dbg !2143
  store i32 %9, i32* %8, align 4, !dbg !2152, !tbaa !1343
  ret i64 %19, !dbg !2153
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2154 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2160, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %1, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %2, metadata !2162, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %3, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 %4, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 %5, metadata !2165, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32* %6, metadata !2166, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %7, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %8, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* null, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2174, metadata !DIExpression()), !dbg !2218
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2219
  %14 = icmp eq i64 %13, 1, !dbg !2220
  call void @llvm.dbg.value(metadata i1 %14, metadata !2175, metadata !DIExpression()), !dbg !2218
  %15 = lshr i32 %5, 1, !dbg !2221
  %16 = trunc i32 %15 to i8, !dbg !2221
  %17 = and i8 %16, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i8 %17, metadata !2176, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 1, metadata !2179, metadata !DIExpression()), !dbg !2218
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2222
  %19 = and i32 %5, 4, !dbg !2224
  %20 = icmp eq i32 %19, 0, !dbg !2224
  %21 = and i32 %5, 1, !dbg !2227
  %22 = icmp eq i32 %21, 0, !dbg !2227
  %23 = bitcast i64* %10 to i8*, !dbg !2230
  %24 = bitcast i32* %12 to i8*, !dbg !2231
  %25 = icmp eq i32* %6, null, !dbg !2232
  br label %26, !dbg !2234

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2235
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2236
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2237
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2238
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2218
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2239
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2240
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2241
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %38, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %37, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %36, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %35, metadata !2176, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %34, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %33, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %32, metadata !2173, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %31, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %30, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %29, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %28, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 %27, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.label(metadata !2212), !dbg !2242
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
  ], !dbg !2243

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %35, metadata !2176, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 5, metadata !2164, metadata !DIExpression()), !dbg !2218
  br label %92, !dbg !2244

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2176, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 5, metadata !2164, metadata !DIExpression()), !dbg !2218
  %42 = and i8 %35, 1, !dbg !2246
  %43 = icmp eq i8 %42, 0, !dbg !2246
  br i1 %43, label %44, label %92, !dbg !2244

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2248
  br i1 %45, label %92, label %46, !dbg !2251

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2248, !tbaa !1658
  br label %92, !dbg !2248

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %27), !dbg !2252
  call void @llvm.dbg.value(metadata i8* %48, metadata !2167, metadata !DIExpression()), !dbg !2218
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %27), !dbg !2256
  call void @llvm.dbg.value(metadata i8* %49, metadata !2168, metadata !DIExpression()), !dbg !2218
  br label %50, !dbg !2257

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %51, metadata !2167, metadata !DIExpression()), !dbg !2218
  %53 = and i8 %35, 1, !dbg !2258
  %54 = icmp eq i8 %53, 0, !dbg !2258
  br i1 %54, label %55, label %70, !dbg !2260

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2218
  %56 = load i8, i8* %51, align 1, !dbg !2261, !tbaa !1658
  %57 = icmp eq i8 %56, 0, !dbg !2264
  br i1 %57, label %70, label %58, !dbg !2264

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %61, metadata !2170, metadata !DIExpression()), !dbg !2218
  %62 = icmp ult i64 %61, %39, !dbg !2265
  br i1 %62, label %63, label %65, !dbg !2268

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2265
  store i8 %59, i8* %64, align 1, !dbg !2265, !tbaa !1658
  br label %65, !dbg !2265

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %66, metadata !2170, metadata !DIExpression()), !dbg !2218
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2269
  call void @llvm.dbg.value(metadata i8* %67, metadata !2172, metadata !DIExpression()), !dbg !2218
  %68 = load i8, i8* %67, align 1, !dbg !2261, !tbaa !1658
  %69 = icmp eq i8 %68, 0, !dbg !2264
  br i1 %69, label %70, label %58, !dbg !2264, !llvm.loop !2270

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2272
  call void @llvm.dbg.value(metadata i64 %71, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 1, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %52, metadata !2172, metadata !DIExpression()), !dbg !2218
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %72, metadata !2173, metadata !DIExpression()), !dbg !2218
  br label %92, !dbg !2274

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2174, metadata !DIExpression()), !dbg !2218
  br label %74, !dbg !2275

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %75, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2218
  br label %76, !dbg !2276

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2238
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %78, metadata !2176, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %77, metadata !2174, metadata !DIExpression()), !dbg !2218
  %79 = and i8 %78, 1, !dbg !2277
  %80 = icmp eq i8 %79, 0, !dbg !2277
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2279
  br label %82, !dbg !2279

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2218
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2221
  call void @llvm.dbg.value(metadata i8 %84, metadata !2176, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %83, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  %85 = and i8 %84, 1, !dbg !2280
  %86 = icmp eq i8 %85, 0, !dbg !2280
  br i1 %86, label %87, label %92, !dbg !2282

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2283
  br i1 %88, label %92, label %89, !dbg !2286

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2283, !tbaa !1658
  br label %92, !dbg !2283

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2218
  br label %92, !dbg !2287

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2288
  unreachable, !dbg !2288

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2272
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %40 ], !dbg !2218
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2218
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2218
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %100, metadata !2176, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %98, metadata !2173, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %96, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 %93, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, metadata !2169, metadata !DIExpression()), !dbg !2218
  %101 = and i8 %99, 1, !dbg !2289
  %102 = icmp ne i8 %101, 0, !dbg !2289
  %103 = icmp ne i32 %93, 2, !dbg !2289
  %104 = and i1 %103, %102, !dbg !2289
  %105 = icmp ne i64 %98, 0, !dbg !2289
  %106 = and i1 %105, %104, !dbg !2289
  %107 = icmp ugt i64 %98, 1, !dbg !2289
  %108 = and i8 %100, 1, !dbg !2291
  %109 = icmp eq i8 %108, 0, !dbg !2291
  %110 = icmp eq i32 %93, 2, !dbg !2294
  %111 = or i1 %103, %109, !dbg !2296
  %112 = icmp ne i8 %108, 0, !dbg !2298
  %113 = and i1 %110, %112, !dbg !2298
  %114 = xor i1 %102, true, !dbg !2299
  %115 = xor i1 %104, true, !dbg !2232
  %116 = and i1 %109, %115, !dbg !2232
  %117 = or i1 %25, %116, !dbg !2232
  %118 = and i8 %99, %100, !dbg !2300
  %119 = and i8 %118, 1, !dbg !2300
  %120 = icmp ne i8 %119, 0, !dbg !2300
  %121 = and i1 %120, %105, !dbg !2300
  br label %122, !dbg !2302

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2303
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2272
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2235
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2239
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2240
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2241
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %126, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %123, metadata !2169, metadata !DIExpression()), !dbg !2218
  %131 = icmp eq i64 %126, -1, !dbg !2304
  br i1 %131, label %132, label %136, !dbg !2305

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2306
  %134 = load i8, i8* %133, align 1, !dbg !2306, !tbaa !1658
  %135 = icmp eq i8 %134, 0, !dbg !2307
  br i1 %135, label %581, label %138, !dbg !2308

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2309
  br i1 %137, label %581, label %138, !dbg !2308

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2310
  br i1 %106, label %139, label %154, !dbg !2311

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2312
  %141 = and i1 %107, %131, !dbg !2313
  br i1 %141, label %142, label %144, !dbg !2313

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %143, metadata !2163, metadata !DIExpression()), !dbg !2218
  br label %144, !dbg !2315

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2163, metadata !DIExpression()), !dbg !2218
  %146 = icmp ugt i64 %140, %145, !dbg !2316
  br i1 %146, label %154, label %147, !dbg !2317

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2318
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2319
  %150 = icmp ne i32 %149, 0, !dbg !2320
  %151 = or i1 %150, %109, !dbg !2321
  %152 = xor i1 %150, true, !dbg !2321
  %153 = zext i1 %152 to i8, !dbg !2321
  br i1 %151, label %154, label %639, !dbg !2321

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2310
  call void @llvm.dbg.value(metadata i8 %156, metadata !2185, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %155, metadata !2163, metadata !DIExpression()), !dbg !2218
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2322
  %158 = load i8, i8* %157, align 1, !dbg !2322, !tbaa !1658
  call void @llvm.dbg.value(metadata i8 %158, metadata !2180, metadata !DIExpression()), !dbg !2310
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
  ], !dbg !2323

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2324

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2325

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2186, metadata !DIExpression()), !dbg !2310
  %162 = and i8 %127, 1, !dbg !2328
  %163 = icmp eq i8 %162, 0, !dbg !2328
  %164 = and i1 %110, %163, !dbg !2328
  br i1 %164, label %165, label %181, !dbg !2328

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2330
  br i1 %166, label %167, label %169, !dbg !2334

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2330
  store i8 39, i8* %168, align 1, !dbg !2330, !tbaa !1658
  br label %169, !dbg !2330

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %170, metadata !2170, metadata !DIExpression()), !dbg !2218
  %171 = icmp ult i64 %170, %130, !dbg !2335
  br i1 %171, label %172, label %174, !dbg !2338

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2335
  store i8 36, i8* %173, align 1, !dbg !2335, !tbaa !1658
  br label %174, !dbg !2335

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %175, metadata !2170, metadata !DIExpression()), !dbg !2218
  %176 = icmp ult i64 %175, %130, !dbg !2339
  br i1 %176, label %177, label %179, !dbg !2342

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2339
  store i8 39, i8* %178, align 1, !dbg !2339, !tbaa !1658
  br label %179, !dbg !2339

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %180, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 1, metadata !2177, metadata !DIExpression()), !dbg !2218
  br label %181, !dbg !2343

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2218
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %183, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %182, metadata !2170, metadata !DIExpression()), !dbg !2218
  %184 = icmp ult i64 %182, %130, !dbg !2344
  br i1 %184, label %185, label %187, !dbg !2347

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2344
  store i8 92, i8* %186, align 1, !dbg !2344, !tbaa !1658
  br label %187, !dbg !2344

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %188, metadata !2170, metadata !DIExpression()), !dbg !2218
  br i1 %103, label %189, label %463, !dbg !2348

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2350
  %191 = icmp ult i64 %190, %155, !dbg !2351
  br i1 %191, label %192, label %463, !dbg !2352

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2353
  %194 = load i8, i8* %193, align 1, !dbg !2353, !tbaa !1658
  %195 = add i8 %194, -48, !dbg !2354
  %196 = icmp ult i8 %195, 10, !dbg !2354
  br i1 %196, label %197, label %463, !dbg !2354

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2355
  br i1 %198, label %199, label %201, !dbg !2359

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2355
  store i8 48, i8* %200, align 1, !dbg !2355, !tbaa !1658
  br label %201, !dbg !2355

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %202, metadata !2170, metadata !DIExpression()), !dbg !2218
  %203 = icmp ult i64 %202, %130, !dbg !2360
  br i1 %203, label %204, label %206, !dbg !2363

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2360
  store i8 48, i8* %205, align 1, !dbg !2360, !tbaa !1658
  br label %206, !dbg !2360

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %207, metadata !2170, metadata !DIExpression()), !dbg !2218
  br label %463, !dbg !2364

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2365

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2366

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2367

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2368

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2369
  %214 = icmp ult i64 %213, %155, !dbg !2370
  br i1 %214, label %215, label %463, !dbg !2371

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2372
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2373
  %218 = load i8, i8* %217, align 1, !dbg !2373, !tbaa !1658
  %219 = icmp eq i8 %218, 63, !dbg !2374
  br i1 %219, label %220, label %463, !dbg !2375

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2376
  %222 = load i8, i8* %221, align 1, !dbg !2376, !tbaa !1658
  %223 = sext i8 %222 to i32, !dbg !2376
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
  ], !dbg !2377

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2378

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2180, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %213, metadata !2169, metadata !DIExpression()), !dbg !2218
  %226 = icmp ult i64 %124, %130, !dbg !2380
  br i1 %226, label %227, label %229, !dbg !2383

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2380
  store i8 63, i8* %228, align 1, !dbg !2380, !tbaa !1658
  br label %229, !dbg !2380

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %230, metadata !2170, metadata !DIExpression()), !dbg !2218
  %231 = icmp ult i64 %230, %130, !dbg !2384
  br i1 %231, label %232, label %234, !dbg !2387

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2384
  store i8 34, i8* %233, align 1, !dbg !2384, !tbaa !1658
  br label %234, !dbg !2384

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %235, metadata !2170, metadata !DIExpression()), !dbg !2218
  %236 = icmp ult i64 %235, %130, !dbg !2388
  br i1 %236, label %237, label %239, !dbg !2391

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2388
  store i8 34, i8* %238, align 1, !dbg !2388, !tbaa !1658
  br label %239, !dbg !2388

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %240, metadata !2170, metadata !DIExpression()), !dbg !2218
  %241 = icmp ult i64 %240, %130, !dbg !2392
  br i1 %241, label %242, label %244, !dbg !2395

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2392
  store i8 63, i8* %243, align 1, !dbg !2392, !tbaa !1658
  br label %244, !dbg !2392

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %245, metadata !2170, metadata !DIExpression()), !dbg !2218
  br label %463, !dbg !2396

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2184, metadata !DIExpression()), !dbg !2310
  br label %256, !dbg !2397

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2184, metadata !DIExpression()), !dbg !2310
  br label %256, !dbg !2398

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2184, metadata !DIExpression()), !dbg !2310
  br label %254, !dbg !2399

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2184, metadata !DIExpression()), !dbg !2310
  br label %254, !dbg !2400

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2184, metadata !DIExpression()), !dbg !2310
  br label %256, !dbg !2401

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2184, metadata !DIExpression()), !dbg !2310
  br i1 %110, label %252, label %253, !dbg !2402

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2403

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2406

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2407
  call void @llvm.dbg.value(metadata i8 %255, metadata !2184, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.label(metadata !2213), !dbg !2408
  br i1 %111, label %256, label %625, !dbg !2409

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2407
  call void @llvm.dbg.value(metadata i8 %257, metadata !2184, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.label(metadata !2214), !dbg !2411
  br i1 %102, label %488, label %463, !dbg !2412

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2413

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2414, !tbaa !1658
  %261 = icmp eq i8 %260, 0, !dbg !2415
  br i1 %261, label %262, label %463, !dbg !2416

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2417
  br i1 %263, label %264, label %463, !dbg !2419

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2310
  br label %265, !dbg !2420

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2310
  call void @llvm.dbg.value(metadata i8 %266, metadata !2187, metadata !DIExpression()), !dbg !2310
  br i1 %111, label %463, label %625, !dbg !2421

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2310
  br i1 %110, label %268, label %463, !dbg !2422

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2423

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2425
  %271 = icmp ne i64 %125, 0, !dbg !2427
  %272 = or i1 %271, %270, !dbg !2428
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2428
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %274, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %273, metadata !2171, metadata !DIExpression()), !dbg !2218
  %275 = icmp ult i64 %124, %274, !dbg !2429
  br i1 %275, label %276, label %278, !dbg !2432

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2429
  store i8 39, i8* %277, align 1, !dbg !2429, !tbaa !1658
  br label %278, !dbg !2429

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %279, metadata !2170, metadata !DIExpression()), !dbg !2218
  %280 = icmp ult i64 %279, %274, !dbg !2433
  br i1 %280, label %281, label %283, !dbg !2436

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2433
  store i8 92, i8* %282, align 1, !dbg !2433, !tbaa !1658
  br label %283, !dbg !2433

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %284, metadata !2170, metadata !DIExpression()), !dbg !2218
  %285 = icmp ult i64 %284, %274, !dbg !2437
  br i1 %285, label %286, label %288, !dbg !2440

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2437
  store i8 39, i8* %287, align 1, !dbg !2437, !tbaa !1658
  br label %288, !dbg !2437

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %289, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2218
  br label %463, !dbg !2441

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2442

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2188, metadata !DIExpression()), !dbg !2443
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2444
  %293 = load i16*, i16** %292, align 8, !dbg !2444, !tbaa !1250
  %294 = zext i8 %158 to i64, !dbg !2444
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2444
  %296 = load i16, i16* %295, align 2, !dbg !2444, !tbaa !2446
  %297 = lshr i16 %296, 14, !dbg !2448
  %298 = trunc i16 %297 to i8, !dbg !2448
  %299 = and i8 %298, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i8 %299, metadata !2191, metadata !DIExpression()), !dbg !2443
  br label %355, !dbg !2449

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2450
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2192, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8* %23, metadata !2452, metadata !DIExpression()) #20, !dbg !2459
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()) #20, !dbg !2459
  call void @llvm.dbg.value(metadata i64 8, metadata !2458, metadata !DIExpression()) #20, !dbg !2459
  store i64 0, i64* %10, align 8, !dbg !2461
  call void @llvm.dbg.value(metadata i64 0, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 1, metadata !2191, metadata !DIExpression()), !dbg !2443
  %301 = icmp eq i64 %155, -1, !dbg !2462
  br i1 %301, label %302, label %304, !dbg !2464

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %303, metadata !2163, metadata !DIExpression()), !dbg !2218
  br label %304, !dbg !2466

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2310
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  br label %306, !dbg !2467

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2468
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2469
  call void @llvm.dbg.value(metadata i8 %308, metadata !2191, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2470
  %309 = add i64 %307, %123, !dbg !2471
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2472
  %311 = sub i64 %305, %309, !dbg !2473
  call void @llvm.dbg.value(metadata i32* %12, metadata !2198, metadata !DIExpression(DW_OP_deref)), !dbg !2231
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %312, metadata !2201, metadata !DIExpression()), !dbg !2231
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2475

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  %314 = icmp ugt i64 %305, %309, !dbg !2476
  br i1 %314, label %315, label %340, !dbg !2478

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2479
  br label %317, !dbg !2479

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2188, metadata !DIExpression()), !dbg !2443
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2480
  %321 = load i8, i8* %320, align 1, !dbg !2480, !tbaa !1658
  %322 = icmp eq i8 %321, 0, !dbg !2478
  br i1 %322, label %340, label %323, !dbg !2479

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2481
  call void @llvm.dbg.value(metadata i64 %324, metadata !2188, metadata !DIExpression()), !dbg !2443
  %325 = add i64 %324, %123, !dbg !2482
  %326 = icmp ult i64 %325, %305, !dbg !2476
  br i1 %326, label %317, label %340, !dbg !2478, !llvm.loop !2483

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2484
  %329 = and i1 %113, %328, !dbg !2487
  call void @llvm.dbg.value(metadata i64 1, metadata !2202, metadata !DIExpression()), !dbg !2488
  br i1 %329, label %330, label %343, !dbg !2487

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2202, metadata !DIExpression()), !dbg !2488
  %332 = add i64 %331, %309, !dbg !2489
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2490
  %334 = load i8, i8* %333, align 1, !dbg !2490, !tbaa !1658
  %335 = sext i8 %334 to i32, !dbg !2490
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2491

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %337, metadata !2202, metadata !DIExpression()), !dbg !2488
  %338 = icmp eq i64 %337, %312, !dbg !2484
  br i1 %338, label %343, label %330, !dbg !2493, !llvm.loop !2494

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %308, metadata !2191, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %307, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %308, metadata !2191, metadata !DIExpression()), !dbg !2443
  br label %340, !dbg !2496

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2496
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2497, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %344, metadata !2198, metadata !DIExpression()), !dbg !2231
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2499
  %346 = icmp eq i32 %345, 0, !dbg !2499
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2500
  call void @llvm.dbg.value(metadata i8 %347, metadata !2191, metadata !DIExpression()), !dbg !2443
  %348 = add i64 %312, %307, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %348, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %347, metadata !2191, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %348, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2496
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2502
  %350 = icmp eq i32 %349, 0, !dbg !2503
  br i1 %350, label %306, label %351, !dbg !2504, !llvm.loop !2505

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2507
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %99, metadata !2174, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %305, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2496
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2507
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2310
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2508
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2508
  call void @llvm.dbg.value(metadata i8 %358, metadata !2191, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %357, metadata !2188, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %356, metadata !2163, metadata !DIExpression()), !dbg !2218
  %359 = and i8 %358, 1, !dbg !2509
  %360 = icmp ne i8 %359, 0, !dbg !2509
  call void @llvm.dbg.value(metadata i8 %359, metadata !2187, metadata !DIExpression()), !dbg !2310
  %361 = icmp ult i64 %357, 2, !dbg !2510
  %362 = or i1 %360, %114, !dbg !2511
  %363 = and i1 %361, %362, !dbg !2512
  br i1 %363, label %463, label %364, !dbg !2512

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %365, metadata !2209, metadata !DIExpression()), !dbg !2514
  br label %366, !dbg !2515

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2303
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2218
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2239
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2310
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2310
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2516
  call void @llvm.dbg.value(metadata i8 %372, metadata !2186, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %371, metadata !2185, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %370, metadata !2180, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %369, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %368, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %367, metadata !2169, metadata !DIExpression()), !dbg !2218
  br i1 %362, label %419, label %373, !dbg !2517

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2522

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2186, metadata !DIExpression()), !dbg !2310
  %375 = and i8 %369, 1, !dbg !2525
  %376 = icmp eq i8 %375, 0, !dbg !2525
  %377 = and i1 %110, %376, !dbg !2525
  br i1 %377, label %378, label %394, !dbg !2525

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2527
  br i1 %379, label %380, label %382, !dbg !2531

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2527
  store i8 39, i8* %381, align 1, !dbg !2527, !tbaa !1658
  br label %382, !dbg !2527

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %383, metadata !2170, metadata !DIExpression()), !dbg !2218
  %384 = icmp ult i64 %383, %130, !dbg !2532
  br i1 %384, label %385, label %387, !dbg !2535

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2532
  store i8 36, i8* %386, align 1, !dbg !2532, !tbaa !1658
  br label %387, !dbg !2532

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %388, metadata !2170, metadata !DIExpression()), !dbg !2218
  %389 = icmp ult i64 %388, %130, !dbg !2536
  br i1 %389, label %390, label %392, !dbg !2539

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2536
  store i8 39, i8* %391, align 1, !dbg !2536, !tbaa !1658
  br label %392, !dbg !2536

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %393, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 1, metadata !2177, metadata !DIExpression()), !dbg !2218
  br label %394, !dbg !2540

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2218
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %396, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %395, metadata !2170, metadata !DIExpression()), !dbg !2218
  %397 = icmp ult i64 %395, %130, !dbg !2541
  br i1 %397, label %398, label %400, !dbg !2544

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2541
  store i8 92, i8* %399, align 1, !dbg !2541, !tbaa !1658
  br label %400, !dbg !2541

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %401, metadata !2170, metadata !DIExpression()), !dbg !2218
  %402 = icmp ult i64 %401, %130, !dbg !2545
  br i1 %402, label %403, label %407, !dbg !2548

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2545
  %405 = or i8 %404, 48, !dbg !2545
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2545
  store i8 %405, i8* %406, align 1, !dbg !2545, !tbaa !1658
  br label %407, !dbg !2545

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %408, metadata !2170, metadata !DIExpression()), !dbg !2218
  %409 = icmp ult i64 %408, %130, !dbg !2549
  br i1 %409, label %410, label %415, !dbg !2552

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2549
  %412 = and i8 %411, 7, !dbg !2549
  %413 = or i8 %412, 48, !dbg !2549
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2549
  store i8 %413, i8* %414, align 1, !dbg !2549, !tbaa !1658
  br label %415, !dbg !2549

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %416, metadata !2170, metadata !DIExpression()), !dbg !2218
  %417 = and i8 %370, 7, !dbg !2553
  %418 = or i8 %417, 48, !dbg !2554
  call void @llvm.dbg.value(metadata i8 %418, metadata !2180, metadata !DIExpression()), !dbg !2310
  br label %428, !dbg !2555

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2556
  %421 = icmp eq i8 %420, 0, !dbg !2556
  br i1 %421, label %428, label %422, !dbg !2558

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2559
  br i1 %423, label %424, label %426, !dbg !2563

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2559
  store i8 92, i8* %425, align 1, !dbg !2559, !tbaa !1658
  br label %426, !dbg !2559

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %427, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2310
  br label %428, !dbg !2564

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2218
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2239
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2310
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2310
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2310
  call void @llvm.dbg.value(metadata i8 %433, metadata !2186, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %432, metadata !2185, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %431, metadata !2180, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %430, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %429, metadata !2170, metadata !DIExpression()), !dbg !2218
  %434 = add i64 %367, 1, !dbg !2565
  %435 = icmp ugt i64 %365, %434, !dbg !2567
  br i1 %435, label %436, label %526, !dbg !2568

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2569
  %438 = icmp ne i8 %437, 0, !dbg !2569
  %439 = and i8 %433, 1, !dbg !2569
  %440 = icmp eq i8 %439, 0, !dbg !2569
  %441 = and i1 %438, %440, !dbg !2569
  br i1 %441, label %442, label %453, !dbg !2569

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2572
  br i1 %443, label %444, label %446, !dbg !2576

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2572
  store i8 39, i8* %445, align 1, !dbg !2572, !tbaa !1658
  br label %446, !dbg !2572

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %447, metadata !2170, metadata !DIExpression()), !dbg !2218
  %448 = icmp ult i64 %447, %130, !dbg !2577
  br i1 %448, label %449, label %451, !dbg !2580

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2577
  store i8 39, i8* %450, align 1, !dbg !2577, !tbaa !1658
  br label %451, !dbg !2577

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %452, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2218
  br label %453, !dbg !2581

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2582
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %455, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %454, metadata !2170, metadata !DIExpression()), !dbg !2218
  %456 = icmp ult i64 %454, %130, !dbg !2583
  br i1 %456, label %457, label %459, !dbg !2586

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2583
  store i8 %431, i8* %458, align 1, !dbg !2583, !tbaa !1658
  br label %459, !dbg !2583

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %460, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %434, metadata !2169, metadata !DIExpression()), !dbg !2218
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2587
  %462 = load i8, i8* %461, align 1, !dbg !2587, !tbaa !1658
  call void @llvm.dbg.value(metadata i8 %462, metadata !2180, metadata !DIExpression()), !dbg !2310
  br label %366, !dbg !2588, !llvm.loop !2589

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2303
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2218
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2235
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2592
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2218
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2218
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2310
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2310
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2310
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %472, metadata !2187, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %471, metadata !2186, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %156, metadata !2185, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %470, metadata !2180, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %469, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %468, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %467, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %466, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %465, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %464, metadata !2169, metadata !DIExpression()), !dbg !2218
  br i1 %117, label %486, label %474, !dbg !2593

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2594
  %476 = zext i8 %475 to i64, !dbg !2594
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2595
  %478 = load i32, i32* %477, align 4, !dbg !2595, !tbaa !1343
  %479 = and i8 %470, 31, !dbg !2596
  %480 = zext i8 %479 to i32, !dbg !2596
  %481 = shl nuw i32 1, %480, !dbg !2597
  %482 = and i32 %478, %481, !dbg !2597
  %483 = icmp eq i32 %482, 0, !dbg !2597
  %484 = icmp eq i8 %156, 0, !dbg !2598
  %485 = and i1 %484, %483, !dbg !2599
  br i1 %485, label %526, label %488, !dbg !2599

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2598
  br i1 %487, label %526, label %488, !dbg !2600

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2601
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2218
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2235
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2592
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2239
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2240
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2310
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2310
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %496, metadata !2187, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %495, metadata !2180, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %494, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %493, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %492, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %491, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %490, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %489, metadata !2169, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.label(metadata !2215), !dbg !2602
  br i1 %109, label %498, label %629, !dbg !2603

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2186, metadata !DIExpression()), !dbg !2310
  %499 = and i8 %493, 1, !dbg !2605
  %500 = icmp eq i8 %499, 0, !dbg !2605
  %501 = and i1 %110, %500, !dbg !2605
  br i1 %501, label %502, label %518, !dbg !2605

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2607
  br i1 %503, label %504, label %506, !dbg !2611

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2607
  store i8 39, i8* %505, align 1, !dbg !2607, !tbaa !1658
  br label %506, !dbg !2607

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %507, metadata !2170, metadata !DIExpression()), !dbg !2218
  %508 = icmp ult i64 %507, %497, !dbg !2612
  br i1 %508, label %509, label %511, !dbg !2615

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2612
  store i8 36, i8* %510, align 1, !dbg !2612, !tbaa !1658
  br label %511, !dbg !2612

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %512, metadata !2170, metadata !DIExpression()), !dbg !2218
  %513 = icmp ult i64 %512, %497, !dbg !2616
  br i1 %513, label %514, label %516, !dbg !2619

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2616
  store i8 39, i8* %515, align 1, !dbg !2616, !tbaa !1658
  br label %516, !dbg !2616

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %517, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 1, metadata !2177, metadata !DIExpression()), !dbg !2218
  br label %518, !dbg !2620

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2310
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %520, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %519, metadata !2170, metadata !DIExpression()), !dbg !2218
  %521 = icmp ult i64 %519, %497, !dbg !2621
  br i1 %521, label %522, label %524, !dbg !2624

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2621
  store i8 92, i8* %523, align 1, !dbg !2621, !tbaa !1658
  br label %524, !dbg !2621

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %525, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %536, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %535, metadata !2187, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %534, metadata !2186, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %533, metadata !2180, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %532, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %531, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %530, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %529, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %528, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %527, metadata !2169, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.label(metadata !2216), !dbg !2625
  br label %553, !dbg !2626

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2601
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2218
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2235
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2592
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2239
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2240
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2629
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2310
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2310
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %535, metadata !2187, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %534, metadata !2186, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %533, metadata !2180, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8 %532, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %531, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %530, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %529, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %528, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %527, metadata !2169, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.label(metadata !2216), !dbg !2625
  %537 = and i8 %531, 1, !dbg !2626
  %538 = icmp ne i8 %537, 0, !dbg !2626
  %539 = and i8 %534, 1, !dbg !2626
  %540 = icmp eq i8 %539, 0, !dbg !2626
  %541 = and i1 %538, %540, !dbg !2626
  br i1 %541, label %542, label %553, !dbg !2626

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2630
  br i1 %543, label %544, label %546, !dbg !2634

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2630
  store i8 39, i8* %545, align 1, !dbg !2630, !tbaa !1658
  br label %546, !dbg !2630

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %547, metadata !2170, metadata !DIExpression()), !dbg !2218
  %548 = icmp ult i64 %547, %536, !dbg !2635
  br i1 %548, label %549, label %551, !dbg !2638

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2635
  store i8 39, i8* %550, align 1, !dbg !2635, !tbaa !1658
  br label %551, !dbg !2635

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %552, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2218
  br label %553, !dbg !2639

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2310
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2218
  call void @llvm.dbg.value(metadata i8 %562, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %561, metadata !2170, metadata !DIExpression()), !dbg !2218
  %563 = icmp ult i64 %561, %554, !dbg !2640
  br i1 %563, label %564, label %566, !dbg !2643

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2640
  store i8 %556, i8* %565, align 1, !dbg !2640, !tbaa !1658
  br label %566, !dbg !2640

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %567, metadata !2170, metadata !DIExpression()), !dbg !2218
  %568 = and i8 %555, 1, !dbg !2644
  %569 = icmp eq i8 %568, 0, !dbg !2644
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2646
  call void @llvm.dbg.value(metadata i8 %570, metadata !2179, metadata !DIExpression()), !dbg !2218
  br label %571, !dbg !2647

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2601
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2218
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2235
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2592
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2239
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2218
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2241
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %578, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %577, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %576, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %575, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %574, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %573, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %572, metadata !2169, metadata !DIExpression()), !dbg !2218
  %580 = add i64 %572, 1, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %580, metadata !2169, metadata !DIExpression()), !dbg !2218
  br label %122, !dbg !2649, !llvm.loop !2650

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %127, metadata !2177, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %128, metadata !2178, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 %129, metadata !2179, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  %583 = icmp eq i64 %124, 0, !dbg !2652
  %584 = and i1 %110, %583, !dbg !2654
  %585 = xor i1 %584, true, !dbg !2654
  %586 = or i1 %109, %585, !dbg !2654
  br i1 %586, label %587, label %629, !dbg !2654

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2655
  %589 = xor i1 %588, true, !dbg !2655
  %590 = and i8 %128, 1, !dbg !2657
  %591 = icmp eq i8 %590, 0, !dbg !2657
  %592 = or i1 %591, %589, !dbg !2655
  br i1 %592, label %602, label %593, !dbg !2655

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2658
  %595 = icmp eq i8 %594, 0, !dbg !2658
  br i1 %595, label %598, label %596, !dbg !2661

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %94, metadata !2167, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %95, metadata !2168, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %582, metadata !2163, metadata !DIExpression()), !dbg !2218
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2662
  br label %645, !dbg !2663

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2664
  %600 = icmp ne i64 %125, 0, !dbg !2666
  %601 = and i1 %600, %599, !dbg !2667
  br i1 %601, label %26, label %602, !dbg !2667

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  %603 = icmp ne i8* %97, null, !dbg !2668
  %604 = and i1 %603, %109, !dbg !2670
  br i1 %604, label %605, label %620, !dbg !2670

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2218
  %606 = load i8, i8* %97, align 1, !dbg !2671, !tbaa !1658
  %607 = icmp eq i8 %606, 0, !dbg !2674
  br i1 %607, label %620, label %608, !dbg !2674

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2172, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %611, metadata !2170, metadata !DIExpression()), !dbg !2218
  %612 = icmp ult i64 %611, %130, !dbg !2675
  br i1 %612, label %613, label %615, !dbg !2678

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2675
  store i8 %609, i8* %614, align 1, !dbg !2675, !tbaa !1658
  br label %615, !dbg !2675

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %616, metadata !2170, metadata !DIExpression()), !dbg !2218
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %617, metadata !2172, metadata !DIExpression()), !dbg !2218
  %618 = load i8, i8* %617, align 1, !dbg !2671, !tbaa !1658
  %619 = icmp eq i8 %618, 0, !dbg !2674
  br i1 %619, label %620, label %608, !dbg !2674, !llvm.loop !2680

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2272
  call void @llvm.dbg.value(metadata i64 %621, metadata !2170, metadata !DIExpression()), !dbg !2218
  %622 = icmp ult i64 %621, %130, !dbg !2682
  br i1 %622, label %623, label %645, !dbg !2684

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2685
  store i8 0, i8* %624, align 1, !dbg !2686, !tbaa !1658
  br label %645, !dbg !2685

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %630, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.label(metadata !2217), !dbg !2687
  %627 = icmp eq i8 %101, 0, !dbg !2688
  %628 = select i1 %627, i32 2, i32 4, !dbg !2688
  br label %635, !dbg !2688

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2161, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %630, metadata !2163, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.label(metadata !2217), !dbg !2687
  %632 = icmp eq i32 %93, 2, !dbg !2690
  %633 = icmp eq i8 %101, 0, !dbg !2688
  %634 = select i1 %633, i32 2, i32 4, !dbg !2688
  br i1 %632, label %635, label %639, !dbg !2688

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2688

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2164, metadata !DIExpression()), !dbg !2218
  %643 = and i32 %5, -3, !dbg !2691
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2692
  br label %645, !dbg !2693

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2694
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2695 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 %1, metadata !2700, metadata !DIExpression()), !dbg !2703
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2704
  call void @llvm.dbg.value(metadata i8* %3, metadata !2701, metadata !DIExpression()), !dbg !2703
  %4 = icmp eq i8* %3, %0, !dbg !2705
  br i1 %4, label %5, label %71, !dbg !2707

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %6, metadata !2702, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8* %6, metadata !2709, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* undef, metadata !2715, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 85, metadata !2716, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 84, metadata !2717, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 70, metadata !2718, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 45, metadata !2719, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 56, metadata !2720, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 0, metadata !2722, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 0, metadata !2723, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8 0, metadata !2724, metadata !DIExpression()), !dbg !2725
  %7 = load i8, i8* %6, align 1, !dbg !2728, !tbaa !1658
  %8 = and i8 %7, -33, !dbg !2728
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2728

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2730, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8* undef, metadata !2735, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 84, metadata !2736, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 70, metadata !2737, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 45, metadata !2738, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 56, metadata !2739, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 0, metadata !2740, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 0, metadata !2741, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2744
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2748
  %11 = load i8, i8* %10, align 1, !dbg !2748, !tbaa !1658
  %12 = and i8 %11, -33, !dbg !2748
  %13 = icmp eq i8 %12, 84, !dbg !2748
  br i1 %13, label %14, label %68, !dbg !2748

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2750, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8* undef, metadata !2755, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 70, metadata !2756, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 45, metadata !2757, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 56, metadata !2758, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 0, metadata !2759, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 0, metadata !2760, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 0, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 0, metadata !2762, metadata !DIExpression()), !dbg !2763
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2767
  %16 = load i8, i8* %15, align 1, !dbg !2767, !tbaa !1658
  %17 = and i8 %16, -33, !dbg !2767
  %18 = icmp eq i8 %17, 70, !dbg !2767
  br i1 %18, label %19, label %68, !dbg !2767

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2769, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8* undef, metadata !2774, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 45, metadata !2775, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 56, metadata !2776, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 0, metadata !2777, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 0, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 0, metadata !2779, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 0, metadata !2780, metadata !DIExpression()), !dbg !2781
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2785
  %21 = load i8, i8* %20, align 1, !dbg !2785, !tbaa !1658
  %22 = icmp eq i8 %21, 45, !dbg !2785
  br i1 %22, label %23, label %68, !dbg !2787

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2788, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* undef, metadata !2793, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 56, metadata !2794, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8 0, metadata !2798, metadata !DIExpression()), !dbg !2799
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2803
  %25 = load i8, i8* %24, align 1, !dbg !2803, !tbaa !1658
  %26 = icmp eq i8 %25, 56, !dbg !2803
  br i1 %26, label %27, label %68, !dbg !2805

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2806, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* undef, metadata !2811, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2812, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 0, metadata !2815, metadata !DIExpression()), !dbg !2816
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2820
  %29 = load i8, i8* %28, align 1, !dbg !2820, !tbaa !1658
  %30 = icmp eq i8 %29, 0, !dbg !2820
  br i1 %30, label %31, label %68, !dbg !2822

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2823, !tbaa !1658
  %33 = icmp eq i8 %32, 96, !dbg !2824
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !2823
  br label %71, !dbg !2825

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2730, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* undef, metadata !2735, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 66, metadata !2736, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 49, metadata !2737, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 56, metadata !2738, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 48, metadata !2739, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 51, metadata !2740, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 48, metadata !2741, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 0, metadata !2742, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 0, metadata !2743, metadata !DIExpression()), !dbg !2826
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2830
  %37 = load i8, i8* %36, align 1, !dbg !2830, !tbaa !1658
  %38 = and i8 %37, -33, !dbg !2830
  %39 = icmp eq i8 %38, 66, !dbg !2830
  br i1 %39, label %40, label %68, !dbg !2830

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2750, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* undef, metadata !2755, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 49, metadata !2756, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 56, metadata !2757, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 48, metadata !2758, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 51, metadata !2759, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 48, metadata !2760, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 0, metadata !2761, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8 0, metadata !2762, metadata !DIExpression()), !dbg !2831
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2833
  %42 = load i8, i8* %41, align 1, !dbg !2833, !tbaa !1658
  %43 = icmp eq i8 %42, 49, !dbg !2833
  br i1 %43, label %44, label %68, !dbg !2834

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2769, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8* undef, metadata !2774, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 56, metadata !2775, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 48, metadata !2776, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 51, metadata !2777, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 48, metadata !2778, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 0, metadata !2779, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 0, metadata !2780, metadata !DIExpression()), !dbg !2835
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2837
  %46 = load i8, i8* %45, align 1, !dbg !2837, !tbaa !1658
  %47 = icmp eq i8 %46, 56, !dbg !2837
  br i1 %47, label %48, label %68, !dbg !2838

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2788, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* undef, metadata !2793, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 48, metadata !2794, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 51, metadata !2795, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 48, metadata !2796, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 0, metadata !2797, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 0, metadata !2798, metadata !DIExpression()), !dbg !2839
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2841
  %50 = load i8, i8* %49, align 1, !dbg !2841, !tbaa !1658
  %51 = icmp eq i8 %50, 48, !dbg !2841
  br i1 %51, label %52, label %68, !dbg !2842

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2806, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* undef, metadata !2811, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 51, metadata !2812, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 48, metadata !2813, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 0, metadata !2815, metadata !DIExpression()), !dbg !2843
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2845
  %54 = load i8, i8* %53, align 1, !dbg !2845, !tbaa !1658
  %55 = icmp eq i8 %54, 51, !dbg !2845
  br i1 %55, label %56, label %68, !dbg !2846

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2847, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* undef, metadata !2852, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8 48, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8 0, metadata !2855, metadata !DIExpression()), !dbg !2856
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2860
  %58 = load i8, i8* %57, align 1, !dbg !2860, !tbaa !1658
  %59 = icmp eq i8 %58, 48, !dbg !2860
  br i1 %59, label %60, label %68, !dbg !2862

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2863, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8* undef, metadata !2868, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 0, metadata !2869, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 0, metadata !2870, metadata !DIExpression()), !dbg !2871
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2875
  %62 = load i8, i8* %61, align 1, !dbg !2875, !tbaa !1658
  %63 = icmp eq i8 %62, 0, !dbg !2875
  br i1 %63, label %64, label %68, !dbg !2877

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2878, !tbaa !1658
  %66 = icmp eq i8 %65, 96, !dbg !2879
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !2878
  br label %71, !dbg !2880

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2881
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !2882
  br label %71, !dbg !2883

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2703
  ret i8* %72, !dbg !2884
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !442 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !446 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2885 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2889, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2891, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()) #20, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %1, metadata !2898, metadata !DIExpression()) #20, !dbg !2906
  call void @llvm.dbg.value(metadata i64* null, metadata !2899, metadata !DIExpression()) #20, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2900, metadata !DIExpression()) #20, !dbg !2906
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2908
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2901, metadata !DIExpression()) #20, !dbg !2906
  %6 = tail call i32* @__errno_location() #24, !dbg !2909
  %7 = load i32, i32* %6, align 4, !dbg !2909, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %7, metadata !2902, metadata !DIExpression()) #20, !dbg !2906
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2910
  %9 = load i32, i32* %8, align 4, !dbg !2910, !tbaa !2103
  %10 = or i32 %9, 1, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %10, metadata !2903, metadata !DIExpression()) #20, !dbg !2906
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2912
  %12 = load i32, i32* %11, align 8, !dbg !2912, !tbaa !2052
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2913
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2914
  %15 = load i8*, i8** %14, align 8, !dbg !2914, !tbaa !2126
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2915
  %17 = load i8*, i8** %16, align 8, !dbg !2915, !tbaa !2129
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !2916
  %19 = add i64 %18, 1, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %19, metadata !2904, metadata !DIExpression()) #20, !dbg !2906
  call void @llvm.dbg.value(metadata i64 %19, metadata !2918, metadata !DIExpression()) #20, !dbg !2923
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %20, metadata !2905, metadata !DIExpression()) #20, !dbg !2906
  %21 = load i32, i32* %11, align 8, !dbg !2926, !tbaa !2052
  %22 = load i8*, i8** %14, align 8, !dbg !2927, !tbaa !2126
  %23 = load i8*, i8** %16, align 8, !dbg !2928, !tbaa !2129
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !2929
  store i32 %7, i32* %6, align 4, !dbg !2930, !tbaa !1343
  ret i8* %20, !dbg !2931
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2894 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2893, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2898, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64* %2, metadata !2899, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2900, metadata !DIExpression()), !dbg !2932
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2933
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2933
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2901, metadata !DIExpression()), !dbg !2932
  %7 = tail call i32* @__errno_location() #24, !dbg !2934
  %8 = load i32, i32* %7, align 4, !dbg !2934, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %8, metadata !2902, metadata !DIExpression()), !dbg !2932
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2935
  %10 = load i32, i32* %9, align 4, !dbg !2935, !tbaa !2103
  %11 = icmp ne i64* %2, null, !dbg !2936
  %12 = xor i1 %11, true, !dbg !2936
  %13 = zext i1 %12 to i32, !dbg !2936
  %14 = or i32 %10, %13, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %14, metadata !2903, metadata !DIExpression()), !dbg !2932
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2938
  %16 = load i32, i32* %15, align 8, !dbg !2938, !tbaa !2052
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2939
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2940
  %19 = load i8*, i8** %18, align 8, !dbg !2940, !tbaa !2126
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2941
  %21 = load i8*, i8** %20, align 8, !dbg !2941, !tbaa !2129
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2942
  %23 = add i64 %22, 1, !dbg !2943
  call void @llvm.dbg.value(metadata i64 %23, metadata !2904, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %23, metadata !2918, metadata !DIExpression()) #20, !dbg !2944
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %24, metadata !2905, metadata !DIExpression()), !dbg !2932
  %25 = load i32, i32* %15, align 8, !dbg !2947, !tbaa !2052
  %26 = load i8*, i8** %18, align 8, !dbg !2948, !tbaa !2126
  %27 = load i8*, i8** %20, align 8, !dbg !2949, !tbaa !2129
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2950
  store i32 %8, i32* %7, align 4, !dbg !2951, !tbaa !1343
  br i1 %11, label %29, label %30, !dbg !2952

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2953, !tbaa !2955
  br label %30, !dbg !2956

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2957
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2958 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2962, !tbaa !1250
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 1, metadata !2961, metadata !DIExpression()), !dbg !2963
  %2 = load i32, i32* @nslots, align 4, !dbg !2964, !tbaa !1343
  %3 = icmp sgt i32 %2, 1, !dbg !2967
  br i1 %3, label %4, label %12, !dbg !2968

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2961, metadata !DIExpression()), !dbg !2963
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2969
  %7 = load i8*, i8** %6, align 8, !dbg !2969, !tbaa !2970
  tail call void @free(i8* %7) #20, !dbg !2972
  %8 = add nuw nsw i64 %5, 1, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %8, metadata !2961, metadata !DIExpression()), !dbg !2963
  %9 = load i32, i32* @nslots, align 4, !dbg !2964, !tbaa !1343
  %10 = sext i32 %9 to i64, !dbg !2967
  %11 = icmp slt i64 %8, %10, !dbg !2967
  br i1 %11, label %4, label %12, !dbg !2968, !llvm.loop !2974

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2976
  %14 = load i8*, i8** %13, align 8, !dbg !2976, !tbaa !2970
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2978
  br i1 %15, label %17, label %16, !dbg !2979

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !2980
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2982, !tbaa !2983
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2984, !tbaa !2970
  br label %17, !dbg !2985

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2986
  br i1 %18, label %21, label %19, !dbg !2988

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2989
  tail call void @free(i8* %20) #20, !dbg !2991
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2992, !tbaa !1250
  br label %21, !dbg !2993

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2994, !tbaa !1343
  ret void, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2996 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8* %1, metadata !2999, metadata !DIExpression()), !dbg !3000
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3001
  ret i8* %3, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3007, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8* %1, metadata !3008, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i64 %2, metadata !3009, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3010, metadata !DIExpression()), !dbg !3022
  %5 = tail call i32* @__errno_location() #24, !dbg !3023
  %6 = load i32, i32* %5, align 4, !dbg !3023, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %6, metadata !3011, metadata !DIExpression()), !dbg !3022
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3024, !tbaa !1250
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3012, metadata !DIExpression()), !dbg !3022
  %8 = icmp slt i32 %0, 0, !dbg !3025
  br i1 %8, label %9, label %10, !dbg !3027

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3028
  unreachable, !dbg !3028

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3029, !tbaa !1343
  %12 = icmp sgt i32 %11, %0, !dbg !3030
  br i1 %12, label %34, label %13, !dbg !3031

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3032
  call void @llvm.dbg.value(metadata i1 %14, metadata !3013, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3016, metadata !DIExpression()), !dbg !3033
  %15 = icmp eq i32 %0, 2147483647, !dbg !3034
  br i1 %15, label %16, label %17, !dbg !3036

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3037
  unreachable, !dbg !3037

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3038
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3038
  %20 = add nuw nsw i32 %0, 1, !dbg !3039
  %21 = sext i32 %20 to i64, !dbg !3040
  %22 = shl nuw nsw i64 %21, 4, !dbg !3041
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3042
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3042
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3012, metadata !DIExpression()), !dbg !3022
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3043, !tbaa !1250
  br i1 %14, label %25, label %26, !dbg !3044

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3045, !tbaa.struct !3047
  br label %26, !dbg !3048

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3049, !tbaa !1343
  %28 = sext i32 %27 to i64, !dbg !3050
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3050
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3051
  %31 = sub nsw i32 %20, %27, !dbg !3052
  %32 = sext i32 %31 to i64, !dbg !3053
  %33 = shl nsw i64 %32, 4, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %30, metadata !2452, metadata !DIExpression()) #20, !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()) #20, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %33, metadata !2458, metadata !DIExpression()) #20, !dbg !3055
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3057
  store i32 %20, i32* @nslots, align 4, !dbg !3058, !tbaa !1343
  br label %34, !dbg !3059

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3022
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3012, metadata !DIExpression()), !dbg !3022
  %36 = zext i32 %0 to i64, !dbg !3060
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3061
  %38 = load i64, i64* %37, align 8, !dbg !3061, !tbaa !2983
  call void @llvm.dbg.value(metadata i64 %38, metadata !3017, metadata !DIExpression()), !dbg !3062
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3063
  %40 = load i8*, i8** %39, align 8, !dbg !3063, !tbaa !2970
  call void @llvm.dbg.value(metadata i8* %40, metadata !3019, metadata !DIExpression()), !dbg !3062
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3064
  %42 = load i32, i32* %41, align 4, !dbg !3064, !tbaa !2103
  %43 = or i32 %42, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %43, metadata !3020, metadata !DIExpression()), !dbg !3062
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3066
  %45 = load i32, i32* %44, align 8, !dbg !3066, !tbaa !2052
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3067
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3068
  %48 = load i8*, i8** %47, align 8, !dbg !3068, !tbaa !2126
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3069
  %50 = load i8*, i8** %49, align 8, !dbg !3069, !tbaa !2129
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %51, metadata !3021, metadata !DIExpression()), !dbg !3062
  %52 = icmp ugt i64 %38, %51, !dbg !3071
  br i1 %52, label %63, label %53, !dbg !3073

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %54, metadata !3017, metadata !DIExpression()), !dbg !3062
  store i64 %54, i64* %37, align 8, !dbg !3076, !tbaa !2983
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3077
  br i1 %55, label %57, label %56, !dbg !3079

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3080
  br label %57, !dbg !3080

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2918, metadata !DIExpression()) #20, !dbg !3081
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %58, metadata !3019, metadata !DIExpression()), !dbg !3062
  store i8* %58, i8** %39, align 8, !dbg !3084, !tbaa !2970
  %59 = load i32, i32* %44, align 8, !dbg !3085, !tbaa !2052
  %60 = load i8*, i8** %47, align 8, !dbg !3086, !tbaa !2126
  %61 = load i8*, i8** %49, align 8, !dbg !3087, !tbaa !2129
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3088
  br label %63, !dbg !3089

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3062
  call void @llvm.dbg.value(metadata i8* %64, metadata !3019, metadata !DIExpression()), !dbg !3062
  store i32 %6, i32* %5, align 4, !dbg !3090, !tbaa !1343
  ret i8* %64, !dbg !3091
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3092 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3096, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8* %1, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %2, metadata !3098, metadata !DIExpression()), !dbg !3099
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3100
  ret i8* %4, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3102 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i32 0, metadata !2998, metadata !DIExpression()) #20, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %0, metadata !2999, metadata !DIExpression()) #20, !dbg !3106
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3108
  ret i8* %2, !dbg !3109
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3110 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %1, metadata !3115, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 0, metadata !3096, metadata !DIExpression()) #20, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()) #20, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()) #20, !dbg !3117
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3119
  ret i8* %3, !dbg !3120
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3121 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 %1, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8* %2, metadata !3125, metadata !DIExpression()), !dbg !3127
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3128
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3128
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3126, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i32 %1, metadata !3130, metadata !DIExpression()) #20, !dbg !3136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3135, metadata !DIExpression()) #20, !dbg !3138
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3138, !alias.scope !3139
  %6 = icmp eq i32 %1, 10, !dbg !3142
  br i1 %6, label %7, label %8, !dbg !3144

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3145, !noalias !3139
  unreachable, !dbg !3145

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3146
  store i32 %1, i32* %9, align 8, !dbg !3147, !tbaa !2052, !alias.scope !3139
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3148
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3149
  ret i8* %10, !dbg !3150
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3151 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3155, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 %1, metadata !3156, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8* %2, metadata !3157, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %3, metadata !3158, metadata !DIExpression()), !dbg !3160
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3161
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3161
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3159, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 %1, metadata !3130, metadata !DIExpression()) #20, !dbg !3163
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3135, metadata !DIExpression()) #20, !dbg !3165
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3165, !alias.scope !3166
  %7 = icmp eq i32 %1, 10, !dbg !3169
  br i1 %7, label %8, label %9, !dbg !3170

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3171, !noalias !3166
  unreachable, !dbg !3171

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3172
  store i32 %1, i32* %10, align 8, !dbg !3173, !tbaa !2052, !alias.scope !3166
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3175
  ret i8* %11, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3177 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3135, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3126, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i32 %0, metadata !3179, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8* %1, metadata !3180, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32 0, metadata !3123, metadata !DIExpression()) #20, !dbg !3186
  call void @llvm.dbg.value(metadata i32 %0, metadata !3124, metadata !DIExpression()) #20, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3125, metadata !DIExpression()) #20, !dbg !3186
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3187
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3187
  call void @llvm.dbg.value(metadata i32 %0, metadata !3130, metadata !DIExpression()) #20, !dbg !3188
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3181, !alias.scope !3189
  %5 = icmp eq i32 %0, 10, !dbg !3192
  br i1 %5, label %6, label %7, !dbg !3193

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3194, !noalias !3189
  unreachable, !dbg !3194

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3195
  store i32 %0, i32* %8, align 8, !dbg !3196, !tbaa !2052, !alias.scope !3189
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3198
  ret i8* %9, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3200 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3135, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3159, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i32 %0, metadata !3204, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %2, metadata !3206, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 0, metadata !3155, metadata !DIExpression()) #20, !dbg !3212
  call void @llvm.dbg.value(metadata i32 %0, metadata !3156, metadata !DIExpression()) #20, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %1, metadata !3157, metadata !DIExpression()) #20, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %2, metadata !3158, metadata !DIExpression()) #20, !dbg !3212
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3213
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3213
  call void @llvm.dbg.value(metadata i32 %0, metadata !3130, metadata !DIExpression()) #20, !dbg !3214
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3207, !alias.scope !3215
  %6 = icmp eq i32 %0, 10, !dbg !3218
  br i1 %6, label %7, label %8, !dbg !3219

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3220, !noalias !3215
  unreachable, !dbg !3220

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3221
  store i32 %0, i32* %9, align 8, !dbg !3222, !tbaa !2052, !alias.scope !3215
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3223
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3224
  ret i8* %10, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3226 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3230, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3231, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8 %2, metadata !3232, metadata !DIExpression()), !dbg !3234
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3235
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3235
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3233, metadata !DIExpression()), !dbg !3236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3237, !tbaa.struct !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2070, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 %2, metadata !2071, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 1, metadata !2072, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 %2, metadata !2073, metadata !DIExpression()), !dbg !3239
  %6 = lshr i8 %2, 5, !dbg !3241
  %7 = zext i8 %6 to i64, !dbg !3241
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3242
  call void @llvm.dbg.value(metadata i32* %8, metadata !2074, metadata !DIExpression()), !dbg !3239
  %9 = and i8 %2, 31, !dbg !3243
  %10 = zext i8 %9 to i32, !dbg !3243
  call void @llvm.dbg.value(metadata i32 %10, metadata !2076, metadata !DIExpression()), !dbg !3239
  %11 = load i32, i32* %8, align 4, !dbg !3244, !tbaa !1343
  %12 = lshr i32 %11, %10, !dbg !3245
  %13 = and i32 %12, 1, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %13, metadata !2077, metadata !DIExpression()), !dbg !3239
  %14 = xor i32 %13, 1, !dbg !3247
  %15 = shl i32 %14, %10, !dbg !3248
  %16 = xor i32 %15, %11, !dbg !3249
  store i32 %16, i32* %8, align 4, !dbg !3249, !tbaa !1343
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3250
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3251
  ret i8* %17, !dbg !3252
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3253 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3233, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 %1, metadata !3258, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !3230, metadata !DIExpression()) #20, !dbg !3262
  call void @llvm.dbg.value(metadata i64 -1, metadata !3231, metadata !DIExpression()) #20, !dbg !3262
  call void @llvm.dbg.value(metadata i8 %1, metadata !3232, metadata !DIExpression()) #20, !dbg !3262
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3263
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3264, !tbaa.struct !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2070, metadata !DIExpression()) #20, !dbg !3265
  call void @llvm.dbg.value(metadata i8 %1, metadata !2071, metadata !DIExpression()) #20, !dbg !3265
  call void @llvm.dbg.value(metadata i32 1, metadata !2072, metadata !DIExpression()) #20, !dbg !3265
  call void @llvm.dbg.value(metadata i8 %1, metadata !2073, metadata !DIExpression()) #20, !dbg !3265
  %5 = lshr i8 %1, 5, !dbg !3267
  %6 = zext i8 %5 to i64, !dbg !3267
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3268
  call void @llvm.dbg.value(metadata i32* %7, metadata !2074, metadata !DIExpression()) #20, !dbg !3265
  %8 = and i8 %1, 31, !dbg !3269
  %9 = zext i8 %8 to i32, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %9, metadata !2076, metadata !DIExpression()) #20, !dbg !3265
  %10 = load i32, i32* %7, align 4, !dbg !3270, !tbaa !1343
  %11 = lshr i32 %10, %9, !dbg !3271
  %12 = and i32 %11, 1, !dbg !3272
  call void @llvm.dbg.value(metadata i32 %12, metadata !2077, metadata !DIExpression()) #20, !dbg !3265
  %13 = xor i32 %12, 1, !dbg !3273
  %14 = shl i32 %13, %9, !dbg !3274
  %15 = xor i32 %14, %10, !dbg !3275
  store i32 %15, i32* %7, align 4, !dbg !3275, !tbaa !1343
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3277
  ret i8* %16, !dbg !3278
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3279 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3233, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()) #20, !dbg !3286
  call void @llvm.dbg.value(metadata i8 58, metadata !3258, metadata !DIExpression()) #20, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3230, metadata !DIExpression()) #20, !dbg !3287
  call void @llvm.dbg.value(metadata i64 -1, metadata !3231, metadata !DIExpression()) #20, !dbg !3287
  call void @llvm.dbg.value(metadata i8 58, metadata !3232, metadata !DIExpression()) #20, !dbg !3287
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3288
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3288
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3289, !tbaa.struct !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2070, metadata !DIExpression()) #20, !dbg !3290
  call void @llvm.dbg.value(metadata i8 58, metadata !2071, metadata !DIExpression()) #20, !dbg !3290
  call void @llvm.dbg.value(metadata i32 1, metadata !2072, metadata !DIExpression()) #20, !dbg !3290
  call void @llvm.dbg.value(metadata i8 58, metadata !2073, metadata !DIExpression()) #20, !dbg !3290
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3292
  call void @llvm.dbg.value(metadata i32* %4, metadata !2074, metadata !DIExpression()) #20, !dbg !3290
  call void @llvm.dbg.value(metadata i32 26, metadata !2076, metadata !DIExpression()) #20, !dbg !3290
  %5 = load i32, i32* %4, align 4, !dbg !3293, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %5, metadata !2077, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3290
  %6 = or i32 %5, 67108864, !dbg !3294
  store i32 %6, i32* %4, align 4, !dbg !3294, !tbaa !1343
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3295
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3296
  ret i8* %7, !dbg !3297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3298 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3233, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8* %0, metadata !3300, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8* %0, metadata !3230, metadata !DIExpression()) #20, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %1, metadata !3231, metadata !DIExpression()) #20, !dbg !3305
  call void @llvm.dbg.value(metadata i8 58, metadata !3232, metadata !DIExpression()) #20, !dbg !3305
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3306
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3307, !tbaa.struct !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2070, metadata !DIExpression()) #20, !dbg !3308
  call void @llvm.dbg.value(metadata i8 58, metadata !2071, metadata !DIExpression()) #20, !dbg !3308
  call void @llvm.dbg.value(metadata i32 1, metadata !2072, metadata !DIExpression()) #20, !dbg !3308
  call void @llvm.dbg.value(metadata i8 58, metadata !2073, metadata !DIExpression()) #20, !dbg !3308
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3310
  call void @llvm.dbg.value(metadata i32* %5, metadata !2074, metadata !DIExpression()) #20, !dbg !3308
  call void @llvm.dbg.value(metadata i32 26, metadata !2076, metadata !DIExpression()) #20, !dbg !3308
  %6 = load i32, i32* %5, align 4, !dbg !3311, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %6, metadata !2077, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3308
  %7 = or i32 %6, 67108864, !dbg !3312
  store i32 %7, i32* %5, align 4, !dbg !3312, !tbaa !1343
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3313
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3314
  ret i8* %8, !dbg !3315
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3316 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3135, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3322
  call void @llvm.dbg.value(metadata i32 %0, metadata !3318, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 %1, metadata !3319, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8* %2, metadata !3320, metadata !DIExpression()), !dbg !3324
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3325
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3321, metadata !DIExpression()), !dbg !3326
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3327
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3327
  call void @llvm.dbg.value(metadata i32 %1, metadata !3130, metadata !DIExpression()) #20, !dbg !3328
  call void @llvm.dbg.value(metadata i32 0, metadata !3135, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3328
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3322, !alias.scope !3329
  %8 = icmp eq i32 %1, 10, !dbg !3332
  br i1 %8, label %9, label %10, !dbg !3333

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3334, !noalias !3329
  unreachable, !dbg !3334

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3135, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3328
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3327
  store i32 %1, i32* %11, align 8, !dbg !3327, !tbaa.struct !3238
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3327
  %13 = bitcast i32* %12 to i8*, !dbg !3327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3327, !tbaa.struct !3238
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3327
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2070, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8 58, metadata !2071, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 1, metadata !2072, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i8 58, metadata !2073, metadata !DIExpression()), !dbg !3335
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3337
  call void @llvm.dbg.value(metadata i32* %14, metadata !2074, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i32 26, metadata !2076, metadata !DIExpression()), !dbg !3335
  %15 = load i32, i32* %14, align 4, !dbg !3338, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %15, metadata !2077, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3335
  %16 = or i32 %15, 67108864, !dbg !3339
  store i32 %16, i32* %14, align 4, !dbg !3339, !tbaa !1343
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3340
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3341
  ret i8* %17, !dbg !3342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3343 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3351, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %1, metadata !3348, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %2, metadata !3349, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %3, metadata !3350, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %0, metadata !3356, metadata !DIExpression()) #20, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %1, metadata !3357, metadata !DIExpression()) #20, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %2, metadata !3358, metadata !DIExpression()) #20, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %3, metadata !3359, metadata !DIExpression()) #20, !dbg !3364
  call void @llvm.dbg.value(metadata i64 -1, metadata !3360, metadata !DIExpression()) #20, !dbg !3364
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3365
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3366, !tbaa.struct !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()) #20, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %1, metadata !2111, metadata !DIExpression()) #20, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %2, metadata !2112, metadata !DIExpression()) #20, !dbg !3367
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()) #20, !dbg !3367
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3369
  store i32 10, i32* %7, align 8, !dbg !3370, !tbaa !2052
  %8 = icmp ne i8* %1, null, !dbg !3371
  %9 = icmp ne i8* %2, null, !dbg !3372
  %10 = and i1 %8, %9, !dbg !3373
  br i1 %10, label %12, label %11, !dbg !3373

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3374
  unreachable, !dbg !3374

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3375
  store i8* %1, i8** %13, align 8, !dbg !3376, !tbaa !2126
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3377
  store i8* %2, i8** %14, align 8, !dbg !3378, !tbaa !2129
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3379
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3380
  ret i8* %15, !dbg !3381
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3352 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3356, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %1, metadata !3357, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %2, metadata !3358, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %3, metadata !3359, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %4, metadata !3360, metadata !DIExpression()), !dbg !3382
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3383
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3383
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3351, metadata !DIExpression()), !dbg !3384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3385, !tbaa.struct !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2110, metadata !DIExpression()) #20, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %1, metadata !2111, metadata !DIExpression()) #20, !dbg !3386
  call void @llvm.dbg.value(metadata i8* %2, metadata !2112, metadata !DIExpression()) #20, !dbg !3386
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2110, metadata !DIExpression()) #20, !dbg !3386
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3388
  store i32 10, i32* %8, align 8, !dbg !3389, !tbaa !2052
  %9 = icmp ne i8* %1, null, !dbg !3390
  %10 = icmp ne i8* %2, null, !dbg !3391
  %11 = and i1 %9, %10, !dbg !3392
  br i1 %11, label %13, label %12, !dbg !3392

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3393
  unreachable, !dbg !3393

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3394
  store i8* %1, i8** %14, align 8, !dbg !3395, !tbaa !2126
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3396
  store i8* %2, i8** %15, align 8, !dbg !3397, !tbaa !2129
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3398
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3399
  ret i8* %16, !dbg !3400
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3401 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3351, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %0, metadata !3405, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i8* %1, metadata !3406, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i8* %2, metadata !3407, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()) #20, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %0, metadata !3348, metadata !DIExpression()) #20, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %1, metadata !3349, metadata !DIExpression()) #20, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %2, metadata !3350, metadata !DIExpression()) #20, !dbg !3412
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #20, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %0, metadata !3357, metadata !DIExpression()) #20, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %1, metadata !3358, metadata !DIExpression()) #20, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %2, metadata !3359, metadata !DIExpression()) #20, !dbg !3413
  call void @llvm.dbg.value(metadata i64 -1, metadata !3360, metadata !DIExpression()) #20, !dbg !3413
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3414
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3415, !tbaa.struct !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2110, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !2112, metadata !DIExpression()) #20, !dbg !3416
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2110, metadata !DIExpression()) #20, !dbg !3416
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3418
  store i32 10, i32* %6, align 8, !dbg !3419, !tbaa !2052
  %7 = icmp ne i8* %0, null, !dbg !3420
  %8 = icmp ne i8* %1, null, !dbg !3421
  %9 = and i1 %7, %8, !dbg !3422
  br i1 %9, label %11, label %10, !dbg !3422

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3423
  unreachable, !dbg !3423

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3424
  store i8* %0, i8** %12, align 8, !dbg !3425, !tbaa !2126
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3426
  store i8* %1, i8** %13, align 8, !dbg !3427, !tbaa !2129
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3428
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3429
  ret i8* %14, !dbg !3430
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3431 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3351, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8* %0, metadata !3435, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8* %1, metadata !3436, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i8* %2, metadata !3437, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %3, metadata !3438, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i32 0, metadata !3356, metadata !DIExpression()) #20, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %0, metadata !3357, metadata !DIExpression()) #20, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %1, metadata !3358, metadata !DIExpression()) #20, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %2, metadata !3359, metadata !DIExpression()) #20, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %3, metadata !3360, metadata !DIExpression()) #20, !dbg !3442
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3443
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3444, !tbaa.struct !3238
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()) #20, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()) #20, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %1, metadata !2112, metadata !DIExpression()) #20, !dbg !3445
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2110, metadata !DIExpression()) #20, !dbg !3445
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3447
  store i32 10, i32* %7, align 8, !dbg !3448, !tbaa !2052
  %8 = icmp ne i8* %0, null, !dbg !3449
  %9 = icmp ne i8* %1, null, !dbg !3450
  %10 = and i1 %8, %9, !dbg !3451
  br i1 %10, label %12, label %11, !dbg !3451

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3452
  unreachable, !dbg !3452

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3453
  store i8* %0, i8** %13, align 8, !dbg !3454, !tbaa !2126
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3455
  store i8* %1, i8** %14, align 8, !dbg !3456, !tbaa !2129
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3457
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3458
  ret i8* %15, !dbg !3459
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %1, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %2, metadata !3466, metadata !DIExpression()), !dbg !3467
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3468
  ret i8* %4, !dbg !3469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3474, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %1, metadata !3475, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()) #20, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %0, metadata !3465, metadata !DIExpression()) #20, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %1, metadata !3466, metadata !DIExpression()) #20, !dbg !3477
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3479
  ret i8* %3, !dbg !3480
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3481 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3485, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8* %1, metadata !3486, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()) #20, !dbg !3488
  call void @llvm.dbg.value(metadata i8* %1, metadata !3465, metadata !DIExpression()) #20, !dbg !3488
  call void @llvm.dbg.value(metadata i64 -1, metadata !3466, metadata !DIExpression()) #20, !dbg !3488
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3490
  ret i8* %3, !dbg !3491
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3492 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3496, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 0, metadata !3485, metadata !DIExpression()) #20, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %0, metadata !3486, metadata !DIExpression()) #20, !dbg !3498
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()) #20, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %0, metadata !3465, metadata !DIExpression()) #20, !dbg !3500
  call void @llvm.dbg.value(metadata i64 -1, metadata !3466, metadata !DIExpression()) #20, !dbg !3500
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3502
  ret i8* %2, !dbg !3503
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32 %0, i8* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !3504 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3508, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i8* %1, metadata !3509, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %2, metadata !3510, metadata !DIExpression()), !dbg !3517
  br label %4, !dbg !3518

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3519

6:                                                ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !3510, metadata !DIExpression()), !dbg !3517
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #20, !dbg !3520
  call void @llvm.dbg.value(metadata i64 %7, metadata !3511, metadata !DIExpression()), !dbg !3521
  %8 = icmp sgt i64 %7, -1, !dbg !3522
  br i1 %8, label %17, label %9, !dbg !3519

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3524
  %11 = load i32, i32* %10, align 4, !dbg !3524, !tbaa !1343
  %12 = icmp eq i32 %11, 4, !dbg !3524
  br i1 %12, label %6, label %13, !dbg !3526, !llvm.loop !3527

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3530
  %15 = icmp ugt i64 %5, 2146435072, !dbg !3532
  %16 = and i1 %15, %14, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %5, metadata !3510, metadata !DIExpression()), !dbg !3517
  br i1 %16, label %4, label %17

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3534
}

; Function Attrs: nofree
declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_write(i32 %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #19 !dbg !3535 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3538, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8* %1, metadata !3539, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %2, metadata !3540, metadata !DIExpression()), !dbg !3545
  br label %4, !dbg !3546

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3547

6:                                                ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !3540, metadata !DIExpression()), !dbg !3545
  %7 = tail call i64 @write(i32 %0, i8* %1, i64 %5) #20, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %7, metadata !3541, metadata !DIExpression()), !dbg !3549
  %8 = icmp sgt i64 %7, -1, !dbg !3550
  br i1 %8, label %17, label %9, !dbg !3547

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3552
  %11 = load i32, i32* %10, align 4, !dbg !3552, !tbaa !1343
  %12 = icmp eq i32 %11, 4, !dbg !3552
  br i1 %12, label %6, label %13, !dbg !3554, !llvm.loop !3555

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3558
  %15 = icmp ugt i64 %5, 2146435072, !dbg !3560
  %16 = and i1 %15, %14, !dbg !3561
  call void @llvm.dbg.value(metadata i64 %5, metadata !3540, metadata !DIExpression()), !dbg !3545
  br i1 %16, label %4, label %17

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3562
}

; Function Attrs: nofree
declare !dbg !558 i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3563 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3570, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %1, metadata !3571, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %2, metadata !3572, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %3, metadata !3573, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8** %4, metadata !3574, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %5, metadata !3575, metadata !DIExpression()), !dbg !3576
  %7 = icmp eq i8* %1, null, !dbg !3577
  br i1 %7, label %10, label %8, !dbg !3579

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3580
  br label %12, !dbg !3580

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.95, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3581
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i64 0, i64 0), i32 5) #20, !dbg !3582
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3582
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3583
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.98, i64 0, i64 0), i32 5) #20, !dbg !3584
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.99, i64 0, i64 0)) #20, !dbg !3584
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3585
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
  ], !dbg !3586

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.100, i64 0, i64 0), i32 5) #20, !dbg !3587
  %21 = load i8*, i8** %4, align 8, !dbg !3587, !tbaa !1250
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3587
  br label %147, !dbg !3589

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.101, i64 0, i64 0), i32 5) #20, !dbg !3590
  %25 = load i8*, i8** %4, align 8, !dbg !3590, !tbaa !1250
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3590
  %27 = load i8*, i8** %26, align 8, !dbg !3590, !tbaa !1250
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3590
  br label %147, !dbg !3591

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.102, i64 0, i64 0), i32 5) #20, !dbg !3592
  %31 = load i8*, i8** %4, align 8, !dbg !3592, !tbaa !1250
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3592
  %33 = load i8*, i8** %32, align 8, !dbg !3592, !tbaa !1250
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3592
  %35 = load i8*, i8** %34, align 8, !dbg !3592, !tbaa !1250
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3592
  br label %147, !dbg !3593

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.103, i64 0, i64 0), i32 5) #20, !dbg !3594
  %39 = load i8*, i8** %4, align 8, !dbg !3594, !tbaa !1250
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3594
  %41 = load i8*, i8** %40, align 8, !dbg !3594, !tbaa !1250
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3594
  %43 = load i8*, i8** %42, align 8, !dbg !3594, !tbaa !1250
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3594
  %45 = load i8*, i8** %44, align 8, !dbg !3594, !tbaa !1250
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3594
  br label %147, !dbg !3595

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.104, i64 0, i64 0), i32 5) #20, !dbg !3596
  %49 = load i8*, i8** %4, align 8, !dbg !3596, !tbaa !1250
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3596
  %51 = load i8*, i8** %50, align 8, !dbg !3596, !tbaa !1250
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3596
  %53 = load i8*, i8** %52, align 8, !dbg !3596, !tbaa !1250
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3596
  %55 = load i8*, i8** %54, align 8, !dbg !3596, !tbaa !1250
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3596
  %57 = load i8*, i8** %56, align 8, !dbg !3596, !tbaa !1250
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3596
  br label %147, !dbg !3597

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.105, i64 0, i64 0), i32 5) #20, !dbg !3598
  %61 = load i8*, i8** %4, align 8, !dbg !3598, !tbaa !1250
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3598
  %63 = load i8*, i8** %62, align 8, !dbg !3598, !tbaa !1250
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3598
  %65 = load i8*, i8** %64, align 8, !dbg !3598, !tbaa !1250
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3598
  %67 = load i8*, i8** %66, align 8, !dbg !3598, !tbaa !1250
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3598
  %69 = load i8*, i8** %68, align 8, !dbg !3598, !tbaa !1250
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3598
  %71 = load i8*, i8** %70, align 8, !dbg !3598, !tbaa !1250
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3598
  br label %147, !dbg !3599

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.106, i64 0, i64 0), i32 5) #20, !dbg !3600
  %75 = load i8*, i8** %4, align 8, !dbg !3600, !tbaa !1250
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3600
  %77 = load i8*, i8** %76, align 8, !dbg !3600, !tbaa !1250
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3600
  %79 = load i8*, i8** %78, align 8, !dbg !3600, !tbaa !1250
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3600
  %81 = load i8*, i8** %80, align 8, !dbg !3600, !tbaa !1250
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3600
  %83 = load i8*, i8** %82, align 8, !dbg !3600, !tbaa !1250
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3600
  %85 = load i8*, i8** %84, align 8, !dbg !3600, !tbaa !1250
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3600
  %87 = load i8*, i8** %86, align 8, !dbg !3600, !tbaa !1250
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3600
  br label %147, !dbg !3601

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.107, i64 0, i64 0), i32 5) #20, !dbg !3602
  %91 = load i8*, i8** %4, align 8, !dbg !3602, !tbaa !1250
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3602
  %93 = load i8*, i8** %92, align 8, !dbg !3602, !tbaa !1250
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3602
  %95 = load i8*, i8** %94, align 8, !dbg !3602, !tbaa !1250
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3602
  %97 = load i8*, i8** %96, align 8, !dbg !3602, !tbaa !1250
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3602
  %99 = load i8*, i8** %98, align 8, !dbg !3602, !tbaa !1250
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3602
  %101 = load i8*, i8** %100, align 8, !dbg !3602, !tbaa !1250
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3602
  %103 = load i8*, i8** %102, align 8, !dbg !3602, !tbaa !1250
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3602
  %105 = load i8*, i8** %104, align 8, !dbg !3602, !tbaa !1250
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3602
  br label %147, !dbg !3603

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.108, i64 0, i64 0), i32 5) #20, !dbg !3604
  %109 = load i8*, i8** %4, align 8, !dbg !3604, !tbaa !1250
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3604
  %111 = load i8*, i8** %110, align 8, !dbg !3604, !tbaa !1250
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3604
  %113 = load i8*, i8** %112, align 8, !dbg !3604, !tbaa !1250
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3604
  %115 = load i8*, i8** %114, align 8, !dbg !3604, !tbaa !1250
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3604
  %117 = load i8*, i8** %116, align 8, !dbg !3604, !tbaa !1250
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3604
  %119 = load i8*, i8** %118, align 8, !dbg !3604, !tbaa !1250
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3604
  %121 = load i8*, i8** %120, align 8, !dbg !3604, !tbaa !1250
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3604
  %123 = load i8*, i8** %122, align 8, !dbg !3604, !tbaa !1250
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3604
  %125 = load i8*, i8** %124, align 8, !dbg !3604, !tbaa !1250
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3604
  br label %147, !dbg !3605

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.109, i64 0, i64 0), i32 5) #20, !dbg !3606
  %129 = load i8*, i8** %4, align 8, !dbg !3606, !tbaa !1250
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3606
  %131 = load i8*, i8** %130, align 8, !dbg !3606, !tbaa !1250
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3606
  %133 = load i8*, i8** %132, align 8, !dbg !3606, !tbaa !1250
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3606
  %135 = load i8*, i8** %134, align 8, !dbg !3606, !tbaa !1250
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3606
  %137 = load i8*, i8** %136, align 8, !dbg !3606, !tbaa !1250
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3606
  %139 = load i8*, i8** %138, align 8, !dbg !3606, !tbaa !1250
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3606
  %141 = load i8*, i8** %140, align 8, !dbg !3606, !tbaa !1250
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3606
  %143 = load i8*, i8** %142, align 8, !dbg !3606, !tbaa !1250
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3606
  %145 = load i8*, i8** %144, align 8, !dbg !3606, !tbaa !1250
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3606
  br label %147, !dbg !3607

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3608
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3609 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3613, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8* %1, metadata !3614, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8* %2, metadata !3615, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8* %3, metadata !3616, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8** %4, metadata !3617, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 0, metadata !3618, metadata !DIExpression()), !dbg !3619
  br label %6, !dbg !3620

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3622
  call void @llvm.dbg.value(metadata i64 %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3623
  %9 = load i8*, i8** %8, align 8, !dbg !3623, !tbaa !1250
  %10 = icmp eq i8* %9, null, !dbg !3625
  %11 = add i64 %7, 1, !dbg !3626
  call void @llvm.dbg.value(metadata i64 %11, metadata !3618, metadata !DIExpression()), !dbg !3619
  br i1 %10, label %12, label %6, !dbg !3625, !llvm.loop !3627

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3629
  ret void, !dbg !3630
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3631 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3642, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %1, metadata !3643, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %2, metadata !3644, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i8* %3, metadata !3645, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3646, metadata !DIExpression()), !dbg !3650
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3651
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3651
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3648, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i64 0, metadata !3647, metadata !DIExpression()), !dbg !3650
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3653
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3653
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3653
  %11 = load i32, i32* %8, align 8, !dbg !3656
  %12 = icmp ult i32 %11, 41, !dbg !3656
  br i1 %12, label %13, label %18, !dbg !3656

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3656
  %15 = zext i32 %11 to i64, !dbg !3656
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3656
  %17 = add nuw nsw i32 %11, 8, !dbg !3656
  store i32 %17, i32* %8, align 8, !dbg !3656
  br label %21, !dbg !3656

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3656
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3656
  store i8* %20, i8** %9, align 8, !dbg !3656
  br label %21, !dbg !3656

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3656
  %25 = load i8*, i8** %24, align 8, !dbg !3656
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3657
  store i8* %25, i8** %26, align 16, !dbg !3658, !tbaa !1250
  %27 = icmp eq i8* %25, null, !dbg !3659
  br i1 %27, label %30, label %28, !dbg !3660

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3647, metadata !DIExpression()), !dbg !3650
  %29 = icmp ult i32 %22, 41, !dbg !3656
  br i1 %29, label %35, label %32, !dbg !3656

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3661
  call void @llvm.dbg.value(metadata i64 %31, metadata !3647, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %31, metadata !3647, metadata !DIExpression()), !dbg !3650
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3662
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3663
  ret void, !dbg !3663

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3656
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3656
  store i8* %34, i8** %9, align 8, !dbg !3656
  br label %40, !dbg !3656

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3656
  %37 = zext i32 %22 to i64, !dbg !3656
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3656
  %39 = add nuw nsw i32 %22, 8, !dbg !3656
  store i32 %39, i32* %8, align 8, !dbg !3656
  br label %40, !dbg !3656

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3656
  %44 = load i8*, i8** %43, align 8, !dbg !3656
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3657
  store i8* %44, i8** %45, align 8, !dbg !3658, !tbaa !1250
  %46 = icmp eq i8* %44, null, !dbg !3659
  br i1 %46, label %30, label %47, !dbg !3660

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3647, metadata !DIExpression()), !dbg !3650
  %48 = icmp ult i32 %41, 41, !dbg !3656
  br i1 %48, label %52, label %49, !dbg !3656

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3656
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3656
  store i8* %51, i8** %9, align 8, !dbg !3656
  br label %57, !dbg !3656

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3656
  %54 = zext i32 %41 to i64, !dbg !3656
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3656
  %56 = add nuw nsw i32 %41, 8, !dbg !3656
  store i32 %56, i32* %8, align 8, !dbg !3656
  br label %57, !dbg !3656

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3656
  %61 = load i8*, i8** %60, align 8, !dbg !3656
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3657
  store i8* %61, i8** %62, align 16, !dbg !3658, !tbaa !1250
  %63 = icmp eq i8* %61, null, !dbg !3659
  br i1 %63, label %30, label %64, !dbg !3660

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3647, metadata !DIExpression()), !dbg !3650
  %65 = icmp ult i32 %58, 41, !dbg !3656
  br i1 %65, label %69, label %66, !dbg !3656

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3656
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3656
  store i8* %68, i8** %9, align 8, !dbg !3656
  br label %74, !dbg !3656

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3656
  %71 = zext i32 %58 to i64, !dbg !3656
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3656
  %73 = add nuw nsw i32 %58, 8, !dbg !3656
  store i32 %73, i32* %8, align 8, !dbg !3656
  br label %74, !dbg !3656

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3656
  %78 = load i8*, i8** %77, align 8, !dbg !3656
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3657
  store i8* %78, i8** %79, align 8, !dbg !3658, !tbaa !1250
  %80 = icmp eq i8* %78, null, !dbg !3659
  br i1 %80, label %30, label %81, !dbg !3660

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3647, metadata !DIExpression()), !dbg !3650
  %82 = icmp ult i32 %75, 41, !dbg !3656
  br i1 %82, label %86, label %83, !dbg !3656

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3656
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3656
  store i8* %85, i8** %9, align 8, !dbg !3656
  br label %91, !dbg !3656

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3656
  %88 = zext i32 %75 to i64, !dbg !3656
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3656
  %90 = add nuw nsw i32 %75, 8, !dbg !3656
  store i32 %90, i32* %8, align 8, !dbg !3656
  br label %91, !dbg !3656

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3656
  %95 = load i8*, i8** %94, align 8, !dbg !3656
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3657
  store i8* %95, i8** %96, align 16, !dbg !3658, !tbaa !1250
  %97 = icmp eq i8* %95, null, !dbg !3659
  br i1 %97, label %30, label %98, !dbg !3660

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3647, metadata !DIExpression()), !dbg !3650
  %99 = icmp ult i32 %92, 41, !dbg !3656
  br i1 %99, label %103, label %100, !dbg !3656

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3656
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3656
  store i8* %102, i8** %9, align 8, !dbg !3656
  br label %108, !dbg !3656

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3656
  %105 = zext i32 %92 to i64, !dbg !3656
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3656
  %107 = add nuw nsw i32 %92, 8, !dbg !3656
  store i32 %107, i32* %8, align 8, !dbg !3656
  br label %108, !dbg !3656

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3656
  %111 = load i8*, i8** %110, align 8, !dbg !3656
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3657
  store i8* %111, i8** %112, align 8, !dbg !3658, !tbaa !1250
  %113 = icmp eq i8* %111, null, !dbg !3659
  br i1 %113, label %30, label %114, !dbg !3660

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3647, metadata !DIExpression()), !dbg !3650
  %115 = load i8*, i8** %9, align 8, !dbg !3656
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3656
  store i8* %116, i8** %9, align 8, !dbg !3656
  %117 = bitcast i8* %115 to i8**, !dbg !3656
  %118 = load i8*, i8** %117, align 8, !dbg !3656
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3657
  store i8* %118, i8** %119, align 16, !dbg !3658, !tbaa !1250
  %120 = icmp eq i8* %118, null, !dbg !3659
  br i1 %120, label %30, label %121, !dbg !3660

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3647, metadata !DIExpression()), !dbg !3650
  %122 = load i8*, i8** %9, align 8, !dbg !3656
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3656
  store i8* %123, i8** %9, align 8, !dbg !3656
  %124 = bitcast i8* %122 to i8**, !dbg !3656
  %125 = load i8*, i8** %124, align 8, !dbg !3656
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3657
  store i8* %125, i8** %126, align 8, !dbg !3658, !tbaa !1250
  %127 = icmp eq i8* %125, null, !dbg !3659
  br i1 %127, label %30, label %128, !dbg !3660

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3647, metadata !DIExpression()), !dbg !3650
  %129 = load i8*, i8** %9, align 8, !dbg !3656
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3656
  store i8* %130, i8** %9, align 8, !dbg !3656
  %131 = bitcast i8* %129 to i8**, !dbg !3656
  %132 = load i8*, i8** %131, align 8, !dbg !3656
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3657
  store i8* %132, i8** %133, align 16, !dbg !3658, !tbaa !1250
  %134 = icmp eq i8* %132, null, !dbg !3659
  br i1 %134, label %30, label %135, !dbg !3660

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3647, metadata !DIExpression()), !dbg !3650
  %136 = load i8*, i8** %9, align 8, !dbg !3656
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3656
  store i8* %137, i8** %9, align 8, !dbg !3656
  %138 = bitcast i8* %136 to i8**, !dbg !3656
  %139 = load i8*, i8** %138, align 8, !dbg !3656
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3657
  store i8* %139, i8** %140, align 8, !dbg !3658, !tbaa !1250
  %141 = icmp eq i8* %139, null, !dbg !3659
  %142 = select i1 %141, i64 9, i64 10, !dbg !3660
  br label %30, !dbg !3660
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3664 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3668, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %1, metadata !3669, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i8* %3, metadata !3671, metadata !DIExpression()), !dbg !3678
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3679
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3679
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3672, metadata !DIExpression()), !dbg !3680
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3681
  call void @llvm.va_start(i8* nonnull %6), !dbg !3681
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3682
  call void @llvm.va_end(i8* nonnull %6), !dbg !3683
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3684
  ret void, !dbg !3684
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3685 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3686, !tbaa !1250
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3686
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.112, i64 0, i64 0), i32 5) #20, !dbg !3687
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.113, i64 0, i64 0)) #20, !dbg !3687
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.114, i64 0, i64 0), i32 5) #20, !dbg !3688
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.115, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.116, i64 0, i64 0)) #20, !dbg !3688
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.117, i64 0, i64 0), i32 5) #20, !dbg !3689
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.118, i64 0, i64 0)) #20, !dbg !3689
  ret void, !dbg !3690
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3691 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3695, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %1, metadata !3696, metadata !DIExpression()), !dbg !3697
  %3 = udiv i64 9223372036854775807, %1, !dbg !3698
  %4 = icmp ult i64 %3, %0, !dbg !3698
  br i1 %4, label %5, label %6, !dbg !3700

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3701
  unreachable, !dbg !3701

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3702
  call void @llvm.dbg.value(metadata i64 %7, metadata !3703, metadata !DIExpression()) #20, !dbg !3709
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3711
  call void @llvm.dbg.value(metadata i8* %8, metadata !3708, metadata !DIExpression()) #20, !dbg !3709
  %9 = icmp eq i8* %8, null, !dbg !3712
  %10 = icmp ne i64 %7, 0, !dbg !3714
  %11 = and i1 %10, %9, !dbg !3715
  br i1 %11, label %12, label %13, !dbg !3715

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3716
  unreachable, !dbg !3716

13:                                               ; preds = %6
  ret i8* %8, !dbg !3717
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3704 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3703, metadata !DIExpression()), !dbg !3718
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3719
  call void @llvm.dbg.value(metadata i8* %2, metadata !3708, metadata !DIExpression()), !dbg !3718
  %3 = icmp eq i8* %2, null, !dbg !3720
  %4 = icmp ne i64 %0, 0, !dbg !3721
  %5 = and i1 %4, %3, !dbg !3722
  br i1 %5, label %6, label %7, !dbg !3722

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3723
  unreachable, !dbg !3723

7:                                                ; preds = %1
  ret i8* %2, !dbg !3724
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %1, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %2, metadata !3731, metadata !DIExpression()), !dbg !3732
  %4 = udiv i64 9223372036854775807, %2, !dbg !3733
  %5 = icmp ult i64 %4, %1, !dbg !3733
  br i1 %5, label %6, label %7, !dbg !3735

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3736
  unreachable, !dbg !3736

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3737
  call void @llvm.dbg.value(metadata i8* %0, metadata !3738, metadata !DIExpression()) #20, !dbg !3744
  call void @llvm.dbg.value(metadata i64 %8, metadata !3743, metadata !DIExpression()) #20, !dbg !3744
  %9 = icmp eq i64 %8, 0, !dbg !3746
  %10 = icmp ne i8* %0, null, !dbg !3748
  %11 = and i1 %10, %9, !dbg !3749
  br i1 %11, label %12, label %13, !dbg !3749

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3750
  br label %19, !dbg !3752

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %14, metadata !3738, metadata !DIExpression()) #20, !dbg !3744
  %15 = icmp eq i8* %14, null, !dbg !3754
  %16 = icmp ne i64 %8, 0, !dbg !3756
  %17 = and i1 %16, %15, !dbg !3757
  br i1 %17, label %18, label %19, !dbg !3757

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3758
  unreachable, !dbg !3758

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3744
  ret i8* %20, !dbg !3759
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3738, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %1, metadata !3743, metadata !DIExpression()), !dbg !3760
  %3 = icmp eq i64 %1, 0, !dbg !3761
  %4 = icmp ne i8* %0, null, !dbg !3762
  %5 = and i1 %4, %3, !dbg !3763
  br i1 %5, label %6, label %7, !dbg !3763

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3764
  br label %13, !dbg !3765

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3766
  call void @llvm.dbg.value(metadata i8* %8, metadata !3738, metadata !DIExpression()), !dbg !3760
  %9 = icmp eq i8* %8, null, !dbg !3767
  %10 = icmp ne i64 %1, 0, !dbg !3768
  %11 = and i1 %10, %9, !dbg !3769
  br i1 %11, label %12, label %13, !dbg !3769

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3770
  unreachable, !dbg !3770

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3760
  ret i8* %14, !dbg !3771
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !607 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !612, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i64* %1, metadata !613, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i64 %2, metadata !614, metadata !DIExpression()), !dbg !3772
  %4 = load i64, i64* %1, align 8, !dbg !3773, !tbaa !2955
  call void @llvm.dbg.value(metadata i64 %4, metadata !615, metadata !DIExpression()), !dbg !3772
  %5 = icmp eq i8* %0, null, !dbg !3774
  br i1 %5, label %6, label %20, !dbg !3776

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3777
  br i1 %7, label %8, label %13, !dbg !3780

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3781
  call void @llvm.dbg.value(metadata i64 %9, metadata !615, metadata !DIExpression()), !dbg !3772
  %10 = icmp ugt i64 %2, 128, !dbg !3783
  %11 = zext i1 %10 to i64, !dbg !3783
  %12 = add nuw nsw i64 %9, %11, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %12, metadata !615, metadata !DIExpression()), !dbg !3772
  br label %13, !dbg !3785

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3772
  call void @llvm.dbg.value(metadata i64 %14, metadata !615, metadata !DIExpression()), !dbg !3772
  %15 = udiv i64 9223372036854775807, %2, !dbg !3786
  %16 = icmp ult i64 %15, %14, !dbg !3786
  br i1 %16, label %19, label %17, !dbg !3788

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !615, metadata !DIExpression()), !dbg !3772
  store i64 %14, i64* %1, align 8, !dbg !3789, !tbaa !2955
  %18 = mul i64 %14, %2, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %0, metadata !3738, metadata !DIExpression()) #20, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %28, metadata !3743, metadata !DIExpression()) #20, !dbg !3791
  br label %31, !dbg !3793

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3794
  unreachable, !dbg !3794

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3795
  %22 = icmp ugt i64 %21, %4, !dbg !3798
  br i1 %22, label %24, label %23, !dbg !3799

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3800
  unreachable, !dbg !3800

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3801
  %26 = add nuw i64 %4, 1, !dbg !3802
  %27 = add i64 %26, %25, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %27, metadata !615, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i64 %27, metadata !615, metadata !DIExpression()), !dbg !3772
  store i64 %27, i64* %1, align 8, !dbg !3789, !tbaa !2955
  %28 = mul i64 %27, %2, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %0, metadata !3738, metadata !DIExpression()) #20, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %28, metadata !3743, metadata !DIExpression()) #20, !dbg !3791
  %29 = icmp eq i64 %28, 0, !dbg !3804
  br i1 %29, label %30, label %31, !dbg !3793

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3805
  br label %38, !dbg !3806

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3807
  call void @llvm.dbg.value(metadata i8* %33, metadata !3738, metadata !DIExpression()) #20, !dbg !3791
  %34 = icmp eq i8* %33, null, !dbg !3808
  %35 = icmp ne i64 %32, 0, !dbg !3809
  %36 = and i1 %35, %34, !dbg !3810
  br i1 %36, label %37, label %38, !dbg !3810

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3811
  unreachable, !dbg !3811

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3791
  ret i8* %39, !dbg !3812
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3813 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3815, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i64 %0, metadata !3703, metadata !DIExpression()) #20, !dbg !3817
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3819
  call void @llvm.dbg.value(metadata i8* %2, metadata !3708, metadata !DIExpression()) #20, !dbg !3817
  %3 = icmp eq i8* %2, null, !dbg !3820
  %4 = icmp ne i64 %0, 0, !dbg !3821
  %5 = and i1 %4, %3, !dbg !3822
  br i1 %5, label %6, label %7, !dbg !3822

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3823
  unreachable, !dbg !3823

7:                                                ; preds = %1
  ret i8* %2, !dbg !3824
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3825 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3829, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64* %1, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i8* %0, metadata !612, metadata !DIExpression()) #20, !dbg !3832
  call void @llvm.dbg.value(metadata i64* %1, metadata !613, metadata !DIExpression()) #20, !dbg !3832
  call void @llvm.dbg.value(metadata i64 1, metadata !614, metadata !DIExpression()) #20, !dbg !3832
  %3 = load i64, i64* %1, align 8, !dbg !3834, !tbaa !2955
  call void @llvm.dbg.value(metadata i64 %3, metadata !615, metadata !DIExpression()) #20, !dbg !3832
  %4 = icmp eq i8* %0, null, !dbg !3835
  br i1 %4, label %5, label %12, !dbg !3836

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3837
  br i1 %6, label %9, label %7, !dbg !3838

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !615, metadata !DIExpression()) #20, !dbg !3832
  %8 = icmp slt i64 %3, 0, !dbg !3839
  br i1 %8, label %11, label %9, !dbg !3840

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !615, metadata !DIExpression()) #20, !dbg !3832
  store i64 %10, i64* %1, align 8, !dbg !3841, !tbaa !2955
  call void @llvm.dbg.value(metadata i8* %0, metadata !3738, metadata !DIExpression()) #20, !dbg !3842
  call void @llvm.dbg.value(metadata i64 %18, metadata !3743, metadata !DIExpression()) #20, !dbg !3842
  br label %21, !dbg !3844

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3845
  unreachable, !dbg !3845

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3846
  br i1 %13, label %15, label %14, !dbg !3847

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3848
  unreachable, !dbg !3848

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3849
  %17 = add nuw nsw i64 %3, 1, !dbg !3850
  %18 = add nuw nsw i64 %17, %16, !dbg !3851
  call void @llvm.dbg.value(metadata i64 %18, metadata !615, metadata !DIExpression()) #20, !dbg !3832
  call void @llvm.dbg.value(metadata i64 %18, metadata !615, metadata !DIExpression()) #20, !dbg !3832
  store i64 %18, i64* %1, align 8, !dbg !3841, !tbaa !2955
  call void @llvm.dbg.value(metadata i8* %0, metadata !3738, metadata !DIExpression()) #20, !dbg !3842
  call void @llvm.dbg.value(metadata i64 %18, metadata !3743, metadata !DIExpression()) #20, !dbg !3842
  %19 = icmp eq i64 %18, 0, !dbg !3852
  br i1 %19, label %20, label %21, !dbg !3844

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !3853
  br label %28, !dbg !3854

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !3855
  call void @llvm.dbg.value(metadata i8* %23, metadata !3738, metadata !DIExpression()) #20, !dbg !3842
  %24 = icmp eq i8* %23, null, !dbg !3856
  %25 = icmp ne i64 %22, 0, !dbg !3857
  %26 = and i1 %25, %24, !dbg !3858
  br i1 %26, label %27, label %28, !dbg !3858

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3859
  unreachable, !dbg !3859

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3842
  ret i8* %29, !dbg !3860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3861 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3863, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %0, metadata !3865, metadata !DIExpression()) #20, !dbg !3870
  call void @llvm.dbg.value(metadata i64 1, metadata !3868, metadata !DIExpression()) #20, !dbg !3870
  %2 = icmp slt i64 %0, 0, !dbg !3872
  br i1 %2, label %6, label %3, !dbg !3874

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %4, metadata !3869, metadata !DIExpression()) #20, !dbg !3870
  %5 = icmp eq i8* %4, null, !dbg !3876
  br i1 %5, label %6, label %7, !dbg !3877

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3878
  unreachable, !dbg !3878

7:                                                ; preds = %3
  ret i8* %4, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3866 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3865, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %1, metadata !3868, metadata !DIExpression()), !dbg !3880
  %3 = udiv i64 9223372036854775807, %1, !dbg !3881
  %4 = icmp ult i64 %3, %0, !dbg !3881
  br i1 %4, label %8, label %5, !dbg !3882

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %6, metadata !3869, metadata !DIExpression()), !dbg !3880
  %7 = icmp eq i8* %6, null, !dbg !3884
  br i1 %7, label %8, label %9, !dbg !3885

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3886
  unreachable, !dbg !3886

9:                                                ; preds = %5
  ret i8* %6, !dbg !3887
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3888 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3890, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %1, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()) #20, !dbg !3893
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %3, metadata !3708, metadata !DIExpression()) #20, !dbg !3893
  %4 = icmp eq i8* %3, null, !dbg !3896
  %5 = icmp ne i64 %1, 0, !dbg !3897
  %6 = and i1 %5, %4, !dbg !3898
  br i1 %6, label %7, label %8, !dbg !3898

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3899
  unreachable, !dbg !3899

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3900, metadata !DIExpression()) #20, !dbg !3909
  call void @llvm.dbg.value(metadata i8* %0, metadata !3907, metadata !DIExpression()) #20, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %1, metadata !3908, metadata !DIExpression()) #20, !dbg !3909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !3911
  ret i8* %3, !dbg !3912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3915, metadata !DIExpression()), !dbg !3916
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3917
  %3 = add i64 %2, 1, !dbg !3918
  call void @llvm.dbg.value(metadata i8* %0, metadata !3890, metadata !DIExpression()) #20, !dbg !3919
  call void @llvm.dbg.value(metadata i64 %3, metadata !3891, metadata !DIExpression()) #20, !dbg !3919
  call void @llvm.dbg.value(metadata i64 %3, metadata !3703, metadata !DIExpression()) #20, !dbg !3921
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %4, metadata !3708, metadata !DIExpression()) #20, !dbg !3921
  %5 = icmp eq i8* %4, null, !dbg !3924
  %6 = icmp ne i64 %3, 0, !dbg !3925
  %7 = and i1 %6, %5, !dbg !3926
  br i1 %7, label %8, label %9, !dbg !3926

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3927
  unreachable, !dbg !3927

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3900, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i8* %0, metadata !3907, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.dbg.value(metadata i64 %3, metadata !3908, metadata !DIExpression()) #20, !dbg !3928
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !3930
  ret i8* %4, !dbg !3931
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3932 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3933, !tbaa !1343
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.129, i64 0, i64 0), i32 5) #20, !dbg !3934
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i64 0, i64 0), i8* %2) #20, !dbg !3935
  tail call void @abort() #23, !dbg !3936
  unreachable, !dbg !3936
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3937 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3939, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i64 %1, metadata !3940, metadata !DIExpression()), !dbg !3945
  %3 = icmp eq i64 %0, 0, !dbg !3946
  %4 = icmp eq i64 %1, 0, !dbg !3947
  %5 = or i1 %3, %4, !dbg !3948
  br i1 %5, label %11, label %6, !dbg !3948

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3942, metadata !DIExpression()), !dbg !3949
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3950
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3950
  br i1 %8, label %9, label %11, !dbg !3952

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3953
  store i32 12, i32* %10, align 4, !dbg !3955, !tbaa !1343
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3939, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i64 %12, metadata !3940, metadata !DIExpression()), !dbg !3945
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !3956
  call void @llvm.dbg.value(metadata i8* %14, metadata !3941, metadata !DIExpression()), !dbg !3945
  br label %15, !dbg !3957

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3945
  ret i8* %16, !dbg !3958
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3959 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3967, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i8* %1, metadata !3968, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64 %2, metadata !3969, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3970, metadata !DIExpression()), !dbg !3976
  %6 = bitcast i32* %5 to i8*, !dbg !3977
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3977
  %7 = icmp eq i32* %0, null, !dbg !3978
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3980
  call void @llvm.dbg.value(metadata i32* %8, metadata !3967, metadata !DIExpression()), !dbg !3976
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !3981
  call void @llvm.dbg.value(metadata i64 %9, metadata !3971, metadata !DIExpression()), !dbg !3976
  %10 = icmp ugt i64 %9, -3, !dbg !3982
  %11 = icmp ne i64 %2, 0, !dbg !3983
  %12 = and i1 %11, %10, !dbg !3984
  br i1 %12, label %13, label %18, !dbg !3984

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !3985
  br i1 %14, label %18, label %15, !dbg !3986

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3987, !tbaa !1658
  call void @llvm.dbg.value(metadata i8 %16, metadata !3973, metadata !DIExpression()), !dbg !3988
  %17 = zext i8 %16 to i32, !dbg !3989
  store i32 %17, i32* %8, align 4, !dbg !3990, !tbaa !1343
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3976
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3991
  ret i64 %19, !dbg !3991
}

; Function Attrs: nounwind
declare !dbg !633 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3992 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3998, metadata !DIExpression()), !dbg !4003
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4004
  call void @llvm.dbg.value(metadata i1 undef, metadata !3999, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4005, metadata !DIExpression()), !dbg !4009
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4011
  %4 = load i32, i32* %3, align 8, !dbg !4011, !tbaa !4012
  %5 = and i32 %4, 32, !dbg !4011
  %6 = icmp eq i32 %5, 0, !dbg !4014
  call void @llvm.dbg.value(metadata i1 %6, metadata !4001, metadata !DIExpression()), !dbg !4003
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4015
  %8 = icmp ne i32 %7, 0, !dbg !4016
  call void @llvm.dbg.value(metadata i1 %8, metadata !4002, metadata !DIExpression()), !dbg !4003
  br i1 %6, label %9, label %19, !dbg !4017

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4019
  call void @llvm.dbg.value(metadata i1 %10, metadata !3999, metadata !DIExpression()), !dbg !4003
  %11 = xor i1 %8, true, !dbg !4020
  %12 = or i1 %10, %11, !dbg !4020
  %13 = sext i1 %8 to i32, !dbg !4020
  br i1 %12, label %22, label %14, !dbg !4020

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !4021
  %16 = load i32, i32* %15, align 4, !dbg !4021, !tbaa !1343
  %17 = icmp ne i32 %16, 9, !dbg !4022
  %18 = sext i1 %17 to i32, !dbg !4023
  br label %22, !dbg !4023

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4024

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !4026
  store i32 0, i32* %21, align 4, !dbg !4028, !tbaa !1343
  br label %22, !dbg !4026

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4003
  ret i32 %23, !dbg !4029
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4030 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4032, metadata !DIExpression()), !dbg !4037
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4038
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4038
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4033, metadata !DIExpression()), !dbg !4039
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4040
  %5 = icmp eq i32 %4, 0, !dbg !4040
  br i1 %5, label %6, label %13, !dbg !4042

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4043
  %8 = load i16, i16* %7, align 16, !dbg !4043
  %9 = icmp eq i16 %8, 67, !dbg !4043
  br i1 %9, label %13, label %10, !dbg !4044

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), i64 6), !dbg !4045
  %12 = icmp ne i32 %11, 0, !dbg !4046
  br label %13, !dbg !4044

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4037
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4047
  ret i1 %14, !dbg !4047
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4048 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4051
  call void @llvm.dbg.value(metadata i8* %1, metadata !4050, metadata !DIExpression()), !dbg !4052
  %2 = icmp eq i8* %1, null, !dbg !4053
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), i8* %1, !dbg !4055
  call void @llvm.dbg.value(metadata i8* %3, metadata !4050, metadata !DIExpression()), !dbg !4052
  %4 = load i8, i8* %3, align 1, !dbg !4056, !tbaa !1658
  %5 = icmp eq i8 %4, 0, !dbg !4060
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i8* %3, !dbg !4061
  call void @llvm.dbg.value(metadata i8* %6, metadata !4050, metadata !DIExpression()), !dbg !4052
  ret i8* %6, !dbg !4062
}

; Function Attrs: nounwind
declare !dbg !1085 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4063 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4067, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i8* %1, metadata !4068, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i64 %2, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 %0, metadata !4071, metadata !DIExpression()) #20, !dbg !4080
  call void @llvm.dbg.value(metadata i8* %1, metadata !4074, metadata !DIExpression()) #20, !dbg !4080
  call void @llvm.dbg.value(metadata i64 %2, metadata !4075, metadata !DIExpression()) #20, !dbg !4080
  call void @llvm.dbg.value(metadata i32 %0, metadata !4082, metadata !DIExpression()) #20, !dbg !4088
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4090
  call void @llvm.dbg.value(metadata i8* %4, metadata !4087, metadata !DIExpression()) #20, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %4, metadata !4076, metadata !DIExpression()) #20, !dbg !4080
  %5 = icmp eq i8* %4, null, !dbg !4091
  br i1 %5, label %6, label %9, !dbg !4092

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4093
  br i1 %7, label %19, label %8, !dbg !4096

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4097, !tbaa !1658
  br label %19, !dbg !4098

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %10, metadata !4077, metadata !DIExpression()) #20, !dbg !4100
  %11 = icmp ult i64 %10, %2, !dbg !4101
  br i1 %11, label %12, label %14, !dbg !4103

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4104
  call void @llvm.dbg.value(metadata i8* %1, metadata !4106, metadata !DIExpression()) #20, !dbg !4111
  call void @llvm.dbg.value(metadata i8* %4, metadata !4109, metadata !DIExpression()) #20, !dbg !4111
  call void @llvm.dbg.value(metadata i64 %13, metadata !4110, metadata !DIExpression()) #20, !dbg !4111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4113
  br label %19, !dbg !4114

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4115
  br i1 %15, label %19, label %16, !dbg !4118

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4119
  call void @llvm.dbg.value(metadata i8* %1, metadata !4106, metadata !DIExpression()) #20, !dbg !4121
  call void @llvm.dbg.value(metadata i8* %4, metadata !4109, metadata !DIExpression()) #20, !dbg !4121
  call void @llvm.dbg.value(metadata i64 %17, metadata !4110, metadata !DIExpression()) #20, !dbg !4121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4123
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4124
  store i8 0, i8* %18, align 1, !dbg !4125, !tbaa !1658
  br label %19, !dbg !4126

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4127
  ret i32 %20, !dbg !4128
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4129 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 %0, metadata !4082, metadata !DIExpression()) #20, !dbg !4133
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4135
  call void @llvm.dbg.value(metadata i8* %2, metadata !4087, metadata !DIExpression()) #20, !dbg !4133
  ret i8* %2, !dbg !4136
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4137 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4143, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 0, metadata !4144, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 0, metadata !4146, metadata !DIExpression()), !dbg !4147
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4148
  call void @llvm.dbg.value(metadata i32 %2, metadata !4145, metadata !DIExpression()), !dbg !4147
  %3 = icmp slt i32 %2, 0, !dbg !4149
  br i1 %3, label %4, label %6, !dbg !4151

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4152
  br label %24, !dbg !4153

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4154
  %8 = icmp eq i32 %7, 0, !dbg !4154
  br i1 %8, label %13, label %9, !dbg !4156

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4157
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4158
  %12 = icmp eq i64 %11, -1, !dbg !4159
  br i1 %12, label %16, label %13, !dbg !4160

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4161
  %15 = icmp eq i32 %14, 0, !dbg !4161
  br i1 %15, label %16, label %18, !dbg !4162

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4144, metadata !DIExpression()), !dbg !4147
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %21, metadata !4146, metadata !DIExpression()), !dbg !4147
  br label %24, !dbg !4164

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !4165
  %20 = load i32, i32* %19, align 4, !dbg !4165, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 %20, metadata !4144, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 %20, metadata !4144, metadata !DIExpression()), !dbg !4147
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %21, metadata !4146, metadata !DIExpression()), !dbg !4147
  %22 = icmp eq i32 %20, 0, !dbg !4166
  br i1 %22, label %24, label %23, !dbg !4164

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4168, !tbaa !1343
  call void @llvm.dbg.value(metadata i32 -1, metadata !4146, metadata !DIExpression()), !dbg !4147
  br label %24, !dbg !4170

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4147
  ret i32 %25, !dbg !4171
}

; Function Attrs: nofree nounwind
declare !dbg !1129 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4172 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4178, metadata !DIExpression()), !dbg !4179
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4180
  br i1 %2, label %6, label %3, !dbg !4182

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4183
  %5 = icmp eq i32 %4, 0, !dbg !4183
  br i1 %5, label %6, label %8, !dbg !4184

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4185
  br label %17, !dbg !4186

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4187, metadata !DIExpression()) #20, !dbg !4192
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4194
  %10 = load i32, i32* %9, align 8, !dbg !4194, !tbaa !4012
  %11 = and i32 %10, 256, !dbg !4196
  %12 = icmp eq i32 %11, 0, !dbg !4196
  br i1 %12, label %15, label %13, !dbg !4197

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4198
  br label %15, !dbg !4198

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4199
  br label %17, !dbg !4200

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4179
  ret i32 %18, !dbg !4201
}

; Function Attrs: nofree nounwind
declare !dbg !1134 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4202 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4208, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i64 %1, metadata !4209, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i32 %2, metadata !4210, metadata !DIExpression()), !dbg !4214
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4215
  %5 = load i8*, i8** %4, align 8, !dbg !4215, !tbaa !4216
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4217
  %7 = load i8*, i8** %6, align 8, !dbg !4217, !tbaa !4218
  %8 = icmp eq i8* %5, %7, !dbg !4219
  br i1 %8, label %9, label %28, !dbg !4220

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4221
  %11 = load i8*, i8** %10, align 8, !dbg !4221, !tbaa !4222
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4223
  %13 = load i8*, i8** %12, align 8, !dbg !4223, !tbaa !4224
  %14 = icmp eq i8* %11, %13, !dbg !4225
  br i1 %14, label %15, label %28, !dbg !4226

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4227
  %17 = load i8*, i8** %16, align 8, !dbg !4227, !tbaa !4228
  %18 = icmp eq i8* %17, null, !dbg !4229
  br i1 %18, label %19, label %28, !dbg !4230

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4231
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4232
  call void @llvm.dbg.value(metadata i64 %21, metadata !4211, metadata !DIExpression()), !dbg !4233
  %22 = icmp eq i64 %21, -1, !dbg !4234
  br i1 %22, label %30, label %23, !dbg !4236

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4237
  %25 = load i32, i32* %24, align 8, !dbg !4238, !tbaa !4012
  %26 = and i32 %25, -17, !dbg !4238
  store i32 %26, i32* %24, align 8, !dbg !4238, !tbaa !4012
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4239
  store i64 %21, i64* %27, align 8, !dbg !4240, !tbaa !4241
  br label %30, !dbg !4242

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4243
  br label %30, !dbg !4244

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4214
  ret i32 %31, !dbg !4245
}

; Function Attrs: nofree nounwind
declare !dbg !1210 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind readnone }
attributes #25 = { noreturn }
attributes #26 = { cold }

!llvm.dbg.cu = !{!10, !282, !287, !332, !501, !543, !338, !379, !548, !555, !561, !495, !603, !624, !627, !630, !649, !688, !695, !1088, !1091, !1131, !1172}
!llvm.ident = !{!1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213, !1213}
!llvm.module.flags = !{!1214, !1215, !1216, !1217, !1218}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 548, type: !277, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 503, type: !4, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !212)
!3 = !DIFile(filename: "src/cat.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !40, globals: !197, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !27, !36}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 45, baseType: !14, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!33 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!35 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 73, baseType: !14, size: 32, elements: !38)
!37 = !DIFile(filename: "src/ioblksize.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!38 = !{!39}
!39 = !DIEnumerator(name: "IO_BUFSIZE", value: 131072, isUnsigned: true)
!40 = !{!41, !48, !109, !113, !117, !121, !124, !127, !134, !8, !99, !149, !153, !157, !161, !164, !167, !170, !174, !177, !101, !180, !184, !190, !194}
!41 = !DISubprogram(name: "dcgettext", scope: !42, file: !42, line: 51, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!42 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!43 = !DISubroutineType(types: !44)
!44 = !{!8, !45, !45, !6}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!47 = !{}
!48 = !DISubprogram(name: "fputs_unlocked", scope: !49, file: !49, line: 662, type: !50, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!49 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!50 = !DISubroutineType(types: !51)
!51 = !{!6, !45, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !55)
!54 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !71, !72, !73, !74, !78, !80, !82, !86, !89, !91, !94, !97, !98, !100, !104, !105}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 51, baseType: !6, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 36, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 70, baseType: !52, size: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !76, line: 152, baseType: !77)
!76 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 43, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !76, line: 153, baseType: !77)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !53, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !54, line: 37, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !53, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !54, line: 38, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !53, file: !54, line: 93, baseType: !52, size: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !53, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 46, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!103 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DISubprogram(name: "getpagesize", scope: !110, file: !110, line: 976, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!110 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!111 = !DISubroutineType(types: !112)
!112 = !{!6}
!113 = !DISubprogram(name: "set_program_name", scope: !114, file: !114, line: 37, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!114 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!115 = !DISubroutineType(types: !116)
!116 = !{null, !45}
!117 = !DISubprogram(name: "setlocale", scope: !118, file: !118, line: 122, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!118 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!119 = !DISubroutineType(types: !120)
!120 = !{!8, !6, !45}
!121 = !DISubprogram(name: "bindtextdomain", scope: !42, file: !42, line: 86, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!122 = !DISubroutineType(types: !123)
!123 = !{!8, !45, !45}
!124 = !DISubprogram(name: "textdomain", scope: !42, file: !42, line: 82, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!125 = !DISubroutineType(types: !126)
!126 = !{!8, !45}
!127 = !DISubprogram(name: "atexit", scope: !128, file: !128, line: 595, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!128 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!129 = !DISubroutineType(types: !130)
!130 = !{!6, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !DISubprogram(name: "getopt_long", scope: !135, file: !135, line: 66, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!135 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!136 = !DISubroutineType(types: !137)
!137 = !{!6, !6, !138, !45, !140, !147}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !135, line: 50, size: 256, elements: !143)
!143 = !{!144, !145, !146, !148}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !135, line: 52, baseType: !45, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !142, file: !135, line: 55, baseType: !6, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !142, file: !135, line: 56, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !142, file: !135, line: 57, baseType: !6, size: 32, offset: 192)
!149 = !DISubprogram(name: "version_etc", scope: !150, file: !150, line: 69, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!150 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !52, !45, !45, !45, null}
!153 = !DISubprogram(name: "error", scope: !154, file: !154, line: 52, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!154 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !DISubroutineType(types: !156)
!156 = !{null, !6, !6, !45, null}
!157 = !DISubprogram(name: "open", scope: !158, file: !158, line: 196, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!158 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!159 = !DISubroutineType(types: !160)
!160 = !{!6, !45, !6, null}
!161 = !DISubprogram(name: "quotearg_n_style_colon", scope: !13, file: !13, line: 397, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!162 = !DISubroutineType(types: !163)
!163 = !{!8, !6, !12, !45}
!164 = !DISubprogram(name: "fdadvise", scope: !28, file: !28, line: 71, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !6, !77, !77, !27}
!167 = !DISubprogram(name: "lseek", scope: !110, file: !110, line: 334, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!168 = !DISubroutineType(types: !169)
!169 = !{!77, !6, !77, !6}
!170 = !DISubprogram(name: "xmalloc", scope: !171, file: !171, line: 53, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!171 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!172 = !DISubroutineType(types: !173)
!173 = !{!99, !103}
!174 = !DISubprogram(name: "free", scope: !128, file: !128, line: 565, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !99}
!177 = !DISubprogram(name: "close", scope: !110, file: !110, line: 353, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!178 = !DISubroutineType(types: !179)
!179 = !{!6, !6}
!180 = !DISubprogram(name: "safe_read", scope: !181, file: !181, line: 42, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!181 = !DIFile(filename: "./lib/safe-read.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = !DISubroutineType(types: !183)
!183 = !{!103, !6, !99, !103}
!184 = !DISubprogram(name: "full_write", scope: !185, file: !185, line: 29, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!185 = !DIFile(filename: "./lib/full-write.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = !DISubroutineType(types: !187)
!187 = !{!103, !6, !188, !103}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!190 = !DISubprogram(name: "ioctl", scope: !191, file: !191, line: 41, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!191 = !DIFile(filename: "/usr/include/sys/ioctl.h", directory: "")
!192 = !DISubroutineType(types: !193)
!193 = !{!6, !6, !103, null}
!194 = !DISubprogram(name: "quotearg_style", scope: !13, file: !13, line: 377, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!195 = !DISubroutineType(types: !196)
!196 = !{!8, !12, !45}
!197 = !{!0, !198, !200, !202, !204, !206, !208, !210}
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "infile", scope: !10, file: !3, line: 52, type: !45, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "input_desc", scope: !10, file: !3, line: 55, type: !6, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "newlines2", scope: !10, file: !3, line: 79, type: !6, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "line_num_end", scope: !10, file: !3, line: 76, type: !8, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "line_num_start", scope: !10, file: !3, line: 73, type: !8, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "line_buf", scope: !10, file: !3, line: 61, type: !106, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "line_num_print", scope: !10, file: !3, line: 70, type: !8, isLocal: true, isDefinition: true)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !222, !223, !224, !228, !231, !232, !233, !268, !269, !270, !271, !272, !273, !274, !275}
!213 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 503, type: !6)
!214 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 503, type: !7)
!215 = !DILocalVariable(name: "outsize", scope: !2, file: !3, line: 506, type: !101)
!216 = !DILocalVariable(name: "insize", scope: !2, file: !3, line: 509, type: !101)
!217 = !DILocalVariable(name: "page_size", scope: !2, file: !3, line: 511, type: !101)
!218 = !DILocalVariable(name: "inbuf", scope: !2, file: !3, line: 514, type: !8)
!219 = !DILocalVariable(name: "outbuf", scope: !2, file: !3, line: 517, type: !8)
!220 = !DILocalVariable(name: "ok", scope: !2, file: !3, line: 519, type: !221)
!221 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!222 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 520, type: !6)
!223 = !DILocalVariable(name: "argind", scope: !2, file: !3, line: 523, type: !6)
!224 = !DILocalVariable(name: "out_dev", scope: !2, file: !3, line: 526, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !226, line: 59, baseType: !227)
!226 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !76, line: 145, baseType: !103)
!228 = !DILocalVariable(name: "out_ino", scope: !2, file: !3, line: 529, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !226, line: 47, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !76, line: 148, baseType: !103)
!231 = !DILocalVariable(name: "out_isreg", scope: !2, file: !3, line: 532, type: !221)
!232 = !DILocalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 535, type: !221)
!233 = !DILocalVariable(name: "stat_buf", scope: !2, file: !3, line: 537, type: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !235, line: 46, size: 1152, elements: !236)
!235 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!236 = !{!237, !238, !239, !241, !243, !245, !247, !248, !249, !250, !252, !254, !262, !263, !264}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !234, file: !235, line: 48, baseType: !227, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !234, file: !235, line: 53, baseType: !230, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !234, file: !235, line: 61, baseType: !240, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !76, line: 151, baseType: !103)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !234, file: !235, line: 62, baseType: !242, size: 32, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !76, line: 150, baseType: !14)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !234, file: !235, line: 64, baseType: !244, size: 32, offset: 224)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !76, line: 146, baseType: !14)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !234, file: !235, line: 65, baseType: !246, size: 32, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !76, line: 147, baseType: !14)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !234, file: !235, line: 67, baseType: !6, size: 32, offset: 288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !234, file: !235, line: 69, baseType: !227, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !234, file: !235, line: 74, baseType: !75, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !234, file: !235, line: 78, baseType: !251, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !76, line: 174, baseType: !77)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !234, file: !235, line: 80, baseType: !253, size: 64, offset: 512)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !76, line: 179, baseType: !77)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !234, file: !235, line: 91, baseType: !255, size: 128, offset: 576)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !256, line: 10, size: 128, elements: !257)
!256 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !255, file: !256, line: 12, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !76, line: 160, baseType: !77)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !255, file: !256, line: 16, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !76, line: 196, baseType: !77)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !234, file: !235, line: 92, baseType: !255, size: 128, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !234, file: !235, line: 93, baseType: !255, size: 128, offset: 832)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !234, file: !235, line: 106, baseType: !265, size: 192, offset: 960)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 192, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 3)
!268 = !DILocalVariable(name: "number", scope: !2, file: !3, line: 540, type: !221)
!269 = !DILocalVariable(name: "number_nonblank", scope: !2, file: !3, line: 541, type: !221)
!270 = !DILocalVariable(name: "squeeze_blank", scope: !2, file: !3, line: 542, type: !221)
!271 = !DILocalVariable(name: "show_ends", scope: !2, file: !3, line: 543, type: !221)
!272 = !DILocalVariable(name: "show_nonprinting", scope: !2, file: !3, line: 544, type: !221)
!273 = !DILocalVariable(name: "show_tabs", scope: !2, file: !3, line: 545, type: !221)
!274 = !DILocalVariable(name: "file_open_mode", scope: !2, file: !3, line: 546, type: !6)
!275 = !DILabel(scope: !276, name: "contin", file: !3, line: 754)
!276 = distinct !DILexicalBlock(scope: !2, file: !3, line: 659, column: 5)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 2560, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 10)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "Version", scope: !282, file: !283, line: 2, type: !45, isLocal: false, isDefinition: true)
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !284, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!284 = !{!280}
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "file_name", scope: !287, file: !288, line: 46, type: !45, isLocal: true, isDefinition: true)
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !289, globals: !327, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!289 = !{!290, !41, !326, !153}
!290 = !DISubprogram(name: "close_stream", scope: !291, file: !291, line: 2, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!291 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!292 = !DISubroutineType(types: !293)
!293 = !{!6, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !295, file: !54, line: 51, baseType: !6, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !295, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !295, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !295, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !295, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !295, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !295, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !295, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !295, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !295, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !295, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !295, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !295, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !295, file: !54, line: 70, baseType: !294, size: 64, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !295, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !295, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !295, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !295, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !295, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !295, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !295, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !295, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !295, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !295, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !295, file: !54, line: 93, baseType: !294, size: 64, offset: 1344)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !295, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !295, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !295, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !295, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!326 = !DISubprogram(name: "quotearg_colon", scope: !13, file: !13, line: 391, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!327 = !{!285, !328}
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !287, file: !288, line: 56, type: !221, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "exit_failure", scope: !332, file: !333, line: 24, type: !335, isLocal: false, isDefinition: true)
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !334, splitDebugInlining: false, nameTableKind: None)
!333 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!334 = !{!330}
!335 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "program_name", scope: !338, file: !339, line: 33, type: !45, isLocal: false, isDefinition: true)
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !340, globals: !376, splitDebugInlining: false, nameTableKind: None)
!339 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!340 = !{!99, !341, !8}
!341 = !DISubprogram(name: "fputs", scope: !49, file: !49, line: 626, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!342 = !DISubroutineType(types: !343)
!343 = !{!6, !45, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !345, file: !54, line: 51, baseType: !6, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !345, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !345, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !345, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !345, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !345, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !345, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !345, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !345, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !345, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !345, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !345, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !345, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !345, file: !54, line: 70, baseType: !344, size: 64, offset: 832)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !345, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !345, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !345, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !345, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !345, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !345, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !345, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !345, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !345, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !345, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !345, file: !54, line: 93, baseType: !344, size: 64, offset: 1344)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !345, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !345, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !345, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !345, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!376 = !{!336}
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !379, file: !380, line: 85, type: !489, isLocal: false, isDefinition: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !381, retainedTypes: !402, globals: !464, splitDebugInlining: false, nameTableKind: None)
!380 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!381 = !{!12, !382, !387}
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, baseType: !14, size: 32, elements: !383)
!383 = !{!384, !385, !386}
!384 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!385 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!386 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!387 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !388, line: 46, baseType: !14, size: 32, elements: !389)
!388 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!390 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!391 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!392 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!393 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!394 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!395 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!396 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!397 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!398 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!399 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!400 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!401 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!402 = !{!403, !406, !174, !422, !6, !79, !425, !101, !442, !446, !41, !452, !456, !8, !170, !460, !461}
!403 = !DISubprogram(name: "xmemdup", scope: !171, file: !171, line: 62, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!404 = !DISubroutineType(types: !405)
!405 = !{!99, !188, !103}
!406 = !DISubprogram(name: "quotearg_alloc_mem", scope: !13, file: !13, line: 342, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!407 = !DISubroutineType(types: !408)
!408 = !{!8, !45, !103, !409, !410}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !380, line: 65, size: 448, elements: !413)
!413 = !{!414, !415, !416, !420, !421}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !412, file: !380, line: 68, baseType: !12, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !380, line: 71, baseType: !6, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !412, file: !380, line: 75, baseType: !417, size: 256, offset: 64)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 8)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !412, file: !380, line: 78, baseType: !45, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !412, file: !380, line: 81, baseType: !45, size: 64, offset: 384)
!422 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !13, file: !13, line: 408, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!423 = !DISubroutineType(types: !424)
!424 = !{!8, !6, !45, !45, !45, !103}
!425 = !DISubprogram(name: "rpl_mbrtowc", scope: !426, file: !426, line: 717, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!426 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!427 = !DISubroutineType(types: !428)
!428 = !{!103, !147, !45, !103, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 13, size: 64, elements: !432)
!431 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !430, file: !431, line: 15, baseType: !6, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !430, file: !431, line: 20, baseType: !435, size: 32, offset: 32)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 16, size: 32, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !435, file: !431, line: 18, baseType: !14, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !435, file: !431, line: 19, baseType: !439, size: 32)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 4)
!442 = !DISubprogram(name: "iswprint", scope: !443, file: !443, line: 120, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!443 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!444 = !DISubroutineType(types: !445)
!445 = !{!6, !14}
!446 = !DISubprogram(name: "mbsinit", scope: !447, file: !447, line: 292, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!447 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!448 = !DISubroutineType(types: !449)
!449 = !{!6, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!452 = !DISubprogram(name: "locale_charset", scope: !453, file: !453, line: 35, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!453 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!454 = !DISubroutineType(types: !455)
!455 = !{!45}
!456 = !DISubprogram(name: "c_strcasecmp", scope: !457, file: !457, line: 42, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!457 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!458 = !DISubroutineType(types: !459)
!459 = !{!6, !45, !45}
!460 = !DISubprogram(name: "xalloc_die", scope: !171, file: !171, line: 51, type: !132, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !47)
!461 = !DISubprogram(name: "xrealloc", scope: !171, file: !171, line: 59, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!462 = !DISubroutineType(types: !463)
!463 = !{!99, !99, !103}
!464 = !{!377, !465, !469, !471, !473, !478, !485, !487}
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !379, file: !380, line: 101, type: !467, isLocal: false, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 320, elements: !278)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !379, file: !380, line: 1052, type: !412, isLocal: false, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !379, file: !380, line: 116, type: !412, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "slot0", scope: !379, file: !380, line: 842, type: !475, isLocal: true, isDefinition: true)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 256)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "slotvec", scope: !379, file: !380, line: 845, type: !480, isLocal: true, isDefinition: true)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !380, line: 834, size: 128, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !481, file: !380, line: 836, baseType: !101, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !481, file: !380, line: 837, baseType: !8, size: 64, offset: 64)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "nslots", scope: !379, file: !380, line: 843, type: !6, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "slotvec0", scope: !379, file: !380, line: 844, type: !481, isLocal: true, isDefinition: true)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 704, elements: !491)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!491 = !{!492}
!492 = !DISubrange(count: 11)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !495, file: !496, line: 26, type: !498, isLocal: false, isDefinition: true)
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, globals: !497, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!497 = !{!493}
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 376, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 47)
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !503, retainedTypes: !504, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!503 = !{!27}
!504 = !{!505, !508}
!505 = !DISubprogram(name: "posix_fadvise", scope: !158, file: !158, line: 288, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!506 = !DISubroutineType(types: !507)
!507 = !{!6, !6, !77, !77, !6}
!508 = !DISubprogram(name: "fileno", scope: !49, file: !49, line: 786, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!509 = !DISubroutineType(types: !510)
!510 = !{!6, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !512, file: !54, line: 51, baseType: !6, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !512, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !512, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !512, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !512, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !512, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !512, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !512, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !512, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !512, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !512, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !512, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !512, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !512, file: !54, line: 70, baseType: !511, size: 64, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !512, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !512, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !512, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !512, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !512, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !512, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !512, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !512, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !512, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !512, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !512, file: !54, line: 93, baseType: !511, size: 64, offset: 1344)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !512, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !512, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !512, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !512, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !545, splitDebugInlining: false, nameTableKind: None)
!544 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!545 = !{!45, !546, !101}
!546 = !DISubprogram(name: "safe_write", scope: !547, file: !547, line: 37, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!547 = !DIFile(filename: "./lib/safe-write.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !550, splitDebugInlining: false, nameTableKind: None)
!549 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!550 = !{!551}
!551 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !552, line: 40, baseType: !14, size: 32, elements: !553)
!552 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!553 = !{!554}
!554 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !550, retainedTypes: !557, splitDebugInlining: false, nameTableKind: None)
!556 = !DIFile(filename: "lib/safe-write.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!557 = !{!558}
!558 = !DISubprogram(name: "write", scope: !110, file: !110, line: 366, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!559 = !DISubroutineType(types: !560)
!560 = !{!77, !6, !188, !103}
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !563, retainedTypes: !567, splitDebugInlining: false, nameTableKind: None)
!562 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!563 = !{!564}
!564 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !562, line: 40, baseType: !14, size: 32, elements: !565)
!565 = !{!566}
!566 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!567 = !{!41, !568, !99}
!568 = !DISubprogram(name: "fputs_unlocked", scope: !49, file: !49, line: 662, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!569 = !DISubroutineType(types: !570)
!570 = !{!6, !45, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !572, file: !54, line: 51, baseType: !6, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !572, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !572, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !572, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !572, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !572, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !572, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !572, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !572, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !572, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !572, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !572, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !572, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !572, file: !54, line: 70, baseType: !571, size: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !572, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !572, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !572, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !572, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !572, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !572, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !572, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !572, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !572, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !572, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !572, file: !54, line: 93, baseType: !571, size: 64, offset: 1344)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !572, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !572, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !572, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !572, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !605, retainedTypes: !618, splitDebugInlining: false, nameTableKind: None)
!604 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!605 = !{!606}
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !607, file: !171, line: 186, baseType: !14, size: 32, elements: !616)
!607 = distinct !DISubprogram(name: "x2nrealloc", scope: !171, file: !171, line: 174, type: !608, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !611)
!608 = !DISubroutineType(types: !609)
!609 = !{!99, !99, !610, !101}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!611 = !{!612, !613, !614, !615}
!612 = !DILocalVariable(name: "p", arg: 1, scope: !607, file: !171, line: 174, type: !99)
!613 = !DILocalVariable(name: "pn", arg: 2, scope: !607, file: !171, line: 174, type: !610)
!614 = !DILocalVariable(name: "s", arg: 3, scope: !607, file: !171, line: 174, type: !101)
!615 = !DILocalVariable(name: "n", scope: !607, file: !171, line: 176, type: !101)
!616 = !{!617}
!617 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!618 = !{!101, !460, !170, !461, !8, !174, !99, !619, !622}
!619 = !DISubprogram(name: "xcalloc", scope: !171, file: !171, line: 57, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!620 = !DISubroutineType(types: !621)
!621 = !{!99, !103, !103}
!622 = !DISubprogram(name: "rpl_calloc", scope: !623, file: !623, line: 688, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!623 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !626, splitDebugInlining: false, nameTableKind: None)
!625 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!626 = !{!41, !153}
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !629, splitDebugInlining: false, nameTableKind: None)
!628 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!629 = !{!99}
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !632, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!632 = !{!633, !101, !645}
!633 = !DISubprogram(name: "mbrtowc", scope: !447, file: !447, line: 296, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!634 = !DISubroutineType(types: !635)
!635 = !{!103, !147, !45, !103, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 13, size: 64, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !637, file: !431, line: 15, baseType: !6, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !637, file: !431, line: 20, baseType: !641, size: 32, offset: 32)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !431, line: 16, size: 32, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !641, file: !431, line: 18, baseType: !14, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !641, file: !431, line: 19, baseType: !439, size: 32)
!645 = !DISubprogram(name: "hard_locale", scope: !646, file: !646, line: 26, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!646 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!647 = !DISubroutineType(types: !648)
!648 = !{!221, !6}
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !651, splitDebugInlining: false, nameTableKind: None)
!650 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!651 = !{!652}
!652 = !DISubprogram(name: "rpl_fclose", scope: !653, file: !653, line: 672, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!653 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!654 = !DISubroutineType(types: !655)
!655 = !{!6, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !657, file: !54, line: 51, baseType: !6, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !657, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !657, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !657, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !657, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !657, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !657, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !657, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !657, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !657, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !657, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !657, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !657, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !657, file: !54, line: 70, baseType: !656, size: 64, offset: 832)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !657, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !657, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !657, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !657, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !657, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !657, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !657, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !657, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !657, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !657, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !657, file: !54, line: 93, baseType: !656, size: 64, offset: 1344)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !657, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !657, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !657, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !657, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!688 = distinct !DICompileUnit(language: DW_LANG_C99, file: !689, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!690 = !{!691}
!691 = !DISubprogram(name: "setlocale_null_r", scope: !692, file: !692, line: 64, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!692 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!693 = !DISubroutineType(types: !694)
!694 = !{!6, !6, !8, !103}
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !697, retainedTypes: !1084, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!697 = !{!698}
!698 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !699, line: 41, baseType: !14, size: 32, elements: !700)
!699 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!701 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!702 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!703 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!704 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!705 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!706 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!707 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!708 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!709 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!710 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!711 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!712 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!713 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!714 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!715 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!716 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!717 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!718 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!719 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!720 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!721 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!722 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!723 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!724 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!725 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!726 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!727 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!728 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!729 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!730 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!731 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!732 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!733 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!734 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!735 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!736 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!737 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!738 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!739 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!740 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!741 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!742 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!743 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!744 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!745 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!746 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!747 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!748 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!749 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!750 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!809 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!812 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!813 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!814 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!815 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!816 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!817 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!818 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!819 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!820 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!821 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!822 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!823 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!896 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!969 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!970 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!971 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!972 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!973 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!974 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!975 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!976 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!977 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!978 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!979 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!980 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!981 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!982 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!983 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!985 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!986 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!987 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!988 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!989 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!990 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1016 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1017 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1018 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1019 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1020 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1025 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1026 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1027 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1028 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1084 = !{!1085, !99}
!1085 = !DISubprogram(name: "nl_langinfo", scope: !699, file: !699, line: 661, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!8, !6}
!1088 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1089, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !1090, splitDebugInlining: false, nameTableKind: None)
!1089 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1090 = !{!99, !117}
!1091 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1092, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !1093, splitDebugInlining: false, nameTableKind: None)
!1092 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1093 = !{!1094, !1129, !167, !1130}
!1094 = !DISubprogram(name: "fileno", scope: !49, file: !49, line: 786, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!6, !1097}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1098, file: !54, line: 51, baseType: !6, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1098, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1098, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1098, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1098, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1098, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1098, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1098, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1098, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1098, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1098, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1098, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1098, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1098, file: !54, line: 70, baseType: !1097, size: 64, offset: 832)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1098, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1098, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1098, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1098, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1098, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1098, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1098, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1098, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1098, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1098, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1098, file: !54, line: 93, baseType: !1097, size: 64, offset: 1344)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1098, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1098, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1098, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1098, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!1129 = !DISubprogram(name: "fclose", scope: !49, file: !49, line: 213, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1130 = !DISubprogram(name: "rpl_fflush", scope: !653, file: !653, line: 718, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1132, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !1133, splitDebugInlining: false, nameTableKind: None)
!1132 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1133 = !{!99, !1134, !1169}
!1134 = !DISubprogram(name: "fflush", scope: !49, file: !49, line: 218, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!6, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1138, file: !54, line: 51, baseType: !6, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1138, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1138, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1138, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1138, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1138, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1138, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1138, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1138, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1138, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1138, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1138, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1138, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1138, file: !54, line: 70, baseType: !1137, size: 64, offset: 832)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1138, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1138, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1138, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1138, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1138, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1138, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1138, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1138, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1138, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1138, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1138, file: !54, line: 93, baseType: !1137, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1138, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1138, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1138, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1138, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!1169 = !DISubprogram(name: "rpl_fseeko", scope: !653, file: !653, line: 1034, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!6, !1137, !77, !6}
!1172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1173, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !47, retainedTypes: !1174, splitDebugInlining: false, nameTableKind: None)
!1173 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1174 = !{!99, !1175, !167, !1210}
!1175 = !DISubprogram(name: "fileno", scope: !49, file: !49, line: 786, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!6, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 49, size: 1728, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1179, file: !54, line: 51, baseType: !6, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1179, file: !54, line: 54, baseType: !8, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1179, file: !54, line: 55, baseType: !8, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1179, file: !54, line: 56, baseType: !8, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1179, file: !54, line: 57, baseType: !8, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1179, file: !54, line: 58, baseType: !8, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1179, file: !54, line: 59, baseType: !8, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1179, file: !54, line: 60, baseType: !8, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1179, file: !54, line: 61, baseType: !8, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1179, file: !54, line: 64, baseType: !8, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1179, file: !54, line: 65, baseType: !8, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1179, file: !54, line: 66, baseType: !8, size: 64, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1179, file: !54, line: 68, baseType: !69, size: 64, offset: 768)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1179, file: !54, line: 70, baseType: !1178, size: 64, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1179, file: !54, line: 72, baseType: !6, size: 32, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1179, file: !54, line: 73, baseType: !6, size: 32, offset: 928)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1179, file: !54, line: 74, baseType: !75, size: 64, offset: 960)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1179, file: !54, line: 77, baseType: !79, size: 16, offset: 1024)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1179, file: !54, line: 78, baseType: !81, size: 8, offset: 1040)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1179, file: !54, line: 79, baseType: !83, size: 8, offset: 1048)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1179, file: !54, line: 81, baseType: !87, size: 64, offset: 1088)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1179, file: !54, line: 89, baseType: !90, size: 64, offset: 1152)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1179, file: !54, line: 91, baseType: !92, size: 64, offset: 1216)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1179, file: !54, line: 92, baseType: !95, size: 64, offset: 1280)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1179, file: !54, line: 93, baseType: !1178, size: 64, offset: 1344)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1179, file: !54, line: 94, baseType: !99, size: 64, offset: 1408)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1179, file: !54, line: 95, baseType: !101, size: 64, offset: 1472)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1179, file: !54, line: 96, baseType: !6, size: 32, offset: 1536)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1179, file: !54, line: 98, baseType: !106, size: 160, offset: 1568)
!1210 = !DISubprogram(name: "fseeko", scope: !49, file: !49, line: 707, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !47)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!6, !1178, !77, !6}
!1213 = !{!"clang version 10.0.0 "}
!1214 = !{i32 7, !"Dwarf Version", i32 4}
!1215 = !{i32 2, !"Debug Info Version", i32 3}
!1216 = !{i32 1, !"wchar_size", i32 4}
!1217 = !{i32 7, !"PIC Level", i32 2}
!1218 = !{i32 7, !"PIE Level", i32 2}
!1219 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !1220, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !6}
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "status", arg: 1, scope: !1219, file: !3, line: 82, type: !6)
!1224 = !DILocalVariable(name: "infomap", scope: !1225, file: !1226, line: 636, type: !1238)
!1225 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1226, file: !1226, line: 634, type: !115, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1227)
!1226 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1227 = !{!1228, !1224, !1229, !1230, !1237}
!1228 = !DILocalVariable(name: "program", arg: 1, scope: !1225, file: !1226, line: 634, type: !45)
!1229 = !DILocalVariable(name: "node", scope: !1225, file: !1226, line: 646, type: !45)
!1230 = !DILocalVariable(name: "map_prog", scope: !1225, file: !1226, line: 647, type: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1225, file: !1226, line: 636, size: 128, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1233, file: !1226, line: 636, baseType: !45, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1233, file: !1226, line: 636, baseType: !45, size: 64, offset: 64)
!1237 = !DILocalVariable(name: "lc_messages", scope: !1225, file: !1226, line: 659, type: !45)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 896, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 7)
!1241 = !DILocation(line: 636, column: 67, scope: !1225, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 122, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 87, column: 5)
!1244 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 84, column: 7)
!1245 = !DILocation(line: 0, scope: !1219)
!1246 = !DILocation(line: 84, column: 14, scope: !1244)
!1247 = !DILocation(line: 84, column: 7, scope: !1219)
!1248 = !DILocation(line: 85, column: 5, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 85, column: 5)
!1250 = !{!1251, !1251, i64 0}
!1251 = !{!"any pointer", !1252, i64 0}
!1252 = !{!"omnipotent char", !1253, i64 0}
!1253 = !{!"Simple C/C++ TBAA"}
!1254 = !DILocation(line: 88, column: 7, scope: !1243)
!1255 = !DILocation(line: 92, column: 7, scope: !1243)
!1256 = !DILocation(line: 583, column: 3, scope: !1257, inlinedAt: !1258)
!1257 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1226, file: !1226, line: 581, type: !132, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !47)
!1258 = distinct !DILocation(line: 96, column: 7, scope: !1243)
!1259 = !DILocation(line: 98, column: 7, scope: !1243)
!1260 = !DILocation(line: 107, column: 7, scope: !1243)
!1261 = !DILocation(line: 113, column: 7, scope: !1243)
!1262 = !DILocation(line: 114, column: 7, scope: !1243)
!1263 = !DILocation(line: 115, column: 7, scope: !1243)
!1264 = !DILocation(line: 0, scope: !1225, inlinedAt: !1242)
!1265 = !DILocation(line: 636, column: 3, scope: !1225, inlinedAt: !1242)
!1266 = !DILocation(line: 647, column: 36, scope: !1225, inlinedAt: !1242)
!1267 = !DILocation(line: 649, column: 3, scope: !1225, inlinedAt: !1242)
!1268 = !DILocation(line: 649, column: 33, scope: !1225, inlinedAt: !1242)
!1269 = !DILocation(line: 650, column: 13, scope: !1225, inlinedAt: !1242)
!1270 = !DILocation(line: 649, column: 20, scope: !1225, inlinedAt: !1242)
!1271 = !{!1272, !1251, i64 0}
!1272 = !{!"infomap", !1251, i64 0, !1251, i64 8}
!1273 = !DILocation(line: 649, column: 10, scope: !1225, inlinedAt: !1242)
!1274 = !DILocation(line: 649, column: 28, scope: !1225, inlinedAt: !1242)
!1275 = distinct !{!1275, !1267, !1269}
!1276 = !DILocation(line: 652, column: 17, scope: !1277, inlinedAt: !1242)
!1277 = distinct !DILexicalBlock(scope: !1225, file: !1226, line: 652, column: 7)
!1278 = !{!1272, !1251, i64 8}
!1279 = !DILocation(line: 652, column: 7, scope: !1277, inlinedAt: !1242)
!1280 = !DILocation(line: 652, column: 7, scope: !1225, inlinedAt: !1242)
!1281 = !DILocation(line: 655, column: 3, scope: !1225, inlinedAt: !1242)
!1282 = !DILocation(line: 659, column: 29, scope: !1225, inlinedAt: !1242)
!1283 = !DILocation(line: 660, column: 7, scope: !1284, inlinedAt: !1242)
!1284 = distinct !DILexicalBlock(scope: !1225, file: !1226, line: 660, column: 7)
!1285 = !DILocation(line: 660, column: 19, scope: !1284, inlinedAt: !1242)
!1286 = !DILocation(line: 660, column: 22, scope: !1284, inlinedAt: !1242)
!1287 = !DILocation(line: 660, column: 7, scope: !1225, inlinedAt: !1242)
!1288 = !DILocation(line: 666, column: 7, scope: !1289, inlinedAt: !1242)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !1226, line: 661, column: 5)
!1290 = !DILocation(line: 668, column: 5, scope: !1289, inlinedAt: !1242)
!1291 = !DILocation(line: 669, column: 3, scope: !1225, inlinedAt: !1242)
!1292 = !DILocation(line: 671, column: 3, scope: !1225, inlinedAt: !1242)
!1293 = !DILocation(line: 673, column: 1, scope: !1225, inlinedAt: !1242)
!1294 = !DILocation(line: 124, column: 3, scope: !1219)
!1295 = !DILocation(line: 0, scope: !2)
!1296 = !DILocation(line: 511, column: 22, scope: !2)
!1297 = !DILocation(line: 537, column: 3, scope: !2)
!1298 = !DILocation(line: 537, column: 15, scope: !2)
!1299 = !DILocation(line: 563, column: 21, scope: !2)
!1300 = !DILocation(line: 563, column: 3, scope: !2)
!1301 = !DILocation(line: 564, column: 3, scope: !2)
!1302 = !DILocation(line: 565, column: 3, scope: !2)
!1303 = !DILocation(line: 566, column: 3, scope: !2)
!1304 = !DILocation(line: 572, column: 3, scope: !2)
!1305 = !DILocation(line: 576, column: 3, scope: !2)
!1306 = !DILocation(line: 540, column: 8, scope: !2)
!1307 = !DILocation(line: 541, column: 8, scope: !2)
!1308 = !DILocation(line: 542, column: 8, scope: !2)
!1309 = !DILocation(line: 543, column: 8, scope: !2)
!1310 = !DILocation(line: 544, column: 8, scope: !2)
!1311 = !DILocation(line: 576, column: 15, scope: !2)
!1312 = distinct !{!1312, !1305, !1313}
!1313 = !DILocation(line: 633, column: 5, scope: !2)
!1314 = !DILocation(line: 584, column: 11, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 580, column: 9)
!1316 = distinct !DILexicalBlock(scope: !2, file: !3, line: 578, column: 5)
!1317 = !DILocation(line: 589, column: 11, scope: !1315)
!1318 = !DILocation(line: 593, column: 11, scope: !1315)
!1319 = !DILocation(line: 597, column: 11, scope: !1315)
!1320 = !DILocation(line: 602, column: 11, scope: !1315)
!1321 = !DILocation(line: 610, column: 11, scope: !1315)
!1322 = !DILocation(line: 616, column: 11, scope: !1315)
!1323 = !DILocation(line: 620, column: 11, scope: !1315)
!1324 = !DILocation(line: 624, column: 11, scope: !1315)
!1325 = !DILocation(line: 626, column: 9, scope: !1315)
!1326 = !DILocation(line: 628, column: 9, scope: !1315)
!1327 = !DILocation(line: 631, column: 11, scope: !1315)
!1328 = !DILocalVariable(name: "__fd", arg: 1, scope: !1329, file: !1330, line: 467, type: !6)
!1329 = distinct !DISubprogram(name: "fstat", scope: !1330, file: !1330, line: 467, type: !1331, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1334)
!1330 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!6, !6, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1334 = !{!1328, !1335}
!1335 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1329, file: !1330, line: 467, type: !1333)
!1336 = !DILocation(line: 0, scope: !1329, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 637, column: 7, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !2, file: !3, line: 637, column: 7)
!1339 = !DILocation(line: 469, column: 10, scope: !1329, inlinedAt: !1337)
!1340 = !DILocation(line: 637, column: 40, scope: !1338)
!1341 = !DILocation(line: 637, column: 7, scope: !2)
!1342 = !DILocation(line: 638, column: 5, scope: !1338)
!1343 = !{!1344, !1344, i64 0}
!1344 = !{!"int", !1252, i64 0}
!1345 = !DILocalVariable(name: "sb", arg: 1, scope: !1346, file: !37, line: 75, type: !234)
!1346 = distinct !DISubprogram(name: "io_blksize", scope: !37, file: !37, line: 75, type: !1347, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!101, !234}
!1349 = !{!1345}
!1350 = !DILocation(line: 75, column: 25, scope: !1346, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 640, column: 13, scope: !2)
!1352 = !DILocation(line: 77, column: 10, scope: !1346, inlinedAt: !1351)
!1353 = !{!1354, !1355, i64 56}
!1354 = !{!"stat", !1355, i64 0, !1355, i64 8, !1355, i64 16, !1344, i64 24, !1344, i64 28, !1344, i64 32, !1344, i64 36, !1355, i64 40, !1355, i64 48, !1355, i64 56, !1355, i64 64, !1356, i64 72, !1356, i64 88, !1356, i64 104, !1252, i64 120}
!1355 = !{!"long", !1252, i64 0}
!1356 = !{!"timespec", !1355, i64 0, !1355, i64 8}
!1357 = !DILocation(line: 641, column: 22, scope: !2)
!1358 = !{!1354, !1355, i64 0}
!1359 = !DILocation(line: 642, column: 22, scope: !2)
!1360 = !{!1354, !1355, i64 8}
!1361 = !DILocation(line: 643, column: 15, scope: !2)
!1362 = !{!1354, !1344, i64 24}
!1363 = !DILocation(line: 645, column: 10, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !2, file: !3, line: 645, column: 7)
!1365 = !DILocation(line: 655, column: 10, scope: !2)
!1366 = !DILocation(line: 656, column: 12, scope: !2)
!1367 = !DILocation(line: 0, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !276, file: !3, line: 695, column: 11)
!1369 = !DILocation(line: 0, scope: !1364)
!1370 = !DILocation(line: 0, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !276, file: !3, line: 707, column: 11)
!1372 = !DILocation(line: 0, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 716, column: 9)
!1374 = !DILocation(line: 0, scope: !1375, inlinedAt: !1411)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 392, column: 23)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 372, column: 17)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 371, column: 19)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 365, column: 13)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 302, column: 15)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 277, column: 9)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 275, column: 5)
!1382 = distinct !DISubprogram(name: "cat", scope: !3, file: !3, line: 216, type: !1383, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!221, !8, !101, !8, !101, !221, !221, !221, !221, !221, !221}
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1407, !1408, !1410}
!1386 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1382, file: !3, line: 218, type: !8)
!1387 = !DILocalVariable(name: "insize", arg: 2, scope: !1382, file: !3, line: 221, type: !101)
!1388 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1382, file: !3, line: 224, type: !8)
!1389 = !DILocalVariable(name: "outsize", arg: 4, scope: !1382, file: !3, line: 227, type: !101)
!1390 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1382, file: !3, line: 230, type: !221)
!1391 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1382, file: !3, line: 231, type: !221)
!1392 = !DILocalVariable(name: "number", arg: 7, scope: !1382, file: !3, line: 232, type: !221)
!1393 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1382, file: !3, line: 233, type: !221)
!1394 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1382, file: !3, line: 234, type: !221)
!1395 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1382, file: !3, line: 235, type: !221)
!1396 = !DILocalVariable(name: "ch", scope: !1382, file: !3, line: 238, type: !1397)
!1397 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1398 = !DILocalVariable(name: "bpin", scope: !1382, file: !3, line: 241, type: !8)
!1399 = !DILocalVariable(name: "eob", scope: !1382, file: !3, line: 245, type: !8)
!1400 = !DILocalVariable(name: "bpout", scope: !1382, file: !3, line: 248, type: !8)
!1401 = !DILocalVariable(name: "n_read", scope: !1382, file: !3, line: 251, type: !101)
!1402 = !DILocalVariable(name: "newlines", scope: !1382, file: !3, line: 258, type: !6)
!1403 = !DILocalVariable(name: "use_fionread", scope: !1382, file: !3, line: 263, type: !221)
!1404 = !DILocalVariable(name: "wp", scope: !1405, file: !3, line: 282, type: !8)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 281, column: 13)
!1406 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 280, column: 15)
!1407 = !DILocalVariable(name: "remaining_bytes", scope: !1405, file: !3, line: 283, type: !101)
!1408 = !DILocalVariable(name: "input_pending", scope: !1409, file: !3, line: 304, type: !221)
!1409 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 303, column: 13)
!1410 = !DILocalVariable(name: "n_to_read", scope: !1409, file: !3, line: 306, type: !6)
!1411 = distinct !DILocation(line: 744, column: 17, scope: !1373)
!1412 = !DILocation(line: 0, scope: !1409, inlinedAt: !1411)
!1413 = !DILocation(line: 0, scope: !1414, inlinedAt: !1411)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 483, column: 19)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 482, column: 13)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 479, column: 9)
!1417 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 428, column: 11)
!1418 = !DILocation(line: 0, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 709, column: 9)
!1420 = !DILocation(line: 658, column: 3, scope: !2)
!1421 = !DILocation(line: 660, column: 18, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !276, file: !3, line: 660, column: 11)
!1423 = !DILocation(line: 660, column: 11, scope: !276)
!1424 = !DILocation(line: 663, column: 11, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !276, file: !3, line: 663, column: 11)
!1426 = !DILocation(line: 661, column: 18, scope: !1422)
!1427 = !DILocation(line: 661, column: 16, scope: !1422)
!1428 = !DILocation(line: 661, column: 9, scope: !1422)
!1429 = !DILocation(line: 663, column: 11, scope: !276)
!1430 = !DILocation(line: 666, column: 22, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 664, column: 9)
!1432 = !DILocation(line: 667, column: 15, scope: !1431)
!1433 = !DILocation(line: 672, column: 24, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 671, column: 9)
!1435 = !DILocation(line: 672, column: 22, scope: !1434)
!1436 = !DILocation(line: 673, column: 26, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 673, column: 15)
!1438 = !DILocation(line: 673, column: 15, scope: !1434)
!1439 = !DILocation(line: 675, column: 25, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 674, column: 13)
!1441 = !DILocation(line: 675, column: 38, scope: !1440)
!1442 = !DILocation(line: 675, column: 15, scope: !1440)
!1443 = !DILocation(line: 677, column: 15, scope: !1440)
!1444 = !DILocation(line: 681, column: 18, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !276, file: !3, line: 681, column: 11)
!1446 = !DILocation(line: 0, scope: !1329, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 681, column: 11, scope: !1445)
!1448 = !DILocation(line: 469, column: 10, scope: !1329, inlinedAt: !1447)
!1449 = !DILocation(line: 681, column: 41, scope: !1445)
!1450 = !DILocation(line: 681, column: 11, scope: !276)
!1451 = !DILocation(line: 683, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 682, column: 9)
!1453 = !DILocation(line: 683, column: 34, scope: !1452)
!1454 = !DILocation(line: 683, column: 11, scope: !1452)
!1455 = !DILocation(line: 685, column: 11, scope: !1452)
!1456 = !DILocation(line: 75, column: 25, scope: !1346, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 687, column: 16, scope: !276)
!1458 = !DILocation(line: 77, column: 10, scope: !1346, inlinedAt: !1457)
!1459 = !DILocation(line: 689, column: 17, scope: !276)
!1460 = !DILocation(line: 689, column: 7, scope: !276)
!1461 = !DILocation(line: 696, column: 23, scope: !1368)
!1462 = !DILocation(line: 696, column: 30, scope: !1368)
!1463 = !DILocation(line: 696, column: 11, scope: !1368)
!1464 = !DILocation(line: 696, column: 53, scope: !1368)
!1465 = !DILocation(line: 696, column: 60, scope: !1368)
!1466 = !DILocation(line: 697, column: 21, scope: !1368)
!1467 = !DILocation(line: 697, column: 14, scope: !1368)
!1468 = !DILocation(line: 697, column: 57, scope: !1368)
!1469 = !{!1354, !1355, i64 48}
!1470 = !DILocation(line: 697, column: 46, scope: !1368)
!1471 = !DILocation(line: 695, column: 11, scope: !276)
!1472 = !DILocation(line: 699, column: 24, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 698, column: 9)
!1474 = !DILocation(line: 699, column: 60, scope: !1473)
!1475 = !DILocation(line: 699, column: 11, scope: !1473)
!1476 = !DILocation(line: 701, column: 11, scope: !1473)
!1477 = !DILocation(line: 707, column: 21, scope: !1371)
!1478 = !DILocation(line: 710, column: 20, scope: !1419)
!1479 = !DILocation(line: 711, column: 47, scope: !1419)
!1480 = !DILocation(line: 711, column: 19, scope: !1419)
!1481 = !DILocalVariable(name: "ptr", arg: 1, scope: !1482, file: !1226, line: 501, type: !188)
!1482 = distinct !DISubprogram(name: "ptr_align", scope: !1226, file: !1226, line: 501, type: !1483, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!99, !188, !101}
!1485 = !{!1481, !1486, !1487, !1488}
!1486 = !DILocalVariable(name: "alignment", arg: 2, scope: !1482, file: !1226, line: 501, type: !101)
!1487 = !DILocalVariable(name: "p0", scope: !1482, file: !1226, line: 503, type: !45)
!1488 = !DILocalVariable(name: "p1", scope: !1482, file: !1226, line: 504, type: !45)
!1489 = !DILocation(line: 0, scope: !1482, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 713, column: 29, scope: !1419)
!1491 = !DILocation(line: 504, column: 23, scope: !1482, inlinedAt: !1490)
!1492 = !DILocation(line: 504, column: 35, scope: !1482, inlinedAt: !1490)
!1493 = !DILocation(line: 505, column: 25, scope: !1482, inlinedAt: !1490)
!1494 = !DILocation(line: 505, column: 37, scope: !1482, inlinedAt: !1490)
!1495 = !DILocation(line: 505, column: 23, scope: !1482, inlinedAt: !1490)
!1496 = !DILocalVariable(name: "buf", arg: 1, scope: !1497, file: !3, line: 154, type: !8)
!1497 = distinct !DISubprogram(name: "simple_cat", scope: !3, file: !3, line: 152, type: !1498, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1500)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!221, !8, !101}
!1500 = !{!1496, !1501, !1502, !1503}
!1501 = !DILocalVariable(name: "bufsize", arg: 2, scope: !1497, file: !3, line: 158, type: !101)
!1502 = !DILocalVariable(name: "n_read", scope: !1497, file: !3, line: 161, type: !101)
!1503 = !DILocalVariable(name: "n", scope: !1504, file: !3, line: 185, type: !101)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 183, column: 7)
!1505 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 166, column: 5)
!1506 = !DILocation(line: 0, scope: !1497, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 713, column: 17, scope: !1419)
!1508 = !DILocation(line: 165, column: 3, scope: !1497, inlinedAt: !1507)
!1509 = !DILocation(line: 169, column: 27, scope: !1505, inlinedAt: !1507)
!1510 = !DILocation(line: 169, column: 16, scope: !1505, inlinedAt: !1507)
!1511 = !DILocation(line: 170, column: 11, scope: !1505, inlinedAt: !1507)
!1512 = !DILocation(line: 172, column: 21, scope: !1513, inlinedAt: !1507)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 171, column: 9)
!1514 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 170, column: 11)
!1515 = !DILocation(line: 172, column: 34, scope: !1513, inlinedAt: !1507)
!1516 = !DILocation(line: 172, column: 11, scope: !1513, inlinedAt: !1507)
!1517 = !DILocation(line: 173, column: 11, scope: !1513, inlinedAt: !1507)
!1518 = !DILocation(line: 0, scope: !1504, inlinedAt: !1507)
!1519 = !DILocation(line: 186, column: 13, scope: !1520, inlinedAt: !1507)
!1520 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 186, column: 13)
!1521 = !DILocation(line: 186, column: 48, scope: !1520, inlinedAt: !1507)
!1522 = !DILocation(line: 186, column: 13, scope: !1504, inlinedAt: !1507)
!1523 = distinct !{!1523, !1508, !1524}
!1524 = !DILocation(line: 189, column: 5, scope: !1497, inlinedAt: !1507)
!1525 = !DILocation(line: 187, column: 11, scope: !1520, inlinedAt: !1507)
!1526 = !DILocation(line: 717, column: 51, scope: !1373)
!1527 = !DILocation(line: 717, column: 19, scope: !1373)
!1528 = !DILocation(line: 741, column: 50, scope: !1373)
!1529 = !DILocation(line: 742, column: 41, scope: !1373)
!1530 = !DILocation(line: 741, column: 20, scope: !1373)
!1531 = !DILocation(line: 0, scope: !1482, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 744, column: 22, scope: !1373)
!1533 = !DILocation(line: 504, column: 23, scope: !1482, inlinedAt: !1532)
!1534 = !DILocation(line: 504, column: 35, scope: !1482, inlinedAt: !1532)
!1535 = !DILocation(line: 505, column: 25, scope: !1482, inlinedAt: !1532)
!1536 = !DILocation(line: 505, column: 37, scope: !1482, inlinedAt: !1532)
!1537 = !DILocation(line: 505, column: 23, scope: !1482, inlinedAt: !1532)
!1538 = !DILocation(line: 0, scope: !1482, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 745, column: 22, scope: !1373)
!1540 = !DILocation(line: 504, column: 23, scope: !1482, inlinedAt: !1539)
!1541 = !DILocation(line: 504, column: 35, scope: !1482, inlinedAt: !1539)
!1542 = !DILocation(line: 505, column: 25, scope: !1482, inlinedAt: !1539)
!1543 = !DILocation(line: 505, column: 37, scope: !1482, inlinedAt: !1539)
!1544 = !DILocation(line: 505, column: 23, scope: !1482, inlinedAt: !1539)
!1545 = !DILocation(line: 0, scope: !1382, inlinedAt: !1411)
!1546 = !DILocation(line: 258, column: 18, scope: !1382, inlinedAt: !1411)
!1547 = !DILocation(line: 270, column: 14, scope: !1382, inlinedAt: !1411)
!1548 = !DILocation(line: 272, column: 9, scope: !1382, inlinedAt: !1411)
!1549 = !DILocation(line: 0, scope: !1406, inlinedAt: !1411)
!1550 = !DILocation(line: 274, column: 3, scope: !1382, inlinedAt: !1411)
!1551 = !DILocation(line: 269, column: 7, scope: !1382, inlinedAt: !1411)
!1552 = !DILocation(line: 258, column: 7, scope: !1382, inlinedAt: !1411)
!1553 = !DILocation(line: 280, column: 35, scope: !1406, inlinedAt: !1411)
!1554 = !DILocation(line: 280, column: 32, scope: !1406, inlinedAt: !1411)
!1555 = !DILocation(line: 280, column: 15, scope: !1380, inlinedAt: !1411)
!1556 = !DILocation(line: 0, scope: !1405, inlinedAt: !1411)
!1557 = !DILocation(line: 286, column: 23, scope: !1558, inlinedAt: !1411)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 286, column: 23)
!1559 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 285, column: 17)
!1560 = !DILocation(line: 286, column: 63, scope: !1558, inlinedAt: !1411)
!1561 = !DILocation(line: 286, column: 23, scope: !1559, inlinedAt: !1411)
!1562 = !DILocation(line: 287, column: 21, scope: !1558, inlinedAt: !1411)
!1563 = !DILocation(line: 288, column: 22, scope: !1559, inlinedAt: !1411)
!1564 = !DILocation(line: 289, column: 43, scope: !1559, inlinedAt: !1411)
!1565 = !DILocation(line: 291, column: 30, scope: !1405, inlinedAt: !1411)
!1566 = !DILocation(line: 290, column: 17, scope: !1559, inlinedAt: !1411)
!1567 = distinct !{!1567, !1568, !1569}
!1568 = !DILocation(line: 284, column: 15, scope: !1405, inlinedAt: !1411)
!1569 = !DILocation(line: 291, column: 48, scope: !1405, inlinedAt: !1411)
!1570 = !DILocalVariable(name: "__dest", arg: 1, scope: !1571, file: !1572, line: 38, type: !99)
!1571 = distinct !DISubprogram(name: "memmove", scope: !1572, file: !1572, line: 38, type: !1573, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1575)
!1572 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!99, !99, !188, !101}
!1575 = !{!1570, !1576, !1577}
!1576 = !DILocalVariable(name: "__src", arg: 2, scope: !1571, file: !1572, line: 38, type: !188)
!1577 = !DILocalVariable(name: "__len", arg: 3, scope: !1571, file: !1572, line: 38, type: !101)
!1578 = !DILocation(line: 0, scope: !1571, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 296, column: 15, scope: !1405, inlinedAt: !1411)
!1580 = !DILocation(line: 40, column: 10, scope: !1571, inlinedAt: !1579)
!1581 = !DILocation(line: 297, column: 30, scope: !1405, inlinedAt: !1411)
!1582 = !DILocation(line: 297, column: 21, scope: !1405, inlinedAt: !1411)
!1583 = !DILocation(line: 298, column: 13, scope: !1405, inlinedAt: !1411)
!1584 = !DILocation(line: 302, column: 20, scope: !1379, inlinedAt: !1411)
!1585 = !DILocation(line: 302, column: 15, scope: !1380, inlinedAt: !1411)
!1586 = !DILocation(line: 306, column: 15, scope: !1409, inlinedAt: !1411)
!1587 = !DILocation(line: 306, column: 19, scope: !1409, inlinedAt: !1411)
!1588 = !DILocation(line: 312, column: 19, scope: !1589, inlinedAt: !1411)
!1589 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 312, column: 19)
!1590 = !DILocation(line: 313, column: 19, scope: !1589, inlinedAt: !1411)
!1591 = !DILocation(line: 313, column: 29, scope: !1589, inlinedAt: !1411)
!1592 = !DILocation(line: 313, column: 22, scope: !1589, inlinedAt: !1411)
!1593 = !DILocation(line: 313, column: 63, scope: !1589, inlinedAt: !1411)
!1594 = !DILocation(line: 312, column: 19, scope: !1409, inlinedAt: !1411)
!1595 = !DILocation(line: 321, column: 23, scope: !1596, inlinedAt: !1411)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 321, column: 23)
!1597 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 314, column: 17)
!1598 = !DILocation(line: 321, column: 43, scope: !1596, inlinedAt: !1411)
!1599 = !DILocation(line: 327, column: 40, scope: !1600, inlinedAt: !1411)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 326, column: 21)
!1601 = !DILocation(line: 328, column: 30, scope: !1600, inlinedAt: !1411)
!1602 = !DILocation(line: 327, column: 23, scope: !1600, inlinedAt: !1411)
!1603 = !DILocation(line: 330, column: 23, scope: !1600, inlinedAt: !1411)
!1604 = !DILocation(line: 333, column: 19, scope: !1605, inlinedAt: !1411)
!1605 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 333, column: 19)
!1606 = !DILocation(line: 333, column: 29, scope: !1605, inlinedAt: !1411)
!1607 = !DILocation(line: 337, column: 19, scope: !1409, inlinedAt: !1411)
!1608 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1609, file: !3, line: 197, type: !8)
!1609 = distinct !DISubprogram(name: "write_pending", scope: !3, file: !3, line: 197, type: !1610, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1612)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{null, !8, !7}
!1612 = !{!1608, !1613, !1614}
!1613 = !DILocalVariable(name: "bpout", arg: 2, scope: !1609, file: !3, line: 197, type: !7)
!1614 = !DILocalVariable(name: "n_write", scope: !1609, file: !3, line: 199, type: !101)
!1615 = !DILocation(line: 0, scope: !1609, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 338, column: 17, scope: !1617, inlinedAt: !1411)
!1617 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 337, column: 19)
!1618 = !DILocation(line: 199, column: 27, scope: !1609, inlinedAt: !1616)
!1619 = !DILocation(line: 200, column: 9, scope: !1620, inlinedAt: !1616)
!1620 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 200, column: 7)
!1621 = !DILocation(line: 200, column: 7, scope: !1609, inlinedAt: !1616)
!1622 = !DILocation(line: 202, column: 11, scope: !1623, inlinedAt: !1616)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 202, column: 11)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 201, column: 5)
!1625 = !DILocation(line: 202, column: 55, scope: !1623, inlinedAt: !1616)
!1626 = !DILocation(line: 202, column: 11, scope: !1624, inlinedAt: !1616)
!1627 = !DILocation(line: 203, column: 9, scope: !1623, inlinedAt: !1616)
!1628 = !DILocation(line: 342, column: 35, scope: !1409, inlinedAt: !1411)
!1629 = !DILocation(line: 342, column: 24, scope: !1409, inlinedAt: !1411)
!1630 = !DILocation(line: 343, column: 19, scope: !1409, inlinedAt: !1411)
!1631 = !DILocation(line: 345, column: 29, scope: !1632, inlinedAt: !1411)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 344, column: 17)
!1633 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 343, column: 19)
!1634 = !DILocation(line: 345, column: 42, scope: !1632, inlinedAt: !1411)
!1635 = !DILocation(line: 345, column: 19, scope: !1632, inlinedAt: !1411)
!1636 = !DILocation(line: 0, scope: !1609, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 346, column: 19, scope: !1632, inlinedAt: !1411)
!1638 = !DILocation(line: 199, column: 27, scope: !1609, inlinedAt: !1637)
!1639 = !DILocation(line: 200, column: 9, scope: !1620, inlinedAt: !1637)
!1640 = !DILocation(line: 200, column: 7, scope: !1609, inlinedAt: !1637)
!1641 = !DILocation(line: 202, column: 11, scope: !1623, inlinedAt: !1637)
!1642 = !DILocation(line: 202, column: 55, scope: !1623, inlinedAt: !1637)
!1643 = !DILocation(line: 202, column: 11, scope: !1624, inlinedAt: !1637)
!1644 = !DILocation(line: 203, column: 9, scope: !1623, inlinedAt: !1637)
!1645 = !DILocation(line: 0, scope: !1609, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 352, column: 19, scope: !1647, inlinedAt: !1411)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 351, column: 17)
!1648 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 350, column: 19)
!1649 = !DILocation(line: 199, column: 27, scope: !1609, inlinedAt: !1646)
!1650 = !DILocation(line: 200, column: 9, scope: !1620, inlinedAt: !1646)
!1651 = !DILocation(line: 200, column: 7, scope: !1609, inlinedAt: !1646)
!1652 = !DILocation(line: 202, column: 11, scope: !1623, inlinedAt: !1646)
!1653 = !DILocation(line: 202, column: 55, scope: !1623, inlinedAt: !1646)
!1654 = !DILocation(line: 202, column: 11, scope: !1624, inlinedAt: !1646)
!1655 = !DILocation(line: 203, column: 9, scope: !1623, inlinedAt: !1646)
!1656 = !DILocation(line: 361, column: 26, scope: !1409, inlinedAt: !1411)
!1657 = !DILocation(line: 362, column: 20, scope: !1409, inlinedAt: !1411)
!1658 = !{!1252, !1252, i64 0}
!1659 = !DILocation(line: 363, column: 13, scope: !1379, inlinedAt: !1411)
!1660 = !DILocation(line: 371, column: 19, scope: !1377, inlinedAt: !1411)
!1661 = !DILocation(line: 371, column: 30, scope: !1377, inlinedAt: !1411)
!1662 = !DILocation(line: 371, column: 19, scope: !1378, inlinedAt: !1411)
!1663 = !DILocation(line: 373, column: 32, scope: !1664, inlinedAt: !1411)
!1664 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 373, column: 23)
!1665 = !DILocation(line: 373, column: 23, scope: !1376, inlinedAt: !1411)
!1666 = !DILocation(line: 392, column: 30, scope: !1375, inlinedAt: !1411)
!1667 = !DILocation(line: 0, scope: !1668, inlinedAt: !1671)
!1668 = distinct !DISubprogram(name: "next_line_num", scope: !3, file: !3, line: 130, type: !132, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1669)
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "endp", scope: !1668, file: !3, line: 132, type: !8)
!1671 = distinct !DILocation(line: 394, column: 23, scope: !1672, inlinedAt: !1411)
!1672 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 393, column: 21)
!1673 = !DILocation(line: 133, column: 3, scope: !1668, inlinedAt: !1671)
!1674 = !DILocation(line: 135, column: 18, scope: !1675, inlinedAt: !1671)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 135, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 134, column: 5)
!1677 = !DILocation(line: 135, column: 21, scope: !1675, inlinedAt: !1671)
!1678 = !DILocation(line: 135, column: 11, scope: !1676, inlinedAt: !1671)
!1679 = !DILocation(line: 137, column: 12, scope: !1676, inlinedAt: !1671)
!1680 = !DILocation(line: 137, column: 15, scope: !1676, inlinedAt: !1671)
!1681 = !DILocation(line: 139, column: 15, scope: !1668, inlinedAt: !1671)
!1682 = !DILocation(line: 138, column: 5, scope: !1676, inlinedAt: !1671)
!1683 = distinct !{!1683, !1673, !1684}
!1684 = !DILocation(line: 139, column: 32, scope: !1668, inlinedAt: !1671)
!1685 = !DILocation(line: 140, column: 22, scope: !1686, inlinedAt: !1671)
!1686 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 140, column: 7)
!1687 = !DILocation(line: 140, column: 7, scope: !1668, inlinedAt: !1671)
!1688 = !DILocation(line: 141, column: 6, scope: !1686, inlinedAt: !1671)
!1689 = !DILocation(line: 141, column: 23, scope: !1686, inlinedAt: !1671)
!1690 = !DILocation(line: 141, column: 5, scope: !1686, inlinedAt: !1671)
!1691 = !DILocation(line: 143, column: 15, scope: !1686, inlinedAt: !1671)
!1692 = !DILocation(line: 144, column: 7, scope: !1693, inlinedAt: !1671)
!1693 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 144, column: 7)
!1694 = !DILocation(line: 144, column: 24, scope: !1693, inlinedAt: !1671)
!1695 = !DILocation(line: 144, column: 22, scope: !1693, inlinedAt: !1671)
!1696 = !DILocation(line: 144, column: 7, scope: !1668, inlinedAt: !1671)
!1697 = !DILocation(line: 145, column: 19, scope: !1693, inlinedAt: !1671)
!1698 = !DILocation(line: 145, column: 5, scope: !1693, inlinedAt: !1671)
!1699 = !DILocation(line: 395, column: 46, scope: !1672, inlinedAt: !1411)
!1700 = !DILocation(line: 395, column: 39, scope: !1672, inlinedAt: !1411)
!1701 = !DILocalVariable(name: "__dest", arg: 1, scope: !1702, file: !1572, line: 95, type: !1705)
!1702 = distinct !DISubprogram(name: "stpcpy", scope: !1572, file: !1572, line: 95, type: !1703, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1707)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!8, !1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1706 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!1707 = !{!1701, !1708}
!1708 = !DILocalVariable(name: "__src", arg: 2, scope: !1702, file: !1572, line: 95, type: !1706)
!1709 = !DILocation(line: 0, scope: !1702, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 395, column: 31, scope: !1672, inlinedAt: !1411)
!1711 = !DILocation(line: 97, column: 10, scope: !1702, inlinedAt: !1710)
!1712 = !DILocation(line: 396, column: 21, scope: !1672, inlinedAt: !1411)
!1713 = !DILocation(line: 0, scope: !1377, inlinedAt: !1411)
!1714 = !DILocation(line: 401, column: 19, scope: !1378, inlinedAt: !1411)
!1715 = !DILocation(line: 402, column: 23, scope: !1716, inlinedAt: !1411)
!1716 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 401, column: 19)
!1717 = !DILocation(line: 402, column: 26, scope: !1716, inlinedAt: !1411)
!1718 = !DILocation(line: 402, column: 17, scope: !1716, inlinedAt: !1411)
!1719 = !DILocation(line: 406, column: 21, scope: !1378, inlinedAt: !1411)
!1720 = !DILocation(line: 406, column: 24, scope: !1378, inlinedAt: !1411)
!1721 = !DILocation(line: 0, scope: !1380, inlinedAt: !1411)
!1722 = !DILocation(line: 410, column: 17, scope: !1381, inlinedAt: !1411)
!1723 = !DILocation(line: 409, column: 9, scope: !1380, inlinedAt: !1411)
!1724 = distinct !{!1724, !1725, !1726}
!1725 = !DILocation(line: 276, column: 7, scope: !1381, inlinedAt: !1411)
!1726 = !DILocation(line: 410, column: 24, scope: !1381, inlinedAt: !1411)
!1727 = !DILocation(line: 414, column: 20, scope: !1728, inlinedAt: !1411)
!1728 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 414, column: 11)
!1729 = !DILocation(line: 414, column: 25, scope: !1728, inlinedAt: !1411)
!1730 = !DILocation(line: 0, scope: !1668, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 416, column: 11, scope: !1732, inlinedAt: !1411)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 415, column: 9)
!1733 = !DILocation(line: 133, column: 3, scope: !1668, inlinedAt: !1731)
!1734 = !DILocation(line: 135, column: 18, scope: !1675, inlinedAt: !1731)
!1735 = !DILocation(line: 135, column: 21, scope: !1675, inlinedAt: !1731)
!1736 = !DILocation(line: 135, column: 11, scope: !1676, inlinedAt: !1731)
!1737 = !DILocation(line: 137, column: 12, scope: !1676, inlinedAt: !1731)
!1738 = !DILocation(line: 137, column: 15, scope: !1676, inlinedAt: !1731)
!1739 = !DILocation(line: 139, column: 15, scope: !1668, inlinedAt: !1731)
!1740 = !DILocation(line: 138, column: 5, scope: !1676, inlinedAt: !1731)
!1741 = distinct !{!1741, !1733, !1742}
!1742 = !DILocation(line: 139, column: 32, scope: !1668, inlinedAt: !1731)
!1743 = !DILocation(line: 140, column: 22, scope: !1686, inlinedAt: !1731)
!1744 = !DILocation(line: 140, column: 7, scope: !1668, inlinedAt: !1731)
!1745 = !DILocation(line: 141, column: 6, scope: !1686, inlinedAt: !1731)
!1746 = !DILocation(line: 141, column: 23, scope: !1686, inlinedAt: !1731)
!1747 = !DILocation(line: 141, column: 5, scope: !1686, inlinedAt: !1731)
!1748 = !DILocation(line: 143, column: 15, scope: !1686, inlinedAt: !1731)
!1749 = !DILocation(line: 144, column: 7, scope: !1693, inlinedAt: !1731)
!1750 = !DILocation(line: 144, column: 24, scope: !1693, inlinedAt: !1731)
!1751 = !DILocation(line: 144, column: 22, scope: !1693, inlinedAt: !1731)
!1752 = !DILocation(line: 144, column: 7, scope: !1668, inlinedAt: !1731)
!1753 = !DILocation(line: 145, column: 19, scope: !1693, inlinedAt: !1731)
!1754 = !DILocation(line: 145, column: 5, scope: !1693, inlinedAt: !1731)
!1755 = !DILocation(line: 417, column: 34, scope: !1732, inlinedAt: !1411)
!1756 = !DILocation(line: 417, column: 27, scope: !1732, inlinedAt: !1411)
!1757 = !DILocation(line: 0, scope: !1702, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 417, column: 19, scope: !1732, inlinedAt: !1411)
!1759 = !DILocation(line: 97, column: 10, scope: !1702, inlinedAt: !1758)
!1760 = !DILocation(line: 417, column: 17, scope: !1732, inlinedAt: !1411)
!1761 = !DILocation(line: 418, column: 9, scope: !1732, inlinedAt: !1411)
!1762 = !DILocation(line: 428, column: 11, scope: !1381, inlinedAt: !1411)
!1763 = !DILocation(line: 0, scope: !1381, inlinedAt: !1411)
!1764 = !DILocation(line: 432, column: 22, scope: !1765, inlinedAt: !1411)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 432, column: 19)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 431, column: 13)
!1767 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 429, column: 9)
!1768 = !DILocation(line: 432, column: 19, scope: !1766, inlinedAt: !1411)
!1769 = !DILocation(line: 434, column: 26, scope: !1770, inlinedAt: !1411)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 434, column: 23)
!1771 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 433, column: 17)
!1772 = !DILocation(line: 434, column: 23, scope: !1771, inlinedAt: !1411)
!1773 = !DILocation(line: 435, column: 27, scope: !1770, inlinedAt: !1411)
!1774 = !DILocation(line: 435, column: 30, scope: !1770, inlinedAt: !1411)
!1775 = !DILocation(line: 435, column: 21, scope: !1770, inlinedAt: !1411)
!1776 = !DILocation(line: 436, column: 31, scope: !1777, inlinedAt: !1411)
!1777 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 436, column: 28)
!1778 = !DILocation(line: 0, scope: !1777, inlinedAt: !1411)
!1779 = !DILocation(line: 436, column: 28, scope: !1770, inlinedAt: !1411)
!1780 = !DILocation(line: 438, column: 32, scope: !1781, inlinedAt: !1411)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 437, column: 21)
!1782 = !DILocation(line: 439, column: 29, scope: !1781, inlinedAt: !1411)
!1783 = !DILocation(line: 439, column: 32, scope: !1781, inlinedAt: !1411)
!1784 = !DILocation(line: 440, column: 21, scope: !1781, inlinedAt: !1411)
!1785 = !DILocation(line: 443, column: 32, scope: !1786, inlinedAt: !1411)
!1786 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 442, column: 21)
!1787 = !DILocation(line: 444, column: 29, scope: !1786, inlinedAt: !1411)
!1788 = !DILocation(line: 444, column: 32, scope: !1786, inlinedAt: !1411)
!1789 = !DILocation(line: 445, column: 30, scope: !1790, inlinedAt: !1411)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 445, column: 27)
!1791 = !DILocation(line: 445, column: 27, scope: !1786, inlinedAt: !1411)
!1792 = !DILocation(line: 447, column: 34, scope: !1793, inlinedAt: !1411)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 447, column: 31)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 446, column: 25)
!1795 = !DILocation(line: 447, column: 31, scope: !1794, inlinedAt: !1411)
!1796 = !DILocation(line: 448, column: 43, scope: !1793, inlinedAt: !1411)
!1797 = !DILocation(line: 448, column: 35, scope: !1793, inlinedAt: !1411)
!1798 = !DILocation(line: 448, column: 38, scope: !1793, inlinedAt: !1411)
!1799 = !DILocation(line: 448, column: 29, scope: !1793, inlinedAt: !1411)
!1800 = !DILocation(line: 451, column: 37, scope: !1801, inlinedAt: !1411)
!1801 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 450, column: 29)
!1802 = !DILocation(line: 451, column: 40, scope: !1801, inlinedAt: !1411)
!1803 = !DILocation(line: 452, column: 37, scope: !1801, inlinedAt: !1411)
!1804 = !DILocation(line: 452, column: 40, scope: !1801, inlinedAt: !1411)
!1805 = !DILocation(line: 457, column: 33, scope: !1806, inlinedAt: !1411)
!1806 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 456, column: 25)
!1807 = !DILocation(line: 457, column: 36, scope: !1806, inlinedAt: !1411)
!1808 = !DILocation(line: 458, column: 47, scope: !1806, inlinedAt: !1411)
!1809 = !DILocation(line: 458, column: 33, scope: !1806, inlinedAt: !1411)
!1810 = !DILocation(line: 458, column: 36, scope: !1806, inlinedAt: !1411)
!1811 = !DILocation(line: 462, column: 27, scope: !1812, inlinedAt: !1411)
!1812 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 462, column: 24)
!1813 = !DILocation(line: 462, column: 35, scope: !1812, inlinedAt: !1411)
!1814 = !DILocation(line: 463, column: 23, scope: !1812, inlinedAt: !1411)
!1815 = !DILocation(line: 463, column: 26, scope: !1812, inlinedAt: !1411)
!1816 = !DILocation(line: 463, column: 17, scope: !1812, inlinedAt: !1411)
!1817 = !DILocation(line: 464, column: 27, scope: !1818, inlinedAt: !1411)
!1818 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 464, column: 24)
!1819 = !DILocation(line: 464, column: 24, scope: !1812, inlinedAt: !1411)
!1820 = distinct !{!1820, !1550, !1821}
!1821 = !DILocation(line: 499, column: 5, scope: !1382, inlinedAt: !1411)
!1822 = !DILocation(line: 471, column: 25, scope: !1823, inlinedAt: !1411)
!1823 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 470, column: 17)
!1824 = !DILocation(line: 471, column: 28, scope: !1823, inlinedAt: !1411)
!1825 = !DILocation(line: 472, column: 33, scope: !1823, inlinedAt: !1411)
!1826 = !DILocation(line: 472, column: 25, scope: !1823, inlinedAt: !1411)
!1827 = !DILocation(line: 472, column: 28, scope: !1823, inlinedAt: !1411)
!1828 = !DILocation(line: 0, scope: !1765, inlinedAt: !1411)
!1829 = !DILocation(line: 475, column: 25, scope: !1766, inlinedAt: !1411)
!1830 = !DILocation(line: 475, column: 20, scope: !1766, inlinedAt: !1411)
!1831 = !DILocation(line: 430, column: 11, scope: !1767, inlinedAt: !1411)
!1832 = distinct !{!1832, !1831, !1833}
!1833 = !DILocation(line: 476, column: 13, scope: !1767, inlinedAt: !1411)
!1834 = !DILocation(line: 483, column: 22, scope: !1414, inlinedAt: !1411)
!1835 = !DILocation(line: 483, column: 30, scope: !1414, inlinedAt: !1411)
!1836 = !DILocation(line: 485, column: 25, scope: !1837, inlinedAt: !1411)
!1837 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 484, column: 17)
!1838 = !DILocation(line: 485, column: 28, scope: !1837, inlinedAt: !1411)
!1839 = !DILocation(line: 486, column: 25, scope: !1837, inlinedAt: !1411)
!1840 = !DILocation(line: 486, column: 28, scope: !1837, inlinedAt: !1411)
!1841 = !DILocation(line: 487, column: 17, scope: !1837, inlinedAt: !1411)
!1842 = !DILocation(line: 488, column: 27, scope: !1843, inlinedAt: !1411)
!1843 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 488, column: 24)
!1844 = !DILocation(line: 488, column: 24, scope: !1414, inlinedAt: !1411)
!1845 = !DILocation(line: 489, column: 23, scope: !1843, inlinedAt: !1411)
!1846 = !DILocation(line: 489, column: 26, scope: !1843, inlinedAt: !1411)
!1847 = !DILocation(line: 496, column: 25, scope: !1415, inlinedAt: !1411)
!1848 = !DILocation(line: 496, column: 20, scope: !1415, inlinedAt: !1411)
!1849 = !DILocation(line: 481, column: 11, scope: !1416, inlinedAt: !1411)
!1850 = distinct !{!1850, !1849, !1851}
!1851 = !DILocation(line: 497, column: 13, scope: !1416, inlinedAt: !1411)
!1852 = !DILocation(line: 749, column: 11, scope: !1373)
!1853 = !DILocation(line: 752, column: 7, scope: !276)
!1854 = !DILocation(line: 0, scope: !276)
!1855 = !DILocation(line: 754, column: 5, scope: !276)
!1856 = !DILocation(line: 755, column: 12, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !276, file: !3, line: 755, column: 11)
!1858 = !DILocation(line: 755, column: 32, scope: !1857)
!1859 = !DILocation(line: 755, column: 42, scope: !1857)
!1860 = !DILocation(line: 755, column: 35, scope: !1857)
!1861 = !DILocation(line: 755, column: 54, scope: !1857)
!1862 = !DILocation(line: 755, column: 11, scope: !276)
!1863 = !DILocation(line: 757, column: 21, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 756, column: 9)
!1865 = !DILocation(line: 757, column: 34, scope: !1864)
!1866 = !DILocation(line: 757, column: 11, scope: !1864)
!1867 = !DILocation(line: 759, column: 9, scope: !1864)
!1868 = !DILocation(line: 761, column: 10, scope: !2)
!1869 = !DILocation(line: 761, column: 19, scope: !2)
!1870 = !DILocation(line: 760, column: 5, scope: !276)
!1871 = distinct !{!1871, !1420, !1872}
!1872 = !DILocation(line: 761, column: 25, scope: !2)
!1873 = !DILocation(line: 763, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !2, file: !3, line: 763, column: 7)
!1875 = !DILocation(line: 763, column: 23, scope: !1874)
!1876 = !DILocation(line: 763, column: 26, scope: !1874)
!1877 = !DILocation(line: 763, column: 47, scope: !1874)
!1878 = !DILocation(line: 763, column: 7, scope: !2)
!1879 = !DILocation(line: 764, column: 5, scope: !1874)
!1880 = !DILocation(line: 766, column: 10, scope: !2)
!1881 = !DILocation(line: 767, column: 1, scope: !2)
!1882 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !288, file: !288, line: 51, type: !115, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !1883)
!1883 = !{!1884}
!1884 = !DILocalVariable(name: "file", arg: 1, scope: !1882, file: !288, line: 51, type: !45)
!1885 = !DILocation(line: 0, scope: !1882)
!1886 = !DILocation(line: 53, column: 13, scope: !1882)
!1887 = !DILocation(line: 54, column: 1, scope: !1882)
!1888 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !288, file: !288, line: 88, type: !1889, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !221}
!1891 = !{!1892}
!1892 = !DILocalVariable(name: "ignore", arg: 1, scope: !1888, file: !288, line: 88, type: !221)
!1893 = !DILocation(line: 0, scope: !1888)
!1894 = !DILocation(line: 90, column: 16, scope: !1888)
!1895 = !{!1896, !1896, i64 0}
!1896 = !{!"_Bool", !1252, i64 0}
!1897 = !DILocation(line: 91, column: 1, scope: !1888)
!1898 = distinct !DISubprogram(name: "close_stdout", scope: !288, file: !288, line: 117, type: !132, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !1899)
!1899 = !{!1900}
!1900 = !DILocalVariable(name: "write_error", scope: !1901, file: !288, line: 122, type: !45)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !288, line: 121, column: 5)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !288, line: 119, column: 7)
!1903 = !DILocation(line: 119, column: 21, scope: !1902)
!1904 = !DILocation(line: 119, column: 7, scope: !1902)
!1905 = !DILocation(line: 119, column: 29, scope: !1902)
!1906 = !DILocation(line: 120, column: 7, scope: !1902)
!1907 = !DILocation(line: 120, column: 12, scope: !1902)
!1908 = !{i8 0, i8 2}
!1909 = !DILocation(line: 120, column: 25, scope: !1902)
!1910 = !DILocation(line: 120, column: 28, scope: !1902)
!1911 = !DILocation(line: 120, column: 34, scope: !1902)
!1912 = !DILocation(line: 119, column: 7, scope: !1898)
!1913 = !DILocation(line: 122, column: 33, scope: !1901)
!1914 = !DILocation(line: 0, scope: !1901)
!1915 = !DILocation(line: 123, column: 11, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1901, file: !288, line: 123, column: 11)
!1917 = !DILocation(line: 0, scope: !1916)
!1918 = !DILocation(line: 123, column: 11, scope: !1901)
!1919 = !DILocation(line: 124, column: 36, scope: !1916)
!1920 = !DILocation(line: 124, column: 9, scope: !1916)
!1921 = !DILocation(line: 127, column: 9, scope: !1916)
!1922 = !DILocation(line: 129, column: 14, scope: !1901)
!1923 = !DILocation(line: 129, column: 7, scope: !1901)
!1924 = !DILocation(line: 134, column: 42, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1898, file: !288, line: 134, column: 7)
!1926 = !DILocation(line: 134, column: 28, scope: !1925)
!1927 = !DILocation(line: 134, column: 50, scope: !1925)
!1928 = !DILocation(line: 134, column: 7, scope: !1898)
!1929 = !DILocation(line: 135, column: 12, scope: !1925)
!1930 = !DILocation(line: 135, column: 5, scope: !1925)
!1931 = !DILocation(line: 136, column: 1, scope: !1898)
!1932 = distinct !DISubprogram(name: "fdadvise", scope: !502, file: !502, line: 31, type: !1933, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !1937)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !6, !1935, !1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !49, line: 63, baseType: !75)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !28, line: 52, baseType: !27)
!1937 = !{!1938, !1939, !1940, !1941, !1942}
!1938 = !DILocalVariable(name: "fd", arg: 1, scope: !1932, file: !502, line: 31, type: !6)
!1939 = !DILocalVariable(name: "offset", arg: 2, scope: !1932, file: !502, line: 31, type: !1935)
!1940 = !DILocalVariable(name: "len", arg: 3, scope: !1932, file: !502, line: 31, type: !1935)
!1941 = !DILocalVariable(name: "advice", arg: 4, scope: !1932, file: !502, line: 31, type: !1936)
!1942 = !DILocalVariable(name: "__x", scope: !1943, file: !502, line: 34, type: !6)
!1943 = distinct !DILexicalBlock(scope: !1932, file: !502, line: 34, column: 3)
!1944 = !DILocation(line: 0, scope: !1932)
!1945 = !DILocation(line: 34, column: 3, scope: !1943)
!1946 = !DILocation(line: 0, scope: !1943)
!1947 = !DILocation(line: 36, column: 1, scope: !1932)
!1948 = distinct !DISubprogram(name: "fadvise", scope: !502, file: !502, line: 39, type: !1949, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !1954)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1951, !1936}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1953, line: 7, baseType: !512)
!1953 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1954 = !{!1955, !1956}
!1955 = !DILocalVariable(name: "fp", arg: 1, scope: !1948, file: !502, line: 39, type: !1951)
!1956 = !DILocalVariable(name: "advice", arg: 2, scope: !1948, file: !502, line: 39, type: !1936)
!1957 = !DILocation(line: 0, scope: !1948)
!1958 = !DILocation(line: 41, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1948, file: !502, line: 41, column: 7)
!1960 = !DILocation(line: 41, column: 7, scope: !1948)
!1961 = !DILocation(line: 42, column: 15, scope: !1959)
!1962 = !DILocation(line: 0, scope: !1932, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 42, column: 5, scope: !1959)
!1964 = !DILocation(line: 34, column: 3, scope: !1943, inlinedAt: !1963)
!1965 = !DILocation(line: 0, scope: !1943, inlinedAt: !1963)
!1966 = !DILocation(line: 42, column: 5, scope: !1959)
!1967 = !DILocation(line: 43, column: 1, scope: !1948)
!1968 = distinct !DISubprogram(name: "full_write", scope: !544, file: !544, line: 58, type: !1969, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !543, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!101, !6, !188, !101}
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977}
!1972 = !DILocalVariable(name: "fd", arg: 1, scope: !1968, file: !544, line: 58, type: !6)
!1973 = !DILocalVariable(name: "buf", arg: 2, scope: !1968, file: !544, line: 58, type: !188)
!1974 = !DILocalVariable(name: "count", arg: 3, scope: !1968, file: !544, line: 58, type: !101)
!1975 = !DILocalVariable(name: "total", scope: !1968, file: !544, line: 60, type: !101)
!1976 = !DILocalVariable(name: "ptr", scope: !1968, file: !544, line: 61, type: !45)
!1977 = !DILocalVariable(name: "n_rw", scope: !1978, file: !544, line: 65, type: !101)
!1978 = distinct !DILexicalBlock(scope: !1968, file: !544, line: 64, column: 5)
!1979 = !DILocation(line: 0, scope: !1968)
!1980 = !DILocation(line: 63, column: 16, scope: !1968)
!1981 = !DILocation(line: 63, column: 3, scope: !1968)
!1982 = !DILocation(line: 65, column: 21, scope: !1978)
!1983 = !DILocation(line: 0, scope: !1978)
!1984 = !DILocation(line: 66, column: 11, scope: !1978)
!1985 = !DILocation(line: 70, column: 11, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !544, line: 69, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1978, file: !544, line: 68, column: 11)
!1988 = !DILocation(line: 70, column: 17, scope: !1986)
!1989 = !DILocation(line: 71, column: 11, scope: !1986)
!1990 = !DILocation(line: 73, column: 13, scope: !1978)
!1991 = !DILocation(line: 74, column: 11, scope: !1978)
!1992 = !DILocation(line: 75, column: 13, scope: !1978)
!1993 = !DILocation(line: 78, column: 3, scope: !1968)
!1994 = distinct !DISubprogram(name: "set_program_name", scope: !339, file: !339, line: 39, type: !115, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !338, retainedNodes: !1995)
!1995 = !{!1996, !1997, !1998}
!1996 = !DILocalVariable(name: "argv0", arg: 1, scope: !1994, file: !339, line: 39, type: !45)
!1997 = !DILocalVariable(name: "slash", scope: !1994, file: !339, line: 46, type: !45)
!1998 = !DILocalVariable(name: "base", scope: !1994, file: !339, line: 47, type: !45)
!1999 = !DILocation(line: 0, scope: !1994)
!2000 = !DILocation(line: 51, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1994, file: !339, line: 51, column: 7)
!2002 = !DILocation(line: 51, column: 7, scope: !1994)
!2003 = !DILocation(line: 55, column: 14, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !339, line: 52, column: 5)
!2005 = !DILocation(line: 54, column: 7, scope: !2004)
!2006 = !DILocation(line: 56, column: 7, scope: !2004)
!2007 = !DILocation(line: 59, column: 11, scope: !1994)
!2008 = !DILocation(line: 60, column: 17, scope: !1994)
!2009 = !DILocation(line: 60, column: 11, scope: !1994)
!2010 = !DILocation(line: 61, column: 12, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1994, file: !339, line: 61, column: 7)
!2012 = !DILocation(line: 61, column: 20, scope: !2011)
!2013 = !DILocation(line: 61, column: 25, scope: !2011)
!2014 = !DILocation(line: 61, column: 42, scope: !2011)
!2015 = !DILocation(line: 61, column: 28, scope: !2011)
!2016 = !DILocation(line: 61, column: 61, scope: !2011)
!2017 = !DILocation(line: 61, column: 7, scope: !1994)
!2018 = !DILocation(line: 64, column: 11, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !339, line: 64, column: 11)
!2020 = distinct !DILexicalBlock(scope: !2011, file: !339, line: 62, column: 5)
!2021 = !DILocation(line: 64, column: 36, scope: !2019)
!2022 = !DILocation(line: 64, column: 11, scope: !2020)
!2023 = !DILocation(line: 66, column: 24, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !339, line: 65, column: 9)
!2025 = !DILocation(line: 70, column: 41, scope: !2024)
!2026 = !DILocation(line: 72, column: 9, scope: !2024)
!2027 = !DILocation(line: 84, column: 16, scope: !1994)
!2028 = !DILocation(line: 90, column: 27, scope: !1994)
!2029 = !DILocation(line: 92, column: 1, scope: !1994)
!2030 = distinct !DISubprogram(name: "clone_quoting_options", scope: !380, file: !380, line: 122, type: !2031, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2034)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!2033, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2034 = !{!2035, !2036, !2037}
!2035 = !DILocalVariable(name: "o", arg: 1, scope: !2030, file: !380, line: 122, type: !2033)
!2036 = !DILocalVariable(name: "e", scope: !2030, file: !380, line: 124, type: !6)
!2037 = !DILocalVariable(name: "p", scope: !2030, file: !380, line: 125, type: !2033)
!2038 = !DILocation(line: 0, scope: !2030)
!2039 = !DILocation(line: 124, column: 11, scope: !2030)
!2040 = !DILocation(line: 125, column: 40, scope: !2030)
!2041 = !DILocation(line: 125, column: 31, scope: !2030)
!2042 = !DILocation(line: 127, column: 9, scope: !2030)
!2043 = !DILocation(line: 128, column: 3, scope: !2030)
!2044 = distinct !DISubprogram(name: "get_quoting_style", scope: !380, file: !380, line: 133, type: !2045, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!12, !410}
!2047 = !{!2048}
!2048 = !DILocalVariable(name: "o", arg: 1, scope: !2044, file: !380, line: 133, type: !410)
!2049 = !DILocation(line: 0, scope: !2044)
!2050 = !DILocation(line: 135, column: 11, scope: !2044)
!2051 = !DILocation(line: 135, column: 46, scope: !2044)
!2052 = !{!2053, !1252, i64 0}
!2053 = !{!"quoting_options", !1252, i64 0, !1344, i64 4, !1252, i64 8, !1251, i64 40, !1251, i64 48}
!2054 = !DILocation(line: 135, column: 3, scope: !2044)
!2055 = distinct !DISubprogram(name: "set_quoting_style", scope: !380, file: !380, line: 141, type: !2056, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !2033, !12}
!2058 = !{!2059, !2060}
!2059 = !DILocalVariable(name: "o", arg: 1, scope: !2055, file: !380, line: 141, type: !2033)
!2060 = !DILocalVariable(name: "s", arg: 2, scope: !2055, file: !380, line: 141, type: !12)
!2061 = !DILocation(line: 0, scope: !2055)
!2062 = !DILocation(line: 143, column: 4, scope: !2055)
!2063 = !DILocation(line: 143, column: 39, scope: !2055)
!2064 = !DILocation(line: 143, column: 45, scope: !2055)
!2065 = !DILocation(line: 144, column: 1, scope: !2055)
!2066 = distinct !DISubprogram(name: "set_char_quoting", scope: !380, file: !380, line: 152, type: !2067, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!6, !2033, !9, !6}
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2076, !2077}
!2070 = !DILocalVariable(name: "o", arg: 1, scope: !2066, file: !380, line: 152, type: !2033)
!2071 = !DILocalVariable(name: "c", arg: 2, scope: !2066, file: !380, line: 152, type: !9)
!2072 = !DILocalVariable(name: "i", arg: 3, scope: !2066, file: !380, line: 152, type: !6)
!2073 = !DILocalVariable(name: "uc", scope: !2066, file: !380, line: 154, type: !1397)
!2074 = !DILocalVariable(name: "p", scope: !2066, file: !380, line: 155, type: !2075)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2076 = !DILocalVariable(name: "shift", scope: !2066, file: !380, line: 157, type: !6)
!2077 = !DILocalVariable(name: "r", scope: !2066, file: !380, line: 158, type: !6)
!2078 = !DILocation(line: 0, scope: !2066)
!2079 = !DILocation(line: 156, column: 6, scope: !2066)
!2080 = !DILocation(line: 156, column: 62, scope: !2066)
!2081 = !DILocation(line: 156, column: 57, scope: !2066)
!2082 = !DILocation(line: 157, column: 15, scope: !2066)
!2083 = !DILocation(line: 158, column: 12, scope: !2066)
!2084 = !DILocation(line: 158, column: 15, scope: !2066)
!2085 = !DILocation(line: 158, column: 25, scope: !2066)
!2086 = !DILocation(line: 159, column: 13, scope: !2066)
!2087 = !DILocation(line: 159, column: 18, scope: !2066)
!2088 = !DILocation(line: 159, column: 23, scope: !2066)
!2089 = !DILocation(line: 159, column: 6, scope: !2066)
!2090 = !DILocation(line: 160, column: 3, scope: !2066)
!2091 = distinct !DISubprogram(name: "set_quoting_flags", scope: !380, file: !380, line: 168, type: !2092, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!6, !2033, !6}
!2094 = !{!2095, !2096, !2097}
!2095 = !DILocalVariable(name: "o", arg: 1, scope: !2091, file: !380, line: 168, type: !2033)
!2096 = !DILocalVariable(name: "i", arg: 2, scope: !2091, file: !380, line: 168, type: !6)
!2097 = !DILocalVariable(name: "r", scope: !2091, file: !380, line: 170, type: !6)
!2098 = !DILocation(line: 0, scope: !2091)
!2099 = !DILocation(line: 171, column: 8, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2091, file: !380, line: 171, column: 7)
!2101 = !DILocation(line: 171, column: 7, scope: !2091)
!2102 = !DILocation(line: 173, column: 10, scope: !2091)
!2103 = !{!2053, !1344, i64 4}
!2104 = !DILocation(line: 174, column: 12, scope: !2091)
!2105 = !DILocation(line: 175, column: 3, scope: !2091)
!2106 = distinct !DISubprogram(name: "set_custom_quoting", scope: !380, file: !380, line: 179, type: !2107, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !2033, !45, !45}
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "o", arg: 1, scope: !2106, file: !380, line: 179, type: !2033)
!2111 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2106, file: !380, line: 180, type: !45)
!2112 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2106, file: !380, line: 180, type: !45)
!2113 = !DILocation(line: 0, scope: !2106)
!2114 = !DILocation(line: 182, column: 8, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2106, file: !380, line: 182, column: 7)
!2116 = !DILocation(line: 182, column: 7, scope: !2106)
!2117 = !DILocation(line: 184, column: 6, scope: !2106)
!2118 = !DILocation(line: 184, column: 12, scope: !2106)
!2119 = !DILocation(line: 185, column: 8, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2106, file: !380, line: 185, column: 7)
!2121 = !DILocation(line: 185, column: 23, scope: !2120)
!2122 = !DILocation(line: 185, column: 19, scope: !2120)
!2123 = !DILocation(line: 186, column: 5, scope: !2120)
!2124 = !DILocation(line: 187, column: 6, scope: !2106)
!2125 = !DILocation(line: 187, column: 17, scope: !2106)
!2126 = !{!2053, !1251, i64 40}
!2127 = !DILocation(line: 188, column: 6, scope: !2106)
!2128 = !DILocation(line: 188, column: 18, scope: !2106)
!2129 = !{!2053, !1251, i64 48}
!2130 = !DILocation(line: 189, column: 1, scope: !2106)
!2131 = distinct !DISubprogram(name: "quotearg_buffer", scope: !380, file: !380, line: 784, type: !2132, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!101, !8, !101, !45, !101, !410}
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142}
!2135 = !DILocalVariable(name: "buffer", arg: 1, scope: !2131, file: !380, line: 784, type: !8)
!2136 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2131, file: !380, line: 784, type: !101)
!2137 = !DILocalVariable(name: "arg", arg: 3, scope: !2131, file: !380, line: 785, type: !45)
!2138 = !DILocalVariable(name: "argsize", arg: 4, scope: !2131, file: !380, line: 785, type: !101)
!2139 = !DILocalVariable(name: "o", arg: 5, scope: !2131, file: !380, line: 786, type: !410)
!2140 = !DILocalVariable(name: "p", scope: !2131, file: !380, line: 788, type: !410)
!2141 = !DILocalVariable(name: "e", scope: !2131, file: !380, line: 789, type: !6)
!2142 = !DILocalVariable(name: "r", scope: !2131, file: !380, line: 790, type: !101)
!2143 = !DILocation(line: 0, scope: !2131)
!2144 = !DILocation(line: 788, column: 37, scope: !2131)
!2145 = !DILocation(line: 789, column: 11, scope: !2131)
!2146 = !DILocation(line: 791, column: 43, scope: !2131)
!2147 = !DILocation(line: 791, column: 53, scope: !2131)
!2148 = !DILocation(line: 791, column: 60, scope: !2131)
!2149 = !DILocation(line: 792, column: 43, scope: !2131)
!2150 = !DILocation(line: 792, column: 58, scope: !2131)
!2151 = !DILocation(line: 790, column: 14, scope: !2131)
!2152 = !DILocation(line: 793, column: 9, scope: !2131)
!2153 = !DILocation(line: 794, column: 3, scope: !2131)
!2154 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !380, file: !380, line: 256, type: !2155, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2159)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!101, !8, !101, !45, !101, !12, !6, !2157, !45, !45}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2184, !2185, !2186, !2187, !2188, !2191, !2192, !2198, !2201, !2202, !2209, !2212, !2213, !2214, !2215, !2216, !2217}
!2160 = !DILocalVariable(name: "buffer", arg: 1, scope: !2154, file: !380, line: 256, type: !8)
!2161 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2154, file: !380, line: 256, type: !101)
!2162 = !DILocalVariable(name: "arg", arg: 3, scope: !2154, file: !380, line: 257, type: !45)
!2163 = !DILocalVariable(name: "argsize", arg: 4, scope: !2154, file: !380, line: 257, type: !101)
!2164 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2154, file: !380, line: 258, type: !12)
!2165 = !DILocalVariable(name: "flags", arg: 6, scope: !2154, file: !380, line: 258, type: !6)
!2166 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2154, file: !380, line: 259, type: !2157)
!2167 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2154, file: !380, line: 260, type: !45)
!2168 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2154, file: !380, line: 261, type: !45)
!2169 = !DILocalVariable(name: "i", scope: !2154, file: !380, line: 263, type: !101)
!2170 = !DILocalVariable(name: "len", scope: !2154, file: !380, line: 264, type: !101)
!2171 = !DILocalVariable(name: "orig_buffersize", scope: !2154, file: !380, line: 265, type: !101)
!2172 = !DILocalVariable(name: "quote_string", scope: !2154, file: !380, line: 266, type: !45)
!2173 = !DILocalVariable(name: "quote_string_len", scope: !2154, file: !380, line: 267, type: !101)
!2174 = !DILocalVariable(name: "backslash_escapes", scope: !2154, file: !380, line: 268, type: !221)
!2175 = !DILocalVariable(name: "unibyte_locale", scope: !2154, file: !380, line: 269, type: !221)
!2176 = !DILocalVariable(name: "elide_outer_quotes", scope: !2154, file: !380, line: 270, type: !221)
!2177 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2154, file: !380, line: 271, type: !221)
!2178 = !DILocalVariable(name: "encountered_single_quote", scope: !2154, file: !380, line: 272, type: !221)
!2179 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2154, file: !380, line: 273, type: !221)
!2180 = !DILocalVariable(name: "c", scope: !2181, file: !380, line: 402, type: !1397)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !380, line: 401, column: 5)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !380, line: 400, column: 3)
!2183 = distinct !DILexicalBlock(scope: !2154, file: !380, line: 400, column: 3)
!2184 = !DILocalVariable(name: "esc", scope: !2181, file: !380, line: 403, type: !1397)
!2185 = !DILocalVariable(name: "is_right_quote", scope: !2181, file: !380, line: 404, type: !221)
!2186 = !DILocalVariable(name: "escaping", scope: !2181, file: !380, line: 405, type: !221)
!2187 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2181, file: !380, line: 406, type: !221)
!2188 = !DILocalVariable(name: "m", scope: !2189, file: !380, line: 610, type: !101)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 608, column: 11)
!2190 = distinct !DILexicalBlock(scope: !2181, file: !380, line: 426, column: 9)
!2191 = !DILocalVariable(name: "printable", scope: !2189, file: !380, line: 612, type: !221)
!2192 = !DILocalVariable(name: "mbstate", scope: !2193, file: !380, line: 621, type: !2195)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !380, line: 620, column: 15)
!2194 = distinct !DILexicalBlock(scope: !2189, file: !380, line: 614, column: 17)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2196, line: 6, baseType: !2197)
!2196 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !431, line: 21, baseType: !430)
!2198 = !DILocalVariable(name: "w", scope: !2199, file: !380, line: 631, type: !2200)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !380, line: 630, column: 19)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 74, baseType: !6)
!2201 = !DILocalVariable(name: "bytes", scope: !2199, file: !380, line: 632, type: !101)
!2202 = !DILocalVariable(name: "j", scope: !2203, file: !380, line: 657, type: !101)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !380, line: 656, column: 27)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !380, line: 654, column: 29)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !380, line: 649, column: 23)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !380, line: 641, column: 30)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !380, line: 636, column: 30)
!2208 = distinct !DILexicalBlock(scope: !2199, file: !380, line: 634, column: 25)
!2209 = !DILocalVariable(name: "ilim", scope: !2210, file: !380, line: 684, type: !101)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !380, line: 681, column: 15)
!2211 = distinct !DILexicalBlock(scope: !2189, file: !380, line: 680, column: 17)
!2212 = !DILabel(scope: !2154, name: "process_input", file: !380, line: 314)
!2213 = !DILabel(scope: !2190, name: "c_and_shell_escape", file: !380, line: 512)
!2214 = !DILabel(scope: !2190, name: "c_escape", file: !380, line: 517)
!2215 = !DILabel(scope: !2181, name: "store_escape", file: !380, line: 719)
!2216 = !DILabel(scope: !2181, name: "store_c", file: !380, line: 722)
!2217 = !DILabel(scope: !2154, name: "force_outer_quoting_style", file: !380, line: 763)
!2218 = !DILocation(line: 0, scope: !2154)
!2219 = !DILocation(line: 269, column: 25, scope: !2154)
!2220 = !DILocation(line: 269, column: 36, scope: !2154)
!2221 = !DILocation(line: 270, column: 8, scope: !2154)
!2222 = !DILocation(line: 0, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 526, column: 15)
!2224 = !DILocation(line: 0, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !380, line: 462, column: 19)
!2226 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 455, column: 13)
!2227 = !DILocation(line: 0, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !380, line: 449, column: 20)
!2229 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 428, column: 15)
!2230 = !DILocation(line: 0, scope: !2193)
!2231 = !DILocation(line: 0, scope: !2199)
!2232 = !DILocation(line: 0, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2181, file: !380, line: 712, column: 11)
!2234 = !DILocation(line: 273, column: 3, scope: !2154)
!2235 = !DILocation(line: 265, column: 10, scope: !2154)
!2236 = !DILocation(line: 266, column: 15, scope: !2154)
!2237 = !DILocation(line: 267, column: 10, scope: !2154)
!2238 = !DILocation(line: 268, column: 8, scope: !2154)
!2239 = !DILocation(line: 271, column: 8, scope: !2154)
!2240 = !DILocation(line: 272, column: 8, scope: !2154)
!2241 = !DILocation(line: 273, column: 8, scope: !2154)
!2242 = !DILocation(line: 314, column: 2, scope: !2154)
!2243 = !DILocation(line: 316, column: 3, scope: !2154)
!2244 = !DILocation(line: 323, column: 11, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2154, file: !380, line: 317, column: 5)
!2246 = !DILocation(line: 323, column: 12, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2245, file: !380, line: 323, column: 11)
!2248 = !DILocation(line: 324, column: 9, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !380, line: 324, column: 9)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !380, line: 324, column: 9)
!2251 = !DILocation(line: 324, column: 9, scope: !2250)
!2252 = !DILocation(line: 362, column: 26, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !380, line: 340, column: 11)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !380, line: 339, column: 13)
!2255 = distinct !DILexicalBlock(scope: !2245, file: !380, line: 338, column: 7)
!2256 = !DILocation(line: 363, column: 27, scope: !2253)
!2257 = !DILocation(line: 364, column: 11, scope: !2253)
!2258 = !DILocation(line: 365, column: 14, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !380, line: 365, column: 13)
!2260 = !DILocation(line: 365, column: 13, scope: !2255)
!2261 = !DILocation(line: 366, column: 43, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !380, line: 366, column: 11)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !380, line: 366, column: 11)
!2264 = !DILocation(line: 366, column: 11, scope: !2263)
!2265 = !DILocation(line: 367, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !380, line: 367, column: 13)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !380, line: 367, column: 13)
!2268 = !DILocation(line: 367, column: 13, scope: !2267)
!2269 = !DILocation(line: 366, column: 70, scope: !2262)
!2270 = distinct !{!2270, !2264, !2271}
!2271 = !DILocation(line: 367, column: 13, scope: !2263)
!2272 = !DILocation(line: 264, column: 10, scope: !2154)
!2273 = !DILocation(line: 370, column: 28, scope: !2255)
!2274 = !DILocation(line: 372, column: 7, scope: !2245)
!2275 = !DILocation(line: 376, column: 7, scope: !2245)
!2276 = !DILocation(line: 379, column: 7, scope: !2245)
!2277 = !DILocation(line: 381, column: 12, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2245, file: !380, line: 381, column: 11)
!2279 = !DILocation(line: 381, column: 11, scope: !2245)
!2280 = !DILocation(line: 386, column: 12, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2245, file: !380, line: 386, column: 11)
!2282 = !DILocation(line: 386, column: 11, scope: !2245)
!2283 = !DILocation(line: 387, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !380, line: 387, column: 9)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !380, line: 387, column: 9)
!2286 = !DILocation(line: 387, column: 9, scope: !2285)
!2287 = !DILocation(line: 394, column: 7, scope: !2245)
!2288 = !DILocation(line: 397, column: 7, scope: !2245)
!2289 = !DILocation(line: 0, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2181, file: !380, line: 408, column: 11)
!2291 = !DILocation(line: 0, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !380, line: 419, column: 15)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !380, line: 418, column: 9)
!2294 = !DILocation(line: 0, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 556, column: 15)
!2296 = !DILocation(line: 0, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 548, column: 15)
!2298 = !DILocation(line: 0, scope: !2204)
!2299 = !DILocation(line: 0, scope: !2211)
!2300 = !DILocation(line: 0, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 509, column: 15)
!2302 = !DILocation(line: 400, column: 8, scope: !2183)
!2303 = !DILocation(line: 0, scope: !2183)
!2304 = !DILocation(line: 400, column: 27, scope: !2182)
!2305 = !DILocation(line: 400, column: 19, scope: !2182)
!2306 = !DILocation(line: 400, column: 41, scope: !2182)
!2307 = !DILocation(line: 400, column: 48, scope: !2182)
!2308 = !DILocation(line: 400, column: 3, scope: !2183)
!2309 = !DILocation(line: 400, column: 60, scope: !2182)
!2310 = !DILocation(line: 0, scope: !2181)
!2311 = !DILocation(line: 409, column: 11, scope: !2290)
!2312 = !DILocation(line: 411, column: 17, scope: !2290)
!2313 = !DILocation(line: 412, column: 39, scope: !2290)
!2314 = !DILocation(line: 416, column: 32, scope: !2290)
!2315 = !DILocation(line: 412, column: 19, scope: !2290)
!2316 = !DILocation(line: 412, column: 15, scope: !2290)
!2317 = !DILocation(line: 417, column: 11, scope: !2290)
!2318 = !DILocation(line: 417, column: 26, scope: !2290)
!2319 = !DILocation(line: 417, column: 14, scope: !2290)
!2320 = !DILocation(line: 417, column: 63, scope: !2290)
!2321 = !DILocation(line: 408, column: 11, scope: !2181)
!2322 = !DILocation(line: 424, column: 11, scope: !2181)
!2323 = !DILocation(line: 425, column: 7, scope: !2181)
!2324 = !DILocation(line: 428, column: 15, scope: !2190)
!2325 = !DILocation(line: 430, column: 15, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !380, line: 430, column: 15)
!2327 = distinct !DILexicalBlock(scope: !2229, file: !380, line: 429, column: 13)
!2328 = !DILocation(line: 430, column: 15, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !380, line: 430, column: 15)
!2330 = !DILocation(line: 430, column: 15, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !380, line: 430, column: 15)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !380, line: 430, column: 15)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !380, line: 430, column: 15)
!2334 = !DILocation(line: 430, column: 15, scope: !2332)
!2335 = !DILocation(line: 430, column: 15, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !380, line: 430, column: 15)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !380, line: 430, column: 15)
!2338 = !DILocation(line: 430, column: 15, scope: !2337)
!2339 = !DILocation(line: 430, column: 15, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !380, line: 430, column: 15)
!2341 = distinct !DILexicalBlock(scope: !2333, file: !380, line: 430, column: 15)
!2342 = !DILocation(line: 430, column: 15, scope: !2341)
!2343 = !DILocation(line: 430, column: 15, scope: !2333)
!2344 = !DILocation(line: 430, column: 15, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !380, line: 430, column: 15)
!2346 = distinct !DILexicalBlock(scope: !2326, file: !380, line: 430, column: 15)
!2347 = !DILocation(line: 430, column: 15, scope: !2346)
!2348 = !DILocation(line: 438, column: 19, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2327, file: !380, line: 437, column: 19)
!2350 = !DILocation(line: 438, column: 24, scope: !2349)
!2351 = !DILocation(line: 438, column: 28, scope: !2349)
!2352 = !DILocation(line: 438, column: 38, scope: !2349)
!2353 = !DILocation(line: 438, column: 48, scope: !2349)
!2354 = !DILocation(line: 438, column: 59, scope: !2349)
!2355 = !DILocation(line: 440, column: 19, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !380, line: 440, column: 19)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !380, line: 440, column: 19)
!2358 = distinct !DILexicalBlock(scope: !2349, file: !380, line: 439, column: 17)
!2359 = !DILocation(line: 440, column: 19, scope: !2357)
!2360 = !DILocation(line: 441, column: 19, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !380, line: 441, column: 19)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !380, line: 441, column: 19)
!2363 = !DILocation(line: 441, column: 19, scope: !2362)
!2364 = !DILocation(line: 442, column: 17, scope: !2358)
!2365 = !DILocation(line: 449, column: 20, scope: !2229)
!2366 = !DILocation(line: 454, column: 11, scope: !2190)
!2367 = !DILocation(line: 457, column: 19, scope: !2226)
!2368 = !DILocation(line: 463, column: 19, scope: !2225)
!2369 = !DILocation(line: 463, column: 24, scope: !2225)
!2370 = !DILocation(line: 463, column: 28, scope: !2225)
!2371 = !DILocation(line: 463, column: 38, scope: !2225)
!2372 = !DILocation(line: 463, column: 47, scope: !2225)
!2373 = !DILocation(line: 463, column: 41, scope: !2225)
!2374 = !DILocation(line: 463, column: 52, scope: !2225)
!2375 = !DILocation(line: 462, column: 19, scope: !2226)
!2376 = !DILocation(line: 464, column: 25, scope: !2225)
!2377 = !DILocation(line: 464, column: 17, scope: !2225)
!2378 = !DILocation(line: 471, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2225, file: !380, line: 465, column: 19)
!2380 = !DILocation(line: 475, column: 21, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !380, line: 475, column: 21)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !380, line: 475, column: 21)
!2383 = !DILocation(line: 475, column: 21, scope: !2382)
!2384 = !DILocation(line: 476, column: 21, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !380, line: 476, column: 21)
!2386 = distinct !DILexicalBlock(scope: !2379, file: !380, line: 476, column: 21)
!2387 = !DILocation(line: 476, column: 21, scope: !2386)
!2388 = !DILocation(line: 477, column: 21, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !380, line: 477, column: 21)
!2390 = distinct !DILexicalBlock(scope: !2379, file: !380, line: 477, column: 21)
!2391 = !DILocation(line: 477, column: 21, scope: !2390)
!2392 = !DILocation(line: 478, column: 21, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !380, line: 478, column: 21)
!2394 = distinct !DILexicalBlock(scope: !2379, file: !380, line: 478, column: 21)
!2395 = !DILocation(line: 478, column: 21, scope: !2394)
!2396 = !DILocation(line: 479, column: 21, scope: !2379)
!2397 = !DILocation(line: 492, column: 31, scope: !2190)
!2398 = !DILocation(line: 493, column: 31, scope: !2190)
!2399 = !DILocation(line: 495, column: 31, scope: !2190)
!2400 = !DILocation(line: 496, column: 31, scope: !2190)
!2401 = !DILocation(line: 497, column: 31, scope: !2190)
!2402 = !DILocation(line: 500, column: 15, scope: !2190)
!2403 = !DILocation(line: 502, column: 19, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !380, line: 501, column: 13)
!2405 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 500, column: 15)
!2406 = !DILocation(line: 509, column: 33, scope: !2301)
!2407 = !DILocation(line: 0, scope: !2190)
!2408 = !DILocation(line: 512, column: 9, scope: !2190)
!2409 = !DILocation(line: 514, column: 15, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 513, column: 15)
!2411 = !DILocation(line: 517, column: 9, scope: !2190)
!2412 = !DILocation(line: 518, column: 15, scope: !2190)
!2413 = !DILocation(line: 526, column: 15, scope: !2190)
!2414 = !DILocation(line: 526, column: 40, scope: !2223)
!2415 = !DILocation(line: 526, column: 47, scope: !2223)
!2416 = !DILocation(line: 526, column: 18, scope: !2223)
!2417 = !DILocation(line: 530, column: 17, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2190, file: !380, line: 530, column: 15)
!2419 = !DILocation(line: 530, column: 15, scope: !2190)
!2420 = !DILocation(line: 535, column: 11, scope: !2190)
!2421 = !DILocation(line: 549, column: 15, scope: !2297)
!2422 = !DILocation(line: 556, column: 15, scope: !2190)
!2423 = !DILocation(line: 558, column: 19, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2295, file: !380, line: 557, column: 13)
!2425 = !DILocation(line: 561, column: 19, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2424, file: !380, line: 561, column: 19)
!2427 = !DILocation(line: 561, column: 35, scope: !2426)
!2428 = !DILocation(line: 561, column: 30, scope: !2426)
!2429 = !DILocation(line: 570, column: 15, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !380, line: 570, column: 15)
!2431 = distinct !DILexicalBlock(scope: !2424, file: !380, line: 570, column: 15)
!2432 = !DILocation(line: 570, column: 15, scope: !2431)
!2433 = !DILocation(line: 571, column: 15, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !380, line: 571, column: 15)
!2435 = distinct !DILexicalBlock(scope: !2424, file: !380, line: 571, column: 15)
!2436 = !DILocation(line: 571, column: 15, scope: !2435)
!2437 = !DILocation(line: 572, column: 15, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !380, line: 572, column: 15)
!2439 = distinct !DILexicalBlock(scope: !2424, file: !380, line: 572, column: 15)
!2440 = !DILocation(line: 572, column: 15, scope: !2439)
!2441 = !DILocation(line: 574, column: 13, scope: !2424)
!2442 = !DILocation(line: 614, column: 17, scope: !2189)
!2443 = !DILocation(line: 0, scope: !2189)
!2444 = !DILocation(line: 617, column: 29, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2194, file: !380, line: 615, column: 15)
!2446 = !{!2447, !2447, i64 0}
!2447 = !{!"short", !1252, i64 0}
!2448 = !DILocation(line: 617, column: 27, scope: !2445)
!2449 = !DILocation(line: 618, column: 15, scope: !2445)
!2450 = !DILocation(line: 621, column: 17, scope: !2193)
!2451 = !DILocation(line: 621, column: 27, scope: !2193)
!2452 = !DILocalVariable(name: "__dest", arg: 1, scope: !2453, file: !1572, line: 59, type: !99)
!2453 = distinct !DISubprogram(name: "memset", scope: !1572, file: !1572, line: 59, type: !2454, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!99, !99, !6, !101}
!2456 = !{!2452, !2457, !2458}
!2457 = !DILocalVariable(name: "__ch", arg: 2, scope: !2453, file: !1572, line: 59, type: !6)
!2458 = !DILocalVariable(name: "__len", arg: 3, scope: !2453, file: !1572, line: 59, type: !101)
!2459 = !DILocation(line: 0, scope: !2453, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 622, column: 17, scope: !2193)
!2461 = !DILocation(line: 71, column: 10, scope: !2453, inlinedAt: !2460)
!2462 = !DILocation(line: 626, column: 29, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2193, file: !380, line: 626, column: 21)
!2464 = !DILocation(line: 626, column: 21, scope: !2193)
!2465 = !DILocation(line: 627, column: 29, scope: !2463)
!2466 = !DILocation(line: 627, column: 19, scope: !2463)
!2467 = !DILocation(line: 629, column: 17, scope: !2193)
!2468 = !DILocation(line: 624, column: 19, scope: !2193)
!2469 = !DILocation(line: 625, column: 27, scope: !2193)
!2470 = !DILocation(line: 631, column: 21, scope: !2199)
!2471 = !DILocation(line: 632, column: 56, scope: !2199)
!2472 = !DILocation(line: 632, column: 50, scope: !2199)
!2473 = !DILocation(line: 633, column: 53, scope: !2199)
!2474 = !DILocation(line: 632, column: 36, scope: !2199)
!2475 = !DILocation(line: 634, column: 25, scope: !2199)
!2476 = !DILocation(line: 644, column: 38, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2206, file: !380, line: 642, column: 23)
!2478 = !DILocation(line: 644, column: 48, scope: !2477)
!2479 = !DILocation(line: 644, column: 25, scope: !2477)
!2480 = !DILocation(line: 644, column: 51, scope: !2477)
!2481 = !DILocation(line: 645, column: 28, scope: !2477)
!2482 = !DILocation(line: 644, column: 34, scope: !2477)
!2483 = distinct !{!2483, !2479, !2481}
!2484 = !DILocation(line: 658, column: 43, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !380, line: 658, column: 29)
!2486 = distinct !DILexicalBlock(scope: !2203, file: !380, line: 658, column: 29)
!2487 = !DILocation(line: 655, column: 29, scope: !2204)
!2488 = !DILocation(line: 0, scope: !2203)
!2489 = !DILocation(line: 659, column: 49, scope: !2485)
!2490 = !DILocation(line: 659, column: 39, scope: !2485)
!2491 = !DILocation(line: 659, column: 31, scope: !2485)
!2492 = !DILocation(line: 658, column: 53, scope: !2485)
!2493 = !DILocation(line: 658, column: 29, scope: !2486)
!2494 = distinct !{!2494, !2493, !2495}
!2495 = !DILocation(line: 667, column: 33, scope: !2486)
!2496 = !DILocation(line: 674, column: 19, scope: !2193)
!2497 = !DILocation(line: 670, column: 41, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2205, file: !380, line: 670, column: 29)
!2499 = !DILocation(line: 670, column: 31, scope: !2498)
!2500 = !DILocation(line: 670, column: 29, scope: !2205)
!2501 = !DILocation(line: 672, column: 27, scope: !2205)
!2502 = !DILocation(line: 675, column: 26, scope: !2193)
!2503 = !DILocation(line: 675, column: 24, scope: !2193)
!2504 = !DILocation(line: 674, column: 19, scope: !2199)
!2505 = distinct !{!2505, !2467, !2506}
!2506 = !DILocation(line: 675, column: 44, scope: !2193)
!2507 = !DILocation(line: 676, column: 15, scope: !2194)
!2508 = !DILocation(line: 0, scope: !2194)
!2509 = !DILocation(line: 678, column: 40, scope: !2189)
!2510 = !DILocation(line: 680, column: 19, scope: !2211)
!2511 = !DILocation(line: 680, column: 45, scope: !2211)
!2512 = !DILocation(line: 680, column: 23, scope: !2211)
!2513 = !DILocation(line: 684, column: 33, scope: !2210)
!2514 = !DILocation(line: 0, scope: !2210)
!2515 = !DILocation(line: 686, column: 17, scope: !2210)
!2516 = !DILocation(line: 405, column: 12, scope: !2181)
!2517 = !DILocation(line: 688, column: 43, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !380, line: 688, column: 25)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !380, line: 687, column: 19)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !380, line: 686, column: 17)
!2521 = distinct !DILexicalBlock(scope: !2210, file: !380, line: 686, column: 17)
!2522 = !DILocation(line: 690, column: 25, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !380, line: 690, column: 25)
!2524 = distinct !DILexicalBlock(scope: !2518, file: !380, line: 689, column: 23)
!2525 = !DILocation(line: 690, column: 25, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !380, line: 690, column: 25)
!2527 = !DILocation(line: 690, column: 25, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !380, line: 690, column: 25)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !380, line: 690, column: 25)
!2530 = distinct !DILexicalBlock(scope: !2526, file: !380, line: 690, column: 25)
!2531 = !DILocation(line: 690, column: 25, scope: !2529)
!2532 = !DILocation(line: 690, column: 25, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !380, line: 690, column: 25)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !380, line: 690, column: 25)
!2535 = !DILocation(line: 690, column: 25, scope: !2534)
!2536 = !DILocation(line: 690, column: 25, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !380, line: 690, column: 25)
!2538 = distinct !DILexicalBlock(scope: !2530, file: !380, line: 690, column: 25)
!2539 = !DILocation(line: 690, column: 25, scope: !2538)
!2540 = !DILocation(line: 690, column: 25, scope: !2530)
!2541 = !DILocation(line: 690, column: 25, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !380, line: 690, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2523, file: !380, line: 690, column: 25)
!2544 = !DILocation(line: 690, column: 25, scope: !2543)
!2545 = !DILocation(line: 691, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !380, line: 691, column: 25)
!2547 = distinct !DILexicalBlock(scope: !2524, file: !380, line: 691, column: 25)
!2548 = !DILocation(line: 691, column: 25, scope: !2547)
!2549 = !DILocation(line: 692, column: 25, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !380, line: 692, column: 25)
!2551 = distinct !DILexicalBlock(scope: !2524, file: !380, line: 692, column: 25)
!2552 = !DILocation(line: 692, column: 25, scope: !2551)
!2553 = !DILocation(line: 693, column: 38, scope: !2524)
!2554 = !DILocation(line: 693, column: 33, scope: !2524)
!2555 = !DILocation(line: 694, column: 23, scope: !2524)
!2556 = !DILocation(line: 695, column: 30, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2518, file: !380, line: 695, column: 30)
!2558 = !DILocation(line: 695, column: 30, scope: !2518)
!2559 = !DILocation(line: 697, column: 25, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !380, line: 697, column: 25)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !380, line: 697, column: 25)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !380, line: 696, column: 23)
!2563 = !DILocation(line: 697, column: 25, scope: !2561)
!2564 = !DILocation(line: 699, column: 23, scope: !2562)
!2565 = !DILocation(line: 700, column: 35, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2519, file: !380, line: 700, column: 25)
!2567 = !DILocation(line: 700, column: 30, scope: !2566)
!2568 = !DILocation(line: 700, column: 25, scope: !2519)
!2569 = !DILocation(line: 702, column: 21, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !380, line: 702, column: 21)
!2571 = distinct !DILexicalBlock(scope: !2519, file: !380, line: 702, column: 21)
!2572 = !DILocation(line: 702, column: 21, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !380, line: 702, column: 21)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !380, line: 702, column: 21)
!2575 = distinct !DILexicalBlock(scope: !2570, file: !380, line: 702, column: 21)
!2576 = !DILocation(line: 702, column: 21, scope: !2574)
!2577 = !DILocation(line: 702, column: 21, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !380, line: 702, column: 21)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !380, line: 702, column: 21)
!2580 = !DILocation(line: 702, column: 21, scope: !2579)
!2581 = !DILocation(line: 702, column: 21, scope: !2575)
!2582 = !DILocation(line: 0, scope: !2519)
!2583 = !DILocation(line: 703, column: 21, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !380, line: 703, column: 21)
!2585 = distinct !DILexicalBlock(scope: !2519, file: !380, line: 703, column: 21)
!2586 = !DILocation(line: 703, column: 21, scope: !2585)
!2587 = !DILocation(line: 704, column: 25, scope: !2519)
!2588 = !DILocation(line: 686, column: 17, scope: !2520)
!2589 = distinct !{!2589, !2590, !2591}
!2590 = !DILocation(line: 686, column: 17, scope: !2521)
!2591 = !DILocation(line: 705, column: 19, scope: !2521)
!2592 = !DILocation(line: 416, column: 30, scope: !2290)
!2593 = !DILocation(line: 712, column: 34, scope: !2233)
!2594 = !DILocation(line: 715, column: 35, scope: !2233)
!2595 = !DILocation(line: 715, column: 17, scope: !2233)
!2596 = !DILocation(line: 715, column: 47, scope: !2233)
!2597 = !DILocation(line: 715, column: 65, scope: !2233)
!2598 = !DILocation(line: 716, column: 15, scope: !2233)
!2599 = !DILocation(line: 716, column: 11, scope: !2233)
!2600 = !DILocation(line: 712, column: 11, scope: !2181)
!2601 = !DILocation(line: 400, column: 10, scope: !2183)
!2602 = !DILocation(line: 719, column: 5, scope: !2181)
!2603 = !DILocation(line: 720, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2181, file: !380, line: 720, column: 7)
!2605 = !DILocation(line: 720, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2604, file: !380, line: 720, column: 7)
!2607 = !DILocation(line: 720, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !380, line: 720, column: 7)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !380, line: 720, column: 7)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !380, line: 720, column: 7)
!2611 = !DILocation(line: 720, column: 7, scope: !2609)
!2612 = !DILocation(line: 720, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !380, line: 720, column: 7)
!2614 = distinct !DILexicalBlock(scope: !2610, file: !380, line: 720, column: 7)
!2615 = !DILocation(line: 720, column: 7, scope: !2614)
!2616 = !DILocation(line: 720, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !380, line: 720, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2610, file: !380, line: 720, column: 7)
!2619 = !DILocation(line: 720, column: 7, scope: !2618)
!2620 = !DILocation(line: 720, column: 7, scope: !2610)
!2621 = !DILocation(line: 720, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !380, line: 720, column: 7)
!2623 = distinct !DILexicalBlock(scope: !2604, file: !380, line: 720, column: 7)
!2624 = !DILocation(line: 720, column: 7, scope: !2623)
!2625 = !DILocation(line: 722, column: 5, scope: !2181)
!2626 = !DILocation(line: 723, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !380, line: 723, column: 7)
!2628 = distinct !DILexicalBlock(scope: !2181, file: !380, line: 723, column: 7)
!2629 = !DILocation(line: 424, column: 9, scope: !2181)
!2630 = !DILocation(line: 723, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !380, line: 723, column: 7)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !380, line: 723, column: 7)
!2633 = distinct !DILexicalBlock(scope: !2627, file: !380, line: 723, column: 7)
!2634 = !DILocation(line: 723, column: 7, scope: !2632)
!2635 = !DILocation(line: 723, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !380, line: 723, column: 7)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !380, line: 723, column: 7)
!2638 = !DILocation(line: 723, column: 7, scope: !2637)
!2639 = !DILocation(line: 723, column: 7, scope: !2633)
!2640 = !DILocation(line: 724, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !380, line: 724, column: 7)
!2642 = distinct !DILexicalBlock(scope: !2181, file: !380, line: 724, column: 7)
!2643 = !DILocation(line: 724, column: 7, scope: !2642)
!2644 = !DILocation(line: 726, column: 13, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2181, file: !380, line: 726, column: 11)
!2646 = !DILocation(line: 726, column: 11, scope: !2181)
!2647 = !DILocation(line: 728, column: 5, scope: !2182)
!2648 = !DILocation(line: 400, column: 75, scope: !2182)
!2649 = !DILocation(line: 400, column: 3, scope: !2182)
!2650 = distinct !{!2650, !2308, !2651}
!2651 = !DILocation(line: 728, column: 5, scope: !2183)
!2652 = !DILocation(line: 730, column: 11, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2154, file: !380, line: 730, column: 7)
!2654 = !DILocation(line: 730, column: 16, scope: !2653)
!2655 = !DILocation(line: 738, column: 51, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2154, file: !380, line: 738, column: 7)
!2657 = !DILocation(line: 739, column: 10, scope: !2656)
!2658 = !DILocation(line: 741, column: 11, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !380, line: 741, column: 11)
!2660 = distinct !DILexicalBlock(scope: !2656, file: !380, line: 740, column: 5)
!2661 = !DILocation(line: 741, column: 11, scope: !2660)
!2662 = !DILocation(line: 742, column: 16, scope: !2659)
!2663 = !DILocation(line: 742, column: 9, scope: !2659)
!2664 = !DILocation(line: 746, column: 18, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2659, file: !380, line: 746, column: 16)
!2666 = !DILocation(line: 746, column: 32, scope: !2665)
!2667 = !DILocation(line: 746, column: 29, scope: !2665)
!2668 = !DILocation(line: 755, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2154, file: !380, line: 755, column: 7)
!2670 = !DILocation(line: 755, column: 20, scope: !2669)
!2671 = !DILocation(line: 756, column: 12, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !380, line: 756, column: 5)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !380, line: 756, column: 5)
!2674 = !DILocation(line: 756, column: 5, scope: !2673)
!2675 = !DILocation(line: 757, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !380, line: 757, column: 7)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !380, line: 757, column: 7)
!2678 = !DILocation(line: 757, column: 7, scope: !2677)
!2679 = !DILocation(line: 756, column: 39, scope: !2672)
!2680 = distinct !{!2680, !2674, !2681}
!2681 = !DILocation(line: 757, column: 7, scope: !2673)
!2682 = !DILocation(line: 759, column: 11, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2154, file: !380, line: 759, column: 7)
!2684 = !DILocation(line: 759, column: 7, scope: !2154)
!2685 = !DILocation(line: 760, column: 5, scope: !2683)
!2686 = !DILocation(line: 760, column: 17, scope: !2683)
!2687 = !DILocation(line: 763, column: 2, scope: !2154)
!2688 = !DILocation(line: 766, column: 51, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2154, file: !380, line: 766, column: 7)
!2690 = !DILocation(line: 766, column: 21, scope: !2689)
!2691 = !DILocation(line: 770, column: 42, scope: !2154)
!2692 = !DILocation(line: 768, column: 10, scope: !2154)
!2693 = !DILocation(line: 768, column: 3, scope: !2154)
!2694 = !DILocation(line: 772, column: 1, scope: !2154)
!2695 = distinct !DISubprogram(name: "gettext_quote", scope: !380, file: !380, line: 207, type: !2696, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!45, !45, !12}
!2698 = !{!2699, !2700, !2701, !2702}
!2699 = !DILocalVariable(name: "msgid", arg: 1, scope: !2695, file: !380, line: 207, type: !45)
!2700 = !DILocalVariable(name: "s", arg: 2, scope: !2695, file: !380, line: 207, type: !12)
!2701 = !DILocalVariable(name: "translation", scope: !2695, file: !380, line: 209, type: !45)
!2702 = !DILocalVariable(name: "locale_code", scope: !2695, file: !380, line: 210, type: !45)
!2703 = !DILocation(line: 0, scope: !2695)
!2704 = !DILocation(line: 209, column: 29, scope: !2695)
!2705 = !DILocation(line: 212, column: 19, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2695, file: !380, line: 212, column: 7)
!2707 = !DILocation(line: 212, column: 7, scope: !2695)
!2708 = !DILocation(line: 233, column: 17, scope: !2695)
!2709 = !DILocalVariable(name: "s1", arg: 1, scope: !2710, file: !2711, line: 160, type: !45)
!2710 = distinct !DISubprogram(name: "strcaseeq0", scope: !2711, file: !2711, line: 160, type: !2712, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2714)
!2711 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!6, !45, !45, !9, !9, !9, !9, !9, !9, !9, !9, !9}
!2714 = !{!2709, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724}
!2715 = !DILocalVariable(name: "s2", arg: 2, scope: !2710, file: !2711, line: 160, type: !45)
!2716 = !DILocalVariable(name: "s20", arg: 3, scope: !2710, file: !2711, line: 160, type: !9)
!2717 = !DILocalVariable(name: "s21", arg: 4, scope: !2710, file: !2711, line: 160, type: !9)
!2718 = !DILocalVariable(name: "s22", arg: 5, scope: !2710, file: !2711, line: 160, type: !9)
!2719 = !DILocalVariable(name: "s23", arg: 6, scope: !2710, file: !2711, line: 160, type: !9)
!2720 = !DILocalVariable(name: "s24", arg: 7, scope: !2710, file: !2711, line: 160, type: !9)
!2721 = !DILocalVariable(name: "s25", arg: 8, scope: !2710, file: !2711, line: 160, type: !9)
!2722 = !DILocalVariable(name: "s26", arg: 9, scope: !2710, file: !2711, line: 160, type: !9)
!2723 = !DILocalVariable(name: "s27", arg: 10, scope: !2710, file: !2711, line: 160, type: !9)
!2724 = !DILocalVariable(name: "s28", arg: 11, scope: !2710, file: !2711, line: 160, type: !9)
!2725 = !DILocation(line: 0, scope: !2710, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 234, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2695, file: !380, line: 234, column: 7)
!2728 = !DILocation(line: 162, column: 7, scope: !2729, inlinedAt: !2726)
!2729 = distinct !DILexicalBlock(scope: !2710, file: !2711, line: 162, column: 7)
!2730 = !DILocalVariable(name: "s1", arg: 1, scope: !2731, file: !2711, line: 146, type: !45)
!2731 = distinct !DISubprogram(name: "strcaseeq1", scope: !2711, file: !2711, line: 146, type: !2732, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!6, !45, !45, !9, !9, !9, !9, !9, !9, !9, !9}
!2734 = !{!2730, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743}
!2735 = !DILocalVariable(name: "s2", arg: 2, scope: !2731, file: !2711, line: 146, type: !45)
!2736 = !DILocalVariable(name: "s21", arg: 3, scope: !2731, file: !2711, line: 146, type: !9)
!2737 = !DILocalVariable(name: "s22", arg: 4, scope: !2731, file: !2711, line: 146, type: !9)
!2738 = !DILocalVariable(name: "s23", arg: 5, scope: !2731, file: !2711, line: 146, type: !9)
!2739 = !DILocalVariable(name: "s24", arg: 6, scope: !2731, file: !2711, line: 146, type: !9)
!2740 = !DILocalVariable(name: "s25", arg: 7, scope: !2731, file: !2711, line: 146, type: !9)
!2741 = !DILocalVariable(name: "s26", arg: 8, scope: !2731, file: !2711, line: 146, type: !9)
!2742 = !DILocalVariable(name: "s27", arg: 9, scope: !2731, file: !2711, line: 146, type: !9)
!2743 = !DILocalVariable(name: "s28", arg: 10, scope: !2731, file: !2711, line: 146, type: !9)
!2744 = !DILocation(line: 0, scope: !2731, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 167, column: 16, scope: !2746, inlinedAt: !2726)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !2711, line: 164, column: 11)
!2747 = distinct !DILexicalBlock(scope: !2729, file: !2711, line: 163, column: 5)
!2748 = !DILocation(line: 148, column: 7, scope: !2749, inlinedAt: !2745)
!2749 = distinct !DILexicalBlock(scope: !2731, file: !2711, line: 148, column: 7)
!2750 = !DILocalVariable(name: "s1", arg: 1, scope: !2751, file: !2711, line: 132, type: !45)
!2751 = distinct !DISubprogram(name: "strcaseeq2", scope: !2711, file: !2711, line: 132, type: !2752, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!6, !45, !45, !9, !9, !9, !9, !9, !9, !9}
!2754 = !{!2750, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762}
!2755 = !DILocalVariable(name: "s2", arg: 2, scope: !2751, file: !2711, line: 132, type: !45)
!2756 = !DILocalVariable(name: "s22", arg: 3, scope: !2751, file: !2711, line: 132, type: !9)
!2757 = !DILocalVariable(name: "s23", arg: 4, scope: !2751, file: !2711, line: 132, type: !9)
!2758 = !DILocalVariable(name: "s24", arg: 5, scope: !2751, file: !2711, line: 132, type: !9)
!2759 = !DILocalVariable(name: "s25", arg: 6, scope: !2751, file: !2711, line: 132, type: !9)
!2760 = !DILocalVariable(name: "s26", arg: 7, scope: !2751, file: !2711, line: 132, type: !9)
!2761 = !DILocalVariable(name: "s27", arg: 8, scope: !2751, file: !2711, line: 132, type: !9)
!2762 = !DILocalVariable(name: "s28", arg: 9, scope: !2751, file: !2711, line: 132, type: !9)
!2763 = !DILocation(line: 0, scope: !2751, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 153, column: 16, scope: !2765, inlinedAt: !2745)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !2711, line: 150, column: 11)
!2766 = distinct !DILexicalBlock(scope: !2749, file: !2711, line: 149, column: 5)
!2767 = !DILocation(line: 134, column: 7, scope: !2768, inlinedAt: !2764)
!2768 = distinct !DILexicalBlock(scope: !2751, file: !2711, line: 134, column: 7)
!2769 = !DILocalVariable(name: "s1", arg: 1, scope: !2770, file: !2711, line: 118, type: !45)
!2770 = distinct !DISubprogram(name: "strcaseeq3", scope: !2711, file: !2711, line: 118, type: !2771, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!6, !45, !45, !9, !9, !9, !9, !9, !9}
!2773 = !{!2769, !2774, !2775, !2776, !2777, !2778, !2779, !2780}
!2774 = !DILocalVariable(name: "s2", arg: 2, scope: !2770, file: !2711, line: 118, type: !45)
!2775 = !DILocalVariable(name: "s23", arg: 3, scope: !2770, file: !2711, line: 118, type: !9)
!2776 = !DILocalVariable(name: "s24", arg: 4, scope: !2770, file: !2711, line: 118, type: !9)
!2777 = !DILocalVariable(name: "s25", arg: 5, scope: !2770, file: !2711, line: 118, type: !9)
!2778 = !DILocalVariable(name: "s26", arg: 6, scope: !2770, file: !2711, line: 118, type: !9)
!2779 = !DILocalVariable(name: "s27", arg: 7, scope: !2770, file: !2711, line: 118, type: !9)
!2780 = !DILocalVariable(name: "s28", arg: 8, scope: !2770, file: !2711, line: 118, type: !9)
!2781 = !DILocation(line: 0, scope: !2770, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 139, column: 16, scope: !2783, inlinedAt: !2764)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !2711, line: 136, column: 11)
!2784 = distinct !DILexicalBlock(scope: !2768, file: !2711, line: 135, column: 5)
!2785 = !DILocation(line: 120, column: 7, scope: !2786, inlinedAt: !2782)
!2786 = distinct !DILexicalBlock(scope: !2770, file: !2711, line: 120, column: 7)
!2787 = !DILocation(line: 120, column: 7, scope: !2770, inlinedAt: !2782)
!2788 = !DILocalVariable(name: "s1", arg: 1, scope: !2789, file: !2711, line: 104, type: !45)
!2789 = distinct !DISubprogram(name: "strcaseeq4", scope: !2711, file: !2711, line: 104, type: !2790, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!6, !45, !45, !9, !9, !9, !9, !9}
!2792 = !{!2788, !2793, !2794, !2795, !2796, !2797, !2798}
!2793 = !DILocalVariable(name: "s2", arg: 2, scope: !2789, file: !2711, line: 104, type: !45)
!2794 = !DILocalVariable(name: "s24", arg: 3, scope: !2789, file: !2711, line: 104, type: !9)
!2795 = !DILocalVariable(name: "s25", arg: 4, scope: !2789, file: !2711, line: 104, type: !9)
!2796 = !DILocalVariable(name: "s26", arg: 5, scope: !2789, file: !2711, line: 104, type: !9)
!2797 = !DILocalVariable(name: "s27", arg: 6, scope: !2789, file: !2711, line: 104, type: !9)
!2798 = !DILocalVariable(name: "s28", arg: 7, scope: !2789, file: !2711, line: 104, type: !9)
!2799 = !DILocation(line: 0, scope: !2789, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 125, column: 16, scope: !2801, inlinedAt: !2782)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !2711, line: 122, column: 11)
!2802 = distinct !DILexicalBlock(scope: !2786, file: !2711, line: 121, column: 5)
!2803 = !DILocation(line: 106, column: 7, scope: !2804, inlinedAt: !2800)
!2804 = distinct !DILexicalBlock(scope: !2789, file: !2711, line: 106, column: 7)
!2805 = !DILocation(line: 106, column: 7, scope: !2789, inlinedAt: !2800)
!2806 = !DILocalVariable(name: "s1", arg: 1, scope: !2807, file: !2711, line: 90, type: !45)
!2807 = distinct !DISubprogram(name: "strcaseeq5", scope: !2711, file: !2711, line: 90, type: !2808, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!6, !45, !45, !9, !9, !9, !9}
!2810 = !{!2806, !2811, !2812, !2813, !2814, !2815}
!2811 = !DILocalVariable(name: "s2", arg: 2, scope: !2807, file: !2711, line: 90, type: !45)
!2812 = !DILocalVariable(name: "s25", arg: 3, scope: !2807, file: !2711, line: 90, type: !9)
!2813 = !DILocalVariable(name: "s26", arg: 4, scope: !2807, file: !2711, line: 90, type: !9)
!2814 = !DILocalVariable(name: "s27", arg: 5, scope: !2807, file: !2711, line: 90, type: !9)
!2815 = !DILocalVariable(name: "s28", arg: 6, scope: !2807, file: !2711, line: 90, type: !9)
!2816 = !DILocation(line: 0, scope: !2807, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 111, column: 16, scope: !2818, inlinedAt: !2800)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !2711, line: 108, column: 11)
!2819 = distinct !DILexicalBlock(scope: !2804, file: !2711, line: 107, column: 5)
!2820 = !DILocation(line: 92, column: 7, scope: !2821, inlinedAt: !2817)
!2821 = distinct !DILexicalBlock(scope: !2807, file: !2711, line: 92, column: 7)
!2822 = !DILocation(line: 92, column: 7, scope: !2807, inlinedAt: !2817)
!2823 = !DILocation(line: 235, column: 12, scope: !2727)
!2824 = !DILocation(line: 235, column: 21, scope: !2727)
!2825 = !DILocation(line: 235, column: 5, scope: !2727)
!2826 = !DILocation(line: 0, scope: !2731, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 167, column: 16, scope: !2746, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 236, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2695, file: !380, line: 236, column: 7)
!2830 = !DILocation(line: 148, column: 7, scope: !2749, inlinedAt: !2827)
!2831 = !DILocation(line: 0, scope: !2751, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 153, column: 16, scope: !2765, inlinedAt: !2827)
!2833 = !DILocation(line: 134, column: 7, scope: !2768, inlinedAt: !2832)
!2834 = !DILocation(line: 134, column: 7, scope: !2751, inlinedAt: !2832)
!2835 = !DILocation(line: 0, scope: !2770, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 139, column: 16, scope: !2783, inlinedAt: !2832)
!2837 = !DILocation(line: 120, column: 7, scope: !2786, inlinedAt: !2836)
!2838 = !DILocation(line: 120, column: 7, scope: !2770, inlinedAt: !2836)
!2839 = !DILocation(line: 0, scope: !2789, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 125, column: 16, scope: !2801, inlinedAt: !2836)
!2841 = !DILocation(line: 106, column: 7, scope: !2804, inlinedAt: !2840)
!2842 = !DILocation(line: 106, column: 7, scope: !2789, inlinedAt: !2840)
!2843 = !DILocation(line: 0, scope: !2807, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 111, column: 16, scope: !2818, inlinedAt: !2840)
!2845 = !DILocation(line: 92, column: 7, scope: !2821, inlinedAt: !2844)
!2846 = !DILocation(line: 92, column: 7, scope: !2807, inlinedAt: !2844)
!2847 = !DILocalVariable(name: "s1", arg: 1, scope: !2848, file: !2711, line: 76, type: !45)
!2848 = distinct !DISubprogram(name: "strcaseeq6", scope: !2711, file: !2711, line: 76, type: !2849, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!6, !45, !45, !9, !9, !9}
!2851 = !{!2847, !2852, !2853, !2854, !2855}
!2852 = !DILocalVariable(name: "s2", arg: 2, scope: !2848, file: !2711, line: 76, type: !45)
!2853 = !DILocalVariable(name: "s26", arg: 3, scope: !2848, file: !2711, line: 76, type: !9)
!2854 = !DILocalVariable(name: "s27", arg: 4, scope: !2848, file: !2711, line: 76, type: !9)
!2855 = !DILocalVariable(name: "s28", arg: 5, scope: !2848, file: !2711, line: 76, type: !9)
!2856 = !DILocation(line: 0, scope: !2848, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 97, column: 16, scope: !2858, inlinedAt: !2844)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !2711, line: 94, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2821, file: !2711, line: 93, column: 5)
!2860 = !DILocation(line: 78, column: 7, scope: !2861, inlinedAt: !2857)
!2861 = distinct !DILexicalBlock(scope: !2848, file: !2711, line: 78, column: 7)
!2862 = !DILocation(line: 78, column: 7, scope: !2848, inlinedAt: !2857)
!2863 = !DILocalVariable(name: "s1", arg: 1, scope: !2864, file: !2711, line: 62, type: !45)
!2864 = distinct !DISubprogram(name: "strcaseeq7", scope: !2711, file: !2711, line: 62, type: !2865, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!6, !45, !45, !9, !9}
!2867 = !{!2863, !2868, !2869, !2870}
!2868 = !DILocalVariable(name: "s2", arg: 2, scope: !2864, file: !2711, line: 62, type: !45)
!2869 = !DILocalVariable(name: "s27", arg: 3, scope: !2864, file: !2711, line: 62, type: !9)
!2870 = !DILocalVariable(name: "s28", arg: 4, scope: !2864, file: !2711, line: 62, type: !9)
!2871 = !DILocation(line: 0, scope: !2864, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 83, column: 16, scope: !2873, inlinedAt: !2857)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !2711, line: 80, column: 11)
!2874 = distinct !DILexicalBlock(scope: !2861, file: !2711, line: 79, column: 5)
!2875 = !DILocation(line: 64, column: 7, scope: !2876, inlinedAt: !2872)
!2876 = distinct !DILexicalBlock(scope: !2864, file: !2711, line: 64, column: 7)
!2877 = !DILocation(line: 236, column: 7, scope: !2695)
!2878 = !DILocation(line: 237, column: 12, scope: !2829)
!2879 = !DILocation(line: 237, column: 21, scope: !2829)
!2880 = !DILocation(line: 237, column: 5, scope: !2829)
!2881 = !DILocation(line: 239, column: 13, scope: !2695)
!2882 = !DILocation(line: 239, column: 11, scope: !2695)
!2883 = !DILocation(line: 239, column: 3, scope: !2695)
!2884 = !DILocation(line: 240, column: 1, scope: !2695)
!2885 = distinct !DISubprogram(name: "quotearg_alloc", scope: !380, file: !380, line: 799, type: !2886, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!8, !45, !101, !410}
!2888 = !{!2889, !2890, !2891}
!2889 = !DILocalVariable(name: "arg", arg: 1, scope: !2885, file: !380, line: 799, type: !45)
!2890 = !DILocalVariable(name: "argsize", arg: 2, scope: !2885, file: !380, line: 799, type: !101)
!2891 = !DILocalVariable(name: "o", arg: 3, scope: !2885, file: !380, line: 800, type: !410)
!2892 = !DILocation(line: 0, scope: !2885)
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !380, line: 812, type: !45)
!2894 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !380, file: !380, line: 812, type: !2895, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!8, !45, !101, !610, !410}
!2897 = !{!2893, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905}
!2898 = !DILocalVariable(name: "argsize", arg: 2, scope: !2894, file: !380, line: 812, type: !101)
!2899 = !DILocalVariable(name: "size", arg: 3, scope: !2894, file: !380, line: 812, type: !610)
!2900 = !DILocalVariable(name: "o", arg: 4, scope: !2894, file: !380, line: 813, type: !410)
!2901 = !DILocalVariable(name: "p", scope: !2894, file: !380, line: 815, type: !410)
!2902 = !DILocalVariable(name: "e", scope: !2894, file: !380, line: 816, type: !6)
!2903 = !DILocalVariable(name: "flags", scope: !2894, file: !380, line: 818, type: !6)
!2904 = !DILocalVariable(name: "bufsize", scope: !2894, file: !380, line: 819, type: !101)
!2905 = !DILocalVariable(name: "buf", scope: !2894, file: !380, line: 823, type: !8)
!2906 = !DILocation(line: 0, scope: !2894, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 802, column: 10, scope: !2885)
!2908 = !DILocation(line: 815, column: 37, scope: !2894, inlinedAt: !2907)
!2909 = !DILocation(line: 816, column: 11, scope: !2894, inlinedAt: !2907)
!2910 = !DILocation(line: 818, column: 18, scope: !2894, inlinedAt: !2907)
!2911 = !DILocation(line: 818, column: 24, scope: !2894, inlinedAt: !2907)
!2912 = !DILocation(line: 819, column: 69, scope: !2894, inlinedAt: !2907)
!2913 = !DILocation(line: 820, column: 53, scope: !2894, inlinedAt: !2907)
!2914 = !DILocation(line: 821, column: 49, scope: !2894, inlinedAt: !2907)
!2915 = !DILocation(line: 822, column: 49, scope: !2894, inlinedAt: !2907)
!2916 = !DILocation(line: 819, column: 20, scope: !2894, inlinedAt: !2907)
!2917 = !DILocation(line: 822, column: 62, scope: !2894, inlinedAt: !2907)
!2918 = !DILocalVariable(name: "n", arg: 1, scope: !2919, file: !171, line: 216, type: !101)
!2919 = distinct !DISubprogram(name: "xcharalloc", scope: !171, file: !171, line: 216, type: !2920, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!8, !101}
!2922 = !{!2918}
!2923 = !DILocation(line: 0, scope: !2919, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 823, column: 15, scope: !2894, inlinedAt: !2907)
!2925 = !DILocation(line: 218, column: 10, scope: !2919, inlinedAt: !2924)
!2926 = !DILocation(line: 824, column: 60, scope: !2894, inlinedAt: !2907)
!2927 = !DILocation(line: 826, column: 32, scope: !2894, inlinedAt: !2907)
!2928 = !DILocation(line: 826, column: 47, scope: !2894, inlinedAt: !2907)
!2929 = !DILocation(line: 824, column: 3, scope: !2894, inlinedAt: !2907)
!2930 = !DILocation(line: 827, column: 9, scope: !2894, inlinedAt: !2907)
!2931 = !DILocation(line: 802, column: 3, scope: !2885)
!2932 = !DILocation(line: 0, scope: !2894)
!2933 = !DILocation(line: 815, column: 37, scope: !2894)
!2934 = !DILocation(line: 816, column: 11, scope: !2894)
!2935 = !DILocation(line: 818, column: 18, scope: !2894)
!2936 = !DILocation(line: 818, column: 27, scope: !2894)
!2937 = !DILocation(line: 818, column: 24, scope: !2894)
!2938 = !DILocation(line: 819, column: 69, scope: !2894)
!2939 = !DILocation(line: 820, column: 53, scope: !2894)
!2940 = !DILocation(line: 821, column: 49, scope: !2894)
!2941 = !DILocation(line: 822, column: 49, scope: !2894)
!2942 = !DILocation(line: 819, column: 20, scope: !2894)
!2943 = !DILocation(line: 822, column: 62, scope: !2894)
!2944 = !DILocation(line: 0, scope: !2919, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 823, column: 15, scope: !2894)
!2946 = !DILocation(line: 218, column: 10, scope: !2919, inlinedAt: !2945)
!2947 = !DILocation(line: 824, column: 60, scope: !2894)
!2948 = !DILocation(line: 826, column: 32, scope: !2894)
!2949 = !DILocation(line: 826, column: 47, scope: !2894)
!2950 = !DILocation(line: 824, column: 3, scope: !2894)
!2951 = !DILocation(line: 827, column: 9, scope: !2894)
!2952 = !DILocation(line: 828, column: 7, scope: !2894)
!2953 = !DILocation(line: 829, column: 11, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2894, file: !380, line: 828, column: 7)
!2955 = !{!1355, !1355, i64 0}
!2956 = !DILocation(line: 829, column: 5, scope: !2954)
!2957 = !DILocation(line: 830, column: 3, scope: !2894)
!2958 = distinct !DISubprogram(name: "quotearg_free", scope: !380, file: !380, line: 848, type: !132, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2959)
!2959 = !{!2960, !2961}
!2960 = !DILocalVariable(name: "sv", scope: !2958, file: !380, line: 850, type: !480)
!2961 = !DILocalVariable(name: "i", scope: !2958, file: !380, line: 851, type: !6)
!2962 = !DILocation(line: 850, column: 24, scope: !2958)
!2963 = !DILocation(line: 0, scope: !2958)
!2964 = !DILocation(line: 852, column: 19, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !380, line: 852, column: 3)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !380, line: 852, column: 3)
!2967 = !DILocation(line: 852, column: 17, scope: !2965)
!2968 = !DILocation(line: 852, column: 3, scope: !2966)
!2969 = !DILocation(line: 853, column: 17, scope: !2965)
!2970 = !{!2971, !1251, i64 8}
!2971 = !{!"slotvec", !1355, i64 0, !1251, i64 8}
!2972 = !DILocation(line: 853, column: 5, scope: !2965)
!2973 = !DILocation(line: 852, column: 28, scope: !2965)
!2974 = distinct !{!2974, !2968, !2975}
!2975 = !DILocation(line: 853, column: 20, scope: !2966)
!2976 = !DILocation(line: 854, column: 13, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2958, file: !380, line: 854, column: 7)
!2978 = !DILocation(line: 854, column: 17, scope: !2977)
!2979 = !DILocation(line: 854, column: 7, scope: !2958)
!2980 = !DILocation(line: 856, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2977, file: !380, line: 855, column: 5)
!2982 = !DILocation(line: 857, column: 21, scope: !2981)
!2983 = !{!2971, !1355, i64 0}
!2984 = !DILocation(line: 858, column: 20, scope: !2981)
!2985 = !DILocation(line: 859, column: 5, scope: !2981)
!2986 = !DILocation(line: 860, column: 10, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2958, file: !380, line: 860, column: 7)
!2988 = !DILocation(line: 860, column: 7, scope: !2958)
!2989 = !DILocation(line: 862, column: 13, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !380, line: 861, column: 5)
!2991 = !DILocation(line: 862, column: 7, scope: !2990)
!2992 = !DILocation(line: 863, column: 15, scope: !2990)
!2993 = !DILocation(line: 864, column: 5, scope: !2990)
!2994 = !DILocation(line: 865, column: 10, scope: !2958)
!2995 = !DILocation(line: 866, column: 1, scope: !2958)
!2996 = distinct !DISubprogram(name: "quotearg_n", scope: !380, file: !380, line: 931, type: !119, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !2997)
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "n", arg: 1, scope: !2996, file: !380, line: 931, type: !6)
!2999 = !DILocalVariable(name: "arg", arg: 2, scope: !2996, file: !380, line: 931, type: !45)
!3000 = !DILocation(line: 0, scope: !2996)
!3001 = !DILocation(line: 933, column: 10, scope: !2996)
!3002 = !DILocation(line: 933, column: 3, scope: !2996)
!3003 = distinct !DISubprogram(name: "quotearg_n_options", scope: !380, file: !380, line: 877, type: !3004, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!8, !6, !45, !101, !410}
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012, !3013, !3016, !3017, !3019, !3020, !3021}
!3007 = !DILocalVariable(name: "n", arg: 1, scope: !3003, file: !380, line: 877, type: !6)
!3008 = !DILocalVariable(name: "arg", arg: 2, scope: !3003, file: !380, line: 877, type: !45)
!3009 = !DILocalVariable(name: "argsize", arg: 3, scope: !3003, file: !380, line: 877, type: !101)
!3010 = !DILocalVariable(name: "options", arg: 4, scope: !3003, file: !380, line: 878, type: !410)
!3011 = !DILocalVariable(name: "e", scope: !3003, file: !380, line: 880, type: !6)
!3012 = !DILocalVariable(name: "sv", scope: !3003, file: !380, line: 882, type: !480)
!3013 = !DILocalVariable(name: "preallocated", scope: !3014, file: !380, line: 889, type: !221)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !380, line: 888, column: 5)
!3015 = distinct !DILexicalBlock(scope: !3003, file: !380, line: 887, column: 7)
!3016 = !DILocalVariable(name: "nmax", scope: !3014, file: !380, line: 890, type: !6)
!3017 = !DILocalVariable(name: "size", scope: !3018, file: !380, line: 903, type: !101)
!3018 = distinct !DILexicalBlock(scope: !3003, file: !380, line: 902, column: 3)
!3019 = !DILocalVariable(name: "val", scope: !3018, file: !380, line: 904, type: !8)
!3020 = !DILocalVariable(name: "flags", scope: !3018, file: !380, line: 906, type: !6)
!3021 = !DILocalVariable(name: "qsize", scope: !3018, file: !380, line: 907, type: !101)
!3022 = !DILocation(line: 0, scope: !3003)
!3023 = !DILocation(line: 880, column: 11, scope: !3003)
!3024 = !DILocation(line: 882, column: 24, scope: !3003)
!3025 = !DILocation(line: 884, column: 9, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3003, file: !380, line: 884, column: 7)
!3027 = !DILocation(line: 884, column: 7, scope: !3003)
!3028 = !DILocation(line: 885, column: 5, scope: !3026)
!3029 = !DILocation(line: 887, column: 7, scope: !3015)
!3030 = !DILocation(line: 887, column: 14, scope: !3015)
!3031 = !DILocation(line: 887, column: 7, scope: !3003)
!3032 = !DILocation(line: 889, column: 31, scope: !3014)
!3033 = !DILocation(line: 0, scope: !3014)
!3034 = !DILocation(line: 892, column: 16, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3014, file: !380, line: 892, column: 11)
!3036 = !DILocation(line: 892, column: 11, scope: !3014)
!3037 = !DILocation(line: 893, column: 9, scope: !3035)
!3038 = !DILocation(line: 895, column: 32, scope: !3014)
!3039 = !DILocation(line: 895, column: 61, scope: !3014)
!3040 = !DILocation(line: 895, column: 58, scope: !3014)
!3041 = !DILocation(line: 895, column: 66, scope: !3014)
!3042 = !DILocation(line: 895, column: 22, scope: !3014)
!3043 = !DILocation(line: 895, column: 15, scope: !3014)
!3044 = !DILocation(line: 896, column: 11, scope: !3014)
!3045 = !DILocation(line: 897, column: 15, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3014, file: !380, line: 896, column: 11)
!3047 = !{i64 0, i64 8, !2955, i64 8, i64 8, !1250}
!3048 = !DILocation(line: 897, column: 9, scope: !3046)
!3049 = !DILocation(line: 898, column: 20, scope: !3014)
!3050 = !DILocation(line: 898, column: 18, scope: !3014)
!3051 = !DILocation(line: 898, column: 15, scope: !3014)
!3052 = !DILocation(line: 898, column: 38, scope: !3014)
!3053 = !DILocation(line: 898, column: 31, scope: !3014)
!3054 = !DILocation(line: 898, column: 48, scope: !3014)
!3055 = !DILocation(line: 0, scope: !2453, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 898, column: 7, scope: !3014)
!3057 = !DILocation(line: 71, column: 10, scope: !2453, inlinedAt: !3056)
!3058 = !DILocation(line: 899, column: 14, scope: !3014)
!3059 = !DILocation(line: 900, column: 5, scope: !3014)
!3060 = !DILocation(line: 903, column: 19, scope: !3018)
!3061 = !DILocation(line: 903, column: 25, scope: !3018)
!3062 = !DILocation(line: 0, scope: !3018)
!3063 = !DILocation(line: 904, column: 23, scope: !3018)
!3064 = !DILocation(line: 906, column: 26, scope: !3018)
!3065 = !DILocation(line: 906, column: 32, scope: !3018)
!3066 = !DILocation(line: 908, column: 55, scope: !3018)
!3067 = !DILocation(line: 909, column: 46, scope: !3018)
!3068 = !DILocation(line: 910, column: 55, scope: !3018)
!3069 = !DILocation(line: 911, column: 55, scope: !3018)
!3070 = !DILocation(line: 907, column: 20, scope: !3018)
!3071 = !DILocation(line: 913, column: 14, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3018, file: !380, line: 913, column: 9)
!3073 = !DILocation(line: 913, column: 9, scope: !3018)
!3074 = !DILocation(line: 915, column: 35, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !380, line: 914, column: 7)
!3076 = !DILocation(line: 915, column: 20, scope: !3075)
!3077 = !DILocation(line: 916, column: 17, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !380, line: 916, column: 13)
!3079 = !DILocation(line: 916, column: 13, scope: !3075)
!3080 = !DILocation(line: 917, column: 11, scope: !3078)
!3081 = !DILocation(line: 0, scope: !2919, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 918, column: 27, scope: !3075)
!3083 = !DILocation(line: 218, column: 10, scope: !2919, inlinedAt: !3082)
!3084 = !DILocation(line: 918, column: 19, scope: !3075)
!3085 = !DILocation(line: 919, column: 69, scope: !3075)
!3086 = !DILocation(line: 921, column: 44, scope: !3075)
!3087 = !DILocation(line: 922, column: 44, scope: !3075)
!3088 = !DILocation(line: 919, column: 9, scope: !3075)
!3089 = !DILocation(line: 923, column: 7, scope: !3075)
!3090 = !DILocation(line: 925, column: 11, scope: !3018)
!3091 = !DILocation(line: 926, column: 5, scope: !3018)
!3092 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !380, file: !380, line: 937, type: !3093, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!8, !6, !45, !101}
!3095 = !{!3096, !3097, !3098}
!3096 = !DILocalVariable(name: "n", arg: 1, scope: !3092, file: !380, line: 937, type: !6)
!3097 = !DILocalVariable(name: "arg", arg: 2, scope: !3092, file: !380, line: 937, type: !45)
!3098 = !DILocalVariable(name: "argsize", arg: 3, scope: !3092, file: !380, line: 937, type: !101)
!3099 = !DILocation(line: 0, scope: !3092)
!3100 = !DILocation(line: 939, column: 10, scope: !3092)
!3101 = !DILocation(line: 939, column: 3, scope: !3092)
!3102 = distinct !DISubprogram(name: "quotearg", scope: !380, file: !380, line: 943, type: !125, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3103)
!3103 = !{!3104}
!3104 = !DILocalVariable(name: "arg", arg: 1, scope: !3102, file: !380, line: 943, type: !45)
!3105 = !DILocation(line: 0, scope: !3102)
!3106 = !DILocation(line: 0, scope: !2996, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 945, column: 10, scope: !3102)
!3108 = !DILocation(line: 933, column: 10, scope: !2996, inlinedAt: !3107)
!3109 = !DILocation(line: 945, column: 3, scope: !3102)
!3110 = distinct !DISubprogram(name: "quotearg_mem", scope: !380, file: !380, line: 949, type: !3111, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!8, !45, !101}
!3113 = !{!3114, !3115}
!3114 = !DILocalVariable(name: "arg", arg: 1, scope: !3110, file: !380, line: 949, type: !45)
!3115 = !DILocalVariable(name: "argsize", arg: 2, scope: !3110, file: !380, line: 949, type: !101)
!3116 = !DILocation(line: 0, scope: !3110)
!3117 = !DILocation(line: 0, scope: !3092, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 951, column: 10, scope: !3110)
!3119 = !DILocation(line: 939, column: 10, scope: !3092, inlinedAt: !3118)
!3120 = !DILocation(line: 951, column: 3, scope: !3110)
!3121 = distinct !DISubprogram(name: "quotearg_n_style", scope: !380, file: !380, line: 955, type: !162, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3122)
!3122 = !{!3123, !3124, !3125, !3126}
!3123 = !DILocalVariable(name: "n", arg: 1, scope: !3121, file: !380, line: 955, type: !6)
!3124 = !DILocalVariable(name: "s", arg: 2, scope: !3121, file: !380, line: 955, type: !12)
!3125 = !DILocalVariable(name: "arg", arg: 3, scope: !3121, file: !380, line: 955, type: !45)
!3126 = !DILocalVariable(name: "o", scope: !3121, file: !380, line: 957, type: !411)
!3127 = !DILocation(line: 0, scope: !3121)
!3128 = !DILocation(line: 957, column: 3, scope: !3121)
!3129 = !DILocation(line: 957, column: 32, scope: !3121)
!3130 = !DILocalVariable(name: "style", arg: 1, scope: !3131, file: !380, line: 193, type: !12)
!3131 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !380, file: !380, line: 193, type: !3132, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!412, !12}
!3134 = !{!3130, !3135}
!3135 = !DILocalVariable(name: "o", scope: !3131, file: !380, line: 195, type: !412)
!3136 = !DILocation(line: 0, scope: !3131, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 957, column: 36, scope: !3121)
!3138 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3137)
!3139 = !{!3140}
!3140 = distinct !{!3140, !3141, !"quoting_options_from_style: argument 0"}
!3141 = distinct !{!3141, !"quoting_options_from_style"}
!3142 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3137)
!3143 = distinct !DILexicalBlock(scope: !3131, file: !380, line: 196, column: 7)
!3144 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3137)
!3145 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3137)
!3146 = !DILocation(line: 198, column: 5, scope: !3131, inlinedAt: !3137)
!3147 = !DILocation(line: 198, column: 11, scope: !3131, inlinedAt: !3137)
!3148 = !DILocation(line: 958, column: 10, scope: !3121)
!3149 = !DILocation(line: 959, column: 1, scope: !3121)
!3150 = !DILocation(line: 958, column: 3, scope: !3121)
!3151 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !380, file: !380, line: 962, type: !3152, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!8, !6, !12, !45, !101}
!3154 = !{!3155, !3156, !3157, !3158, !3159}
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !380, line: 962, type: !6)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !380, line: 962, type: !12)
!3157 = !DILocalVariable(name: "arg", arg: 3, scope: !3151, file: !380, line: 963, type: !45)
!3158 = !DILocalVariable(name: "argsize", arg: 4, scope: !3151, file: !380, line: 963, type: !101)
!3159 = !DILocalVariable(name: "o", scope: !3151, file: !380, line: 965, type: !411)
!3160 = !DILocation(line: 0, scope: !3151)
!3161 = !DILocation(line: 965, column: 3, scope: !3151)
!3162 = !DILocation(line: 965, column: 32, scope: !3151)
!3163 = !DILocation(line: 0, scope: !3131, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 965, column: 36, scope: !3151)
!3165 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3164)
!3166 = !{!3167}
!3167 = distinct !{!3167, !3168, !"quoting_options_from_style: argument 0"}
!3168 = distinct !{!3168, !"quoting_options_from_style"}
!3169 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3164)
!3170 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3164)
!3171 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3164)
!3172 = !DILocation(line: 198, column: 5, scope: !3131, inlinedAt: !3164)
!3173 = !DILocation(line: 198, column: 11, scope: !3131, inlinedAt: !3164)
!3174 = !DILocation(line: 966, column: 10, scope: !3151)
!3175 = !DILocation(line: 967, column: 1, scope: !3151)
!3176 = !DILocation(line: 966, column: 3, scope: !3151)
!3177 = distinct !DISubprogram(name: "quotearg_style", scope: !380, file: !380, line: 970, type: !195, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3178)
!3178 = !{!3179, !3180}
!3179 = !DILocalVariable(name: "s", arg: 1, scope: !3177, file: !380, line: 970, type: !12)
!3180 = !DILocalVariable(name: "arg", arg: 2, scope: !3177, file: !380, line: 970, type: !45)
!3181 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 957, column: 36, scope: !3121, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 972, column: 10, scope: !3177)
!3184 = !DILocation(line: 957, column: 32, scope: !3121, inlinedAt: !3183)
!3185 = !DILocation(line: 0, scope: !3177)
!3186 = !DILocation(line: 0, scope: !3121, inlinedAt: !3183)
!3187 = !DILocation(line: 957, column: 3, scope: !3121, inlinedAt: !3183)
!3188 = !DILocation(line: 0, scope: !3131, inlinedAt: !3182)
!3189 = !{!3190}
!3190 = distinct !{!3190, !3191, !"quoting_options_from_style: argument 0"}
!3191 = distinct !{!3191, !"quoting_options_from_style"}
!3192 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3182)
!3193 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3182)
!3194 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3182)
!3195 = !DILocation(line: 198, column: 5, scope: !3131, inlinedAt: !3182)
!3196 = !DILocation(line: 198, column: 11, scope: !3131, inlinedAt: !3182)
!3197 = !DILocation(line: 958, column: 10, scope: !3121, inlinedAt: !3183)
!3198 = !DILocation(line: 959, column: 1, scope: !3121, inlinedAt: !3183)
!3199 = !DILocation(line: 972, column: 3, scope: !3177)
!3200 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !380, file: !380, line: 976, type: !3201, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!8, !12, !45, !101}
!3203 = !{!3204, !3205, !3206}
!3204 = !DILocalVariable(name: "s", arg: 1, scope: !3200, file: !380, line: 976, type: !12)
!3205 = !DILocalVariable(name: "arg", arg: 2, scope: !3200, file: !380, line: 976, type: !45)
!3206 = !DILocalVariable(name: "argsize", arg: 3, scope: !3200, file: !380, line: 976, type: !101)
!3207 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 965, column: 36, scope: !3151, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 978, column: 10, scope: !3200)
!3210 = !DILocation(line: 965, column: 32, scope: !3151, inlinedAt: !3209)
!3211 = !DILocation(line: 0, scope: !3200)
!3212 = !DILocation(line: 0, scope: !3151, inlinedAt: !3209)
!3213 = !DILocation(line: 965, column: 3, scope: !3151, inlinedAt: !3209)
!3214 = !DILocation(line: 0, scope: !3131, inlinedAt: !3208)
!3215 = !{!3216}
!3216 = distinct !{!3216, !3217, !"quoting_options_from_style: argument 0"}
!3217 = distinct !{!3217, !"quoting_options_from_style"}
!3218 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3208)
!3219 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3208)
!3220 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3208)
!3221 = !DILocation(line: 198, column: 5, scope: !3131, inlinedAt: !3208)
!3222 = !DILocation(line: 198, column: 11, scope: !3131, inlinedAt: !3208)
!3223 = !DILocation(line: 966, column: 10, scope: !3151, inlinedAt: !3209)
!3224 = !DILocation(line: 967, column: 1, scope: !3151, inlinedAt: !3209)
!3225 = !DILocation(line: 978, column: 3, scope: !3200)
!3226 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !380, file: !380, line: 982, type: !3227, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!8, !45, !101, !9}
!3229 = !{!3230, !3231, !3232, !3233}
!3230 = !DILocalVariable(name: "arg", arg: 1, scope: !3226, file: !380, line: 982, type: !45)
!3231 = !DILocalVariable(name: "argsize", arg: 2, scope: !3226, file: !380, line: 982, type: !101)
!3232 = !DILocalVariable(name: "ch", arg: 3, scope: !3226, file: !380, line: 982, type: !9)
!3233 = !DILocalVariable(name: "options", scope: !3226, file: !380, line: 984, type: !412)
!3234 = !DILocation(line: 0, scope: !3226)
!3235 = !DILocation(line: 984, column: 3, scope: !3226)
!3236 = !DILocation(line: 984, column: 26, scope: !3226)
!3237 = !DILocation(line: 985, column: 13, scope: !3226)
!3238 = !{i64 0, i64 4, !1658, i64 4, i64 4, !1343, i64 8, i64 32, !1658, i64 40, i64 8, !1250, i64 48, i64 8, !1250}
!3239 = !DILocation(line: 0, scope: !2066, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 986, column: 3, scope: !3226)
!3241 = !DILocation(line: 156, column: 62, scope: !2066, inlinedAt: !3240)
!3242 = !DILocation(line: 156, column: 57, scope: !2066, inlinedAt: !3240)
!3243 = !DILocation(line: 157, column: 15, scope: !2066, inlinedAt: !3240)
!3244 = !DILocation(line: 158, column: 12, scope: !2066, inlinedAt: !3240)
!3245 = !DILocation(line: 158, column: 15, scope: !2066, inlinedAt: !3240)
!3246 = !DILocation(line: 158, column: 25, scope: !2066, inlinedAt: !3240)
!3247 = !DILocation(line: 159, column: 18, scope: !2066, inlinedAt: !3240)
!3248 = !DILocation(line: 159, column: 23, scope: !2066, inlinedAt: !3240)
!3249 = !DILocation(line: 159, column: 6, scope: !2066, inlinedAt: !3240)
!3250 = !DILocation(line: 987, column: 10, scope: !3226)
!3251 = !DILocation(line: 988, column: 1, scope: !3226)
!3252 = !DILocation(line: 987, column: 3, scope: !3226)
!3253 = distinct !DISubprogram(name: "quotearg_char", scope: !380, file: !380, line: 991, type: !3254, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!8, !45, !9}
!3256 = !{!3257, !3258}
!3257 = !DILocalVariable(name: "arg", arg: 1, scope: !3253, file: !380, line: 991, type: !45)
!3258 = !DILocalVariable(name: "ch", arg: 2, scope: !3253, file: !380, line: 991, type: !9)
!3259 = !DILocation(line: 984, column: 26, scope: !3226, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 993, column: 10, scope: !3253)
!3261 = !DILocation(line: 0, scope: !3253)
!3262 = !DILocation(line: 0, scope: !3226, inlinedAt: !3260)
!3263 = !DILocation(line: 984, column: 3, scope: !3226, inlinedAt: !3260)
!3264 = !DILocation(line: 985, column: 13, scope: !3226, inlinedAt: !3260)
!3265 = !DILocation(line: 0, scope: !2066, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 986, column: 3, scope: !3226, inlinedAt: !3260)
!3267 = !DILocation(line: 156, column: 62, scope: !2066, inlinedAt: !3266)
!3268 = !DILocation(line: 156, column: 57, scope: !2066, inlinedAt: !3266)
!3269 = !DILocation(line: 157, column: 15, scope: !2066, inlinedAt: !3266)
!3270 = !DILocation(line: 158, column: 12, scope: !2066, inlinedAt: !3266)
!3271 = !DILocation(line: 158, column: 15, scope: !2066, inlinedAt: !3266)
!3272 = !DILocation(line: 158, column: 25, scope: !2066, inlinedAt: !3266)
!3273 = !DILocation(line: 159, column: 18, scope: !2066, inlinedAt: !3266)
!3274 = !DILocation(line: 159, column: 23, scope: !2066, inlinedAt: !3266)
!3275 = !DILocation(line: 159, column: 6, scope: !2066, inlinedAt: !3266)
!3276 = !DILocation(line: 987, column: 10, scope: !3226, inlinedAt: !3260)
!3277 = !DILocation(line: 988, column: 1, scope: !3226, inlinedAt: !3260)
!3278 = !DILocation(line: 993, column: 3, scope: !3253)
!3279 = distinct !DISubprogram(name: "quotearg_colon", scope: !380, file: !380, line: 997, type: !125, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3280)
!3280 = !{!3281}
!3281 = !DILocalVariable(name: "arg", arg: 1, scope: !3279, file: !380, line: 997, type: !45)
!3282 = !DILocation(line: 984, column: 26, scope: !3226, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 993, column: 10, scope: !3253, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 999, column: 10, scope: !3279)
!3285 = !DILocation(line: 0, scope: !3279)
!3286 = !DILocation(line: 0, scope: !3253, inlinedAt: !3284)
!3287 = !DILocation(line: 0, scope: !3226, inlinedAt: !3283)
!3288 = !DILocation(line: 984, column: 3, scope: !3226, inlinedAt: !3283)
!3289 = !DILocation(line: 985, column: 13, scope: !3226, inlinedAt: !3283)
!3290 = !DILocation(line: 0, scope: !2066, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 986, column: 3, scope: !3226, inlinedAt: !3283)
!3292 = !DILocation(line: 156, column: 57, scope: !2066, inlinedAt: !3291)
!3293 = !DILocation(line: 158, column: 12, scope: !2066, inlinedAt: !3291)
!3294 = !DILocation(line: 159, column: 6, scope: !2066, inlinedAt: !3291)
!3295 = !DILocation(line: 987, column: 10, scope: !3226, inlinedAt: !3283)
!3296 = !DILocation(line: 988, column: 1, scope: !3226, inlinedAt: !3283)
!3297 = !DILocation(line: 999, column: 3, scope: !3279)
!3298 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !380, file: !380, line: 1003, type: !3111, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3299)
!3299 = !{!3300, !3301}
!3300 = !DILocalVariable(name: "arg", arg: 1, scope: !3298, file: !380, line: 1003, type: !45)
!3301 = !DILocalVariable(name: "argsize", arg: 2, scope: !3298, file: !380, line: 1003, type: !101)
!3302 = !DILocation(line: 984, column: 26, scope: !3226, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 1005, column: 10, scope: !3298)
!3304 = !DILocation(line: 0, scope: !3298)
!3305 = !DILocation(line: 0, scope: !3226, inlinedAt: !3303)
!3306 = !DILocation(line: 984, column: 3, scope: !3226, inlinedAt: !3303)
!3307 = !DILocation(line: 985, column: 13, scope: !3226, inlinedAt: !3303)
!3308 = !DILocation(line: 0, scope: !2066, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 986, column: 3, scope: !3226, inlinedAt: !3303)
!3310 = !DILocation(line: 156, column: 57, scope: !2066, inlinedAt: !3309)
!3311 = !DILocation(line: 158, column: 12, scope: !2066, inlinedAt: !3309)
!3312 = !DILocation(line: 159, column: 6, scope: !2066, inlinedAt: !3309)
!3313 = !DILocation(line: 987, column: 10, scope: !3226, inlinedAt: !3303)
!3314 = !DILocation(line: 988, column: 1, scope: !3226, inlinedAt: !3303)
!3315 = !DILocation(line: 1005, column: 3, scope: !3298)
!3316 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !380, file: !380, line: 1009, type: !162, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3317)
!3317 = !{!3318, !3319, !3320, !3321}
!3318 = !DILocalVariable(name: "n", arg: 1, scope: !3316, file: !380, line: 1009, type: !6)
!3319 = !DILocalVariable(name: "s", arg: 2, scope: !3316, file: !380, line: 1009, type: !12)
!3320 = !DILocalVariable(name: "arg", arg: 3, scope: !3316, file: !380, line: 1009, type: !45)
!3321 = !DILocalVariable(name: "options", scope: !3316, file: !380, line: 1011, type: !412)
!3322 = !DILocation(line: 195, column: 26, scope: !3131, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1012, column: 13, scope: !3316)
!3324 = !DILocation(line: 0, scope: !3316)
!3325 = !DILocation(line: 1011, column: 3, scope: !3316)
!3326 = !DILocation(line: 1011, column: 26, scope: !3316)
!3327 = !DILocation(line: 1012, column: 13, scope: !3316)
!3328 = !DILocation(line: 0, scope: !3131, inlinedAt: !3323)
!3329 = !{!3330}
!3330 = distinct !{!3330, !3331, !"quoting_options_from_style: argument 0"}
!3331 = distinct !{!3331, !"quoting_options_from_style"}
!3332 = !DILocation(line: 196, column: 13, scope: !3143, inlinedAt: !3323)
!3333 = !DILocation(line: 196, column: 7, scope: !3131, inlinedAt: !3323)
!3334 = !DILocation(line: 197, column: 5, scope: !3143, inlinedAt: !3323)
!3335 = !DILocation(line: 0, scope: !2066, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 1013, column: 3, scope: !3316)
!3337 = !DILocation(line: 156, column: 57, scope: !2066, inlinedAt: !3336)
!3338 = !DILocation(line: 158, column: 12, scope: !2066, inlinedAt: !3336)
!3339 = !DILocation(line: 159, column: 6, scope: !2066, inlinedAt: !3336)
!3340 = !DILocation(line: 1014, column: 10, scope: !3316)
!3341 = !DILocation(line: 1015, column: 1, scope: !3316)
!3342 = !DILocation(line: 1014, column: 3, scope: !3316)
!3343 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !380, file: !380, line: 1018, type: !3344, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!8, !6, !45, !45, !45}
!3346 = !{!3347, !3348, !3349, !3350}
!3347 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !380, line: 1018, type: !6)
!3348 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3343, file: !380, line: 1018, type: !45)
!3349 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3343, file: !380, line: 1019, type: !45)
!3350 = !DILocalVariable(name: "arg", arg: 4, scope: !3343, file: !380, line: 1019, type: !45)
!3351 = !DILocalVariable(name: "o", scope: !3352, file: !380, line: 1030, type: !412)
!3352 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !380, file: !380, line: 1026, type: !3353, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!8, !6, !45, !45, !45, !101}
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3351}
!3356 = !DILocalVariable(name: "n", arg: 1, scope: !3352, file: !380, line: 1026, type: !6)
!3357 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3352, file: !380, line: 1026, type: !45)
!3358 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3352, file: !380, line: 1027, type: !45)
!3359 = !DILocalVariable(name: "arg", arg: 4, scope: !3352, file: !380, line: 1028, type: !45)
!3360 = !DILocalVariable(name: "argsize", arg: 5, scope: !3352, file: !380, line: 1028, type: !101)
!3361 = !DILocation(line: 1030, column: 26, scope: !3352, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 1021, column: 10, scope: !3343)
!3363 = !DILocation(line: 0, scope: !3343)
!3364 = !DILocation(line: 0, scope: !3352, inlinedAt: !3362)
!3365 = !DILocation(line: 1030, column: 3, scope: !3352, inlinedAt: !3362)
!3366 = !DILocation(line: 1030, column: 30, scope: !3352, inlinedAt: !3362)
!3367 = !DILocation(line: 0, scope: !2106, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 1031, column: 3, scope: !3352, inlinedAt: !3362)
!3369 = !DILocation(line: 184, column: 6, scope: !2106, inlinedAt: !3368)
!3370 = !DILocation(line: 184, column: 12, scope: !2106, inlinedAt: !3368)
!3371 = !DILocation(line: 185, column: 8, scope: !2120, inlinedAt: !3368)
!3372 = !DILocation(line: 185, column: 23, scope: !2120, inlinedAt: !3368)
!3373 = !DILocation(line: 185, column: 19, scope: !2120, inlinedAt: !3368)
!3374 = !DILocation(line: 186, column: 5, scope: !2120, inlinedAt: !3368)
!3375 = !DILocation(line: 187, column: 6, scope: !2106, inlinedAt: !3368)
!3376 = !DILocation(line: 187, column: 17, scope: !2106, inlinedAt: !3368)
!3377 = !DILocation(line: 188, column: 6, scope: !2106, inlinedAt: !3368)
!3378 = !DILocation(line: 188, column: 18, scope: !2106, inlinedAt: !3368)
!3379 = !DILocation(line: 1032, column: 10, scope: !3352, inlinedAt: !3362)
!3380 = !DILocation(line: 1033, column: 1, scope: !3352, inlinedAt: !3362)
!3381 = !DILocation(line: 1021, column: 3, scope: !3343)
!3382 = !DILocation(line: 0, scope: !3352)
!3383 = !DILocation(line: 1030, column: 3, scope: !3352)
!3384 = !DILocation(line: 1030, column: 26, scope: !3352)
!3385 = !DILocation(line: 1030, column: 30, scope: !3352)
!3386 = !DILocation(line: 0, scope: !2106, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 1031, column: 3, scope: !3352)
!3388 = !DILocation(line: 184, column: 6, scope: !2106, inlinedAt: !3387)
!3389 = !DILocation(line: 184, column: 12, scope: !2106, inlinedAt: !3387)
!3390 = !DILocation(line: 185, column: 8, scope: !2120, inlinedAt: !3387)
!3391 = !DILocation(line: 185, column: 23, scope: !2120, inlinedAt: !3387)
!3392 = !DILocation(line: 185, column: 19, scope: !2120, inlinedAt: !3387)
!3393 = !DILocation(line: 186, column: 5, scope: !2120, inlinedAt: !3387)
!3394 = !DILocation(line: 187, column: 6, scope: !2106, inlinedAt: !3387)
!3395 = !DILocation(line: 187, column: 17, scope: !2106, inlinedAt: !3387)
!3396 = !DILocation(line: 188, column: 6, scope: !2106, inlinedAt: !3387)
!3397 = !DILocation(line: 188, column: 18, scope: !2106, inlinedAt: !3387)
!3398 = !DILocation(line: 1032, column: 10, scope: !3352)
!3399 = !DILocation(line: 1033, column: 1, scope: !3352)
!3400 = !DILocation(line: 1032, column: 3, scope: !3352)
!3401 = distinct !DISubprogram(name: "quotearg_custom", scope: !380, file: !380, line: 1036, type: !3402, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3404)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!8, !45, !45, !45}
!3404 = !{!3405, !3406, !3407}
!3405 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3401, file: !380, line: 1036, type: !45)
!3406 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3401, file: !380, line: 1036, type: !45)
!3407 = !DILocalVariable(name: "arg", arg: 3, scope: !3401, file: !380, line: 1037, type: !45)
!3408 = !DILocation(line: 1030, column: 26, scope: !3352, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 1021, column: 10, scope: !3343, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 1039, column: 10, scope: !3401)
!3411 = !DILocation(line: 0, scope: !3401)
!3412 = !DILocation(line: 0, scope: !3343, inlinedAt: !3410)
!3413 = !DILocation(line: 0, scope: !3352, inlinedAt: !3409)
!3414 = !DILocation(line: 1030, column: 3, scope: !3352, inlinedAt: !3409)
!3415 = !DILocation(line: 1030, column: 30, scope: !3352, inlinedAt: !3409)
!3416 = !DILocation(line: 0, scope: !2106, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 1031, column: 3, scope: !3352, inlinedAt: !3409)
!3418 = !DILocation(line: 184, column: 6, scope: !2106, inlinedAt: !3417)
!3419 = !DILocation(line: 184, column: 12, scope: !2106, inlinedAt: !3417)
!3420 = !DILocation(line: 185, column: 8, scope: !2120, inlinedAt: !3417)
!3421 = !DILocation(line: 185, column: 23, scope: !2120, inlinedAt: !3417)
!3422 = !DILocation(line: 185, column: 19, scope: !2120, inlinedAt: !3417)
!3423 = !DILocation(line: 186, column: 5, scope: !2120, inlinedAt: !3417)
!3424 = !DILocation(line: 187, column: 6, scope: !2106, inlinedAt: !3417)
!3425 = !DILocation(line: 187, column: 17, scope: !2106, inlinedAt: !3417)
!3426 = !DILocation(line: 188, column: 6, scope: !2106, inlinedAt: !3417)
!3427 = !DILocation(line: 188, column: 18, scope: !2106, inlinedAt: !3417)
!3428 = !DILocation(line: 1032, column: 10, scope: !3352, inlinedAt: !3409)
!3429 = !DILocation(line: 1033, column: 1, scope: !3352, inlinedAt: !3409)
!3430 = !DILocation(line: 1039, column: 3, scope: !3401)
!3431 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !380, file: !380, line: 1043, type: !3432, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!8, !45, !45, !45, !101}
!3434 = !{!3435, !3436, !3437, !3438}
!3435 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3431, file: !380, line: 1043, type: !45)
!3436 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3431, file: !380, line: 1043, type: !45)
!3437 = !DILocalVariable(name: "arg", arg: 3, scope: !3431, file: !380, line: 1044, type: !45)
!3438 = !DILocalVariable(name: "argsize", arg: 4, scope: !3431, file: !380, line: 1044, type: !101)
!3439 = !DILocation(line: 1030, column: 26, scope: !3352, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 1046, column: 10, scope: !3431)
!3441 = !DILocation(line: 0, scope: !3431)
!3442 = !DILocation(line: 0, scope: !3352, inlinedAt: !3440)
!3443 = !DILocation(line: 1030, column: 3, scope: !3352, inlinedAt: !3440)
!3444 = !DILocation(line: 1030, column: 30, scope: !3352, inlinedAt: !3440)
!3445 = !DILocation(line: 0, scope: !2106, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 1031, column: 3, scope: !3352, inlinedAt: !3440)
!3447 = !DILocation(line: 184, column: 6, scope: !2106, inlinedAt: !3446)
!3448 = !DILocation(line: 184, column: 12, scope: !2106, inlinedAt: !3446)
!3449 = !DILocation(line: 185, column: 8, scope: !2120, inlinedAt: !3446)
!3450 = !DILocation(line: 185, column: 23, scope: !2120, inlinedAt: !3446)
!3451 = !DILocation(line: 185, column: 19, scope: !2120, inlinedAt: !3446)
!3452 = !DILocation(line: 186, column: 5, scope: !2120, inlinedAt: !3446)
!3453 = !DILocation(line: 187, column: 6, scope: !2106, inlinedAt: !3446)
!3454 = !DILocation(line: 187, column: 17, scope: !2106, inlinedAt: !3446)
!3455 = !DILocation(line: 188, column: 6, scope: !2106, inlinedAt: !3446)
!3456 = !DILocation(line: 188, column: 18, scope: !2106, inlinedAt: !3446)
!3457 = !DILocation(line: 1032, column: 10, scope: !3352, inlinedAt: !3440)
!3458 = !DILocation(line: 1033, column: 1, scope: !3352, inlinedAt: !3440)
!3459 = !DILocation(line: 1046, column: 3, scope: !3431)
!3460 = distinct !DISubprogram(name: "quote_n_mem", scope: !380, file: !380, line: 1061, type: !3461, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!45, !6, !45, !101}
!3463 = !{!3464, !3465, !3466}
!3464 = !DILocalVariable(name: "n", arg: 1, scope: !3460, file: !380, line: 1061, type: !6)
!3465 = !DILocalVariable(name: "arg", arg: 2, scope: !3460, file: !380, line: 1061, type: !45)
!3466 = !DILocalVariable(name: "argsize", arg: 3, scope: !3460, file: !380, line: 1061, type: !101)
!3467 = !DILocation(line: 0, scope: !3460)
!3468 = !DILocation(line: 1063, column: 10, scope: !3460)
!3469 = !DILocation(line: 1063, column: 3, scope: !3460)
!3470 = distinct !DISubprogram(name: "quote_mem", scope: !380, file: !380, line: 1067, type: !3471, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!45, !45, !101}
!3473 = !{!3474, !3475}
!3474 = !DILocalVariable(name: "arg", arg: 1, scope: !3470, file: !380, line: 1067, type: !45)
!3475 = !DILocalVariable(name: "argsize", arg: 2, scope: !3470, file: !380, line: 1067, type: !101)
!3476 = !DILocation(line: 0, scope: !3470)
!3477 = !DILocation(line: 0, scope: !3460, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 1069, column: 10, scope: !3470)
!3479 = !DILocation(line: 1063, column: 10, scope: !3460, inlinedAt: !3478)
!3480 = !DILocation(line: 1069, column: 3, scope: !3470)
!3481 = distinct !DISubprogram(name: "quote_n", scope: !380, file: !380, line: 1073, type: !3482, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!45, !6, !45}
!3484 = !{!3485, !3486}
!3485 = !DILocalVariable(name: "n", arg: 1, scope: !3481, file: !380, line: 1073, type: !6)
!3486 = !DILocalVariable(name: "arg", arg: 2, scope: !3481, file: !380, line: 1073, type: !45)
!3487 = !DILocation(line: 0, scope: !3481)
!3488 = !DILocation(line: 0, scope: !3460, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 1075, column: 10, scope: !3481)
!3490 = !DILocation(line: 1063, column: 10, scope: !3460, inlinedAt: !3489)
!3491 = !DILocation(line: 1075, column: 3, scope: !3481)
!3492 = distinct !DISubprogram(name: "quote", scope: !380, file: !380, line: 1079, type: !3493, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!45, !45}
!3495 = !{!3496}
!3496 = !DILocalVariable(name: "arg", arg: 1, scope: !3492, file: !380, line: 1079, type: !45)
!3497 = !DILocation(line: 0, scope: !3492)
!3498 = !DILocation(line: 0, scope: !3481, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 1081, column: 10, scope: !3492)
!3500 = !DILocation(line: 0, scope: !3460, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 1075, column: 10, scope: !3481, inlinedAt: !3499)
!3502 = !DILocation(line: 1063, column: 10, scope: !3460, inlinedAt: !3501)
!3503 = !DILocation(line: 1081, column: 3, scope: !3492)
!3504 = distinct !DISubprogram(name: "safe_read", scope: !549, file: !549, line: 56, type: !3505, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!101, !6, !99, !101}
!3507 = !{!3508, !3509, !3510, !3511}
!3508 = !DILocalVariable(name: "fd", arg: 1, scope: !3504, file: !549, line: 56, type: !6)
!3509 = !DILocalVariable(name: "buf", arg: 2, scope: !3504, file: !549, line: 56, type: !99)
!3510 = !DILocalVariable(name: "count", arg: 3, scope: !3504, file: !549, line: 56, type: !101)
!3511 = !DILocalVariable(name: "result", scope: !3512, file: !549, line: 60, type: !3515)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !549, line: 59, column: 5)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !549, line: 58, column: 3)
!3514 = distinct !DILexicalBlock(scope: !3504, file: !549, line: 58, column: 3)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !226, line: 108, baseType: !3516)
!3516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !76, line: 193, baseType: !77)
!3517 = !DILocation(line: 0, scope: !3504)
!3518 = !DILocation(line: 58, column: 3, scope: !3504)
!3519 = !DILocation(line: 62, column: 11, scope: !3512)
!3520 = !DILocation(line: 60, column: 24, scope: !3512)
!3521 = !DILocation(line: 0, scope: !3512)
!3522 = !DILocation(line: 62, column: 13, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3512, file: !549, line: 62, column: 11)
!3524 = !DILocation(line: 64, column: 16, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3523, file: !549, line: 64, column: 16)
!3526 = !DILocation(line: 64, column: 16, scope: !3523)
!3527 = distinct !{!3527, !3528, !3529}
!3528 = !DILocation(line: 58, column: 3, scope: !3514)
!3529 = !DILocation(line: 70, column: 5, scope: !3514)
!3530 = !DILocation(line: 66, column: 22, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3525, file: !549, line: 66, column: 16)
!3532 = !DILocation(line: 66, column: 51, scope: !3531)
!3533 = !DILocation(line: 66, column: 32, scope: !3531)
!3534 = !DILocation(line: 71, column: 1, scope: !3504)
!3535 = distinct !DISubprogram(name: "safe_write", scope: !3536, file: !3536, line: 56, type: !1969, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3537)
!3536 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3537 = !{!3538, !3539, !3540, !3541}
!3538 = !DILocalVariable(name: "fd", arg: 1, scope: !3535, file: !3536, line: 56, type: !6)
!3539 = !DILocalVariable(name: "buf", arg: 2, scope: !3535, file: !3536, line: 56, type: !188)
!3540 = !DILocalVariable(name: "count", arg: 3, scope: !3535, file: !3536, line: 56, type: !101)
!3541 = !DILocalVariable(name: "result", scope: !3542, file: !3536, line: 60, type: !3515)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !3536, line: 59, column: 5)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !3536, line: 58, column: 3)
!3544 = distinct !DILexicalBlock(scope: !3535, file: !3536, line: 58, column: 3)
!3545 = !DILocation(line: 0, scope: !3535)
!3546 = !DILocation(line: 58, column: 3, scope: !3535)
!3547 = !DILocation(line: 62, column: 11, scope: !3542)
!3548 = !DILocation(line: 60, column: 24, scope: !3542)
!3549 = !DILocation(line: 0, scope: !3542)
!3550 = !DILocation(line: 62, column: 13, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3542, file: !3536, line: 62, column: 11)
!3552 = !DILocation(line: 64, column: 16, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3551, file: !3536, line: 64, column: 16)
!3554 = !DILocation(line: 64, column: 16, scope: !3551)
!3555 = distinct !{!3555, !3556, !3557}
!3556 = !DILocation(line: 58, column: 3, scope: !3544)
!3557 = !DILocation(line: 70, column: 5, scope: !3544)
!3558 = !DILocation(line: 66, column: 22, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3553, file: !3536, line: 66, column: 16)
!3560 = !DILocation(line: 66, column: 51, scope: !3559)
!3561 = !DILocation(line: 66, column: 32, scope: !3559)
!3562 = !DILocation(line: 71, column: 1, scope: !3535)
!3563 = distinct !DISubprogram(name: "version_etc_arn", scope: !562, file: !562, line: 61, type: !3564, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3569)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3566, !45, !45, !45, !3568, !101}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1953, line: 7, baseType: !572)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575}
!3570 = !DILocalVariable(name: "stream", arg: 1, scope: !3563, file: !562, line: 61, type: !3566)
!3571 = !DILocalVariable(name: "command_name", arg: 2, scope: !3563, file: !562, line: 62, type: !45)
!3572 = !DILocalVariable(name: "package", arg: 3, scope: !3563, file: !562, line: 62, type: !45)
!3573 = !DILocalVariable(name: "version", arg: 4, scope: !3563, file: !562, line: 63, type: !45)
!3574 = !DILocalVariable(name: "authors", arg: 5, scope: !3563, file: !562, line: 64, type: !3568)
!3575 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3563, file: !562, line: 64, type: !101)
!3576 = !DILocation(line: 0, scope: !3563)
!3577 = !DILocation(line: 66, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3563, file: !562, line: 66, column: 7)
!3579 = !DILocation(line: 66, column: 7, scope: !3563)
!3580 = !DILocation(line: 67, column: 5, scope: !3578)
!3581 = !DILocation(line: 69, column: 5, scope: !3578)
!3582 = !DILocation(line: 83, column: 3, scope: !3563)
!3583 = !DILocation(line: 85, column: 3, scope: !3563)
!3584 = !DILocation(line: 88, column: 3, scope: !3563)
!3585 = !DILocation(line: 95, column: 3, scope: !3563)
!3586 = !DILocation(line: 97, column: 3, scope: !3563)
!3587 = !DILocation(line: 105, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3563, file: !562, line: 98, column: 5)
!3589 = !DILocation(line: 106, column: 7, scope: !3588)
!3590 = !DILocation(line: 109, column: 7, scope: !3588)
!3591 = !DILocation(line: 110, column: 7, scope: !3588)
!3592 = !DILocation(line: 113, column: 7, scope: !3588)
!3593 = !DILocation(line: 115, column: 7, scope: !3588)
!3594 = !DILocation(line: 120, column: 7, scope: !3588)
!3595 = !DILocation(line: 122, column: 7, scope: !3588)
!3596 = !DILocation(line: 127, column: 7, scope: !3588)
!3597 = !DILocation(line: 129, column: 7, scope: !3588)
!3598 = !DILocation(line: 134, column: 7, scope: !3588)
!3599 = !DILocation(line: 137, column: 7, scope: !3588)
!3600 = !DILocation(line: 142, column: 7, scope: !3588)
!3601 = !DILocation(line: 145, column: 7, scope: !3588)
!3602 = !DILocation(line: 150, column: 7, scope: !3588)
!3603 = !DILocation(line: 154, column: 7, scope: !3588)
!3604 = !DILocation(line: 159, column: 7, scope: !3588)
!3605 = !DILocation(line: 163, column: 7, scope: !3588)
!3606 = !DILocation(line: 170, column: 7, scope: !3588)
!3607 = !DILocation(line: 174, column: 7, scope: !3588)
!3608 = !DILocation(line: 176, column: 1, scope: !3563)
!3609 = distinct !DISubprogram(name: "version_etc_ar", scope: !562, file: !562, line: 183, type: !3610, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !3566, !45, !45, !45, !3568}
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618}
!3613 = !DILocalVariable(name: "stream", arg: 1, scope: !3609, file: !562, line: 183, type: !3566)
!3614 = !DILocalVariable(name: "command_name", arg: 2, scope: !3609, file: !562, line: 184, type: !45)
!3615 = !DILocalVariable(name: "package", arg: 3, scope: !3609, file: !562, line: 184, type: !45)
!3616 = !DILocalVariable(name: "version", arg: 4, scope: !3609, file: !562, line: 185, type: !45)
!3617 = !DILocalVariable(name: "authors", arg: 5, scope: !3609, file: !562, line: 185, type: !3568)
!3618 = !DILocalVariable(name: "n_authors", scope: !3609, file: !562, line: 187, type: !101)
!3619 = !DILocation(line: 0, scope: !3609)
!3620 = !DILocation(line: 189, column: 8, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3609, file: !562, line: 189, column: 3)
!3622 = !DILocation(line: 0, scope: !3621)
!3623 = !DILocation(line: 189, column: 23, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !562, line: 189, column: 3)
!3625 = !DILocation(line: 189, column: 3, scope: !3621)
!3626 = !DILocation(line: 189, column: 52, scope: !3624)
!3627 = distinct !{!3627, !3625, !3628}
!3628 = !DILocation(line: 190, column: 5, scope: !3621)
!3629 = !DILocation(line: 191, column: 3, scope: !3609)
!3630 = !DILocation(line: 192, column: 1, scope: !3609)
!3631 = distinct !DISubprogram(name: "version_etc_va", scope: !562, file: !562, line: 199, type: !3632, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3641)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{null, !3566, !45, !45, !45, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !562, line: 192, size: 192, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3635, file: !562, line: 192, baseType: !14, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3635, file: !562, line: 192, baseType: !14, size: 32, offset: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3635, file: !562, line: 192, baseType: !99, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3635, file: !562, line: 192, baseType: !99, size: 64, offset: 128)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648}
!3642 = !DILocalVariable(name: "stream", arg: 1, scope: !3631, file: !562, line: 199, type: !3566)
!3643 = !DILocalVariable(name: "command_name", arg: 2, scope: !3631, file: !562, line: 200, type: !45)
!3644 = !DILocalVariable(name: "package", arg: 3, scope: !3631, file: !562, line: 200, type: !45)
!3645 = !DILocalVariable(name: "version", arg: 4, scope: !3631, file: !562, line: 201, type: !45)
!3646 = !DILocalVariable(name: "authors", arg: 5, scope: !3631, file: !562, line: 201, type: !3634)
!3647 = !DILocalVariable(name: "n_authors", scope: !3631, file: !562, line: 203, type: !101)
!3648 = !DILocalVariable(name: "authtab", scope: !3631, file: !562, line: 204, type: !3649)
!3649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, elements: !278)
!3650 = !DILocation(line: 0, scope: !3631)
!3651 = !DILocation(line: 204, column: 3, scope: !3631)
!3652 = !DILocation(line: 204, column: 15, scope: !3631)
!3653 = !DILocation(line: 0, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !562, line: 206, column: 3)
!3655 = distinct !DILexicalBlock(scope: !3631, file: !562, line: 206, column: 3)
!3656 = !DILocation(line: 208, column: 35, scope: !3654)
!3657 = !DILocation(line: 208, column: 14, scope: !3654)
!3658 = !DILocation(line: 208, column: 33, scope: !3654)
!3659 = !DILocation(line: 208, column: 67, scope: !3654)
!3660 = !DILocation(line: 206, column: 3, scope: !3655)
!3661 = !DILocation(line: 0, scope: !3655)
!3662 = !DILocation(line: 211, column: 3, scope: !3631)
!3663 = !DILocation(line: 213, column: 1, scope: !3631)
!3664 = distinct !DISubprogram(name: "version_etc", scope: !562, file: !562, line: 230, type: !3665, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !3566, !45, !45, !45, null}
!3667 = !{!3668, !3669, !3670, !3671, !3672}
!3668 = !DILocalVariable(name: "stream", arg: 1, scope: !3664, file: !562, line: 230, type: !3566)
!3669 = !DILocalVariable(name: "command_name", arg: 2, scope: !3664, file: !562, line: 231, type: !45)
!3670 = !DILocalVariable(name: "package", arg: 3, scope: !3664, file: !562, line: 231, type: !45)
!3671 = !DILocalVariable(name: "version", arg: 4, scope: !3664, file: !562, line: 232, type: !45)
!3672 = !DILocalVariable(name: "authors", scope: !3664, file: !562, line: 234, type: !3673)
!3673 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !49, line: 52, baseType: !3674)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3675, line: 32, baseType: !3676)
!3675 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !562, line: 234, baseType: !3677)
!3677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3635, size: 192, elements: !84)
!3678 = !DILocation(line: 0, scope: !3664)
!3679 = !DILocation(line: 234, column: 3, scope: !3664)
!3680 = !DILocation(line: 234, column: 11, scope: !3664)
!3681 = !DILocation(line: 236, column: 3, scope: !3664)
!3682 = !DILocation(line: 237, column: 3, scope: !3664)
!3683 = !DILocation(line: 238, column: 3, scope: !3664)
!3684 = !DILocation(line: 239, column: 1, scope: !3664)
!3685 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !562, file: !562, line: 242, type: !132, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !47)
!3686 = !DILocation(line: 244, column: 3, scope: !3685)
!3687 = !DILocation(line: 249, column: 3, scope: !3685)
!3688 = !DILocation(line: 255, column: 3, scope: !3685)
!3689 = !DILocation(line: 260, column: 3, scope: !3685)
!3690 = !DILocation(line: 262, column: 1, scope: !3685)
!3691 = distinct !DISubprogram(name: "xnmalloc", scope: !171, file: !171, line: 99, type: !3692, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!99, !101, !101}
!3694 = !{!3695, !3696}
!3695 = !DILocalVariable(name: "n", arg: 1, scope: !3691, file: !171, line: 99, type: !101)
!3696 = !DILocalVariable(name: "s", arg: 2, scope: !3691, file: !171, line: 99, type: !101)
!3697 = !DILocation(line: 0, scope: !3691)
!3698 = !DILocation(line: 101, column: 7, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3691, file: !171, line: 101, column: 7)
!3700 = !DILocation(line: 101, column: 7, scope: !3691)
!3701 = !DILocation(line: 102, column: 5, scope: !3699)
!3702 = !DILocation(line: 103, column: 21, scope: !3691)
!3703 = !DILocalVariable(name: "n", arg: 1, scope: !3704, file: !604, line: 39, type: !101)
!3704 = distinct !DISubprogram(name: "xmalloc", scope: !604, file: !604, line: 39, type: !3705, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!99, !101}
!3707 = !{!3703, !3708}
!3708 = !DILocalVariable(name: "p", scope: !3704, file: !604, line: 41, type: !99)
!3709 = !DILocation(line: 0, scope: !3704, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 103, column: 10, scope: !3691)
!3711 = !DILocation(line: 41, column: 13, scope: !3704, inlinedAt: !3710)
!3712 = !DILocation(line: 42, column: 8, scope: !3713, inlinedAt: !3710)
!3713 = distinct !DILexicalBlock(scope: !3704, file: !604, line: 42, column: 7)
!3714 = !DILocation(line: 42, column: 15, scope: !3713, inlinedAt: !3710)
!3715 = !DILocation(line: 42, column: 10, scope: !3713, inlinedAt: !3710)
!3716 = !DILocation(line: 43, column: 5, scope: !3713, inlinedAt: !3710)
!3717 = !DILocation(line: 103, column: 3, scope: !3691)
!3718 = !DILocation(line: 0, scope: !3704)
!3719 = !DILocation(line: 41, column: 13, scope: !3704)
!3720 = !DILocation(line: 42, column: 8, scope: !3713)
!3721 = !DILocation(line: 42, column: 15, scope: !3713)
!3722 = !DILocation(line: 42, column: 10, scope: !3713)
!3723 = !DILocation(line: 43, column: 5, scope: !3713)
!3724 = !DILocation(line: 44, column: 3, scope: !3704)
!3725 = distinct !DISubprogram(name: "xnrealloc", scope: !171, file: !171, line: 112, type: !3726, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!99, !99, !101, !101}
!3728 = !{!3729, !3730, !3731}
!3729 = !DILocalVariable(name: "p", arg: 1, scope: !3725, file: !171, line: 112, type: !99)
!3730 = !DILocalVariable(name: "n", arg: 2, scope: !3725, file: !171, line: 112, type: !101)
!3731 = !DILocalVariable(name: "s", arg: 3, scope: !3725, file: !171, line: 112, type: !101)
!3732 = !DILocation(line: 0, scope: !3725)
!3733 = !DILocation(line: 114, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3725, file: !171, line: 114, column: 7)
!3735 = !DILocation(line: 114, column: 7, scope: !3725)
!3736 = !DILocation(line: 115, column: 5, scope: !3734)
!3737 = !DILocation(line: 116, column: 25, scope: !3725)
!3738 = !DILocalVariable(name: "p", arg: 1, scope: !3739, file: !604, line: 51, type: !99)
!3739 = distinct !DISubprogram(name: "xrealloc", scope: !604, file: !604, line: 51, type: !3740, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3742)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!99, !99, !101}
!3742 = !{!3738, !3743}
!3743 = !DILocalVariable(name: "n", arg: 2, scope: !3739, file: !604, line: 51, type: !101)
!3744 = !DILocation(line: 0, scope: !3739, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 116, column: 10, scope: !3725)
!3746 = !DILocation(line: 53, column: 8, scope: !3747, inlinedAt: !3745)
!3747 = distinct !DILexicalBlock(scope: !3739, file: !604, line: 53, column: 7)
!3748 = !DILocation(line: 53, column: 13, scope: !3747, inlinedAt: !3745)
!3749 = !DILocation(line: 53, column: 10, scope: !3747, inlinedAt: !3745)
!3750 = !DILocation(line: 57, column: 7, scope: !3751, inlinedAt: !3745)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !604, line: 54, column: 5)
!3752 = !DILocation(line: 58, column: 7, scope: !3751, inlinedAt: !3745)
!3753 = !DILocation(line: 61, column: 7, scope: !3739, inlinedAt: !3745)
!3754 = !DILocation(line: 62, column: 8, scope: !3755, inlinedAt: !3745)
!3755 = distinct !DILexicalBlock(scope: !3739, file: !604, line: 62, column: 7)
!3756 = !DILocation(line: 62, column: 13, scope: !3755, inlinedAt: !3745)
!3757 = !DILocation(line: 62, column: 10, scope: !3755, inlinedAt: !3745)
!3758 = !DILocation(line: 63, column: 5, scope: !3755, inlinedAt: !3745)
!3759 = !DILocation(line: 116, column: 3, scope: !3725)
!3760 = !DILocation(line: 0, scope: !3739)
!3761 = !DILocation(line: 53, column: 8, scope: !3747)
!3762 = !DILocation(line: 53, column: 13, scope: !3747)
!3763 = !DILocation(line: 53, column: 10, scope: !3747)
!3764 = !DILocation(line: 57, column: 7, scope: !3751)
!3765 = !DILocation(line: 58, column: 7, scope: !3751)
!3766 = !DILocation(line: 61, column: 7, scope: !3739)
!3767 = !DILocation(line: 62, column: 8, scope: !3755)
!3768 = !DILocation(line: 62, column: 13, scope: !3755)
!3769 = !DILocation(line: 62, column: 10, scope: !3755)
!3770 = !DILocation(line: 63, column: 5, scope: !3755)
!3771 = !DILocation(line: 65, column: 1, scope: !3739)
!3772 = !DILocation(line: 0, scope: !607)
!3773 = !DILocation(line: 176, column: 14, scope: !607)
!3774 = !DILocation(line: 178, column: 9, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !607, file: !171, line: 178, column: 7)
!3776 = !DILocation(line: 178, column: 7, scope: !607)
!3777 = !DILocation(line: 180, column: 13, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !171, line: 180, column: 11)
!3779 = distinct !DILexicalBlock(scope: !3775, file: !171, line: 179, column: 5)
!3780 = !DILocation(line: 180, column: 11, scope: !3779)
!3781 = !DILocation(line: 188, column: 30, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3778, file: !171, line: 181, column: 9)
!3783 = !DILocation(line: 189, column: 16, scope: !3782)
!3784 = !DILocation(line: 189, column: 13, scope: !3782)
!3785 = !DILocation(line: 190, column: 9, scope: !3782)
!3786 = !DILocation(line: 191, column: 11, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3779, file: !171, line: 191, column: 11)
!3788 = !DILocation(line: 191, column: 11, scope: !3779)
!3789 = !DILocation(line: 206, column: 7, scope: !607)
!3790 = !DILocation(line: 207, column: 25, scope: !607)
!3791 = !DILocation(line: 0, scope: !3739, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 207, column: 10, scope: !607)
!3793 = !DILocation(line: 53, column: 10, scope: !3747, inlinedAt: !3792)
!3794 = !DILocation(line: 192, column: 9, scope: !3787)
!3795 = !DILocation(line: 200, column: 69, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !171, line: 200, column: 11)
!3797 = distinct !DILexicalBlock(scope: !3775, file: !171, line: 195, column: 5)
!3798 = !DILocation(line: 201, column: 11, scope: !3796)
!3799 = !DILocation(line: 200, column: 11, scope: !3797)
!3800 = !DILocation(line: 202, column: 9, scope: !3796)
!3801 = !DILocation(line: 203, column: 14, scope: !3797)
!3802 = !DILocation(line: 203, column: 18, scope: !3797)
!3803 = !DILocation(line: 203, column: 9, scope: !3797)
!3804 = !DILocation(line: 53, column: 8, scope: !3747, inlinedAt: !3792)
!3805 = !DILocation(line: 57, column: 7, scope: !3751, inlinedAt: !3792)
!3806 = !DILocation(line: 58, column: 7, scope: !3751, inlinedAt: !3792)
!3807 = !DILocation(line: 61, column: 7, scope: !3739, inlinedAt: !3792)
!3808 = !DILocation(line: 62, column: 8, scope: !3755, inlinedAt: !3792)
!3809 = !DILocation(line: 62, column: 13, scope: !3755, inlinedAt: !3792)
!3810 = !DILocation(line: 62, column: 10, scope: !3755, inlinedAt: !3792)
!3811 = !DILocation(line: 63, column: 5, scope: !3755, inlinedAt: !3792)
!3812 = !DILocation(line: 207, column: 3, scope: !607)
!3813 = distinct !DISubprogram(name: "xcharalloc", scope: !171, file: !171, line: 216, type: !2920, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3814)
!3814 = !{!3815}
!3815 = !DILocalVariable(name: "n", arg: 1, scope: !3813, file: !171, line: 216, type: !101)
!3816 = !DILocation(line: 0, scope: !3813)
!3817 = !DILocation(line: 0, scope: !3704, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 218, column: 10, scope: !3813)
!3819 = !DILocation(line: 41, column: 13, scope: !3704, inlinedAt: !3818)
!3820 = !DILocation(line: 42, column: 8, scope: !3713, inlinedAt: !3818)
!3821 = !DILocation(line: 42, column: 15, scope: !3713, inlinedAt: !3818)
!3822 = !DILocation(line: 42, column: 10, scope: !3713, inlinedAt: !3818)
!3823 = !DILocation(line: 43, column: 5, scope: !3713, inlinedAt: !3818)
!3824 = !DILocation(line: 218, column: 3, scope: !3813)
!3825 = distinct !DISubprogram(name: "x2realloc", scope: !604, file: !604, line: 74, type: !3826, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!99, !99, !610}
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "p", arg: 1, scope: !3825, file: !604, line: 74, type: !99)
!3830 = !DILocalVariable(name: "pn", arg: 2, scope: !3825, file: !604, line: 74, type: !610)
!3831 = !DILocation(line: 0, scope: !3825)
!3832 = !DILocation(line: 0, scope: !607, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 76, column: 10, scope: !3825)
!3834 = !DILocation(line: 176, column: 14, scope: !607, inlinedAt: !3833)
!3835 = !DILocation(line: 178, column: 9, scope: !3775, inlinedAt: !3833)
!3836 = !DILocation(line: 178, column: 7, scope: !607, inlinedAt: !3833)
!3837 = !DILocation(line: 180, column: 13, scope: !3778, inlinedAt: !3833)
!3838 = !DILocation(line: 180, column: 11, scope: !3779, inlinedAt: !3833)
!3839 = !DILocation(line: 191, column: 11, scope: !3787, inlinedAt: !3833)
!3840 = !DILocation(line: 191, column: 11, scope: !3779, inlinedAt: !3833)
!3841 = !DILocation(line: 206, column: 7, scope: !607, inlinedAt: !3833)
!3842 = !DILocation(line: 0, scope: !3739, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 207, column: 10, scope: !607, inlinedAt: !3833)
!3844 = !DILocation(line: 53, column: 10, scope: !3747, inlinedAt: !3843)
!3845 = !DILocation(line: 192, column: 9, scope: !3787, inlinedAt: !3833)
!3846 = !DILocation(line: 201, column: 11, scope: !3796, inlinedAt: !3833)
!3847 = !DILocation(line: 200, column: 11, scope: !3797, inlinedAt: !3833)
!3848 = !DILocation(line: 202, column: 9, scope: !3796, inlinedAt: !3833)
!3849 = !DILocation(line: 203, column: 14, scope: !3797, inlinedAt: !3833)
!3850 = !DILocation(line: 203, column: 18, scope: !3797, inlinedAt: !3833)
!3851 = !DILocation(line: 203, column: 9, scope: !3797, inlinedAt: !3833)
!3852 = !DILocation(line: 53, column: 8, scope: !3747, inlinedAt: !3843)
!3853 = !DILocation(line: 57, column: 7, scope: !3751, inlinedAt: !3843)
!3854 = !DILocation(line: 58, column: 7, scope: !3751, inlinedAt: !3843)
!3855 = !DILocation(line: 61, column: 7, scope: !3739, inlinedAt: !3843)
!3856 = !DILocation(line: 62, column: 8, scope: !3755, inlinedAt: !3843)
!3857 = !DILocation(line: 62, column: 13, scope: !3755, inlinedAt: !3843)
!3858 = !DILocation(line: 62, column: 10, scope: !3755, inlinedAt: !3843)
!3859 = !DILocation(line: 63, column: 5, scope: !3755, inlinedAt: !3843)
!3860 = !DILocation(line: 76, column: 3, scope: !3825)
!3861 = distinct !DISubprogram(name: "xzalloc", scope: !604, file: !604, line: 84, type: !3705, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3862)
!3862 = !{!3863}
!3863 = !DILocalVariable(name: "n", arg: 1, scope: !3861, file: !604, line: 84, type: !101)
!3864 = !DILocation(line: 0, scope: !3861)
!3865 = !DILocalVariable(name: "n", arg: 1, scope: !3866, file: !604, line: 93, type: !101)
!3866 = distinct !DISubprogram(name: "xcalloc", scope: !604, file: !604, line: 93, type: !3692, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3867)
!3867 = !{!3865, !3868, !3869}
!3868 = !DILocalVariable(name: "s", arg: 2, scope: !3866, file: !604, line: 93, type: !101)
!3869 = !DILocalVariable(name: "p", scope: !3866, file: !604, line: 95, type: !99)
!3870 = !DILocation(line: 0, scope: !3866, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 86, column: 10, scope: !3861)
!3872 = !DILocation(line: 100, column: 7, scope: !3873, inlinedAt: !3871)
!3873 = distinct !DILexicalBlock(scope: !3866, file: !604, line: 100, column: 7)
!3874 = !DILocation(line: 101, column: 7, scope: !3873, inlinedAt: !3871)
!3875 = !DILocation(line: 101, column: 18, scope: !3873, inlinedAt: !3871)
!3876 = !DILocation(line: 101, column: 16, scope: !3873, inlinedAt: !3871)
!3877 = !DILocation(line: 100, column: 7, scope: !3866, inlinedAt: !3871)
!3878 = !DILocation(line: 102, column: 5, scope: !3873, inlinedAt: !3871)
!3879 = !DILocation(line: 86, column: 3, scope: !3861)
!3880 = !DILocation(line: 0, scope: !3866)
!3881 = !DILocation(line: 100, column: 7, scope: !3873)
!3882 = !DILocation(line: 101, column: 7, scope: !3873)
!3883 = !DILocation(line: 101, column: 18, scope: !3873)
!3884 = !DILocation(line: 101, column: 16, scope: !3873)
!3885 = !DILocation(line: 100, column: 7, scope: !3866)
!3886 = !DILocation(line: 102, column: 5, scope: !3873)
!3887 = !DILocation(line: 103, column: 3, scope: !3866)
!3888 = distinct !DISubprogram(name: "xmemdup", scope: !604, file: !604, line: 111, type: !1483, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3889)
!3889 = !{!3890, !3891}
!3890 = !DILocalVariable(name: "p", arg: 1, scope: !3888, file: !604, line: 111, type: !188)
!3891 = !DILocalVariable(name: "s", arg: 2, scope: !3888, file: !604, line: 111, type: !101)
!3892 = !DILocation(line: 0, scope: !3888)
!3893 = !DILocation(line: 0, scope: !3704, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 113, column: 18, scope: !3888)
!3895 = !DILocation(line: 41, column: 13, scope: !3704, inlinedAt: !3894)
!3896 = !DILocation(line: 42, column: 8, scope: !3713, inlinedAt: !3894)
!3897 = !DILocation(line: 42, column: 15, scope: !3713, inlinedAt: !3894)
!3898 = !DILocation(line: 42, column: 10, scope: !3713, inlinedAt: !3894)
!3899 = !DILocation(line: 43, column: 5, scope: !3713, inlinedAt: !3894)
!3900 = !DILocalVariable(name: "__dest", arg: 1, scope: !3901, file: !1572, line: 31, type: !3904)
!3901 = distinct !DISubprogram(name: "memcpy", scope: !1572, file: !1572, line: 31, type: !3902, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3906)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!99, !3904, !3905, !101}
!3904 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !99)
!3905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !188)
!3906 = !{!3900, !3907, !3908}
!3907 = !DILocalVariable(name: "__src", arg: 2, scope: !3901, file: !1572, line: 31, type: !3905)
!3908 = !DILocalVariable(name: "__len", arg: 3, scope: !3901, file: !1572, line: 31, type: !101)
!3909 = !DILocation(line: 0, scope: !3901, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 113, column: 10, scope: !3888)
!3911 = !DILocation(line: 34, column: 10, scope: !3901, inlinedAt: !3910)
!3912 = !DILocation(line: 113, column: 3, scope: !3888)
!3913 = distinct !DISubprogram(name: "xstrdup", scope: !604, file: !604, line: 119, type: !125, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !603, retainedNodes: !3914)
!3914 = !{!3915}
!3915 = !DILocalVariable(name: "string", arg: 1, scope: !3913, file: !604, line: 119, type: !45)
!3916 = !DILocation(line: 0, scope: !3913)
!3917 = !DILocation(line: 121, column: 27, scope: !3913)
!3918 = !DILocation(line: 121, column: 43, scope: !3913)
!3919 = !DILocation(line: 0, scope: !3888, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 121, column: 10, scope: !3913)
!3921 = !DILocation(line: 0, scope: !3704, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 113, column: 18, scope: !3888, inlinedAt: !3920)
!3923 = !DILocation(line: 41, column: 13, scope: !3704, inlinedAt: !3922)
!3924 = !DILocation(line: 42, column: 8, scope: !3713, inlinedAt: !3922)
!3925 = !DILocation(line: 42, column: 15, scope: !3713, inlinedAt: !3922)
!3926 = !DILocation(line: 42, column: 10, scope: !3713, inlinedAt: !3922)
!3927 = !DILocation(line: 43, column: 5, scope: !3713, inlinedAt: !3922)
!3928 = !DILocation(line: 0, scope: !3901, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 113, column: 10, scope: !3888, inlinedAt: !3920)
!3930 = !DILocation(line: 34, column: 10, scope: !3901, inlinedAt: !3929)
!3931 = !DILocation(line: 121, column: 3, scope: !3913)
!3932 = distinct !DISubprogram(name: "xalloc_die", scope: !625, file: !625, line: 32, type: !132, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !624, retainedNodes: !47)
!3933 = !DILocation(line: 34, column: 10, scope: !3932)
!3934 = !DILocation(line: 34, column: 33, scope: !3932)
!3935 = !DILocation(line: 34, column: 3, scope: !3932)
!3936 = !DILocation(line: 40, column: 3, scope: !3932)
!3937 = distinct !DISubprogram(name: "rpl_calloc", scope: !628, file: !628, line: 42, type: !3692, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !627, retainedNodes: !3938)
!3938 = !{!3939, !3940, !3941, !3942}
!3939 = !DILocalVariable(name: "n", arg: 1, scope: !3937, file: !628, line: 42, type: !101)
!3940 = !DILocalVariable(name: "s", arg: 2, scope: !3937, file: !628, line: 42, type: !101)
!3941 = !DILocalVariable(name: "result", scope: !3937, file: !628, line: 44, type: !99)
!3942 = !DILocalVariable(name: "bytes", scope: !3943, file: !628, line: 56, type: !101)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !628, line: 53, column: 5)
!3944 = distinct !DILexicalBlock(scope: !3937, file: !628, line: 47, column: 7)
!3945 = !DILocation(line: 0, scope: !3937)
!3946 = !DILocation(line: 47, column: 9, scope: !3944)
!3947 = !DILocation(line: 47, column: 19, scope: !3944)
!3948 = !DILocation(line: 47, column: 14, scope: !3944)
!3949 = !DILocation(line: 0, scope: !3943)
!3950 = !DILocation(line: 57, column: 21, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3943, file: !628, line: 57, column: 11)
!3952 = !DILocation(line: 57, column: 11, scope: !3943)
!3953 = !DILocation(line: 59, column: 11, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3951, file: !628, line: 58, column: 9)
!3955 = !DILocation(line: 59, column: 17, scope: !3954)
!3956 = !DILocation(line: 65, column: 12, scope: !3937)
!3957 = !DILocation(line: 72, column: 3, scope: !3937)
!3958 = !DILocation(line: 73, column: 1, scope: !3937)
!3959 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !631, file: !631, line: 86, type: !3960, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !630, retainedNodes: !3966)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!101, !3962, !45, !101, !3963}
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2196, line: 6, baseType: !3965)
!3965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !431, line: 21, baseType: !637)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973}
!3967 = !DILocalVariable(name: "pwc", arg: 1, scope: !3959, file: !631, line: 86, type: !3962)
!3968 = !DILocalVariable(name: "s", arg: 2, scope: !3959, file: !631, line: 86, type: !45)
!3969 = !DILocalVariable(name: "n", arg: 3, scope: !3959, file: !631, line: 86, type: !101)
!3970 = !DILocalVariable(name: "ps", arg: 4, scope: !3959, file: !631, line: 86, type: !3963)
!3971 = !DILocalVariable(name: "ret", scope: !3959, file: !631, line: 88, type: !101)
!3972 = !DILocalVariable(name: "wc", scope: !3959, file: !631, line: 89, type: !2200)
!3973 = !DILocalVariable(name: "uc", scope: !3974, file: !631, line: 156, type: !1397)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !631, line: 155, column: 5)
!3975 = distinct !DILexicalBlock(scope: !3959, file: !631, line: 154, column: 7)
!3976 = !DILocation(line: 0, scope: !3959)
!3977 = !DILocation(line: 89, column: 3, scope: !3959)
!3978 = !DILocation(line: 105, column: 9, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3959, file: !631, line: 105, column: 7)
!3980 = !DILocation(line: 105, column: 7, scope: !3959)
!3981 = !DILocation(line: 145, column: 9, scope: !3959)
!3982 = !DILocation(line: 154, column: 19, scope: !3975)
!3983 = !DILocation(line: 154, column: 31, scope: !3975)
!3984 = !DILocation(line: 154, column: 26, scope: !3975)
!3985 = !DILocation(line: 154, column: 41, scope: !3975)
!3986 = !DILocation(line: 154, column: 7, scope: !3959)
!3987 = !DILocation(line: 156, column: 26, scope: !3974)
!3988 = !DILocation(line: 0, scope: !3974)
!3989 = !DILocation(line: 157, column: 14, scope: !3974)
!3990 = !DILocation(line: 157, column: 12, scope: !3974)
!3991 = !DILocation(line: 163, column: 1, scope: !3959)
!3992 = distinct !DISubprogram(name: "close_stream", scope: !650, file: !650, line: 56, type: !3993, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3997)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!6, !3995}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1953, line: 7, baseType: !657)
!3997 = !{!3998, !3999, !4001, !4002}
!3998 = !DILocalVariable(name: "stream", arg: 1, scope: !3992, file: !650, line: 56, type: !3995)
!3999 = !DILocalVariable(name: "some_pending", scope: !3992, file: !650, line: 58, type: !4000)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!4001 = !DILocalVariable(name: "prev_fail", scope: !3992, file: !650, line: 59, type: !4000)
!4002 = !DILocalVariable(name: "fclose_fail", scope: !3992, file: !650, line: 60, type: !4000)
!4003 = !DILocation(line: 0, scope: !3992)
!4004 = !DILocation(line: 58, column: 30, scope: !3992)
!4005 = !DILocalVariable(name: "__stream", arg: 1, scope: !4006, file: !4007, line: 135, type: !3995)
!4006 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4007, file: !4007, line: 135, type: !3993, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !4008)
!4007 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!4008 = !{!4005}
!4009 = !DILocation(line: 0, scope: !4006, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 59, column: 27, scope: !3992)
!4011 = !DILocation(line: 137, column: 10, scope: !4006, inlinedAt: !4010)
!4012 = !{!4013, !1344, i64 0}
!4013 = !{!"_IO_FILE", !1344, i64 0, !1251, i64 8, !1251, i64 16, !1251, i64 24, !1251, i64 32, !1251, i64 40, !1251, i64 48, !1251, i64 56, !1251, i64 64, !1251, i64 72, !1251, i64 80, !1251, i64 88, !1251, i64 96, !1251, i64 104, !1344, i64 112, !1344, i64 116, !1355, i64 120, !2447, i64 128, !1252, i64 130, !1252, i64 131, !1251, i64 136, !1355, i64 144, !1251, i64 152, !1251, i64 160, !1251, i64 168, !1251, i64 176, !1355, i64 184, !1344, i64 192, !1252, i64 196}
!4014 = !DILocation(line: 59, column: 43, scope: !3992)
!4015 = !DILocation(line: 60, column: 29, scope: !3992)
!4016 = !DILocation(line: 60, column: 45, scope: !3992)
!4017 = !DILocation(line: 70, column: 17, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3992, file: !650, line: 70, column: 7)
!4019 = !DILocation(line: 58, column: 50, scope: !3992)
!4020 = !DILocation(line: 70, column: 33, scope: !4018)
!4021 = !DILocation(line: 70, column: 53, scope: !4018)
!4022 = !DILocation(line: 70, column: 59, scope: !4018)
!4023 = !DILocation(line: 70, column: 7, scope: !3992)
!4024 = !DILocation(line: 72, column: 11, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4018, file: !650, line: 71, column: 5)
!4026 = !DILocation(line: 73, column: 9, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4025, file: !650, line: 72, column: 11)
!4028 = !DILocation(line: 73, column: 15, scope: !4027)
!4029 = !DILocation(line: 78, column: 1, scope: !3992)
!4030 = distinct !DISubprogram(name: "hard_locale", scope: !689, file: !689, line: 27, type: !647, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !4031)
!4031 = !{!4032, !4033}
!4032 = !DILocalVariable(name: "category", arg: 1, scope: !4030, file: !689, line: 27, type: !6)
!4033 = !DILocalVariable(name: "locale", scope: !4030, file: !689, line: 29, type: !4034)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2056, elements: !4035)
!4035 = !{!4036}
!4036 = !DISubrange(count: 257)
!4037 = !DILocation(line: 0, scope: !4030)
!4038 = !DILocation(line: 29, column: 3, scope: !4030)
!4039 = !DILocation(line: 29, column: 8, scope: !4030)
!4040 = !DILocation(line: 31, column: 7, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4030, file: !689, line: 31, column: 7)
!4042 = !DILocation(line: 31, column: 7, scope: !4030)
!4043 = !DILocation(line: 34, column: 12, scope: !4030)
!4044 = !DILocation(line: 34, column: 38, scope: !4030)
!4045 = !DILocation(line: 34, column: 41, scope: !4030)
!4046 = !DILocation(line: 34, column: 66, scope: !4030)
!4047 = !DILocation(line: 35, column: 1, scope: !4030)
!4048 = distinct !DISubprogram(name: "locale_charset", scope: !696, file: !696, line: 831, type: !454, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !4049)
!4049 = !{!4050}
!4050 = !DILocalVariable(name: "codeset", scope: !4048, file: !696, line: 833, type: !45)
!4051 = !DILocation(line: 847, column: 13, scope: !4048)
!4052 = !DILocation(line: 0, scope: !4048)
!4053 = !DILocation(line: 911, column: 15, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4048, file: !696, line: 911, column: 7)
!4055 = !DILocation(line: 911, column: 7, scope: !4048)
!4056 = !DILocation(line: 1070, column: 13, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !696, line: 1070, column: 13)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !696, line: 1060, column: 7)
!4059 = distinct !DILexicalBlock(scope: !4048, file: !696, line: 1019, column: 3)
!4060 = !DILocation(line: 1070, column: 24, scope: !4057)
!4061 = !DILocation(line: 1070, column: 13, scope: !4058)
!4062 = !DILocation(line: 1158, column: 3, scope: !4048)
!4063 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1089, file: !1089, line: 269, type: !4064, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1088, retainedNodes: !4066)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!6, !6, !8, !101}
!4066 = !{!4067, !4068, !4069}
!4067 = !DILocalVariable(name: "category", arg: 1, scope: !4063, file: !1089, line: 269, type: !6)
!4068 = !DILocalVariable(name: "buf", arg: 2, scope: !4063, file: !1089, line: 269, type: !8)
!4069 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4063, file: !1089, line: 269, type: !101)
!4070 = !DILocation(line: 0, scope: !4063)
!4071 = !DILocalVariable(name: "category", arg: 1, scope: !4072, file: !1089, line: 91, type: !6)
!4072 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1089, file: !1089, line: 91, type: !4064, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1088, retainedNodes: !4073)
!4073 = !{!4071, !4074, !4075, !4076, !4077}
!4074 = !DILocalVariable(name: "buf", arg: 2, scope: !4072, file: !1089, line: 91, type: !8)
!4075 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4072, file: !1089, line: 91, type: !101)
!4076 = !DILocalVariable(name: "result", scope: !4072, file: !1089, line: 140, type: !45)
!4077 = !DILocalVariable(name: "length", scope: !4078, file: !1089, line: 154, type: !101)
!4078 = distinct !DILexicalBlock(scope: !4079, file: !1089, line: 153, column: 5)
!4079 = distinct !DILexicalBlock(scope: !4072, file: !1089, line: 142, column: 7)
!4080 = !DILocation(line: 0, scope: !4072, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 274, column: 10, scope: !4063)
!4082 = !DILocalVariable(name: "category", arg: 1, scope: !4083, file: !1089, line: 60, type: !6)
!4083 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1089, file: !1089, line: 60, type: !4084, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1088, retainedNodes: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!45, !6}
!4086 = !{!4082, !4087}
!4087 = !DILocalVariable(name: "result", scope: !4083, file: !1089, line: 62, type: !45)
!4088 = !DILocation(line: 0, scope: !4083, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 140, column: 24, scope: !4072, inlinedAt: !4081)
!4090 = !DILocation(line: 62, column: 24, scope: !4083, inlinedAt: !4089)
!4091 = !DILocation(line: 142, column: 14, scope: !4079, inlinedAt: !4081)
!4092 = !DILocation(line: 142, column: 7, scope: !4072, inlinedAt: !4081)
!4093 = !DILocation(line: 145, column: 19, scope: !4094, inlinedAt: !4081)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !1089, line: 145, column: 11)
!4095 = distinct !DILexicalBlock(scope: !4079, file: !1089, line: 143, column: 5)
!4096 = !DILocation(line: 145, column: 11, scope: !4095, inlinedAt: !4081)
!4097 = !DILocation(line: 149, column: 16, scope: !4094, inlinedAt: !4081)
!4098 = !DILocation(line: 149, column: 9, scope: !4094, inlinedAt: !4081)
!4099 = !DILocation(line: 154, column: 23, scope: !4078, inlinedAt: !4081)
!4100 = !DILocation(line: 0, scope: !4078, inlinedAt: !4081)
!4101 = !DILocation(line: 155, column: 18, scope: !4102, inlinedAt: !4081)
!4102 = distinct !DILexicalBlock(scope: !4078, file: !1089, line: 155, column: 11)
!4103 = !DILocation(line: 155, column: 11, scope: !4078, inlinedAt: !4081)
!4104 = !DILocation(line: 157, column: 39, scope: !4105, inlinedAt: !4081)
!4105 = distinct !DILexicalBlock(scope: !4102, file: !1089, line: 156, column: 9)
!4106 = !DILocalVariable(name: "__dest", arg: 1, scope: !4107, file: !1572, line: 31, type: !3904)
!4107 = distinct !DISubprogram(name: "memcpy", scope: !1572, file: !1572, line: 31, type: !3902, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1088, retainedNodes: !4108)
!4108 = !{!4106, !4109, !4110}
!4109 = !DILocalVariable(name: "__src", arg: 2, scope: !4107, file: !1572, line: 31, type: !3905)
!4110 = !DILocalVariable(name: "__len", arg: 3, scope: !4107, file: !1572, line: 31, type: !101)
!4111 = !DILocation(line: 0, scope: !4107, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 157, column: 11, scope: !4105, inlinedAt: !4081)
!4113 = !DILocation(line: 34, column: 10, scope: !4107, inlinedAt: !4112)
!4114 = !DILocation(line: 158, column: 11, scope: !4105, inlinedAt: !4081)
!4115 = !DILocation(line: 162, column: 23, scope: !4116, inlinedAt: !4081)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !1089, line: 162, column: 15)
!4117 = distinct !DILexicalBlock(scope: !4102, file: !1089, line: 161, column: 9)
!4118 = !DILocation(line: 162, column: 15, scope: !4117, inlinedAt: !4081)
!4119 = !DILocation(line: 167, column: 44, scope: !4120, inlinedAt: !4081)
!4120 = distinct !DILexicalBlock(scope: !4116, file: !1089, line: 163, column: 13)
!4121 = !DILocation(line: 0, scope: !4107, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 167, column: 15, scope: !4120, inlinedAt: !4081)
!4123 = !DILocation(line: 34, column: 10, scope: !4107, inlinedAt: !4122)
!4124 = !DILocation(line: 168, column: 15, scope: !4120, inlinedAt: !4081)
!4125 = !DILocation(line: 168, column: 32, scope: !4120, inlinedAt: !4081)
!4126 = !DILocation(line: 169, column: 13, scope: !4120, inlinedAt: !4081)
!4127 = !DILocation(line: 0, scope: !4079, inlinedAt: !4081)
!4128 = !DILocation(line: 274, column: 3, scope: !4063)
!4129 = distinct !DISubprogram(name: "setlocale_null", scope: !1089, file: !1089, line: 301, type: !4084, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1088, retainedNodes: !4130)
!4130 = !{!4131}
!4131 = !DILocalVariable(name: "category", arg: 1, scope: !4129, file: !1089, line: 301, type: !6)
!4132 = !DILocation(line: 0, scope: !4129)
!4133 = !DILocation(line: 0, scope: !4083, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 304, column: 10, scope: !4129)
!4135 = !DILocation(line: 62, column: 24, scope: !4083, inlinedAt: !4134)
!4136 = !DILocation(line: 304, column: 3, scope: !4129)
!4137 = distinct !DISubprogram(name: "rpl_fclose", scope: !1092, file: !1092, line: 58, type: !4138, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1091, retainedNodes: !4142)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!6, !4140}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1953, line: 7, baseType: !1098)
!4142 = !{!4143, !4144, !4145, !4146}
!4143 = !DILocalVariable(name: "fp", arg: 1, scope: !4137, file: !1092, line: 58, type: !4140)
!4144 = !DILocalVariable(name: "saved_errno", scope: !4137, file: !1092, line: 60, type: !6)
!4145 = !DILocalVariable(name: "fd", scope: !4137, file: !1092, line: 61, type: !6)
!4146 = !DILocalVariable(name: "result", scope: !4137, file: !1092, line: 62, type: !6)
!4147 = !DILocation(line: 0, scope: !4137)
!4148 = !DILocation(line: 65, column: 8, scope: !4137)
!4149 = !DILocation(line: 66, column: 10, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4137, file: !1092, line: 66, column: 7)
!4151 = !DILocation(line: 66, column: 7, scope: !4137)
!4152 = !DILocation(line: 67, column: 12, scope: !4150)
!4153 = !DILocation(line: 67, column: 5, scope: !4150)
!4154 = !DILocation(line: 72, column: 9, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4137, file: !1092, line: 72, column: 7)
!4156 = !DILocation(line: 72, column: 23, scope: !4155)
!4157 = !DILocation(line: 72, column: 33, scope: !4155)
!4158 = !DILocation(line: 72, column: 26, scope: !4155)
!4159 = !DILocation(line: 72, column: 59, scope: !4155)
!4160 = !DILocation(line: 73, column: 7, scope: !4155)
!4161 = !DILocation(line: 73, column: 10, scope: !4155)
!4162 = !DILocation(line: 72, column: 7, scope: !4137)
!4163 = !DILocation(line: 100, column: 12, scope: !4137)
!4164 = !DILocation(line: 105, column: 7, scope: !4137)
!4165 = !DILocation(line: 74, column: 19, scope: !4155)
!4166 = !DILocation(line: 105, column: 19, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4137, file: !1092, line: 105, column: 7)
!4168 = !DILocation(line: 107, column: 13, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4167, file: !1092, line: 106, column: 5)
!4170 = !DILocation(line: 109, column: 5, scope: !4169)
!4171 = !DILocation(line: 112, column: 1, scope: !4137)
!4172 = distinct !DISubprogram(name: "rpl_fflush", scope: !1132, file: !1132, line: 129, type: !4173, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1131, retainedNodes: !4177)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!6, !4175}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1953, line: 7, baseType: !1138)
!4177 = !{!4178}
!4178 = !DILocalVariable(name: "stream", arg: 1, scope: !4172, file: !1132, line: 129, type: !4175)
!4179 = !DILocation(line: 0, scope: !4172)
!4180 = !DILocation(line: 150, column: 14, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4172, file: !1132, line: 150, column: 7)
!4182 = !DILocation(line: 150, column: 22, scope: !4181)
!4183 = !DILocation(line: 150, column: 27, scope: !4181)
!4184 = !DILocation(line: 150, column: 7, scope: !4172)
!4185 = !DILocation(line: 151, column: 12, scope: !4181)
!4186 = !DILocation(line: 151, column: 5, scope: !4181)
!4187 = !DILocalVariable(name: "fp", arg: 1, scope: !4188, file: !1132, line: 41, type: !4175)
!4188 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1132, file: !1132, line: 41, type: !4189, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1131, retainedNodes: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{null, !4175}
!4191 = !{!4187}
!4192 = !DILocation(line: 0, scope: !4188, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 156, column: 3, scope: !4172)
!4194 = !DILocation(line: 43, column: 11, scope: !4195, inlinedAt: !4193)
!4195 = distinct !DILexicalBlock(scope: !4188, file: !1132, line: 43, column: 7)
!4196 = !DILocation(line: 43, column: 18, scope: !4195, inlinedAt: !4193)
!4197 = !DILocation(line: 43, column: 7, scope: !4188, inlinedAt: !4193)
!4198 = !DILocation(line: 45, column: 5, scope: !4195, inlinedAt: !4193)
!4199 = !DILocation(line: 158, column: 10, scope: !4172)
!4200 = !DILocation(line: 158, column: 3, scope: !4172)
!4201 = !DILocation(line: 235, column: 1, scope: !4172)
!4202 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1173, file: !1173, line: 28, type: !4203, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1172, retainedNodes: !4207)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!6, !4205, !1935, !6}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1953, line: 7, baseType: !1179)
!4207 = !{!4208, !4209, !4210, !4211}
!4208 = !DILocalVariable(name: "fp", arg: 1, scope: !4202, file: !1173, line: 28, type: !4205)
!4209 = !DILocalVariable(name: "offset", arg: 2, scope: !4202, file: !1173, line: 28, type: !1935)
!4210 = !DILocalVariable(name: "whence", arg: 3, scope: !4202, file: !1173, line: 28, type: !6)
!4211 = !DILocalVariable(name: "pos", scope: !4212, file: !1173, line: 117, type: !1935)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !1173, line: 113, column: 5)
!4213 = distinct !DILexicalBlock(scope: !4202, file: !1173, line: 52, column: 7)
!4214 = !DILocation(line: 0, scope: !4202)
!4215 = !DILocation(line: 52, column: 11, scope: !4213)
!4216 = !{!4013, !1251, i64 16}
!4217 = !DILocation(line: 52, column: 31, scope: !4213)
!4218 = !{!4013, !1251, i64 8}
!4219 = !DILocation(line: 52, column: 24, scope: !4213)
!4220 = !DILocation(line: 53, column: 7, scope: !4213)
!4221 = !DILocation(line: 53, column: 14, scope: !4213)
!4222 = !{!4013, !1251, i64 40}
!4223 = !DILocation(line: 53, column: 35, scope: !4213)
!4224 = !{!4013, !1251, i64 32}
!4225 = !DILocation(line: 53, column: 28, scope: !4213)
!4226 = !DILocation(line: 54, column: 7, scope: !4213)
!4227 = !DILocation(line: 54, column: 14, scope: !4213)
!4228 = !{!4013, !1251, i64 72}
!4229 = !DILocation(line: 54, column: 28, scope: !4213)
!4230 = !DILocation(line: 52, column: 7, scope: !4202)
!4231 = !DILocation(line: 117, column: 26, scope: !4212)
!4232 = !DILocation(line: 117, column: 19, scope: !4212)
!4233 = !DILocation(line: 0, scope: !4212)
!4234 = !DILocation(line: 118, column: 15, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4212, file: !1173, line: 118, column: 11)
!4236 = !DILocation(line: 118, column: 11, scope: !4212)
!4237 = !DILocation(line: 129, column: 11, scope: !4212)
!4238 = !DILocation(line: 129, column: 18, scope: !4212)
!4239 = !DILocation(line: 130, column: 11, scope: !4212)
!4240 = !DILocation(line: 130, column: 19, scope: !4212)
!4241 = !{!4013, !1355, i64 144}
!4242 = !DILocation(line: 161, column: 7, scope: !4212)
!4243 = !DILocation(line: 163, column: 10, scope: !4202)
!4244 = !DILocation(line: 163, column: 3, scope: !4202)
!4245 = !DILocation(line: 164, column: 1, scope: !4202)
