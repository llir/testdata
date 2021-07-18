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
@infile = internal unnamed_addr global i8* null, align 8, !dbg !46
@optind = external local_unnamed_addr global i32, align 4
@input_desc = internal unnamed_addr global i32 0, align 4, !dbg !50
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"%s: input file is output file\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@newlines2 = internal unnamed_addr global i32 0, align 4, !dbg !52
@.str.47 = private unnamed_addr constant [22 x i8] c"cannot do ioctl on %s\00", align 1
@line_num_start = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), align 8, !dbg !56
@line_buf = internal global [20 x i8] c"                 0\09\00", align 16, !dbg !58
@line_num_print = internal unnamed_addr global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 12), align 8, !dbg !63
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !145
@.str.48 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !151
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !156
@.str.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.52 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !158
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !164
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !170
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !198
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !202
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !214
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !221
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !228
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !216
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !230
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !236
@.str.1.129 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !697 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !701, metadata !DIExpression()), !dbg !702
  %3 = icmp eq i32 %0, 0, !dbg !703
  br i1 %3, label %9, label %4, !dbg !705

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !706, !tbaa !708
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !706
  %7 = load i8*, i8** @program_name, align 8, !dbg !706, !tbaa !708
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !706
  br label %70, !dbg !706

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !712
  %11 = load i8*, i8** @program_name, align 8, !dbg !712, !tbaa !708
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #27, !dbg !712
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !714
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !708
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !714
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #27, !dbg !715
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !715, !tbaa !708
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #27, !dbg !715
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([335 x i8], [335 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !721
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !721, !tbaa !708
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !721
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !722
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !708
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !722
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !723
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !708
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !723
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !724
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !708
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !724
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.7, i64 0, i64 0), i32 5) #27, !dbg !725
  %32 = load i8*, i8** @program_name, align 8, !dbg !725, !tbaa !708
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* %32, i8* %32) #27, !dbg !725
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !726, metadata !DIExpression()) #27, !dbg !744
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !746
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #27, !dbg !746
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !731, metadata !DIExpression()) #27, !dbg !747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !747
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), metadata !740, metadata !DIExpression()) #27, !dbg !744
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !741, metadata !DIExpression()) #27, !dbg !744
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !748
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !741, metadata !DIExpression()) #27, !dbg !744
  br label %36, !dbg !749

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !741, metadata !DIExpression()) #27, !dbg !744
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %37) #28, !dbg !750
  %40 = icmp eq i32 %39, 0, !dbg !750
  br i1 %40, label %46, label %41, !dbg !749

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !751
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !741, metadata !DIExpression()) #27, !dbg !744
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !752
  %44 = load i8*, i8** %43, align 8, !dbg !752, !tbaa !753
  %45 = icmp eq i8* %44, null, !dbg !755
  br i1 %45, label %46, label %36, !dbg !756, !llvm.loop !757

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %38, %36 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !759
  %49 = load i8*, i8** %48, align 8, !dbg !759, !tbaa !761
  %50 = icmp eq i8* %49, null, !dbg !762
  %51 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %49, !dbg !763
  call void @llvm.dbg.value(metadata i8* %51, metadata !740, metadata !DIExpression()) #27, !dbg !744
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #27, !dbg !764
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0)) #27, !dbg !764
  %54 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !765
  call void @llvm.dbg.value(metadata i8* %54, metadata !743, metadata !DIExpression()) #27, !dbg !744
  %55 = icmp eq i8* %54, null, !dbg !766
  br i1 %55, label %63, label %56, !dbg !768

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #28, !dbg !769
  %58 = icmp eq i32 %57, 0, !dbg !769
  br i1 %58, label %63, label %59, !dbg !770

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.42, i64 0, i64 0), i32 5) #27, !dbg !771
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !771, !tbaa !708
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #27, !dbg !771
  br label %63, !dbg !773

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !774
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #27, !dbg !774
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #27, !dbg !775
  %67 = icmp eq i8* %51, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !775
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0), !dbg !775
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #27, !dbg !775
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #27, !dbg !776
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #29, !dbg !777
  unreachable, !dbg !777
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !778 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !782 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !832 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !66, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8** %1, metadata !67, metadata !DIExpression()), !dbg !836
  %5 = tail call i32 @getpagesize() #30, !dbg !837
  %6 = sext i32 %5 to i64, !dbg !837
  call void @llvm.dbg.value(metadata i64 %6, metadata !70, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 1, metadata !73, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 0, metadata !86, metadata !DIExpression()), !dbg !836
  %7 = bitcast %struct.stat* %4 to i8*, !dbg !838
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %7) #27, !dbg !838
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !87, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8 0, metadata !124, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 0, metadata !125, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 0, metadata !126, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 0, metadata !127, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 0, metadata !128, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 0, metadata !129, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !836
  %8 = load i8*, i8** %1, align 8, !dbg !840, !tbaa !708
  tail call void @set_program_name(i8* %8) #27, !dbg !841
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)) #27, !dbg !842
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0)) #27, !dbg !843
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #27, !dbg !844
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !845
  br label %13, !dbg !846

13:                                               ; preds = %21, %2
  %14 = phi i8 [ 0, %2 ], [ %22, %21 ], !dbg !847
  %15 = phi i8 [ 0, %2 ], [ %23, %21 ], !dbg !848
  %16 = phi i8 [ 0, %2 ], [ %24, %21 ], !dbg !849
  %17 = phi i8 [ 0, %2 ], [ %25, %21 ], !dbg !850
  %18 = phi i8 [ 0, %2 ], [ %26, %21 ], !dbg !851
  %19 = phi i8 [ 0, %2 ], [ %27, %21 ], !dbg !836
  call void @llvm.dbg.value(metadata i8 %19, metadata !129, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 %18, metadata !128, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 %17, metadata !127, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 %16, metadata !126, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 %15, metadata !125, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 %14, metadata !124, metadata !DIExpression()), !dbg !836
  %20 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null) #27, !dbg !852
  call void @llvm.dbg.value(metadata i32 %20, metadata !75, metadata !DIExpression()), !dbg !836
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
  ], !dbg !846

21:                                               ; preds = %13, %36, %35, %34, %33, %32, %31, %30, %29, %28
  %22 = phi i8 [ %14, %36 ], [ %14, %35 ], [ %14, %34 ], [ %14, %33 ], [ %14, %32 ], [ %14, %31 ], [ 1, %30 ], [ %14, %29 ], [ 1, %28 ], [ %14, %13 ]
  %23 = phi i8 [ %15, %36 ], [ %15, %35 ], [ %15, %34 ], [ %15, %33 ], [ %15, %32 ], [ %15, %31 ], [ %15, %30 ], [ %15, %29 ], [ 1, %28 ], [ %15, %13 ]
  %24 = phi i8 [ %16, %36 ], [ %16, %35 ], [ %16, %34 ], [ %16, %33 ], [ %16, %32 ], [ 1, %31 ], [ %16, %30 ], [ %16, %29 ], [ %16, %28 ], [ %16, %13 ]
  %25 = phi i8 [ %17, %36 ], [ 1, %35 ], [ 1, %34 ], [ %17, %33 ], [ %17, %32 ], [ %17, %31 ], [ %17, %30 ], [ 1, %29 ], [ %17, %28 ], [ %17, %13 ]
  %26 = phi i8 [ %18, %36 ], [ %18, %35 ], [ 1, %34 ], [ 1, %33 ], [ 1, %32 ], [ %18, %31 ], [ %18, %30 ], [ 1, %29 ], [ %18, %28 ], [ %18, %13 ]
  %27 = phi i8 [ 1, %36 ], [ %19, %35 ], [ 1, %34 ], [ %19, %33 ], [ 1, %32 ], [ %19, %31 ], [ %19, %30 ], [ %19, %29 ], [ %19, %28 ], [ %19, %13 ]
  br label %13, !dbg !836, !llvm.loop !853

28:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !124, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 1, metadata !125, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !855

29:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !127, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !858

30:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !124, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !859

31:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !126, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !860

32:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !129, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !861

33:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !862

34:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 1, metadata !127, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 1, metadata !129, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !863

35:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !127, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !864

36:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !129, metadata !DIExpression()), !dbg !836
  br label %21, !dbg !865

37:                                               ; preds = %13
  tail call void @usage(i32 0) #31, !dbg !866
  unreachable, !dbg !866

38:                                               ; preds = %13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !867, !tbaa !708
  %40 = load i8*, i8** @Version, align 8, !dbg !867, !tbaa !708
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* null) #27, !dbg !867
  tail call void @exit(i32 0) #29, !dbg !867
  unreachable, !dbg !867

41:                                               ; preds = %13
  tail call void @usage(i32 1) #31, !dbg !868
  unreachable, !dbg !868

42:                                               ; preds = %13
  %43 = call i32 @fstat(i32 1, %struct.stat* nonnull %4) #27, !dbg !869
  %44 = icmp slt i32 %43, 0, !dbg !871
  br i1 %44, label %45, label %49, !dbg !872

45:                                               ; preds = %42
  %46 = tail call i32* @__errno_location() #30, !dbg !873
  %47 = load i32, i32* %46, align 4, !dbg !873, !tbaa !874
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 5) #27, !dbg !873
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %47, i8* %48) #27, !dbg !873
  unreachable, !dbg !873

49:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !876, metadata !DIExpression()), !dbg !881
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 9, !dbg !883
  %51 = load i64, i64* %50, align 8, !dbg !883, !tbaa !884
  %52 = icmp ult i64 %51, 2305843009213693953, !dbg !883
  %53 = icmp sgt i64 %51, 131071, !dbg !883
  %54 = and i1 %53, %52, !dbg !883
  %55 = select i1 %54, i64 %51, i64 131072, !dbg !883
  call void @llvm.dbg.value(metadata i64 %55, metadata !68, metadata !DIExpression()), !dbg !836
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0, !dbg !888
  %57 = load i64, i64* %56, align 8, !dbg !888, !tbaa !889
  call void @llvm.dbg.value(metadata i64 %57, metadata !77, metadata !DIExpression()), !dbg !836
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1, !dbg !890
  %59 = load i64, i64* %58, align 8, !dbg !890, !tbaa !891
  call void @llvm.dbg.value(metadata i64 %59, metadata !82, metadata !DIExpression()), !dbg !836
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !892
  %61 = load i32, i32* %60, align 8, !dbg !892, !tbaa !893
  %62 = and i32 %61, 61440, !dbg !892
  %63 = icmp eq i32 %62, 32768, !dbg !892
  call void @llvm.dbg.value(metadata i1 %63, metadata !85, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !836
  %64 = icmp ne i8 %14, 0, !dbg !894
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !836
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8** @infile, align 8, !dbg !896, !tbaa !708
  %65 = load i32, i32* @optind, align 4, !dbg !897, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %65, metadata !76, metadata !DIExpression()), !dbg !836
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8
  %67 = or i8 %16, %14
  %68 = or i8 %67, %17
  %69 = or i8 %68, %18
  %70 = or i8 %69, %19
  %71 = icmp eq i8 %70, 0
  %72 = add nsw i64 %6, 18
  %73 = add i64 %72, %55
  %74 = icmp eq i8 %18, 0
  %75 = icmp ne i8 %19, 0
  %76 = icmp eq i8 %15, 0
  %77 = icmp eq i8 %17, 0
  %78 = icmp eq i8 %16, 0
  %79 = and i1 %64, %76
  %80 = bitcast i32* %3 to i8*
  %81 = add nsw i64 %6, -1
  %82 = sext i32 %65 to i64, !dbg !898
  %83 = sext i32 %0 to i64, !dbg !898
  br label %84, !dbg !898

84:                                               ; preds = %444, %49
  %85 = phi i64 [ %447, %444 ], [ %82, %49 ], !dbg !836
  %86 = phi i8 [ %445, %444 ], [ 1, %49 ], !dbg !836
  %87 = phi i8 [ %446, %444 ], [ 0, %49 ], !dbg !836
  call void @llvm.dbg.value(metadata i8 %87, metadata !86, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 %85, metadata !76, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 %86, metadata !73, metadata !DIExpression()), !dbg !836
  %88 = icmp slt i64 %85, %83, !dbg !899
  br i1 %88, label %91, label %89, !dbg !901

89:                                               ; preds = %84
  %90 = load i8*, i8** @infile, align 8, !dbg !902, !tbaa !708
  br label %94, !dbg !901

91:                                               ; preds = %84
  %92 = getelementptr inbounds i8*, i8** %1, i64 %85, !dbg !904
  %93 = load i8*, i8** %92, align 8, !dbg !904, !tbaa !708
  store i8* %93, i8** @infile, align 8, !dbg !905, !tbaa !708
  br label %94, !dbg !906

94:                                               ; preds = %89, %91
  %95 = phi i8* [ %90, %89 ], [ %93, %91 ], !dbg !902
  %96 = call i32 @strcmp(i8* nonnull dereferenceable(1) %95, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #28, !dbg !902
  %97 = icmp eq i32 %96, 0, !dbg !902
  br i1 %97, label %98, label %99, !dbg !907

98:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i8 1, metadata !86, metadata !DIExpression()), !dbg !836
  store i32 0, i32* @input_desc, align 4, !dbg !908, !tbaa !874
  br label %107

99:                                               ; preds = %94
  %100 = call i32 (i8*, i32, ...) @open(i8* %95, i32 0) #27, !dbg !910
  store i32 %100, i32* @input_desc, align 4, !dbg !912, !tbaa !874
  %101 = icmp slt i32 %100, 0, !dbg !913
  br i1 %101, label %102, label %107, !dbg !915

102:                                              ; preds = %99
  %103 = tail call i32* @__errno_location() #30, !dbg !916
  %104 = load i32, i32* %103, align 4, !dbg !916, !tbaa !874
  %105 = load i8*, i8** @infile, align 8, !dbg !918, !tbaa !708
  %106 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %105) #27, !dbg !918
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %106) #27, !dbg !919
  call void @llvm.dbg.value(metadata i8 0, metadata !73, metadata !DIExpression()), !dbg !836
  br label %444, !dbg !920

107:                                              ; preds = %98, %99
  %108 = phi i32 [ 0, %98 ], [ %100, %99 ], !dbg !921
  %109 = phi i8 [ 1, %98 ], [ %87, %99 ], !dbg !836
  call void @llvm.dbg.value(metadata i8 %109, metadata !86, metadata !DIExpression()), !dbg !836
  %110 = call i32 @fstat(i32 %108, %struct.stat* nonnull %4) #27, !dbg !923
  %111 = icmp slt i32 %110, 0, !dbg !924
  br i1 %111, label %112, label %117, !dbg !925

112:                                              ; preds = %107
  %113 = tail call i32* @__errno_location() #30, !dbg !926
  %114 = load i32, i32* %113, align 4, !dbg !926, !tbaa !874
  %115 = load i8*, i8** @infile, align 8, !dbg !928, !tbaa !708
  %116 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %115) #27, !dbg !928
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %116) #27, !dbg !929
  call void @llvm.dbg.value(metadata i8 0, metadata !73, metadata !DIExpression()), !dbg !836
  br label %430, !dbg !930

117:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !876, metadata !DIExpression()), !dbg !931
  %118 = load i64, i64* %50, align 8, !dbg !933, !tbaa !884
  %119 = icmp ult i64 %118, 2305843009213693953, !dbg !933
  %120 = icmp sgt i64 %118, 131071, !dbg !933
  %121 = and i1 %120, %119, !dbg !933
  %122 = select i1 %121, i64 %118, i64 131072, !dbg !933
  call void @llvm.dbg.value(metadata i64 %122, metadata !69, metadata !DIExpression()), !dbg !836
  %123 = load i32, i32* @input_desc, align 4, !dbg !934, !tbaa !874
  call void @fdadvise(i32 %123, i64 0, i64 0, i32 2) #27, !dbg !935
  %124 = load i64, i64* %56, align 8
  %125 = icmp eq i64 %124, %57
  %126 = and i1 %63, %125, !dbg !936
  %127 = load i64, i64* %58, align 8
  %128 = icmp eq i64 %127, %59
  %129 = and i1 %126, %128, !dbg !936
  br i1 %129, label %130, label %139, !dbg !936

130:                                              ; preds = %117
  %131 = load i32, i32* @input_desc, align 4, !dbg !938, !tbaa !874
  %132 = call i64 @lseek(i32 %131, i64 0, i32 1) #27, !dbg !939
  %133 = load i64, i64* %66, align 8, !dbg !940, !tbaa !941
  %134 = icmp slt i64 %132, %133, !dbg !942
  br i1 %134, label %135, label %139, !dbg !943

135:                                              ; preds = %130
  %136 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 5) #27, !dbg !944
  %137 = load i8*, i8** @infile, align 8, !dbg !946, !tbaa !708
  %138 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %137) #27, !dbg !946
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %136, i8* %138) #27, !dbg !947
  call void @llvm.dbg.value(metadata i8 0, metadata !73, metadata !DIExpression()), !dbg !836
  br label %430, !dbg !948

139:                                              ; preds = %130, %117
  br i1 %71, label %140, label %166, !dbg !949

140:                                              ; preds = %139
  %141 = icmp ugt i64 %122, %55, !dbg !951
  %142 = select i1 %141, i64 %122, i64 %55, !dbg !951
  call void @llvm.dbg.value(metadata i64 %142, metadata !69, metadata !DIExpression()), !dbg !836
  %143 = add i64 %81, %142, !dbg !953
  %144 = call noalias i8* @xmalloc(i64 %143) #27, !dbg !954
  call void @llvm.dbg.value(metadata i8* %144, metadata !71, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8* %144, metadata !955, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i64 %6, metadata !962, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i8* %144, metadata !963, metadata !DIExpression()), !dbg !965
  %145 = getelementptr inbounds i8, i8* %144, i64 %6, !dbg !967
  %146 = getelementptr inbounds i8, i8* %145, i64 -1, !dbg !968
  call void @llvm.dbg.value(metadata i8* %146, metadata !964, metadata !DIExpression()), !dbg !965
  %147 = ptrtoint i8* %146 to i64, !dbg !969
  %148 = urem i64 %147, %6, !dbg !970
  %149 = sub i64 0, %148, !dbg !971
  %150 = getelementptr inbounds i8, i8* %146, i64 %149, !dbg !971
  call void @llvm.dbg.value(metadata i8* %150, metadata !972, metadata !DIExpression()) #27, !dbg !982
  call void @llvm.dbg.value(metadata i64 %142, metadata !977, metadata !DIExpression()) #27, !dbg !982
  br label %151, !dbg !984

151:                                              ; preds = %159, %140
  %152 = load i32, i32* @input_desc, align 4, !dbg !985, !tbaa !874
  %153 = call i64 @safe_read(i32 %152, i8* nonnull %150, i64 %142) #27, !dbg !986
  call void @llvm.dbg.value(metadata i64 %153, metadata !978, metadata !DIExpression()) #27, !dbg !982
  switch i64 %153, label %159 [
    i64 -1, label %154
    i64 0, label %426
  ], !dbg !987

154:                                              ; preds = %151
  %155 = tail call i32* @__errno_location() #30, !dbg !988
  %156 = load i32, i32* %155, align 4, !dbg !988, !tbaa !874
  %157 = load i8*, i8** @infile, align 8, !dbg !991, !tbaa !708
  %158 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %157) #27, !dbg !991
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %158) #27, !dbg !992
  br label %426, !dbg !993

159:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i64 %153, metadata !979, metadata !DIExpression()) #27, !dbg !994
  %160 = call i64 @full_write(i32 1, i8* nonnull %150, i64 %153) #27, !dbg !995
  %161 = icmp eq i64 %160, %153, !dbg !997
  br i1 %161, label %151, label %162, !dbg !998, !llvm.loop !999

162:                                              ; preds = %159
  %163 = tail call i32* @__errno_location() #30, !dbg !1001
  %164 = load i32, i32* %163, align 4, !dbg !1001, !tbaa !874
  %165 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #27, !dbg !1001
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %164, i8* %165) #27, !dbg !1001
  unreachable, !dbg !1001

166:                                              ; preds = %139
  %167 = add i64 %122, %6, !dbg !1002
  %168 = call noalias i8* @xmalloc(i64 %167) #27, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %168, metadata !71, metadata !DIExpression()), !dbg !836
  %169 = shl i64 %122, 2, !dbg !1005
  %170 = add i64 %73, %169, !dbg !1006
  %171 = call noalias i8* @xmalloc(i64 %170) #27, !dbg !1007
  call void @llvm.dbg.value(metadata i8* %171, metadata !72, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8* %168, metadata !955, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 %6, metadata !962, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8* %168, metadata !963, metadata !DIExpression()), !dbg !1008
  %172 = getelementptr inbounds i8, i8* %168, i64 %6, !dbg !1010
  %173 = getelementptr inbounds i8, i8* %172, i64 -1, !dbg !1011
  call void @llvm.dbg.value(metadata i8* %173, metadata !964, metadata !DIExpression()), !dbg !1008
  %174 = ptrtoint i8* %173 to i64, !dbg !1012
  %175 = urem i64 %174, %6, !dbg !1013
  %176 = sub i64 0, %175, !dbg !1014
  %177 = getelementptr inbounds i8, i8* %173, i64 %176, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %171, metadata !955, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %6, metadata !962, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i8* %171, metadata !963, metadata !DIExpression()), !dbg !1015
  %178 = getelementptr inbounds i8, i8* %171, i64 %6, !dbg !1017
  %179 = getelementptr inbounds i8, i8* %178, i64 -1, !dbg !1018
  call void @llvm.dbg.value(metadata i8* %179, metadata !964, metadata !DIExpression()), !dbg !1015
  %180 = ptrtoint i8* %179 to i64, !dbg !1019
  %181 = urem i64 %180, %6, !dbg !1020
  %182 = sub i64 0, %181, !dbg !1021
  %183 = getelementptr inbounds i8, i8* %179, i64 %182, !dbg !1021
  call void @llvm.dbg.value(metadata i8* %177, metadata !1022, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %122, metadata !1027, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %183, metadata !1028, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %55, metadata !1029, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %74, metadata !1030, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %75, metadata !1031, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %64, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %76, metadata !1033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %77, metadata !1034, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %78, metadata !1035, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !1054
  %184 = load i32, i32* @newlines2, align 4, !dbg !1056, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %184, metadata !1042, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8 1, metadata !1043, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %177, metadata !1039, metadata !DIExpression()) #27, !dbg !1054
  %185 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %185, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %183, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %186 = getelementptr inbounds i8, i8* %183, i64 %55
  %187 = ptrtoint i8* %183 to i64
  br label %188, !dbg !1058

188:                                              ; preds = %328, %166
  %189 = phi i8* [ %183, %166 ], [ %329, %328 ], !dbg !1059
  %190 = phi i8* [ %185, %166 ], [ %330, %328 ], !dbg !1054
  %191 = phi i8* [ %177, %166 ], [ %321, %328 ], !dbg !1060
  %192 = phi i32 [ %184, %166 ], [ %331, %328 ], !dbg !1061
  %193 = phi i8 [ 1, %166 ], [ %324, %328 ], !dbg !1054
  call void @llvm.dbg.value(metadata i8 %193, metadata !1043, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %192, metadata !1042, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %191, metadata !1039, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %190, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %189, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %194 = icmp ugt i8* %186, %189, !dbg !1062
  br i1 %194, label %212, label %195, !dbg !1063

195:                                              ; preds = %188
  %196 = ptrtoint i8* %189 to i64
  br label %197, !dbg !1064

197:                                              ; preds = %205, %195
  %198 = phi i8* [ %206, %205 ], [ %183, %195 ], !dbg !1065
  call void @llvm.dbg.value(metadata i8* %198, metadata !1044, metadata !DIExpression()) #27, !dbg !1065
  %199 = call i64 @full_write(i32 1, i8* %198, i64 %55) #27, !dbg !1066
  %200 = icmp eq i64 %199, %55, !dbg !1069
  br i1 %200, label %205, label %201, !dbg !1070

201:                                              ; preds = %197
  %202 = tail call i32* @__errno_location() #30, !dbg !1071
  %203 = load i32, i32* %202, align 4, !dbg !1071, !tbaa !874
  %204 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #27, !dbg !1071
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %203, i8* %204) #27, !dbg !1071
  unreachable, !dbg !1071

205:                                              ; preds = %197
  %206 = getelementptr inbounds i8, i8* %198, i64 %55, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %206, metadata !1044, metadata !DIExpression()) #27, !dbg !1065
  call void @llvm.dbg.value(metadata i8* %189, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %207 = ptrtoint i8* %206 to i64, !dbg !1073
  %208 = sub i64 %196, %207, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %208, metadata !1049, metadata !DIExpression()) #27, !dbg !1065
  %209 = icmp ult i64 %208, %55, !dbg !1074
  br i1 %209, label %210, label %197, !dbg !1075, !llvm.loop !1076

210:                                              ; preds = %205
  call void @llvm.dbg.value(metadata i8* %183, metadata !1078, metadata !DIExpression()) #27, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %206, metadata !1084, metadata !DIExpression()) #27, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %208, metadata !1085, metadata !DIExpression()) #27, !dbg !1086
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %183, i8* nonnull align 1 %206, i64 %208, i1 false) #27, !dbg !1088
  %211 = getelementptr inbounds i8, i8* %183, i64 %208, !dbg !1089
  call void @llvm.dbg.value(metadata i8* %211, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  br label %212, !dbg !1090

212:                                              ; preds = %210, %188
  %213 = phi i8* [ %189, %188 ], [ %211, %210 ], !dbg !1054
  %214 = icmp ugt i8* %190, %191, !dbg !1091
  br i1 %214, label %215, label %277, !dbg !1092

215:                                              ; preds = %212
  call void @llvm.dbg.value(metadata i8 0, metadata !1050, metadata !DIExpression()) #27, !dbg !1093
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %80) #27, !dbg !1094
  call void @llvm.dbg.value(metadata i32 0, metadata !1053, metadata !DIExpression()) #27, !dbg !1093
  store i32 0, i32* %3, align 4, !dbg !1095, !tbaa !874
  %216 = and i8 %193, 1, !dbg !1096
  %217 = icmp eq i8 %216, 0, !dbg !1096
  br i1 %217, label %233, label %218, !dbg !1098

218:                                              ; preds = %215
  %219 = load i32, i32* @input_desc, align 4, !dbg !1099, !tbaa !874
  call void @llvm.dbg.value(metadata i32* %3, metadata !1053, metadata !DIExpression(DW_OP_deref)) #27, !dbg !1093
  %220 = call i32 (i32, i64, ...) @ioctl(i32 %219, i64 21531, i32* nonnull %3) #27, !dbg !1100
  %221 = icmp slt i32 %220, 0, !dbg !1101
  br i1 %221, label %222, label %229, !dbg !1102

222:                                              ; preds = %218
  %223 = tail call i32* @__errno_location() #30, !dbg !1103
  %224 = load i32, i32* %223, align 4, !dbg !1103, !tbaa !874
  switch i32 %224, label %225 [
    i32 95, label %229
    i32 25, label %229
    i32 22, label %229
    i32 19, label %229
    i32 38, label %229
  ], !dbg !1106

225:                                              ; preds = %222
  %226 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 5) #27, !dbg !1107
  %227 = load i8*, i8** @infile, align 8, !dbg !1109, !tbaa !708
  %228 = call i8* @quotearg_style(i32 4, i8* %227) #27, !dbg !1109
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %224, i8* %226, i8* %228) #27, !dbg !1110
  br label %424, !dbg !1111

229:                                              ; preds = %222, %222, %222, %222, %222, %218
  %230 = phi i8 [ 0, %222 ], [ 0, %222 ], [ 0, %222 ], [ 0, %222 ], [ 0, %222 ], [ %193, %218 ]
  %231 = load i32, i32* %3, align 4, !dbg !1112, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %230, metadata !1043, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %231, metadata !1053, metadata !DIExpression()) #27, !dbg !1093
  %232 = icmp eq i32 %231, 0, !dbg !1114
  call void @llvm.dbg.value(metadata i8 undef, metadata !1050, metadata !DIExpression()) #27, !dbg !1093
  br i1 %232, label %233, label %245, !dbg !1115

233:                                              ; preds = %229, %215
  %234 = phi i8 [ %230, %229 ], [ %193, %215 ]
  call void @llvm.dbg.value(metadata i8* %183, metadata !1116, metadata !DIExpression()) #27, !dbg !1123
  call void @llvm.dbg.value(metadata i8** undef, metadata !1121, metadata !DIExpression()) #27, !dbg !1123
  %235 = ptrtoint i8* %213 to i64, !dbg !1126
  %236 = sub i64 %235, %187, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %236, metadata !1122, metadata !DIExpression()) #27, !dbg !1123
  %237 = icmp eq i64 %236, 0, !dbg !1127
  br i1 %237, label %245, label %238, !dbg !1129

238:                                              ; preds = %233
  %239 = call i64 @full_write(i32 1, i8* nonnull %183, i64 %236) #27, !dbg !1130
  %240 = icmp eq i64 %239, %236, !dbg !1133
  br i1 %240, label %245, label %241, !dbg !1134

241:                                              ; preds = %238
  %242 = tail call i32* @__errno_location() #30, !dbg !1135
  %243 = load i32, i32* %242, align 4, !dbg !1135, !tbaa !874
  %244 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #27, !dbg !1135
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %243, i8* %244) #27, !dbg !1135
  unreachable, !dbg !1135

245:                                              ; preds = %238, %233, %229
  %246 = phi i8 [ %230, %229 ], [ %234, %238 ], [ %234, %233 ]
  %247 = phi i8* [ %213, %229 ], [ %183, %238 ], [ %213, %233 ], !dbg !1059
  %248 = load i32, i32* @input_desc, align 4, !dbg !1136, !tbaa !874
  %249 = call i64 @safe_read(i32 %248, i8* nonnull %177, i64 %122) #27, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %249, metadata !1041, metadata !DIExpression()) #27, !dbg !1054
  switch i64 %249, label %275 [
    i64 -1, label %250
    i64 0, label %264
  ], !dbg !1138

250:                                              ; preds = %245
  %251 = tail call i32* @__errno_location() #30, !dbg !1139
  %252 = load i32, i32* %251, align 4, !dbg !1139, !tbaa !874
  %253 = load i8*, i8** @infile, align 8, !dbg !1142, !tbaa !708
  %254 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %253) #27, !dbg !1142
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %252, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %254) #27, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %183, metadata !1116, metadata !DIExpression()) #27, !dbg !1144
  call void @llvm.dbg.value(metadata i8** undef, metadata !1121, metadata !DIExpression()) #27, !dbg !1144
  %255 = ptrtoint i8* %247 to i64, !dbg !1146
  %256 = sub i64 %255, %187, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %256, metadata !1122, metadata !DIExpression()) #27, !dbg !1144
  %257 = icmp eq i64 %256, 0, !dbg !1147
  br i1 %257, label %424, label %258, !dbg !1148

258:                                              ; preds = %250
  %259 = call i64 @full_write(i32 1, i8* nonnull %183, i64 %256) #27, !dbg !1149
  %260 = icmp eq i64 %259, %256, !dbg !1150
  br i1 %260, label %424, label %261, !dbg !1151

261:                                              ; preds = %258
  %262 = load i32, i32* %251, align 4, !dbg !1152, !tbaa !874
  %263 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #27, !dbg !1152
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %262, i8* %263) #27, !dbg !1152
  unreachable, !dbg !1152

264:                                              ; preds = %245
  call void @llvm.dbg.value(metadata i8* %183, metadata !1116, metadata !DIExpression()) #27, !dbg !1153
  call void @llvm.dbg.value(metadata i8** undef, metadata !1121, metadata !DIExpression()) #27, !dbg !1153
  %265 = ptrtoint i8* %247 to i64, !dbg !1157
  %266 = sub i64 %265, %187, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %266, metadata !1122, metadata !DIExpression()) #27, !dbg !1153
  %267 = icmp eq i64 %266, 0, !dbg !1158
  br i1 %267, label %424, label %268, !dbg !1159

268:                                              ; preds = %264
  %269 = call i64 @full_write(i32 1, i8* nonnull %183, i64 %266) #27, !dbg !1160
  %270 = icmp eq i64 %269, %266, !dbg !1161
  br i1 %270, label %424, label %271, !dbg !1162

271:                                              ; preds = %268
  %272 = tail call i32* @__errno_location() #30, !dbg !1163
  %273 = load i32, i32* %272, align 4, !dbg !1163, !tbaa !874
  %274 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #27, !dbg !1163
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %273, i8* %274) #27, !dbg !1163
  unreachable, !dbg !1163

275:                                              ; preds = %245
  call void @llvm.dbg.value(metadata i8* %177, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  %276 = getelementptr inbounds i8, i8* %177, i64 %249, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %276, metadata !1039, metadata !DIExpression()) #27, !dbg !1054
  store i8 10, i8* %276, align 1, !dbg !1165, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %246, metadata !1043, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80) #27, !dbg !1167
  br label %319

277:                                              ; preds = %212
  %278 = add nsw i32 %192, 1, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %278, metadata !1042, metadata !DIExpression()) #27, !dbg !1054
  %279 = icmp sgt i32 %192, -1, !dbg !1171
  br i1 %279, label %280, label %311, !dbg !1172

280:                                              ; preds = %277
  %281 = icmp eq i32 %192, 0, !dbg !1173
  %282 = or i1 %78, %281, !dbg !1176
  %283 = select i1 %281, i32 1, i32 2, !dbg !1176
  br i1 %282, label %284, label %319, !dbg !1176

284:                                              ; preds = %280
  call void @llvm.dbg.value(metadata i32 %283, metadata !1042, metadata !DIExpression()) #27, !dbg !1054
  br i1 %79, label %285, label %311, !dbg !1177

285:                                              ; preds = %284
  %286 = load i8*, i8** @line_num_start, align 8
  br label %287, !dbg !1179

287:                                              ; preds = %292, %285
  %288 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %285 ], [ %293, %292 ], !dbg !1185
  call void @llvm.dbg.value(metadata i8* %288, metadata !1182, metadata !DIExpression()) #27, !dbg !1185
  %289 = load i8, i8* %288, align 1, !dbg !1186, !tbaa !1166
  %290 = add i8 %289, 1, !dbg !1186
  store i8 %290, i8* %288, align 1, !dbg !1186, !tbaa !1166
  %291 = icmp slt i8 %289, 57, !dbg !1189
  br i1 %291, label %306, label %292, !dbg !1190

292:                                              ; preds = %287
  %293 = getelementptr inbounds i8, i8* %288, i64 -1, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %293, metadata !1182, metadata !DIExpression()) #27, !dbg !1185
  store i8 48, i8* %288, align 1, !dbg !1192, !tbaa !1166
  %294 = icmp ult i8* %293, %286, !dbg !1193
  br i1 %294, label %295, label %287, !dbg !1194, !llvm.loop !1195

295:                                              ; preds = %292
  %296 = icmp ugt i8* %286, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1197
  br i1 %296, label %297, label %299, !dbg !1199

297:                                              ; preds = %295
  %298 = getelementptr inbounds i8, i8* %286, i64 -1, !dbg !1200
  store i8* %298, i8** @line_num_start, align 8, !dbg !1200, !tbaa !708
  store i8 49, i8* %298, align 1, !dbg !1201, !tbaa !1166
  br label %300, !dbg !1202

299:                                              ; preds = %295
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1203, !tbaa !1166
  br label %300

300:                                              ; preds = %299, %297
  %301 = phi i8* [ %286, %299 ], [ %298, %297 ], !dbg !1204
  %302 = load i8*, i8** @line_num_print, align 8, !dbg !1206, !tbaa !708
  %303 = icmp ult i8* %301, %302, !dbg !1207
  br i1 %303, label %304, label %308, !dbg !1208

304:                                              ; preds = %300
  %305 = getelementptr inbounds i8, i8* %302, i64 -1, !dbg !1209
  store i8* %305, i8** @line_num_print, align 8, !dbg !1209, !tbaa !708
  br label %308, !dbg !1210

306:                                              ; preds = %287
  %307 = load i8*, i8** @line_num_print, align 8, !dbg !1211, !tbaa !708
  br label %308, !dbg !1211

308:                                              ; preds = %306, %304, %300
  %309 = phi i8* [ %307, %306 ], [ %302, %300 ], [ %305, %304 ], !dbg !1211
  call void @llvm.dbg.value(metadata i8* %213, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %213, metadata !1212, metadata !DIExpression()) #27, !dbg !1220
  call void @llvm.dbg.value(metadata i8* %309, metadata !1219, metadata !DIExpression()) #27, !dbg !1220
  %310 = call i8* @stpcpy(i8* %213, i8* %309), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %310, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  br label %311, !dbg !1223

311:                                              ; preds = %308, %284, %277
  %312 = phi i8* [ %213, %284 ], [ %310, %308 ], [ %213, %277 ], !dbg !1054
  %313 = phi i32 [ %283, %284 ], [ %283, %308 ], [ %278, %277 ], !dbg !1224
  call void @llvm.dbg.value(metadata i32 %313, metadata !1042, metadata !DIExpression()) #27, !dbg !1054
  br i1 %77, label %316, label %314, !dbg !1225

314:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8* %312, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %315 = getelementptr inbounds i8, i8* %312, i64 1, !dbg !1226
  call void @llvm.dbg.value(metadata i8* %315, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 36, i8* %312, align 1, !dbg !1228, !tbaa !1166
  br label %316, !dbg !1229

316:                                              ; preds = %314, %311
  %317 = phi i8* [ %315, %314 ], [ %312, %311 ], !dbg !1054
  call void @llvm.dbg.value(metadata i8* %317, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %318 = getelementptr inbounds i8, i8* %317, i64 1, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %318, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 10, i8* %317, align 1, !dbg !1231, !tbaa !1166
  br label %319

319:                                              ; preds = %316, %280, %275
  %320 = phi i8* [ %247, %275 ], [ %318, %316 ], [ %213, %280 ], !dbg !1054
  %321 = phi i8* [ %276, %275 ], [ %191, %316 ], [ %191, %280 ], !dbg !1060
  %322 = phi i8* [ %177, %275 ], [ %190, %316 ], [ %190, %280 ]
  %323 = phi i32 [ %192, %275 ], [ %313, %316 ], [ 2, %280 ], !dbg !1054
  %324 = phi i8 [ %246, %275 ], [ %193, %316 ], [ %193, %280 ], !dbg !1054
  %325 = getelementptr inbounds i8, i8* %322, i64 1, !dbg !1232
  %326 = load i8, i8* %322, align 1, !dbg !1232, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %324, metadata !1043, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %323, metadata !1042, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8 %326, metadata !1036, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %321, metadata !1039, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %325, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  %327 = icmp eq i8 %326, 10, !dbg !1233
  br i1 %327, label %328, label %332, !dbg !1234

328:                                              ; preds = %397, %416, %319
  %329 = phi i8* [ %320, %319 ], [ %408, %416 ], [ %364, %397 ]
  %330 = phi i8* [ %325, %319 ], [ %409, %416 ], [ %365, %397 ]
  %331 = phi i32 [ %323, %319 ], [ -1, %416 ], [ -1, %397 ]
  br label %188, !dbg !1054, !llvm.loop !1235

332:                                              ; preds = %319
  %333 = icmp sgt i32 %323, -1, !dbg !1238
  %334 = and i1 %64, %333, !dbg !1240
  br i1 %334, label %335, label %361, !dbg !1240

335:                                              ; preds = %332
  %336 = load i8*, i8** @line_num_start, align 8
  br label %337, !dbg !1241

337:                                              ; preds = %342, %335
  %338 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 17), %335 ], [ %343, %342 ], !dbg !1244
  call void @llvm.dbg.value(metadata i8* %338, metadata !1182, metadata !DIExpression()) #27, !dbg !1244
  %339 = load i8, i8* %338, align 1, !dbg !1245, !tbaa !1166
  %340 = add i8 %339, 1, !dbg !1245
  store i8 %340, i8* %338, align 1, !dbg !1245, !tbaa !1166
  %341 = icmp slt i8 %339, 57, !dbg !1246
  br i1 %341, label %356, label %342, !dbg !1247

342:                                              ; preds = %337
  %343 = getelementptr inbounds i8, i8* %338, i64 -1, !dbg !1248
  call void @llvm.dbg.value(metadata i8* %343, metadata !1182, metadata !DIExpression()) #27, !dbg !1244
  store i8 48, i8* %338, align 1, !dbg !1249, !tbaa !1166
  %344 = icmp ult i8* %343, %336, !dbg !1250
  br i1 %344, label %345, label %337, !dbg !1251, !llvm.loop !1252

345:                                              ; preds = %342
  %346 = icmp ugt i8* %336, getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), !dbg !1254
  br i1 %346, label %347, label %349, !dbg !1255

347:                                              ; preds = %345
  %348 = getelementptr inbounds i8, i8* %336, i64 -1, !dbg !1256
  store i8* %348, i8** @line_num_start, align 8, !dbg !1256, !tbaa !708
  store i8 49, i8* %348, align 1, !dbg !1257, !tbaa !1166
  br label %350, !dbg !1258

349:                                              ; preds = %345
  store i8 62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @line_buf, i64 0, i64 0), align 16, !dbg !1259, !tbaa !1166
  br label %350

350:                                              ; preds = %349, %347
  %351 = phi i8* [ %336, %349 ], [ %348, %347 ], !dbg !1260
  %352 = load i8*, i8** @line_num_print, align 8, !dbg !1261, !tbaa !708
  %353 = icmp ult i8* %351, %352, !dbg !1262
  br i1 %353, label %354, label %358, !dbg !1263

354:                                              ; preds = %350
  %355 = getelementptr inbounds i8, i8* %352, i64 -1, !dbg !1264
  store i8* %355, i8** @line_num_print, align 8, !dbg !1264, !tbaa !708
  br label %358, !dbg !1265

356:                                              ; preds = %337
  %357 = load i8*, i8** @line_num_print, align 8, !dbg !1266, !tbaa !708
  br label %358, !dbg !1266

358:                                              ; preds = %356, %354, %350
  %359 = phi i8* [ %357, %356 ], [ %352, %350 ], [ %355, %354 ], !dbg !1266
  call void @llvm.dbg.value(metadata i8* %320, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %320, metadata !1212, metadata !DIExpression()) #27, !dbg !1267
  call void @llvm.dbg.value(metadata i8* %359, metadata !1219, metadata !DIExpression()) #27, !dbg !1267
  %360 = call i8* @stpcpy(i8* %320, i8* %359), !dbg !1269
  call void @llvm.dbg.value(metadata i8* %360, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  br label %361, !dbg !1270

361:                                              ; preds = %358, %332
  %362 = phi i8* [ %320, %332 ], [ %360, %358 ], !dbg !1054
  br i1 %74, label %407, label %363, !dbg !1271

363:                                              ; preds = %361, %403
  %364 = phi i8* [ %404, %403 ], [ %362, %361 ], !dbg !1054
  %365 = phi i8* [ %405, %403 ], [ %325, %361 ], !dbg !1272
  %366 = phi i8 [ %406, %403 ], [ %326, %361 ], !dbg !1272
  call void @llvm.dbg.value(metadata i8 %366, metadata !1036, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %365, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  %367 = icmp ugt i8 %366, 31, !dbg !1273
  br i1 %367, label %368, label %392, !dbg !1278

368:                                              ; preds = %363
  %369 = icmp ult i8 %366, 127, !dbg !1279
  br i1 %369, label %370, label %372, !dbg !1282

370:                                              ; preds = %368
  call void @llvm.dbg.value(metadata i8* %364, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %371 = getelementptr inbounds i8, i8* %364, i64 1, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %371, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 %366, i8* %364, align 1, !dbg !1284, !tbaa !1166
  br label %403, !dbg !1285

372:                                              ; preds = %368
  %373 = icmp eq i8 %366, 127, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %364, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %364, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %374 = getelementptr inbounds i8, i8* %364, i64 1, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %374, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %374, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  br i1 %373, label %375, label %377, !dbg !1289

375:                                              ; preds = %372
  store i8 94, i8* %364, align 1, !dbg !1290, !tbaa !1166
  %376 = getelementptr inbounds i8, i8* %364, i64 2, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %376, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 63, i8* %374, align 1, !dbg !1293, !tbaa !1166
  br label %403, !dbg !1294

377:                                              ; preds = %372
  store i8 77, i8* %364, align 1, !dbg !1295, !tbaa !1166
  %378 = getelementptr inbounds i8, i8* %364, i64 2, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %378, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 45, i8* %374, align 1, !dbg !1298, !tbaa !1166
  %379 = icmp ugt i8 %366, -97, !dbg !1299
  br i1 %379, label %380, label %388, !dbg !1301

380:                                              ; preds = %377
  %381 = icmp eq i8 %366, -1, !dbg !1302
  br i1 %381, label %385, label %382, !dbg !1305

382:                                              ; preds = %380
  %383 = xor i8 %366, -128, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %378, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %384 = getelementptr inbounds i8, i8* %364, i64 3, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %384, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 %383, i8* %378, align 1, !dbg !1308, !tbaa !1166
  br label %403, !dbg !1309

385:                                              ; preds = %380
  call void @llvm.dbg.value(metadata i8* %378, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %386 = getelementptr inbounds i8, i8* %364, i64 3, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %386, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 94, i8* %378, align 1, !dbg !1312, !tbaa !1166
  %387 = getelementptr inbounds i8, i8* %364, i64 4, !dbg !1313
  call void @llvm.dbg.value(metadata i8* %387, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 63, i8* %386, align 1, !dbg !1314, !tbaa !1166
  br label %403

388:                                              ; preds = %377
  call void @llvm.dbg.value(metadata i8* %378, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %389 = getelementptr inbounds i8, i8* %364, i64 3, !dbg !1315
  call void @llvm.dbg.value(metadata i8* %389, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 94, i8* %378, align 1, !dbg !1317, !tbaa !1166
  %390 = add i8 %366, -64, !dbg !1318
  %391 = getelementptr inbounds i8, i8* %364, i64 4, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %391, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 %390, i8* %389, align 1, !dbg !1320, !tbaa !1166
  br label %403

392:                                              ; preds = %363
  %393 = icmp ne i8 %366, 9, !dbg !1321
  %394 = or i1 %75, %393, !dbg !1323
  br i1 %394, label %397, label %395, !dbg !1323

395:                                              ; preds = %392
  call void @llvm.dbg.value(metadata i8* %364, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %396 = getelementptr inbounds i8, i8* %364, i64 1, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %396, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 9, i8* %364, align 1, !dbg !1325, !tbaa !1166
  br label %403, !dbg !1326

397:                                              ; preds = %392
  %398 = icmp eq i8 %366, 10, !dbg !1327
  br i1 %398, label %328, label %399, !dbg !1329, !llvm.loop !1330

399:                                              ; preds = %397
  call void @llvm.dbg.value(metadata i8* %364, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %400 = getelementptr inbounds i8, i8* %364, i64 1, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %400, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 94, i8* %364, align 1, !dbg !1334, !tbaa !1166
  %401 = add nuw nsw i8 %366, 64, !dbg !1335
  %402 = getelementptr inbounds i8, i8* %364, i64 2, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %402, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 %401, i8* %400, align 1, !dbg !1337, !tbaa !1166
  br label %403

403:                                              ; preds = %399, %395, %388, %385, %382, %375, %370
  %404 = phi i8* [ %371, %370 ], [ %376, %375 ], [ %387, %385 ], [ %384, %382 ], [ %391, %388 ], [ %402, %399 ], [ %396, %395 ], !dbg !1338
  %405 = getelementptr inbounds i8, i8* %365, i64 1, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %405, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  %406 = load i8, i8* %365, align 1, !dbg !1340, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %406, metadata !1036, metadata !DIExpression()) #27, !dbg !1054
  br label %363, !dbg !1341, !llvm.loop !1342

407:                                              ; preds = %361, %420
  %408 = phi i8* [ %421, %420 ], [ %362, %361 ], !dbg !1054
  %409 = phi i8* [ %422, %420 ], [ %325, %361 ], !dbg !1272
  %410 = phi i8 [ %423, %420 ], [ %326, %361 ], !dbg !1272
  call void @llvm.dbg.value(metadata i8 %410, metadata !1036, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %409, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  %411 = icmp eq i8 %410, 9, !dbg !1344
  %412 = and i1 %75, %411, !dbg !1348
  br i1 %412, label %413, label %416, !dbg !1348

413:                                              ; preds = %407
  call void @llvm.dbg.value(metadata i8* %408, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %414 = getelementptr inbounds i8, i8* %408, i64 1, !dbg !1349
  call void @llvm.dbg.value(metadata i8* %414, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 94, i8* %408, align 1, !dbg !1351, !tbaa !1166
  %415 = getelementptr inbounds i8, i8* %408, i64 2, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %415, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 73, i8* %414, align 1, !dbg !1353, !tbaa !1166
  br label %420, !dbg !1354

416:                                              ; preds = %407
  %417 = icmp eq i8 %410, 10, !dbg !1355
  br i1 %417, label %328, label %418, !dbg !1357, !llvm.loop !1330

418:                                              ; preds = %416
  call void @llvm.dbg.value(metadata i8* %408, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  %419 = getelementptr inbounds i8, i8* %408, i64 1, !dbg !1358
  call void @llvm.dbg.value(metadata i8* %419, metadata !1040, metadata !DIExpression()) #27, !dbg !1054
  store i8 %410, i8* %408, align 1, !dbg !1359, !tbaa !1166
  br label %420

420:                                              ; preds = %418, %413
  %421 = phi i8* [ %419, %418 ], [ %415, %413 ], !dbg !1360
  %422 = getelementptr inbounds i8, i8* %409, i64 1, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %422, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  %423 = load i8, i8* %409, align 1, !dbg !1362, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %423, metadata !1036, metadata !DIExpression()) #27, !dbg !1054
  br label %407, !dbg !1363, !llvm.loop !1364

424:                                              ; preds = %264, %268, %250, %258, %225
  %425 = phi i8 [ 0, %225 ], [ 0, %258 ], [ 0, %250 ], [ 1, %268 ], [ 1, %264 ]
  store i32 %192, i32* @newlines2, align 4, !dbg !1093, !tbaa !874
  call void @llvm.dbg.value(metadata i8 %246, metadata !1043, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %177, metadata !1038, metadata !DIExpression()) #27, !dbg !1054
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %80) #27, !dbg !1167
  call void @llvm.dbg.value(metadata i8 undef, metadata !73, metadata !DIExpression()), !dbg !836
  call void @free(i8* %171) #27, !dbg !1366
  br label %426

426:                                              ; preds = %151, %154, %424
  %427 = phi i8 [ %425, %424 ], [ 0, %154 ], [ 1, %151 ]
  %428 = phi i8* [ %168, %424 ], [ %144, %154 ], [ %144, %151 ], !dbg !1367
  %429 = and i8 %86, %427, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %428, metadata !71, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 %429, metadata !73, metadata !DIExpression()), !dbg !836
  call void @free(i8* %428) #27, !dbg !1368
  br label %430, !dbg !1368

430:                                              ; preds = %426, %135, %112
  %431 = phi i8 [ 0, %112 ], [ 0, %135 ], [ %429, %426 ], !dbg !1369
  call void @llvm.dbg.value(metadata i8 %431, metadata !73, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.label(metadata !131), !dbg !1370
  %432 = load i8*, i8** @infile, align 8, !dbg !1371, !tbaa !708
  %433 = call i32 @strcmp(i8* nonnull dereferenceable(1) %432, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #28, !dbg !1371
  %434 = icmp eq i32 %433, 0, !dbg !1371
  br i1 %434, label %444, label %435, !dbg !1373

435:                                              ; preds = %430
  %436 = load i32, i32* @input_desc, align 4, !dbg !1374, !tbaa !874
  %437 = call i32 @close(i32 %436) #27, !dbg !1375
  %438 = icmp slt i32 %437, 0, !dbg !1376
  br i1 %438, label %439, label %444, !dbg !1377

439:                                              ; preds = %435
  %440 = tail call i32* @__errno_location() #30, !dbg !1378
  %441 = load i32, i32* %440, align 4, !dbg !1378, !tbaa !874
  %442 = load i8*, i8** @infile, align 8, !dbg !1380, !tbaa !708
  %443 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %442) #27, !dbg !1380
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %441, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %443) #27, !dbg !1381
  call void @llvm.dbg.value(metadata i8 0, metadata !73, metadata !DIExpression()), !dbg !836
  br label %444, !dbg !1382

444:                                              ; preds = %430, %435, %439, %102
  %445 = phi i8 [ %431, %430 ], [ 0, %439 ], [ %431, %435 ], [ 0, %102 ], !dbg !1369
  %446 = phi i8 [ %109, %430 ], [ %109, %439 ], [ %109, %435 ], [ %87, %102 ], !dbg !836
  call void @llvm.dbg.value(metadata i8 %446, metadata !86, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8 %445, metadata !73, metadata !DIExpression()), !dbg !836
  %447 = add nsw i64 %85, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %447, metadata !76, metadata !DIExpression()), !dbg !836
  %448 = icmp slt i64 %447, %83, !dbg !1384
  br i1 %448, label %84, label %449, !dbg !1385, !llvm.loop !1386

449:                                              ; preds = %444
  %450 = and i8 %446, 1, !dbg !1388
  %451 = icmp eq i8 %450, 0, !dbg !1388
  br i1 %451, label %459, label %452, !dbg !1390

452:                                              ; preds = %449
  %453 = call i32 @close(i32 0) #27, !dbg !1391
  %454 = icmp slt i32 %453, 0, !dbg !1392
  br i1 %454, label %455, label %459, !dbg !1393

455:                                              ; preds = %452
  %456 = tail call i32* @__errno_location() #30, !dbg !1394
  %457 = load i32, i32* %456, align 4, !dbg !1394, !tbaa !874
  %458 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #27, !dbg !1394
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %457, i8* %458) #27, !dbg !1394
  unreachable, !dbg !1394

459:                                              ; preds = %452, %449
  %460 = xor i8 %445, 1, !dbg !1395
  %461 = zext i8 %460 to i32, !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %7) #27, !dbg !1396
  ret i32 %461, !dbg !1396
}

; Function Attrs: nounwind readnone willreturn
declare !dbg !1397 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1401 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1404 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1407 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1412 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1418 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !1423 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !1427 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !1431 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare !dbg !1434 i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @stpcpy(i8* noalias writeonly, i8* noalias nocapture readonly) #11

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1438 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !1441 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i8* %0, i8** @file_name, align 8, !dbg !1445, !tbaa !708
  ret void, !dbg !1446
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !1447 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1451, metadata !DIExpression()), !dbg !1452
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1453, !tbaa !1454
  ret void, !dbg !1456
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1457 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1462, !tbaa !708
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1463
  %3 = icmp eq i32 %2, 0, !dbg !1464
  br i1 %3, label %22, label %4, !dbg !1465

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1466, !tbaa !1454, !range !1467
  %6 = icmp eq i8 %5, 0, !dbg !1466
  br i1 %6, label %11, label %7, !dbg !1468

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #30, !dbg !1469
  %9 = load i32, i32* %8, align 4, !dbg !1469, !tbaa !874
  %10 = icmp eq i32 %9, 32, !dbg !1470
  br i1 %10, label %22, label %11, !dbg !1471

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #27, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %12, metadata !1459, metadata !DIExpression()), !dbg !1473
  %13 = load i8*, i8** @file_name, align 8, !dbg !1474, !tbaa !708
  %14 = icmp eq i8* %13, null, !dbg !1474
  %15 = tail call i32* @__errno_location() #30, !dbg !1476
  %16 = load i32, i32* %15, align 4, !dbg !1476, !tbaa !874
  br i1 %14, label %19, label %17, !dbg !1477

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1478
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.52, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1479
  br label %20, !dbg !1479

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.53, i64 0, i64 0), i8* %12) #27, !dbg !1480
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1481, !tbaa !874
  tail call void @_exit(i32 %21) #29, !dbg !1482
  unreachable, !dbg !1482

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1483, !tbaa !708
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1485
  %25 = icmp eq i32 %24, 0, !dbg !1486
  br i1 %25, label %28, label %26, !dbg !1487

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1488, !tbaa !874
  tail call void @_exit(i32 %27) #29, !dbg !1489
  unreachable, !dbg !1489

28:                                               ; preds = %22
  ret void, !dbg !1490
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1491 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1497, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %1, metadata !1498, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %2, metadata !1499, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %3, metadata !1500, metadata !DIExpression()), !dbg !1503
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #27, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %5, metadata !1501, metadata !DIExpression()), !dbg !1505
  ret void, !dbg !1506
}

; Function Attrs: nounwind
declare !dbg !1507 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1510 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1549, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %1, metadata !1550, metadata !DIExpression()), !dbg !1551
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1552
  br i1 %3, label %7, label %4, !dbg !1554

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %5, metadata !1497, metadata !DIExpression()) #27, !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1498, metadata !DIExpression()) #27, !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()) #27, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %1, metadata !1500, metadata !DIExpression()) #27, !dbg !1556
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #27, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %6, metadata !1501, metadata !DIExpression()) #27, !dbg !1559
  br label %7, !dbg !1560

7:                                                ; preds = %4, %2
  ret void, !dbg !1561
}

; Function Attrs: nofree nounwind
declare !dbg !1562 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_write(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !1565 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1569, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %1, metadata !1570, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i64 %2, metadata !1571, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i64 0, metadata !1572, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %1, metadata !1573, metadata !DIExpression()), !dbg !1576
  %4 = icmp eq i64 %2, 0, !dbg !1577
  br i1 %4, label %17, label %5, !dbg !1578

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %15, %12 ], [ %2, %3 ]
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ]
  %8 = phi i64 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1571, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i8* %7, metadata !1573, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.value(metadata i64 %8, metadata !1572, metadata !DIExpression()), !dbg !1576
  %9 = tail call i64 @safe_write(i32 %0, i8* %7, i64 %6) #27, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %9, metadata !1574, metadata !DIExpression()), !dbg !1580
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !1581

10:                                               ; preds = %5
  %11 = tail call i32* @__errno_location() #30, !dbg !1582
  store i32 28, i32* %11, align 4, !dbg !1585, !tbaa !874
  br label %17, !dbg !1586

12:                                               ; preds = %5
  %13 = add i64 %9, %8, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %13, metadata !1572, metadata !DIExpression()), !dbg !1576
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %14, metadata !1573, metadata !DIExpression()), !dbg !1576
  %15 = sub i64 %6, %9, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %15, metadata !1571, metadata !DIExpression()), !dbg !1576
  %16 = icmp eq i64 %15, 0, !dbg !1577
  br i1 %16, label %17, label %5, !dbg !1578

17:                                               ; preds = %12, %5, %3, %10
  %18 = phi i64 [ %8, %10 ], [ 0, %3 ], [ %13, %12 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !1572, metadata !DIExpression()), !dbg !1576
  ret i64 %18, !dbg !1590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1591 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1593, metadata !DIExpression()), !dbg !1596
  %2 = icmp eq i8* %0, null, !dbg !1597
  br i1 %2, label %3, label %6, !dbg !1599

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1600, !tbaa !708
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !1602
  tail call void @abort() #29, !dbg !1603
  unreachable, !dbg !1603

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1604
  call void @llvm.dbg.value(metadata i8* %7, metadata !1594, metadata !DIExpression()), !dbg !1596
  %8 = icmp eq i8* %7, null, !dbg !1605
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1606
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1606
  call void @llvm.dbg.value(metadata i8* %10, metadata !1595, metadata !DIExpression()), !dbg !1596
  %11 = ptrtoint i8* %10 to i64, !dbg !1607
  %12 = ptrtoint i8* %0 to i64, !dbg !1607
  %13 = sub i64 %11, %12, !dbg !1607
  %14 = icmp sgt i64 %13, 6, !dbg !1609
  br i1 %14, label %15, label %24, !dbg !1610

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1611
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #28, !dbg !1612
  %18 = icmp eq i32 %17, 0, !dbg !1613
  br i1 %18, label %19, label %24, !dbg !1614

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1593, metadata !DIExpression()), !dbg !1596
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #28, !dbg !1615
  %21 = icmp eq i32 %20, 0, !dbg !1618
  br i1 %21, label %22, label %24, !dbg !1619

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1620
  call void @llvm.dbg.value(metadata i8* %23, metadata !1593, metadata !DIExpression()), !dbg !1596
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1622, !tbaa !708
  br label %24, !dbg !1623

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1593, metadata !DIExpression()), !dbg !1596
  store i8* %25, i8** @program_name, align 8, !dbg !1624, !tbaa !708
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1625, !tbaa !708
  ret void, !dbg !1626
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1627 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1632, metadata !DIExpression()), !dbg !1635
  %2 = tail call i32* @__errno_location() #30, !dbg !1636
  %3 = load i32, i32* %2, align 4, !dbg !1636, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %3, metadata !1633, metadata !DIExpression()), !dbg !1635
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1637
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1637
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1637
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1638
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1638
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1634, metadata !DIExpression()), !dbg !1635
  store i32 %3, i32* %2, align 4, !dbg !1639, !tbaa !874
  ret %struct.quoting_options* %8, !dbg !1640
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !1641 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1647, metadata !DIExpression()), !dbg !1648
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1649
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1649
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1650
  %5 = load i32, i32* %4, align 8, !dbg !1650, !tbaa !1651
  ret i32 %5, !dbg !1653
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !1654 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1658, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %1, metadata !1659, metadata !DIExpression()), !dbg !1660
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1661
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1661
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1662
  store i32 %1, i32* %5, align 8, !dbg !1663, !tbaa !1651
  ret void, !dbg !1664
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1665 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1669, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %1, metadata !1670, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %2, metadata !1671, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 %1, metadata !1672, metadata !DIExpression()), !dbg !1677
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1678
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1678
  %6 = lshr i8 %1, 5, !dbg !1679
  %7 = zext i8 %6 to i64, !dbg !1679
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1680
  call void @llvm.dbg.value(metadata i32* %8, metadata !1673, metadata !DIExpression()), !dbg !1677
  %9 = and i8 %1, 31, !dbg !1681
  %10 = zext i8 %9 to i32, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %10, metadata !1675, metadata !DIExpression()), !dbg !1677
  %11 = load i32, i32* %8, align 4, !dbg !1682, !tbaa !874
  %12 = lshr i32 %11, %10, !dbg !1683
  %13 = and i32 %12, 1, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %13, metadata !1676, metadata !DIExpression()), !dbg !1677
  %14 = and i32 %2, 1, !dbg !1685
  %15 = xor i32 %13, %14, !dbg !1686
  %16 = shl i32 %15, %10, !dbg !1687
  %17 = xor i32 %16, %11, !dbg !1688
  store i32 %17, i32* %8, align 4, !dbg !1688, !tbaa !874
  ret i32 %13, !dbg !1689
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1690 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %1, metadata !1695, metadata !DIExpression()), !dbg !1697
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1698
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1694, metadata !DIExpression()), !dbg !1697
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1701
  %6 = load i32, i32* %5, align 4, !dbg !1701, !tbaa !1702
  call void @llvm.dbg.value(metadata i32 %6, metadata !1696, metadata !DIExpression()), !dbg !1697
  store i32 %1, i32* %5, align 4, !dbg !1703, !tbaa !1702
  ret i32 %6, !dbg !1704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1705 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1709, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8* %1, metadata !1710, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8* %2, metadata !1711, metadata !DIExpression()), !dbg !1712
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1713
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1715
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1709, metadata !DIExpression()), !dbg !1712
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1716
  store i32 10, i32* %6, align 8, !dbg !1717, !tbaa !1651
  %7 = icmp ne i8* %1, null, !dbg !1718
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1720
  br i1 %9, label %11, label %10, !dbg !1720

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1721
  unreachable, !dbg !1721

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1722
  store i8* %1, i8** %12, align 8, !dbg !1723, !tbaa !1724
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1725
  store i8* %2, i8** %13, align 8, !dbg !1726, !tbaa !1727
  ret void, !dbg !1728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1729 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1733, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %1, metadata !1734, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8* %2, metadata !1735, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %3, metadata !1736, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1737, metadata !DIExpression()), !dbg !1741
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1742
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1738, metadata !DIExpression()), !dbg !1741
  %8 = tail call i32* @__errno_location() #30, !dbg !1743
  %9 = load i32, i32* %8, align 4, !dbg !1743, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %9, metadata !1739, metadata !DIExpression()), !dbg !1741
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1744
  %11 = load i32, i32* %10, align 8, !dbg !1744, !tbaa !1651
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1745
  %13 = load i32, i32* %12, align 4, !dbg !1745, !tbaa !1702
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1746
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1747
  %16 = load i8*, i8** %15, align 8, !dbg !1747, !tbaa !1724
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1748
  %18 = load i8*, i8** %17, align 8, !dbg !1748, !tbaa !1727
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1749
  call void @llvm.dbg.value(metadata i64 %19, metadata !1740, metadata !DIExpression()), !dbg !1741
  store i32 %9, i32* %8, align 4, !dbg !1750, !tbaa !874
  ret i64 %19, !dbg !1751
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1752 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1758, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %1, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %2, metadata !1760, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %3, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 %4, metadata !1762, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 %5, metadata !1763, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32* %6, metadata !1764, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %7, metadata !1765, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %8, metadata !1766, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 0, metadata !1769, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* null, metadata !1770, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 0, metadata !1771, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1828
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !1829
  %14 = icmp eq i64 %13, 1, !dbg !1830
  call void @llvm.dbg.value(metadata i1 %14, metadata !1773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1828
  %15 = lshr i32 %5, 1, !dbg !1831
  %16 = trunc i32 %15 to i8, !dbg !1831
  %17 = and i8 %16, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i8 %17, metadata !1774, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, metadata !1777, metadata !DIExpression()), !dbg !1828
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1832

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1833
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1834
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1835
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1836
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1828
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1837
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1838
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1839
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %38, metadata !1777, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %37, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %36, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %35, metadata !1774, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %34, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %33, metadata !1772, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %32, metadata !1771, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %31, metadata !1770, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %30, metadata !1769, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %29, metadata !1766, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %28, metadata !1765, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 %27, metadata !1762, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.label(metadata !1822), !dbg !1840
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
  ], !dbg !1841

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1774, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 5, metadata !1762, metadata !DIExpression()), !dbg !1828
  br label %92, !dbg !1842

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1774, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 5, metadata !1762, metadata !DIExpression()), !dbg !1828
  %42 = and i8 %35, 1, !dbg !1844
  %43 = icmp eq i8 %42, 0, !dbg !1844
  br i1 %43, label %44, label %92, !dbg !1842

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1846
  br i1 %45, label %92, label %46, !dbg !1849

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1846, !tbaa !1166
  br label %92, !dbg !1846

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %27), !dbg !1850
  call void @llvm.dbg.value(metadata i8* %48, metadata !1765, metadata !DIExpression()), !dbg !1828
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %27), !dbg !1854
  call void @llvm.dbg.value(metadata i8* %49, metadata !1766, metadata !DIExpression()), !dbg !1828
  br label %50, !dbg !1855

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1766, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %51, metadata !1765, metadata !DIExpression()), !dbg !1828
  %53 = and i8 %35, 1, !dbg !1856
  %54 = icmp eq i8 %53, 0, !dbg !1856
  br i1 %54, label %55, label %70, !dbg !1858

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1770, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !1828
  %56 = load i8, i8* %51, align 1, !dbg !1859, !tbaa !1166
  %57 = icmp eq i8 %56, 0, !dbg !1862
  br i1 %57, label %70, label %58, !dbg !1862

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1770, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %61, metadata !1768, metadata !DIExpression()), !dbg !1828
  %62 = icmp ult i64 %61, %39, !dbg !1863
  br i1 %62, label %63, label %65, !dbg !1866

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1863
  store i8 %59, i8* %64, align 1, !dbg !1863, !tbaa !1166
  br label %65, !dbg !1863

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %66, metadata !1768, metadata !DIExpression()), !dbg !1828
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1867
  call void @llvm.dbg.value(metadata i8* %67, metadata !1770, metadata !DIExpression()), !dbg !1828
  %68 = load i8, i8* %67, align 1, !dbg !1859, !tbaa !1166
  %69 = icmp eq i8 %68, 0, !dbg !1862
  br i1 %69, label %70, label %58, !dbg !1862, !llvm.loop !1868

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1870
  call void @llvm.dbg.value(metadata i64 %71, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %52, metadata !1770, metadata !DIExpression()), !dbg !1828
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %72, metadata !1771, metadata !DIExpression()), !dbg !1828
  br label %92, !dbg !1872

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1828
  br label %74, !dbg !1873

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1828
  call void @llvm.dbg.value(metadata i8 %75, metadata !1772, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1828
  br label %76, !dbg !1874

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1836
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1828
  call void @llvm.dbg.value(metadata i8 %78, metadata !1774, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %77, metadata !1772, metadata !DIExpression()), !dbg !1828
  %79 = and i8 %78, 1, !dbg !1875
  %80 = icmp eq i8 %79, 0, !dbg !1875
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1877
  br label %82, !dbg !1877

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1828
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1831
  call void @llvm.dbg.value(metadata i8 %84, metadata !1774, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %83, metadata !1772, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 2, metadata !1762, metadata !DIExpression()), !dbg !1828
  %85 = and i8 %84, 1, !dbg !1878
  %86 = icmp eq i8 %85, 0, !dbg !1878
  br i1 %86, label %87, label %92, !dbg !1880

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1881
  br i1 %88, label %92, label %89, !dbg !1884

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1881, !tbaa !1166
  br label %92, !dbg !1881

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1828
  br label %92, !dbg !1885

91:                                               ; preds = %26
  call void @abort() #29, !dbg !1886
  unreachable, !dbg !1886

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1870
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %40 ], !dbg !1828
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1828
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1828
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1828
  call void @llvm.dbg.value(metadata i8 %100, metadata !1774, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %99, metadata !1772, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %98, metadata !1771, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %97, metadata !1770, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %96, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %95, metadata !1766, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* %94, metadata !1765, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i32 %93, metadata !1762, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 0, metadata !1767, metadata !DIExpression()), !dbg !1828
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
  br label %121, !dbg !1887

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1888
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1870
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1833
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1837
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1838
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1839
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %128, metadata !1777, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %127, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %126, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %125, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %124, metadata !1769, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %123, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %122, metadata !1767, metadata !DIExpression()), !dbg !1828
  %130 = icmp eq i64 %125, -1, !dbg !1889
  br i1 %130, label %131, label %135, !dbg !1890

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1891
  %133 = load i8, i8* %132, align 1, !dbg !1891, !tbaa !1166
  %134 = icmp eq i8 %133, 0, !dbg !1892
  br i1 %134, label %587, label %137, !dbg !1893

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1894
  br i1 %136, label %587, label %137, !dbg !1893

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1895
  br i1 %106, label %138, label %153, !dbg !1896

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1898
  %140 = and i1 %107, %130, !dbg !1899
  br i1 %140, label %141, label %143, !dbg !1899

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %142, metadata !1761, metadata !DIExpression()), !dbg !1828
  br label %143, !dbg !1901

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1901
  call void @llvm.dbg.value(metadata i64 %144, metadata !1761, metadata !DIExpression()), !dbg !1828
  %145 = icmp ugt i64 %139, %144, !dbg !1902
  br i1 %145, label %153, label %146, !dbg !1903

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1904
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1905
  %149 = icmp ne i32 %148, 0, !dbg !1906
  %150 = or i1 %149, %109, !dbg !1907
  %151 = xor i1 %149, true, !dbg !1907
  %152 = zext i1 %151 to i8, !dbg !1907
  br i1 %150, label %153, label %646, !dbg !1907

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1895
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1895
  call void @llvm.dbg.value(metadata i8 %156, metadata !1783, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i64 %154, metadata !1761, metadata !DIExpression()), !dbg !1828
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1908
  %158 = load i8, i8* %157, align 1, !dbg !1908, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %158, metadata !1778, metadata !DIExpression()), !dbg !1895
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
  ], !dbg !1909

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1910

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1911

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1784, metadata !DIExpression()), !dbg !1895
  %162 = and i8 %126, 1, !dbg !1915
  %163 = icmp eq i8 %162, 0, !dbg !1915
  %164 = and i1 %110, %163, !dbg !1915
  br i1 %164, label %165, label %181, !dbg !1915

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1917
  br i1 %166, label %167, label %169, !dbg !1921

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1917
  store i8 39, i8* %168, align 1, !dbg !1917, !tbaa !1166
  br label %169, !dbg !1917

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %170, metadata !1768, metadata !DIExpression()), !dbg !1828
  %171 = icmp ult i64 %170, %129, !dbg !1922
  br i1 %171, label %172, label %174, !dbg !1925

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1922
  store i8 36, i8* %173, align 1, !dbg !1922, !tbaa !1166
  br label %174, !dbg !1922

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %175, metadata !1768, metadata !DIExpression()), !dbg !1828
  %176 = icmp ult i64 %175, %129, !dbg !1926
  br i1 %176, label %177, label %179, !dbg !1929

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1926
  store i8 39, i8* %178, align 1, !dbg !1926, !tbaa !1166
  br label %179, !dbg !1926

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %180, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1828
  br label %181, !dbg !1930

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1828
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1828
  call void @llvm.dbg.value(metadata i8 %183, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %182, metadata !1768, metadata !DIExpression()), !dbg !1828
  %184 = icmp ult i64 %182, %129, !dbg !1931
  br i1 %184, label %185, label %187, !dbg !1934

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1931
  store i8 92, i8* %186, align 1, !dbg !1931, !tbaa !1166
  br label %187, !dbg !1931

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %188, metadata !1768, metadata !DIExpression()), !dbg !1828
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1935
  br i1 %191, label %192, label %473, !dbg !1935

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1937
  %194 = load i8, i8* %193, align 1, !dbg !1937, !tbaa !1166
  %195 = add i8 %194, -48, !dbg !1938
  %196 = icmp ult i8 %195, 10, !dbg !1938
  br i1 %196, label %197, label %473, !dbg !1938

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1939
  br i1 %198, label %199, label %201, !dbg !1943

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1939
  store i8 48, i8* %200, align 1, !dbg !1939, !tbaa !1166
  br label %201, !dbg !1939

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %202, metadata !1768, metadata !DIExpression()), !dbg !1828
  %203 = icmp ult i64 %202, %129, !dbg !1944
  br i1 %203, label %204, label %206, !dbg !1947

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1944
  store i8 48, i8* %205, align 1, !dbg !1944, !tbaa !1166
  br label %206, !dbg !1944

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %207, metadata !1768, metadata !DIExpression()), !dbg !1828
  br label %473, !dbg !1948

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1949

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1950

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1951

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1953
  br i1 %214, label %215, label %473, !dbg !1953

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1955
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1956
  %218 = load i8, i8* %217, align 1, !dbg !1956, !tbaa !1166
  %219 = icmp eq i8 %218, 63, !dbg !1957
  br i1 %219, label %220, label %473, !dbg !1958

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1959
  %222 = load i8, i8* %221, align 1, !dbg !1959, !tbaa !1166
  %223 = sext i8 %222 to i32, !dbg !1959
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
  ], !dbg !1960

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1961

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i64 undef, metadata !1767, metadata !DIExpression()), !dbg !1828
  %226 = icmp ult i64 %123, %129, !dbg !1963
  br i1 %226, label %227, label %229, !dbg !1966

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1963
  store i8 63, i8* %228, align 1, !dbg !1963, !tbaa !1166
  br label %229, !dbg !1963

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %230, metadata !1768, metadata !DIExpression()), !dbg !1828
  %231 = icmp ult i64 %230, %129, !dbg !1967
  br i1 %231, label %232, label %234, !dbg !1970

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1967
  store i8 34, i8* %233, align 1, !dbg !1967, !tbaa !1166
  br label %234, !dbg !1967

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %235, metadata !1768, metadata !DIExpression()), !dbg !1828
  %236 = icmp ult i64 %235, %129, !dbg !1971
  br i1 %236, label %237, label %239, !dbg !1974

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1971
  store i8 34, i8* %238, align 1, !dbg !1971, !tbaa !1166
  br label %239, !dbg !1971

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %240, metadata !1768, metadata !DIExpression()), !dbg !1828
  %241 = icmp ult i64 %240, %129, !dbg !1975
  br i1 %241, label %242, label %244, !dbg !1978

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1975
  store i8 63, i8* %243, align 1, !dbg !1975, !tbaa !1166
  br label %244, !dbg !1975

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %245, metadata !1768, metadata !DIExpression()), !dbg !1828
  br label %473, !dbg !1979

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1782, metadata !DIExpression()), !dbg !1895
  br label %256, !dbg !1980

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1782, metadata !DIExpression()), !dbg !1895
  br label %256, !dbg !1981

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1782, metadata !DIExpression()), !dbg !1895
  br label %254, !dbg !1982

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1782, metadata !DIExpression()), !dbg !1895
  br label %254, !dbg !1983

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1782, metadata !DIExpression()), !dbg !1895
  br label %256, !dbg !1984

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1782, metadata !DIExpression()), !dbg !1895
  br i1 %110, label %252, label %253, !dbg !1985

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1986

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1989

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1991
  call void @llvm.dbg.value(metadata i8 %255, metadata !1782, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.label(metadata !1823), !dbg !1992
  br i1 %111, label %256, label %631, !dbg !1993

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1991
  call void @llvm.dbg.value(metadata i8 %257, metadata !1782, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.label(metadata !1824), !dbg !1995
  br i1 %102, label %495, label %473, !dbg !1996

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1997

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1998, !tbaa !1166
  %261 = icmp eq i8 %260, 0, !dbg !2000
  br i1 %261, label %262, label %473, !dbg !2001

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2002
  br i1 %263, label %264, label %473, !dbg !2004

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1785, metadata !DIExpression()), !dbg !1895
  br label %265, !dbg !2005

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1895
  call void @llvm.dbg.value(metadata i8 %266, metadata !1785, metadata !DIExpression()), !dbg !1895
  br i1 %111, label %473, label %631, !dbg !2006

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, metadata !1785, metadata !DIExpression()), !dbg !1895
  br i1 %110, label %268, label %473, !dbg !2008

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2009

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2012
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2014
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2014
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %274, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %273, metadata !1769, metadata !DIExpression()), !dbg !1828
  %275 = icmp ult i64 %123, %274, !dbg !2015
  br i1 %275, label %276, label %278, !dbg !2018

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2015
  store i8 39, i8* %277, align 1, !dbg !2015, !tbaa !1166
  br label %278, !dbg !2015

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %279, metadata !1768, metadata !DIExpression()), !dbg !1828
  %280 = icmp ult i64 %279, %274, !dbg !2019
  br i1 %280, label %281, label %283, !dbg !2022

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2019
  store i8 92, i8* %282, align 1, !dbg !2019, !tbaa !1166
  br label %283, !dbg !2019

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %284, metadata !1768, metadata !DIExpression()), !dbg !1828
  %285 = icmp ult i64 %284, %274, !dbg !2023
  br i1 %285, label %286, label %288, !dbg !2026

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2023
  store i8 39, i8* %287, align 1, !dbg !2023, !tbaa !1166
  br label %288, !dbg !2023

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %289, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1828
  br label %473, !dbg !2027

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2028

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1786, metadata !DIExpression()), !dbg !2029
  %292 = tail call i16** @__ctype_b_loc() #30, !dbg !2030
  %293 = load i16*, i16** %292, align 8, !dbg !2030, !tbaa !708
  %294 = zext i8 %158 to i64, !dbg !2030
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2030
  %296 = load i16, i16* %295, align 2, !dbg !2030, !tbaa !2032
  %297 = lshr i16 %296, 14, !dbg !2034
  %298 = trunc i16 %297 to i8, !dbg !2034
  %299 = and i8 %298, 1, !dbg !2034
  call void @llvm.dbg.value(metadata i8 %354, metadata !1789, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %355, metadata !1786, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %306, metadata !1761, metadata !DIExpression()), !dbg !1828
  %300 = icmp eq i8 %299, 0, !dbg !2035
  call void @llvm.dbg.value(metadata i1 %357, metadata !1785, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1895
  br label %359, !dbg !2036

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2037
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1790, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8* %23, metadata !2039, metadata !DIExpression()) #27, !dbg !2046
  call void @llvm.dbg.value(metadata i32 0, metadata !2044, metadata !DIExpression()) #27, !dbg !2046
  call void @llvm.dbg.value(metadata i64 8, metadata !2045, metadata !DIExpression()) #27, !dbg !2046
  store i64 0, i64* %10, align 8, !dbg !2048
  call void @llvm.dbg.value(metadata i64 0, metadata !1786, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 1, metadata !1789, metadata !DIExpression()), !dbg !2029
  %302 = icmp eq i64 %154, -1, !dbg !2049
  br i1 %302, label %303, label %305, !dbg !2051

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %304, metadata !1761, metadata !DIExpression()), !dbg !1828
  br label %305, !dbg !2053

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1895
  call void @llvm.dbg.value(metadata i64 %306, metadata !1761, metadata !DIExpression()), !dbg !1828
  br label %307, !dbg !2054

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2055
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2056
  call void @llvm.dbg.value(metadata i8 %309, metadata !1789, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %308, metadata !1786, metadata !DIExpression()), !dbg !2029
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2057
  %310 = add i64 %308, %122, !dbg !2058
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2059
  %312 = sub i64 %306, %310, !dbg !2060
  call void @llvm.dbg.value(metadata i32* %12, metadata !1808, metadata !DIExpression(DW_OP_deref)), !dbg !2061
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %313, metadata !1811, metadata !DIExpression()), !dbg !2061
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2063

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1786, metadata !DIExpression()), !dbg !2029
  %315 = icmp ugt i64 %306, %310, !dbg !2064
  br i1 %315, label %316, label %341, !dbg !2066

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2067
  br label %318, !dbg !2067

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1786, metadata !DIExpression()), !dbg !2029
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2068
  %322 = load i8, i8* %321, align 1, !dbg !2068, !tbaa !1166
  %323 = icmp eq i8 %322, 0, !dbg !2066
  br i1 %323, label %341, label %324, !dbg !2067

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %325, metadata !1786, metadata !DIExpression()), !dbg !2029
  %326 = add i64 %325, %122, !dbg !2070
  %327 = icmp ult i64 %326, %306, !dbg !2064
  br i1 %327, label %318, label %341, !dbg !2066, !llvm.loop !2071

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2072
  call void @llvm.dbg.value(metadata i64 1, metadata !1812, metadata !DIExpression()), !dbg !2073
  br i1 %330, label %331, label %344, !dbg !2072

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1812, metadata !DIExpression()), !dbg !2073
  %333 = add i64 %332, %310, !dbg !2074
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2077
  %335 = load i8, i8* %334, align 1, !dbg !2077, !tbaa !1166
  %336 = sext i8 %335 to i32, !dbg !2077
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2078

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %338, metadata !1812, metadata !DIExpression()), !dbg !2073
  %339 = icmp eq i64 %338, %313, !dbg !2080
  br i1 %339, label %344, label %331, !dbg !2081, !llvm.loop !2082

340:                                              ; preds = %307
  br label %341, !dbg !2084

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1789, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 undef, metadata !1786, metadata !DIExpression()), !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2084
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2085, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %345, metadata !1808, metadata !DIExpression()), !dbg !2061
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !2087
  %347 = icmp eq i32 %346, 0, !dbg !2087
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2088
  call void @llvm.dbg.value(metadata i8 %348, metadata !1789, metadata !DIExpression()), !dbg !2029
  %349 = add i64 %313, %308, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %349, metadata !1786, metadata !DIExpression()), !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2084
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !2090
  %351 = icmp eq i32 %350, 0, !dbg !2091
  br i1 %351, label %307, label %353, !dbg !2092, !llvm.loop !2093

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1789, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 undef, metadata !1786, metadata !DIExpression()), !dbg !2029
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !2084
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2095
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !2095
  call void @llvm.dbg.value(metadata i8 %354, metadata !1789, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %355, metadata !1786, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %306, metadata !1761, metadata !DIExpression()), !dbg !1828
  %356 = and i8 %354, 1, !dbg !2035
  %357 = icmp eq i8 %356, 0, !dbg !2035
  call void @llvm.dbg.value(metadata i1 %357, metadata !1785, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1895
  %358 = icmp ugt i64 %355, 1, !dbg !2096
  br i1 %358, label %367, label %359, !dbg !2036

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2097
  br i1 %364, label %367, label %365, !dbg !2097

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i8 %472, metadata !1785, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %441, metadata !1784, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %440, metadata !1783, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %439, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %438, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %371, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %437, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %375, metadata !1767, metadata !DIExpression()), !dbg !1828
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %372, metadata !1819, metadata !DIExpression()), !dbg !2099
  %373 = and i1 %102, %368
  br label %374, !dbg !2100

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1888
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1828
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1837
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1895
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1895
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2101
  call void @llvm.dbg.value(metadata i8 %380, metadata !1784, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %379, metadata !1783, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %378, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %377, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %376, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %375, metadata !1767, metadata !DIExpression()), !dbg !1828
  br i1 %373, label %381, label %427, !dbg !2102

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2107

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1784, metadata !DIExpression()), !dbg !1895
  %383 = and i8 %377, 1, !dbg !2110
  %384 = icmp eq i8 %383, 0, !dbg !2110
  %385 = and i1 %110, %384, !dbg !2110
  br i1 %385, label %386, label %402, !dbg !2110

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2112
  br i1 %387, label %388, label %390, !dbg !2116

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2112
  store i8 39, i8* %389, align 1, !dbg !2112, !tbaa !1166
  br label %390, !dbg !2112

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %391, metadata !1768, metadata !DIExpression()), !dbg !1828
  %392 = icmp ult i64 %391, %129, !dbg !2117
  br i1 %392, label %393, label %395, !dbg !2120

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2117
  store i8 36, i8* %394, align 1, !dbg !2117, !tbaa !1166
  br label %395, !dbg !2117

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %396, metadata !1768, metadata !DIExpression()), !dbg !1828
  %397 = icmp ult i64 %396, %129, !dbg !2121
  br i1 %397, label %398, label %400, !dbg !2124

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2121
  store i8 39, i8* %399, align 1, !dbg !2121, !tbaa !1166
  br label %400, !dbg !2121

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %401, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1828
  br label %402, !dbg !2125

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1828
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1828
  call void @llvm.dbg.value(metadata i8 %404, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %403, metadata !1768, metadata !DIExpression()), !dbg !1828
  %405 = icmp ult i64 %403, %129, !dbg !2126
  br i1 %405, label %406, label %408, !dbg !2129

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2126
  store i8 92, i8* %407, align 1, !dbg !2126, !tbaa !1166
  br label %408, !dbg !2126

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %409, metadata !1768, metadata !DIExpression()), !dbg !1828
  %410 = icmp ult i64 %409, %129, !dbg !2130
  br i1 %410, label %411, label %415, !dbg !2133

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2130
  %413 = or i8 %412, 48, !dbg !2130
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2130
  store i8 %413, i8* %414, align 1, !dbg !2130, !tbaa !1166
  br label %415, !dbg !2130

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %416, metadata !1768, metadata !DIExpression()), !dbg !1828
  %417 = icmp ult i64 %416, %129, !dbg !2134
  br i1 %417, label %418, label %423, !dbg !2137

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2134
  %420 = and i8 %419, 7, !dbg !2134
  %421 = or i8 %420, 48, !dbg !2134
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2134
  store i8 %421, i8* %422, align 1, !dbg !2134, !tbaa !1166
  br label %423, !dbg !2134

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %424, metadata !1768, metadata !DIExpression()), !dbg !1828
  %425 = and i8 %378, 7, !dbg !2138
  %426 = or i8 %425, 48, !dbg !2139
  call void @llvm.dbg.value(metadata i8 %426, metadata !1778, metadata !DIExpression()), !dbg !1895
  br label %436, !dbg !2140

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2141
  %429 = icmp eq i8 %428, 0, !dbg !2141
  br i1 %429, label %436, label %430, !dbg !2143

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2144
  br i1 %431, label %432, label %434, !dbg !2148

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2144
  store i8 92, i8* %433, align 1, !dbg !2144, !tbaa !1166
  br label %434, !dbg !2144

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %435, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1895
  br label %436, !dbg !2149

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1828
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1837
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1895
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1895
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1895
  call void @llvm.dbg.value(metadata i8 %441, metadata !1784, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %440, metadata !1783, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %439, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %438, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %437, metadata !1768, metadata !DIExpression()), !dbg !1828
  %442 = add i64 %375, 1, !dbg !2150
  %443 = icmp ugt i64 %372, %442, !dbg !2152
  br i1 %443, label %444, label %471, !dbg !2153

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2154
  %446 = icmp ne i8 %445, 0, !dbg !2154
  %447 = and i8 %441, 1, !dbg !2154
  %448 = icmp eq i8 %447, 0, !dbg !2154
  %449 = and i1 %446, %448, !dbg !2154
  br i1 %449, label %450, label %461, !dbg !2154

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2157
  br i1 %451, label %452, label %454, !dbg !2161

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2157
  store i8 39, i8* %453, align 1, !dbg !2157, !tbaa !1166
  br label %454, !dbg !2157

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %455, metadata !1768, metadata !DIExpression()), !dbg !1828
  %456 = icmp ult i64 %455, %129, !dbg !2162
  br i1 %456, label %457, label %459, !dbg !2165

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2162
  store i8 39, i8* %458, align 1, !dbg !2162, !tbaa !1166
  br label %459, !dbg !2162

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %460, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1828
  br label %461, !dbg !2166

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2167
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1828
  call void @llvm.dbg.value(metadata i8 %463, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %462, metadata !1768, metadata !DIExpression()), !dbg !1828
  %464 = icmp ult i64 %462, %129, !dbg !2168
  br i1 %464, label %465, label %467, !dbg !2171

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2168
  store i8 %439, i8* %466, align 1, !dbg !2168, !tbaa !1166
  br label %467, !dbg !2168

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %468, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %442, metadata !1767, metadata !DIExpression()), !dbg !1828
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2172
  %470 = load i8, i8* %469, align 1, !dbg !2172, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %470, metadata !1778, metadata !DIExpression()), !dbg !1895
  br label %374, !dbg !2173, !llvm.loop !2174

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i8 %472, metadata !1785, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %441, metadata !1784, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %440, metadata !1783, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %439, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %438, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %371, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %437, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %375, metadata !1767, metadata !DIExpression()), !dbg !1828
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1888
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1828
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1833
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2177
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1828
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1828
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1895
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1895
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1895
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %482, metadata !1785, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %481, metadata !1784, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %156, metadata !1783, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %480, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %479, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %478, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %477, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %476, metadata !1769, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %475, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %474, metadata !1767, metadata !DIExpression()), !dbg !1828
  br i1 %116, label %494, label %484, !dbg !2178

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2180
  %486 = zext i8 %485 to i64, !dbg !2180
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2181
  %488 = load i32, i32* %487, align 4, !dbg !2181, !tbaa !874
  %489 = and i8 %480, 31, !dbg !2182
  %490 = zext i8 %489 to i32, !dbg !2182
  %491 = shl nuw i32 1, %490, !dbg !2183
  %492 = and i32 %488, %491, !dbg !2183
  %493 = icmp eq i32 %492, 0, !dbg !2183
  br i1 %493, label %494, label %495, !dbg !2184

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2185

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2186
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1828
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1833
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2177
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1837
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1838
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1895
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1895
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %503, metadata !1785, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %502, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %501, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %500, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %499, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %498, metadata !1769, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %497, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %496, metadata !1767, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.label(metadata !1825), !dbg !2187
  br i1 %109, label %505, label %635, !dbg !2188

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1784, metadata !DIExpression()), !dbg !1895
  %506 = and i8 %500, 1, !dbg !2190
  %507 = icmp eq i8 %506, 0, !dbg !2190
  %508 = and i1 %110, %507, !dbg !2190
  br i1 %508, label %509, label %525, !dbg !2190

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2192
  br i1 %510, label %511, label %513, !dbg !2196

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2192
  store i8 39, i8* %512, align 1, !dbg !2192, !tbaa !1166
  br label %513, !dbg !2192

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %514, metadata !1768, metadata !DIExpression()), !dbg !1828
  %515 = icmp ult i64 %514, %504, !dbg !2197
  br i1 %515, label %516, label %518, !dbg !2200

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2197
  store i8 36, i8* %517, align 1, !dbg !2197, !tbaa !1166
  br label %518, !dbg !2197

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %519, metadata !1768, metadata !DIExpression()), !dbg !1828
  %520 = icmp ult i64 %519, %504, !dbg !2201
  br i1 %520, label %521, label %523, !dbg !2204

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2201
  store i8 39, i8* %522, align 1, !dbg !2201, !tbaa !1166
  br label %523, !dbg !2201

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %524, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1828
  br label %525, !dbg !2205

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1895
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1828
  call void @llvm.dbg.value(metadata i8 %527, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %526, metadata !1768, metadata !DIExpression()), !dbg !1828
  %528 = icmp ult i64 %526, %504, !dbg !2206
  br i1 %528, label %529, label %531, !dbg !2209

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2206
  store i8 92, i8* %530, align 1, !dbg !2206, !tbaa !1166
  br label %531, !dbg !2206

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %543, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %542, metadata !1785, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %541, metadata !1784, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %540, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %539, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %538, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %537, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %536, metadata !1769, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %535, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %534, metadata !1767, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.label(metadata !1826), !dbg !2210
  br label %560, !dbg !2211

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2186
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1828
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1833
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2177
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1837
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1838
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2214
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1895
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1895
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %542, metadata !1785, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %541, metadata !1784, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %540, metadata !1778, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 %539, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %538, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %537, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %536, metadata !1769, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %535, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %534, metadata !1767, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.label(metadata !1826), !dbg !2210
  %544 = and i8 %538, 1, !dbg !2211
  %545 = icmp ne i8 %544, 0, !dbg !2211
  %546 = and i8 %541, 1, !dbg !2211
  %547 = icmp eq i8 %546, 0, !dbg !2211
  %548 = and i1 %545, %547, !dbg !2211
  br i1 %548, label %549, label %560, !dbg !2211

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2215
  br i1 %550, label %551, label %553, !dbg !2219

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2215
  store i8 39, i8* %552, align 1, !dbg !2215, !tbaa !1166
  br label %553, !dbg !2215

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %554, metadata !1768, metadata !DIExpression()), !dbg !1828
  %555 = icmp ult i64 %554, %543, !dbg !2220
  br i1 %555, label %556, label %558, !dbg !2223

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2220
  store i8 39, i8* %557, align 1, !dbg !2220, !tbaa !1166
  br label %558, !dbg !2220

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %559, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1828
  br label %560, !dbg !2224

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1895
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1828
  call void @llvm.dbg.value(metadata i8 %569, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %568, metadata !1768, metadata !DIExpression()), !dbg !1828
  %570 = icmp ult i64 %568, %561, !dbg !2225
  br i1 %570, label %571, label %573, !dbg !2228

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2225
  store i8 %563, i8* %572, align 1, !dbg !2225, !tbaa !1166
  br label %573, !dbg !2225

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %574, metadata !1768, metadata !DIExpression()), !dbg !1828
  %575 = icmp eq i8 %562, 0, !dbg !2229
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2231
  call void @llvm.dbg.value(metadata i8 %576, metadata !1777, metadata !DIExpression()), !dbg !1828
  br label %577, !dbg !2232

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2186
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1828
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1833
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2177
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1837
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1828
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1839
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %584, metadata !1777, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %583, metadata !1776, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 %582, metadata !1775, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %581, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %580, metadata !1769, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %579, metadata !1768, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %578, metadata !1767, metadata !DIExpression()), !dbg !1828
  %586 = add i64 %578, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %586, metadata !1767, metadata !DIExpression()), !dbg !1828
  br label %121, !dbg !2234, !llvm.loop !2235

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2237
  %590 = and i1 %110, %589, !dbg !2239
  %591 = xor i1 %590, true, !dbg !2239
  %592 = or i1 %109, %591, !dbg !2239
  br i1 %592, label %593, label %635, !dbg !2239

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2240
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2240
  br i1 %597, label %598, label %607, !dbg !2240

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2242
  %600 = icmp eq i8 %599, 0, !dbg !2242
  br i1 %600, label %603, label %601, !dbg !2245

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2246
  br label %652, !dbg !2247

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2248
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2250
  br i1 %606, label %26, label %607, !dbg !2250

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2251
  %610 = and i1 %609, %608, !dbg !2253
  br i1 %610, label %611, label %626, !dbg !2253

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1770, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %123, metadata !1768, metadata !DIExpression()), !dbg !1828
  %612 = load i8, i8* %97, align 1, !dbg !2254, !tbaa !1166
  %613 = icmp eq i8 %612, 0, !dbg !2257
  br i1 %613, label %626, label %614, !dbg !2257

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1770, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %617, metadata !1768, metadata !DIExpression()), !dbg !1828
  %618 = icmp ult i64 %617, %129, !dbg !2258
  br i1 %618, label %619, label %621, !dbg !2261

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2258
  store i8 %615, i8* %620, align 1, !dbg !2258, !tbaa !1166
  br label %621, !dbg !2258

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %622, metadata !1768, metadata !DIExpression()), !dbg !1828
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2262
  call void @llvm.dbg.value(metadata i8* %623, metadata !1770, metadata !DIExpression()), !dbg !1828
  %624 = load i8, i8* %623, align 1, !dbg !2254, !tbaa !1166
  %625 = icmp eq i8 %624, 0, !dbg !2257
  br i1 %625, label %626, label %614, !dbg !2257, !llvm.loop !2263

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1870
  call void @llvm.dbg.value(metadata i64 %627, metadata !1768, metadata !DIExpression()), !dbg !1828
  %628 = icmp ult i64 %627, %129, !dbg !2265
  br i1 %628, label %629, label %652, !dbg !2267

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2268
  store i8 0, i8* %630, align 1, !dbg !2269, !tbaa !1166
  br label %652, !dbg !2268

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %637, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.label(metadata !1827), !dbg !2270
  %633 = icmp eq i8 %101, 0, !dbg !2271
  %634 = select i1 %633, i32 2, i32 4, !dbg !2271
  br label %642, !dbg !2271

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %637, metadata !1761, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.label(metadata !1827), !dbg !2270
  %639 = icmp eq i32 %93, 2, !dbg !2273
  %640 = icmp eq i8 %636, 0, !dbg !2271
  %641 = select i1 %640, i32 2, i32 4, !dbg !2271
  br i1 %639, label %642, label %646, !dbg !2271

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2271

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1762, metadata !DIExpression()), !dbg !1828
  %650 = and i32 %5, -3, !dbg !2274
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2275
  br label %652, !dbg !2276

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2277
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2278 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2282, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %1, metadata !2283, metadata !DIExpression()), !dbg !2286
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !2287
  call void @llvm.dbg.value(metadata i8* %3, metadata !2284, metadata !DIExpression()), !dbg !2286
  %4 = icmp eq i8* %3, %0, !dbg !2288
  br i1 %4, label %5, label %72, !dbg !2290

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !2291
  call void @llvm.dbg.value(metadata i8* %6, metadata !2285, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %6, metadata !2292, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* undef, metadata !2298, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 85, metadata !2299, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 84, metadata !2300, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 70, metadata !2301, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 45, metadata !2302, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 56, metadata !2303, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2304, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2308
  %7 = load i8, i8* %6, align 1, !dbg !2311, !tbaa !1166
  %8 = and i8 %7, -33, !dbg !2311
  %9 = sext i8 %8 to i32, !dbg !2311
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2311

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2313, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8* undef, metadata !2318, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 84, metadata !2319, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 70, metadata !2320, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 45, metadata !2321, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 56, metadata !2322, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2327
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2331
  %12 = load i8, i8* %11, align 1, !dbg !2331, !tbaa !1166
  %13 = and i8 %12, -33, !dbg !2331
  %14 = icmp eq i8 %13, 84, !dbg !2331
  br i1 %14, label %15, label %69, !dbg !2331

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2333, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* undef, metadata !2338, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 70, metadata !2339, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 45, metadata !2340, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 56, metadata !2341, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2346
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2350
  %17 = load i8, i8* %16, align 1, !dbg !2350, !tbaa !1166
  %18 = and i8 %17, -33, !dbg !2350
  %19 = icmp eq i8 %18, 70, !dbg !2350
  br i1 %19, label %20, label %69, !dbg !2350

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2352, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8* undef, metadata !2357, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 45, metadata !2358, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 56, metadata !2359, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2364
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2368
  %22 = load i8, i8* %21, align 1, !dbg !2368, !tbaa !1166
  %23 = icmp eq i8 %22, 45, !dbg !2368
  br i1 %23, label %24, label %69, !dbg !2370

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2371, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8* undef, metadata !2376, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 56, metadata !2377, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2382
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2386
  %26 = load i8, i8* %25, align 1, !dbg !2386, !tbaa !1166
  %27 = icmp eq i8 %26, 56, !dbg !2386
  br i1 %27, label %28, label %69, !dbg !2388

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2389, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8* undef, metadata !2394, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2399
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2403
  %30 = load i8, i8* %29, align 1, !dbg !2403, !tbaa !1166
  %31 = icmp eq i8 %30, 0, !dbg !2403
  br i1 %31, label %32, label %69, !dbg !2405

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2406, !tbaa !1166
  %34 = icmp eq i8 %33, 96, !dbg !2407
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !2406
  br label %72, !dbg !2408

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2313, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* undef, metadata !2318, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 66, metadata !2319, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 49, metadata !2320, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 56, metadata !2321, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 48, metadata !2322, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 51, metadata !2323, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 48, metadata !2324, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2409
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2413
  %38 = load i8, i8* %37, align 1, !dbg !2413, !tbaa !1166
  %39 = and i8 %38, -33, !dbg !2413
  %40 = icmp eq i8 %39, 66, !dbg !2413
  br i1 %40, label %41, label %69, !dbg !2413

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2333, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8* undef, metadata !2338, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 49, metadata !2339, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 56, metadata !2340, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 48, metadata !2341, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 51, metadata !2342, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 48, metadata !2343, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2414
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2416
  %43 = load i8, i8* %42, align 1, !dbg !2416, !tbaa !1166
  %44 = icmp eq i8 %43, 49, !dbg !2416
  br i1 %44, label %45, label %69, !dbg !2417

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2352, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8* undef, metadata !2357, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 56, metadata !2358, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 48, metadata !2359, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 51, metadata !2360, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 48, metadata !2361, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2418
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2420
  %47 = load i8, i8* %46, align 1, !dbg !2420, !tbaa !1166
  %48 = icmp eq i8 %47, 56, !dbg !2420
  br i1 %48, label %49, label %69, !dbg !2421

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2371, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* undef, metadata !2376, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 48, metadata !2377, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 51, metadata !2378, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 48, metadata !2379, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2422
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2424
  %51 = load i8, i8* %50, align 1, !dbg !2424, !tbaa !1166
  %52 = icmp eq i8 %51, 48, !dbg !2424
  br i1 %52, label %53, label %69, !dbg !2425

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2389, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8* undef, metadata !2394, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8 51, metadata !2395, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8 48, metadata !2396, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2426
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2428
  %55 = load i8, i8* %54, align 1, !dbg !2428, !tbaa !1166
  %56 = icmp eq i8 %55, 51, !dbg !2428
  br i1 %56, label %57, label %69, !dbg !2429

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2430, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8* undef, metadata !2435, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 48, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 0, metadata !2437, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 0, metadata !2438, metadata !DIExpression()), !dbg !2439
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2443
  %59 = load i8, i8* %58, align 1, !dbg !2443, !tbaa !1166
  %60 = icmp eq i8 %59, 48, !dbg !2443
  br i1 %60, label %61, label %69, !dbg !2445

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2446, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* undef, metadata !2451, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8 0, metadata !2453, metadata !DIExpression()), !dbg !2454
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2458
  %63 = load i8, i8* %62, align 1, !dbg !2458, !tbaa !1166
  %64 = icmp eq i8 %63, 0, !dbg !2458
  br i1 %64, label %65, label %69, !dbg !2460

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2461, !tbaa !1166
  %67 = icmp eq i8 %66, 96, !dbg !2462
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !2461
  br label %72, !dbg !2463

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2464
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !2465
  br label %72, !dbg !2466

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2286
  ret i8* %73, !dbg !2467
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2468 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2472 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2478 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %1, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* %0, metadata !2486, metadata !DIExpression()) #27, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %1, metadata !2491, metadata !DIExpression()) #27, !dbg !2499
  call void @llvm.dbg.value(metadata i64* null, metadata !2492, metadata !DIExpression()) #27, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2493, metadata !DIExpression()) #27, !dbg !2499
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2501
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2501
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2494, metadata !DIExpression()) #27, !dbg !2499
  %6 = tail call i32* @__errno_location() #30, !dbg !2502
  %7 = load i32, i32* %6, align 4, !dbg !2502, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !2495, metadata !DIExpression()) #27, !dbg !2499
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2503
  %9 = load i32, i32* %8, align 4, !dbg !2503, !tbaa !1702
  %10 = or i32 %9, 1, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %10, metadata !2496, metadata !DIExpression()) #27, !dbg !2499
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2505
  %12 = load i32, i32* %11, align 8, !dbg !2505, !tbaa !1651
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2506
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2507
  %15 = load i8*, i8** %14, align 8, !dbg !2507, !tbaa !1724
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2508
  %17 = load i8*, i8** %16, align 8, !dbg !2508, !tbaa !1727
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2509
  %19 = add i64 %18, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i64 %19, metadata !2497, metadata !DIExpression()) #27, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %19, metadata !2511, metadata !DIExpression()) #27, !dbg !2516
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2518
  call void @llvm.dbg.value(metadata i8* %20, metadata !2498, metadata !DIExpression()) #27, !dbg !2499
  %21 = load i32, i32* %11, align 8, !dbg !2519, !tbaa !1651
  %22 = load i8*, i8** %14, align 8, !dbg !2520, !tbaa !1724
  %23 = load i8*, i8** %16, align 8, !dbg !2521, !tbaa !1727
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2522
  store i32 %7, i32* %6, align 4, !dbg !2523, !tbaa !874
  ret i8* %20, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2487 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2486, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64 %1, metadata !2491, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64* %2, metadata !2492, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2493, metadata !DIExpression()), !dbg !2525
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2526
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2526
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2494, metadata !DIExpression()), !dbg !2525
  %7 = tail call i32* @__errno_location() #30, !dbg !2527
  %8 = load i32, i32* %7, align 4, !dbg !2527, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %8, metadata !2495, metadata !DIExpression()), !dbg !2525
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2528
  %10 = load i32, i32* %9, align 4, !dbg !2528, !tbaa !1702
  %11 = icmp eq i64* %2, null, !dbg !2529
  %12 = zext i1 %11 to i32, !dbg !2529
  %13 = or i32 %10, %12, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %13, metadata !2496, metadata !DIExpression()), !dbg !2525
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2531
  %15 = load i32, i32* %14, align 8, !dbg !2531, !tbaa !1651
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2532
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2533
  %18 = load i8*, i8** %17, align 8, !dbg !2533, !tbaa !1724
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2534
  %20 = load i8*, i8** %19, align 8, !dbg !2534, !tbaa !1727
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2535
  %22 = add i64 %21, 1, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %22, metadata !2497, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64 %22, metadata !2511, metadata !DIExpression()) #27, !dbg !2537
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %23, metadata !2498, metadata !DIExpression()), !dbg !2525
  %24 = load i32, i32* %14, align 8, !dbg !2540, !tbaa !1651
  %25 = load i8*, i8** %17, align 8, !dbg !2541, !tbaa !1724
  %26 = load i8*, i8** %19, align 8, !dbg !2542, !tbaa !1727
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2543
  store i32 %8, i32* %7, align 4, !dbg !2544, !tbaa !874
  br i1 %11, label %29, label %28, !dbg !2545

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2546, !tbaa !2548
  br label %29, !dbg !2549

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2551 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2555, !tbaa !708
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2553, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i32 1, metadata !2554, metadata !DIExpression()), !dbg !2556
  %2 = load i32, i32* @nslots, align 4, !dbg !2557, !tbaa !874
  %3 = icmp sgt i32 %2, 1, !dbg !2560
  br i1 %3, label %4, label %12, !dbg !2561

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2560
  br label %6, !dbg !2561

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2554, metadata !DIExpression()), !dbg !2556
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2562
  %9 = load i8*, i8** %8, align 8, !dbg !2562, !tbaa !2563
  tail call void @free(i8* %9) #27, !dbg !2565
  %10 = add nuw nsw i64 %7, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %10, metadata !2554, metadata !DIExpression()), !dbg !2556
  %11 = icmp eq i64 %10, %5, !dbg !2560
  br i1 %11, label %12, label %6, !dbg !2561, !llvm.loop !2567

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2569
  %14 = load i8*, i8** %13, align 8, !dbg !2569, !tbaa !2563
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2571
  br i1 %15, label %17, label %16, !dbg !2572

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2573
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2575, !tbaa !2576
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2577, !tbaa !2563
  br label %17, !dbg !2578

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2579
  br i1 %18, label %21, label %19, !dbg !2581

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2582
  tail call void @free(i8* %20) #27, !dbg !2584
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2585, !tbaa !708
  br label %21, !dbg !2586

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2587, !tbaa !874
  ret void, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %1, metadata !2592, metadata !DIExpression()), !dbg !2593
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2594
  ret i8* %3, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2596 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2600, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8* %1, metadata !2601, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %2, metadata !2602, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2603, metadata !DIExpression()), !dbg !2615
  %5 = tail call i32* @__errno_location() #30, !dbg !2616
  %6 = load i32, i32* %5, align 4, !dbg !2616, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %6, metadata !2604, metadata !DIExpression()), !dbg !2615
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2617, !tbaa !708
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2605, metadata !DIExpression()), !dbg !2615
  %8 = icmp slt i32 %0, 0, !dbg !2618
  br i1 %8, label %9, label %10, !dbg !2620

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2621
  unreachable, !dbg !2621

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2622, !tbaa !874
  %12 = icmp sgt i32 %11, %0, !dbg !2623
  br i1 %12, label %34, label %13, !dbg !2624

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2625
  call void @llvm.dbg.value(metadata i1 %14, metadata !2606, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2626
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2609, metadata !DIExpression()), !dbg !2626
  %15 = icmp eq i32 %0, 2147483647, !dbg !2627
  br i1 %15, label %16, label %17, !dbg !2629

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2630
  unreachable, !dbg !2630

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2631
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2631
  %20 = add nuw nsw i32 %0, 1, !dbg !2632
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2633
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2634
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2634
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2605, metadata !DIExpression()), !dbg !2615
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2635, !tbaa !708
  br i1 %14, label %25, label %26, !dbg !2636

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2637, !tbaa.struct !2639
  br label %26, !dbg !2640

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2641, !tbaa !874
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2642
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2643
  %31 = sub nsw i32 %20, %27, !dbg !2644
  %32 = sext i32 %31 to i64, !dbg !2645
  %33 = shl nsw i64 %32, 4, !dbg !2646
  call void @llvm.dbg.value(metadata i8* %30, metadata !2039, metadata !DIExpression()) #27, !dbg !2647
  call void @llvm.dbg.value(metadata i32 0, metadata !2044, metadata !DIExpression()) #27, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %33, metadata !2045, metadata !DIExpression()) #27, !dbg !2647
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2649
  store i32 %20, i32* @nslots, align 4, !dbg !2650, !tbaa !874
  br label %34, !dbg !2651

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2615
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2605, metadata !DIExpression()), !dbg !2615
  %36 = zext i32 %0 to i64, !dbg !2652
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2653
  %38 = load i64, i64* %37, align 8, !dbg !2653, !tbaa !2576
  call void @llvm.dbg.value(metadata i64 %38, metadata !2610, metadata !DIExpression()), !dbg !2654
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2655
  %40 = load i8*, i8** %39, align 8, !dbg !2655, !tbaa !2563
  call void @llvm.dbg.value(metadata i8* %40, metadata !2612, metadata !DIExpression()), !dbg !2654
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2656
  %42 = load i32, i32* %41, align 4, !dbg !2656, !tbaa !1702
  %43 = or i32 %42, 1, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %43, metadata !2613, metadata !DIExpression()), !dbg !2654
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2658
  %45 = load i32, i32* %44, align 8, !dbg !2658, !tbaa !1651
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2659
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2660
  %48 = load i8*, i8** %47, align 8, !dbg !2660, !tbaa !1724
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2661
  %50 = load i8*, i8** %49, align 8, !dbg !2661, !tbaa !1727
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %51, metadata !2614, metadata !DIExpression()), !dbg !2654
  %52 = icmp ugt i64 %38, %51, !dbg !2663
  br i1 %52, label %63, label %53, !dbg !2665

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %54, metadata !2610, metadata !DIExpression()), !dbg !2654
  store i64 %54, i64* %37, align 8, !dbg !2668, !tbaa !2576
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2669
  br i1 %55, label %57, label %56, !dbg !2671

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2672
  br label %57, !dbg !2672

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2511, metadata !DIExpression()) #27, !dbg !2673
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %58, metadata !2612, metadata !DIExpression()), !dbg !2654
  store i8* %58, i8** %39, align 8, !dbg !2676, !tbaa !2563
  %59 = load i32, i32* %44, align 8, !dbg !2677, !tbaa !1651
  %60 = load i8*, i8** %47, align 8, !dbg !2678, !tbaa !1724
  %61 = load i8*, i8** %49, align 8, !dbg !2679, !tbaa !1727
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2680
  br label %63, !dbg !2681

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2654
  call void @llvm.dbg.value(metadata i8* %64, metadata !2612, metadata !DIExpression()), !dbg !2654
  store i32 %6, i32* %5, align 4, !dbg !2682, !tbaa !874
  ret i8* %64, !dbg !2683
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2684 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %2, metadata !2690, metadata !DIExpression()), !dbg !2691
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2692
  ret i8* %4, !dbg !2693
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2694 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2591, metadata !DIExpression()) #27, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %0, metadata !2592, metadata !DIExpression()) #27, !dbg !2698
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2700
  ret i8* %2, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2702 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %1, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 0, metadata !2688, metadata !DIExpression()) #27, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %0, metadata !2689, metadata !DIExpression()) #27, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %1, metadata !2690, metadata !DIExpression()) #27, !dbg !2709
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2711
  ret i8* %3, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2713 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2717, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %1, metadata !2718, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8* %2, metadata !2719, metadata !DIExpression()), !dbg !2721
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2722
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2722
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2720, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2724), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %1, metadata !2728, metadata !DIExpression()) #27, !dbg !2734
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2733, metadata !DIExpression()) #27, !dbg !2736
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2736, !alias.scope !2724
  %6 = icmp eq i32 %1, 10, !dbg !2737
  br i1 %6, label %7, label %8, !dbg !2739

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2740, !noalias !2724
  unreachable, !dbg !2740

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2741
  store i32 %1, i32* %9, align 8, !dbg !2742, !tbaa !1651, !alias.scope !2724
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2743
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2744
  ret i8* %10, !dbg !2745
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2746 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2750, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %1, metadata !2751, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 %3, metadata !2753, metadata !DIExpression()), !dbg !2755
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2756
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2754, metadata !DIExpression()), !dbg !2757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %1, metadata !2728, metadata !DIExpression()) #27, !dbg !2762
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2733, metadata !DIExpression()) #27, !dbg !2764
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !2764, !alias.scope !2758
  %7 = icmp eq i32 %1, 10, !dbg !2765
  br i1 %7, label %8, label %9, !dbg !2766

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2767, !noalias !2758
  unreachable, !dbg !2767

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2768
  store i32 %1, i32* %10, align 8, !dbg !2769, !tbaa !1651, !alias.scope !2758
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2770
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2771
  ret i8* %11, !dbg !2772
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2773 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2777, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8* %1, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i32 0, metadata !2717, metadata !DIExpression()) #27, !dbg !2780
  call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()) #27, !dbg !2780
  call void @llvm.dbg.value(metadata i8* %1, metadata !2719, metadata !DIExpression()) #27, !dbg !2780
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2782
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2782
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2720, metadata !DIExpression()) #27, !dbg !2783
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2784) #27, !dbg !2787
  call void @llvm.dbg.value(metadata i32 %0, metadata !2728, metadata !DIExpression()) #27, !dbg !2788
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2733, metadata !DIExpression()) #27, !dbg !2790
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !2790, !alias.scope !2784
  %5 = icmp eq i32 %0, 10, !dbg !2791
  br i1 %5, label %6, label %7, !dbg !2792

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !2793, !noalias !2784
  unreachable, !dbg !2793

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2794
  store i32 %0, i32* %8, align 8, !dbg !2795, !tbaa !1651, !alias.scope !2784
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2796
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2797
  ret i8* %9, !dbg !2798
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2799 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2803, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %1, metadata !2804, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %2, metadata !2805, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 0, metadata !2750, metadata !DIExpression()) #27, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %0, metadata !2751, metadata !DIExpression()) #27, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %1, metadata !2752, metadata !DIExpression()) #27, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %2, metadata !2753, metadata !DIExpression()) #27, !dbg !2807
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2809
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2809
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2754, metadata !DIExpression()) #27, !dbg !2810
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2811) #27, !dbg !2814
  call void @llvm.dbg.value(metadata i32 %0, metadata !2728, metadata !DIExpression()) #27, !dbg !2815
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2733, metadata !DIExpression()) #27, !dbg !2817
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2817, !alias.scope !2811
  %6 = icmp eq i32 %0, 10, !dbg !2818
  br i1 %6, label %7, label %8, !dbg !2819

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2820, !noalias !2811
  unreachable, !dbg !2820

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2821
  store i32 %0, i32* %9, align 8, !dbg !2822, !tbaa !1651, !alias.scope !2811
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !2823
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2824
  ret i8* %10, !dbg !2825
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2826 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8 %2, metadata !2832, metadata !DIExpression()), !dbg !2834
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2835
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2835
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2837, !tbaa.struct !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1669, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 %2, metadata !1670, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8 %2, metadata !1672, metadata !DIExpression()), !dbg !2839
  %6 = lshr i8 %2, 5, !dbg !2841
  %7 = zext i8 %6 to i64, !dbg !2841
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2842
  call void @llvm.dbg.value(metadata i32* %8, metadata !1673, metadata !DIExpression()), !dbg !2839
  %9 = and i8 %2, 31, !dbg !2843
  %10 = zext i8 %9 to i32, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %10, metadata !1675, metadata !DIExpression()), !dbg !2839
  %11 = load i32, i32* %8, align 4, !dbg !2844, !tbaa !874
  %12 = lshr i32 %11, %10, !dbg !2845
  %13 = and i32 %12, 1, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %13, metadata !1676, metadata !DIExpression()), !dbg !2839
  %14 = xor i32 %13, 1, !dbg !2847
  %15 = shl i32 %14, %10, !dbg !2848
  %16 = xor i32 %15, %11, !dbg !2849
  store i32 %16, i32* %8, align 4, !dbg !2849, !tbaa !874
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2850
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2851
  ret i8* %17, !dbg !2852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2853 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 %1, metadata !2858, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()) #27, !dbg !2860
  call void @llvm.dbg.value(metadata i64 -1, metadata !2831, metadata !DIExpression()) #27, !dbg !2860
  call void @llvm.dbg.value(metadata i8 %1, metadata !2832, metadata !DIExpression()) #27, !dbg !2860
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2862
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2862
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2833, metadata !DIExpression()) #27, !dbg !2863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2864, !tbaa.struct !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1669, metadata !DIExpression()) #27, !dbg !2865
  call void @llvm.dbg.value(metadata i8 %1, metadata !1670, metadata !DIExpression()) #27, !dbg !2865
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()) #27, !dbg !2865
  call void @llvm.dbg.value(metadata i8 %1, metadata !1672, metadata !DIExpression()) #27, !dbg !2865
  %5 = lshr i8 %1, 5, !dbg !2867
  %6 = zext i8 %5 to i64, !dbg !2867
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2868
  call void @llvm.dbg.value(metadata i32* %7, metadata !1673, metadata !DIExpression()) #27, !dbg !2865
  %8 = and i8 %1, 31, !dbg !2869
  %9 = zext i8 %8 to i32, !dbg !2869
  call void @llvm.dbg.value(metadata i32 %9, metadata !1675, metadata !DIExpression()) #27, !dbg !2865
  %10 = load i32, i32* %7, align 4, !dbg !2870, !tbaa !874
  %11 = lshr i32 %10, %9, !dbg !2871
  %12 = and i32 %11, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %12, metadata !1676, metadata !DIExpression()) #27, !dbg !2865
  %13 = xor i32 %12, 1, !dbg !2873
  %14 = shl i32 %13, %9, !dbg !2874
  %15 = xor i32 %14, %10, !dbg !2875
  store i32 %15, i32* %7, align 4, !dbg !2875, !tbaa !874
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2876
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2877
  ret i8* %16, !dbg !2878
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2879 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #27, !dbg !2883
  call void @llvm.dbg.value(metadata i8 58, metadata !2858, metadata !DIExpression()) #27, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()) #27, !dbg !2885
  call void @llvm.dbg.value(metadata i64 -1, metadata !2831, metadata !DIExpression()) #27, !dbg !2885
  call void @llvm.dbg.value(metadata i8 58, metadata !2832, metadata !DIExpression()) #27, !dbg !2885
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2887
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2887
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2833, metadata !DIExpression()) #27, !dbg !2888
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2889, !tbaa.struct !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1669, metadata !DIExpression()) #27, !dbg !2890
  call void @llvm.dbg.value(metadata i8 58, metadata !1670, metadata !DIExpression()) #27, !dbg !2890
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()) #27, !dbg !2890
  call void @llvm.dbg.value(metadata i8 58, metadata !1672, metadata !DIExpression()) #27, !dbg !2890
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2892
  call void @llvm.dbg.value(metadata i32* %4, metadata !1673, metadata !DIExpression()) #27, !dbg !2890
  call void @llvm.dbg.value(metadata i32 26, metadata !1675, metadata !DIExpression()) #27, !dbg !2890
  %5 = load i32, i32* %4, align 4, !dbg !2893, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %5, metadata !1676, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2890
  %6 = or i32 %5, 67108864, !dbg !2894
  store i32 %6, i32* %4, align 4, !dbg !2894, !tbaa !874
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2896
  ret i8* %7, !dbg !2897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2898 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %1, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()) #27, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()) #27, !dbg !2903
  call void @llvm.dbg.value(metadata i8 58, metadata !2832, metadata !DIExpression()) #27, !dbg !2903
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2905
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2905
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2833, metadata !DIExpression()) #27, !dbg !2906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2907, !tbaa.struct !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1669, metadata !DIExpression()) #27, !dbg !2908
  call void @llvm.dbg.value(metadata i8 58, metadata !1670, metadata !DIExpression()) #27, !dbg !2908
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()) #27, !dbg !2908
  call void @llvm.dbg.value(metadata i8 58, metadata !1672, metadata !DIExpression()) #27, !dbg !2908
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2910
  call void @llvm.dbg.value(metadata i32* %5, metadata !1673, metadata !DIExpression()) #27, !dbg !2908
  call void @llvm.dbg.value(metadata i32 26, metadata !1675, metadata !DIExpression()) #27, !dbg !2908
  %6 = load i32, i32* %5, align 4, !dbg !2911, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %6, metadata !1676, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2908
  %7 = or i32 %6, 67108864, !dbg !2912
  store i32 %7, i32* %5, align 4, !dbg !2912, !tbaa !874
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2914
  ret i8* %8, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2916 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2922
  call void @llvm.dbg.value(metadata i32 %0, metadata !2918, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 %1, metadata !2919, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()), !dbg !2924
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2925
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2921, metadata !DIExpression()), !dbg !2926
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2927
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %1, metadata !2728, metadata !DIExpression()) #27, !dbg !2931
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2931
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2922, !alias.scope !2928
  %8 = icmp eq i32 %1, 10, !dbg !2932
  br i1 %8, label %9, label %10, !dbg !2933

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2934, !noalias !2928
  unreachable, !dbg !2934

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2931
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2927
  store i32 %1, i32* %11, align 8, !dbg !2927, !tbaa.struct !2838
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2927
  %13 = bitcast i32* %12 to i8*, !dbg !2927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2927, !tbaa.struct !2935
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2927
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1669, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 58, metadata !1670, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 58, metadata !1672, metadata !DIExpression()), !dbg !2936
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2938
  call void @llvm.dbg.value(metadata i32* %14, metadata !1673, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 26, metadata !1675, metadata !DIExpression()), !dbg !2936
  %15 = load i32, i32* %14, align 4, !dbg !2939, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %15, metadata !1676, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2936
  %16 = or i32 %15, 67108864, !dbg !2940
  store i32 %16, i32* %14, align 4, !dbg !2940, !tbaa !874
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2942
  ret i8* %17, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2944 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2948, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8* %1, metadata !2949, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8* %2, metadata !2950, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()) #27, !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2958, metadata !DIExpression()) #27, !dbg !2963
  call void @llvm.dbg.value(metadata i8* %2, metadata !2959, metadata !DIExpression()) #27, !dbg !2963
  call void @llvm.dbg.value(metadata i8* %3, metadata !2960, metadata !DIExpression()) #27, !dbg !2963
  call void @llvm.dbg.value(metadata i64 -1, metadata !2961, metadata !DIExpression()) #27, !dbg !2963
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2965
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2965
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2962, metadata !DIExpression()) #27, !dbg !2966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2967, !tbaa.struct !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1709, metadata !DIExpression()) #27, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %1, metadata !1710, metadata !DIExpression()) #27, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %2, metadata !1711, metadata !DIExpression()) #27, !dbg !2968
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1709, metadata !DIExpression()) #27, !dbg !2968
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2970
  store i32 10, i32* %7, align 8, !dbg !2971, !tbaa !1651
  %8 = icmp ne i8* %1, null, !dbg !2972
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2973
  br i1 %10, label %12, label %11, !dbg !2973

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !2974
  unreachable, !dbg !2974

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2975
  store i8* %1, i8** %13, align 8, !dbg !2976, !tbaa !1724
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2977
  store i8* %2, i8** %14, align 8, !dbg !2978, !tbaa !1727
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !2979
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2980
  ret i8* %15, !dbg !2981
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2954 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %1, metadata !2958, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %2, metadata !2959, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8* %3, metadata !2960, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %4, metadata !2961, metadata !DIExpression()), !dbg !2982
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2983
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !2983
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2962, metadata !DIExpression()), !dbg !2984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2985, !tbaa.struct !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1709, metadata !DIExpression()) #27, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %1, metadata !1710, metadata !DIExpression()) #27, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %2, metadata !1711, metadata !DIExpression()) #27, !dbg !2986
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1709, metadata !DIExpression()) #27, !dbg !2986
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2988
  store i32 10, i32* %8, align 8, !dbg !2989, !tbaa !1651
  %9 = icmp ne i8* %1, null, !dbg !2990
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2991
  br i1 %11, label %13, label %12, !dbg !2991

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !2992
  unreachable, !dbg !2992

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2993
  store i8* %1, i8** %14, align 8, !dbg !2994, !tbaa !1724
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2995
  store i8* %2, i8** %15, align 8, !dbg !2996, !tbaa !1727
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2997
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !2998
  ret i8* %16, !dbg !2999
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3000 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3004, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %1, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %2, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 0, metadata !2948, metadata !DIExpression()) #27, !dbg !3008
  call void @llvm.dbg.value(metadata i8* %0, metadata !2949, metadata !DIExpression()) #27, !dbg !3008
  call void @llvm.dbg.value(metadata i8* %1, metadata !2950, metadata !DIExpression()) #27, !dbg !3008
  call void @llvm.dbg.value(metadata i8* %2, metadata !2951, metadata !DIExpression()) #27, !dbg !3008
  call void @llvm.dbg.value(metadata i32 0, metadata !2953, metadata !DIExpression()) #27, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %0, metadata !2958, metadata !DIExpression()) #27, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %1, metadata !2959, metadata !DIExpression()) #27, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %2, metadata !2960, metadata !DIExpression()) #27, !dbg !3010
  call void @llvm.dbg.value(metadata i64 -1, metadata !2961, metadata !DIExpression()) #27, !dbg !3010
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3012
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3012
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2962, metadata !DIExpression()) #27, !dbg !3013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3014, !tbaa.struct !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1709, metadata !DIExpression()) #27, !dbg !3015
  call void @llvm.dbg.value(metadata i8* %0, metadata !1710, metadata !DIExpression()) #27, !dbg !3015
  call void @llvm.dbg.value(metadata i8* %1, metadata !1711, metadata !DIExpression()) #27, !dbg !3015
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1709, metadata !DIExpression()) #27, !dbg !3015
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3017
  store i32 10, i32* %6, align 8, !dbg !3018, !tbaa !1651
  %7 = icmp ne i8* %0, null, !dbg !3019
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3020
  br i1 %9, label %11, label %10, !dbg !3020

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !3021
  unreachable, !dbg !3021

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3022
  store i8* %0, i8** %12, align 8, !dbg !3023, !tbaa !1724
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3024
  store i8* %1, i8** %13, align 8, !dbg !3025, !tbaa !1727
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !3026
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !3027
  ret i8* %14, !dbg !3028
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3029 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8* %1, metadata !3034, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i8* %2, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %3, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i32 0, metadata !2953, metadata !DIExpression()) #27, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !2958, metadata !DIExpression()) #27, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %1, metadata !2959, metadata !DIExpression()) #27, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %2, metadata !2960, metadata !DIExpression()) #27, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %3, metadata !2961, metadata !DIExpression()) #27, !dbg !3038
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3040
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2962, metadata !DIExpression()) #27, !dbg !3041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !3042, !tbaa.struct !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1709, metadata !DIExpression()) #27, !dbg !3043
  call void @llvm.dbg.value(metadata i8* %0, metadata !1710, metadata !DIExpression()) #27, !dbg !3043
  call void @llvm.dbg.value(metadata i8* %1, metadata !1711, metadata !DIExpression()) #27, !dbg !3043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1709, metadata !DIExpression()) #27, !dbg !3043
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3045
  store i32 10, i32* %7, align 8, !dbg !3046, !tbaa !1651
  %8 = icmp ne i8* %0, null, !dbg !3047
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3048
  br i1 %10, label %12, label %11, !dbg !3048

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !3049
  unreachable, !dbg !3049

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3050
  store i8* %0, i8** %13, align 8, !dbg !3051, !tbaa !1724
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3052
  store i8* %1, i8** %14, align 8, !dbg !3053, !tbaa !1727
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !3054
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !3055
  ret i8* %15, !dbg !3056
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3061, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8* %1, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %2, metadata !3063, metadata !DIExpression()), !dbg !3064
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3065
  ret i8* %4, !dbg !3066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3067 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3071, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i32 0, metadata !3061, metadata !DIExpression()) #27, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %0, metadata !3062, metadata !DIExpression()) #27, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3063, metadata !DIExpression()) #27, !dbg !3074
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3076
  ret i8* %3, !dbg !3077
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3078 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %1, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 %0, metadata !3061, metadata !DIExpression()) #27, !dbg !3085
  call void @llvm.dbg.value(metadata i8* %1, metadata !3062, metadata !DIExpression()) #27, !dbg !3085
  call void @llvm.dbg.value(metadata i64 -1, metadata !3063, metadata !DIExpression()) #27, !dbg !3085
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3087
  ret i8* %3, !dbg !3088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3089 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i32 0, metadata !3082, metadata !DIExpression()) #27, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %0, metadata !3083, metadata !DIExpression()) #27, !dbg !3095
  call void @llvm.dbg.value(metadata i32 0, metadata !3061, metadata !DIExpression()) #27, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %0, metadata !3062, metadata !DIExpression()) #27, !dbg !3097
  call void @llvm.dbg.value(metadata i64 -1, metadata !3063, metadata !DIExpression()) #27, !dbg !3097
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !3099
  ret i8* %2, !dbg !3100
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_read(i32 %0, i8* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !3101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3105, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8* %1, metadata !3106, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %2, metadata !3107, metadata !DIExpression()), !dbg !3114
  %4 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #27, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %4, metadata !3108, metadata !DIExpression()), !dbg !3116
  %5 = icmp sgt i64 %4, -1, !dbg !3117
  br i1 %5, label %21, label %6, !dbg !3119

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #30, !dbg !3114
  br label %8, !dbg !3119

8:                                                ; preds = %6, %17
  %9 = phi i64 [ %4, %6 ], [ %19, %17 ]
  %10 = phi i64 [ %2, %6 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !3107, metadata !DIExpression()), !dbg !3114
  %11 = load i32, i32* %7, align 4, !dbg !3120, !tbaa !874
  %12 = icmp eq i32 %11, 4, !dbg !3120
  br i1 %12, label %17, label %13, !dbg !3122, !llvm.loop !3123

13:                                               ; preds = %8
  %14 = icmp eq i32 %11, 22, !dbg !3126
  %15 = icmp ugt i64 %10, 2146435072
  %16 = and i1 %15, %14, !dbg !3128
  br i1 %16, label %17, label %21, !dbg !3128

17:                                               ; preds = %13, %8
  %18 = phi i64 [ %10, %8 ], [ 2146435072, %13 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !3107, metadata !DIExpression()), !dbg !3114
  %19 = tail call i64 @read(i32 %0, i8* %1, i64 %18) #27, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %19, metadata !3108, metadata !DIExpression()), !dbg !3116
  %20 = icmp sgt i64 %19, -1, !dbg !3117
  br i1 %20, label %21, label %8, !dbg !3119

21:                                               ; preds = %17, %13, %3
  %22 = phi i64 [ %4, %3 ], [ %9, %13 ], [ %19, %17 ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %18, metadata !3107, metadata !DIExpression()), !dbg !3114
  ret i64 %22, !dbg !3129
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_write(i32 %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #22 !dbg !3130 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3133, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %1, metadata !3134, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %2, metadata !3135, metadata !DIExpression()), !dbg !3140
  %4 = tail call i64 @write(i32 %0, i8* %1, i64 %2) #27, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %4, metadata !3136, metadata !DIExpression()), !dbg !3142
  %5 = icmp sgt i64 %4, -1, !dbg !3143
  br i1 %5, label %21, label %6, !dbg !3145

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #30, !dbg !3140
  br label %8, !dbg !3145

8:                                                ; preds = %6, %17
  %9 = phi i64 [ %4, %6 ], [ %19, %17 ]
  %10 = phi i64 [ %2, %6 ], [ %18, %17 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !3135, metadata !DIExpression()), !dbg !3140
  %11 = load i32, i32* %7, align 4, !dbg !3146, !tbaa !874
  %12 = icmp eq i32 %11, 4, !dbg !3146
  br i1 %12, label %17, label %13, !dbg !3148, !llvm.loop !3149

13:                                               ; preds = %8
  %14 = icmp eq i32 %11, 22, !dbg !3152
  %15 = icmp ugt i64 %10, 2146435072
  %16 = and i1 %15, %14, !dbg !3154
  br i1 %16, label %17, label %21, !dbg !3154

17:                                               ; preds = %13, %8
  %18 = phi i64 [ %10, %8 ], [ 2146435072, %13 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !3135, metadata !DIExpression()), !dbg !3140
  %19 = tail call i64 @write(i32 %0, i8* %1, i64 %18) #27, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %19, metadata !3136, metadata !DIExpression()), !dbg !3142
  %20 = icmp sgt i64 %19, -1, !dbg !3143
  br i1 %20, label %21, label %8, !dbg !3145

21:                                               ; preds = %17, %13, %3
  %22 = phi i64 [ %4, %3 ], [ %9, %13 ], [ %19, %17 ], !dbg !3141
  call void @llvm.dbg.value(metadata i64 %18, metadata !3135, metadata !DIExpression()), !dbg !3140
  ret i64 %22, !dbg !3155
}

; Function Attrs: nofree
declare !dbg !3156 noundef i64 @write(i32 noundef, i8* nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3159 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3198, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %1, metadata !3199, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %2, metadata !3200, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %3, metadata !3201, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8** %4, metadata !3202, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 %5, metadata !3203, metadata !DIExpression()), !dbg !3204
  %7 = icmp eq i8* %1, null, !dbg !3205
  br i1 %7, label %10, label %8, !dbg !3207

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !3208
  br label %12, !dbg !3208

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.95, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !3209
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.96, i64 0, i64 0), i32 5) #27, !dbg !3210
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !3210
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3211
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.98, i64 0, i64 0), i32 5) #27, !dbg !3212
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.99, i64 0, i64 0)) #27, !dbg !3212
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3213
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
  ], !dbg !3214

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.100, i64 0, i64 0), i32 5) #27, !dbg !3215
  %21 = load i8*, i8** %4, align 8, !dbg !3215, !tbaa !708
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !3215
  br label %147, !dbg !3217

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.101, i64 0, i64 0), i32 5) #27, !dbg !3218
  %25 = load i8*, i8** %4, align 8, !dbg !3218, !tbaa !708
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3218
  %27 = load i8*, i8** %26, align 8, !dbg !3218, !tbaa !708
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !3218
  br label %147, !dbg !3219

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.102, i64 0, i64 0), i32 5) #27, !dbg !3220
  %31 = load i8*, i8** %4, align 8, !dbg !3220, !tbaa !708
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3220
  %33 = load i8*, i8** %32, align 8, !dbg !3220, !tbaa !708
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3220
  %35 = load i8*, i8** %34, align 8, !dbg !3220, !tbaa !708
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !3220
  br label %147, !dbg !3221

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.103, i64 0, i64 0), i32 5) #27, !dbg !3222
  %39 = load i8*, i8** %4, align 8, !dbg !3222, !tbaa !708
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3222
  %41 = load i8*, i8** %40, align 8, !dbg !3222, !tbaa !708
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3222
  %43 = load i8*, i8** %42, align 8, !dbg !3222, !tbaa !708
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3222
  %45 = load i8*, i8** %44, align 8, !dbg !3222, !tbaa !708
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !3222
  br label %147, !dbg !3223

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.104, i64 0, i64 0), i32 5) #27, !dbg !3224
  %49 = load i8*, i8** %4, align 8, !dbg !3224, !tbaa !708
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3224
  %51 = load i8*, i8** %50, align 8, !dbg !3224, !tbaa !708
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3224
  %53 = load i8*, i8** %52, align 8, !dbg !3224, !tbaa !708
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3224
  %55 = load i8*, i8** %54, align 8, !dbg !3224, !tbaa !708
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3224
  %57 = load i8*, i8** %56, align 8, !dbg !3224, !tbaa !708
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !3224
  br label %147, !dbg !3225

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.105, i64 0, i64 0), i32 5) #27, !dbg !3226
  %61 = load i8*, i8** %4, align 8, !dbg !3226, !tbaa !708
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3226
  %63 = load i8*, i8** %62, align 8, !dbg !3226, !tbaa !708
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3226
  %65 = load i8*, i8** %64, align 8, !dbg !3226, !tbaa !708
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3226
  %67 = load i8*, i8** %66, align 8, !dbg !3226, !tbaa !708
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3226
  %69 = load i8*, i8** %68, align 8, !dbg !3226, !tbaa !708
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3226
  %71 = load i8*, i8** %70, align 8, !dbg !3226, !tbaa !708
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !3226
  br label %147, !dbg !3227

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.106, i64 0, i64 0), i32 5) #27, !dbg !3228
  %75 = load i8*, i8** %4, align 8, !dbg !3228, !tbaa !708
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3228
  %77 = load i8*, i8** %76, align 8, !dbg !3228, !tbaa !708
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3228
  %79 = load i8*, i8** %78, align 8, !dbg !3228, !tbaa !708
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3228
  %81 = load i8*, i8** %80, align 8, !dbg !3228, !tbaa !708
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3228
  %83 = load i8*, i8** %82, align 8, !dbg !3228, !tbaa !708
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3228
  %85 = load i8*, i8** %84, align 8, !dbg !3228, !tbaa !708
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3228
  %87 = load i8*, i8** %86, align 8, !dbg !3228, !tbaa !708
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !3228
  br label %147, !dbg !3229

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.107, i64 0, i64 0), i32 5) #27, !dbg !3230
  %91 = load i8*, i8** %4, align 8, !dbg !3230, !tbaa !708
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3230
  %93 = load i8*, i8** %92, align 8, !dbg !3230, !tbaa !708
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3230
  %95 = load i8*, i8** %94, align 8, !dbg !3230, !tbaa !708
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3230
  %97 = load i8*, i8** %96, align 8, !dbg !3230, !tbaa !708
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3230
  %99 = load i8*, i8** %98, align 8, !dbg !3230, !tbaa !708
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3230
  %101 = load i8*, i8** %100, align 8, !dbg !3230, !tbaa !708
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3230
  %103 = load i8*, i8** %102, align 8, !dbg !3230, !tbaa !708
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3230
  %105 = load i8*, i8** %104, align 8, !dbg !3230, !tbaa !708
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !3230
  br label %147, !dbg !3231

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.108, i64 0, i64 0), i32 5) #27, !dbg !3232
  %109 = load i8*, i8** %4, align 8, !dbg !3232, !tbaa !708
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3232
  %111 = load i8*, i8** %110, align 8, !dbg !3232, !tbaa !708
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3232
  %113 = load i8*, i8** %112, align 8, !dbg !3232, !tbaa !708
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3232
  %115 = load i8*, i8** %114, align 8, !dbg !3232, !tbaa !708
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3232
  %117 = load i8*, i8** %116, align 8, !dbg !3232, !tbaa !708
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3232
  %119 = load i8*, i8** %118, align 8, !dbg !3232, !tbaa !708
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3232
  %121 = load i8*, i8** %120, align 8, !dbg !3232, !tbaa !708
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3232
  %123 = load i8*, i8** %122, align 8, !dbg !3232, !tbaa !708
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3232
  %125 = load i8*, i8** %124, align 8, !dbg !3232, !tbaa !708
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !3232
  br label %147, !dbg !3233

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.109, i64 0, i64 0), i32 5) #27, !dbg !3234
  %129 = load i8*, i8** %4, align 8, !dbg !3234, !tbaa !708
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3234
  %131 = load i8*, i8** %130, align 8, !dbg !3234, !tbaa !708
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3234
  %133 = load i8*, i8** %132, align 8, !dbg !3234, !tbaa !708
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3234
  %135 = load i8*, i8** %134, align 8, !dbg !3234, !tbaa !708
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3234
  %137 = load i8*, i8** %136, align 8, !dbg !3234, !tbaa !708
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3234
  %139 = load i8*, i8** %138, align 8, !dbg !3234, !tbaa !708
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3234
  %141 = load i8*, i8** %140, align 8, !dbg !3234, !tbaa !708
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3234
  %143 = load i8*, i8** %142, align 8, !dbg !3234, !tbaa !708
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3234
  %145 = load i8*, i8** %144, align 8, !dbg !3234, !tbaa !708
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !3234
  br label %147, !dbg !3235

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3236
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3237 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3241, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %1, metadata !3242, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %2, metadata !3243, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %3, metadata !3244, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8** %4, metadata !3245, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 0, metadata !3246, metadata !DIExpression()), !dbg !3247
  br label %6, !dbg !3248

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3250
  call void @llvm.dbg.value(metadata i64 %7, metadata !3246, metadata !DIExpression()), !dbg !3247
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3251
  %9 = load i8*, i8** %8, align 8, !dbg !3251, !tbaa !708
  %10 = icmp eq i8* %9, null, !dbg !3253
  %11 = add i64 %7, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %11, metadata !3246, metadata !DIExpression()), !dbg !3247
  br i1 %10, label %12, label %6, !dbg !3253, !llvm.loop !3255

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3257
  ret void, !dbg !3258
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3259 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3270, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* %1, metadata !3271, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* %2, metadata !3272, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* %3, metadata !3273, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3274, metadata !DIExpression()), !dbg !3278
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3279
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3279
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3276, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 0, metadata !3275, metadata !DIExpression()), !dbg !3278
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3275, metadata !DIExpression()), !dbg !3278
  %11 = load i32, i32* %8, align 8, !dbg !3281
  %12 = icmp ult i32 %11, 41, !dbg !3281
  br i1 %12, label %13, label %18, !dbg !3281

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3281
  %15 = zext i32 %11 to i64, !dbg !3281
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3281
  %17 = add nuw nsw i32 %11, 8, !dbg !3281
  store i32 %17, i32* %8, align 8, !dbg !3281
  br label %21, !dbg !3281

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3281
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3281
  store i8* %20, i8** %9, align 8, !dbg !3281
  br label %21, !dbg !3281

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3281
  %25 = load i8*, i8** %24, align 8, !dbg !3281
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3284
  store i8* %25, i8** %26, align 16, !dbg !3285, !tbaa !708
  %27 = icmp eq i8* %25, null, !dbg !3286
  br i1 %27, label %30, label %28, !dbg !3287

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 1, metadata !3275, metadata !DIExpression()), !dbg !3278
  %29 = icmp ult i32 %22, 41, !dbg !3281
  br i1 %29, label %35, label %32, !dbg !3281

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3288
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3289
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !3290
  ret void, !dbg !3290

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3281
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3281
  store i8* %34, i8** %9, align 8, !dbg !3281
  br label %40, !dbg !3281

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3281
  %37 = zext i32 %22 to i64, !dbg !3281
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3281
  %39 = add nuw nsw i32 %22, 8, !dbg !3281
  store i32 %39, i32* %8, align 8, !dbg !3281
  br label %40, !dbg !3281

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3281
  %44 = load i8*, i8** %43, align 8, !dbg !3281
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3284
  store i8* %44, i8** %45, align 8, !dbg !3285, !tbaa !708
  %46 = icmp eq i8* %44, null, !dbg !3286
  br i1 %46, label %30, label %47, !dbg !3287

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 2, metadata !3275, metadata !DIExpression()), !dbg !3278
  %48 = icmp ult i32 %41, 41, !dbg !3281
  br i1 %48, label %52, label %49, !dbg !3281

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3281
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3281
  store i8* %51, i8** %9, align 8, !dbg !3281
  br label %57, !dbg !3281

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3281
  %54 = zext i32 %41 to i64, !dbg !3281
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3281
  %56 = add nuw nsw i32 %41, 8, !dbg !3281
  store i32 %56, i32* %8, align 8, !dbg !3281
  br label %57, !dbg !3281

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3281
  %61 = load i8*, i8** %60, align 8, !dbg !3281
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3284
  store i8* %61, i8** %62, align 16, !dbg !3285, !tbaa !708
  %63 = icmp eq i8* %61, null, !dbg !3286
  br i1 %63, label %30, label %64, !dbg !3287

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 3, metadata !3275, metadata !DIExpression()), !dbg !3278
  %65 = icmp ult i32 %58, 41, !dbg !3281
  br i1 %65, label %69, label %66, !dbg !3281

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3281
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3281
  store i8* %68, i8** %9, align 8, !dbg !3281
  br label %74, !dbg !3281

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3281
  %71 = zext i32 %58 to i64, !dbg !3281
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3281
  %73 = add nuw nsw i32 %58, 8, !dbg !3281
  store i32 %73, i32* %8, align 8, !dbg !3281
  br label %74, !dbg !3281

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3281
  %78 = load i8*, i8** %77, align 8, !dbg !3281
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3284
  store i8* %78, i8** %79, align 8, !dbg !3285, !tbaa !708
  %80 = icmp eq i8* %78, null, !dbg !3286
  br i1 %80, label %30, label %81, !dbg !3287

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 4, metadata !3275, metadata !DIExpression()), !dbg !3278
  %82 = icmp ult i32 %75, 41, !dbg !3281
  br i1 %82, label %86, label %83, !dbg !3281

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3281
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3281
  store i8* %85, i8** %9, align 8, !dbg !3281
  br label %91, !dbg !3281

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3281
  %88 = zext i32 %75 to i64, !dbg !3281
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3281
  %90 = add nuw nsw i32 %75, 8, !dbg !3281
  store i32 %90, i32* %8, align 8, !dbg !3281
  br label %91, !dbg !3281

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3281
  %95 = load i8*, i8** %94, align 8, !dbg !3281
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3284
  store i8* %95, i8** %96, align 16, !dbg !3285, !tbaa !708
  %97 = icmp eq i8* %95, null, !dbg !3286
  br i1 %97, label %30, label %98, !dbg !3287

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 5, metadata !3275, metadata !DIExpression()), !dbg !3278
  %99 = icmp ult i32 %92, 41, !dbg !3281
  br i1 %99, label %103, label %100, !dbg !3281

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3281
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3281
  store i8* %102, i8** %9, align 8, !dbg !3281
  br label %108, !dbg !3281

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3281
  %105 = zext i32 %92 to i64, !dbg !3281
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3281
  %107 = add nuw nsw i32 %92, 8, !dbg !3281
  store i32 %107, i32* %8, align 8, !dbg !3281
  br label %108, !dbg !3281

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3281
  %111 = load i8*, i8** %110, align 8, !dbg !3281
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3284
  store i8* %111, i8** %112, align 8, !dbg !3285, !tbaa !708
  %113 = icmp eq i8* %111, null, !dbg !3286
  br i1 %113, label %30, label %114, !dbg !3287

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3275, metadata !DIExpression()), !dbg !3278
  %115 = load i8*, i8** %9, align 8, !dbg !3281
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3281
  store i8* %116, i8** %9, align 8, !dbg !3281
  %117 = bitcast i8* %115 to i8**, !dbg !3281
  %118 = load i8*, i8** %117, align 8, !dbg !3281
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3284
  store i8* %118, i8** %119, align 16, !dbg !3285, !tbaa !708
  %120 = icmp eq i8* %118, null, !dbg !3286
  br i1 %120, label %30, label %121, !dbg !3287

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3275, metadata !DIExpression()), !dbg !3278
  %122 = load i8*, i8** %9, align 8, !dbg !3281
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3281
  store i8* %123, i8** %9, align 8, !dbg !3281
  %124 = bitcast i8* %122 to i8**, !dbg !3281
  %125 = load i8*, i8** %124, align 8, !dbg !3281
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3284
  store i8* %125, i8** %126, align 8, !dbg !3285, !tbaa !708
  %127 = icmp eq i8* %125, null, !dbg !3286
  br i1 %127, label %30, label %128, !dbg !3287

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3275, metadata !DIExpression()), !dbg !3278
  %129 = load i8*, i8** %9, align 8, !dbg !3281
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3281
  store i8* %130, i8** %9, align 8, !dbg !3281
  %131 = bitcast i8* %129 to i8**, !dbg !3281
  %132 = load i8*, i8** %131, align 8, !dbg !3281
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3284
  store i8* %132, i8** %133, align 16, !dbg !3285, !tbaa !708
  %134 = icmp eq i8* %132, null, !dbg !3286
  br i1 %134, label %30, label %135, !dbg !3287

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3275, metadata !DIExpression()), !dbg !3278
  %136 = load i8*, i8** %9, align 8, !dbg !3281
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3281
  store i8* %137, i8** %9, align 8, !dbg !3281
  %138 = bitcast i8* %136 to i8**, !dbg !3281
  %139 = load i8*, i8** %138, align 8, !dbg !3281
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3284
  store i8* %139, i8** %140, align 8, !dbg !3285, !tbaa !708
  %141 = icmp eq i8* %139, null, !dbg !3286
  %142 = select i1 %141, i64 9, i64 10, !dbg !3287
  br label %30, !dbg !3287
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3291 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3295, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8* %1, metadata !3296, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8* %2, metadata !3297, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8* %3, metadata !3298, metadata !DIExpression()), !dbg !3305
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3306
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3306
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3299, metadata !DIExpression()), !dbg !3307
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3308
  call void @llvm.va_start(i8* nonnull %6), !dbg !3308
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3309
  call void @llvm.va_end(i8* nonnull %6), !dbg !3310
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !3311
  ret void, !dbg !3311
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #23

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3312 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3313, !tbaa !708
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.97, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3313
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.112, i64 0, i64 0), i32 5) #27, !dbg !3314
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.113, i64 0, i64 0)) #27, !dbg !3314
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.114, i64 0, i64 0), i32 5) #27, !dbg !3315
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.115, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.116, i64 0, i64 0)) #27, !dbg !3315
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.117, i64 0, i64 0), i32 5) #27, !dbg !3316
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.118, i64 0, i64 0)) #27, !dbg !3316
  ret void, !dbg !3317
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3318 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %1, metadata !3323, metadata !DIExpression()), !dbg !3324
  %3 = udiv i64 9223372036854775807, %1, !dbg !3325
  %4 = icmp ult i64 %3, %0, !dbg !3325
  br i1 %4, label %5, label %6, !dbg !3327

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3328
  unreachable, !dbg !3328

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %7, metadata !3330, metadata !DIExpression()) #27, !dbg !3336
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %8, metadata !3335, metadata !DIExpression()) #27, !dbg !3336
  %9 = icmp eq i8* %8, null, !dbg !3339
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3341
  br i1 %11, label %12, label %13, !dbg !3341

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !3342
  unreachable, !dbg !3342

13:                                               ; preds = %6
  ret i8* %8, !dbg !3343
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3331 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3330, metadata !DIExpression()), !dbg !3344
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %2, metadata !3335, metadata !DIExpression()), !dbg !3344
  %3 = icmp eq i8* %2, null, !dbg !3346
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3347
  br i1 %5, label %6, label %7, !dbg !3347

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3348
  unreachable, !dbg !3348

7:                                                ; preds = %1
  ret i8* %2, !dbg !3349
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #24 !dbg !3350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %1, metadata !3355, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %2, metadata !3356, metadata !DIExpression()), !dbg !3357
  %4 = udiv i64 9223372036854775807, %2, !dbg !3358
  %5 = icmp ult i64 %4, %1, !dbg !3358
  br i1 %5, label %6, label %7, !dbg !3360

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !3361
  unreachable, !dbg !3361

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #27, !dbg !3369
  call void @llvm.dbg.value(metadata i64 %8, metadata !3368, metadata !DIExpression()) #27, !dbg !3369
  %9 = icmp eq i64 %8, 0, !dbg !3371
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3373
  br i1 %11, label %12, label %13, !dbg !3373

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !3374
  br label %19, !dbg !3376

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %14, metadata !3363, metadata !DIExpression()) #27, !dbg !3369
  %15 = icmp eq i8* %14, null, !dbg !3378
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3380
  br i1 %17, label %18, label %19, !dbg !3380

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3381
  unreachable, !dbg !3381

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3369
  ret i8* %20, !dbg !3382
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3364 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3383
  %3 = icmp eq i64 %1, 0, !dbg !3384
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3385
  br i1 %5, label %6, label %7, !dbg !3385

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !3386
  br label %13, !dbg !3387

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %8, metadata !3363, metadata !DIExpression()), !dbg !3383
  %9 = icmp eq i8* %8, null, !dbg !3389
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3390
  br i1 %11, label %12, label %13, !dbg !3390

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3391
  unreachable, !dbg !3391

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3383
  ret i8* %14, !dbg !3392
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #24 !dbg !271 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64* %1, metadata !277, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %2, metadata !278, metadata !DIExpression()), !dbg !3393
  %4 = load i64, i64* %1, align 8, !dbg !3394, !tbaa !2548
  call void @llvm.dbg.value(metadata i64 %4, metadata !279, metadata !DIExpression()), !dbg !3393
  %5 = icmp eq i8* %0, null, !dbg !3395
  br i1 %5, label %6, label %20, !dbg !3397

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3398
  br i1 %7, label %8, label %13, !dbg !3401

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3402
  call void @llvm.dbg.value(metadata i64 %9, metadata !279, metadata !DIExpression()), !dbg !3393
  %10 = icmp ugt i64 %2, 128, !dbg !3404
  %11 = zext i1 %10 to i64, !dbg !3404
  %12 = add nuw nsw i64 %9, %11, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %12, metadata !279, metadata !DIExpression()), !dbg !3393
  br label %13, !dbg !3406

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3393
  call void @llvm.dbg.value(metadata i64 %14, metadata !279, metadata !DIExpression()), !dbg !3393
  %15 = udiv i64 9223372036854775807, %2, !dbg !3407
  %16 = icmp ult i64 %15, %14, !dbg !3407
  br i1 %16, label %19, label %17, !dbg !3409

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !279, metadata !DIExpression()), !dbg !3393
  store i64 %14, i64* %1, align 8, !dbg !3410, !tbaa !2548
  %18 = mul i64 %14, %2, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #27, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %28, metadata !3368, metadata !DIExpression()) #27, !dbg !3412
  br label %31, !dbg !3414

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !3415
  unreachable, !dbg !3415

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3416
  %22 = icmp ugt i64 %21, %4, !dbg !3419
  br i1 %22, label %24, label %23, !dbg !3420

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !3421
  unreachable, !dbg !3421

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3422
  %26 = add nuw i64 %4, 1, !dbg !3423
  %27 = add i64 %26, %25, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %27, metadata !279, metadata !DIExpression()), !dbg !3393
  store i64 %27, i64* %1, align 8, !dbg !3410, !tbaa !2548
  %28 = mul i64 %27, %2, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #27, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %28, metadata !3368, metadata !DIExpression()) #27, !dbg !3412
  %29 = icmp eq i64 %28, 0, !dbg !3425
  br i1 %29, label %30, label %31, !dbg !3414

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !3426
  br label %38, !dbg !3427

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %33, metadata !3363, metadata !DIExpression()) #27, !dbg !3412
  %34 = icmp eq i8* %33, null, !dbg !3429
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3430
  br i1 %36, label %37, label %38, !dbg !3430

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !3431
  unreachable, !dbg !3431

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3412
  ret i8* %39, !dbg !3432
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #24 !dbg !3433 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3435, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i64 %0, metadata !3330, metadata !DIExpression()) #27, !dbg !3437
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !3439
  call void @llvm.dbg.value(metadata i8* %2, metadata !3335, metadata !DIExpression()) #27, !dbg !3437
  %3 = icmp eq i8* %2, null, !dbg !3440
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3441
  br i1 %5, label %6, label %7, !dbg !3441

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3442
  unreachable, !dbg !3442

7:                                                ; preds = %1
  ret i8* %2, !dbg !3443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3444 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3448, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64* %1, metadata !3449, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8* %0, metadata !276, metadata !DIExpression()) #27, !dbg !3451
  call void @llvm.dbg.value(metadata i64* %1, metadata !277, metadata !DIExpression()) #27, !dbg !3451
  call void @llvm.dbg.value(metadata i64 1, metadata !278, metadata !DIExpression()) #27, !dbg !3451
  %3 = load i64, i64* %1, align 8, !dbg !3453, !tbaa !2548
  call void @llvm.dbg.value(metadata i64 %3, metadata !279, metadata !DIExpression()) #27, !dbg !3451
  %4 = icmp eq i8* %0, null, !dbg !3454
  br i1 %4, label %5, label %10, !dbg !3455

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3456
  br i1 %6, label %17, label %7, !dbg !3457

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !279, metadata !DIExpression()) #27, !dbg !3451
  %8 = icmp slt i64 %3, 0, !dbg !3458
  br i1 %8, label %9, label %17, !dbg !3459

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3460
  unreachable, !dbg !3460

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3461
  br i1 %11, label %13, label %12, !dbg !3462

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3463
  unreachable, !dbg !3463

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3464
  %15 = add nuw nsw i64 %3, 1, !dbg !3465
  %16 = add nuw nsw i64 %15, %14, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %16, metadata !279, metadata !DIExpression()) #27, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %0, metadata !3363, metadata !DIExpression()) #27, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %16, metadata !3368, metadata !DIExpression()) #27, !dbg !3467
  br label %17, !dbg !3469

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3470
  store i64 %18, i64* %1, align 8, !dbg !3470, !tbaa !2548
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %19, metadata !3363, metadata !DIExpression()) #27, !dbg !3467
  %20 = icmp eq i8* %19, null, !dbg !3472
  br i1 %20, label %21, label %22, !dbg !3473

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3474
  unreachable, !dbg !3474

22:                                               ; preds = %17
  ret i8* %19, !dbg !3475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3476 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %0, metadata !3480, metadata !DIExpression()) #27, !dbg !3485
  call void @llvm.dbg.value(metadata i64 1, metadata !3483, metadata !DIExpression()) #27, !dbg !3485
  %2 = icmp slt i64 %0, 0, !dbg !3487
  br i1 %2, label %6, label %3, !dbg !3489

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %4, metadata !3484, metadata !DIExpression()) #27, !dbg !3485
  %5 = icmp eq i8* %4, null, !dbg !3491
  br i1 %5, label %6, label %7, !dbg !3492

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3493
  unreachable, !dbg !3493

7:                                                ; preds = %3
  ret i8* %4, !dbg !3494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3481 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3480, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()), !dbg !3495
  %3 = udiv i64 9223372036854775807, %1, !dbg !3496
  %4 = icmp ult i64 %3, %0, !dbg !3496
  br i1 %4, label %8, label %5, !dbg !3497

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3498
  call void @llvm.dbg.value(metadata i8* %6, metadata !3484, metadata !DIExpression()), !dbg !3495
  %7 = icmp eq i8* %6, null, !dbg !3499
  br i1 %7, label %8, label %9, !dbg !3500

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3501
  unreachable, !dbg !3501

9:                                                ; preds = %5
  ret i8* %6, !dbg !3502
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3503 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3505, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %1, metadata !3506, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %1, metadata !3330, metadata !DIExpression()) #27, !dbg !3508
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3510
  call void @llvm.dbg.value(metadata i8* %3, metadata !3335, metadata !DIExpression()) #27, !dbg !3508
  %4 = icmp eq i8* %3, null, !dbg !3511
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3512
  br i1 %6, label %7, label %8, !dbg !3512

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3513
  unreachable, !dbg !3513

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3514, metadata !DIExpression()) #27, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %0, metadata !3521, metadata !DIExpression()) #27, !dbg !3523
  call void @llvm.dbg.value(metadata i64 %1, metadata !3522, metadata !DIExpression()) #27, !dbg !3523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3525
  ret i8* %3, !dbg !3526
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3527 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3529, metadata !DIExpression()), !dbg !3530
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3531
  %3 = add i64 %2, 1, !dbg !3532
  call void @llvm.dbg.value(metadata i8* %0, metadata !3505, metadata !DIExpression()) #27, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %3, metadata !3506, metadata !DIExpression()) #27, !dbg !3533
  call void @llvm.dbg.value(metadata i64 %3, metadata !3330, metadata !DIExpression()) #27, !dbg !3535
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3537
  call void @llvm.dbg.value(metadata i8* %4, metadata !3335, metadata !DIExpression()) #27, !dbg !3535
  %5 = icmp eq i8* %4, null, !dbg !3538
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3539
  br i1 %7, label %8, label %9, !dbg !3539

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3540
  unreachable, !dbg !3540

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3514, metadata !DIExpression()) #27, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %0, metadata !3521, metadata !DIExpression()) #27, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %3, metadata !3522, metadata !DIExpression()) #27, !dbg !3541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3543
  ret i8* %4, !dbg !3544
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3545 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3546, !tbaa !874
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.129, i64 0, i64 0), i32 5) #27, !dbg !3547
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i64 0, i64 0), i8* %2) #27, !dbg !3548
  tail call void @abort() #29, !dbg !3549
  unreachable, !dbg !3549
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3550 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3552, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %1, metadata !3553, metadata !DIExpression()), !dbg !3558
  %3 = icmp eq i64 %0, 0, !dbg !3559
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3560
  br i1 %5, label %11, label %6, !dbg !3560

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3555, metadata !DIExpression()), !dbg !3561
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3562
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3562
  br i1 %8, label %9, label %11, !dbg !3564

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #30, !dbg !3565
  store i32 12, i32* %10, align 4, !dbg !3567, !tbaa !874
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3552, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %12, metadata !3553, metadata !DIExpression()), !dbg !3558
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !3568
  call void @llvm.dbg.value(metadata i8* %14, metadata !3554, metadata !DIExpression()), !dbg !3558
  br label %15, !dbg !3569

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3558
  ret i8* %16, !dbg !3570
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #25

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3571 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3587, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i8* %1, metadata !3588, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %2, metadata !3589, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3590, metadata !DIExpression()), !dbg !3596
  %6 = bitcast i32* %5 to i8*, !dbg !3597
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3597
  %7 = icmp eq i32* %0, null, !dbg !3598
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3600
  call void @llvm.dbg.value(metadata i32* %8, metadata !3587, metadata !DIExpression()), !dbg !3596
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %9, metadata !3591, metadata !DIExpression()), !dbg !3596
  %10 = icmp ugt i64 %9, -3, !dbg !3602
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3603
  br i1 %12, label %13, label %18, !dbg !3603

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !3604
  br i1 %14, label %18, label %15, !dbg !3605

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3606, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %16, metadata !3593, metadata !DIExpression()), !dbg !3607
  %17 = zext i8 %16 to i32, !dbg !3608
  store i32 %17, i32* %8, align 4, !dbg !3609, !tbaa !874
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3596
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3610
  ret i64 %19, !dbg !3610
}

; Function Attrs: nounwind
declare !dbg !3611 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3615 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3653, metadata !DIExpression()), !dbg !3658
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !3659
  call void @llvm.dbg.value(metadata i1 undef, metadata !3654, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3658
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3660, metadata !DIExpression()), !dbg !3664
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3666
  %4 = load i32, i32* %3, align 8, !dbg !3666, !tbaa !3667
  %5 = and i32 %4, 32, !dbg !3669
  %6 = icmp eq i32 %5, 0, !dbg !3669
  call void @llvm.dbg.value(metadata i1 %6, metadata !3656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3658
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !3670
  %8 = icmp eq i32 %7, 0, !dbg !3671
  call void @llvm.dbg.value(metadata i1 %8, metadata !3657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3658
  br i1 %6, label %9, label %19, !dbg !3672

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3674
  call void @llvm.dbg.value(metadata i1 %10, metadata !3654, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3658
  %11 = or i1 %10, %8, !dbg !3675
  %12 = xor i1 %8, true, !dbg !3675
  %13 = sext i1 %12 to i32, !dbg !3675
  br i1 %11, label %22, label %14, !dbg !3675

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #30, !dbg !3676
  %16 = load i32, i32* %15, align 4, !dbg !3676, !tbaa !874
  %17 = icmp ne i32 %16, 9, !dbg !3677
  %18 = sext i1 %17 to i32, !dbg !3678
  br label %22, !dbg !3678

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3679

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #30, !dbg !3681
  store i32 0, i32* %21, align 4, !dbg !3683, !tbaa !874
  br label %22, !dbg !3681

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3658
  ret i32 %23, !dbg !3684
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3685 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3689, metadata !DIExpression()), !dbg !3694
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3695
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3695
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3690, metadata !DIExpression()), !dbg !3696
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !3697
  %5 = icmp eq i32 %4, 0, !dbg !3697
  br i1 %5, label %6, label %13, !dbg !3699

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3700
  %8 = load i16, i16* %7, align 16, !dbg !3700
  %9 = icmp eq i16 %8, 67, !dbg !3700
  br i1 %9, label %13, label %10, !dbg !3701

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), i64 6), !dbg !3702
  %12 = icmp ne i32 %11, 0, !dbg !3703
  br label %13, !dbg !3701

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3694
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3704
  ret i1 %14, !dbg !3704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3705 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !3710
  call void @llvm.dbg.value(metadata i8* %1, metadata !3709, metadata !DIExpression()), !dbg !3711
  %2 = icmp eq i8* %1, null, !dbg !3712
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), i8* %1, !dbg !3714
  call void @llvm.dbg.value(metadata i8* %3, metadata !3709, metadata !DIExpression()), !dbg !3711
  %4 = load i8, i8* %3, align 1, !dbg !3715, !tbaa !1166
  %5 = icmp eq i8 %4, 0, !dbg !3719
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i8* %3, !dbg !3720
  call void @llvm.dbg.value(metadata i8* %6, metadata !3709, metadata !DIExpression()), !dbg !3711
  ret i8* %6, !dbg !3721
}

; Function Attrs: nounwind
declare !dbg !3722 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %1, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %2, metadata !3731, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()) #27, !dbg !3742
  call void @llvm.dbg.value(metadata i8* %1, metadata !3736, metadata !DIExpression()) #27, !dbg !3742
  call void @llvm.dbg.value(metadata i64 %2, metadata !3737, metadata !DIExpression()) #27, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %0, metadata !3744, metadata !DIExpression()) #27, !dbg !3750
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3752
  call void @llvm.dbg.value(metadata i8* %4, metadata !3749, metadata !DIExpression()) #27, !dbg !3750
  call void @llvm.dbg.value(metadata i8* %4, metadata !3738, metadata !DIExpression()) #27, !dbg !3742
  %5 = icmp eq i8* %4, null, !dbg !3753
  br i1 %5, label %6, label %9, !dbg !3754

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3755
  br i1 %7, label %19, label %8, !dbg !3758

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3759, !tbaa !1166
  br label %19, !dbg !3760

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !3761
  call void @llvm.dbg.value(metadata i64 %10, metadata !3739, metadata !DIExpression()) #27, !dbg !3762
  %11 = icmp ult i64 %10, %2, !dbg !3763
  br i1 %11, label %12, label %14, !dbg !3765

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3766
  call void @llvm.dbg.value(metadata i8* %1, metadata !3768, metadata !DIExpression()) #27, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %4, metadata !3771, metadata !DIExpression()) #27, !dbg !3773
  call void @llvm.dbg.value(metadata i64 %13, metadata !3772, metadata !DIExpression()) #27, !dbg !3773
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !3775
  br label %19, !dbg !3776

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3777
  br i1 %15, label %19, label %16, !dbg !3780

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3781
  call void @llvm.dbg.value(metadata i8* %1, metadata !3768, metadata !DIExpression()) #27, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %4, metadata !3771, metadata !DIExpression()) #27, !dbg !3783
  call void @llvm.dbg.value(metadata i64 %17, metadata !3772, metadata !DIExpression()) #27, !dbg !3783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !3785
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3786
  store i8 0, i8* %18, align 1, !dbg !3787, !tbaa !1166
  br label %19, !dbg !3788

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3789
  ret i32 %20, !dbg !3790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3793, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32 %0, metadata !3744, metadata !DIExpression()) #27, !dbg !3795
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3797
  call void @llvm.dbg.value(metadata i8* %2, metadata !3749, metadata !DIExpression()) #27, !dbg !3795
  ret i8* %2, !dbg !3798
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3799 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3837, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 0, metadata !3840, metadata !DIExpression()), !dbg !3841
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3842
  call void @llvm.dbg.value(metadata i32 %2, metadata !3839, metadata !DIExpression()), !dbg !3841
  %3 = icmp slt i32 %2, 0, !dbg !3843
  br i1 %3, label %4, label %6, !dbg !3845

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3846
  br label %24, !dbg !3847

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !3848
  %8 = icmp eq i32 %7, 0, !dbg !3848
  br i1 %8, label %13, label %9, !dbg !3850

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3851
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !3852
  %12 = icmp eq i64 %11, -1, !dbg !3853
  br i1 %12, label %16, label %13, !dbg !3854

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !3855
  %15 = icmp eq i32 %14, 0, !dbg !3855
  br i1 %15, label %16, label %18, !dbg !3856

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3838, metadata !DIExpression()), !dbg !3841
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %21, metadata !3840, metadata !DIExpression()), !dbg !3841
  br label %24, !dbg !3858

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #30, !dbg !3859
  %20 = load i32, i32* %19, align 4, !dbg !3859, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %20, metadata !3838, metadata !DIExpression()), !dbg !3841
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %21, metadata !3840, metadata !DIExpression()), !dbg !3841
  %22 = icmp eq i32 %20, 0, !dbg !3860
  br i1 %22, label %24, label %23, !dbg !3858

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3862, !tbaa !874
  call void @llvm.dbg.value(metadata i32 -1, metadata !3840, metadata !DIExpression()), !dbg !3841
  br label %24, !dbg !3864

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3841
  ret i32 %25, !dbg !3865
}

; Function Attrs: nofree nounwind
declare !dbg !3866 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3869 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3907, metadata !DIExpression()), !dbg !3908
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3909
  br i1 %2, label %6, label %3, !dbg !3911

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !3912
  %5 = icmp eq i32 %4, 0, !dbg !3912
  br i1 %5, label %6, label %8, !dbg !3913

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3914
  br label %17, !dbg !3915

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3916, metadata !DIExpression()) #27, !dbg !3921
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3923
  %10 = load i32, i32* %9, align 8, !dbg !3923, !tbaa !3667
  %11 = and i32 %10, 256, !dbg !3925
  %12 = icmp eq i32 %11, 0, !dbg !3925
  br i1 %12, label %15, label %13, !dbg !3926

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !3927
  br label %15, !dbg !3927

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3928
  br label %17, !dbg !3929

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3908
  ret i32 %18, !dbg !3930
}

; Function Attrs: nofree nounwind
declare !dbg !3931 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3934 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3972, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %1, metadata !3973, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 %2, metadata !3974, metadata !DIExpression()), !dbg !3978
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3979
  %5 = load i8*, i8** %4, align 8, !dbg !3979, !tbaa !3980
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3981
  %7 = load i8*, i8** %6, align 8, !dbg !3981, !tbaa !3982
  %8 = icmp eq i8* %5, %7, !dbg !3983
  br i1 %8, label %9, label %28, !dbg !3984

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3985
  %11 = load i8*, i8** %10, align 8, !dbg !3985, !tbaa !3986
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3987
  %13 = load i8*, i8** %12, align 8, !dbg !3987, !tbaa !3988
  %14 = icmp eq i8* %11, %13, !dbg !3989
  br i1 %14, label %15, label %28, !dbg !3990

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3991
  %17 = load i8*, i8** %16, align 8, !dbg !3991, !tbaa !3992
  %18 = icmp eq i8* %17, null, !dbg !3993
  br i1 %18, label %19, label %28, !dbg !3994

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3995
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !3996
  call void @llvm.dbg.value(metadata i64 %21, metadata !3975, metadata !DIExpression()), !dbg !3997
  %22 = icmp eq i64 %21, -1, !dbg !3998
  br i1 %22, label %30, label %23, !dbg !4000

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4001
  %25 = load i32, i32* %24, align 8, !dbg !4002, !tbaa !3667
  %26 = and i32 %25, -17, !dbg !4002
  store i32 %26, i32* %24, align 8, !dbg !4002, !tbaa !3667
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4003
  store i64 %21, i64* %27, align 8, !dbg !4004, !tbaa !4005
  br label %30, !dbg !4006

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4007
  br label %30, !dbg !4008

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3978
  ret i32 %31, !dbg !4009
}

; Function Attrs: nofree nounwind
declare !dbg !4010 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind readnone willreturn }
attributes #31 = { noreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!10, !147, !153, !160, !244, !247, !166, !172, !250, !257, !259, !238, !266, !283, !285, !287, !290, !292, !294, !683, !685, !687, !689}
!llvm.ident = !{!691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691, !691}
!llvm.module.flags = !{!692, !693, !694, !695, !696}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 548, type: !133, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 503, type: !4, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !65)
!3 = !DIFile(filename: "src/cat.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !40, globals: !45, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !27, !36}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!28 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!33 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!35 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 73, baseType: !14, size: 32, elements: !38)
!37 = !DIFile(filename: "src/ioblksize.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!38 = !{!39}
!39 = !DIEnumerator(name: "IO_BUFSIZE", value: 131072, isUnsigned: true)
!40 = !{!8, !41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !{!0, !46, !50, !52, !54, !56, !58, !63}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "infile", scope: !10, file: !3, line: 52, type: !48, isLocal: true, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "input_desc", scope: !10, file: !3, line: 55, type: !6, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "newlines2", scope: !10, file: !3, line: 79, type: !6, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "line_num_end", scope: !10, file: !3, line: 76, type: !8, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "line_num_start", scope: !10, file: !3, line: 73, type: !8, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "line_buf", scope: !10, file: !3, line: 61, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 20)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "line_num_print", scope: !10, file: !3, line: 70, type: !8, isLocal: true, isDefinition: true)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !75, !76, !77, !82, !85, !86, !87, !124, !125, !126, !127, !128, !129, !130, !131}
!66 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 503, type: !6)
!67 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 503, type: !7)
!68 = !DILocalVariable(name: "outsize", scope: !2, file: !3, line: 506, type: !42)
!69 = !DILocalVariable(name: "insize", scope: !2, file: !3, line: 509, type: !42)
!70 = !DILocalVariable(name: "page_size", scope: !2, file: !3, line: 511, type: !42)
!71 = !DILocalVariable(name: "inbuf", scope: !2, file: !3, line: 514, type: !8)
!72 = !DILocalVariable(name: "outbuf", scope: !2, file: !3, line: 517, type: !8)
!73 = !DILocalVariable(name: "ok", scope: !2, file: !3, line: 519, type: !74)
!74 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!75 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 520, type: !6)
!76 = !DILocalVariable(name: "argind", scope: !2, file: !3, line: 523, type: !6)
!77 = !DILocalVariable(name: "out_dev", scope: !2, file: !3, line: 526, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !79, line: 59, baseType: !80)
!79 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !81, line: 145, baseType: !44)
!81 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!82 = !DILocalVariable(name: "out_ino", scope: !2, file: !3, line: 529, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !79, line: 47, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !81, line: 148, baseType: !44)
!85 = !DILocalVariable(name: "out_isreg", scope: !2, file: !3, line: 532, type: !74)
!86 = !DILocalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 535, type: !74)
!87 = !DILocalVariable(name: "stat_buf", scope: !2, file: !3, line: 537, type: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !89, line: 26, size: 1152, elements: !90)
!89 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!90 = !{!91, !92, !93, !95, !97, !99, !101, !102, !103, !106, !108, !110, !118, !119, !120}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !88, file: !89, line: 28, baseType: !80, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !88, file: !89, line: 33, baseType: !84, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !88, file: !89, line: 41, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !81, line: 151, baseType: !44)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !88, file: !89, line: 42, baseType: !96, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !81, line: 150, baseType: !14)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !88, file: !89, line: 44, baseType: !98, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !81, line: 146, baseType: !14)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !88, file: !89, line: 45, baseType: !100, size: 32, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !81, line: 147, baseType: !14)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !88, file: !89, line: 47, baseType: !6, size: 32, offset: 288)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !88, file: !89, line: 49, baseType: !80, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !88, file: !89, line: 54, baseType: !104, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !81, line: 152, baseType: !105)
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !88, file: !89, line: 58, baseType: !107, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !81, line: 175, baseType: !105)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !88, file: !89, line: 60, baseType: !109, size: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !81, line: 180, baseType: !105)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !88, file: !89, line: 71, baseType: !111, size: 128, offset: 576)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !112, line: 10, size: 128, elements: !113)
!112 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !111, file: !112, line: 12, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !81, line: 160, baseType: !105)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !111, file: !112, line: 16, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !81, line: 197, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !88, file: !89, line: 72, baseType: !111, size: 128, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !88, file: !89, line: 73, baseType: !111, size: 128, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !88, file: !89, line: 86, baseType: !121, size: 192, offset: 960)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 192, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 3)
!124 = !DILocalVariable(name: "number", scope: !2, file: !3, line: 540, type: !74)
!125 = !DILocalVariable(name: "number_nonblank", scope: !2, file: !3, line: 541, type: !74)
!126 = !DILocalVariable(name: "squeeze_blank", scope: !2, file: !3, line: 542, type: !74)
!127 = !DILocalVariable(name: "show_ends", scope: !2, file: !3, line: 543, type: !74)
!128 = !DILocalVariable(name: "show_nonprinting", scope: !2, file: !3, line: 544, type: !74)
!129 = !DILocalVariable(name: "show_tabs", scope: !2, file: !3, line: 545, type: !74)
!130 = !DILocalVariable(name: "file_open_mode", scope: !2, file: !3, line: 546, type: !6)
!131 = !DILabel(scope: !132, name: "contin", file: !3, line: 754)
!132 = distinct !DILexicalBlock(scope: !2, file: !3, line: 659, column: 5)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 2560, elements: !143)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !136, line: 50, size: 256, elements: !137)
!136 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!137 = !{!138, !139, !140, !142}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !136, line: 52, baseType: !48, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !135, file: !136, line: 55, baseType: !6, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !135, file: !136, line: 56, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !135, file: !136, line: 57, baseType: !6, size: 32, offset: 192)
!143 = !{!144}
!144 = !DISubrange(count: 10)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "Version", scope: !147, file: !148, line: 2, type: !48, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, globals: !150, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!149 = !{}
!150 = !{!145}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "file_name", scope: !153, file: !154, line: 46, type: !48, isLocal: true, isDefinition: true)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, globals: !155, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = !{!151, !156}
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !153, file: !154, line: 56, type: !74, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "exit_failure", scope: !160, file: !161, line: 24, type: !163, isLocal: false, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, globals: !162, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !{!158}
!163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "program_name", scope: !166, file: !167, line: 33, type: !48, isLocal: false, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !168, globals: !169, splitDebugInlining: false, nameTableKind: None)
!167 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!168 = !{!41, !8}
!169 = !{!164}
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !172, file: !173, line: 85, type: !232, isLocal: false, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !174, retainedTypes: !195, globals: !197, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !{!12, !175, !180}
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, baseType: !14, size: 32, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 46, baseType: !14, size: 32, elements: !182)
!181 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!183 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!184 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!185 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!186 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!187 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!188 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!189 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!190 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!191 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!192 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!193 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!194 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!195 = !{!6, !196, !42, !8}
!196 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!197 = !{!170, !198, !202, !214, !216, !221, !228, !230}
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !172, file: !173, line: 101, type: !200, isLocal: false, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 320, elements: !143)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !172, file: !173, line: 1052, type: !204, isLocal: false, isDefinition: true)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !173, line: 65, size: 448, elements: !205)
!205 = !{!206, !207, !208, !212, !213}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !204, file: !173, line: 68, baseType: !12, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !173, line: 71, baseType: !6, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !204, file: !173, line: 75, baseType: !209, size: 256, offset: 64)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !204, file: !173, line: 78, baseType: !48, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !204, file: !173, line: 81, baseType: !48, size: 64, offset: 384)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !172, file: !173, line: 116, type: !204, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "slot0", scope: !172, file: !173, line: 842, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 256)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "slotvec", scope: !172, file: !173, line: 845, type: !223, isLocal: true, isDefinition: true)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !173, line: 834, size: 128, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !224, file: !173, line: 836, baseType: !42, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !224, file: !173, line: 837, baseType: !8, size: 64, offset: 64)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "nslots", scope: !172, file: !173, line: 843, type: !6, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "slotvec0", scope: !172, file: !173, line: 844, type: !224, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 704, elements: !234)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!234 = !{!235}
!235 = !DISubrange(count: 11)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !238, file: !239, line: 26, type: !241, isLocal: false, isDefinition: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, globals: !240, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !{!236}
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 376, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 47)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!246 = !{!27}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !249, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!249 = !{!48, !42}
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !252, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = !{!253}
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !254, line: 40, baseType: !14, size: 32, elements: !255)
!254 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = !{!256}
!256 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !252, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "lib/safe-write.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !261, retainedTypes: !265, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = !{!262}
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 40, baseType: !14, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!265 = !{!41}
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !268, retainedTypes: !282, splitDebugInlining: false, nameTableKind: None)
!267 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!268 = !{!269}
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !271, file: !270, line: 186, baseType: !14, size: 32, elements: !280)
!270 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!271 = distinct !DISubprogram(name: "x2nrealloc", scope: !270, file: !270, line: 174, type: !272, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !275)
!272 = !DISubroutineType(types: !273)
!273 = !{!41, !41, !274, !42}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!275 = !{!276, !277, !278, !279}
!276 = !DILocalVariable(name: "p", arg: 1, scope: !271, file: !270, line: 174, type: !41)
!277 = !DILocalVariable(name: "pn", arg: 2, scope: !271, file: !270, line: 174, type: !274)
!278 = !DILocalVariable(name: "s", arg: 3, scope: !271, file: !270, line: 174, type: !42)
!279 = !DILocalVariable(name: "n", scope: !271, file: !270, line: 176, type: !42)
!280 = !{!281}
!281 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!282 = !{!42, !8, !41}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, splitDebugInlining: false, nameTableKind: None)
!284 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !265, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !289, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!289 = !{!42}
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, splitDebugInlining: false, nameTableKind: None)
!291 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !265, splitDebugInlining: false, nameTableKind: None)
!295 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!296 = !{!297}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !298, line: 41, baseType: !14, size: 32, elements: !299)
!298 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!300 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!301 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!302 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!303 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!304 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!305 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!306 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!307 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!308 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!309 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!310 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!311 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!312 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!313 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!314 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!315 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!316 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!317 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!318 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!319 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!320 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!321 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!322 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!323 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!324 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!325 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!326 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!327 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!328 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!329 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!330 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!331 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!332 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!333 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!334 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!335 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!336 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!337 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!338 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!339 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!340 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!341 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!342 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!343 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!344 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!345 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!346 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!347 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!348 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!349 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!408 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!411 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!412 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!413 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!414 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!415 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!416 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!417 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!418 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!419 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!420 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!421 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!422 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!495 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!568 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!569 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!570 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!571 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!572 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!573 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!574 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!575 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!576 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!577 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!578 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!579 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!580 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!581 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!582 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!584 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!585 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!586 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!587 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!588 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!589 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!615 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!616 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!617 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!618 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!619 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!624 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!625 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!626 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!627 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !265, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!685 = distinct !DICompileUnit(language: DW_LANG_C99, file: !686, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, splitDebugInlining: false, nameTableKind: None)
!686 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !265, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!689 = distinct !DICompileUnit(language: DW_LANG_C99, file: !690, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !265, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!691 = !{!"clang version 12.0.1"}
!692 = !{i32 7, !"Dwarf Version", i32 4}
!693 = !{i32 2, !"Debug Info Version", i32 3}
!694 = !{i32 1, !"wchar_size", i32 4}
!695 = !{i32 7, !"PIC Level", i32 2}
!696 = !{i32 7, !"PIE Level", i32 2}
!697 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !698, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !6}
!700 = !{!701}
!701 = !DILocalVariable(name: "status", arg: 1, scope: !697, file: !3, line: 82, type: !6)
!702 = !DILocation(line: 0, scope: !697)
!703 = !DILocation(line: 84, column: 14, scope: !704)
!704 = distinct !DILexicalBlock(scope: !697, file: !3, line: 84, column: 7)
!705 = !DILocation(line: 84, column: 7, scope: !697)
!706 = !DILocation(line: 85, column: 5, scope: !707)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 85, column: 5)
!708 = !{!709, !709, i64 0}
!709 = !{!"any pointer", !710, i64 0}
!710 = !{!"omnipotent char", !711, i64 0}
!711 = !{!"Simple C/C++ TBAA"}
!712 = !DILocation(line: 88, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !704, file: !3, line: 87, column: 5)
!714 = !DILocation(line: 92, column: 7, scope: !713)
!715 = !DILocation(line: 583, column: 3, scope: !716, inlinedAt: !720)
!716 = distinct !DISubprogram(name: "emit_stdin_note", scope: !717, file: !717, line: 581, type: !718, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !149)
!717 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!718 = !DISubroutineType(types: !719)
!719 = !{null}
!720 = distinct !DILocation(line: 96, column: 7, scope: !713)
!721 = !DILocation(line: 98, column: 7, scope: !713)
!722 = !DILocation(line: 107, column: 7, scope: !713)
!723 = !DILocation(line: 113, column: 7, scope: !713)
!724 = !DILocation(line: 114, column: 7, scope: !713)
!725 = !DILocation(line: 115, column: 7, scope: !713)
!726 = !DILocalVariable(name: "program", arg: 1, scope: !727, file: !717, line: 634, type: !48)
!727 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !717, file: !717, line: 634, type: !728, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !48}
!730 = !{!726, !731, !740, !741, !743}
!731 = !DILocalVariable(name: "infomap", scope: !727, file: !717, line: 636, type: !732)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 896, elements: !738)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !727, file: !717, line: 636, size: 128, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !734, file: !717, line: 636, baseType: !48, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !717, line: 636, baseType: !48, size: 64, offset: 64)
!738 = !{!739}
!739 = !DISubrange(count: 7)
!740 = !DILocalVariable(name: "node", scope: !727, file: !717, line: 646, type: !48)
!741 = !DILocalVariable(name: "map_prog", scope: !727, file: !717, line: 647, type: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!743 = !DILocalVariable(name: "lc_messages", scope: !727, file: !717, line: 659, type: !48)
!744 = !DILocation(line: 0, scope: !727, inlinedAt: !745)
!745 = distinct !DILocation(line: 122, column: 7, scope: !713)
!746 = !DILocation(line: 636, column: 3, scope: !727, inlinedAt: !745)
!747 = !DILocation(line: 636, column: 67, scope: !727, inlinedAt: !745)
!748 = !DILocation(line: 647, column: 36, scope: !727, inlinedAt: !745)
!749 = !DILocation(line: 649, column: 3, scope: !727, inlinedAt: !745)
!750 = !DILocation(line: 649, column: 33, scope: !727, inlinedAt: !745)
!751 = !DILocation(line: 650, column: 13, scope: !727, inlinedAt: !745)
!752 = !DILocation(line: 649, column: 20, scope: !727, inlinedAt: !745)
!753 = !{!754, !709, i64 0}
!754 = !{!"infomap", !709, i64 0, !709, i64 8}
!755 = !DILocation(line: 649, column: 10, scope: !727, inlinedAt: !745)
!756 = !DILocation(line: 649, column: 28, scope: !727, inlinedAt: !745)
!757 = distinct !{!757, !749, !751, !758}
!758 = !{!"llvm.loop.mustprogress"}
!759 = !DILocation(line: 652, column: 17, scope: !760, inlinedAt: !745)
!760 = distinct !DILexicalBlock(scope: !727, file: !717, line: 652, column: 7)
!761 = !{!754, !709, i64 8}
!762 = !DILocation(line: 652, column: 7, scope: !760, inlinedAt: !745)
!763 = !DILocation(line: 652, column: 7, scope: !727, inlinedAt: !745)
!764 = !DILocation(line: 655, column: 3, scope: !727, inlinedAt: !745)
!765 = !DILocation(line: 659, column: 29, scope: !727, inlinedAt: !745)
!766 = !DILocation(line: 660, column: 7, scope: !767, inlinedAt: !745)
!767 = distinct !DILexicalBlock(scope: !727, file: !717, line: 660, column: 7)
!768 = !DILocation(line: 660, column: 19, scope: !767, inlinedAt: !745)
!769 = !DILocation(line: 660, column: 22, scope: !767, inlinedAt: !745)
!770 = !DILocation(line: 660, column: 7, scope: !727, inlinedAt: !745)
!771 = !DILocation(line: 666, column: 7, scope: !772, inlinedAt: !745)
!772 = distinct !DILexicalBlock(scope: !767, file: !717, line: 661, column: 5)
!773 = !DILocation(line: 668, column: 5, scope: !772, inlinedAt: !745)
!774 = !DILocation(line: 669, column: 3, scope: !727, inlinedAt: !745)
!775 = !DILocation(line: 671, column: 3, scope: !727, inlinedAt: !745)
!776 = !DILocation(line: 673, column: 1, scope: !727, inlinedAt: !745)
!777 = !DILocation(line: 124, column: 3, scope: !697)
!778 = !DISubprogram(name: "dcgettext", scope: !779, file: !779, line: 51, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!779 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!780 = !DISubroutineType(types: !781)
!781 = !{!8, !48, !48, !6}
!782 = !DISubprogram(name: "fputs_unlocked", scope: !783, file: !783, line: 667, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!783 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!784 = !DISubroutineType(types: !785)
!785 = !{!6, !48, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !788, line: 49, size: 1728, elements: !789)
!788 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !805, !806, !807, !808, !809, !810, !812, !816, !819, !821, !824, !827, !828, !829, !830, !831}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !787, file: !788, line: 51, baseType: !6, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !787, file: !788, line: 54, baseType: !8, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !787, file: !788, line: 55, baseType: !8, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !787, file: !788, line: 56, baseType: !8, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !787, file: !788, line: 57, baseType: !8, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !787, file: !788, line: 58, baseType: !8, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !787, file: !788, line: 59, baseType: !8, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !787, file: !788, line: 60, baseType: !8, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !787, file: !788, line: 61, baseType: !8, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !787, file: !788, line: 64, baseType: !8, size: 64, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !787, file: !788, line: 65, baseType: !8, size: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !787, file: !788, line: 66, baseType: !8, size: 64, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !787, file: !788, line: 68, baseType: !803, size: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !788, line: 36, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !787, file: !788, line: 70, baseType: !786, size: 64, offset: 832)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !787, file: !788, line: 72, baseType: !6, size: 32, offset: 896)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !787, file: !788, line: 73, baseType: !6, size: 32, offset: 928)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !787, file: !788, line: 74, baseType: !104, size: 64, offset: 960)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !787, file: !788, line: 77, baseType: !196, size: 16, offset: 1024)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !787, file: !788, line: 78, baseType: !811, size: 8, offset: 1040)
!811 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !787, file: !788, line: 79, baseType: !813, size: 8, offset: 1048)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 1)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !787, file: !788, line: 81, baseType: !817, size: 64, offset: 1088)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !788, line: 43, baseType: null)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !787, file: !788, line: 89, baseType: !820, size: 64, offset: 1152)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !81, line: 153, baseType: !105)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !787, file: !788, line: 91, baseType: !822, size: 64, offset: 1216)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !788, line: 37, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !787, file: !788, line: 92, baseType: !825, size: 64, offset: 1280)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !788, line: 38, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !787, file: !788, line: 93, baseType: !786, size: 64, offset: 1344)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !787, file: !788, line: 94, baseType: !41, size: 64, offset: 1408)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !787, file: !788, line: 95, baseType: !42, size: 64, offset: 1472)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !787, file: !788, line: 96, baseType: !6, size: 32, offset: 1536)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !787, file: !788, line: 98, baseType: !60, size: 160, offset: 1568)
!832 = !DISubprogram(name: "setlocale", scope: !833, file: !833, line: 122, type: !834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!833 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!834 = !DISubroutineType(types: !835)
!835 = !{!8, !6, !48}
!836 = !DILocation(line: 0, scope: !2)
!837 = !DILocation(line: 511, column: 22, scope: !2)
!838 = !DILocation(line: 537, column: 3, scope: !2)
!839 = !DILocation(line: 537, column: 15, scope: !2)
!840 = !DILocation(line: 563, column: 21, scope: !2)
!841 = !DILocation(line: 563, column: 3, scope: !2)
!842 = !DILocation(line: 564, column: 3, scope: !2)
!843 = !DILocation(line: 565, column: 3, scope: !2)
!844 = !DILocation(line: 566, column: 3, scope: !2)
!845 = !DILocation(line: 572, column: 3, scope: !2)
!846 = !DILocation(line: 576, column: 3, scope: !2)
!847 = !DILocation(line: 540, column: 8, scope: !2)
!848 = !DILocation(line: 541, column: 8, scope: !2)
!849 = !DILocation(line: 542, column: 8, scope: !2)
!850 = !DILocation(line: 543, column: 8, scope: !2)
!851 = !DILocation(line: 544, column: 8, scope: !2)
!852 = !DILocation(line: 576, column: 15, scope: !2)
!853 = distinct !{!853, !846, !854, !758}
!854 = !DILocation(line: 633, column: 5, scope: !2)
!855 = !DILocation(line: 584, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 580, column: 9)
!857 = distinct !DILexicalBlock(scope: !2, file: !3, line: 578, column: 5)
!858 = !DILocation(line: 589, column: 11, scope: !856)
!859 = !DILocation(line: 593, column: 11, scope: !856)
!860 = !DILocation(line: 597, column: 11, scope: !856)
!861 = !DILocation(line: 602, column: 11, scope: !856)
!862 = !DILocation(line: 610, column: 11, scope: !856)
!863 = !DILocation(line: 616, column: 11, scope: !856)
!864 = !DILocation(line: 620, column: 11, scope: !856)
!865 = !DILocation(line: 624, column: 11, scope: !856)
!866 = !DILocation(line: 626, column: 9, scope: !856)
!867 = !DILocation(line: 628, column: 9, scope: !856)
!868 = !DILocation(line: 631, column: 11, scope: !856)
!869 = !DILocation(line: 637, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !2, file: !3, line: 637, column: 7)
!871 = !DILocation(line: 637, column: 40, scope: !870)
!872 = !DILocation(line: 637, column: 7, scope: !2)
!873 = !DILocation(line: 638, column: 5, scope: !870)
!874 = !{!875, !875, i64 0}
!875 = !{!"int", !710, i64 0}
!876 = !DILocalVariable(name: "sb", arg: 1, scope: !877, file: !37, line: 75, type: !88)
!877 = distinct !DISubprogram(name: "io_blksize", scope: !37, file: !37, line: 75, type: !878, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!42, !88}
!880 = !{!876}
!881 = !DILocation(line: 75, column: 25, scope: !877, inlinedAt: !882)
!882 = distinct !DILocation(line: 640, column: 13, scope: !2)
!883 = !DILocation(line: 77, column: 10, scope: !877, inlinedAt: !882)
!884 = !{!885, !886, i64 56}
!885 = !{!"stat", !886, i64 0, !886, i64 8, !886, i64 16, !875, i64 24, !875, i64 28, !875, i64 32, !875, i64 36, !886, i64 40, !886, i64 48, !886, i64 56, !886, i64 64, !887, i64 72, !887, i64 88, !887, i64 104, !710, i64 120}
!886 = !{!"long", !710, i64 0}
!887 = !{!"timespec", !886, i64 0, !886, i64 8}
!888 = !DILocation(line: 641, column: 22, scope: !2)
!889 = !{!885, !886, i64 0}
!890 = !DILocation(line: 642, column: 22, scope: !2)
!891 = !{!885, !886, i64 8}
!892 = !DILocation(line: 643, column: 15, scope: !2)
!893 = !{!885, !875, i64 24}
!894 = !DILocation(line: 645, column: 10, scope: !895)
!895 = distinct !DILexicalBlock(scope: !2, file: !3, line: 645, column: 7)
!896 = !DILocation(line: 655, column: 10, scope: !2)
!897 = !DILocation(line: 656, column: 12, scope: !2)
!898 = !DILocation(line: 658, column: 3, scope: !2)
!899 = !DILocation(line: 660, column: 18, scope: !900)
!900 = distinct !DILexicalBlock(scope: !132, file: !3, line: 660, column: 11)
!901 = !DILocation(line: 660, column: 11, scope: !132)
!902 = !DILocation(line: 663, column: 11, scope: !903)
!903 = distinct !DILexicalBlock(scope: !132, file: !3, line: 663, column: 11)
!904 = !DILocation(line: 661, column: 18, scope: !900)
!905 = !DILocation(line: 661, column: 16, scope: !900)
!906 = !DILocation(line: 661, column: 9, scope: !900)
!907 = !DILocation(line: 663, column: 11, scope: !132)
!908 = !DILocation(line: 666, column: 22, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !3, line: 664, column: 9)
!910 = !DILocation(line: 672, column: 24, scope: !911)
!911 = distinct !DILexicalBlock(scope: !903, file: !3, line: 671, column: 9)
!912 = !DILocation(line: 672, column: 22, scope: !911)
!913 = !DILocation(line: 673, column: 26, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 673, column: 15)
!915 = !DILocation(line: 673, column: 15, scope: !911)
!916 = !DILocation(line: 675, column: 25, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !3, line: 674, column: 13)
!918 = !DILocation(line: 675, column: 38, scope: !917)
!919 = !DILocation(line: 675, column: 15, scope: !917)
!920 = !DILocation(line: 677, column: 15, scope: !917)
!921 = !DILocation(line: 681, column: 18, scope: !922)
!922 = distinct !DILexicalBlock(scope: !132, file: !3, line: 681, column: 11)
!923 = !DILocation(line: 681, column: 11, scope: !922)
!924 = !DILocation(line: 681, column: 41, scope: !922)
!925 = !DILocation(line: 681, column: 11, scope: !132)
!926 = !DILocation(line: 683, column: 21, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !3, line: 682, column: 9)
!928 = !DILocation(line: 683, column: 34, scope: !927)
!929 = !DILocation(line: 683, column: 11, scope: !927)
!930 = !DILocation(line: 685, column: 11, scope: !927)
!931 = !DILocation(line: 75, column: 25, scope: !877, inlinedAt: !932)
!932 = distinct !DILocation(line: 687, column: 16, scope: !132)
!933 = !DILocation(line: 77, column: 10, scope: !877, inlinedAt: !932)
!934 = !DILocation(line: 689, column: 17, scope: !132)
!935 = !DILocation(line: 689, column: 7, scope: !132)
!936 = !DILocation(line: 696, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !132, file: !3, line: 695, column: 11)
!938 = !DILocation(line: 697, column: 21, scope: !937)
!939 = !DILocation(line: 697, column: 14, scope: !937)
!940 = !DILocation(line: 697, column: 57, scope: !937)
!941 = !{!885, !886, i64 48}
!942 = !DILocation(line: 697, column: 46, scope: !937)
!943 = !DILocation(line: 695, column: 11, scope: !132)
!944 = !DILocation(line: 699, column: 24, scope: !945)
!945 = distinct !DILexicalBlock(scope: !937, file: !3, line: 698, column: 9)
!946 = !DILocation(line: 699, column: 60, scope: !945)
!947 = !DILocation(line: 699, column: 11, scope: !945)
!948 = !DILocation(line: 701, column: 11, scope: !945)
!949 = !DILocation(line: 707, column: 21, scope: !950)
!950 = distinct !DILexicalBlock(scope: !132, file: !3, line: 707, column: 11)
!951 = !DILocation(line: 710, column: 20, scope: !952)
!952 = distinct !DILexicalBlock(scope: !950, file: !3, line: 709, column: 9)
!953 = !DILocation(line: 711, column: 47, scope: !952)
!954 = !DILocation(line: 711, column: 19, scope: !952)
!955 = !DILocalVariable(name: "ptr", arg: 1, scope: !956, file: !717, line: 501, type: !959)
!956 = distinct !DISubprogram(name: "ptr_align", scope: !717, file: !717, line: 501, type: !957, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !961)
!957 = !DISubroutineType(types: !958)
!958 = !{!41, !959, !42}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!961 = !{!955, !962, !963, !964}
!962 = !DILocalVariable(name: "alignment", arg: 2, scope: !956, file: !717, line: 501, type: !42)
!963 = !DILocalVariable(name: "p0", scope: !956, file: !717, line: 503, type: !48)
!964 = !DILocalVariable(name: "p1", scope: !956, file: !717, line: 504, type: !48)
!965 = !DILocation(line: 0, scope: !956, inlinedAt: !966)
!966 = distinct !DILocation(line: 713, column: 29, scope: !952)
!967 = !DILocation(line: 504, column: 23, scope: !956, inlinedAt: !966)
!968 = !DILocation(line: 504, column: 35, scope: !956, inlinedAt: !966)
!969 = !DILocation(line: 505, column: 25, scope: !956, inlinedAt: !966)
!970 = !DILocation(line: 505, column: 37, scope: !956, inlinedAt: !966)
!971 = !DILocation(line: 505, column: 23, scope: !956, inlinedAt: !966)
!972 = !DILocalVariable(name: "buf", arg: 1, scope: !973, file: !3, line: 154, type: !8)
!973 = distinct !DISubprogram(name: "simple_cat", scope: !3, file: !3, line: 152, type: !974, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!74, !8, !42}
!976 = !{!972, !977, !978, !979}
!977 = !DILocalVariable(name: "bufsize", arg: 2, scope: !973, file: !3, line: 158, type: !42)
!978 = !DILocalVariable(name: "n_read", scope: !973, file: !3, line: 161, type: !42)
!979 = !DILocalVariable(name: "n", scope: !980, file: !3, line: 185, type: !42)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 183, column: 7)
!981 = distinct !DILexicalBlock(scope: !973, file: !3, line: 166, column: 5)
!982 = !DILocation(line: 0, scope: !973, inlinedAt: !983)
!983 = distinct !DILocation(line: 713, column: 17, scope: !952)
!984 = !DILocation(line: 165, column: 3, scope: !973, inlinedAt: !983)
!985 = !DILocation(line: 169, column: 27, scope: !981, inlinedAt: !983)
!986 = !DILocation(line: 169, column: 16, scope: !981, inlinedAt: !983)
!987 = !DILocation(line: 170, column: 11, scope: !981, inlinedAt: !983)
!988 = !DILocation(line: 172, column: 21, scope: !989, inlinedAt: !983)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 171, column: 9)
!990 = distinct !DILexicalBlock(scope: !981, file: !3, line: 170, column: 11)
!991 = !DILocation(line: 172, column: 34, scope: !989, inlinedAt: !983)
!992 = !DILocation(line: 172, column: 11, scope: !989, inlinedAt: !983)
!993 = !DILocation(line: 173, column: 11, scope: !989, inlinedAt: !983)
!994 = !DILocation(line: 0, scope: !980, inlinedAt: !983)
!995 = !DILocation(line: 186, column: 13, scope: !996, inlinedAt: !983)
!996 = distinct !DILexicalBlock(scope: !980, file: !3, line: 186, column: 13)
!997 = !DILocation(line: 186, column: 48, scope: !996, inlinedAt: !983)
!998 = !DILocation(line: 186, column: 13, scope: !980, inlinedAt: !983)
!999 = distinct !{!999, !984, !1000}
!1000 = !DILocation(line: 189, column: 5, scope: !973, inlinedAt: !983)
!1001 = !DILocation(line: 187, column: 11, scope: !996, inlinedAt: !983)
!1002 = !DILocation(line: 717, column: 51, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !950, file: !3, line: 716, column: 9)
!1004 = !DILocation(line: 717, column: 19, scope: !1003)
!1005 = !DILocation(line: 741, column: 50, scope: !1003)
!1006 = !DILocation(line: 742, column: 41, scope: !1003)
!1007 = !DILocation(line: 741, column: 20, scope: !1003)
!1008 = !DILocation(line: 0, scope: !956, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 744, column: 22, scope: !1003)
!1010 = !DILocation(line: 504, column: 23, scope: !956, inlinedAt: !1009)
!1011 = !DILocation(line: 504, column: 35, scope: !956, inlinedAt: !1009)
!1012 = !DILocation(line: 505, column: 25, scope: !956, inlinedAt: !1009)
!1013 = !DILocation(line: 505, column: 37, scope: !956, inlinedAt: !1009)
!1014 = !DILocation(line: 505, column: 23, scope: !956, inlinedAt: !1009)
!1015 = !DILocation(line: 0, scope: !956, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 745, column: 22, scope: !1003)
!1017 = !DILocation(line: 504, column: 23, scope: !956, inlinedAt: !1016)
!1018 = !DILocation(line: 504, column: 35, scope: !956, inlinedAt: !1016)
!1019 = !DILocation(line: 505, column: 25, scope: !956, inlinedAt: !1016)
!1020 = !DILocation(line: 505, column: 37, scope: !956, inlinedAt: !1016)
!1021 = !DILocation(line: 505, column: 23, scope: !956, inlinedAt: !1016)
!1022 = !DILocalVariable(name: "inbuf", arg: 1, scope: !1023, file: !3, line: 218, type: !8)
!1023 = distinct !DISubprogram(name: "cat", scope: !3, file: !3, line: 216, type: !1024, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!74, !8, !42, !8, !42, !74, !74, !74, !74, !74, !74}
!1026 = !{!1022, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1049, !1050, !1053}
!1027 = !DILocalVariable(name: "insize", arg: 2, scope: !1023, file: !3, line: 221, type: !42)
!1028 = !DILocalVariable(name: "outbuf", arg: 3, scope: !1023, file: !3, line: 224, type: !8)
!1029 = !DILocalVariable(name: "outsize", arg: 4, scope: !1023, file: !3, line: 227, type: !42)
!1030 = !DILocalVariable(name: "show_nonprinting", arg: 5, scope: !1023, file: !3, line: 230, type: !74)
!1031 = !DILocalVariable(name: "show_tabs", arg: 6, scope: !1023, file: !3, line: 231, type: !74)
!1032 = !DILocalVariable(name: "number", arg: 7, scope: !1023, file: !3, line: 232, type: !74)
!1033 = !DILocalVariable(name: "number_nonblank", arg: 8, scope: !1023, file: !3, line: 233, type: !74)
!1034 = !DILocalVariable(name: "show_ends", arg: 9, scope: !1023, file: !3, line: 234, type: !74)
!1035 = !DILocalVariable(name: "squeeze_blank", arg: 10, scope: !1023, file: !3, line: 235, type: !74)
!1036 = !DILocalVariable(name: "ch", scope: !1023, file: !3, line: 238, type: !1037)
!1037 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1038 = !DILocalVariable(name: "bpin", scope: !1023, file: !3, line: 241, type: !8)
!1039 = !DILocalVariable(name: "eob", scope: !1023, file: !3, line: 245, type: !8)
!1040 = !DILocalVariable(name: "bpout", scope: !1023, file: !3, line: 248, type: !8)
!1041 = !DILocalVariable(name: "n_read", scope: !1023, file: !3, line: 251, type: !42)
!1042 = !DILocalVariable(name: "newlines", scope: !1023, file: !3, line: 258, type: !6)
!1043 = !DILocalVariable(name: "use_fionread", scope: !1023, file: !3, line: 263, type: !74)
!1044 = !DILocalVariable(name: "wp", scope: !1045, file: !3, line: 282, type: !8)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 281, column: 13)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 280, column: 15)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 277, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 275, column: 5)
!1049 = !DILocalVariable(name: "remaining_bytes", scope: !1045, file: !3, line: 283, type: !42)
!1050 = !DILocalVariable(name: "input_pending", scope: !1051, file: !3, line: 304, type: !74)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 303, column: 13)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 302, column: 15)
!1053 = !DILocalVariable(name: "n_to_read", scope: !1051, file: !3, line: 306, type: !6)
!1054 = !DILocation(line: 0, scope: !1023, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 744, column: 17, scope: !1003)
!1056 = !DILocation(line: 258, column: 18, scope: !1023, inlinedAt: !1055)
!1057 = !DILocation(line: 270, column: 14, scope: !1023, inlinedAt: !1055)
!1058 = !DILocation(line: 274, column: 3, scope: !1023, inlinedAt: !1055)
!1059 = !DILocation(line: 272, column: 9, scope: !1023, inlinedAt: !1055)
!1060 = !DILocation(line: 269, column: 7, scope: !1023, inlinedAt: !1055)
!1061 = !DILocation(line: 258, column: 7, scope: !1023, inlinedAt: !1055)
!1062 = !DILocation(line: 280, column: 32, scope: !1046, inlinedAt: !1055)
!1063 = !DILocation(line: 280, column: 15, scope: !1047, inlinedAt: !1055)
!1064 = !DILocation(line: 284, column: 15, scope: !1045, inlinedAt: !1055)
!1065 = !DILocation(line: 0, scope: !1045, inlinedAt: !1055)
!1066 = !DILocation(line: 286, column: 23, scope: !1067, inlinedAt: !1055)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 286, column: 23)
!1068 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 285, column: 17)
!1069 = !DILocation(line: 286, column: 63, scope: !1067, inlinedAt: !1055)
!1070 = !DILocation(line: 286, column: 23, scope: !1068, inlinedAt: !1055)
!1071 = !DILocation(line: 287, column: 21, scope: !1067, inlinedAt: !1055)
!1072 = !DILocation(line: 288, column: 22, scope: !1068, inlinedAt: !1055)
!1073 = !DILocation(line: 289, column: 43, scope: !1068, inlinedAt: !1055)
!1074 = !DILocation(line: 291, column: 30, scope: !1045, inlinedAt: !1055)
!1075 = !DILocation(line: 290, column: 17, scope: !1068, inlinedAt: !1055)
!1076 = distinct !{!1076, !1064, !1077, !758}
!1077 = !DILocation(line: 291, column: 48, scope: !1045, inlinedAt: !1055)
!1078 = !DILocalVariable(name: "__dest", arg: 1, scope: !1079, file: !1080, line: 34, type: !41)
!1079 = distinct !DISubprogram(name: "memmove", scope: !1080, file: !1080, line: 34, type: !1081, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1083)
!1080 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!41, !41, !959, !42}
!1083 = !{!1078, !1084, !1085}
!1084 = !DILocalVariable(name: "__src", arg: 2, scope: !1079, file: !1080, line: 34, type: !959)
!1085 = !DILocalVariable(name: "__len", arg: 3, scope: !1079, file: !1080, line: 34, type: !42)
!1086 = !DILocation(line: 0, scope: !1079, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 296, column: 15, scope: !1045, inlinedAt: !1055)
!1088 = !DILocation(line: 36, column: 10, scope: !1079, inlinedAt: !1087)
!1089 = !DILocation(line: 297, column: 30, scope: !1045, inlinedAt: !1055)
!1090 = !DILocation(line: 298, column: 13, scope: !1045, inlinedAt: !1055)
!1091 = !DILocation(line: 302, column: 20, scope: !1052, inlinedAt: !1055)
!1092 = !DILocation(line: 302, column: 15, scope: !1047, inlinedAt: !1055)
!1093 = !DILocation(line: 0, scope: !1051, inlinedAt: !1055)
!1094 = !DILocation(line: 306, column: 15, scope: !1051, inlinedAt: !1055)
!1095 = !DILocation(line: 306, column: 19, scope: !1051, inlinedAt: !1055)
!1096 = !DILocation(line: 312, column: 19, scope: !1097, inlinedAt: !1055)
!1097 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 312, column: 19)
!1098 = !DILocation(line: 313, column: 19, scope: !1097, inlinedAt: !1055)
!1099 = !DILocation(line: 313, column: 29, scope: !1097, inlinedAt: !1055)
!1100 = !DILocation(line: 313, column: 22, scope: !1097, inlinedAt: !1055)
!1101 = !DILocation(line: 313, column: 63, scope: !1097, inlinedAt: !1055)
!1102 = !DILocation(line: 312, column: 19, scope: !1051, inlinedAt: !1055)
!1103 = !DILocation(line: 321, column: 23, scope: !1104, inlinedAt: !1055)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 321, column: 23)
!1105 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 314, column: 17)
!1106 = !DILocation(line: 321, column: 43, scope: !1104, inlinedAt: !1055)
!1107 = !DILocation(line: 327, column: 40, scope: !1108, inlinedAt: !1055)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 326, column: 21)
!1109 = !DILocation(line: 328, column: 30, scope: !1108, inlinedAt: !1055)
!1110 = !DILocation(line: 327, column: 23, scope: !1108, inlinedAt: !1055)
!1111 = !DILocation(line: 330, column: 23, scope: !1108, inlinedAt: !1055)
!1112 = !DILocation(line: 333, column: 19, scope: !1113, inlinedAt: !1055)
!1113 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 333, column: 19)
!1114 = !DILocation(line: 333, column: 29, scope: !1113, inlinedAt: !1055)
!1115 = !DILocation(line: 337, column: 19, scope: !1051, inlinedAt: !1055)
!1116 = !DILocalVariable(name: "outbuf", arg: 1, scope: !1117, file: !3, line: 197, type: !8)
!1117 = distinct !DISubprogram(name: "write_pending", scope: !3, file: !3, line: 197, type: !1118, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !8, !7}
!1120 = !{!1116, !1121, !1122}
!1121 = !DILocalVariable(name: "bpout", arg: 2, scope: !1117, file: !3, line: 197, type: !7)
!1122 = !DILocalVariable(name: "n_write", scope: !1117, file: !3, line: 199, type: !42)
!1123 = !DILocation(line: 0, scope: !1117, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 338, column: 17, scope: !1125, inlinedAt: !1055)
!1125 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 337, column: 19)
!1126 = !DILocation(line: 199, column: 27, scope: !1117, inlinedAt: !1124)
!1127 = !DILocation(line: 200, column: 9, scope: !1128, inlinedAt: !1124)
!1128 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 200, column: 7)
!1129 = !DILocation(line: 200, column: 7, scope: !1117, inlinedAt: !1124)
!1130 = !DILocation(line: 202, column: 11, scope: !1131, inlinedAt: !1124)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 202, column: 11)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 201, column: 5)
!1133 = !DILocation(line: 202, column: 55, scope: !1131, inlinedAt: !1124)
!1134 = !DILocation(line: 202, column: 11, scope: !1132, inlinedAt: !1124)
!1135 = !DILocation(line: 203, column: 9, scope: !1131, inlinedAt: !1124)
!1136 = !DILocation(line: 342, column: 35, scope: !1051, inlinedAt: !1055)
!1137 = !DILocation(line: 342, column: 24, scope: !1051, inlinedAt: !1055)
!1138 = !DILocation(line: 343, column: 19, scope: !1051, inlinedAt: !1055)
!1139 = !DILocation(line: 345, column: 29, scope: !1140, inlinedAt: !1055)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 344, column: 17)
!1141 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 343, column: 19)
!1142 = !DILocation(line: 345, column: 42, scope: !1140, inlinedAt: !1055)
!1143 = !DILocation(line: 345, column: 19, scope: !1140, inlinedAt: !1055)
!1144 = !DILocation(line: 0, scope: !1117, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 346, column: 19, scope: !1140, inlinedAt: !1055)
!1146 = !DILocation(line: 199, column: 27, scope: !1117, inlinedAt: !1145)
!1147 = !DILocation(line: 200, column: 9, scope: !1128, inlinedAt: !1145)
!1148 = !DILocation(line: 200, column: 7, scope: !1117, inlinedAt: !1145)
!1149 = !DILocation(line: 202, column: 11, scope: !1131, inlinedAt: !1145)
!1150 = !DILocation(line: 202, column: 55, scope: !1131, inlinedAt: !1145)
!1151 = !DILocation(line: 202, column: 11, scope: !1132, inlinedAt: !1145)
!1152 = !DILocation(line: 203, column: 9, scope: !1131, inlinedAt: !1145)
!1153 = !DILocation(line: 0, scope: !1117, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 352, column: 19, scope: !1155, inlinedAt: !1055)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 351, column: 17)
!1156 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 350, column: 19)
!1157 = !DILocation(line: 199, column: 27, scope: !1117, inlinedAt: !1154)
!1158 = !DILocation(line: 200, column: 9, scope: !1128, inlinedAt: !1154)
!1159 = !DILocation(line: 200, column: 7, scope: !1117, inlinedAt: !1154)
!1160 = !DILocation(line: 202, column: 11, scope: !1131, inlinedAt: !1154)
!1161 = !DILocation(line: 202, column: 55, scope: !1131, inlinedAt: !1154)
!1162 = !DILocation(line: 202, column: 11, scope: !1132, inlinedAt: !1154)
!1163 = !DILocation(line: 203, column: 9, scope: !1131, inlinedAt: !1154)
!1164 = !DILocation(line: 361, column: 26, scope: !1051, inlinedAt: !1055)
!1165 = !DILocation(line: 362, column: 20, scope: !1051, inlinedAt: !1055)
!1166 = !{!710, !710, i64 0}
!1167 = !DILocation(line: 363, column: 13, scope: !1052, inlinedAt: !1055)
!1168 = !DILocation(line: 371, column: 19, scope: !1169, inlinedAt: !1055)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 371, column: 19)
!1170 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 365, column: 13)
!1171 = !DILocation(line: 371, column: 30, scope: !1169, inlinedAt: !1055)
!1172 = !DILocation(line: 371, column: 19, scope: !1170, inlinedAt: !1055)
!1173 = !DILocation(line: 373, column: 32, scope: !1174, inlinedAt: !1055)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 373, column: 23)
!1175 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 372, column: 17)
!1176 = !DILocation(line: 373, column: 23, scope: !1175, inlinedAt: !1055)
!1177 = !DILocation(line: 392, column: 30, scope: !1178, inlinedAt: !1055)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 392, column: 23)
!1179 = !DILocation(line: 133, column: 3, scope: !1180, inlinedAt: !1183)
!1180 = distinct !DISubprogram(name: "next_line_num", scope: !3, file: !3, line: 130, type: !718, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1181)
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "endp", scope: !1180, file: !3, line: 132, type: !8)
!1183 = distinct !DILocation(line: 394, column: 23, scope: !1184, inlinedAt: !1055)
!1184 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 393, column: 21)
!1185 = !DILocation(line: 0, scope: !1180, inlinedAt: !1183)
!1186 = !DILocation(line: 135, column: 18, scope: !1187, inlinedAt: !1183)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 135, column: 11)
!1188 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 134, column: 5)
!1189 = !DILocation(line: 135, column: 21, scope: !1187, inlinedAt: !1183)
!1190 = !DILocation(line: 135, column: 11, scope: !1188, inlinedAt: !1183)
!1191 = !DILocation(line: 137, column: 12, scope: !1188, inlinedAt: !1183)
!1192 = !DILocation(line: 137, column: 15, scope: !1188, inlinedAt: !1183)
!1193 = !DILocation(line: 139, column: 15, scope: !1180, inlinedAt: !1183)
!1194 = !DILocation(line: 138, column: 5, scope: !1188, inlinedAt: !1183)
!1195 = distinct !{!1195, !1179, !1196, !758}
!1196 = !DILocation(line: 139, column: 32, scope: !1180, inlinedAt: !1183)
!1197 = !DILocation(line: 140, column: 22, scope: !1198, inlinedAt: !1183)
!1198 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 140, column: 7)
!1199 = !DILocation(line: 140, column: 7, scope: !1180, inlinedAt: !1183)
!1200 = !DILocation(line: 141, column: 6, scope: !1198, inlinedAt: !1183)
!1201 = !DILocation(line: 141, column: 23, scope: !1198, inlinedAt: !1183)
!1202 = !DILocation(line: 141, column: 5, scope: !1198, inlinedAt: !1183)
!1203 = !DILocation(line: 143, column: 15, scope: !1198, inlinedAt: !1183)
!1204 = !DILocation(line: 144, column: 7, scope: !1205, inlinedAt: !1183)
!1205 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 144, column: 7)
!1206 = !DILocation(line: 144, column: 24, scope: !1205, inlinedAt: !1183)
!1207 = !DILocation(line: 144, column: 22, scope: !1205, inlinedAt: !1183)
!1208 = !DILocation(line: 144, column: 7, scope: !1180, inlinedAt: !1183)
!1209 = !DILocation(line: 145, column: 19, scope: !1205, inlinedAt: !1183)
!1210 = !DILocation(line: 145, column: 5, scope: !1205, inlinedAt: !1183)
!1211 = !DILocation(line: 395, column: 46, scope: !1184, inlinedAt: !1055)
!1212 = !DILocalVariable(name: "__dest", arg: 1, scope: !1213, file: !1080, line: 84, type: !1216)
!1213 = distinct !DISubprogram(name: "stpcpy", scope: !1080, file: !1080, line: 84, type: !1214, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1218)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!8, !1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!1218 = !{!1212, !1219}
!1219 = !DILocalVariable(name: "__src", arg: 2, scope: !1213, file: !1080, line: 84, type: !1217)
!1220 = !DILocation(line: 0, scope: !1213, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 395, column: 31, scope: !1184, inlinedAt: !1055)
!1222 = !DILocation(line: 86, column: 10, scope: !1213, inlinedAt: !1221)
!1223 = !DILocation(line: 396, column: 21, scope: !1184, inlinedAt: !1055)
!1224 = !DILocation(line: 0, scope: !1169, inlinedAt: !1055)
!1225 = !DILocation(line: 401, column: 19, scope: !1170, inlinedAt: !1055)
!1226 = !DILocation(line: 402, column: 23, scope: !1227, inlinedAt: !1055)
!1227 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 401, column: 19)
!1228 = !DILocation(line: 402, column: 26, scope: !1227, inlinedAt: !1055)
!1229 = !DILocation(line: 402, column: 17, scope: !1227, inlinedAt: !1055)
!1230 = !DILocation(line: 406, column: 21, scope: !1170, inlinedAt: !1055)
!1231 = !DILocation(line: 406, column: 24, scope: !1170, inlinedAt: !1055)
!1232 = !DILocation(line: 0, scope: !1047, inlinedAt: !1055)
!1233 = !DILocation(line: 410, column: 17, scope: !1048, inlinedAt: !1055)
!1234 = !DILocation(line: 409, column: 9, scope: !1047, inlinedAt: !1055)
!1235 = distinct !{!1235, !1236, !1237, !758}
!1236 = !DILocation(line: 276, column: 7, scope: !1048, inlinedAt: !1055)
!1237 = !DILocation(line: 410, column: 24, scope: !1048, inlinedAt: !1055)
!1238 = !DILocation(line: 414, column: 20, scope: !1239, inlinedAt: !1055)
!1239 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 414, column: 11)
!1240 = !DILocation(line: 414, column: 25, scope: !1239, inlinedAt: !1055)
!1241 = !DILocation(line: 133, column: 3, scope: !1180, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 416, column: 11, scope: !1243, inlinedAt: !1055)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 415, column: 9)
!1244 = !DILocation(line: 0, scope: !1180, inlinedAt: !1242)
!1245 = !DILocation(line: 135, column: 18, scope: !1187, inlinedAt: !1242)
!1246 = !DILocation(line: 135, column: 21, scope: !1187, inlinedAt: !1242)
!1247 = !DILocation(line: 135, column: 11, scope: !1188, inlinedAt: !1242)
!1248 = !DILocation(line: 137, column: 12, scope: !1188, inlinedAt: !1242)
!1249 = !DILocation(line: 137, column: 15, scope: !1188, inlinedAt: !1242)
!1250 = !DILocation(line: 139, column: 15, scope: !1180, inlinedAt: !1242)
!1251 = !DILocation(line: 138, column: 5, scope: !1188, inlinedAt: !1242)
!1252 = distinct !{!1252, !1241, !1253, !758}
!1253 = !DILocation(line: 139, column: 32, scope: !1180, inlinedAt: !1242)
!1254 = !DILocation(line: 140, column: 22, scope: !1198, inlinedAt: !1242)
!1255 = !DILocation(line: 140, column: 7, scope: !1180, inlinedAt: !1242)
!1256 = !DILocation(line: 141, column: 6, scope: !1198, inlinedAt: !1242)
!1257 = !DILocation(line: 141, column: 23, scope: !1198, inlinedAt: !1242)
!1258 = !DILocation(line: 141, column: 5, scope: !1198, inlinedAt: !1242)
!1259 = !DILocation(line: 143, column: 15, scope: !1198, inlinedAt: !1242)
!1260 = !DILocation(line: 144, column: 7, scope: !1205, inlinedAt: !1242)
!1261 = !DILocation(line: 144, column: 24, scope: !1205, inlinedAt: !1242)
!1262 = !DILocation(line: 144, column: 22, scope: !1205, inlinedAt: !1242)
!1263 = !DILocation(line: 144, column: 7, scope: !1180, inlinedAt: !1242)
!1264 = !DILocation(line: 145, column: 19, scope: !1205, inlinedAt: !1242)
!1265 = !DILocation(line: 145, column: 5, scope: !1205, inlinedAt: !1242)
!1266 = !DILocation(line: 417, column: 34, scope: !1243, inlinedAt: !1055)
!1267 = !DILocation(line: 0, scope: !1213, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 417, column: 19, scope: !1243, inlinedAt: !1055)
!1269 = !DILocation(line: 86, column: 10, scope: !1213, inlinedAt: !1268)
!1270 = !DILocation(line: 418, column: 9, scope: !1243, inlinedAt: !1055)
!1271 = !DILocation(line: 428, column: 11, scope: !1048, inlinedAt: !1055)
!1272 = !DILocation(line: 0, scope: !1048, inlinedAt: !1055)
!1273 = !DILocation(line: 432, column: 22, scope: !1274, inlinedAt: !1055)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 432, column: 19)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 431, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 429, column: 9)
!1277 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 428, column: 11)
!1278 = !DILocation(line: 432, column: 19, scope: !1275, inlinedAt: !1055)
!1279 = !DILocation(line: 434, column: 26, scope: !1280, inlinedAt: !1055)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 434, column: 23)
!1281 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 433, column: 17)
!1282 = !DILocation(line: 434, column: 23, scope: !1281, inlinedAt: !1055)
!1283 = !DILocation(line: 435, column: 27, scope: !1280, inlinedAt: !1055)
!1284 = !DILocation(line: 435, column: 30, scope: !1280, inlinedAt: !1055)
!1285 = !DILocation(line: 435, column: 21, scope: !1280, inlinedAt: !1055)
!1286 = !DILocation(line: 436, column: 31, scope: !1287, inlinedAt: !1055)
!1287 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 436, column: 28)
!1288 = !DILocation(line: 0, scope: !1287, inlinedAt: !1055)
!1289 = !DILocation(line: 436, column: 28, scope: !1280, inlinedAt: !1055)
!1290 = !DILocation(line: 438, column: 32, scope: !1291, inlinedAt: !1055)
!1291 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 437, column: 21)
!1292 = !DILocation(line: 439, column: 29, scope: !1291, inlinedAt: !1055)
!1293 = !DILocation(line: 439, column: 32, scope: !1291, inlinedAt: !1055)
!1294 = !DILocation(line: 440, column: 21, scope: !1291, inlinedAt: !1055)
!1295 = !DILocation(line: 443, column: 32, scope: !1296, inlinedAt: !1055)
!1296 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 442, column: 21)
!1297 = !DILocation(line: 444, column: 29, scope: !1296, inlinedAt: !1055)
!1298 = !DILocation(line: 444, column: 32, scope: !1296, inlinedAt: !1055)
!1299 = !DILocation(line: 445, column: 30, scope: !1300, inlinedAt: !1055)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 445, column: 27)
!1301 = !DILocation(line: 445, column: 27, scope: !1296, inlinedAt: !1055)
!1302 = !DILocation(line: 447, column: 34, scope: !1303, inlinedAt: !1055)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 447, column: 31)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 446, column: 25)
!1305 = !DILocation(line: 447, column: 31, scope: !1304, inlinedAt: !1055)
!1306 = !DILocation(line: 448, column: 43, scope: !1303, inlinedAt: !1055)
!1307 = !DILocation(line: 448, column: 35, scope: !1303, inlinedAt: !1055)
!1308 = !DILocation(line: 448, column: 38, scope: !1303, inlinedAt: !1055)
!1309 = !DILocation(line: 448, column: 29, scope: !1303, inlinedAt: !1055)
!1310 = !DILocation(line: 451, column: 37, scope: !1311, inlinedAt: !1055)
!1311 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 450, column: 29)
!1312 = !DILocation(line: 451, column: 40, scope: !1311, inlinedAt: !1055)
!1313 = !DILocation(line: 452, column: 37, scope: !1311, inlinedAt: !1055)
!1314 = !DILocation(line: 452, column: 40, scope: !1311, inlinedAt: !1055)
!1315 = !DILocation(line: 457, column: 33, scope: !1316, inlinedAt: !1055)
!1316 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 456, column: 25)
!1317 = !DILocation(line: 457, column: 36, scope: !1316, inlinedAt: !1055)
!1318 = !DILocation(line: 458, column: 47, scope: !1316, inlinedAt: !1055)
!1319 = !DILocation(line: 458, column: 33, scope: !1316, inlinedAt: !1055)
!1320 = !DILocation(line: 458, column: 36, scope: !1316, inlinedAt: !1055)
!1321 = !DILocation(line: 462, column: 27, scope: !1322, inlinedAt: !1055)
!1322 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 462, column: 24)
!1323 = !DILocation(line: 462, column: 35, scope: !1322, inlinedAt: !1055)
!1324 = !DILocation(line: 463, column: 23, scope: !1322, inlinedAt: !1055)
!1325 = !DILocation(line: 463, column: 26, scope: !1322, inlinedAt: !1055)
!1326 = !DILocation(line: 463, column: 17, scope: !1322, inlinedAt: !1055)
!1327 = !DILocation(line: 464, column: 27, scope: !1328, inlinedAt: !1055)
!1328 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 464, column: 24)
!1329 = !DILocation(line: 464, column: 24, scope: !1322, inlinedAt: !1055)
!1330 = distinct !{!1330, !1058, !1331}
!1331 = !DILocation(line: 499, column: 5, scope: !1023, inlinedAt: !1055)
!1332 = !DILocation(line: 471, column: 25, scope: !1333, inlinedAt: !1055)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 470, column: 17)
!1334 = !DILocation(line: 471, column: 28, scope: !1333, inlinedAt: !1055)
!1335 = !DILocation(line: 472, column: 33, scope: !1333, inlinedAt: !1055)
!1336 = !DILocation(line: 472, column: 25, scope: !1333, inlinedAt: !1055)
!1337 = !DILocation(line: 472, column: 28, scope: !1333, inlinedAt: !1055)
!1338 = !DILocation(line: 0, scope: !1274, inlinedAt: !1055)
!1339 = !DILocation(line: 475, column: 25, scope: !1275, inlinedAt: !1055)
!1340 = !DILocation(line: 475, column: 20, scope: !1275, inlinedAt: !1055)
!1341 = !DILocation(line: 430, column: 11, scope: !1276, inlinedAt: !1055)
!1342 = distinct !{!1342, !1341, !1343}
!1343 = !DILocation(line: 476, column: 13, scope: !1276, inlinedAt: !1055)
!1344 = !DILocation(line: 483, column: 22, scope: !1345, inlinedAt: !1055)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 483, column: 19)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 482, column: 13)
!1347 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 479, column: 9)
!1348 = !DILocation(line: 483, column: 30, scope: !1345, inlinedAt: !1055)
!1349 = !DILocation(line: 485, column: 25, scope: !1350, inlinedAt: !1055)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 484, column: 17)
!1351 = !DILocation(line: 485, column: 28, scope: !1350, inlinedAt: !1055)
!1352 = !DILocation(line: 486, column: 25, scope: !1350, inlinedAt: !1055)
!1353 = !DILocation(line: 486, column: 28, scope: !1350, inlinedAt: !1055)
!1354 = !DILocation(line: 487, column: 17, scope: !1350, inlinedAt: !1055)
!1355 = !DILocation(line: 488, column: 27, scope: !1356, inlinedAt: !1055)
!1356 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 488, column: 24)
!1357 = !DILocation(line: 488, column: 24, scope: !1345, inlinedAt: !1055)
!1358 = !DILocation(line: 489, column: 23, scope: !1356, inlinedAt: !1055)
!1359 = !DILocation(line: 489, column: 26, scope: !1356, inlinedAt: !1055)
!1360 = !DILocation(line: 0, scope: !1345, inlinedAt: !1055)
!1361 = !DILocation(line: 496, column: 25, scope: !1346, inlinedAt: !1055)
!1362 = !DILocation(line: 496, column: 20, scope: !1346, inlinedAt: !1055)
!1363 = !DILocation(line: 481, column: 11, scope: !1347, inlinedAt: !1055)
!1364 = distinct !{!1364, !1363, !1365}
!1365 = !DILocation(line: 497, column: 13, scope: !1347, inlinedAt: !1055)
!1366 = !DILocation(line: 749, column: 11, scope: !1003)
!1367 = !DILocation(line: 0, scope: !950)
!1368 = !DILocation(line: 752, column: 7, scope: !132)
!1369 = !DILocation(line: 0, scope: !132)
!1370 = !DILocation(line: 754, column: 5, scope: !132)
!1371 = !DILocation(line: 755, column: 12, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !132, file: !3, line: 755, column: 11)
!1373 = !DILocation(line: 755, column: 32, scope: !1372)
!1374 = !DILocation(line: 755, column: 42, scope: !1372)
!1375 = !DILocation(line: 755, column: 35, scope: !1372)
!1376 = !DILocation(line: 755, column: 54, scope: !1372)
!1377 = !DILocation(line: 755, column: 11, scope: !132)
!1378 = !DILocation(line: 757, column: 21, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 756, column: 9)
!1380 = !DILocation(line: 757, column: 34, scope: !1379)
!1381 = !DILocation(line: 757, column: 11, scope: !1379)
!1382 = !DILocation(line: 759, column: 9, scope: !1379)
!1383 = !DILocation(line: 761, column: 10, scope: !2)
!1384 = !DILocation(line: 761, column: 19, scope: !2)
!1385 = !DILocation(line: 760, column: 5, scope: !132)
!1386 = distinct !{!1386, !898, !1387, !758}
!1387 = !DILocation(line: 761, column: 25, scope: !2)
!1388 = !DILocation(line: 763, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !2, file: !3, line: 763, column: 7)
!1390 = !DILocation(line: 763, column: 23, scope: !1389)
!1391 = !DILocation(line: 763, column: 26, scope: !1389)
!1392 = !DILocation(line: 763, column: 47, scope: !1389)
!1393 = !DILocation(line: 763, column: 7, scope: !2)
!1394 = !DILocation(line: 764, column: 5, scope: !1389)
!1395 = !DILocation(line: 766, column: 10, scope: !2)
!1396 = !DILocation(line: 767, column: 1, scope: !2)
!1397 = !DISubprogram(name: "getpagesize", scope: !1398, file: !1398, line: 990, type: !1399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1398 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!6}
!1401 = !DISubprogram(name: "bindtextdomain", scope: !779, file: !779, line: 86, type: !1402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!8, !48, !48}
!1404 = !DISubprogram(name: "textdomain", scope: !779, file: !779, line: 82, type: !1405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!8, !48}
!1407 = !DISubprogram(name: "atexit", scope: !1408, file: !1408, line: 595, type: !1409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1408 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!6, !1411}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!1412 = !DISubprogram(name: "getopt_long", scope: !136, file: !136, line: 66, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!6, !6, !1415, !48, !1417, !141}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1418 = !DISubprogram(name: "fstat", scope: !1419, file: !1419, line: 210, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1419 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!6, !6, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1423 = !DISubprogram(name: "error", scope: !1424, file: !1424, line: 52, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1424 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !6, !6, !48, null}
!1427 = !DISubprogram(name: "open", scope: !1428, file: !1428, line: 196, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1428 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!6, !48, !6, null}
!1431 = !DISubprogram(name: "lseek", scope: !1398, file: !1398, line: 334, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!105, !6, !105, !6}
!1434 = !DISubprogram(name: "ioctl", scope: !1435, file: !1435, line: 41, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1435 = !DIFile(filename: "/usr/include/sys/ioctl.h", directory: "")
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!6, !6, !44, null}
!1438 = !DISubprogram(name: "close", scope: !1398, file: !1398, line: 353, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!6, !6}
!1441 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !154, file: !154, line: 51, type: !728, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !1442)
!1442 = !{!1443}
!1443 = !DILocalVariable(name: "file", arg: 1, scope: !1441, file: !154, line: 51, type: !48)
!1444 = !DILocation(line: 0, scope: !1441)
!1445 = !DILocation(line: 53, column: 13, scope: !1441)
!1446 = !DILocation(line: 54, column: 1, scope: !1441)
!1447 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !154, file: !154, line: 88, type: !1448, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !74}
!1450 = !{!1451}
!1451 = !DILocalVariable(name: "ignore", arg: 1, scope: !1447, file: !154, line: 88, type: !74)
!1452 = !DILocation(line: 0, scope: !1447)
!1453 = !DILocation(line: 90, column: 16, scope: !1447)
!1454 = !{!1455, !1455, i64 0}
!1455 = !{!"_Bool", !710, i64 0}
!1456 = !DILocation(line: 91, column: 1, scope: !1447)
!1457 = distinct !DISubprogram(name: "close_stdout", scope: !154, file: !154, line: 117, type: !718, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !153, retainedNodes: !1458)
!1458 = !{!1459}
!1459 = !DILocalVariable(name: "write_error", scope: !1460, file: !154, line: 122, type: !48)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !154, line: 121, column: 5)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !154, line: 119, column: 7)
!1462 = !DILocation(line: 119, column: 21, scope: !1461)
!1463 = !DILocation(line: 119, column: 7, scope: !1461)
!1464 = !DILocation(line: 119, column: 29, scope: !1461)
!1465 = !DILocation(line: 120, column: 7, scope: !1461)
!1466 = !DILocation(line: 120, column: 12, scope: !1461)
!1467 = !{i8 0, i8 2}
!1468 = !DILocation(line: 120, column: 25, scope: !1461)
!1469 = !DILocation(line: 120, column: 28, scope: !1461)
!1470 = !DILocation(line: 120, column: 34, scope: !1461)
!1471 = !DILocation(line: 119, column: 7, scope: !1457)
!1472 = !DILocation(line: 122, column: 33, scope: !1460)
!1473 = !DILocation(line: 0, scope: !1460)
!1474 = !DILocation(line: 123, column: 11, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1460, file: !154, line: 123, column: 11)
!1476 = !DILocation(line: 0, scope: !1475)
!1477 = !DILocation(line: 123, column: 11, scope: !1460)
!1478 = !DILocation(line: 124, column: 36, scope: !1475)
!1479 = !DILocation(line: 124, column: 9, scope: !1475)
!1480 = !DILocation(line: 127, column: 9, scope: !1475)
!1481 = !DILocation(line: 129, column: 14, scope: !1460)
!1482 = !DILocation(line: 129, column: 7, scope: !1460)
!1483 = !DILocation(line: 134, column: 42, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1457, file: !154, line: 134, column: 7)
!1485 = !DILocation(line: 134, column: 28, scope: !1484)
!1486 = !DILocation(line: 134, column: 50, scope: !1484)
!1487 = !DILocation(line: 134, column: 7, scope: !1457)
!1488 = !DILocation(line: 135, column: 12, scope: !1484)
!1489 = !DILocation(line: 135, column: 5, scope: !1484)
!1490 = !DILocation(line: 136, column: 1, scope: !1457)
!1491 = distinct !DISubprogram(name: "fdadvise", scope: !245, file: !245, line: 31, type: !1492, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1496)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !6, !1494, !1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !783, line: 63, baseType: !104)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !28, line: 52, baseType: !27)
!1496 = !{!1497, !1498, !1499, !1500, !1501}
!1497 = !DILocalVariable(name: "fd", arg: 1, scope: !1491, file: !245, line: 31, type: !6)
!1498 = !DILocalVariable(name: "offset", arg: 2, scope: !1491, file: !245, line: 31, type: !1494)
!1499 = !DILocalVariable(name: "len", arg: 3, scope: !1491, file: !245, line: 31, type: !1494)
!1500 = !DILocalVariable(name: "advice", arg: 4, scope: !1491, file: !245, line: 31, type: !1495)
!1501 = !DILocalVariable(name: "__x", scope: !1502, file: !245, line: 34, type: !6)
!1502 = distinct !DILexicalBlock(scope: !1491, file: !245, line: 34, column: 3)
!1503 = !DILocation(line: 0, scope: !1491)
!1504 = !DILocation(line: 34, column: 3, scope: !1502)
!1505 = !DILocation(line: 0, scope: !1502)
!1506 = !DILocation(line: 36, column: 1, scope: !1491)
!1507 = !DISubprogram(name: "posix_fadvise", scope: !1428, file: !1428, line: 288, type: !1508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!6, !6, !105, !105, !6}
!1510 = distinct !DISubprogram(name: "fadvise", scope: !245, file: !245, line: 39, type: !1511, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1548)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !1513, !1495}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1515, line: 7, baseType: !1516)
!1515 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !788, line: 49, size: 1728, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1516, file: !788, line: 51, baseType: !6, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1516, file: !788, line: 54, baseType: !8, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1516, file: !788, line: 55, baseType: !8, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1516, file: !788, line: 56, baseType: !8, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1516, file: !788, line: 57, baseType: !8, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1516, file: !788, line: 58, baseType: !8, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1516, file: !788, line: 59, baseType: !8, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1516, file: !788, line: 60, baseType: !8, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1516, file: !788, line: 61, baseType: !8, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1516, file: !788, line: 64, baseType: !8, size: 64, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1516, file: !788, line: 65, baseType: !8, size: 64, offset: 640)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1516, file: !788, line: 66, baseType: !8, size: 64, offset: 704)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1516, file: !788, line: 68, baseType: !803, size: 64, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1516, file: !788, line: 70, baseType: !1532, size: 64, offset: 832)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1516, file: !788, line: 72, baseType: !6, size: 32, offset: 896)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1516, file: !788, line: 73, baseType: !6, size: 32, offset: 928)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1516, file: !788, line: 74, baseType: !104, size: 64, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1516, file: !788, line: 77, baseType: !196, size: 16, offset: 1024)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1516, file: !788, line: 78, baseType: !811, size: 8, offset: 1040)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1516, file: !788, line: 79, baseType: !813, size: 8, offset: 1048)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1516, file: !788, line: 81, baseType: !817, size: 64, offset: 1088)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1516, file: !788, line: 89, baseType: !820, size: 64, offset: 1152)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1516, file: !788, line: 91, baseType: !822, size: 64, offset: 1216)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1516, file: !788, line: 92, baseType: !825, size: 64, offset: 1280)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1516, file: !788, line: 93, baseType: !1532, size: 64, offset: 1344)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1516, file: !788, line: 94, baseType: !41, size: 64, offset: 1408)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1516, file: !788, line: 95, baseType: !42, size: 64, offset: 1472)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1516, file: !788, line: 96, baseType: !6, size: 32, offset: 1536)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1516, file: !788, line: 98, baseType: !60, size: 160, offset: 1568)
!1548 = !{!1549, !1550}
!1549 = !DILocalVariable(name: "fp", arg: 1, scope: !1510, file: !245, line: 39, type: !1513)
!1550 = !DILocalVariable(name: "advice", arg: 2, scope: !1510, file: !245, line: 39, type: !1495)
!1551 = !DILocation(line: 0, scope: !1510)
!1552 = !DILocation(line: 41, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1510, file: !245, line: 41, column: 7)
!1554 = !DILocation(line: 41, column: 7, scope: !1510)
!1555 = !DILocation(line: 42, column: 15, scope: !1553)
!1556 = !DILocation(line: 0, scope: !1491, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 42, column: 5, scope: !1553)
!1558 = !DILocation(line: 34, column: 3, scope: !1502, inlinedAt: !1557)
!1559 = !DILocation(line: 0, scope: !1502, inlinedAt: !1557)
!1560 = !DILocation(line: 42, column: 5, scope: !1553)
!1561 = !DILocation(line: 43, column: 1, scope: !1510)
!1562 = !DISubprogram(name: "fileno", scope: !783, file: !783, line: 785, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!6, !1532}
!1565 = distinct !DISubprogram(name: "full_write", scope: !248, file: !248, line: 58, type: !1566, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!42, !6, !959, !42}
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574}
!1569 = !DILocalVariable(name: "fd", arg: 1, scope: !1565, file: !248, line: 58, type: !6)
!1570 = !DILocalVariable(name: "buf", arg: 2, scope: !1565, file: !248, line: 58, type: !959)
!1571 = !DILocalVariable(name: "count", arg: 3, scope: !1565, file: !248, line: 58, type: !42)
!1572 = !DILocalVariable(name: "total", scope: !1565, file: !248, line: 60, type: !42)
!1573 = !DILocalVariable(name: "ptr", scope: !1565, file: !248, line: 61, type: !48)
!1574 = !DILocalVariable(name: "n_rw", scope: !1575, file: !248, line: 65, type: !42)
!1575 = distinct !DILexicalBlock(scope: !1565, file: !248, line: 64, column: 5)
!1576 = !DILocation(line: 0, scope: !1565)
!1577 = !DILocation(line: 63, column: 16, scope: !1565)
!1578 = !DILocation(line: 63, column: 3, scope: !1565)
!1579 = !DILocation(line: 65, column: 21, scope: !1575)
!1580 = !DILocation(line: 0, scope: !1575)
!1581 = !DILocation(line: 66, column: 11, scope: !1575)
!1582 = !DILocation(line: 70, column: 11, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !248, line: 69, column: 9)
!1584 = distinct !DILexicalBlock(scope: !1575, file: !248, line: 68, column: 11)
!1585 = !DILocation(line: 70, column: 17, scope: !1583)
!1586 = !DILocation(line: 71, column: 11, scope: !1583)
!1587 = !DILocation(line: 73, column: 13, scope: !1575)
!1588 = !DILocation(line: 74, column: 11, scope: !1575)
!1589 = !DILocation(line: 75, column: 13, scope: !1575)
!1590 = !DILocation(line: 78, column: 3, scope: !1565)
!1591 = distinct !DISubprogram(name: "set_program_name", scope: !167, file: !167, line: 39, type: !728, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !1592)
!1592 = !{!1593, !1594, !1595}
!1593 = !DILocalVariable(name: "argv0", arg: 1, scope: !1591, file: !167, line: 39, type: !48)
!1594 = !DILocalVariable(name: "slash", scope: !1591, file: !167, line: 46, type: !48)
!1595 = !DILocalVariable(name: "base", scope: !1591, file: !167, line: 47, type: !48)
!1596 = !DILocation(line: 0, scope: !1591)
!1597 = !DILocation(line: 51, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1591, file: !167, line: 51, column: 7)
!1599 = !DILocation(line: 51, column: 7, scope: !1591)
!1600 = !DILocation(line: 55, column: 14, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !167, line: 52, column: 5)
!1602 = !DILocation(line: 54, column: 7, scope: !1601)
!1603 = !DILocation(line: 56, column: 7, scope: !1601)
!1604 = !DILocation(line: 59, column: 11, scope: !1591)
!1605 = !DILocation(line: 60, column: 17, scope: !1591)
!1606 = !DILocation(line: 60, column: 11, scope: !1591)
!1607 = !DILocation(line: 61, column: 12, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1591, file: !167, line: 61, column: 7)
!1609 = !DILocation(line: 61, column: 20, scope: !1608)
!1610 = !DILocation(line: 61, column: 25, scope: !1608)
!1611 = !DILocation(line: 61, column: 42, scope: !1608)
!1612 = !DILocation(line: 61, column: 28, scope: !1608)
!1613 = !DILocation(line: 61, column: 61, scope: !1608)
!1614 = !DILocation(line: 61, column: 7, scope: !1591)
!1615 = !DILocation(line: 64, column: 11, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !167, line: 64, column: 11)
!1617 = distinct !DILexicalBlock(scope: !1608, file: !167, line: 62, column: 5)
!1618 = !DILocation(line: 64, column: 36, scope: !1616)
!1619 = !DILocation(line: 64, column: 11, scope: !1617)
!1620 = !DILocation(line: 66, column: 24, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !167, line: 65, column: 9)
!1622 = !DILocation(line: 70, column: 41, scope: !1621)
!1623 = !DILocation(line: 72, column: 9, scope: !1621)
!1624 = !DILocation(line: 84, column: 16, scope: !1591)
!1625 = !DILocation(line: 90, column: 27, scope: !1591)
!1626 = !DILocation(line: 92, column: 1, scope: !1591)
!1627 = distinct !DISubprogram(name: "clone_quoting_options", scope: !173, file: !173, line: 122, type: !1628, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1631)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1630, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1631 = !{!1632, !1633, !1634}
!1632 = !DILocalVariable(name: "o", arg: 1, scope: !1627, file: !173, line: 122, type: !1630)
!1633 = !DILocalVariable(name: "e", scope: !1627, file: !173, line: 124, type: !6)
!1634 = !DILocalVariable(name: "p", scope: !1627, file: !173, line: 125, type: !1630)
!1635 = !DILocation(line: 0, scope: !1627)
!1636 = !DILocation(line: 124, column: 11, scope: !1627)
!1637 = !DILocation(line: 125, column: 40, scope: !1627)
!1638 = !DILocation(line: 125, column: 31, scope: !1627)
!1639 = !DILocation(line: 127, column: 9, scope: !1627)
!1640 = !DILocation(line: 128, column: 3, scope: !1627)
!1641 = distinct !DISubprogram(name: "get_quoting_style", scope: !173, file: !173, line: 133, type: !1642, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1646)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!12, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!1646 = !{!1647}
!1647 = !DILocalVariable(name: "o", arg: 1, scope: !1641, file: !173, line: 133, type: !1644)
!1648 = !DILocation(line: 0, scope: !1641)
!1649 = !DILocation(line: 135, column: 11, scope: !1641)
!1650 = !DILocation(line: 135, column: 46, scope: !1641)
!1651 = !{!1652, !710, i64 0}
!1652 = !{!"quoting_options", !710, i64 0, !875, i64 4, !710, i64 8, !709, i64 40, !709, i64 48}
!1653 = !DILocation(line: 135, column: 3, scope: !1641)
!1654 = distinct !DISubprogram(name: "set_quoting_style", scope: !173, file: !173, line: 141, type: !1655, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1630, !12}
!1657 = !{!1658, !1659}
!1658 = !DILocalVariable(name: "o", arg: 1, scope: !1654, file: !173, line: 141, type: !1630)
!1659 = !DILocalVariable(name: "s", arg: 2, scope: !1654, file: !173, line: 141, type: !12)
!1660 = !DILocation(line: 0, scope: !1654)
!1661 = !DILocation(line: 143, column: 4, scope: !1654)
!1662 = !DILocation(line: 143, column: 39, scope: !1654)
!1663 = !DILocation(line: 143, column: 45, scope: !1654)
!1664 = !DILocation(line: 144, column: 1, scope: !1654)
!1665 = distinct !DISubprogram(name: "set_char_quoting", scope: !173, file: !173, line: 152, type: !1666, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1668)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!6, !1630, !9, !6}
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1675, !1676}
!1669 = !DILocalVariable(name: "o", arg: 1, scope: !1665, file: !173, line: 152, type: !1630)
!1670 = !DILocalVariable(name: "c", arg: 2, scope: !1665, file: !173, line: 152, type: !9)
!1671 = !DILocalVariable(name: "i", arg: 3, scope: !1665, file: !173, line: 152, type: !6)
!1672 = !DILocalVariable(name: "uc", scope: !1665, file: !173, line: 154, type: !1037)
!1673 = !DILocalVariable(name: "p", scope: !1665, file: !173, line: 155, type: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1675 = !DILocalVariable(name: "shift", scope: !1665, file: !173, line: 157, type: !6)
!1676 = !DILocalVariable(name: "r", scope: !1665, file: !173, line: 158, type: !6)
!1677 = !DILocation(line: 0, scope: !1665)
!1678 = !DILocation(line: 156, column: 6, scope: !1665)
!1679 = !DILocation(line: 156, column: 62, scope: !1665)
!1680 = !DILocation(line: 156, column: 57, scope: !1665)
!1681 = !DILocation(line: 157, column: 15, scope: !1665)
!1682 = !DILocation(line: 158, column: 12, scope: !1665)
!1683 = !DILocation(line: 158, column: 15, scope: !1665)
!1684 = !DILocation(line: 158, column: 25, scope: !1665)
!1685 = !DILocation(line: 159, column: 13, scope: !1665)
!1686 = !DILocation(line: 159, column: 18, scope: !1665)
!1687 = !DILocation(line: 159, column: 23, scope: !1665)
!1688 = !DILocation(line: 159, column: 6, scope: !1665)
!1689 = !DILocation(line: 160, column: 3, scope: !1665)
!1690 = distinct !DISubprogram(name: "set_quoting_flags", scope: !173, file: !173, line: 168, type: !1691, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!6, !1630, !6}
!1693 = !{!1694, !1695, !1696}
!1694 = !DILocalVariable(name: "o", arg: 1, scope: !1690, file: !173, line: 168, type: !1630)
!1695 = !DILocalVariable(name: "i", arg: 2, scope: !1690, file: !173, line: 168, type: !6)
!1696 = !DILocalVariable(name: "r", scope: !1690, file: !173, line: 170, type: !6)
!1697 = !DILocation(line: 0, scope: !1690)
!1698 = !DILocation(line: 171, column: 8, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1690, file: !173, line: 171, column: 7)
!1700 = !DILocation(line: 171, column: 7, scope: !1690)
!1701 = !DILocation(line: 173, column: 10, scope: !1690)
!1702 = !{!1652, !875, i64 4}
!1703 = !DILocation(line: 174, column: 12, scope: !1690)
!1704 = !DILocation(line: 175, column: 3, scope: !1690)
!1705 = distinct !DISubprogram(name: "set_custom_quoting", scope: !173, file: !173, line: 179, type: !1706, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1708)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1630, !48, !48}
!1708 = !{!1709, !1710, !1711}
!1709 = !DILocalVariable(name: "o", arg: 1, scope: !1705, file: !173, line: 179, type: !1630)
!1710 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1705, file: !173, line: 180, type: !48)
!1711 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1705, file: !173, line: 180, type: !48)
!1712 = !DILocation(line: 0, scope: !1705)
!1713 = !DILocation(line: 182, column: 8, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1705, file: !173, line: 182, column: 7)
!1715 = !DILocation(line: 182, column: 7, scope: !1705)
!1716 = !DILocation(line: 184, column: 6, scope: !1705)
!1717 = !DILocation(line: 184, column: 12, scope: !1705)
!1718 = !DILocation(line: 185, column: 8, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1705, file: !173, line: 185, column: 7)
!1720 = !DILocation(line: 185, column: 19, scope: !1719)
!1721 = !DILocation(line: 186, column: 5, scope: !1719)
!1722 = !DILocation(line: 187, column: 6, scope: !1705)
!1723 = !DILocation(line: 187, column: 17, scope: !1705)
!1724 = !{!1652, !709, i64 40}
!1725 = !DILocation(line: 188, column: 6, scope: !1705)
!1726 = !DILocation(line: 188, column: 18, scope: !1705)
!1727 = !{!1652, !709, i64 48}
!1728 = !DILocation(line: 189, column: 1, scope: !1705)
!1729 = distinct !DISubprogram(name: "quotearg_buffer", scope: !173, file: !173, line: 784, type: !1730, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!42, !8, !42, !48, !42, !1644}
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1733 = !DILocalVariable(name: "buffer", arg: 1, scope: !1729, file: !173, line: 784, type: !8)
!1734 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1729, file: !173, line: 784, type: !42)
!1735 = !DILocalVariable(name: "arg", arg: 3, scope: !1729, file: !173, line: 785, type: !48)
!1736 = !DILocalVariable(name: "argsize", arg: 4, scope: !1729, file: !173, line: 785, type: !42)
!1737 = !DILocalVariable(name: "o", arg: 5, scope: !1729, file: !173, line: 786, type: !1644)
!1738 = !DILocalVariable(name: "p", scope: !1729, file: !173, line: 788, type: !1644)
!1739 = !DILocalVariable(name: "e", scope: !1729, file: !173, line: 789, type: !6)
!1740 = !DILocalVariable(name: "r", scope: !1729, file: !173, line: 790, type: !42)
!1741 = !DILocation(line: 0, scope: !1729)
!1742 = !DILocation(line: 788, column: 37, scope: !1729)
!1743 = !DILocation(line: 789, column: 11, scope: !1729)
!1744 = !DILocation(line: 791, column: 43, scope: !1729)
!1745 = !DILocation(line: 791, column: 53, scope: !1729)
!1746 = !DILocation(line: 791, column: 60, scope: !1729)
!1747 = !DILocation(line: 792, column: 43, scope: !1729)
!1748 = !DILocation(line: 792, column: 58, scope: !1729)
!1749 = !DILocation(line: 790, column: 14, scope: !1729)
!1750 = !DILocation(line: 793, column: 9, scope: !1729)
!1751 = !DILocation(line: 794, column: 3, scope: !1729)
!1752 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !173, file: !173, line: 256, type: !1753, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1757)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!42, !8, !42, !48, !42, !12, !6, !1755, !48, !48}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1782, !1783, !1784, !1785, !1786, !1789, !1790, !1808, !1811, !1812, !1819, !1822, !1823, !1824, !1825, !1826, !1827}
!1758 = !DILocalVariable(name: "buffer", arg: 1, scope: !1752, file: !173, line: 256, type: !8)
!1759 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1752, file: !173, line: 256, type: !42)
!1760 = !DILocalVariable(name: "arg", arg: 3, scope: !1752, file: !173, line: 257, type: !48)
!1761 = !DILocalVariable(name: "argsize", arg: 4, scope: !1752, file: !173, line: 257, type: !42)
!1762 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1752, file: !173, line: 258, type: !12)
!1763 = !DILocalVariable(name: "flags", arg: 6, scope: !1752, file: !173, line: 258, type: !6)
!1764 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1752, file: !173, line: 259, type: !1755)
!1765 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1752, file: !173, line: 260, type: !48)
!1766 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1752, file: !173, line: 261, type: !48)
!1767 = !DILocalVariable(name: "i", scope: !1752, file: !173, line: 263, type: !42)
!1768 = !DILocalVariable(name: "len", scope: !1752, file: !173, line: 264, type: !42)
!1769 = !DILocalVariable(name: "orig_buffersize", scope: !1752, file: !173, line: 265, type: !42)
!1770 = !DILocalVariable(name: "quote_string", scope: !1752, file: !173, line: 266, type: !48)
!1771 = !DILocalVariable(name: "quote_string_len", scope: !1752, file: !173, line: 267, type: !42)
!1772 = !DILocalVariable(name: "backslash_escapes", scope: !1752, file: !173, line: 268, type: !74)
!1773 = !DILocalVariable(name: "unibyte_locale", scope: !1752, file: !173, line: 269, type: !74)
!1774 = !DILocalVariable(name: "elide_outer_quotes", scope: !1752, file: !173, line: 270, type: !74)
!1775 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1752, file: !173, line: 271, type: !74)
!1776 = !DILocalVariable(name: "encountered_single_quote", scope: !1752, file: !173, line: 272, type: !74)
!1777 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1752, file: !173, line: 273, type: !74)
!1778 = !DILocalVariable(name: "c", scope: !1779, file: !173, line: 402, type: !1037)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !173, line: 401, column: 5)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !173, line: 400, column: 3)
!1781 = distinct !DILexicalBlock(scope: !1752, file: !173, line: 400, column: 3)
!1782 = !DILocalVariable(name: "esc", scope: !1779, file: !173, line: 403, type: !1037)
!1783 = !DILocalVariable(name: "is_right_quote", scope: !1779, file: !173, line: 404, type: !74)
!1784 = !DILocalVariable(name: "escaping", scope: !1779, file: !173, line: 405, type: !74)
!1785 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1779, file: !173, line: 406, type: !74)
!1786 = !DILocalVariable(name: "m", scope: !1787, file: !173, line: 610, type: !42)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 608, column: 11)
!1788 = distinct !DILexicalBlock(scope: !1779, file: !173, line: 426, column: 9)
!1789 = !DILocalVariable(name: "printable", scope: !1787, file: !173, line: 612, type: !74)
!1790 = !DILocalVariable(name: "mbstate", scope: !1791, file: !173, line: 621, type: !1793)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !173, line: 620, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !173, line: 614, column: 17)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1794, line: 6, baseType: !1795)
!1794 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1796, line: 21, baseType: !1797)
!1796 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1796, line: 13, size: 64, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1797, file: !1796, line: 15, baseType: !6, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1797, file: !1796, line: 20, baseType: !1801, size: 32, offset: 32)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !1796, line: 16, size: 32, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1801, file: !1796, line: 18, baseType: !14, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1801, file: !1796, line: 19, baseType: !1805, size: 32)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !1806)
!1806 = !{!1807}
!1807 = !DISubrange(count: 4)
!1808 = !DILocalVariable(name: "w", scope: !1809, file: !173, line: 631, type: !1810)
!1809 = distinct !DILexicalBlock(scope: !1791, file: !173, line: 630, column: 19)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !43, line: 74, baseType: !6)
!1811 = !DILocalVariable(name: "bytes", scope: !1809, file: !173, line: 632, type: !42)
!1812 = !DILocalVariable(name: "j", scope: !1813, file: !173, line: 657, type: !42)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !173, line: 656, column: 27)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !173, line: 654, column: 29)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !173, line: 649, column: 23)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !173, line: 641, column: 30)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !173, line: 636, column: 30)
!1818 = distinct !DILexicalBlock(scope: !1809, file: !173, line: 634, column: 25)
!1819 = !DILocalVariable(name: "ilim", scope: !1820, file: !173, line: 684, type: !42)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !173, line: 681, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1787, file: !173, line: 680, column: 17)
!1822 = !DILabel(scope: !1752, name: "process_input", file: !173, line: 314)
!1823 = !DILabel(scope: !1788, name: "c_and_shell_escape", file: !173, line: 512)
!1824 = !DILabel(scope: !1788, name: "c_escape", file: !173, line: 517)
!1825 = !DILabel(scope: !1779, name: "store_escape", file: !173, line: 719)
!1826 = !DILabel(scope: !1779, name: "store_c", file: !173, line: 722)
!1827 = !DILabel(scope: !1752, name: "force_outer_quoting_style", file: !173, line: 763)
!1828 = !DILocation(line: 0, scope: !1752)
!1829 = !DILocation(line: 269, column: 25, scope: !1752)
!1830 = !DILocation(line: 269, column: 36, scope: !1752)
!1831 = !DILocation(line: 270, column: 8, scope: !1752)
!1832 = !DILocation(line: 273, column: 3, scope: !1752)
!1833 = !DILocation(line: 265, column: 10, scope: !1752)
!1834 = !DILocation(line: 266, column: 15, scope: !1752)
!1835 = !DILocation(line: 267, column: 10, scope: !1752)
!1836 = !DILocation(line: 268, column: 8, scope: !1752)
!1837 = !DILocation(line: 271, column: 8, scope: !1752)
!1838 = !DILocation(line: 272, column: 8, scope: !1752)
!1839 = !DILocation(line: 273, column: 8, scope: !1752)
!1840 = !DILocation(line: 314, column: 2, scope: !1752)
!1841 = !DILocation(line: 316, column: 3, scope: !1752)
!1842 = !DILocation(line: 323, column: 11, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1752, file: !173, line: 317, column: 5)
!1844 = !DILocation(line: 323, column: 12, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1843, file: !173, line: 323, column: 11)
!1846 = !DILocation(line: 324, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !173, line: 324, column: 9)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !173, line: 324, column: 9)
!1849 = !DILocation(line: 324, column: 9, scope: !1848)
!1850 = !DILocation(line: 362, column: 26, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !173, line: 340, column: 11)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !173, line: 339, column: 13)
!1853 = distinct !DILexicalBlock(scope: !1843, file: !173, line: 338, column: 7)
!1854 = !DILocation(line: 363, column: 27, scope: !1851)
!1855 = !DILocation(line: 364, column: 11, scope: !1851)
!1856 = !DILocation(line: 365, column: 14, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !173, line: 365, column: 13)
!1858 = !DILocation(line: 365, column: 13, scope: !1853)
!1859 = !DILocation(line: 366, column: 43, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !173, line: 366, column: 11)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !173, line: 366, column: 11)
!1862 = !DILocation(line: 366, column: 11, scope: !1861)
!1863 = !DILocation(line: 367, column: 13, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !173, line: 367, column: 13)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !173, line: 367, column: 13)
!1866 = !DILocation(line: 367, column: 13, scope: !1865)
!1867 = !DILocation(line: 366, column: 70, scope: !1860)
!1868 = distinct !{!1868, !1862, !1869, !758}
!1869 = !DILocation(line: 367, column: 13, scope: !1861)
!1870 = !DILocation(line: 264, column: 10, scope: !1752)
!1871 = !DILocation(line: 370, column: 28, scope: !1853)
!1872 = !DILocation(line: 372, column: 7, scope: !1843)
!1873 = !DILocation(line: 376, column: 7, scope: !1843)
!1874 = !DILocation(line: 379, column: 7, scope: !1843)
!1875 = !DILocation(line: 381, column: 12, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1843, file: !173, line: 381, column: 11)
!1877 = !DILocation(line: 381, column: 11, scope: !1843)
!1878 = !DILocation(line: 386, column: 12, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1843, file: !173, line: 386, column: 11)
!1880 = !DILocation(line: 386, column: 11, scope: !1843)
!1881 = !DILocation(line: 387, column: 9, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !173, line: 387, column: 9)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !173, line: 387, column: 9)
!1884 = !DILocation(line: 387, column: 9, scope: !1883)
!1885 = !DILocation(line: 394, column: 7, scope: !1843)
!1886 = !DILocation(line: 397, column: 7, scope: !1843)
!1887 = !DILocation(line: 400, column: 8, scope: !1781)
!1888 = !DILocation(line: 0, scope: !1781)
!1889 = !DILocation(line: 400, column: 27, scope: !1780)
!1890 = !DILocation(line: 400, column: 19, scope: !1780)
!1891 = !DILocation(line: 400, column: 41, scope: !1780)
!1892 = !DILocation(line: 400, column: 48, scope: !1780)
!1893 = !DILocation(line: 400, column: 3, scope: !1781)
!1894 = !DILocation(line: 400, column: 60, scope: !1780)
!1895 = !DILocation(line: 0, scope: !1779)
!1896 = !DILocation(line: 409, column: 11, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1779, file: !173, line: 408, column: 11)
!1898 = !DILocation(line: 411, column: 17, scope: !1897)
!1899 = !DILocation(line: 412, column: 39, scope: !1897)
!1900 = !DILocation(line: 416, column: 32, scope: !1897)
!1901 = !DILocation(line: 412, column: 19, scope: !1897)
!1902 = !DILocation(line: 412, column: 15, scope: !1897)
!1903 = !DILocation(line: 417, column: 11, scope: !1897)
!1904 = !DILocation(line: 417, column: 26, scope: !1897)
!1905 = !DILocation(line: 417, column: 14, scope: !1897)
!1906 = !DILocation(line: 417, column: 63, scope: !1897)
!1907 = !DILocation(line: 408, column: 11, scope: !1779)
!1908 = !DILocation(line: 424, column: 11, scope: !1779)
!1909 = !DILocation(line: 425, column: 7, scope: !1779)
!1910 = !DILocation(line: 428, column: 15, scope: !1788)
!1911 = !DILocation(line: 430, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !173, line: 430, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !173, line: 429, column: 13)
!1914 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 428, column: 15)
!1915 = !DILocation(line: 430, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !173, line: 430, column: 15)
!1917 = !DILocation(line: 430, column: 15, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !173, line: 430, column: 15)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !173, line: 430, column: 15)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !173, line: 430, column: 15)
!1921 = !DILocation(line: 430, column: 15, scope: !1919)
!1922 = !DILocation(line: 430, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !173, line: 430, column: 15)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !173, line: 430, column: 15)
!1925 = !DILocation(line: 430, column: 15, scope: !1924)
!1926 = !DILocation(line: 430, column: 15, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !173, line: 430, column: 15)
!1928 = distinct !DILexicalBlock(scope: !1920, file: !173, line: 430, column: 15)
!1929 = !DILocation(line: 430, column: 15, scope: !1928)
!1930 = !DILocation(line: 430, column: 15, scope: !1920)
!1931 = !DILocation(line: 430, column: 15, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !173, line: 430, column: 15)
!1933 = distinct !DILexicalBlock(scope: !1912, file: !173, line: 430, column: 15)
!1934 = !DILocation(line: 430, column: 15, scope: !1933)
!1935 = !DILocation(line: 438, column: 19, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1913, file: !173, line: 437, column: 19)
!1937 = !DILocation(line: 438, column: 48, scope: !1936)
!1938 = !DILocation(line: 438, column: 59, scope: !1936)
!1939 = !DILocation(line: 440, column: 19, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !173, line: 440, column: 19)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !173, line: 440, column: 19)
!1942 = distinct !DILexicalBlock(scope: !1936, file: !173, line: 439, column: 17)
!1943 = !DILocation(line: 440, column: 19, scope: !1941)
!1944 = !DILocation(line: 441, column: 19, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !173, line: 441, column: 19)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !173, line: 441, column: 19)
!1947 = !DILocation(line: 441, column: 19, scope: !1946)
!1948 = !DILocation(line: 442, column: 17, scope: !1942)
!1949 = !DILocation(line: 449, column: 20, scope: !1914)
!1950 = !DILocation(line: 454, column: 11, scope: !1788)
!1951 = !DILocation(line: 457, column: 19, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 455, column: 13)
!1953 = !DILocation(line: 463, column: 19, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1952, file: !173, line: 462, column: 19)
!1955 = !DILocation(line: 463, column: 47, scope: !1954)
!1956 = !DILocation(line: 463, column: 41, scope: !1954)
!1957 = !DILocation(line: 463, column: 52, scope: !1954)
!1958 = !DILocation(line: 462, column: 19, scope: !1952)
!1959 = !DILocation(line: 464, column: 25, scope: !1954)
!1960 = !DILocation(line: 464, column: 17, scope: !1954)
!1961 = !DILocation(line: 471, column: 25, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1954, file: !173, line: 465, column: 19)
!1963 = !DILocation(line: 475, column: 21, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !173, line: 475, column: 21)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !173, line: 475, column: 21)
!1966 = !DILocation(line: 475, column: 21, scope: !1965)
!1967 = !DILocation(line: 476, column: 21, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !173, line: 476, column: 21)
!1969 = distinct !DILexicalBlock(scope: !1962, file: !173, line: 476, column: 21)
!1970 = !DILocation(line: 476, column: 21, scope: !1969)
!1971 = !DILocation(line: 477, column: 21, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !173, line: 477, column: 21)
!1973 = distinct !DILexicalBlock(scope: !1962, file: !173, line: 477, column: 21)
!1974 = !DILocation(line: 477, column: 21, scope: !1973)
!1975 = !DILocation(line: 478, column: 21, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !173, line: 478, column: 21)
!1977 = distinct !DILexicalBlock(scope: !1962, file: !173, line: 478, column: 21)
!1978 = !DILocation(line: 478, column: 21, scope: !1977)
!1979 = !DILocation(line: 479, column: 21, scope: !1962)
!1980 = !DILocation(line: 492, column: 31, scope: !1788)
!1981 = !DILocation(line: 493, column: 31, scope: !1788)
!1982 = !DILocation(line: 495, column: 31, scope: !1788)
!1983 = !DILocation(line: 496, column: 31, scope: !1788)
!1984 = !DILocation(line: 497, column: 31, scope: !1788)
!1985 = !DILocation(line: 500, column: 15, scope: !1788)
!1986 = !DILocation(line: 502, column: 19, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !173, line: 501, column: 13)
!1988 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 500, column: 15)
!1989 = !DILocation(line: 509, column: 33, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 509, column: 15)
!1991 = !DILocation(line: 0, scope: !1788)
!1992 = !DILocation(line: 512, column: 9, scope: !1788)
!1993 = !DILocation(line: 514, column: 15, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 513, column: 15)
!1995 = !DILocation(line: 517, column: 9, scope: !1788)
!1996 = !DILocation(line: 518, column: 15, scope: !1788)
!1997 = !DILocation(line: 526, column: 15, scope: !1788)
!1998 = !DILocation(line: 526, column: 40, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 526, column: 15)
!2000 = !DILocation(line: 526, column: 47, scope: !1999)
!2001 = !DILocation(line: 526, column: 18, scope: !1999)
!2002 = !DILocation(line: 530, column: 17, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 530, column: 15)
!2004 = !DILocation(line: 530, column: 15, scope: !1788)
!2005 = !DILocation(line: 535, column: 11, scope: !1788)
!2006 = !DILocation(line: 549, column: 15, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 548, column: 15)
!2008 = !DILocation(line: 556, column: 15, scope: !1788)
!2009 = !DILocation(line: 558, column: 19, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !173, line: 557, column: 13)
!2011 = distinct !DILexicalBlock(scope: !1788, file: !173, line: 556, column: 15)
!2012 = !DILocation(line: 561, column: 19, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !173, line: 561, column: 19)
!2014 = !DILocation(line: 561, column: 30, scope: !2013)
!2015 = !DILocation(line: 570, column: 15, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !173, line: 570, column: 15)
!2017 = distinct !DILexicalBlock(scope: !2010, file: !173, line: 570, column: 15)
!2018 = !DILocation(line: 570, column: 15, scope: !2017)
!2019 = !DILocation(line: 571, column: 15, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !173, line: 571, column: 15)
!2021 = distinct !DILexicalBlock(scope: !2010, file: !173, line: 571, column: 15)
!2022 = !DILocation(line: 571, column: 15, scope: !2021)
!2023 = !DILocation(line: 572, column: 15, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !173, line: 572, column: 15)
!2025 = distinct !DILexicalBlock(scope: !2010, file: !173, line: 572, column: 15)
!2026 = !DILocation(line: 572, column: 15, scope: !2025)
!2027 = !DILocation(line: 574, column: 13, scope: !2010)
!2028 = !DILocation(line: 614, column: 17, scope: !1787)
!2029 = !DILocation(line: 0, scope: !1787)
!2030 = !DILocation(line: 617, column: 29, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1792, file: !173, line: 615, column: 15)
!2032 = !{!2033, !2033, i64 0}
!2033 = !{!"short", !710, i64 0}
!2034 = !DILocation(line: 617, column: 27, scope: !2031)
!2035 = !DILocation(line: 678, column: 40, scope: !1787)
!2036 = !DILocation(line: 680, column: 23, scope: !1821)
!2037 = !DILocation(line: 621, column: 17, scope: !1791)
!2038 = !DILocation(line: 621, column: 27, scope: !1791)
!2039 = !DILocalVariable(name: "__dest", arg: 1, scope: !2040, file: !1080, line: 57, type: !41)
!2040 = distinct !DISubprogram(name: "memset", scope: !1080, file: !1080, line: 57, type: !2041, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!41, !41, !6, !42}
!2043 = !{!2039, !2044, !2045}
!2044 = !DILocalVariable(name: "__ch", arg: 2, scope: !2040, file: !1080, line: 57, type: !6)
!2045 = !DILocalVariable(name: "__len", arg: 3, scope: !2040, file: !1080, line: 57, type: !42)
!2046 = !DILocation(line: 0, scope: !2040, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 622, column: 17, scope: !1791)
!2048 = !DILocation(line: 59, column: 10, scope: !2040, inlinedAt: !2047)
!2049 = !DILocation(line: 626, column: 29, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1791, file: !173, line: 626, column: 21)
!2051 = !DILocation(line: 626, column: 21, scope: !1791)
!2052 = !DILocation(line: 627, column: 29, scope: !2050)
!2053 = !DILocation(line: 627, column: 19, scope: !2050)
!2054 = !DILocation(line: 629, column: 17, scope: !1791)
!2055 = !DILocation(line: 624, column: 19, scope: !1791)
!2056 = !DILocation(line: 625, column: 27, scope: !1791)
!2057 = !DILocation(line: 631, column: 21, scope: !1809)
!2058 = !DILocation(line: 632, column: 56, scope: !1809)
!2059 = !DILocation(line: 632, column: 50, scope: !1809)
!2060 = !DILocation(line: 633, column: 53, scope: !1809)
!2061 = !DILocation(line: 0, scope: !1809)
!2062 = !DILocation(line: 632, column: 36, scope: !1809)
!2063 = !DILocation(line: 634, column: 25, scope: !1809)
!2064 = !DILocation(line: 644, column: 38, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1816, file: !173, line: 642, column: 23)
!2066 = !DILocation(line: 644, column: 48, scope: !2065)
!2067 = !DILocation(line: 644, column: 25, scope: !2065)
!2068 = !DILocation(line: 644, column: 51, scope: !2065)
!2069 = !DILocation(line: 645, column: 28, scope: !2065)
!2070 = !DILocation(line: 644, column: 34, scope: !2065)
!2071 = distinct !{!2071, !2067, !2069, !758}
!2072 = !DILocation(line: 655, column: 29, scope: !1814)
!2073 = !DILocation(line: 0, scope: !1813)
!2074 = !DILocation(line: 659, column: 49, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !173, line: 658, column: 29)
!2076 = distinct !DILexicalBlock(scope: !1813, file: !173, line: 658, column: 29)
!2077 = !DILocation(line: 659, column: 39, scope: !2075)
!2078 = !DILocation(line: 659, column: 31, scope: !2075)
!2079 = !DILocation(line: 658, column: 53, scope: !2075)
!2080 = !DILocation(line: 658, column: 43, scope: !2075)
!2081 = !DILocation(line: 658, column: 29, scope: !2076)
!2082 = distinct !{!2082, !2081, !2083, !758}
!2083 = !DILocation(line: 667, column: 33, scope: !2076)
!2084 = !DILocation(line: 674, column: 19, scope: !1791)
!2085 = !DILocation(line: 670, column: 41, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1815, file: !173, line: 670, column: 29)
!2087 = !DILocation(line: 670, column: 31, scope: !2086)
!2088 = !DILocation(line: 670, column: 29, scope: !1815)
!2089 = !DILocation(line: 672, column: 27, scope: !1815)
!2090 = !DILocation(line: 675, column: 26, scope: !1791)
!2091 = !DILocation(line: 675, column: 24, scope: !1791)
!2092 = !DILocation(line: 674, column: 19, scope: !1809)
!2093 = distinct !{!2093, !2054, !2094, !758}
!2094 = !DILocation(line: 675, column: 44, scope: !1791)
!2095 = !DILocation(line: 676, column: 15, scope: !1792)
!2096 = !DILocation(line: 680, column: 19, scope: !1821)
!2097 = !DILocation(line: 680, column: 45, scope: !1821)
!2098 = !DILocation(line: 684, column: 33, scope: !1820)
!2099 = !DILocation(line: 0, scope: !1820)
!2100 = !DILocation(line: 686, column: 17, scope: !1820)
!2101 = !DILocation(line: 405, column: 12, scope: !1779)
!2102 = !DILocation(line: 688, column: 43, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !173, line: 688, column: 25)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !173, line: 687, column: 19)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !173, line: 686, column: 17)
!2106 = distinct !DILexicalBlock(scope: !1820, file: !173, line: 686, column: 17)
!2107 = !DILocation(line: 690, column: 25, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !173, line: 690, column: 25)
!2109 = distinct !DILexicalBlock(scope: !2103, file: !173, line: 689, column: 23)
!2110 = !DILocation(line: 690, column: 25, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !173, line: 690, column: 25)
!2112 = !DILocation(line: 690, column: 25, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !173, line: 690, column: 25)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !173, line: 690, column: 25)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !173, line: 690, column: 25)
!2116 = !DILocation(line: 690, column: 25, scope: !2114)
!2117 = !DILocation(line: 690, column: 25, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !173, line: 690, column: 25)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !173, line: 690, column: 25)
!2120 = !DILocation(line: 690, column: 25, scope: !2119)
!2121 = !DILocation(line: 690, column: 25, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !173, line: 690, column: 25)
!2123 = distinct !DILexicalBlock(scope: !2115, file: !173, line: 690, column: 25)
!2124 = !DILocation(line: 690, column: 25, scope: !2123)
!2125 = !DILocation(line: 690, column: 25, scope: !2115)
!2126 = !DILocation(line: 690, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !173, line: 690, column: 25)
!2128 = distinct !DILexicalBlock(scope: !2108, file: !173, line: 690, column: 25)
!2129 = !DILocation(line: 690, column: 25, scope: !2128)
!2130 = !DILocation(line: 691, column: 25, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !173, line: 691, column: 25)
!2132 = distinct !DILexicalBlock(scope: !2109, file: !173, line: 691, column: 25)
!2133 = !DILocation(line: 691, column: 25, scope: !2132)
!2134 = !DILocation(line: 692, column: 25, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !173, line: 692, column: 25)
!2136 = distinct !DILexicalBlock(scope: !2109, file: !173, line: 692, column: 25)
!2137 = !DILocation(line: 692, column: 25, scope: !2136)
!2138 = !DILocation(line: 693, column: 38, scope: !2109)
!2139 = !DILocation(line: 693, column: 33, scope: !2109)
!2140 = !DILocation(line: 694, column: 23, scope: !2109)
!2141 = !DILocation(line: 695, column: 30, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2103, file: !173, line: 695, column: 30)
!2143 = !DILocation(line: 695, column: 30, scope: !2103)
!2144 = !DILocation(line: 697, column: 25, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !173, line: 697, column: 25)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !173, line: 697, column: 25)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !173, line: 696, column: 23)
!2148 = !DILocation(line: 697, column: 25, scope: !2146)
!2149 = !DILocation(line: 699, column: 23, scope: !2147)
!2150 = !DILocation(line: 700, column: 35, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2104, file: !173, line: 700, column: 25)
!2152 = !DILocation(line: 700, column: 30, scope: !2151)
!2153 = !DILocation(line: 700, column: 25, scope: !2104)
!2154 = !DILocation(line: 702, column: 21, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !173, line: 702, column: 21)
!2156 = distinct !DILexicalBlock(scope: !2104, file: !173, line: 702, column: 21)
!2157 = !DILocation(line: 702, column: 21, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !173, line: 702, column: 21)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !173, line: 702, column: 21)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !173, line: 702, column: 21)
!2161 = !DILocation(line: 702, column: 21, scope: !2159)
!2162 = !DILocation(line: 702, column: 21, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !173, line: 702, column: 21)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !173, line: 702, column: 21)
!2165 = !DILocation(line: 702, column: 21, scope: !2164)
!2166 = !DILocation(line: 702, column: 21, scope: !2160)
!2167 = !DILocation(line: 0, scope: !2104)
!2168 = !DILocation(line: 703, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !173, line: 703, column: 21)
!2170 = distinct !DILexicalBlock(scope: !2104, file: !173, line: 703, column: 21)
!2171 = !DILocation(line: 703, column: 21, scope: !2170)
!2172 = !DILocation(line: 704, column: 25, scope: !2104)
!2173 = !DILocation(line: 686, column: 17, scope: !2105)
!2174 = distinct !{!2174, !2175, !2176}
!2175 = !DILocation(line: 686, column: 17, scope: !2106)
!2176 = !DILocation(line: 705, column: 19, scope: !2106)
!2177 = !DILocation(line: 416, column: 30, scope: !1897)
!2178 = !DILocation(line: 712, column: 34, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !1779, file: !173, line: 712, column: 11)
!2180 = !DILocation(line: 715, column: 35, scope: !2179)
!2181 = !DILocation(line: 715, column: 17, scope: !2179)
!2182 = !DILocation(line: 715, column: 47, scope: !2179)
!2183 = !DILocation(line: 715, column: 65, scope: !2179)
!2184 = !DILocation(line: 716, column: 11, scope: !2179)
!2185 = !DILocation(line: 712, column: 11, scope: !1779)
!2186 = !DILocation(line: 400, column: 10, scope: !1781)
!2187 = !DILocation(line: 719, column: 5, scope: !1779)
!2188 = !DILocation(line: 720, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !1779, file: !173, line: 720, column: 7)
!2190 = !DILocation(line: 720, column: 7, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2189, file: !173, line: 720, column: 7)
!2192 = !DILocation(line: 720, column: 7, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !173, line: 720, column: 7)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !173, line: 720, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !173, line: 720, column: 7)
!2196 = !DILocation(line: 720, column: 7, scope: !2194)
!2197 = !DILocation(line: 720, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !173, line: 720, column: 7)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !173, line: 720, column: 7)
!2200 = !DILocation(line: 720, column: 7, scope: !2199)
!2201 = !DILocation(line: 720, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !173, line: 720, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2195, file: !173, line: 720, column: 7)
!2204 = !DILocation(line: 720, column: 7, scope: !2203)
!2205 = !DILocation(line: 720, column: 7, scope: !2195)
!2206 = !DILocation(line: 720, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !173, line: 720, column: 7)
!2208 = distinct !DILexicalBlock(scope: !2189, file: !173, line: 720, column: 7)
!2209 = !DILocation(line: 720, column: 7, scope: !2208)
!2210 = !DILocation(line: 722, column: 5, scope: !1779)
!2211 = !DILocation(line: 723, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !173, line: 723, column: 7)
!2213 = distinct !DILexicalBlock(scope: !1779, file: !173, line: 723, column: 7)
!2214 = !DILocation(line: 424, column: 9, scope: !1779)
!2215 = !DILocation(line: 723, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !173, line: 723, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !173, line: 723, column: 7)
!2218 = distinct !DILexicalBlock(scope: !2212, file: !173, line: 723, column: 7)
!2219 = !DILocation(line: 723, column: 7, scope: !2217)
!2220 = !DILocation(line: 723, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !173, line: 723, column: 7)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !173, line: 723, column: 7)
!2223 = !DILocation(line: 723, column: 7, scope: !2222)
!2224 = !DILocation(line: 723, column: 7, scope: !2218)
!2225 = !DILocation(line: 724, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !173, line: 724, column: 7)
!2227 = distinct !DILexicalBlock(scope: !1779, file: !173, line: 724, column: 7)
!2228 = !DILocation(line: 724, column: 7, scope: !2227)
!2229 = !DILocation(line: 726, column: 13, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !1779, file: !173, line: 726, column: 11)
!2231 = !DILocation(line: 726, column: 11, scope: !1779)
!2232 = !DILocation(line: 728, column: 5, scope: !1780)
!2233 = !DILocation(line: 400, column: 75, scope: !1780)
!2234 = !DILocation(line: 400, column: 3, scope: !1780)
!2235 = distinct !{!2235, !1893, !2236, !758}
!2236 = !DILocation(line: 728, column: 5, scope: !1781)
!2237 = !DILocation(line: 730, column: 11, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1752, file: !173, line: 730, column: 7)
!2239 = !DILocation(line: 730, column: 16, scope: !2238)
!2240 = !DILocation(line: 738, column: 51, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !1752, file: !173, line: 738, column: 7)
!2242 = !DILocation(line: 741, column: 11, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !173, line: 741, column: 11)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !173, line: 740, column: 5)
!2245 = !DILocation(line: 741, column: 11, scope: !2244)
!2246 = !DILocation(line: 742, column: 16, scope: !2243)
!2247 = !DILocation(line: 742, column: 9, scope: !2243)
!2248 = !DILocation(line: 746, column: 18, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !173, line: 746, column: 16)
!2250 = !DILocation(line: 746, column: 29, scope: !2249)
!2251 = !DILocation(line: 755, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !1752, file: !173, line: 755, column: 7)
!2253 = !DILocation(line: 755, column: 20, scope: !2252)
!2254 = !DILocation(line: 756, column: 12, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !173, line: 756, column: 5)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !173, line: 756, column: 5)
!2257 = !DILocation(line: 756, column: 5, scope: !2256)
!2258 = !DILocation(line: 757, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !173, line: 757, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2255, file: !173, line: 757, column: 7)
!2261 = !DILocation(line: 757, column: 7, scope: !2260)
!2262 = !DILocation(line: 756, column: 39, scope: !2255)
!2263 = distinct !{!2263, !2257, !2264, !758}
!2264 = !DILocation(line: 757, column: 7, scope: !2256)
!2265 = !DILocation(line: 759, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !1752, file: !173, line: 759, column: 7)
!2267 = !DILocation(line: 759, column: 7, scope: !1752)
!2268 = !DILocation(line: 760, column: 5, scope: !2266)
!2269 = !DILocation(line: 760, column: 17, scope: !2266)
!2270 = !DILocation(line: 763, column: 2, scope: !1752)
!2271 = !DILocation(line: 766, column: 51, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1752, file: !173, line: 766, column: 7)
!2273 = !DILocation(line: 766, column: 21, scope: !2272)
!2274 = !DILocation(line: 770, column: 42, scope: !1752)
!2275 = !DILocation(line: 768, column: 10, scope: !1752)
!2276 = !DILocation(line: 768, column: 3, scope: !1752)
!2277 = !DILocation(line: 772, column: 1, scope: !1752)
!2278 = distinct !DISubprogram(name: "gettext_quote", scope: !173, file: !173, line: 207, type: !2279, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!48, !48, !12}
!2281 = !{!2282, !2283, !2284, !2285}
!2282 = !DILocalVariable(name: "msgid", arg: 1, scope: !2278, file: !173, line: 207, type: !48)
!2283 = !DILocalVariable(name: "s", arg: 2, scope: !2278, file: !173, line: 207, type: !12)
!2284 = !DILocalVariable(name: "translation", scope: !2278, file: !173, line: 209, type: !48)
!2285 = !DILocalVariable(name: "locale_code", scope: !2278, file: !173, line: 210, type: !48)
!2286 = !DILocation(line: 0, scope: !2278)
!2287 = !DILocation(line: 209, column: 29, scope: !2278)
!2288 = !DILocation(line: 212, column: 19, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2278, file: !173, line: 212, column: 7)
!2290 = !DILocation(line: 212, column: 7, scope: !2278)
!2291 = !DILocation(line: 233, column: 17, scope: !2278)
!2292 = !DILocalVariable(name: "s1", arg: 1, scope: !2293, file: !2294, line: 160, type: !48)
!2293 = distinct !DISubprogram(name: "strcaseeq0", scope: !2294, file: !2294, line: 160, type: !2295, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2297)
!2294 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!6, !48, !48, !9, !9, !9, !9, !9, !9, !9, !9, !9}
!2297 = !{!2292, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307}
!2298 = !DILocalVariable(name: "s2", arg: 2, scope: !2293, file: !2294, line: 160, type: !48)
!2299 = !DILocalVariable(name: "s20", arg: 3, scope: !2293, file: !2294, line: 160, type: !9)
!2300 = !DILocalVariable(name: "s21", arg: 4, scope: !2293, file: !2294, line: 160, type: !9)
!2301 = !DILocalVariable(name: "s22", arg: 5, scope: !2293, file: !2294, line: 160, type: !9)
!2302 = !DILocalVariable(name: "s23", arg: 6, scope: !2293, file: !2294, line: 160, type: !9)
!2303 = !DILocalVariable(name: "s24", arg: 7, scope: !2293, file: !2294, line: 160, type: !9)
!2304 = !DILocalVariable(name: "s25", arg: 8, scope: !2293, file: !2294, line: 160, type: !9)
!2305 = !DILocalVariable(name: "s26", arg: 9, scope: !2293, file: !2294, line: 160, type: !9)
!2306 = !DILocalVariable(name: "s27", arg: 10, scope: !2293, file: !2294, line: 160, type: !9)
!2307 = !DILocalVariable(name: "s28", arg: 11, scope: !2293, file: !2294, line: 160, type: !9)
!2308 = !DILocation(line: 0, scope: !2293, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 234, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2278, file: !173, line: 234, column: 7)
!2311 = !DILocation(line: 162, column: 7, scope: !2312, inlinedAt: !2309)
!2312 = distinct !DILexicalBlock(scope: !2293, file: !2294, line: 162, column: 7)
!2313 = !DILocalVariable(name: "s1", arg: 1, scope: !2314, file: !2294, line: 146, type: !48)
!2314 = distinct !DISubprogram(name: "strcaseeq1", scope: !2294, file: !2294, line: 146, type: !2315, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!6, !48, !48, !9, !9, !9, !9, !9, !9, !9, !9}
!2317 = !{!2313, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2318 = !DILocalVariable(name: "s2", arg: 2, scope: !2314, file: !2294, line: 146, type: !48)
!2319 = !DILocalVariable(name: "s21", arg: 3, scope: !2314, file: !2294, line: 146, type: !9)
!2320 = !DILocalVariable(name: "s22", arg: 4, scope: !2314, file: !2294, line: 146, type: !9)
!2321 = !DILocalVariable(name: "s23", arg: 5, scope: !2314, file: !2294, line: 146, type: !9)
!2322 = !DILocalVariable(name: "s24", arg: 6, scope: !2314, file: !2294, line: 146, type: !9)
!2323 = !DILocalVariable(name: "s25", arg: 7, scope: !2314, file: !2294, line: 146, type: !9)
!2324 = !DILocalVariable(name: "s26", arg: 8, scope: !2314, file: !2294, line: 146, type: !9)
!2325 = !DILocalVariable(name: "s27", arg: 9, scope: !2314, file: !2294, line: 146, type: !9)
!2326 = !DILocalVariable(name: "s28", arg: 10, scope: !2314, file: !2294, line: 146, type: !9)
!2327 = !DILocation(line: 0, scope: !2314, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 167, column: 16, scope: !2329, inlinedAt: !2309)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !2294, line: 164, column: 11)
!2330 = distinct !DILexicalBlock(scope: !2312, file: !2294, line: 163, column: 5)
!2331 = !DILocation(line: 148, column: 7, scope: !2332, inlinedAt: !2328)
!2332 = distinct !DILexicalBlock(scope: !2314, file: !2294, line: 148, column: 7)
!2333 = !DILocalVariable(name: "s1", arg: 1, scope: !2334, file: !2294, line: 132, type: !48)
!2334 = distinct !DISubprogram(name: "strcaseeq2", scope: !2294, file: !2294, line: 132, type: !2335, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2337)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!6, !48, !48, !9, !9, !9, !9, !9, !9, !9}
!2337 = !{!2333, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345}
!2338 = !DILocalVariable(name: "s2", arg: 2, scope: !2334, file: !2294, line: 132, type: !48)
!2339 = !DILocalVariable(name: "s22", arg: 3, scope: !2334, file: !2294, line: 132, type: !9)
!2340 = !DILocalVariable(name: "s23", arg: 4, scope: !2334, file: !2294, line: 132, type: !9)
!2341 = !DILocalVariable(name: "s24", arg: 5, scope: !2334, file: !2294, line: 132, type: !9)
!2342 = !DILocalVariable(name: "s25", arg: 6, scope: !2334, file: !2294, line: 132, type: !9)
!2343 = !DILocalVariable(name: "s26", arg: 7, scope: !2334, file: !2294, line: 132, type: !9)
!2344 = !DILocalVariable(name: "s27", arg: 8, scope: !2334, file: !2294, line: 132, type: !9)
!2345 = !DILocalVariable(name: "s28", arg: 9, scope: !2334, file: !2294, line: 132, type: !9)
!2346 = !DILocation(line: 0, scope: !2334, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 153, column: 16, scope: !2348, inlinedAt: !2328)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !2294, line: 150, column: 11)
!2349 = distinct !DILexicalBlock(scope: !2332, file: !2294, line: 149, column: 5)
!2350 = !DILocation(line: 134, column: 7, scope: !2351, inlinedAt: !2347)
!2351 = distinct !DILexicalBlock(scope: !2334, file: !2294, line: 134, column: 7)
!2352 = !DILocalVariable(name: "s1", arg: 1, scope: !2353, file: !2294, line: 118, type: !48)
!2353 = distinct !DISubprogram(name: "strcaseeq3", scope: !2294, file: !2294, line: 118, type: !2354, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!6, !48, !48, !9, !9, !9, !9, !9, !9}
!2356 = !{!2352, !2357, !2358, !2359, !2360, !2361, !2362, !2363}
!2357 = !DILocalVariable(name: "s2", arg: 2, scope: !2353, file: !2294, line: 118, type: !48)
!2358 = !DILocalVariable(name: "s23", arg: 3, scope: !2353, file: !2294, line: 118, type: !9)
!2359 = !DILocalVariable(name: "s24", arg: 4, scope: !2353, file: !2294, line: 118, type: !9)
!2360 = !DILocalVariable(name: "s25", arg: 5, scope: !2353, file: !2294, line: 118, type: !9)
!2361 = !DILocalVariable(name: "s26", arg: 6, scope: !2353, file: !2294, line: 118, type: !9)
!2362 = !DILocalVariable(name: "s27", arg: 7, scope: !2353, file: !2294, line: 118, type: !9)
!2363 = !DILocalVariable(name: "s28", arg: 8, scope: !2353, file: !2294, line: 118, type: !9)
!2364 = !DILocation(line: 0, scope: !2353, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 139, column: 16, scope: !2366, inlinedAt: !2347)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2294, line: 136, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2351, file: !2294, line: 135, column: 5)
!2368 = !DILocation(line: 120, column: 7, scope: !2369, inlinedAt: !2365)
!2369 = distinct !DILexicalBlock(scope: !2353, file: !2294, line: 120, column: 7)
!2370 = !DILocation(line: 120, column: 7, scope: !2353, inlinedAt: !2365)
!2371 = !DILocalVariable(name: "s1", arg: 1, scope: !2372, file: !2294, line: 104, type: !48)
!2372 = distinct !DISubprogram(name: "strcaseeq4", scope: !2294, file: !2294, line: 104, type: !2373, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!6, !48, !48, !9, !9, !9, !9, !9}
!2375 = !{!2371, !2376, !2377, !2378, !2379, !2380, !2381}
!2376 = !DILocalVariable(name: "s2", arg: 2, scope: !2372, file: !2294, line: 104, type: !48)
!2377 = !DILocalVariable(name: "s24", arg: 3, scope: !2372, file: !2294, line: 104, type: !9)
!2378 = !DILocalVariable(name: "s25", arg: 4, scope: !2372, file: !2294, line: 104, type: !9)
!2379 = !DILocalVariable(name: "s26", arg: 5, scope: !2372, file: !2294, line: 104, type: !9)
!2380 = !DILocalVariable(name: "s27", arg: 6, scope: !2372, file: !2294, line: 104, type: !9)
!2381 = !DILocalVariable(name: "s28", arg: 7, scope: !2372, file: !2294, line: 104, type: !9)
!2382 = !DILocation(line: 0, scope: !2372, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 125, column: 16, scope: !2384, inlinedAt: !2365)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !2294, line: 122, column: 11)
!2385 = distinct !DILexicalBlock(scope: !2369, file: !2294, line: 121, column: 5)
!2386 = !DILocation(line: 106, column: 7, scope: !2387, inlinedAt: !2383)
!2387 = distinct !DILexicalBlock(scope: !2372, file: !2294, line: 106, column: 7)
!2388 = !DILocation(line: 106, column: 7, scope: !2372, inlinedAt: !2383)
!2389 = !DILocalVariable(name: "s1", arg: 1, scope: !2390, file: !2294, line: 90, type: !48)
!2390 = distinct !DISubprogram(name: "strcaseeq5", scope: !2294, file: !2294, line: 90, type: !2391, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!6, !48, !48, !9, !9, !9, !9}
!2393 = !{!2389, !2394, !2395, !2396, !2397, !2398}
!2394 = !DILocalVariable(name: "s2", arg: 2, scope: !2390, file: !2294, line: 90, type: !48)
!2395 = !DILocalVariable(name: "s25", arg: 3, scope: !2390, file: !2294, line: 90, type: !9)
!2396 = !DILocalVariable(name: "s26", arg: 4, scope: !2390, file: !2294, line: 90, type: !9)
!2397 = !DILocalVariable(name: "s27", arg: 5, scope: !2390, file: !2294, line: 90, type: !9)
!2398 = !DILocalVariable(name: "s28", arg: 6, scope: !2390, file: !2294, line: 90, type: !9)
!2399 = !DILocation(line: 0, scope: !2390, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 111, column: 16, scope: !2401, inlinedAt: !2383)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !2294, line: 108, column: 11)
!2402 = distinct !DILexicalBlock(scope: !2387, file: !2294, line: 107, column: 5)
!2403 = !DILocation(line: 92, column: 7, scope: !2404, inlinedAt: !2400)
!2404 = distinct !DILexicalBlock(scope: !2390, file: !2294, line: 92, column: 7)
!2405 = !DILocation(line: 92, column: 7, scope: !2390, inlinedAt: !2400)
!2406 = !DILocation(line: 235, column: 12, scope: !2310)
!2407 = !DILocation(line: 235, column: 21, scope: !2310)
!2408 = !DILocation(line: 235, column: 5, scope: !2310)
!2409 = !DILocation(line: 0, scope: !2314, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 167, column: 16, scope: !2329, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 236, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2278, file: !173, line: 236, column: 7)
!2413 = !DILocation(line: 148, column: 7, scope: !2332, inlinedAt: !2410)
!2414 = !DILocation(line: 0, scope: !2334, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 153, column: 16, scope: !2348, inlinedAt: !2410)
!2416 = !DILocation(line: 134, column: 7, scope: !2351, inlinedAt: !2415)
!2417 = !DILocation(line: 134, column: 7, scope: !2334, inlinedAt: !2415)
!2418 = !DILocation(line: 0, scope: !2353, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 139, column: 16, scope: !2366, inlinedAt: !2415)
!2420 = !DILocation(line: 120, column: 7, scope: !2369, inlinedAt: !2419)
!2421 = !DILocation(line: 120, column: 7, scope: !2353, inlinedAt: !2419)
!2422 = !DILocation(line: 0, scope: !2372, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 125, column: 16, scope: !2384, inlinedAt: !2419)
!2424 = !DILocation(line: 106, column: 7, scope: !2387, inlinedAt: !2423)
!2425 = !DILocation(line: 106, column: 7, scope: !2372, inlinedAt: !2423)
!2426 = !DILocation(line: 0, scope: !2390, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 111, column: 16, scope: !2401, inlinedAt: !2423)
!2428 = !DILocation(line: 92, column: 7, scope: !2404, inlinedAt: !2427)
!2429 = !DILocation(line: 92, column: 7, scope: !2390, inlinedAt: !2427)
!2430 = !DILocalVariable(name: "s1", arg: 1, scope: !2431, file: !2294, line: 76, type: !48)
!2431 = distinct !DISubprogram(name: "strcaseeq6", scope: !2294, file: !2294, line: 76, type: !2432, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!6, !48, !48, !9, !9, !9}
!2434 = !{!2430, !2435, !2436, !2437, !2438}
!2435 = !DILocalVariable(name: "s2", arg: 2, scope: !2431, file: !2294, line: 76, type: !48)
!2436 = !DILocalVariable(name: "s26", arg: 3, scope: !2431, file: !2294, line: 76, type: !9)
!2437 = !DILocalVariable(name: "s27", arg: 4, scope: !2431, file: !2294, line: 76, type: !9)
!2438 = !DILocalVariable(name: "s28", arg: 5, scope: !2431, file: !2294, line: 76, type: !9)
!2439 = !DILocation(line: 0, scope: !2431, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 97, column: 16, scope: !2441, inlinedAt: !2427)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !2294, line: 94, column: 11)
!2442 = distinct !DILexicalBlock(scope: !2404, file: !2294, line: 93, column: 5)
!2443 = !DILocation(line: 78, column: 7, scope: !2444, inlinedAt: !2440)
!2444 = distinct !DILexicalBlock(scope: !2431, file: !2294, line: 78, column: 7)
!2445 = !DILocation(line: 78, column: 7, scope: !2431, inlinedAt: !2440)
!2446 = !DILocalVariable(name: "s1", arg: 1, scope: !2447, file: !2294, line: 62, type: !48)
!2447 = distinct !DISubprogram(name: "strcaseeq7", scope: !2294, file: !2294, line: 62, type: !2448, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!6, !48, !48, !9, !9}
!2450 = !{!2446, !2451, !2452, !2453}
!2451 = !DILocalVariable(name: "s2", arg: 2, scope: !2447, file: !2294, line: 62, type: !48)
!2452 = !DILocalVariable(name: "s27", arg: 3, scope: !2447, file: !2294, line: 62, type: !9)
!2453 = !DILocalVariable(name: "s28", arg: 4, scope: !2447, file: !2294, line: 62, type: !9)
!2454 = !DILocation(line: 0, scope: !2447, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 83, column: 16, scope: !2456, inlinedAt: !2440)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !2294, line: 80, column: 11)
!2457 = distinct !DILexicalBlock(scope: !2444, file: !2294, line: 79, column: 5)
!2458 = !DILocation(line: 64, column: 7, scope: !2459, inlinedAt: !2455)
!2459 = distinct !DILexicalBlock(scope: !2447, file: !2294, line: 64, column: 7)
!2460 = !DILocation(line: 236, column: 7, scope: !2278)
!2461 = !DILocation(line: 237, column: 12, scope: !2412)
!2462 = !DILocation(line: 237, column: 21, scope: !2412)
!2463 = !DILocation(line: 237, column: 5, scope: !2412)
!2464 = !DILocation(line: 239, column: 13, scope: !2278)
!2465 = !DILocation(line: 239, column: 11, scope: !2278)
!2466 = !DILocation(line: 239, column: 3, scope: !2278)
!2467 = !DILocation(line: 240, column: 1, scope: !2278)
!2468 = !DISubprogram(name: "iswprint", scope: !2469, file: !2469, line: 120, type: !2470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!2469 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!6, !14}
!2472 = !DISubprogram(name: "mbsinit", scope: !2473, file: !2473, line: 292, type: !2474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!2473 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!6, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1797)
!2478 = distinct !DISubprogram(name: "quotearg_alloc", scope: !173, file: !173, line: 799, type: !2479, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!8, !48, !42, !1644}
!2481 = !{!2482, !2483, !2484}
!2482 = !DILocalVariable(name: "arg", arg: 1, scope: !2478, file: !173, line: 799, type: !48)
!2483 = !DILocalVariable(name: "argsize", arg: 2, scope: !2478, file: !173, line: 799, type: !42)
!2484 = !DILocalVariable(name: "o", arg: 3, scope: !2478, file: !173, line: 800, type: !1644)
!2485 = !DILocation(line: 0, scope: !2478)
!2486 = !DILocalVariable(name: "arg", arg: 1, scope: !2487, file: !173, line: 812, type: !48)
!2487 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !173, file: !173, line: 812, type: !2488, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!8, !48, !42, !274, !1644}
!2490 = !{!2486, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498}
!2491 = !DILocalVariable(name: "argsize", arg: 2, scope: !2487, file: !173, line: 812, type: !42)
!2492 = !DILocalVariable(name: "size", arg: 3, scope: !2487, file: !173, line: 812, type: !274)
!2493 = !DILocalVariable(name: "o", arg: 4, scope: !2487, file: !173, line: 813, type: !1644)
!2494 = !DILocalVariable(name: "p", scope: !2487, file: !173, line: 815, type: !1644)
!2495 = !DILocalVariable(name: "e", scope: !2487, file: !173, line: 816, type: !6)
!2496 = !DILocalVariable(name: "flags", scope: !2487, file: !173, line: 818, type: !6)
!2497 = !DILocalVariable(name: "bufsize", scope: !2487, file: !173, line: 819, type: !42)
!2498 = !DILocalVariable(name: "buf", scope: !2487, file: !173, line: 823, type: !8)
!2499 = !DILocation(line: 0, scope: !2487, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 802, column: 10, scope: !2478)
!2501 = !DILocation(line: 815, column: 37, scope: !2487, inlinedAt: !2500)
!2502 = !DILocation(line: 816, column: 11, scope: !2487, inlinedAt: !2500)
!2503 = !DILocation(line: 818, column: 18, scope: !2487, inlinedAt: !2500)
!2504 = !DILocation(line: 818, column: 24, scope: !2487, inlinedAt: !2500)
!2505 = !DILocation(line: 819, column: 69, scope: !2487, inlinedAt: !2500)
!2506 = !DILocation(line: 820, column: 53, scope: !2487, inlinedAt: !2500)
!2507 = !DILocation(line: 821, column: 49, scope: !2487, inlinedAt: !2500)
!2508 = !DILocation(line: 822, column: 49, scope: !2487, inlinedAt: !2500)
!2509 = !DILocation(line: 819, column: 20, scope: !2487, inlinedAt: !2500)
!2510 = !DILocation(line: 822, column: 62, scope: !2487, inlinedAt: !2500)
!2511 = !DILocalVariable(name: "n", arg: 1, scope: !2512, file: !270, line: 216, type: !42)
!2512 = distinct !DISubprogram(name: "xcharalloc", scope: !270, file: !270, line: 216, type: !2513, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!8, !42}
!2515 = !{!2511}
!2516 = !DILocation(line: 0, scope: !2512, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 823, column: 15, scope: !2487, inlinedAt: !2500)
!2518 = !DILocation(line: 218, column: 10, scope: !2512, inlinedAt: !2517)
!2519 = !DILocation(line: 824, column: 60, scope: !2487, inlinedAt: !2500)
!2520 = !DILocation(line: 826, column: 32, scope: !2487, inlinedAt: !2500)
!2521 = !DILocation(line: 826, column: 47, scope: !2487, inlinedAt: !2500)
!2522 = !DILocation(line: 824, column: 3, scope: !2487, inlinedAt: !2500)
!2523 = !DILocation(line: 827, column: 9, scope: !2487, inlinedAt: !2500)
!2524 = !DILocation(line: 802, column: 3, scope: !2478)
!2525 = !DILocation(line: 0, scope: !2487)
!2526 = !DILocation(line: 815, column: 37, scope: !2487)
!2527 = !DILocation(line: 816, column: 11, scope: !2487)
!2528 = !DILocation(line: 818, column: 18, scope: !2487)
!2529 = !DILocation(line: 818, column: 27, scope: !2487)
!2530 = !DILocation(line: 818, column: 24, scope: !2487)
!2531 = !DILocation(line: 819, column: 69, scope: !2487)
!2532 = !DILocation(line: 820, column: 53, scope: !2487)
!2533 = !DILocation(line: 821, column: 49, scope: !2487)
!2534 = !DILocation(line: 822, column: 49, scope: !2487)
!2535 = !DILocation(line: 819, column: 20, scope: !2487)
!2536 = !DILocation(line: 822, column: 62, scope: !2487)
!2537 = !DILocation(line: 0, scope: !2512, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 823, column: 15, scope: !2487)
!2539 = !DILocation(line: 218, column: 10, scope: !2512, inlinedAt: !2538)
!2540 = !DILocation(line: 824, column: 60, scope: !2487)
!2541 = !DILocation(line: 826, column: 32, scope: !2487)
!2542 = !DILocation(line: 826, column: 47, scope: !2487)
!2543 = !DILocation(line: 824, column: 3, scope: !2487)
!2544 = !DILocation(line: 827, column: 9, scope: !2487)
!2545 = !DILocation(line: 828, column: 7, scope: !2487)
!2546 = !DILocation(line: 829, column: 11, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2487, file: !173, line: 828, column: 7)
!2548 = !{!886, !886, i64 0}
!2549 = !DILocation(line: 829, column: 5, scope: !2547)
!2550 = !DILocation(line: 830, column: 3, scope: !2487)
!2551 = distinct !DISubprogram(name: "quotearg_free", scope: !173, file: !173, line: 848, type: !718, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2552)
!2552 = !{!2553, !2554}
!2553 = !DILocalVariable(name: "sv", scope: !2551, file: !173, line: 850, type: !223)
!2554 = !DILocalVariable(name: "i", scope: !2551, file: !173, line: 851, type: !6)
!2555 = !DILocation(line: 850, column: 24, scope: !2551)
!2556 = !DILocation(line: 0, scope: !2551)
!2557 = !DILocation(line: 852, column: 19, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !173, line: 852, column: 3)
!2559 = distinct !DILexicalBlock(scope: !2551, file: !173, line: 852, column: 3)
!2560 = !DILocation(line: 852, column: 17, scope: !2558)
!2561 = !DILocation(line: 852, column: 3, scope: !2559)
!2562 = !DILocation(line: 853, column: 17, scope: !2558)
!2563 = !{!2564, !709, i64 8}
!2564 = !{!"slotvec", !886, i64 0, !709, i64 8}
!2565 = !DILocation(line: 853, column: 5, scope: !2558)
!2566 = !DILocation(line: 852, column: 28, scope: !2558)
!2567 = distinct !{!2567, !2561, !2568, !758}
!2568 = !DILocation(line: 853, column: 20, scope: !2559)
!2569 = !DILocation(line: 854, column: 13, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2551, file: !173, line: 854, column: 7)
!2571 = !DILocation(line: 854, column: 17, scope: !2570)
!2572 = !DILocation(line: 854, column: 7, scope: !2551)
!2573 = !DILocation(line: 856, column: 7, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2570, file: !173, line: 855, column: 5)
!2575 = !DILocation(line: 857, column: 21, scope: !2574)
!2576 = !{!2564, !886, i64 0}
!2577 = !DILocation(line: 858, column: 20, scope: !2574)
!2578 = !DILocation(line: 859, column: 5, scope: !2574)
!2579 = !DILocation(line: 860, column: 10, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2551, file: !173, line: 860, column: 7)
!2581 = !DILocation(line: 860, column: 7, scope: !2551)
!2582 = !DILocation(line: 862, column: 13, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !173, line: 861, column: 5)
!2584 = !DILocation(line: 862, column: 7, scope: !2583)
!2585 = !DILocation(line: 863, column: 15, scope: !2583)
!2586 = !DILocation(line: 864, column: 5, scope: !2583)
!2587 = !DILocation(line: 865, column: 10, scope: !2551)
!2588 = !DILocation(line: 866, column: 1, scope: !2551)
!2589 = distinct !DISubprogram(name: "quotearg_n", scope: !173, file: !173, line: 931, type: !834, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2590)
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "n", arg: 1, scope: !2589, file: !173, line: 931, type: !6)
!2592 = !DILocalVariable(name: "arg", arg: 2, scope: !2589, file: !173, line: 931, type: !48)
!2593 = !DILocation(line: 0, scope: !2589)
!2594 = !DILocation(line: 933, column: 10, scope: !2589)
!2595 = !DILocation(line: 933, column: 3, scope: !2589)
!2596 = distinct !DISubprogram(name: "quotearg_n_options", scope: !173, file: !173, line: 877, type: !2597, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!8, !6, !48, !42, !1644}
!2599 = !{!2600, !2601, !2602, !2603, !2604, !2605, !2606, !2609, !2610, !2612, !2613, !2614}
!2600 = !DILocalVariable(name: "n", arg: 1, scope: !2596, file: !173, line: 877, type: !6)
!2601 = !DILocalVariable(name: "arg", arg: 2, scope: !2596, file: !173, line: 877, type: !48)
!2602 = !DILocalVariable(name: "argsize", arg: 3, scope: !2596, file: !173, line: 877, type: !42)
!2603 = !DILocalVariable(name: "options", arg: 4, scope: !2596, file: !173, line: 878, type: !1644)
!2604 = !DILocalVariable(name: "e", scope: !2596, file: !173, line: 880, type: !6)
!2605 = !DILocalVariable(name: "sv", scope: !2596, file: !173, line: 882, type: !223)
!2606 = !DILocalVariable(name: "preallocated", scope: !2607, file: !173, line: 889, type: !74)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !173, line: 888, column: 5)
!2608 = distinct !DILexicalBlock(scope: !2596, file: !173, line: 887, column: 7)
!2609 = !DILocalVariable(name: "nmax", scope: !2607, file: !173, line: 890, type: !6)
!2610 = !DILocalVariable(name: "size", scope: !2611, file: !173, line: 903, type: !42)
!2611 = distinct !DILexicalBlock(scope: !2596, file: !173, line: 902, column: 3)
!2612 = !DILocalVariable(name: "val", scope: !2611, file: !173, line: 904, type: !8)
!2613 = !DILocalVariable(name: "flags", scope: !2611, file: !173, line: 906, type: !6)
!2614 = !DILocalVariable(name: "qsize", scope: !2611, file: !173, line: 907, type: !42)
!2615 = !DILocation(line: 0, scope: !2596)
!2616 = !DILocation(line: 880, column: 11, scope: !2596)
!2617 = !DILocation(line: 882, column: 24, scope: !2596)
!2618 = !DILocation(line: 884, column: 9, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2596, file: !173, line: 884, column: 7)
!2620 = !DILocation(line: 884, column: 7, scope: !2596)
!2621 = !DILocation(line: 885, column: 5, scope: !2619)
!2622 = !DILocation(line: 887, column: 7, scope: !2608)
!2623 = !DILocation(line: 887, column: 14, scope: !2608)
!2624 = !DILocation(line: 887, column: 7, scope: !2596)
!2625 = !DILocation(line: 889, column: 31, scope: !2607)
!2626 = !DILocation(line: 0, scope: !2607)
!2627 = !DILocation(line: 892, column: 16, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2607, file: !173, line: 892, column: 11)
!2629 = !DILocation(line: 892, column: 11, scope: !2607)
!2630 = !DILocation(line: 893, column: 9, scope: !2628)
!2631 = !DILocation(line: 895, column: 32, scope: !2607)
!2632 = !DILocation(line: 895, column: 61, scope: !2607)
!2633 = !DILocation(line: 895, column: 66, scope: !2607)
!2634 = !DILocation(line: 895, column: 22, scope: !2607)
!2635 = !DILocation(line: 895, column: 15, scope: !2607)
!2636 = !DILocation(line: 896, column: 11, scope: !2607)
!2637 = !DILocation(line: 897, column: 15, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2607, file: !173, line: 896, column: 11)
!2639 = !{i64 0, i64 8, !2548, i64 8, i64 8, !708}
!2640 = !DILocation(line: 897, column: 9, scope: !2638)
!2641 = !DILocation(line: 898, column: 20, scope: !2607)
!2642 = !DILocation(line: 898, column: 18, scope: !2607)
!2643 = !DILocation(line: 898, column: 15, scope: !2607)
!2644 = !DILocation(line: 898, column: 38, scope: !2607)
!2645 = !DILocation(line: 898, column: 31, scope: !2607)
!2646 = !DILocation(line: 898, column: 48, scope: !2607)
!2647 = !DILocation(line: 0, scope: !2040, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 898, column: 7, scope: !2607)
!2649 = !DILocation(line: 59, column: 10, scope: !2040, inlinedAt: !2648)
!2650 = !DILocation(line: 899, column: 14, scope: !2607)
!2651 = !DILocation(line: 900, column: 5, scope: !2607)
!2652 = !DILocation(line: 903, column: 19, scope: !2611)
!2653 = !DILocation(line: 903, column: 25, scope: !2611)
!2654 = !DILocation(line: 0, scope: !2611)
!2655 = !DILocation(line: 904, column: 23, scope: !2611)
!2656 = !DILocation(line: 906, column: 26, scope: !2611)
!2657 = !DILocation(line: 906, column: 32, scope: !2611)
!2658 = !DILocation(line: 908, column: 55, scope: !2611)
!2659 = !DILocation(line: 909, column: 46, scope: !2611)
!2660 = !DILocation(line: 910, column: 55, scope: !2611)
!2661 = !DILocation(line: 911, column: 55, scope: !2611)
!2662 = !DILocation(line: 907, column: 20, scope: !2611)
!2663 = !DILocation(line: 913, column: 14, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2611, file: !173, line: 913, column: 9)
!2665 = !DILocation(line: 913, column: 9, scope: !2611)
!2666 = !DILocation(line: 915, column: 35, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !173, line: 914, column: 7)
!2668 = !DILocation(line: 915, column: 20, scope: !2667)
!2669 = !DILocation(line: 916, column: 17, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !173, line: 916, column: 13)
!2671 = !DILocation(line: 916, column: 13, scope: !2667)
!2672 = !DILocation(line: 917, column: 11, scope: !2670)
!2673 = !DILocation(line: 0, scope: !2512, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 918, column: 27, scope: !2667)
!2675 = !DILocation(line: 218, column: 10, scope: !2512, inlinedAt: !2674)
!2676 = !DILocation(line: 918, column: 19, scope: !2667)
!2677 = !DILocation(line: 919, column: 69, scope: !2667)
!2678 = !DILocation(line: 921, column: 44, scope: !2667)
!2679 = !DILocation(line: 922, column: 44, scope: !2667)
!2680 = !DILocation(line: 919, column: 9, scope: !2667)
!2681 = !DILocation(line: 923, column: 7, scope: !2667)
!2682 = !DILocation(line: 925, column: 11, scope: !2611)
!2683 = !DILocation(line: 926, column: 5, scope: !2611)
!2684 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !173, file: !173, line: 937, type: !2685, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!8, !6, !48, !42}
!2687 = !{!2688, !2689, !2690}
!2688 = !DILocalVariable(name: "n", arg: 1, scope: !2684, file: !173, line: 937, type: !6)
!2689 = !DILocalVariable(name: "arg", arg: 2, scope: !2684, file: !173, line: 937, type: !48)
!2690 = !DILocalVariable(name: "argsize", arg: 3, scope: !2684, file: !173, line: 937, type: !42)
!2691 = !DILocation(line: 0, scope: !2684)
!2692 = !DILocation(line: 939, column: 10, scope: !2684)
!2693 = !DILocation(line: 939, column: 3, scope: !2684)
!2694 = distinct !DISubprogram(name: "quotearg", scope: !173, file: !173, line: 943, type: !1405, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2695)
!2695 = !{!2696}
!2696 = !DILocalVariable(name: "arg", arg: 1, scope: !2694, file: !173, line: 943, type: !48)
!2697 = !DILocation(line: 0, scope: !2694)
!2698 = !DILocation(line: 0, scope: !2589, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 945, column: 10, scope: !2694)
!2700 = !DILocation(line: 933, column: 10, scope: !2589, inlinedAt: !2699)
!2701 = !DILocation(line: 945, column: 3, scope: !2694)
!2702 = distinct !DISubprogram(name: "quotearg_mem", scope: !173, file: !173, line: 949, type: !2703, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!8, !48, !42}
!2705 = !{!2706, !2707}
!2706 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !173, line: 949, type: !48)
!2707 = !DILocalVariable(name: "argsize", arg: 2, scope: !2702, file: !173, line: 949, type: !42)
!2708 = !DILocation(line: 0, scope: !2702)
!2709 = !DILocation(line: 0, scope: !2684, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 951, column: 10, scope: !2702)
!2711 = !DILocation(line: 939, column: 10, scope: !2684, inlinedAt: !2710)
!2712 = !DILocation(line: 951, column: 3, scope: !2702)
!2713 = distinct !DISubprogram(name: "quotearg_n_style", scope: !173, file: !173, line: 955, type: !2714, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!8, !6, !12, !48}
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DILocalVariable(name: "n", arg: 1, scope: !2713, file: !173, line: 955, type: !6)
!2718 = !DILocalVariable(name: "s", arg: 2, scope: !2713, file: !173, line: 955, type: !12)
!2719 = !DILocalVariable(name: "arg", arg: 3, scope: !2713, file: !173, line: 955, type: !48)
!2720 = !DILocalVariable(name: "o", scope: !2713, file: !173, line: 957, type: !1645)
!2721 = !DILocation(line: 0, scope: !2713)
!2722 = !DILocation(line: 957, column: 3, scope: !2713)
!2723 = !DILocation(line: 957, column: 32, scope: !2713)
!2724 = !{!2725}
!2725 = distinct !{!2725, !2726, !"quoting_options_from_style: argument 0"}
!2726 = distinct !{!2726, !"quoting_options_from_style"}
!2727 = !DILocation(line: 957, column: 36, scope: !2713)
!2728 = !DILocalVariable(name: "style", arg: 1, scope: !2729, file: !173, line: 193, type: !12)
!2729 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !173, file: !173, line: 193, type: !2730, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!204, !12}
!2732 = !{!2728, !2733}
!2733 = !DILocalVariable(name: "o", scope: !2729, file: !173, line: 195, type: !204)
!2734 = !DILocation(line: 0, scope: !2729, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 957, column: 36, scope: !2713)
!2736 = !DILocation(line: 195, column: 26, scope: !2729, inlinedAt: !2735)
!2737 = !DILocation(line: 196, column: 13, scope: !2738, inlinedAt: !2735)
!2738 = distinct !DILexicalBlock(scope: !2729, file: !173, line: 196, column: 7)
!2739 = !DILocation(line: 196, column: 7, scope: !2729, inlinedAt: !2735)
!2740 = !DILocation(line: 197, column: 5, scope: !2738, inlinedAt: !2735)
!2741 = !DILocation(line: 198, column: 5, scope: !2729, inlinedAt: !2735)
!2742 = !DILocation(line: 198, column: 11, scope: !2729, inlinedAt: !2735)
!2743 = !DILocation(line: 958, column: 10, scope: !2713)
!2744 = !DILocation(line: 959, column: 1, scope: !2713)
!2745 = !DILocation(line: 958, column: 3, scope: !2713)
!2746 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !173, file: !173, line: 962, type: !2747, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!8, !6, !12, !48, !42}
!2749 = !{!2750, !2751, !2752, !2753, !2754}
!2750 = !DILocalVariable(name: "n", arg: 1, scope: !2746, file: !173, line: 962, type: !6)
!2751 = !DILocalVariable(name: "s", arg: 2, scope: !2746, file: !173, line: 962, type: !12)
!2752 = !DILocalVariable(name: "arg", arg: 3, scope: !2746, file: !173, line: 963, type: !48)
!2753 = !DILocalVariable(name: "argsize", arg: 4, scope: !2746, file: !173, line: 963, type: !42)
!2754 = !DILocalVariable(name: "o", scope: !2746, file: !173, line: 965, type: !1645)
!2755 = !DILocation(line: 0, scope: !2746)
!2756 = !DILocation(line: 965, column: 3, scope: !2746)
!2757 = !DILocation(line: 965, column: 32, scope: !2746)
!2758 = !{!2759}
!2759 = distinct !{!2759, !2760, !"quoting_options_from_style: argument 0"}
!2760 = distinct !{!2760, !"quoting_options_from_style"}
!2761 = !DILocation(line: 965, column: 36, scope: !2746)
!2762 = !DILocation(line: 0, scope: !2729, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 965, column: 36, scope: !2746)
!2764 = !DILocation(line: 195, column: 26, scope: !2729, inlinedAt: !2763)
!2765 = !DILocation(line: 196, column: 13, scope: !2738, inlinedAt: !2763)
!2766 = !DILocation(line: 196, column: 7, scope: !2729, inlinedAt: !2763)
!2767 = !DILocation(line: 197, column: 5, scope: !2738, inlinedAt: !2763)
!2768 = !DILocation(line: 198, column: 5, scope: !2729, inlinedAt: !2763)
!2769 = !DILocation(line: 198, column: 11, scope: !2729, inlinedAt: !2763)
!2770 = !DILocation(line: 966, column: 10, scope: !2746)
!2771 = !DILocation(line: 967, column: 1, scope: !2746)
!2772 = !DILocation(line: 966, column: 3, scope: !2746)
!2773 = distinct !DISubprogram(name: "quotearg_style", scope: !173, file: !173, line: 970, type: !2774, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!8, !12, !48}
!2776 = !{!2777, !2778}
!2777 = !DILocalVariable(name: "s", arg: 1, scope: !2773, file: !173, line: 970, type: !12)
!2778 = !DILocalVariable(name: "arg", arg: 2, scope: !2773, file: !173, line: 970, type: !48)
!2779 = !DILocation(line: 0, scope: !2773)
!2780 = !DILocation(line: 0, scope: !2713, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 972, column: 10, scope: !2773)
!2782 = !DILocation(line: 957, column: 3, scope: !2713, inlinedAt: !2781)
!2783 = !DILocation(line: 957, column: 32, scope: !2713, inlinedAt: !2781)
!2784 = !{!2785}
!2785 = distinct !{!2785, !2786, !"quoting_options_from_style: argument 0"}
!2786 = distinct !{!2786, !"quoting_options_from_style"}
!2787 = !DILocation(line: 957, column: 36, scope: !2713, inlinedAt: !2781)
!2788 = !DILocation(line: 0, scope: !2729, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 957, column: 36, scope: !2713, inlinedAt: !2781)
!2790 = !DILocation(line: 195, column: 26, scope: !2729, inlinedAt: !2789)
!2791 = !DILocation(line: 196, column: 13, scope: !2738, inlinedAt: !2789)
!2792 = !DILocation(line: 196, column: 7, scope: !2729, inlinedAt: !2789)
!2793 = !DILocation(line: 197, column: 5, scope: !2738, inlinedAt: !2789)
!2794 = !DILocation(line: 198, column: 5, scope: !2729, inlinedAt: !2789)
!2795 = !DILocation(line: 198, column: 11, scope: !2729, inlinedAt: !2789)
!2796 = !DILocation(line: 958, column: 10, scope: !2713, inlinedAt: !2781)
!2797 = !DILocation(line: 959, column: 1, scope: !2713, inlinedAt: !2781)
!2798 = !DILocation(line: 972, column: 3, scope: !2773)
!2799 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !173, file: !173, line: 976, type: !2800, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!8, !12, !48, !42}
!2802 = !{!2803, !2804, !2805}
!2803 = !DILocalVariable(name: "s", arg: 1, scope: !2799, file: !173, line: 976, type: !12)
!2804 = !DILocalVariable(name: "arg", arg: 2, scope: !2799, file: !173, line: 976, type: !48)
!2805 = !DILocalVariable(name: "argsize", arg: 3, scope: !2799, file: !173, line: 976, type: !42)
!2806 = !DILocation(line: 0, scope: !2799)
!2807 = !DILocation(line: 0, scope: !2746, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 978, column: 10, scope: !2799)
!2809 = !DILocation(line: 965, column: 3, scope: !2746, inlinedAt: !2808)
!2810 = !DILocation(line: 965, column: 32, scope: !2746, inlinedAt: !2808)
!2811 = !{!2812}
!2812 = distinct !{!2812, !2813, !"quoting_options_from_style: argument 0"}
!2813 = distinct !{!2813, !"quoting_options_from_style"}
!2814 = !DILocation(line: 965, column: 36, scope: !2746, inlinedAt: !2808)
!2815 = !DILocation(line: 0, scope: !2729, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 965, column: 36, scope: !2746, inlinedAt: !2808)
!2817 = !DILocation(line: 195, column: 26, scope: !2729, inlinedAt: !2816)
!2818 = !DILocation(line: 196, column: 13, scope: !2738, inlinedAt: !2816)
!2819 = !DILocation(line: 196, column: 7, scope: !2729, inlinedAt: !2816)
!2820 = !DILocation(line: 197, column: 5, scope: !2738, inlinedAt: !2816)
!2821 = !DILocation(line: 198, column: 5, scope: !2729, inlinedAt: !2816)
!2822 = !DILocation(line: 198, column: 11, scope: !2729, inlinedAt: !2816)
!2823 = !DILocation(line: 966, column: 10, scope: !2746, inlinedAt: !2808)
!2824 = !DILocation(line: 967, column: 1, scope: !2746, inlinedAt: !2808)
!2825 = !DILocation(line: 978, column: 3, scope: !2799)
!2826 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !173, file: !173, line: 982, type: !2827, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!8, !48, !42, !9}
!2829 = !{!2830, !2831, !2832, !2833}
!2830 = !DILocalVariable(name: "arg", arg: 1, scope: !2826, file: !173, line: 982, type: !48)
!2831 = !DILocalVariable(name: "argsize", arg: 2, scope: !2826, file: !173, line: 982, type: !42)
!2832 = !DILocalVariable(name: "ch", arg: 3, scope: !2826, file: !173, line: 982, type: !9)
!2833 = !DILocalVariable(name: "options", scope: !2826, file: !173, line: 984, type: !204)
!2834 = !DILocation(line: 0, scope: !2826)
!2835 = !DILocation(line: 984, column: 3, scope: !2826)
!2836 = !DILocation(line: 984, column: 26, scope: !2826)
!2837 = !DILocation(line: 985, column: 13, scope: !2826)
!2838 = !{i64 0, i64 4, !1166, i64 4, i64 4, !874, i64 8, i64 32, !1166, i64 40, i64 8, !708, i64 48, i64 8, !708}
!2839 = !DILocation(line: 0, scope: !1665, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 986, column: 3, scope: !2826)
!2841 = !DILocation(line: 156, column: 62, scope: !1665, inlinedAt: !2840)
!2842 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2840)
!2843 = !DILocation(line: 157, column: 15, scope: !1665, inlinedAt: !2840)
!2844 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2840)
!2845 = !DILocation(line: 158, column: 15, scope: !1665, inlinedAt: !2840)
!2846 = !DILocation(line: 158, column: 25, scope: !1665, inlinedAt: !2840)
!2847 = !DILocation(line: 159, column: 18, scope: !1665, inlinedAt: !2840)
!2848 = !DILocation(line: 159, column: 23, scope: !1665, inlinedAt: !2840)
!2849 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2840)
!2850 = !DILocation(line: 987, column: 10, scope: !2826)
!2851 = !DILocation(line: 988, column: 1, scope: !2826)
!2852 = !DILocation(line: 987, column: 3, scope: !2826)
!2853 = distinct !DISubprogram(name: "quotearg_char", scope: !173, file: !173, line: 991, type: !2854, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!8, !48, !9}
!2856 = !{!2857, !2858}
!2857 = !DILocalVariable(name: "arg", arg: 1, scope: !2853, file: !173, line: 991, type: !48)
!2858 = !DILocalVariable(name: "ch", arg: 2, scope: !2853, file: !173, line: 991, type: !9)
!2859 = !DILocation(line: 0, scope: !2853)
!2860 = !DILocation(line: 0, scope: !2826, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 993, column: 10, scope: !2853)
!2862 = !DILocation(line: 984, column: 3, scope: !2826, inlinedAt: !2861)
!2863 = !DILocation(line: 984, column: 26, scope: !2826, inlinedAt: !2861)
!2864 = !DILocation(line: 985, column: 13, scope: !2826, inlinedAt: !2861)
!2865 = !DILocation(line: 0, scope: !1665, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 986, column: 3, scope: !2826, inlinedAt: !2861)
!2867 = !DILocation(line: 156, column: 62, scope: !1665, inlinedAt: !2866)
!2868 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2866)
!2869 = !DILocation(line: 157, column: 15, scope: !1665, inlinedAt: !2866)
!2870 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2866)
!2871 = !DILocation(line: 158, column: 15, scope: !1665, inlinedAt: !2866)
!2872 = !DILocation(line: 158, column: 25, scope: !1665, inlinedAt: !2866)
!2873 = !DILocation(line: 159, column: 18, scope: !1665, inlinedAt: !2866)
!2874 = !DILocation(line: 159, column: 23, scope: !1665, inlinedAt: !2866)
!2875 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2866)
!2876 = !DILocation(line: 987, column: 10, scope: !2826, inlinedAt: !2861)
!2877 = !DILocation(line: 988, column: 1, scope: !2826, inlinedAt: !2861)
!2878 = !DILocation(line: 993, column: 3, scope: !2853)
!2879 = distinct !DISubprogram(name: "quotearg_colon", scope: !173, file: !173, line: 997, type: !1405, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2880)
!2880 = !{!2881}
!2881 = !DILocalVariable(name: "arg", arg: 1, scope: !2879, file: !173, line: 997, type: !48)
!2882 = !DILocation(line: 0, scope: !2879)
!2883 = !DILocation(line: 0, scope: !2853, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 999, column: 10, scope: !2879)
!2885 = !DILocation(line: 0, scope: !2826, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 993, column: 10, scope: !2853, inlinedAt: !2884)
!2887 = !DILocation(line: 984, column: 3, scope: !2826, inlinedAt: !2886)
!2888 = !DILocation(line: 984, column: 26, scope: !2826, inlinedAt: !2886)
!2889 = !DILocation(line: 985, column: 13, scope: !2826, inlinedAt: !2886)
!2890 = !DILocation(line: 0, scope: !1665, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 986, column: 3, scope: !2826, inlinedAt: !2886)
!2892 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2891)
!2893 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2891)
!2894 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2891)
!2895 = !DILocation(line: 987, column: 10, scope: !2826, inlinedAt: !2886)
!2896 = !DILocation(line: 988, column: 1, scope: !2826, inlinedAt: !2886)
!2897 = !DILocation(line: 999, column: 3, scope: !2879)
!2898 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !173, file: !173, line: 1003, type: !2703, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2899)
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "arg", arg: 1, scope: !2898, file: !173, line: 1003, type: !48)
!2901 = !DILocalVariable(name: "argsize", arg: 2, scope: !2898, file: !173, line: 1003, type: !42)
!2902 = !DILocation(line: 0, scope: !2898)
!2903 = !DILocation(line: 0, scope: !2826, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 1005, column: 10, scope: !2898)
!2905 = !DILocation(line: 984, column: 3, scope: !2826, inlinedAt: !2904)
!2906 = !DILocation(line: 984, column: 26, scope: !2826, inlinedAt: !2904)
!2907 = !DILocation(line: 985, column: 13, scope: !2826, inlinedAt: !2904)
!2908 = !DILocation(line: 0, scope: !1665, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 986, column: 3, scope: !2826, inlinedAt: !2904)
!2910 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2909)
!2911 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2909)
!2912 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2909)
!2913 = !DILocation(line: 987, column: 10, scope: !2826, inlinedAt: !2904)
!2914 = !DILocation(line: 988, column: 1, scope: !2826, inlinedAt: !2904)
!2915 = !DILocation(line: 1005, column: 3, scope: !2898)
!2916 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !173, file: !173, line: 1009, type: !2714, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2917)
!2917 = !{!2918, !2919, !2920, !2921}
!2918 = !DILocalVariable(name: "n", arg: 1, scope: !2916, file: !173, line: 1009, type: !6)
!2919 = !DILocalVariable(name: "s", arg: 2, scope: !2916, file: !173, line: 1009, type: !12)
!2920 = !DILocalVariable(name: "arg", arg: 3, scope: !2916, file: !173, line: 1009, type: !48)
!2921 = !DILocalVariable(name: "options", scope: !2916, file: !173, line: 1011, type: !204)
!2922 = !DILocation(line: 195, column: 26, scope: !2729, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 1012, column: 13, scope: !2916)
!2924 = !DILocation(line: 0, scope: !2916)
!2925 = !DILocation(line: 1011, column: 3, scope: !2916)
!2926 = !DILocation(line: 1011, column: 26, scope: !2916)
!2927 = !DILocation(line: 1012, column: 13, scope: !2916)
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"quoting_options_from_style: argument 0"}
!2930 = distinct !{!2930, !"quoting_options_from_style"}
!2931 = !DILocation(line: 0, scope: !2729, inlinedAt: !2923)
!2932 = !DILocation(line: 196, column: 13, scope: !2738, inlinedAt: !2923)
!2933 = !DILocation(line: 196, column: 7, scope: !2729, inlinedAt: !2923)
!2934 = !DILocation(line: 197, column: 5, scope: !2738, inlinedAt: !2923)
!2935 = !{i64 0, i64 4, !874, i64 4, i64 32, !1166, i64 36, i64 8, !708, i64 44, i64 8, !708}
!2936 = !DILocation(line: 0, scope: !1665, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1013, column: 3, scope: !2916)
!2938 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2937)
!2939 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2937)
!2940 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2937)
!2941 = !DILocation(line: 1014, column: 10, scope: !2916)
!2942 = !DILocation(line: 1015, column: 1, scope: !2916)
!2943 = !DILocation(line: 1014, column: 3, scope: !2916)
!2944 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !173, file: !173, line: 1018, type: !2945, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!8, !6, !48, !48, !48}
!2947 = !{!2948, !2949, !2950, !2951}
!2948 = !DILocalVariable(name: "n", arg: 1, scope: !2944, file: !173, line: 1018, type: !6)
!2949 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2944, file: !173, line: 1018, type: !48)
!2950 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2944, file: !173, line: 1019, type: !48)
!2951 = !DILocalVariable(name: "arg", arg: 4, scope: !2944, file: !173, line: 1019, type: !48)
!2952 = !DILocation(line: 0, scope: !2944)
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2954, file: !173, line: 1026, type: !6)
!2954 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !173, file: !173, line: 1026, type: !2955, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!8, !6, !48, !48, !48, !42}
!2957 = !{!2953, !2958, !2959, !2960, !2961, !2962}
!2958 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2954, file: !173, line: 1026, type: !48)
!2959 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2954, file: !173, line: 1027, type: !48)
!2960 = !DILocalVariable(name: "arg", arg: 4, scope: !2954, file: !173, line: 1028, type: !48)
!2961 = !DILocalVariable(name: "argsize", arg: 5, scope: !2954, file: !173, line: 1028, type: !42)
!2962 = !DILocalVariable(name: "o", scope: !2954, file: !173, line: 1030, type: !204)
!2963 = !DILocation(line: 0, scope: !2954, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 1021, column: 10, scope: !2944)
!2965 = !DILocation(line: 1030, column: 3, scope: !2954, inlinedAt: !2964)
!2966 = !DILocation(line: 1030, column: 26, scope: !2954, inlinedAt: !2964)
!2967 = !DILocation(line: 1030, column: 30, scope: !2954, inlinedAt: !2964)
!2968 = !DILocation(line: 0, scope: !1705, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1031, column: 3, scope: !2954, inlinedAt: !2964)
!2970 = !DILocation(line: 184, column: 6, scope: !1705, inlinedAt: !2969)
!2971 = !DILocation(line: 184, column: 12, scope: !1705, inlinedAt: !2969)
!2972 = !DILocation(line: 185, column: 8, scope: !1719, inlinedAt: !2969)
!2973 = !DILocation(line: 185, column: 19, scope: !1719, inlinedAt: !2969)
!2974 = !DILocation(line: 186, column: 5, scope: !1719, inlinedAt: !2969)
!2975 = !DILocation(line: 187, column: 6, scope: !1705, inlinedAt: !2969)
!2976 = !DILocation(line: 187, column: 17, scope: !1705, inlinedAt: !2969)
!2977 = !DILocation(line: 188, column: 6, scope: !1705, inlinedAt: !2969)
!2978 = !DILocation(line: 188, column: 18, scope: !1705, inlinedAt: !2969)
!2979 = !DILocation(line: 1032, column: 10, scope: !2954, inlinedAt: !2964)
!2980 = !DILocation(line: 1033, column: 1, scope: !2954, inlinedAt: !2964)
!2981 = !DILocation(line: 1021, column: 3, scope: !2944)
!2982 = !DILocation(line: 0, scope: !2954)
!2983 = !DILocation(line: 1030, column: 3, scope: !2954)
!2984 = !DILocation(line: 1030, column: 26, scope: !2954)
!2985 = !DILocation(line: 1030, column: 30, scope: !2954)
!2986 = !DILocation(line: 0, scope: !1705, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 1031, column: 3, scope: !2954)
!2988 = !DILocation(line: 184, column: 6, scope: !1705, inlinedAt: !2987)
!2989 = !DILocation(line: 184, column: 12, scope: !1705, inlinedAt: !2987)
!2990 = !DILocation(line: 185, column: 8, scope: !1719, inlinedAt: !2987)
!2991 = !DILocation(line: 185, column: 19, scope: !1719, inlinedAt: !2987)
!2992 = !DILocation(line: 186, column: 5, scope: !1719, inlinedAt: !2987)
!2993 = !DILocation(line: 187, column: 6, scope: !1705, inlinedAt: !2987)
!2994 = !DILocation(line: 187, column: 17, scope: !1705, inlinedAt: !2987)
!2995 = !DILocation(line: 188, column: 6, scope: !1705, inlinedAt: !2987)
!2996 = !DILocation(line: 188, column: 18, scope: !1705, inlinedAt: !2987)
!2997 = !DILocation(line: 1032, column: 10, scope: !2954)
!2998 = !DILocation(line: 1033, column: 1, scope: !2954)
!2999 = !DILocation(line: 1032, column: 3, scope: !2954)
!3000 = distinct !DISubprogram(name: "quotearg_custom", scope: !173, file: !173, line: 1036, type: !3001, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!8, !48, !48, !48}
!3003 = !{!3004, !3005, !3006}
!3004 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3000, file: !173, line: 1036, type: !48)
!3005 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3000, file: !173, line: 1036, type: !48)
!3006 = !DILocalVariable(name: "arg", arg: 3, scope: !3000, file: !173, line: 1037, type: !48)
!3007 = !DILocation(line: 0, scope: !3000)
!3008 = !DILocation(line: 0, scope: !2944, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 1039, column: 10, scope: !3000)
!3010 = !DILocation(line: 0, scope: !2954, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 1021, column: 10, scope: !2944, inlinedAt: !3009)
!3012 = !DILocation(line: 1030, column: 3, scope: !2954, inlinedAt: !3011)
!3013 = !DILocation(line: 1030, column: 26, scope: !2954, inlinedAt: !3011)
!3014 = !DILocation(line: 1030, column: 30, scope: !2954, inlinedAt: !3011)
!3015 = !DILocation(line: 0, scope: !1705, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 1031, column: 3, scope: !2954, inlinedAt: !3011)
!3017 = !DILocation(line: 184, column: 6, scope: !1705, inlinedAt: !3016)
!3018 = !DILocation(line: 184, column: 12, scope: !1705, inlinedAt: !3016)
!3019 = !DILocation(line: 185, column: 8, scope: !1719, inlinedAt: !3016)
!3020 = !DILocation(line: 185, column: 19, scope: !1719, inlinedAt: !3016)
!3021 = !DILocation(line: 186, column: 5, scope: !1719, inlinedAt: !3016)
!3022 = !DILocation(line: 187, column: 6, scope: !1705, inlinedAt: !3016)
!3023 = !DILocation(line: 187, column: 17, scope: !1705, inlinedAt: !3016)
!3024 = !DILocation(line: 188, column: 6, scope: !1705, inlinedAt: !3016)
!3025 = !DILocation(line: 188, column: 18, scope: !1705, inlinedAt: !3016)
!3026 = !DILocation(line: 1032, column: 10, scope: !2954, inlinedAt: !3011)
!3027 = !DILocation(line: 1033, column: 1, scope: !2954, inlinedAt: !3011)
!3028 = !DILocation(line: 1039, column: 3, scope: !3000)
!3029 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !173, file: !173, line: 1043, type: !3030, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!8, !48, !48, !48, !42}
!3032 = !{!3033, !3034, !3035, !3036}
!3033 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3029, file: !173, line: 1043, type: !48)
!3034 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3029, file: !173, line: 1043, type: !48)
!3035 = !DILocalVariable(name: "arg", arg: 3, scope: !3029, file: !173, line: 1044, type: !48)
!3036 = !DILocalVariable(name: "argsize", arg: 4, scope: !3029, file: !173, line: 1044, type: !42)
!3037 = !DILocation(line: 0, scope: !3029)
!3038 = !DILocation(line: 0, scope: !2954, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1046, column: 10, scope: !3029)
!3040 = !DILocation(line: 1030, column: 3, scope: !2954, inlinedAt: !3039)
!3041 = !DILocation(line: 1030, column: 26, scope: !2954, inlinedAt: !3039)
!3042 = !DILocation(line: 1030, column: 30, scope: !2954, inlinedAt: !3039)
!3043 = !DILocation(line: 0, scope: !1705, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 1031, column: 3, scope: !2954, inlinedAt: !3039)
!3045 = !DILocation(line: 184, column: 6, scope: !1705, inlinedAt: !3044)
!3046 = !DILocation(line: 184, column: 12, scope: !1705, inlinedAt: !3044)
!3047 = !DILocation(line: 185, column: 8, scope: !1719, inlinedAt: !3044)
!3048 = !DILocation(line: 185, column: 19, scope: !1719, inlinedAt: !3044)
!3049 = !DILocation(line: 186, column: 5, scope: !1719, inlinedAt: !3044)
!3050 = !DILocation(line: 187, column: 6, scope: !1705, inlinedAt: !3044)
!3051 = !DILocation(line: 187, column: 17, scope: !1705, inlinedAt: !3044)
!3052 = !DILocation(line: 188, column: 6, scope: !1705, inlinedAt: !3044)
!3053 = !DILocation(line: 188, column: 18, scope: !1705, inlinedAt: !3044)
!3054 = !DILocation(line: 1032, column: 10, scope: !2954, inlinedAt: !3039)
!3055 = !DILocation(line: 1033, column: 1, scope: !2954, inlinedAt: !3039)
!3056 = !DILocation(line: 1046, column: 3, scope: !3029)
!3057 = distinct !DISubprogram(name: "quote_n_mem", scope: !173, file: !173, line: 1061, type: !3058, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!48, !6, !48, !42}
!3060 = !{!3061, !3062, !3063}
!3061 = !DILocalVariable(name: "n", arg: 1, scope: !3057, file: !173, line: 1061, type: !6)
!3062 = !DILocalVariable(name: "arg", arg: 2, scope: !3057, file: !173, line: 1061, type: !48)
!3063 = !DILocalVariable(name: "argsize", arg: 3, scope: !3057, file: !173, line: 1061, type: !42)
!3064 = !DILocation(line: 0, scope: !3057)
!3065 = !DILocation(line: 1063, column: 10, scope: !3057)
!3066 = !DILocation(line: 1063, column: 3, scope: !3057)
!3067 = distinct !DISubprogram(name: "quote_mem", scope: !173, file: !173, line: 1067, type: !3068, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!48, !48, !42}
!3070 = !{!3071, !3072}
!3071 = !DILocalVariable(name: "arg", arg: 1, scope: !3067, file: !173, line: 1067, type: !48)
!3072 = !DILocalVariable(name: "argsize", arg: 2, scope: !3067, file: !173, line: 1067, type: !42)
!3073 = !DILocation(line: 0, scope: !3067)
!3074 = !DILocation(line: 0, scope: !3057, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 1069, column: 10, scope: !3067)
!3076 = !DILocation(line: 1063, column: 10, scope: !3057, inlinedAt: !3075)
!3077 = !DILocation(line: 1069, column: 3, scope: !3067)
!3078 = distinct !DISubprogram(name: "quote_n", scope: !173, file: !173, line: 1073, type: !3079, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!48, !6, !48}
!3081 = !{!3082, !3083}
!3082 = !DILocalVariable(name: "n", arg: 1, scope: !3078, file: !173, line: 1073, type: !6)
!3083 = !DILocalVariable(name: "arg", arg: 2, scope: !3078, file: !173, line: 1073, type: !48)
!3084 = !DILocation(line: 0, scope: !3078)
!3085 = !DILocation(line: 0, scope: !3057, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1075, column: 10, scope: !3078)
!3087 = !DILocation(line: 1063, column: 10, scope: !3057, inlinedAt: !3086)
!3088 = !DILocation(line: 1075, column: 3, scope: !3078)
!3089 = distinct !DISubprogram(name: "quote", scope: !173, file: !173, line: 1079, type: !3090, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!48, !48}
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "arg", arg: 1, scope: !3089, file: !173, line: 1079, type: !48)
!3094 = !DILocation(line: 0, scope: !3089)
!3095 = !DILocation(line: 0, scope: !3078, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 1081, column: 10, scope: !3089)
!3097 = !DILocation(line: 0, scope: !3057, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 1075, column: 10, scope: !3078, inlinedAt: !3096)
!3099 = !DILocation(line: 1063, column: 10, scope: !3057, inlinedAt: !3098)
!3100 = !DILocation(line: 1081, column: 3, scope: !3089)
!3101 = distinct !DISubprogram(name: "safe_read", scope: !251, file: !251, line: 56, type: !3102, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !250, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!42, !6, !41, !42}
!3104 = !{!3105, !3106, !3107, !3108}
!3105 = !DILocalVariable(name: "fd", arg: 1, scope: !3101, file: !251, line: 56, type: !6)
!3106 = !DILocalVariable(name: "buf", arg: 2, scope: !3101, file: !251, line: 56, type: !41)
!3107 = !DILocalVariable(name: "count", arg: 3, scope: !3101, file: !251, line: 56, type: !42)
!3108 = !DILocalVariable(name: "result", scope: !3109, file: !251, line: 60, type: !3112)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !251, line: 59, column: 5)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !251, line: 58, column: 3)
!3111 = distinct !DILexicalBlock(scope: !3101, file: !251, line: 58, column: 3)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !79, line: 108, baseType: !3113)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !81, line: 194, baseType: !105)
!3114 = !DILocation(line: 0, scope: !3101)
!3115 = !DILocation(line: 60, column: 24, scope: !3109)
!3116 = !DILocation(line: 0, scope: !3109)
!3117 = !DILocation(line: 62, column: 13, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3109, file: !251, line: 62, column: 11)
!3119 = !DILocation(line: 62, column: 11, scope: !3109)
!3120 = !DILocation(line: 64, column: 16, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3118, file: !251, line: 64, column: 16)
!3122 = !DILocation(line: 64, column: 16, scope: !3118)
!3123 = distinct !{!3123, !3124, !3125}
!3124 = !DILocation(line: 58, column: 3, scope: !3111)
!3125 = !DILocation(line: 70, column: 5, scope: !3111)
!3126 = !DILocation(line: 66, column: 22, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3121, file: !251, line: 66, column: 16)
!3128 = !DILocation(line: 66, column: 32, scope: !3127)
!3129 = !DILocation(line: 71, column: 1, scope: !3101)
!3130 = distinct !DISubprogram(name: "safe_write", scope: !3131, file: !3131, line: 56, type: !1566, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !3132)
!3131 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DILocalVariable(name: "fd", arg: 1, scope: !3130, file: !3131, line: 56, type: !6)
!3134 = !DILocalVariable(name: "buf", arg: 2, scope: !3130, file: !3131, line: 56, type: !959)
!3135 = !DILocalVariable(name: "count", arg: 3, scope: !3130, file: !3131, line: 56, type: !42)
!3136 = !DILocalVariable(name: "result", scope: !3137, file: !3131, line: 60, type: !3112)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3131, line: 59, column: 5)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !3131, line: 58, column: 3)
!3139 = distinct !DILexicalBlock(scope: !3130, file: !3131, line: 58, column: 3)
!3140 = !DILocation(line: 0, scope: !3130)
!3141 = !DILocation(line: 60, column: 24, scope: !3137)
!3142 = !DILocation(line: 0, scope: !3137)
!3143 = !DILocation(line: 62, column: 13, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3137, file: !3131, line: 62, column: 11)
!3145 = !DILocation(line: 62, column: 11, scope: !3137)
!3146 = !DILocation(line: 64, column: 16, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3144, file: !3131, line: 64, column: 16)
!3148 = !DILocation(line: 64, column: 16, scope: !3144)
!3149 = distinct !{!3149, !3150, !3151}
!3150 = !DILocation(line: 58, column: 3, scope: !3139)
!3151 = !DILocation(line: 70, column: 5, scope: !3139)
!3152 = !DILocation(line: 66, column: 22, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3147, file: !3131, line: 66, column: 16)
!3154 = !DILocation(line: 66, column: 32, scope: !3153)
!3155 = !DILocation(line: 71, column: 1, scope: !3130)
!3156 = !DISubprogram(name: "write", scope: !1398, file: !1398, line: 367, type: !3157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!105, !6, !959, !44}
!3159 = distinct !DISubprogram(name: "version_etc_arn", scope: !260, file: !260, line: 61, type: !3160, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !3197)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !3162, !48, !48, !48, !3196, !42}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1515, line: 7, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !788, line: 49, size: 1728, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3164, file: !788, line: 51, baseType: !6, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3164, file: !788, line: 54, baseType: !8, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3164, file: !788, line: 55, baseType: !8, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3164, file: !788, line: 56, baseType: !8, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3164, file: !788, line: 57, baseType: !8, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3164, file: !788, line: 58, baseType: !8, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3164, file: !788, line: 59, baseType: !8, size: 64, offset: 384)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3164, file: !788, line: 60, baseType: !8, size: 64, offset: 448)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3164, file: !788, line: 61, baseType: !8, size: 64, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3164, file: !788, line: 64, baseType: !8, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3164, file: !788, line: 65, baseType: !8, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3164, file: !788, line: 66, baseType: !8, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3164, file: !788, line: 68, baseType: !803, size: 64, offset: 768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3164, file: !788, line: 70, baseType: !3180, size: 64, offset: 832)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3164, file: !788, line: 72, baseType: !6, size: 32, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3164, file: !788, line: 73, baseType: !6, size: 32, offset: 928)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3164, file: !788, line: 74, baseType: !104, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3164, file: !788, line: 77, baseType: !196, size: 16, offset: 1024)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3164, file: !788, line: 78, baseType: !811, size: 8, offset: 1040)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3164, file: !788, line: 79, baseType: !813, size: 8, offset: 1048)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3164, file: !788, line: 81, baseType: !817, size: 64, offset: 1088)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3164, file: !788, line: 89, baseType: !820, size: 64, offset: 1152)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3164, file: !788, line: 91, baseType: !822, size: 64, offset: 1216)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3164, file: !788, line: 92, baseType: !825, size: 64, offset: 1280)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3164, file: !788, line: 93, baseType: !3180, size: 64, offset: 1344)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3164, file: !788, line: 94, baseType: !41, size: 64, offset: 1408)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3164, file: !788, line: 95, baseType: !42, size: 64, offset: 1472)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3164, file: !788, line: 96, baseType: !6, size: 32, offset: 1536)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3164, file: !788, line: 98, baseType: !60, size: 160, offset: 1568)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203}
!3198 = !DILocalVariable(name: "stream", arg: 1, scope: !3159, file: !260, line: 61, type: !3162)
!3199 = !DILocalVariable(name: "command_name", arg: 2, scope: !3159, file: !260, line: 62, type: !48)
!3200 = !DILocalVariable(name: "package", arg: 3, scope: !3159, file: !260, line: 62, type: !48)
!3201 = !DILocalVariable(name: "version", arg: 4, scope: !3159, file: !260, line: 63, type: !48)
!3202 = !DILocalVariable(name: "authors", arg: 5, scope: !3159, file: !260, line: 64, type: !3196)
!3203 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3159, file: !260, line: 64, type: !42)
!3204 = !DILocation(line: 0, scope: !3159)
!3205 = !DILocation(line: 66, column: 7, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3159, file: !260, line: 66, column: 7)
!3207 = !DILocation(line: 66, column: 7, scope: !3159)
!3208 = !DILocation(line: 67, column: 5, scope: !3206)
!3209 = !DILocation(line: 69, column: 5, scope: !3206)
!3210 = !DILocation(line: 83, column: 3, scope: !3159)
!3211 = !DILocation(line: 85, column: 3, scope: !3159)
!3212 = !DILocation(line: 88, column: 3, scope: !3159)
!3213 = !DILocation(line: 95, column: 3, scope: !3159)
!3214 = !DILocation(line: 97, column: 3, scope: !3159)
!3215 = !DILocation(line: 105, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3159, file: !260, line: 98, column: 5)
!3217 = !DILocation(line: 106, column: 7, scope: !3216)
!3218 = !DILocation(line: 109, column: 7, scope: !3216)
!3219 = !DILocation(line: 110, column: 7, scope: !3216)
!3220 = !DILocation(line: 113, column: 7, scope: !3216)
!3221 = !DILocation(line: 115, column: 7, scope: !3216)
!3222 = !DILocation(line: 120, column: 7, scope: !3216)
!3223 = !DILocation(line: 122, column: 7, scope: !3216)
!3224 = !DILocation(line: 127, column: 7, scope: !3216)
!3225 = !DILocation(line: 129, column: 7, scope: !3216)
!3226 = !DILocation(line: 134, column: 7, scope: !3216)
!3227 = !DILocation(line: 137, column: 7, scope: !3216)
!3228 = !DILocation(line: 142, column: 7, scope: !3216)
!3229 = !DILocation(line: 145, column: 7, scope: !3216)
!3230 = !DILocation(line: 150, column: 7, scope: !3216)
!3231 = !DILocation(line: 154, column: 7, scope: !3216)
!3232 = !DILocation(line: 159, column: 7, scope: !3216)
!3233 = !DILocation(line: 163, column: 7, scope: !3216)
!3234 = !DILocation(line: 170, column: 7, scope: !3216)
!3235 = !DILocation(line: 174, column: 7, scope: !3216)
!3236 = !DILocation(line: 176, column: 1, scope: !3159)
!3237 = distinct !DISubprogram(name: "version_etc_ar", scope: !260, file: !260, line: 183, type: !3238, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !3162, !48, !48, !48, !3196}
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246}
!3241 = !DILocalVariable(name: "stream", arg: 1, scope: !3237, file: !260, line: 183, type: !3162)
!3242 = !DILocalVariable(name: "command_name", arg: 2, scope: !3237, file: !260, line: 184, type: !48)
!3243 = !DILocalVariable(name: "package", arg: 3, scope: !3237, file: !260, line: 184, type: !48)
!3244 = !DILocalVariable(name: "version", arg: 4, scope: !3237, file: !260, line: 185, type: !48)
!3245 = !DILocalVariable(name: "authors", arg: 5, scope: !3237, file: !260, line: 185, type: !3196)
!3246 = !DILocalVariable(name: "n_authors", scope: !3237, file: !260, line: 187, type: !42)
!3247 = !DILocation(line: 0, scope: !3237)
!3248 = !DILocation(line: 189, column: 8, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3237, file: !260, line: 189, column: 3)
!3250 = !DILocation(line: 0, scope: !3249)
!3251 = !DILocation(line: 189, column: 23, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3249, file: !260, line: 189, column: 3)
!3253 = !DILocation(line: 189, column: 3, scope: !3249)
!3254 = !DILocation(line: 189, column: 52, scope: !3252)
!3255 = distinct !{!3255, !3253, !3256, !758}
!3256 = !DILocation(line: 190, column: 5, scope: !3249)
!3257 = !DILocation(line: 191, column: 3, scope: !3237)
!3258 = !DILocation(line: 192, column: 1, scope: !3237)
!3259 = distinct !DISubprogram(name: "version_etc_va", scope: !260, file: !260, line: 199, type: !3260, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !3269)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !3162, !48, !48, !48, !3262}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3268}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3263, file: !260, line: 192, baseType: !14, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3263, file: !260, line: 192, baseType: !14, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3263, file: !260, line: 192, baseType: !41, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3263, file: !260, line: 192, baseType: !41, size: 64, offset: 128)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276}
!3270 = !DILocalVariable(name: "stream", arg: 1, scope: !3259, file: !260, line: 199, type: !3162)
!3271 = !DILocalVariable(name: "command_name", arg: 2, scope: !3259, file: !260, line: 200, type: !48)
!3272 = !DILocalVariable(name: "package", arg: 3, scope: !3259, file: !260, line: 200, type: !48)
!3273 = !DILocalVariable(name: "version", arg: 4, scope: !3259, file: !260, line: 201, type: !48)
!3274 = !DILocalVariable(name: "authors", arg: 5, scope: !3259, file: !260, line: 201, type: !3262)
!3275 = !DILocalVariable(name: "n_authors", scope: !3259, file: !260, line: 203, type: !42)
!3276 = !DILocalVariable(name: "authtab", scope: !3259, file: !260, line: 204, type: !3277)
!3277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, elements: !143)
!3278 = !DILocation(line: 0, scope: !3259)
!3279 = !DILocation(line: 204, column: 3, scope: !3259)
!3280 = !DILocation(line: 204, column: 15, scope: !3259)
!3281 = !DILocation(line: 208, column: 35, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !260, line: 206, column: 3)
!3283 = distinct !DILexicalBlock(scope: !3259, file: !260, line: 206, column: 3)
!3284 = !DILocation(line: 208, column: 14, scope: !3282)
!3285 = !DILocation(line: 208, column: 33, scope: !3282)
!3286 = !DILocation(line: 208, column: 67, scope: !3282)
!3287 = !DILocation(line: 206, column: 3, scope: !3283)
!3288 = !DILocation(line: 0, scope: !3283)
!3289 = !DILocation(line: 211, column: 3, scope: !3259)
!3290 = !DILocation(line: 213, column: 1, scope: !3259)
!3291 = distinct !DISubprogram(name: "version_etc", scope: !260, file: !260, line: 230, type: !3292, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !3162, !48, !48, !48, null}
!3294 = !{!3295, !3296, !3297, !3298, !3299}
!3295 = !DILocalVariable(name: "stream", arg: 1, scope: !3291, file: !260, line: 230, type: !3162)
!3296 = !DILocalVariable(name: "command_name", arg: 2, scope: !3291, file: !260, line: 231, type: !48)
!3297 = !DILocalVariable(name: "package", arg: 3, scope: !3291, file: !260, line: 231, type: !48)
!3298 = !DILocalVariable(name: "version", arg: 4, scope: !3291, file: !260, line: 232, type: !48)
!3299 = !DILocalVariable(name: "authors", scope: !3291, file: !260, line: 234, type: !3300)
!3300 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !783, line: 52, baseType: !3301)
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3302, line: 32, baseType: !3303)
!3302 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !260, baseType: !3304)
!3304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3263, size: 192, elements: !814)
!3305 = !DILocation(line: 0, scope: !3291)
!3306 = !DILocation(line: 234, column: 3, scope: !3291)
!3307 = !DILocation(line: 234, column: 11, scope: !3291)
!3308 = !DILocation(line: 236, column: 3, scope: !3291)
!3309 = !DILocation(line: 237, column: 3, scope: !3291)
!3310 = !DILocation(line: 238, column: 3, scope: !3291)
!3311 = !DILocation(line: 239, column: 1, scope: !3291)
!3312 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !260, file: !260, line: 242, type: !718, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !149)
!3313 = !DILocation(line: 244, column: 3, scope: !3312)
!3314 = !DILocation(line: 249, column: 3, scope: !3312)
!3315 = !DILocation(line: 255, column: 3, scope: !3312)
!3316 = !DILocation(line: 260, column: 3, scope: !3312)
!3317 = !DILocation(line: 262, column: 1, scope: !3312)
!3318 = distinct !DISubprogram(name: "xnmalloc", scope: !270, file: !270, line: 99, type: !3319, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!41, !42, !42}
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !270, line: 99, type: !42)
!3323 = !DILocalVariable(name: "s", arg: 2, scope: !3318, file: !270, line: 99, type: !42)
!3324 = !DILocation(line: 0, scope: !3318)
!3325 = !DILocation(line: 101, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3318, file: !270, line: 101, column: 7)
!3327 = !DILocation(line: 101, column: 7, scope: !3318)
!3328 = !DILocation(line: 102, column: 5, scope: !3326)
!3329 = !DILocation(line: 103, column: 21, scope: !3318)
!3330 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !267, line: 39, type: !42)
!3331 = distinct !DISubprogram(name: "xmalloc", scope: !267, file: !267, line: 39, type: !3332, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!41, !42}
!3334 = !{!3330, !3335}
!3335 = !DILocalVariable(name: "p", scope: !3331, file: !267, line: 41, type: !41)
!3336 = !DILocation(line: 0, scope: !3331, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 103, column: 10, scope: !3318)
!3338 = !DILocation(line: 41, column: 13, scope: !3331, inlinedAt: !3337)
!3339 = !DILocation(line: 42, column: 8, scope: !3340, inlinedAt: !3337)
!3340 = distinct !DILexicalBlock(scope: !3331, file: !267, line: 42, column: 7)
!3341 = !DILocation(line: 42, column: 10, scope: !3340, inlinedAt: !3337)
!3342 = !DILocation(line: 43, column: 5, scope: !3340, inlinedAt: !3337)
!3343 = !DILocation(line: 103, column: 3, scope: !3318)
!3344 = !DILocation(line: 0, scope: !3331)
!3345 = !DILocation(line: 41, column: 13, scope: !3331)
!3346 = !DILocation(line: 42, column: 8, scope: !3340)
!3347 = !DILocation(line: 42, column: 10, scope: !3340)
!3348 = !DILocation(line: 43, column: 5, scope: !3340)
!3349 = !DILocation(line: 44, column: 3, scope: !3331)
!3350 = distinct !DISubprogram(name: "xnrealloc", scope: !270, file: !270, line: 112, type: !3351, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!41, !41, !42, !42}
!3353 = !{!3354, !3355, !3356}
!3354 = !DILocalVariable(name: "p", arg: 1, scope: !3350, file: !270, line: 112, type: !41)
!3355 = !DILocalVariable(name: "n", arg: 2, scope: !3350, file: !270, line: 112, type: !42)
!3356 = !DILocalVariable(name: "s", arg: 3, scope: !3350, file: !270, line: 112, type: !42)
!3357 = !DILocation(line: 0, scope: !3350)
!3358 = !DILocation(line: 114, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3350, file: !270, line: 114, column: 7)
!3360 = !DILocation(line: 114, column: 7, scope: !3350)
!3361 = !DILocation(line: 115, column: 5, scope: !3359)
!3362 = !DILocation(line: 116, column: 25, scope: !3350)
!3363 = !DILocalVariable(name: "p", arg: 1, scope: !3364, file: !267, line: 51, type: !41)
!3364 = distinct !DISubprogram(name: "xrealloc", scope: !267, file: !267, line: 51, type: !3365, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!41, !41, !42}
!3367 = !{!3363, !3368}
!3368 = !DILocalVariable(name: "n", arg: 2, scope: !3364, file: !267, line: 51, type: !42)
!3369 = !DILocation(line: 0, scope: !3364, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 116, column: 10, scope: !3350)
!3371 = !DILocation(line: 53, column: 8, scope: !3372, inlinedAt: !3370)
!3372 = distinct !DILexicalBlock(scope: !3364, file: !267, line: 53, column: 7)
!3373 = !DILocation(line: 53, column: 10, scope: !3372, inlinedAt: !3370)
!3374 = !DILocation(line: 57, column: 7, scope: !3375, inlinedAt: !3370)
!3375 = distinct !DILexicalBlock(scope: !3372, file: !267, line: 54, column: 5)
!3376 = !DILocation(line: 58, column: 7, scope: !3375, inlinedAt: !3370)
!3377 = !DILocation(line: 61, column: 7, scope: !3364, inlinedAt: !3370)
!3378 = !DILocation(line: 62, column: 8, scope: !3379, inlinedAt: !3370)
!3379 = distinct !DILexicalBlock(scope: !3364, file: !267, line: 62, column: 7)
!3380 = !DILocation(line: 62, column: 10, scope: !3379, inlinedAt: !3370)
!3381 = !DILocation(line: 63, column: 5, scope: !3379, inlinedAt: !3370)
!3382 = !DILocation(line: 116, column: 3, scope: !3350)
!3383 = !DILocation(line: 0, scope: !3364)
!3384 = !DILocation(line: 53, column: 8, scope: !3372)
!3385 = !DILocation(line: 53, column: 10, scope: !3372)
!3386 = !DILocation(line: 57, column: 7, scope: !3375)
!3387 = !DILocation(line: 58, column: 7, scope: !3375)
!3388 = !DILocation(line: 61, column: 7, scope: !3364)
!3389 = !DILocation(line: 62, column: 8, scope: !3379)
!3390 = !DILocation(line: 62, column: 10, scope: !3379)
!3391 = !DILocation(line: 63, column: 5, scope: !3379)
!3392 = !DILocation(line: 65, column: 1, scope: !3364)
!3393 = !DILocation(line: 0, scope: !271)
!3394 = !DILocation(line: 176, column: 14, scope: !271)
!3395 = !DILocation(line: 178, column: 9, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !271, file: !270, line: 178, column: 7)
!3397 = !DILocation(line: 178, column: 7, scope: !271)
!3398 = !DILocation(line: 180, column: 13, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !270, line: 180, column: 11)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !270, line: 179, column: 5)
!3401 = !DILocation(line: 180, column: 11, scope: !3400)
!3402 = !DILocation(line: 188, column: 30, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3399, file: !270, line: 181, column: 9)
!3404 = !DILocation(line: 189, column: 16, scope: !3403)
!3405 = !DILocation(line: 189, column: 13, scope: !3403)
!3406 = !DILocation(line: 190, column: 9, scope: !3403)
!3407 = !DILocation(line: 191, column: 11, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3400, file: !270, line: 191, column: 11)
!3409 = !DILocation(line: 191, column: 11, scope: !3400)
!3410 = !DILocation(line: 206, column: 7, scope: !271)
!3411 = !DILocation(line: 207, column: 25, scope: !271)
!3412 = !DILocation(line: 0, scope: !3364, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 207, column: 10, scope: !271)
!3414 = !DILocation(line: 53, column: 10, scope: !3372, inlinedAt: !3413)
!3415 = !DILocation(line: 192, column: 9, scope: !3408)
!3416 = !DILocation(line: 200, column: 69, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !270, line: 200, column: 11)
!3418 = distinct !DILexicalBlock(scope: !3396, file: !270, line: 195, column: 5)
!3419 = !DILocation(line: 201, column: 11, scope: !3417)
!3420 = !DILocation(line: 200, column: 11, scope: !3418)
!3421 = !DILocation(line: 202, column: 9, scope: !3417)
!3422 = !DILocation(line: 203, column: 14, scope: !3418)
!3423 = !DILocation(line: 203, column: 18, scope: !3418)
!3424 = !DILocation(line: 203, column: 9, scope: !3418)
!3425 = !DILocation(line: 53, column: 8, scope: !3372, inlinedAt: !3413)
!3426 = !DILocation(line: 57, column: 7, scope: !3375, inlinedAt: !3413)
!3427 = !DILocation(line: 58, column: 7, scope: !3375, inlinedAt: !3413)
!3428 = !DILocation(line: 61, column: 7, scope: !3364, inlinedAt: !3413)
!3429 = !DILocation(line: 62, column: 8, scope: !3379, inlinedAt: !3413)
!3430 = !DILocation(line: 62, column: 10, scope: !3379, inlinedAt: !3413)
!3431 = !DILocation(line: 63, column: 5, scope: !3379, inlinedAt: !3413)
!3432 = !DILocation(line: 207, column: 3, scope: !271)
!3433 = distinct !DISubprogram(name: "xcharalloc", scope: !270, file: !270, line: 216, type: !2513, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3434)
!3434 = !{!3435}
!3435 = !DILocalVariable(name: "n", arg: 1, scope: !3433, file: !270, line: 216, type: !42)
!3436 = !DILocation(line: 0, scope: !3433)
!3437 = !DILocation(line: 0, scope: !3331, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 218, column: 10, scope: !3433)
!3439 = !DILocation(line: 41, column: 13, scope: !3331, inlinedAt: !3438)
!3440 = !DILocation(line: 42, column: 8, scope: !3340, inlinedAt: !3438)
!3441 = !DILocation(line: 42, column: 10, scope: !3340, inlinedAt: !3438)
!3442 = !DILocation(line: 43, column: 5, scope: !3340, inlinedAt: !3438)
!3443 = !DILocation(line: 218, column: 3, scope: !3433)
!3444 = distinct !DISubprogram(name: "x2realloc", scope: !267, file: !267, line: 74, type: !3445, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!41, !41, !274}
!3447 = !{!3448, !3449}
!3448 = !DILocalVariable(name: "p", arg: 1, scope: !3444, file: !267, line: 74, type: !41)
!3449 = !DILocalVariable(name: "pn", arg: 2, scope: !3444, file: !267, line: 74, type: !274)
!3450 = !DILocation(line: 0, scope: !3444)
!3451 = !DILocation(line: 0, scope: !271, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 76, column: 10, scope: !3444)
!3453 = !DILocation(line: 176, column: 14, scope: !271, inlinedAt: !3452)
!3454 = !DILocation(line: 178, column: 9, scope: !3396, inlinedAt: !3452)
!3455 = !DILocation(line: 178, column: 7, scope: !271, inlinedAt: !3452)
!3456 = !DILocation(line: 180, column: 13, scope: !3399, inlinedAt: !3452)
!3457 = !DILocation(line: 180, column: 11, scope: !3400, inlinedAt: !3452)
!3458 = !DILocation(line: 191, column: 11, scope: !3408, inlinedAt: !3452)
!3459 = !DILocation(line: 191, column: 11, scope: !3400, inlinedAt: !3452)
!3460 = !DILocation(line: 192, column: 9, scope: !3408, inlinedAt: !3452)
!3461 = !DILocation(line: 201, column: 11, scope: !3417, inlinedAt: !3452)
!3462 = !DILocation(line: 200, column: 11, scope: !3418, inlinedAt: !3452)
!3463 = !DILocation(line: 202, column: 9, scope: !3417, inlinedAt: !3452)
!3464 = !DILocation(line: 203, column: 14, scope: !3418, inlinedAt: !3452)
!3465 = !DILocation(line: 203, column: 18, scope: !3418, inlinedAt: !3452)
!3466 = !DILocation(line: 203, column: 9, scope: !3418, inlinedAt: !3452)
!3467 = !DILocation(line: 0, scope: !3364, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 207, column: 10, scope: !271, inlinedAt: !3452)
!3469 = !DILocation(line: 53, column: 10, scope: !3372, inlinedAt: !3468)
!3470 = !DILocation(line: 206, column: 7, scope: !271, inlinedAt: !3452)
!3471 = !DILocation(line: 61, column: 7, scope: !3364, inlinedAt: !3468)
!3472 = !DILocation(line: 62, column: 8, scope: !3379, inlinedAt: !3468)
!3473 = !DILocation(line: 62, column: 10, scope: !3379, inlinedAt: !3468)
!3474 = !DILocation(line: 63, column: 5, scope: !3379, inlinedAt: !3468)
!3475 = !DILocation(line: 76, column: 3, scope: !3444)
!3476 = distinct !DISubprogram(name: "xzalloc", scope: !267, file: !267, line: 84, type: !3332, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3477)
!3477 = !{!3478}
!3478 = !DILocalVariable(name: "n", arg: 1, scope: !3476, file: !267, line: 84, type: !42)
!3479 = !DILocation(line: 0, scope: !3476)
!3480 = !DILocalVariable(name: "n", arg: 1, scope: !3481, file: !267, line: 93, type: !42)
!3481 = distinct !DISubprogram(name: "xcalloc", scope: !267, file: !267, line: 93, type: !3319, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3482)
!3482 = !{!3480, !3483, !3484}
!3483 = !DILocalVariable(name: "s", arg: 2, scope: !3481, file: !267, line: 93, type: !42)
!3484 = !DILocalVariable(name: "p", scope: !3481, file: !267, line: 95, type: !41)
!3485 = !DILocation(line: 0, scope: !3481, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 86, column: 10, scope: !3476)
!3487 = !DILocation(line: 100, column: 7, scope: !3488, inlinedAt: !3486)
!3488 = distinct !DILexicalBlock(scope: !3481, file: !267, line: 100, column: 7)
!3489 = !DILocation(line: 101, column: 7, scope: !3488, inlinedAt: !3486)
!3490 = !DILocation(line: 101, column: 18, scope: !3488, inlinedAt: !3486)
!3491 = !DILocation(line: 101, column: 16, scope: !3488, inlinedAt: !3486)
!3492 = !DILocation(line: 100, column: 7, scope: !3481, inlinedAt: !3486)
!3493 = !DILocation(line: 102, column: 5, scope: !3488, inlinedAt: !3486)
!3494 = !DILocation(line: 86, column: 3, scope: !3476)
!3495 = !DILocation(line: 0, scope: !3481)
!3496 = !DILocation(line: 100, column: 7, scope: !3488)
!3497 = !DILocation(line: 101, column: 7, scope: !3488)
!3498 = !DILocation(line: 101, column: 18, scope: !3488)
!3499 = !DILocation(line: 101, column: 16, scope: !3488)
!3500 = !DILocation(line: 100, column: 7, scope: !3481)
!3501 = !DILocation(line: 102, column: 5, scope: !3488)
!3502 = !DILocation(line: 103, column: 3, scope: !3481)
!3503 = distinct !DISubprogram(name: "xmemdup", scope: !267, file: !267, line: 111, type: !957, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3504)
!3504 = !{!3505, !3506}
!3505 = !DILocalVariable(name: "p", arg: 1, scope: !3503, file: !267, line: 111, type: !959)
!3506 = !DILocalVariable(name: "s", arg: 2, scope: !3503, file: !267, line: 111, type: !42)
!3507 = !DILocation(line: 0, scope: !3503)
!3508 = !DILocation(line: 0, scope: !3331, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 113, column: 18, scope: !3503)
!3510 = !DILocation(line: 41, column: 13, scope: !3331, inlinedAt: !3509)
!3511 = !DILocation(line: 42, column: 8, scope: !3340, inlinedAt: !3509)
!3512 = !DILocation(line: 42, column: 10, scope: !3340, inlinedAt: !3509)
!3513 = !DILocation(line: 43, column: 5, scope: !3340, inlinedAt: !3509)
!3514 = !DILocalVariable(name: "__dest", arg: 1, scope: !3515, file: !1080, line: 26, type: !3518)
!3515 = distinct !DISubprogram(name: "memcpy", scope: !1080, file: !1080, line: 26, type: !3516, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3520)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!41, !3518, !3519, !42}
!3518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!3519 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !959)
!3520 = !{!3514, !3521, !3522}
!3521 = !DILocalVariable(name: "__src", arg: 2, scope: !3515, file: !1080, line: 26, type: !3519)
!3522 = !DILocalVariable(name: "__len", arg: 3, scope: !3515, file: !1080, line: 26, type: !42)
!3523 = !DILocation(line: 0, scope: !3515, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 113, column: 10, scope: !3503)
!3525 = !DILocation(line: 29, column: 10, scope: !3515, inlinedAt: !3524)
!3526 = !DILocation(line: 113, column: 3, scope: !3503)
!3527 = distinct !DISubprogram(name: "xstrdup", scope: !267, file: !267, line: 119, type: !1405, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !266, retainedNodes: !3528)
!3528 = !{!3529}
!3529 = !DILocalVariable(name: "string", arg: 1, scope: !3527, file: !267, line: 119, type: !48)
!3530 = !DILocation(line: 0, scope: !3527)
!3531 = !DILocation(line: 121, column: 27, scope: !3527)
!3532 = !DILocation(line: 121, column: 43, scope: !3527)
!3533 = !DILocation(line: 0, scope: !3503, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 121, column: 10, scope: !3527)
!3535 = !DILocation(line: 0, scope: !3331, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 113, column: 18, scope: !3503, inlinedAt: !3534)
!3537 = !DILocation(line: 41, column: 13, scope: !3331, inlinedAt: !3536)
!3538 = !DILocation(line: 42, column: 8, scope: !3340, inlinedAt: !3536)
!3539 = !DILocation(line: 42, column: 10, scope: !3340, inlinedAt: !3536)
!3540 = !DILocation(line: 43, column: 5, scope: !3340, inlinedAt: !3536)
!3541 = !DILocation(line: 0, scope: !3515, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 113, column: 10, scope: !3503, inlinedAt: !3534)
!3543 = !DILocation(line: 29, column: 10, scope: !3515, inlinedAt: !3542)
!3544 = !DILocation(line: 121, column: 3, scope: !3527)
!3545 = distinct !DISubprogram(name: "xalloc_die", scope: !284, file: !284, line: 32, type: !718, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !283, retainedNodes: !149)
!3546 = !DILocation(line: 34, column: 10, scope: !3545)
!3547 = !DILocation(line: 34, column: 33, scope: !3545)
!3548 = !DILocation(line: 34, column: 3, scope: !3545)
!3549 = !DILocation(line: 40, column: 3, scope: !3545)
!3550 = distinct !DISubprogram(name: "rpl_calloc", scope: !286, file: !286, line: 42, type: !3319, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3551)
!3551 = !{!3552, !3553, !3554, !3555}
!3552 = !DILocalVariable(name: "n", arg: 1, scope: !3550, file: !286, line: 42, type: !42)
!3553 = !DILocalVariable(name: "s", arg: 2, scope: !3550, file: !286, line: 42, type: !42)
!3554 = !DILocalVariable(name: "result", scope: !3550, file: !286, line: 44, type: !41)
!3555 = !DILocalVariable(name: "bytes", scope: !3556, file: !286, line: 56, type: !42)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !286, line: 53, column: 5)
!3557 = distinct !DILexicalBlock(scope: !3550, file: !286, line: 47, column: 7)
!3558 = !DILocation(line: 0, scope: !3550)
!3559 = !DILocation(line: 47, column: 9, scope: !3557)
!3560 = !DILocation(line: 47, column: 14, scope: !3557)
!3561 = !DILocation(line: 0, scope: !3556)
!3562 = !DILocation(line: 57, column: 21, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3556, file: !286, line: 57, column: 11)
!3564 = !DILocation(line: 57, column: 11, scope: !3556)
!3565 = !DILocation(line: 59, column: 11, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3563, file: !286, line: 58, column: 9)
!3567 = !DILocation(line: 59, column: 17, scope: !3566)
!3568 = !DILocation(line: 65, column: 12, scope: !3550)
!3569 = !DILocation(line: 72, column: 3, scope: !3550)
!3570 = !DILocation(line: 73, column: 1, scope: !3550)
!3571 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !288, file: !288, line: 86, type: !3572, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !3586)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!42, !3574, !48, !42, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1794, line: 6, baseType: !3577)
!3577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1796, line: 21, baseType: !3578)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1796, line: 13, size: 64, elements: !3579)
!3579 = !{!3580, !3581}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3578, file: !1796, line: 15, baseType: !6, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3578, file: !1796, line: 20, baseType: !3582, size: 32, offset: 32)
!3582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3578, file: !1796, line: 16, size: 32, elements: !3583)
!3583 = !{!3584, !3585}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3582, file: !1796, line: 18, baseType: !14, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3582, file: !1796, line: 19, baseType: !1805, size: 32)
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3587 = !DILocalVariable(name: "pwc", arg: 1, scope: !3571, file: !288, line: 86, type: !3574)
!3588 = !DILocalVariable(name: "s", arg: 2, scope: !3571, file: !288, line: 86, type: !48)
!3589 = !DILocalVariable(name: "n", arg: 3, scope: !3571, file: !288, line: 86, type: !42)
!3590 = !DILocalVariable(name: "ps", arg: 4, scope: !3571, file: !288, line: 86, type: !3575)
!3591 = !DILocalVariable(name: "ret", scope: !3571, file: !288, line: 88, type: !42)
!3592 = !DILocalVariable(name: "wc", scope: !3571, file: !288, line: 89, type: !1810)
!3593 = !DILocalVariable(name: "uc", scope: !3594, file: !288, line: 156, type: !1037)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !288, line: 155, column: 5)
!3595 = distinct !DILexicalBlock(scope: !3571, file: !288, line: 154, column: 7)
!3596 = !DILocation(line: 0, scope: !3571)
!3597 = !DILocation(line: 89, column: 3, scope: !3571)
!3598 = !DILocation(line: 105, column: 9, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3571, file: !288, line: 105, column: 7)
!3600 = !DILocation(line: 105, column: 7, scope: !3571)
!3601 = !DILocation(line: 145, column: 9, scope: !3571)
!3602 = !DILocation(line: 154, column: 19, scope: !3595)
!3603 = !DILocation(line: 154, column: 26, scope: !3595)
!3604 = !DILocation(line: 154, column: 41, scope: !3595)
!3605 = !DILocation(line: 154, column: 7, scope: !3571)
!3606 = !DILocation(line: 156, column: 26, scope: !3594)
!3607 = !DILocation(line: 0, scope: !3594)
!3608 = !DILocation(line: 157, column: 14, scope: !3594)
!3609 = !DILocation(line: 157, column: 12, scope: !3594)
!3610 = !DILocation(line: 163, column: 1, scope: !3571)
!3611 = !DISubprogram(name: "mbrtowc", scope: !2473, file: !2473, line: 296, type: !3612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!44, !141, !48, !44, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3615 = distinct !DISubprogram(name: "close_stream", scope: !291, file: !291, line: 56, type: !3616, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3652)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!6, !3618}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1515, line: 7, baseType: !3620)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !788, line: 49, size: 1728, elements: !3621)
!3621 = !{!3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3620, file: !788, line: 51, baseType: !6, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3620, file: !788, line: 54, baseType: !8, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3620, file: !788, line: 55, baseType: !8, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3620, file: !788, line: 56, baseType: !8, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3620, file: !788, line: 57, baseType: !8, size: 64, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3620, file: !788, line: 58, baseType: !8, size: 64, offset: 320)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3620, file: !788, line: 59, baseType: !8, size: 64, offset: 384)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3620, file: !788, line: 60, baseType: !8, size: 64, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3620, file: !788, line: 61, baseType: !8, size: 64, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3620, file: !788, line: 64, baseType: !8, size: 64, offset: 576)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3620, file: !788, line: 65, baseType: !8, size: 64, offset: 640)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3620, file: !788, line: 66, baseType: !8, size: 64, offset: 704)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3620, file: !788, line: 68, baseType: !803, size: 64, offset: 768)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3620, file: !788, line: 70, baseType: !3636, size: 64, offset: 832)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3620, file: !788, line: 72, baseType: !6, size: 32, offset: 896)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3620, file: !788, line: 73, baseType: !6, size: 32, offset: 928)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3620, file: !788, line: 74, baseType: !104, size: 64, offset: 960)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3620, file: !788, line: 77, baseType: !196, size: 16, offset: 1024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3620, file: !788, line: 78, baseType: !811, size: 8, offset: 1040)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3620, file: !788, line: 79, baseType: !813, size: 8, offset: 1048)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3620, file: !788, line: 81, baseType: !817, size: 64, offset: 1088)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3620, file: !788, line: 89, baseType: !820, size: 64, offset: 1152)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3620, file: !788, line: 91, baseType: !822, size: 64, offset: 1216)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3620, file: !788, line: 92, baseType: !825, size: 64, offset: 1280)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3620, file: !788, line: 93, baseType: !3636, size: 64, offset: 1344)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3620, file: !788, line: 94, baseType: !41, size: 64, offset: 1408)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3620, file: !788, line: 95, baseType: !42, size: 64, offset: 1472)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3620, file: !788, line: 96, baseType: !6, size: 32, offset: 1536)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3620, file: !788, line: 98, baseType: !60, size: 160, offset: 1568)
!3652 = !{!3653, !3654, !3656, !3657}
!3653 = !DILocalVariable(name: "stream", arg: 1, scope: !3615, file: !291, line: 56, type: !3618)
!3654 = !DILocalVariable(name: "some_pending", scope: !3615, file: !291, line: 58, type: !3655)
!3655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!3656 = !DILocalVariable(name: "prev_fail", scope: !3615, file: !291, line: 59, type: !3655)
!3657 = !DILocalVariable(name: "fclose_fail", scope: !3615, file: !291, line: 60, type: !3655)
!3658 = !DILocation(line: 0, scope: !3615)
!3659 = !DILocation(line: 58, column: 30, scope: !3615)
!3660 = !DILocalVariable(name: "__stream", arg: 1, scope: !3661, file: !3662, line: 135, type: !3618)
!3661 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3662, file: !3662, line: 135, type: !3616, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !290, retainedNodes: !3663)
!3662 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3663 = !{!3660}
!3664 = !DILocation(line: 0, scope: !3661, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 59, column: 27, scope: !3615)
!3666 = !DILocation(line: 137, column: 10, scope: !3661, inlinedAt: !3665)
!3667 = !{!3668, !875, i64 0}
!3668 = !{!"_IO_FILE", !875, i64 0, !709, i64 8, !709, i64 16, !709, i64 24, !709, i64 32, !709, i64 40, !709, i64 48, !709, i64 56, !709, i64 64, !709, i64 72, !709, i64 80, !709, i64 88, !709, i64 96, !709, i64 104, !875, i64 112, !875, i64 116, !886, i64 120, !2033, i64 128, !710, i64 130, !710, i64 131, !709, i64 136, !886, i64 144, !709, i64 152, !709, i64 160, !709, i64 168, !709, i64 176, !886, i64 184, !875, i64 192, !710, i64 196}
!3669 = !DILocation(line: 59, column: 43, scope: !3615)
!3670 = !DILocation(line: 60, column: 29, scope: !3615)
!3671 = !DILocation(line: 60, column: 45, scope: !3615)
!3672 = !DILocation(line: 70, column: 17, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3615, file: !291, line: 70, column: 7)
!3674 = !DILocation(line: 58, column: 50, scope: !3615)
!3675 = !DILocation(line: 70, column: 33, scope: !3673)
!3676 = !DILocation(line: 70, column: 53, scope: !3673)
!3677 = !DILocation(line: 70, column: 59, scope: !3673)
!3678 = !DILocation(line: 70, column: 7, scope: !3615)
!3679 = !DILocation(line: 72, column: 11, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3673, file: !291, line: 71, column: 5)
!3681 = !DILocation(line: 73, column: 9, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3680, file: !291, line: 72, column: 11)
!3683 = !DILocation(line: 73, column: 15, scope: !3682)
!3684 = !DILocation(line: 78, column: 1, scope: !3615)
!3685 = distinct !DISubprogram(name: "hard_locale", scope: !293, file: !293, line: 27, type: !3686, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!74, !6}
!3688 = !{!3689, !3690}
!3689 = !DILocalVariable(name: "category", arg: 1, scope: !3685, file: !293, line: 27, type: !6)
!3690 = !DILocalVariable(name: "locale", scope: !3685, file: !293, line: 29, type: !3691)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2056, elements: !3692)
!3692 = !{!3693}
!3693 = !DISubrange(count: 257)
!3694 = !DILocation(line: 0, scope: !3685)
!3695 = !DILocation(line: 29, column: 3, scope: !3685)
!3696 = !DILocation(line: 29, column: 8, scope: !3685)
!3697 = !DILocation(line: 31, column: 7, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3685, file: !293, line: 31, column: 7)
!3699 = !DILocation(line: 31, column: 7, scope: !3685)
!3700 = !DILocation(line: 34, column: 12, scope: !3685)
!3701 = !DILocation(line: 34, column: 38, scope: !3685)
!3702 = !DILocation(line: 34, column: 41, scope: !3685)
!3703 = !DILocation(line: 34, column: 66, scope: !3685)
!3704 = !DILocation(line: 35, column: 1, scope: !3685)
!3705 = distinct !DISubprogram(name: "locale_charset", scope: !295, file: !295, line: 831, type: !3706, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !294, retainedNodes: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!48}
!3708 = !{!3709}
!3709 = !DILocalVariable(name: "codeset", scope: !3705, file: !295, line: 833, type: !48)
!3710 = !DILocation(line: 847, column: 13, scope: !3705)
!3711 = !DILocation(line: 0, scope: !3705)
!3712 = !DILocation(line: 911, column: 15, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3705, file: !295, line: 911, column: 7)
!3714 = !DILocation(line: 911, column: 7, scope: !3705)
!3715 = !DILocation(line: 1070, column: 13, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !295, line: 1070, column: 13)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !295, line: 1060, column: 7)
!3718 = distinct !DILexicalBlock(scope: !3705, file: !295, line: 1019, column: 3)
!3719 = !DILocation(line: 1070, column: 24, scope: !3716)
!3720 = !DILocation(line: 1070, column: 13, scope: !3717)
!3721 = !DILocation(line: 1158, column: 3, scope: !3705)
!3722 = !DISubprogram(name: "nl_langinfo", scope: !298, file: !298, line: 661, type: !3723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!8, !6}
!3725 = distinct !DISubprogram(name: "setlocale_null_r", scope: !684, file: !684, line: 269, type: !3726, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!6, !6, !8, !42}
!3728 = !{!3729, !3730, !3731}
!3729 = !DILocalVariable(name: "category", arg: 1, scope: !3725, file: !684, line: 269, type: !6)
!3730 = !DILocalVariable(name: "buf", arg: 2, scope: !3725, file: !684, line: 269, type: !8)
!3731 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3725, file: !684, line: 269, type: !42)
!3732 = !DILocation(line: 0, scope: !3725)
!3733 = !DILocalVariable(name: "category", arg: 1, scope: !3734, file: !684, line: 91, type: !6)
!3734 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !684, file: !684, line: 91, type: !3726, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3735)
!3735 = !{!3733, !3736, !3737, !3738, !3739}
!3736 = !DILocalVariable(name: "buf", arg: 2, scope: !3734, file: !684, line: 91, type: !8)
!3737 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3734, file: !684, line: 91, type: !42)
!3738 = !DILocalVariable(name: "result", scope: !3734, file: !684, line: 140, type: !48)
!3739 = !DILocalVariable(name: "length", scope: !3740, file: !684, line: 154, type: !42)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !684, line: 153, column: 5)
!3741 = distinct !DILexicalBlock(scope: !3734, file: !684, line: 142, column: 7)
!3742 = !DILocation(line: 0, scope: !3734, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 274, column: 10, scope: !3725)
!3744 = !DILocalVariable(name: "category", arg: 1, scope: !3745, file: !684, line: 60, type: !6)
!3745 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !684, file: !684, line: 60, type: !3746, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!48, !6}
!3748 = !{!3744, !3749}
!3749 = !DILocalVariable(name: "result", scope: !3745, file: !684, line: 62, type: !48)
!3750 = !DILocation(line: 0, scope: !3745, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 140, column: 24, scope: !3734, inlinedAt: !3743)
!3752 = !DILocation(line: 62, column: 24, scope: !3745, inlinedAt: !3751)
!3753 = !DILocation(line: 142, column: 14, scope: !3741, inlinedAt: !3743)
!3754 = !DILocation(line: 142, column: 7, scope: !3734, inlinedAt: !3743)
!3755 = !DILocation(line: 145, column: 19, scope: !3756, inlinedAt: !3743)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !684, line: 145, column: 11)
!3757 = distinct !DILexicalBlock(scope: !3741, file: !684, line: 143, column: 5)
!3758 = !DILocation(line: 145, column: 11, scope: !3757, inlinedAt: !3743)
!3759 = !DILocation(line: 149, column: 16, scope: !3756, inlinedAt: !3743)
!3760 = !DILocation(line: 149, column: 9, scope: !3756, inlinedAt: !3743)
!3761 = !DILocation(line: 154, column: 23, scope: !3740, inlinedAt: !3743)
!3762 = !DILocation(line: 0, scope: !3740, inlinedAt: !3743)
!3763 = !DILocation(line: 155, column: 18, scope: !3764, inlinedAt: !3743)
!3764 = distinct !DILexicalBlock(scope: !3740, file: !684, line: 155, column: 11)
!3765 = !DILocation(line: 155, column: 11, scope: !3740, inlinedAt: !3743)
!3766 = !DILocation(line: 157, column: 39, scope: !3767, inlinedAt: !3743)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !684, line: 156, column: 9)
!3768 = !DILocalVariable(name: "__dest", arg: 1, scope: !3769, file: !1080, line: 26, type: !3518)
!3769 = distinct !DISubprogram(name: "memcpy", scope: !1080, file: !1080, line: 26, type: !3516, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3770)
!3770 = !{!3768, !3771, !3772}
!3771 = !DILocalVariable(name: "__src", arg: 2, scope: !3769, file: !1080, line: 26, type: !3519)
!3772 = !DILocalVariable(name: "__len", arg: 3, scope: !3769, file: !1080, line: 26, type: !42)
!3773 = !DILocation(line: 0, scope: !3769, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 157, column: 11, scope: !3767, inlinedAt: !3743)
!3775 = !DILocation(line: 29, column: 10, scope: !3769, inlinedAt: !3774)
!3776 = !DILocation(line: 158, column: 11, scope: !3767, inlinedAt: !3743)
!3777 = !DILocation(line: 162, column: 23, scope: !3778, inlinedAt: !3743)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !684, line: 162, column: 15)
!3779 = distinct !DILexicalBlock(scope: !3764, file: !684, line: 161, column: 9)
!3780 = !DILocation(line: 162, column: 15, scope: !3779, inlinedAt: !3743)
!3781 = !DILocation(line: 167, column: 44, scope: !3782, inlinedAt: !3743)
!3782 = distinct !DILexicalBlock(scope: !3778, file: !684, line: 163, column: 13)
!3783 = !DILocation(line: 0, scope: !3769, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 167, column: 15, scope: !3782, inlinedAt: !3743)
!3785 = !DILocation(line: 29, column: 10, scope: !3769, inlinedAt: !3784)
!3786 = !DILocation(line: 168, column: 15, scope: !3782, inlinedAt: !3743)
!3787 = !DILocation(line: 168, column: 32, scope: !3782, inlinedAt: !3743)
!3788 = !DILocation(line: 169, column: 13, scope: !3782, inlinedAt: !3743)
!3789 = !DILocation(line: 0, scope: !3741, inlinedAt: !3743)
!3790 = !DILocation(line: 274, column: 3, scope: !3725)
!3791 = distinct !DISubprogram(name: "setlocale_null", scope: !684, file: !684, line: 301, type: !3746, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !3792)
!3792 = !{!3793}
!3793 = !DILocalVariable(name: "category", arg: 1, scope: !3791, file: !684, line: 301, type: !6)
!3794 = !DILocation(line: 0, scope: !3791)
!3795 = !DILocation(line: 0, scope: !3745, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 304, column: 10, scope: !3791)
!3797 = !DILocation(line: 62, column: 24, scope: !3745, inlinedAt: !3796)
!3798 = !DILocation(line: 304, column: 3, scope: !3791)
!3799 = distinct !DISubprogram(name: "rpl_fclose", scope: !686, file: !686, line: 58, type: !3800, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !685, retainedNodes: !3836)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!6, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1515, line: 7, baseType: !3804)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !788, line: 49, size: 1728, elements: !3805)
!3805 = !{!3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3804, file: !788, line: 51, baseType: !6, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3804, file: !788, line: 54, baseType: !8, size: 64, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3804, file: !788, line: 55, baseType: !8, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3804, file: !788, line: 56, baseType: !8, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3804, file: !788, line: 57, baseType: !8, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3804, file: !788, line: 58, baseType: !8, size: 64, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3804, file: !788, line: 59, baseType: !8, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3804, file: !788, line: 60, baseType: !8, size: 64, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3804, file: !788, line: 61, baseType: !8, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3804, file: !788, line: 64, baseType: !8, size: 64, offset: 576)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3804, file: !788, line: 65, baseType: !8, size: 64, offset: 640)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3804, file: !788, line: 66, baseType: !8, size: 64, offset: 704)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3804, file: !788, line: 68, baseType: !803, size: 64, offset: 768)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3804, file: !788, line: 70, baseType: !3820, size: 64, offset: 832)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3804, file: !788, line: 72, baseType: !6, size: 32, offset: 896)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3804, file: !788, line: 73, baseType: !6, size: 32, offset: 928)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3804, file: !788, line: 74, baseType: !104, size: 64, offset: 960)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3804, file: !788, line: 77, baseType: !196, size: 16, offset: 1024)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3804, file: !788, line: 78, baseType: !811, size: 8, offset: 1040)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3804, file: !788, line: 79, baseType: !813, size: 8, offset: 1048)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3804, file: !788, line: 81, baseType: !817, size: 64, offset: 1088)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3804, file: !788, line: 89, baseType: !820, size: 64, offset: 1152)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3804, file: !788, line: 91, baseType: !822, size: 64, offset: 1216)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3804, file: !788, line: 92, baseType: !825, size: 64, offset: 1280)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3804, file: !788, line: 93, baseType: !3820, size: 64, offset: 1344)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3804, file: !788, line: 94, baseType: !41, size: 64, offset: 1408)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3804, file: !788, line: 95, baseType: !42, size: 64, offset: 1472)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3804, file: !788, line: 96, baseType: !6, size: 32, offset: 1536)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3804, file: !788, line: 98, baseType: !60, size: 160, offset: 1568)
!3836 = !{!3837, !3838, !3839, !3840}
!3837 = !DILocalVariable(name: "fp", arg: 1, scope: !3799, file: !686, line: 58, type: !3802)
!3838 = !DILocalVariable(name: "saved_errno", scope: !3799, file: !686, line: 60, type: !6)
!3839 = !DILocalVariable(name: "fd", scope: !3799, file: !686, line: 61, type: !6)
!3840 = !DILocalVariable(name: "result", scope: !3799, file: !686, line: 62, type: !6)
!3841 = !DILocation(line: 0, scope: !3799)
!3842 = !DILocation(line: 65, column: 8, scope: !3799)
!3843 = !DILocation(line: 66, column: 10, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3799, file: !686, line: 66, column: 7)
!3845 = !DILocation(line: 66, column: 7, scope: !3799)
!3846 = !DILocation(line: 67, column: 12, scope: !3844)
!3847 = !DILocation(line: 67, column: 5, scope: !3844)
!3848 = !DILocation(line: 72, column: 9, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3799, file: !686, line: 72, column: 7)
!3850 = !DILocation(line: 72, column: 23, scope: !3849)
!3851 = !DILocation(line: 72, column: 33, scope: !3849)
!3852 = !DILocation(line: 72, column: 26, scope: !3849)
!3853 = !DILocation(line: 72, column: 59, scope: !3849)
!3854 = !DILocation(line: 73, column: 7, scope: !3849)
!3855 = !DILocation(line: 73, column: 10, scope: !3849)
!3856 = !DILocation(line: 72, column: 7, scope: !3799)
!3857 = !DILocation(line: 100, column: 12, scope: !3799)
!3858 = !DILocation(line: 105, column: 7, scope: !3799)
!3859 = !DILocation(line: 74, column: 19, scope: !3849)
!3860 = !DILocation(line: 105, column: 19, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3799, file: !686, line: 105, column: 7)
!3862 = !DILocation(line: 107, column: 13, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3861, file: !686, line: 106, column: 5)
!3864 = !DILocation(line: 109, column: 5, scope: !3863)
!3865 = !DILocation(line: 112, column: 1, scope: !3799)
!3866 = !DISubprogram(name: "fclose", scope: !783, file: !783, line: 213, type: !3867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!6, !3820}
!3869 = distinct !DISubprogram(name: "rpl_fflush", scope: !688, file: !688, line: 129, type: !3870, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3906)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!6, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1515, line: 7, baseType: !3874)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !788, line: 49, size: 1728, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3874, file: !788, line: 51, baseType: !6, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3874, file: !788, line: 54, baseType: !8, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3874, file: !788, line: 55, baseType: !8, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3874, file: !788, line: 56, baseType: !8, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3874, file: !788, line: 57, baseType: !8, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3874, file: !788, line: 58, baseType: !8, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3874, file: !788, line: 59, baseType: !8, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3874, file: !788, line: 60, baseType: !8, size: 64, offset: 448)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3874, file: !788, line: 61, baseType: !8, size: 64, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3874, file: !788, line: 64, baseType: !8, size: 64, offset: 576)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3874, file: !788, line: 65, baseType: !8, size: 64, offset: 640)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3874, file: !788, line: 66, baseType: !8, size: 64, offset: 704)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3874, file: !788, line: 68, baseType: !803, size: 64, offset: 768)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3874, file: !788, line: 70, baseType: !3890, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3874, file: !788, line: 72, baseType: !6, size: 32, offset: 896)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3874, file: !788, line: 73, baseType: !6, size: 32, offset: 928)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3874, file: !788, line: 74, baseType: !104, size: 64, offset: 960)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3874, file: !788, line: 77, baseType: !196, size: 16, offset: 1024)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3874, file: !788, line: 78, baseType: !811, size: 8, offset: 1040)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3874, file: !788, line: 79, baseType: !813, size: 8, offset: 1048)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3874, file: !788, line: 81, baseType: !817, size: 64, offset: 1088)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3874, file: !788, line: 89, baseType: !820, size: 64, offset: 1152)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3874, file: !788, line: 91, baseType: !822, size: 64, offset: 1216)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3874, file: !788, line: 92, baseType: !825, size: 64, offset: 1280)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3874, file: !788, line: 93, baseType: !3890, size: 64, offset: 1344)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3874, file: !788, line: 94, baseType: !41, size: 64, offset: 1408)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3874, file: !788, line: 95, baseType: !42, size: 64, offset: 1472)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3874, file: !788, line: 96, baseType: !6, size: 32, offset: 1536)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3874, file: !788, line: 98, baseType: !60, size: 160, offset: 1568)
!3906 = !{!3907}
!3907 = !DILocalVariable(name: "stream", arg: 1, scope: !3869, file: !688, line: 129, type: !3872)
!3908 = !DILocation(line: 0, scope: !3869)
!3909 = !DILocation(line: 150, column: 14, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3869, file: !688, line: 150, column: 7)
!3911 = !DILocation(line: 150, column: 22, scope: !3910)
!3912 = !DILocation(line: 150, column: 27, scope: !3910)
!3913 = !DILocation(line: 150, column: 7, scope: !3869)
!3914 = !DILocation(line: 151, column: 12, scope: !3910)
!3915 = !DILocation(line: 151, column: 5, scope: !3910)
!3916 = !DILocalVariable(name: "fp", arg: 1, scope: !3917, file: !688, line: 41, type: !3872)
!3917 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !688, file: !688, line: 41, type: !3918, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !3872}
!3920 = !{!3916}
!3921 = !DILocation(line: 0, scope: !3917, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 156, column: 3, scope: !3869)
!3923 = !DILocation(line: 43, column: 11, scope: !3924, inlinedAt: !3922)
!3924 = distinct !DILexicalBlock(scope: !3917, file: !688, line: 43, column: 7)
!3925 = !DILocation(line: 43, column: 18, scope: !3924, inlinedAt: !3922)
!3926 = !DILocation(line: 43, column: 7, scope: !3917, inlinedAt: !3922)
!3927 = !DILocation(line: 45, column: 5, scope: !3924, inlinedAt: !3922)
!3928 = !DILocation(line: 158, column: 10, scope: !3869)
!3929 = !DILocation(line: 158, column: 3, scope: !3869)
!3930 = !DILocation(line: 235, column: 1, scope: !3869)
!3931 = !DISubprogram(name: "fflush", scope: !783, file: !783, line: 218, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!6, !3890}
!3934 = distinct !DISubprogram(name: "rpl_fseeko", scope: !690, file: !690, line: 28, type: !3935, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3971)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!6, !3937, !1494, !6}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1515, line: 7, baseType: !3939)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !788, line: 49, size: 1728, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3939, file: !788, line: 51, baseType: !6, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3939, file: !788, line: 54, baseType: !8, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3939, file: !788, line: 55, baseType: !8, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3939, file: !788, line: 56, baseType: !8, size: 64, offset: 192)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3939, file: !788, line: 57, baseType: !8, size: 64, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3939, file: !788, line: 58, baseType: !8, size: 64, offset: 320)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3939, file: !788, line: 59, baseType: !8, size: 64, offset: 384)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3939, file: !788, line: 60, baseType: !8, size: 64, offset: 448)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3939, file: !788, line: 61, baseType: !8, size: 64, offset: 512)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3939, file: !788, line: 64, baseType: !8, size: 64, offset: 576)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3939, file: !788, line: 65, baseType: !8, size: 64, offset: 640)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3939, file: !788, line: 66, baseType: !8, size: 64, offset: 704)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3939, file: !788, line: 68, baseType: !803, size: 64, offset: 768)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3939, file: !788, line: 70, baseType: !3955, size: 64, offset: 832)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3939, file: !788, line: 72, baseType: !6, size: 32, offset: 896)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3939, file: !788, line: 73, baseType: !6, size: 32, offset: 928)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3939, file: !788, line: 74, baseType: !104, size: 64, offset: 960)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3939, file: !788, line: 77, baseType: !196, size: 16, offset: 1024)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3939, file: !788, line: 78, baseType: !811, size: 8, offset: 1040)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3939, file: !788, line: 79, baseType: !813, size: 8, offset: 1048)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3939, file: !788, line: 81, baseType: !817, size: 64, offset: 1088)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3939, file: !788, line: 89, baseType: !820, size: 64, offset: 1152)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3939, file: !788, line: 91, baseType: !822, size: 64, offset: 1216)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3939, file: !788, line: 92, baseType: !825, size: 64, offset: 1280)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3939, file: !788, line: 93, baseType: !3955, size: 64, offset: 1344)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3939, file: !788, line: 94, baseType: !41, size: 64, offset: 1408)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3939, file: !788, line: 95, baseType: !42, size: 64, offset: 1472)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3939, file: !788, line: 96, baseType: !6, size: 32, offset: 1536)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3939, file: !788, line: 98, baseType: !60, size: 160, offset: 1568)
!3971 = !{!3972, !3973, !3974, !3975}
!3972 = !DILocalVariable(name: "fp", arg: 1, scope: !3934, file: !690, line: 28, type: !3937)
!3973 = !DILocalVariable(name: "offset", arg: 2, scope: !3934, file: !690, line: 28, type: !1494)
!3974 = !DILocalVariable(name: "whence", arg: 3, scope: !3934, file: !690, line: 28, type: !6)
!3975 = !DILocalVariable(name: "pos", scope: !3976, file: !690, line: 117, type: !1494)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !690, line: 113, column: 5)
!3977 = distinct !DILexicalBlock(scope: !3934, file: !690, line: 52, column: 7)
!3978 = !DILocation(line: 0, scope: !3934)
!3979 = !DILocation(line: 52, column: 11, scope: !3977)
!3980 = !{!3668, !709, i64 16}
!3981 = !DILocation(line: 52, column: 31, scope: !3977)
!3982 = !{!3668, !709, i64 8}
!3983 = !DILocation(line: 52, column: 24, scope: !3977)
!3984 = !DILocation(line: 53, column: 7, scope: !3977)
!3985 = !DILocation(line: 53, column: 14, scope: !3977)
!3986 = !{!3668, !709, i64 40}
!3987 = !DILocation(line: 53, column: 35, scope: !3977)
!3988 = !{!3668, !709, i64 32}
!3989 = !DILocation(line: 53, column: 28, scope: !3977)
!3990 = !DILocation(line: 54, column: 7, scope: !3977)
!3991 = !DILocation(line: 54, column: 14, scope: !3977)
!3992 = !{!3668, !709, i64 72}
!3993 = !DILocation(line: 54, column: 28, scope: !3977)
!3994 = !DILocation(line: 52, column: 7, scope: !3934)
!3995 = !DILocation(line: 117, column: 26, scope: !3976)
!3996 = !DILocation(line: 117, column: 19, scope: !3976)
!3997 = !DILocation(line: 0, scope: !3976)
!3998 = !DILocation(line: 118, column: 15, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3976, file: !690, line: 118, column: 11)
!4000 = !DILocation(line: 118, column: 11, scope: !3976)
!4001 = !DILocation(line: 129, column: 11, scope: !3976)
!4002 = !DILocation(line: 129, column: 18, scope: !3976)
!4003 = !DILocation(line: 130, column: 11, scope: !3976)
!4004 = !DILocation(line: 130, column: 19, scope: !3976)
!4005 = !{!3668, !886, i64 144}
!4006 = !DILocation(line: 161, column: 7, scope: !3976)
!4007 = !DILocation(line: 163, column: 10, scope: !3934)
!4008 = !DILocation(line: 163, column: 3, scope: !3934)
!4009 = !DILocation(line: 164, column: 1, scope: !3934)
!4010 = !DISubprogram(name: "fseeko", scope: !783, file: !783, line: 712, type: !4011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!6, !3955, !105, !6}
