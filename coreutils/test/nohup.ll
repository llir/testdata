; ModuleID = 'coreutils-8.30/src/nohup.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: %s COMMAND [ARG]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Run COMMAND, ignoring hangup signals.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [291 x i8] c"\0AIf standard input is a terminal, redirect it from an unreadable file.\0AIf standard output is a terminal, append output to 'nohup.out' if possible,\0A'$HOME/nohup.out' otherwise.\0AIf standard error is a terminal, redirect it to standard output.\0ATo save output to FILE, use '%s COMMAND > FILE'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nohup\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.39 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"failed to render standard input unusable\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"ignoring input\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"nohup.out\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"ignoring input and appending output to %s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"appending output to %s\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"ignoring input and redirecting stderr to stdout\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"redirecting stderr to stdout\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"failed to redirect standard error\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), align 8, !dbg !54
@.str.43 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !60
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !65
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.47 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !69
@opterr = external local_unnamed_addr global i32, align 4
@.str.59 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.60 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.61, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.62, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !76
@.str.1.61 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.62 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !92
@.str.67 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 16, !dbg !100
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !131
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !138
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !150
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.83 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.84 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.85 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.86 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !157
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !164
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !152
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !166
@.str.91 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.92 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.94 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.109 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.110 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.111 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.112 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !172
@.str.1.123 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !181
@.str.139 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.143 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.144 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !662 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !665, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %0, metadata !664, metadata !DIExpression()), !dbg !687
  %3 = icmp eq i32 %0, 0, !dbg !688
  br i1 %3, label %9, label %4, !dbg !689

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !690, !tbaa !692
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !690
  %7 = load i8*, i8** @program_name, align 8, !dbg !690, !tbaa !692
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !690
  br label %62, !dbg !690

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !696
  %11 = load i8*, i8** @program_name, align 8, !dbg !696, !tbaa !692
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #11, !dbg !696
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !697
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !697, !tbaa !692
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !697
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !698
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !698, !tbaa !692
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !698
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !699
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !692
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !699
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !700
  %23 = load i8*, i8** @program_name, align 8, !dbg !700, !tbaa !692
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* %23) #11, !dbg !700
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !701
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !701
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !702
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #11, !dbg !702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %27, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !683
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !703
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !672, metadata !DIExpression()) #11, !dbg !704
  br label %29, !dbg !705

; <label>:29:                                     ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !672, metadata !DIExpression()) #11, !dbg !704
  %32 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %30) #14, !dbg !705
  %33 = icmp eq i32 %32, 0, !dbg !705
  br i1 %33, label %39, label %34, !dbg !706

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !707
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !672, metadata !DIExpression()) #11, !dbg !704
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !708
  %37 = load i8*, i8** %36, align 8, !dbg !708, !tbaa !709
  %38 = icmp eq i8* %37, null, !dbg !711
  br i1 %38, label %39, label %29, !dbg !712, !llvm.loop !713

; <label>:39:                                     ; preds = %34, %29
  %40 = phi %struct.infomap* [ %35, %34 ], [ %31, %29 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !672, metadata !DIExpression()) #11, !dbg !704
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !672, metadata !DIExpression()) #11, !dbg !704
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !716
  %42 = load i8*, i8** %41, align 8, !dbg !716, !tbaa !718
  %43 = icmp eq i8* %42, null, !dbg !719
  %44 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %42, !dbg !720
  call void @llvm.dbg.value(metadata i8* %44, metadata !671, metadata !DIExpression()) #11, !dbg !721
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #11, !dbg !722
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0)) #11, !dbg !722
  %47 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !723
  call void @llvm.dbg.value(metadata i8* %47, metadata !679, metadata !DIExpression()) #11, !dbg !724
  %48 = icmp eq i8* %47, null, !dbg !725
  br i1 %48, label %55, label %49, !dbg !727

; <label>:49:                                     ; preds = %39
  %50 = tail call i32 @strncmp(i8* nonnull %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i64 3) #14, !dbg !728
  %51 = icmp eq i32 %50, 0, !dbg !728
  br i1 %51, label %55, label %52, !dbg !729

; <label>:52:                                     ; preds = %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !730
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !730
  br label %55, !dbg !732

; <label>:55:                                     ; preds = %39, %49, %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !733
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !733
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !734
  %59 = icmp eq i8* %44, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !734
  %60 = select i1 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !734
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* %44, i8* %60) #11, !dbg !734
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #11, !dbg !735
  br label %62

; <label>:62:                                     ; preds = %55, %4
  tail call void @exit(i32 %0) #15, !dbg !736
  unreachable, !dbg !736
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !742, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata i8** %1, metadata !743, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i32 1, metadata !744, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i32 2, metadata !745, metadata !DIExpression()), !dbg !775
  %3 = load i8*, i8** %1, align 8, !dbg !776, !tbaa !692
  tail call void @set_program_name(i8* %3) #11, !dbg !777
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !778
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !779
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !780
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !781
  %8 = icmp eq i8* %7, null, !dbg !781
  %9 = select i1 %8, i32 125, i32 127, !dbg !781
  call void @llvm.dbg.value(metadata i32 %9, metadata !750, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i32 %9, metadata !783, metadata !DIExpression()), !dbg !786
  store volatile i32 %9, i32* @exit_failure, align 4, !dbg !788, !tbaa !790
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !792
  %11 = load i8*, i8** @Version, align 8, !dbg !793, !tbaa !692
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %11, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !794
  %12 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !795
  %13 = icmp eq i32 %12, -1, !dbg !797
  br i1 %13, label %15, label %14, !dbg !798

; <label>:14:                                     ; preds = %2
  tail call void @usage(i32 %9) #16, !dbg !799
  unreachable, !dbg !799

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* @optind, align 4, !dbg !800, !tbaa !790
  %17 = icmp slt i32 %16, %0, !dbg !802
  br i1 %17, label %20, label %18, !dbg !803

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #11, !dbg !804
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #11, !dbg !806
  tail call void @usage(i32 %9) #16, !dbg !807
  unreachable, !dbg !807

; <label>:20:                                     ; preds = %15
  %21 = tail call i32 @isatty(i32 0) #11, !dbg !808
  %22 = icmp ne i32 %21, 0, !dbg !808
  %23 = tail call i32 @isatty(i32 1) #11, !dbg !809
  %24 = icmp ne i32 %23, 0, !dbg !809
  br i1 %24, label %29, label %25, !dbg !810

; <label>:25:                                     ; preds = %20
  %26 = tail call i32* @__errno_location() #17, !dbg !811
  %27 = load i32, i32* %26, align 4, !dbg !811, !tbaa !790
  %28 = icmp eq i32 %27, 9, !dbg !812
  br label %29

; <label>:29:                                     ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ], !dbg !813
  %31 = tail call i32 @isatty(i32 2) #11, !dbg !814
  %32 = icmp ne i32 %31, 0, !dbg !814
  br i1 %22, label %33, label %45, !dbg !815

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @fd_reopen(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 1, i32 0) #11, !dbg !816
  %35 = icmp slt i32 %34, 0, !dbg !820
  br i1 %35, label %36, label %40, !dbg !821

; <label>:36:                                     ; preds = %33
  %37 = tail call i32* @__errno_location() #17, !dbg !822
  %38 = load i32, i32* %37, align 4, !dbg !822, !tbaa !790
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !823
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %38, i8* %39) #11, !dbg !824
  br label %40, !dbg !824

; <label>:40:                                     ; preds = %36, %33
  %41 = or i32 %31, %23, !dbg !825
  %42 = icmp eq i32 %41, 0, !dbg !825
  br i1 %42, label %43, label %45, !dbg !825

; <label>:43:                                     ; preds = %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !827
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %44) #11, !dbg !828
  br label %45, !dbg !828

; <label>:45:                                     ; preds = %40, %43, %29
  br i1 %24, label %48, label %46, !dbg !829

; <label>:46:                                     ; preds = %45
  %47 = and i1 %30, %32, !dbg !830
  br i1 %47, label %51, label %91, !dbg !830

; <label>:48:                                     ; preds = %45
  call void @llvm.dbg.value(metadata i8* null, metadata !751, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i32 1089, metadata !755, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i32 384, metadata !756, metadata !DIExpression()), !dbg !833
  %49 = tail call i32 @umask(i32 -385) #11, !dbg !834
  call void @llvm.dbg.value(metadata i32 %52, metadata !761, metadata !DIExpression()), !dbg !835
  %50 = tail call i32 @fd_reopen(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 1089, i32 384) #11, !dbg !836
  br label %54, !dbg !837

; <label>:51:                                     ; preds = %46
  call void @llvm.dbg.value(metadata i8* null, metadata !751, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i32 1089, metadata !755, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i32 384, metadata !756, metadata !DIExpression()), !dbg !833
  %52 = tail call i32 @umask(i32 -385) #11, !dbg !834
  call void @llvm.dbg.value(metadata i32 %52, metadata !761, metadata !DIExpression()), !dbg !835
  %53 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 1089, i32 384) #11, !dbg !838
  br label %54, !dbg !837

; <label>:54:                                     ; preds = %51, %48
  %55 = phi i32 [ %49, %48 ], [ %52, %51 ]
  %56 = phi i32 [ %50, %48 ], [ %53, %51 ], !dbg !837
  call void @llvm.dbg.value(metadata i32 %56, metadata !744, metadata !DIExpression()), !dbg !774
  %57 = icmp slt i32 %56, 0, !dbg !839
  br i1 %57, label %58, label %83, !dbg !840

; <label>:58:                                     ; preds = %54
  %59 = tail call i32* @__errno_location() #17, !dbg !841
  %60 = load i32, i32* %59, align 4, !dbg !841, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %60, metadata !762, metadata !DIExpression()), !dbg !842
  %61 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !843
  call void @llvm.dbg.value(metadata i8* %61, metadata !765, metadata !DIExpression()), !dbg !844
  %62 = icmp eq i8* %61, null, !dbg !845
  br i1 %62, label %74, label %63, !dbg !847

; <label>:63:                                     ; preds = %58
  %64 = tail call i8* @file_name_concat(i8* nonnull %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** null) #11, !dbg !848
  call void @llvm.dbg.value(metadata i8* %64, metadata !751, metadata !DIExpression()), !dbg !831
  br i1 %24, label %65, label %67, !dbg !850

; <label>:65:                                     ; preds = %63
  %66 = tail call i32 @fd_reopen(i32 1, i8* %64, i32 1089, i32 384) #11, !dbg !851
  br label %69, !dbg !850

; <label>:67:                                     ; preds = %63
  %68 = tail call i32 (i8*, i32, ...) @open(i8* %64, i32 1089, i32 384) #11, !dbg !852
  br label %69, !dbg !850

; <label>:69:                                     ; preds = %65, %67
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ], !dbg !853
  call void @llvm.dbg.value(metadata i32 %70, metadata !744, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i8* %64, metadata !751, metadata !DIExpression()), !dbg !831
  %71 = icmp slt i32 %70, 0, !dbg !854
  br i1 %71, label %72, label %83, !dbg !855

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %59, align 4, !dbg !856, !tbaa !790
  br label %74, !dbg !855

; <label>:74:                                     ; preds = %72, %58
  %75 = phi i32 [ %73, %72 ], [ %60, %58 ], !dbg !856
  %76 = phi i8* [ %64, %72 ], [ null, %58 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !766, metadata !DIExpression()), !dbg !857
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !858
  %78 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !859
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %60, i8* %77, i8* %78) #11, !dbg !860
  %79 = icmp eq i8* %76, null, !dbg !861
  br i1 %79, label %132, label %80, !dbg !863

; <label>:80:                                     ; preds = %74
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !864
  %82 = tail call i8* @quotearg_style(i32 4, i8* nonnull %76) #11, !dbg !865
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %75, i8* %81, i8* %82) #11, !dbg !866
  br label %132, !dbg !866

; <label>:83:                                     ; preds = %54, %69
  %84 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %54 ], [ %64, %69 ], !dbg !867
  %85 = phi i8* [ null, %54 ], [ %64, %69 ], !dbg !853
  %86 = phi i32 [ %56, %54 ], [ %70, %69 ], !dbg !853
  call void @llvm.dbg.value(metadata i32 %86, metadata !744, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i8* %85, metadata !751, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i8* %84, metadata !754, metadata !DIExpression()), !dbg !867
  %87 = tail call i32 @umask(i32 %55) #11, !dbg !868
  %88 = select i1 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), !dbg !869
  %89 = tail call i8* @dcgettext(i8* null, i8* %88, i32 5) #11, !dbg !869
  %90 = tail call i8* @quotearg_style(i32 4, i8* %84) #11, !dbg !870
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %89, i8* %90) #11, !dbg !871
  tail call void @free(i8* %85) #11, !dbg !872
  br label %91

; <label>:91:                                     ; preds = %46, %83
  %92 = phi i32 [ 1, %46 ], [ %86, %83 ], !dbg !813
  call void @llvm.dbg.value(metadata i32 %92, metadata !744, metadata !DIExpression()), !dbg !774
  br i1 %32, label %93, label %108, !dbg !873

; <label>:93:                                     ; preds = %91
  %94 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 2, i32 1030, i32 3) #11, !dbg !874
  call void @llvm.dbg.value(metadata i32 %94, metadata !745, metadata !DIExpression()), !dbg !775
  br i1 %24, label %98, label %95, !dbg !877

; <label>:95:                                     ; preds = %93
  %96 = select i1 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), !dbg !878
  %97 = tail call i8* @dcgettext(i8* null, i8* %96, i32 5) #11, !dbg !878
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %97) #11, !dbg !880
  br label %98, !dbg !880

; <label>:98:                                     ; preds = %95, %93
  %99 = tail call i32 @dup2(i32 %92, i32 2) #11, !dbg !881
  %100 = icmp slt i32 %99, 0, !dbg !883
  br i1 %100, label %101, label %105, !dbg !884

; <label>:101:                                    ; preds = %98
  %102 = tail call i32* @__errno_location() #17, !dbg !885
  %103 = load i32, i32* %102, align 4, !dbg !885, !tbaa !790
  %104 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !886
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %103, i8* %104) #11, !dbg !887
  br label %105, !dbg !887

; <label>:105:                                    ; preds = %101, %98
  br i1 %30, label %106, label %108, !dbg !888

; <label>:106:                                    ; preds = %105
  %107 = tail call i32 @close(i32 %92) #11, !dbg !889
  br label %108, !dbg !889

; <label>:108:                                    ; preds = %105, %106, %91
  %109 = phi i32 [ %94, %106 ], [ %94, %105 ], [ 2, %91 ], !dbg !813
  call void @llvm.dbg.value(metadata i32 %109, metadata !745, metadata !DIExpression()), !dbg !775
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !891, !tbaa !692
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %110, metadata !893, metadata !DIExpression()), !dbg !951
  %111 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %110, i64 0, i32 0, !dbg !953
  %112 = load i32, i32* %111, align 8, !dbg !953, !tbaa !954
  %113 = and i32 %112, 32, !dbg !953
  %114 = icmp eq i32 %113, 0, !dbg !891
  br i1 %114, label %115, label %132, !dbg !958

; <label>:115:                                    ; preds = %108
  %116 = tail call void (i32)* @signal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*)) #11, !dbg !959
  %117 = load i32, i32* @optind, align 4, !dbg !960, !tbaa !790
  %118 = sext i32 %117 to i64, !dbg !961
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118, !dbg !961
  call void @llvm.dbg.value(metadata i8** %119, metadata !769, metadata !DIExpression()), !dbg !962
  %120 = load i8*, i8** %119, align 8, !dbg !963, !tbaa !692
  %121 = tail call i32 @execvp(i8* %120, i8** %119) #11, !dbg !964
  %122 = tail call i32* @__errno_location() #17, !dbg !965
  %123 = load i32, i32* %122, align 4, !dbg !965, !tbaa !790
  %124 = icmp eq i32 %123, 2, !dbg !966
  %125 = select i1 %124, i32 127, i32 126, !dbg !965
  call void @llvm.dbg.value(metadata i32 %125, metadata !770, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata i32 %123, metadata !771, metadata !DIExpression()), !dbg !968
  %126 = tail call i32 @dup2(i32 %109, i32 2) #11, !dbg !969
  %127 = icmp eq i32 %126, 2, !dbg !971
  br i1 %127, label %128, label %132, !dbg !972

; <label>:128:                                    ; preds = %115
  %129 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !973
  %130 = load i8*, i8** %119, align 8, !dbg !974, !tbaa !692
  %131 = tail call i8* @quotearg_style(i32 4, i8* %130) #11, !dbg !974
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %123, i8* %129, i8* %131) #11, !dbg !975
  br label %132, !dbg !975

; <label>:132:                                    ; preds = %80, %74, %115, %128, %108
  %133 = phi i32 [ %9, %108 ], [ %125, %128 ], [ %125, %115 ], [ %9, %74 ], [ %9, %80 ], !dbg !976
  ret i32 %133, !dbg !977
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !978 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !980, metadata !DIExpression()), !dbg !981
  store i8* %0, i8** @file_name, align 8, !dbg !982, !tbaa !692
  ret void, !dbg !983
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !984 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !988, metadata !DIExpression()), !dbg !989
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !990, !tbaa !991
  ret void, !dbg !993
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !994 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1001, !tbaa !692
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1002
  %3 = icmp eq i32 %2, 0, !dbg !1003
  br i1 %3, label %22, label %4, !dbg !1004

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1005, !tbaa !991, !range !1006
  %6 = icmp eq i8 %5, 0, !dbg !1005
  br i1 %6, label %11, label %7, !dbg !1007

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1008
  %9 = load i32, i32* %8, align 4, !dbg !1008, !tbaa !790
  %10 = icmp eq i32 %9, 32, !dbg !1009
  br i1 %10, label %22, label %11, !dbg !1010

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1011
  call void @llvm.dbg.value(metadata i8* %12, metadata !998, metadata !DIExpression()), !dbg !1012
  %13 = load i8*, i8** @file_name, align 8, !dbg !1013, !tbaa !692
  %14 = icmp eq i8* %13, null, !dbg !1013
  %15 = tail call i32* @__errno_location() #17, !dbg !1015
  %16 = load i32, i32* %15, align 4, !dbg !1015, !tbaa !790
  br i1 %14, label %19, label %17, !dbg !1016

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1017
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.47, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1018
  br label %20, !dbg !1018

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.48, i64 0, i64 0), i8* %12) #11, !dbg !1019
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1020, !tbaa !790
  tail call void @_exit(i32 %21) #15, !dbg !1021
  unreachable, !dbg !1021

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1022, !tbaa !692
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1024
  %25 = icmp eq i32 %24, 0, !dbg !1025
  br i1 %25, label %28, label %26, !dbg !1026

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1027, !tbaa !790
  tail call void @_exit(i32 %27) #15, !dbg !1028
  unreachable, !dbg !1028

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1029
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fd_reopen(i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #7 !dbg !1030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1035, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8* %1, metadata !1036, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i32 %2, metadata !1037, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i32 %3, metadata !1038, metadata !DIExpression()), !dbg !1047
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #11, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %5, metadata !1039, metadata !DIExpression()), !dbg !1049
  %6 = icmp eq i32 %5, %0, !dbg !1050
  %7 = icmp slt i32 %5, 0, !dbg !1051
  %8 = or i1 %6, %7, !dbg !1052
  br i1 %8, label %14, label %9, !dbg !1052

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #11, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %10, metadata !1040, metadata !DIExpression()), !dbg !1054
  %11 = tail call i32* @__errno_location() #17, !dbg !1055
  %12 = load i32, i32* %11, align 4, !dbg !1055, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %12, metadata !1043, metadata !DIExpression()), !dbg !1056
  %13 = tail call i32 @close(i32 %5) #11, !dbg !1057
  store i32 %12, i32* %11, align 4, !dbg !1058, !tbaa !790
  br label %14

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ], !dbg !1059
  ret i32 %15, !dbg !1060
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #7 !dbg !1061 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1066, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i8* %1, metadata !1067, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i8** %2, metadata !1068, metadata !DIExpression()), !dbg !1072
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %4, metadata !1069, metadata !DIExpression()), !dbg !1074
  %5 = icmp eq i8* %4, null, !dbg !1075
  br i1 %5, label %6, label %7, !dbg !1077

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !1078
  unreachable, !dbg !1078

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1079
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #7 !dbg !1080 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1083, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %1, metadata !1084, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8** %2, metadata !1085, metadata !DIExpression()), !dbg !1095
  %4 = tail call i8* @last_component(i8* %0) #14, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %4, metadata !1086, metadata !DIExpression()), !dbg !1097
  %5 = tail call i64 @base_len(i8* %4) #14, !dbg !1098
  call void @llvm.dbg.value(metadata i64 %5, metadata !1087, metadata !DIExpression()), !dbg !1099
  %6 = ptrtoint i8* %4 to i64, !dbg !1100
  %7 = ptrtoint i8* %0 to i64, !dbg !1100
  %8 = sub i64 %6, %7, !dbg !1100
  %9 = add i64 %8, %5, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %9, metadata !1088, metadata !DIExpression()), !dbg !1102
  %10 = tail call i64 @strlen(i8* %1) #14, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %10, metadata !1089, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !1090, metadata !DIExpression()), !dbg !1105
  %11 = icmp eq i64 %5, 0, !dbg !1106
  br i1 %11, label %21, label %12, !dbg !1108

; <label>:12:                                     ; preds = %3
  %13 = add i64 %9, -1, !dbg !1109
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1109
  %15 = load i8, i8* %14, align 1, !dbg !1109, !tbaa !1112
  %16 = icmp eq i8 %15, 47, !dbg !1109
  br i1 %16, label %25, label %17, !dbg !1113

; <label>:17:                                     ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1114, !tbaa !1112
  %19 = icmp eq i8 %18, 47, !dbg !1114
  %20 = select i1 %19, i8 0, i8 47, !dbg !1115
  br label %25, !dbg !1115

; <label>:21:                                     ; preds = %3
  %22 = load i8, i8* %1, align 1, !dbg !1116, !tbaa !1112
  %23 = icmp eq i8 %22, 47, !dbg !1116
  %24 = select i1 %23, i8 46, i8 0, !dbg !1118
  br label %25, !dbg !1118

; <label>:25:                                     ; preds = %21, %17, %12
  %26 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1119
  call void @llvm.dbg.value(metadata i8 %26, metadata !1090, metadata !DIExpression()), !dbg !1105
  %27 = icmp ne i8 %26, 0, !dbg !1120
  %28 = zext i1 %27 to i64, !dbg !1121
  %29 = add i64 %10, 1, !dbg !1122
  %30 = add i64 %29, %9, !dbg !1123
  %31 = add i64 %30, %28, !dbg !1124
  %32 = tail call noalias i8* @malloc(i64 %31) #11, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %32, metadata !1091, metadata !DIExpression()), !dbg !1126
  %33 = icmp eq i8* %32, null, !dbg !1127
  br i1 %33, label %43, label %34, !dbg !1129

; <label>:34:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i8* %32, metadata !1130, metadata !DIExpression()) #11, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %0, metadata !1140, metadata !DIExpression()) #11, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %9, metadata !1141, metadata !DIExpression()) #11, !dbg !1142
  %35 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %32, i1 false, i1 true) #11, !dbg !1144
  %36 = tail call i8* @__mempcpy_chk(i8* nonnull %32, i8* nonnull %0, i64 %9, i64 %35) #11, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %36, metadata !1092, metadata !DIExpression()), !dbg !1146
  store i8 %26, i8* %36, align 1, !dbg !1147, !tbaa !1112
  %37 = getelementptr inbounds i8, i8* %36, i64 %28, !dbg !1148
  call void @llvm.dbg.value(metadata i8* %37, metadata !1092, metadata !DIExpression()), !dbg !1146
  %38 = icmp eq i8** %2, null, !dbg !1149
  br i1 %38, label %40, label %39, !dbg !1151

; <label>:39:                                     ; preds = %34
  store i8* %37, i8** %2, align 8, !dbg !1152, !tbaa !692
  br label %40, !dbg !1153

; <label>:40:                                     ; preds = %34, %39
  call void @llvm.dbg.value(metadata i8* %37, metadata !1130, metadata !DIExpression()) #11, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %1, metadata !1140, metadata !DIExpression()) #11, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %10, metadata !1141, metadata !DIExpression()) #11, !dbg !1154
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %37, i1 false, i1 true) #11, !dbg !1156
  %42 = tail call i8* @__mempcpy_chk(i8* nonnull %37, i8* nonnull %1, i64 %10, i64 %41) #11, !dbg !1157
  call void @llvm.dbg.value(metadata i8* %42, metadata !1092, metadata !DIExpression()), !dbg !1146
  store i8 0, i8* %42, align 1, !dbg !1158, !tbaa !1112
  br label %43, !dbg !1159

; <label>:43:                                     ; preds = %25, %40
  ret i8* %32, !dbg !1160
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !1161 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1165, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8** %1, metadata !1166, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8* %2, metadata !1167, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8* %3, metadata !1168, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8* %4, metadata !1169, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1170, metadata !DIExpression()), !dbg !1194
  %8 = load i32, i32* @opterr, align 4, !dbg !1195, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %8, metadata !1172, metadata !DIExpression()), !dbg !1196
  store i32 0, i32* @opterr, align 4, !dbg !1197, !tbaa !790
  %9 = icmp eq i32 %0, 2, !dbg !1198
  br i1 %9, label %10, label %17, !dbg !1199

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.60, i64 0, i64 0), i32* null) #11, !dbg !1200
  call void @llvm.dbg.value(metadata i32 %11, metadata !1171, metadata !DIExpression()), !dbg !1201
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1202

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !1203
  br label %17, !dbg !1204

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1205
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !1205
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1173, metadata !DIExpression()), !dbg !1206
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1207
  call void @llvm.va_start(i8* nonnull %14), !dbg !1207
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1208, !tbaa !692
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !1209
  call void @exit(i32 0) #15, !dbg !1210
  unreachable, !dbg !1210

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1211, !tbaa !790
  store i32 0, i32* @optind, align 4, !dbg !1212, !tbaa !790
  ret void, !dbg !1213
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1216, metadata !DIExpression()), !dbg !1219
  %2 = icmp eq i8* %0, null, !dbg !1220
  br i1 %2, label %3, label %6, !dbg !1222

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1223, !tbaa !692
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1225
  tail call void @abort() #15, !dbg !1226
  unreachable, !dbg !1226

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1227
  call void @llvm.dbg.value(metadata i8* %7, metadata !1217, metadata !DIExpression()), !dbg !1228
  %8 = icmp eq i8* %7, null, !dbg !1229
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1230
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1231
  call void @llvm.dbg.value(metadata i8* %10, metadata !1218, metadata !DIExpression()), !dbg !1232
  %11 = ptrtoint i8* %10 to i64, !dbg !1233
  %12 = ptrtoint i8* %0 to i64, !dbg !1233
  %13 = sub i64 %11, %12, !dbg !1233
  %14 = icmp sgt i64 %13, 6, !dbg !1235
  br i1 %14, label %15, label %24, !dbg !1236

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1237
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.68, i64 0, i64 0), i64 7) #14, !dbg !1238
  %18 = icmp eq i32 %17, 0, !dbg !1239
  br i1 %18, label %19, label %24, !dbg !1240

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1216, metadata !DIExpression()), !dbg !1219
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i64 3) #14, !dbg !1241
  %21 = icmp eq i32 %20, 0, !dbg !1244
  br i1 %21, label %22, label %24, !dbg !1245

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1246
  call void @llvm.dbg.value(metadata i8* %23, metadata !1216, metadata !DIExpression()), !dbg !1219
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1248, !tbaa !692
  br label %24, !dbg !1249

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1216, metadata !DIExpression()), !dbg !1219
  store i8* %25, i8** @program_name, align 8, !dbg !1250, !tbaa !692
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1251, !tbaa !692
  ret void, !dbg !1252
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1253 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1258, metadata !DIExpression()), !dbg !1261
  %2 = tail call i32* @__errno_location() #17, !dbg !1262
  %3 = load i32, i32* %2, align 4, !dbg !1262, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %3, metadata !1259, metadata !DIExpression()), !dbg !1263
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1264
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1264
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1264
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1265
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1260, metadata !DIExpression()), !dbg !1266
  store i32 %3, i32* %2, align 4, !dbg !1267, !tbaa !790
  ret %struct.quoting_options* %8, !dbg !1268
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1269 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1275, metadata !DIExpression()), !dbg !1276
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1277
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1277
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1278
  %5 = load i32, i32* %4, align 8, !dbg !1278, !tbaa !1279
  ret i32 %5, !dbg !1281
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1282 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1286, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i32 %1, metadata !1287, metadata !DIExpression()), !dbg !1289
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1290
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1290
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1291
  store i32 %1, i32* %5, align 8, !dbg !1292, !tbaa !1279
  ret void, !dbg !1293
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1294 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1298, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %1, metadata !1299, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i32 %2, metadata !1300, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %1, metadata !1301, metadata !DIExpression()), !dbg !1310
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1311
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1311
  %6 = lshr i8 %1, 5, !dbg !1312
  %7 = zext i8 %6 to i64, !dbg !1312
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1313
  call void @llvm.dbg.value(metadata i32* %8, metadata !1303, metadata !DIExpression()), !dbg !1314
  %9 = and i8 %1, 31, !dbg !1315
  %10 = zext i8 %9 to i32, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %10, metadata !1305, metadata !DIExpression()), !dbg !1316
  %11 = load i32, i32* %8, align 4, !dbg !1317, !tbaa !790
  %12 = lshr i32 %11, %10, !dbg !1318
  %13 = and i32 %12, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %13, metadata !1306, metadata !DIExpression()), !dbg !1320
  %14 = and i32 %2, 1, !dbg !1321
  %15 = xor i32 %13, %14, !dbg !1322
  %16 = shl i32 %15, %10, !dbg !1323
  %17 = xor i32 %16, %11, !dbg !1324
  store i32 %17, i32* %8, align 4, !dbg !1324, !tbaa !790
  ret i32 %13, !dbg !1325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1326 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1330, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %1, metadata !1331, metadata !DIExpression()), !dbg !1334
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1335
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1337
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1330, metadata !DIExpression()), !dbg !1333
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1338
  %6 = load i32, i32* %5, align 4, !dbg !1338, !tbaa !1339
  call void @llvm.dbg.value(metadata i32 %6, metadata !1332, metadata !DIExpression()), !dbg !1340
  store i32 %1, i32* %5, align 4, !dbg !1341, !tbaa !1339
  ret i32 %6, !dbg !1342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1343 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1347, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %1, metadata !1348, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %2, metadata !1349, metadata !DIExpression()), !dbg !1352
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1353
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1355
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()), !dbg !1350
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1356
  store i32 10, i32* %6, align 8, !dbg !1357, !tbaa !1279
  %7 = icmp ne i8* %1, null, !dbg !1358
  %8 = icmp ne i8* %2, null, !dbg !1360
  %9 = and i1 %7, %8, !dbg !1361
  br i1 %9, label %11, label %10, !dbg !1361

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1362
  unreachable, !dbg !1362

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1363
  store i8* %1, i8** %12, align 8, !dbg !1364, !tbaa !1365
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1366
  store i8* %2, i8** %13, align 8, !dbg !1367, !tbaa !1368
  ret void, !dbg !1369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1374, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i64 %1, metadata !1375, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %2, metadata !1376, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %3, metadata !1377, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1378, metadata !DIExpression()), !dbg !1386
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1387
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1387
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1379, metadata !DIExpression()), !dbg !1388
  %8 = tail call i32* @__errno_location() #17, !dbg !1389
  %9 = load i32, i32* %8, align 4, !dbg !1389, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %9, metadata !1380, metadata !DIExpression()), !dbg !1390
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1391
  %11 = load i32, i32* %10, align 8, !dbg !1391, !tbaa !1279
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1392
  %13 = load i32, i32* %12, align 4, !dbg !1392, !tbaa !1339
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1393
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1394
  %16 = load i8*, i8** %15, align 8, !dbg !1394, !tbaa !1365
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1395
  %18 = load i8*, i8** %17, align 8, !dbg !1395, !tbaa !1368
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1396
  call void @llvm.dbg.value(metadata i64 %19, metadata !1381, metadata !DIExpression()), !dbg !1397
  store i32 %9, i32* %8, align 4, !dbg !1398, !tbaa !790
  ret i64 %19, !dbg !1399
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1400 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1406, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %1, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %2, metadata !1408, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %3, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %4, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %5, metadata !1411, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32* %6, metadata !1412, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %7, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %8, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 0, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* null, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, metadata !1420, metadata !DIExpression()), !dbg !1483
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1484
  %14 = icmp eq i64 %13, 1, !dbg !1485
  %15 = lshr i32 %5, 1, !dbg !1486
  %16 = trunc i32 %15 to i8, !dbg !1486
  %17 = and i8 %16, 1, !dbg !1486
  call void @llvm.dbg.value(metadata i8 %17, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 0, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 1, metadata !1425, metadata !DIExpression()), !dbg !1489
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1490

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1480
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1481
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1482
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1483
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1491
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1487
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1488
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1489
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %39, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %38, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %37, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %36, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %35, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %34, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %33, metadata !1419, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8* %32, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %31, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 0, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %30, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %29, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %28, metadata !1410, metadata !DIExpression()), !dbg !1474
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1493

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8 1, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 %36, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 5, metadata !1410, metadata !DIExpression()), !dbg !1474
  br label %93, !dbg !1494

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 5, metadata !1410, metadata !DIExpression()), !dbg !1474
  %43 = and i8 %36, 1, !dbg !1495
  %44 = icmp eq i8 %43, 0, !dbg !1495
  br i1 %44, label %45, label %93, !dbg !1494

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1497
  br i1 %46, label %93, label %47, !dbg !1500

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1497, !tbaa !1112
  br label %93, !dbg !1497

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 %28), !dbg !1501
  call void @llvm.dbg.value(metadata i8* %49, metadata !1413, metadata !DIExpression()), !dbg !1477
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), i32 %28), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %50, metadata !1414, metadata !DIExpression()), !dbg !1478
  br label %51, !dbg !1506

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %52, metadata !1413, metadata !DIExpression()), !dbg !1477
  %54 = and i8 %36, 1, !dbg !1507
  %55 = icmp eq i8 %54, 0, !dbg !1507
  br i1 %55, label %56, label %71, !dbg !1509

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 0, metadata !1416, metadata !DIExpression()), !dbg !1479
  %57 = load i8, i8* %52, align 1, !dbg !1510, !tbaa !1112
  %58 = icmp eq i8 %57, 0, !dbg !1513
  br i1 %58, label %71, label %59, !dbg !1513

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %62, metadata !1416, metadata !DIExpression()), !dbg !1479
  %63 = icmp ult i64 %62, %40, !dbg !1514
  br i1 %63, label %64, label %66, !dbg !1517

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1514
  store i8 %60, i8* %65, align 1, !dbg !1514, !tbaa !1112
  br label %66, !dbg !1514

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1517
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %68, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %67, metadata !1416, metadata !DIExpression()), !dbg !1479
  %69 = load i8, i8* %68, align 1, !dbg !1510, !tbaa !1112
  %70 = icmp eq i8 %69, 0, !dbg !1513
  br i1 %70, label %71, label %59, !dbg !1513, !llvm.loop !1519

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %72, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8* %53, metadata !1418, metadata !DIExpression()), !dbg !1481
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %73, metadata !1419, metadata !DIExpression()), !dbg !1482
  br label %93, !dbg !1522

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1420, metadata !DIExpression()), !dbg !1483
  br label %75, !dbg !1523

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1491
  call void @llvm.dbg.value(metadata i8 %76, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 1, metadata !1422, metadata !DIExpression()), !dbg !1486
  br label %77, !dbg !1524

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1483
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1491
  call void @llvm.dbg.value(metadata i8 %79, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 %78, metadata !1420, metadata !DIExpression()), !dbg !1483
  %80 = and i8 %79, 1, !dbg !1525
  %81 = icmp eq i8 %80, 0, !dbg !1525
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1527
  br label %83, !dbg !1527

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1528
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1486
  call void @llvm.dbg.value(metadata i8 %85, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 %84, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  %86 = and i8 %85, 1, !dbg !1529
  %87 = icmp eq i8 %86, 0, !dbg !1529
  br i1 %87, label %88, label %93, !dbg !1531

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1532
  br i1 %89, label %93, label %90, !dbg !1535

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1532, !tbaa !1112
  br label %93, !dbg !1532

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1422, metadata !DIExpression()), !dbg !1486
  br label %93, !dbg !1536

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1537
  unreachable, !dbg !1537

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1479
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %41 ], !dbg !1491
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1491
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1491
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %101, metadata !1422, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %99, metadata !1419, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %97, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i64 0, metadata !1415, metadata !DIExpression()), !dbg !1539
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !1540

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1541
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1479
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1480
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1487
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1488
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1489
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %125, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %122, metadata !1415, metadata !DIExpression()), !dbg !1539
  %130 = icmp eq i64 %125, -1, !dbg !1542
  br i1 %130, label %131, label %135, !dbg !1543

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1544
  %133 = load i8, i8* %132, align 1, !dbg !1544, !tbaa !1112
  %134 = icmp eq i8 %133, 0, !dbg !1545
  br i1 %134, label %617, label %137, !dbg !1546

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1547
  br i1 %136, label %617, label %137, !dbg !1546

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 0, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 0, metadata !1433, metadata !DIExpression()), !dbg !1550
  br i1 %107, label %138, label %153, !dbg !1551

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1553
  %140 = and i1 %108, %130, !dbg !1554
  br i1 %140, label %141, label %143, !dbg !1554

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %142, metadata !1409, metadata !DIExpression()), !dbg !1473
  br label %143, !dbg !1556

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1409, metadata !DIExpression()), !dbg !1473
  %145 = icmp ugt i64 %139, %144, !dbg !1557
  br i1 %145, label %153, label %146, !dbg !1558

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1559
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1560
  %149 = icmp ne i32 %148, 0, !dbg !1561
  %150 = or i1 %149, %110, !dbg !1562
  %151 = xor i1 %149, true, !dbg !1562
  %152 = zext i1 %151 to i8, !dbg !1562
  br i1 %150, label %153, label %661, !dbg !1562

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1563
  call void @llvm.dbg.value(metadata i8 %155, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %154, metadata !1409, metadata !DIExpression()), !dbg !1473
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1564
  %157 = load i8, i8* %156, align 1, !dbg !1564, !tbaa !1112
  call void @llvm.dbg.value(metadata i8 %157, metadata !1426, metadata !DIExpression()), !dbg !1565
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !1566

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1567

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1568

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1549
  %161 = and i8 %126, 1, !dbg !1572
  %162 = icmp eq i8 %161, 0, !dbg !1572
  %163 = and i1 %114, %162, !dbg !1572
  br i1 %163, label %164, label %180, !dbg !1572

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1574
  br i1 %165, label %166, label %168, !dbg !1578

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1574
  store i8 39, i8* %167, align 1, !dbg !1574, !tbaa !1112
  br label %168, !dbg !1574

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %169, metadata !1416, metadata !DIExpression()), !dbg !1479
  %170 = icmp ult i64 %169, %129, !dbg !1579
  br i1 %170, label %171, label %173, !dbg !1582

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1579
  store i8 36, i8* %172, align 1, !dbg !1579, !tbaa !1112
  br label %173, !dbg !1579

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %174, metadata !1416, metadata !DIExpression()), !dbg !1479
  %175 = icmp ult i64 %174, %129, !dbg !1583
  br i1 %175, label %176, label %178, !dbg !1586

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1583
  store i8 39, i8* %177, align 1, !dbg !1583, !tbaa !1112
  br label %178, !dbg !1583

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %179, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %180, !dbg !1587

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1538
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %182, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %181, metadata !1416, metadata !DIExpression()), !dbg !1479
  %183 = icmp ult i64 %181, %129, !dbg !1588
  br i1 %183, label %184, label %186, !dbg !1591

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1588
  store i8 92, i8* %185, align 1, !dbg !1588, !tbaa !1112
  br label %186, !dbg !1588

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %187, metadata !1416, metadata !DIExpression()), !dbg !1479
  br i1 %104, label %188, label %478, !dbg !1592

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1594
  %190 = icmp ult i64 %189, %154, !dbg !1595
  br i1 %190, label %191, label %467, !dbg !1596

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1597
  %193 = load i8, i8* %192, align 1, !dbg !1597, !tbaa !1112
  %194 = add i8 %193, -48, !dbg !1598
  %195 = icmp ult i8 %194, 10, !dbg !1598
  br i1 %195, label %196, label %467, !dbg !1598

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1599
  br i1 %197, label %198, label %200, !dbg !1603

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1599
  store i8 48, i8* %199, align 1, !dbg !1599, !tbaa !1112
  br label %200, !dbg !1599

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %201, metadata !1416, metadata !DIExpression()), !dbg !1479
  %202 = icmp ult i64 %201, %129, !dbg !1604
  br i1 %202, label %203, label %205, !dbg !1607

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1604
  store i8 48, i8* %204, align 1, !dbg !1604, !tbaa !1112
  br label %205, !dbg !1604

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %206, metadata !1416, metadata !DIExpression()), !dbg !1479
  br label %467, !dbg !1608

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1609

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1610

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1611

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1613

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1615
  %213 = icmp ult i64 %212, %154, !dbg !1616
  br i1 %213, label %214, label %467, !dbg !1617

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1618
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1619
  %217 = load i8, i8* %216, align 1, !dbg !1619, !tbaa !1112
  %218 = icmp eq i8 %217, 63, !dbg !1620
  br i1 %218, label %219, label %467, !dbg !1621

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1622
  %221 = load i8, i8* %220, align 1, !dbg !1622, !tbaa !1112
  %222 = sext i8 %221 to i32, !dbg !1622
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !1623

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1624

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %212, metadata !1415, metadata !DIExpression()), !dbg !1539
  %225 = icmp ult i64 %123, %129, !dbg !1626
  br i1 %225, label %226, label %228, !dbg !1629

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1626
  store i8 63, i8* %227, align 1, !dbg !1626, !tbaa !1112
  br label %228, !dbg !1626

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %229, metadata !1416, metadata !DIExpression()), !dbg !1479
  %230 = icmp ult i64 %229, %129, !dbg !1630
  br i1 %230, label %231, label %233, !dbg !1633

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1630
  store i8 34, i8* %232, align 1, !dbg !1630, !tbaa !1112
  br label %233, !dbg !1630

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %234, metadata !1416, metadata !DIExpression()), !dbg !1479
  %235 = icmp ult i64 %234, %129, !dbg !1634
  br i1 %235, label %236, label %238, !dbg !1637

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1634
  store i8 34, i8* %237, align 1, !dbg !1634, !tbaa !1112
  br label %238, !dbg !1634

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %239, metadata !1416, metadata !DIExpression()), !dbg !1479
  %240 = icmp ult i64 %239, %129, !dbg !1638
  br i1 %240, label %241, label %243, !dbg !1641

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1638
  store i8 63, i8* %242, align 1, !dbg !1638, !tbaa !1112
  br label %243, !dbg !1638

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %244, metadata !1416, metadata !DIExpression()), !dbg !1479
  br label %467, !dbg !1642

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %255, !dbg !1644

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %255, !dbg !1645

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %253, !dbg !1646

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %253, !dbg !1647

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1430, metadata !DIExpression()), !dbg !1643
  br label %255, !dbg !1648

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1430, metadata !DIExpression()), !dbg !1643
  br i1 %114, label %251, label %252, !dbg !1649

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1650

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1653

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1655
  call void @llvm.dbg.value(metadata i8 %254, metadata !1430, metadata !DIExpression()), !dbg !1643
  br i1 %113, label %255, label %661, !dbg !1656

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1655
  call void @llvm.dbg.value(metadata i8 %256, metadata !1430, metadata !DIExpression()), !dbg !1643
  br i1 %103, label %524, label %478, !dbg !1658

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1659
  br i1 %258, label %259, label %264, !dbg !1661

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1662, !tbaa !1112
  %261 = icmp ne i8 %260, 0, !dbg !1663
  %262 = icmp ne i64 %122, 0, !dbg !1664
  %263 = or i1 %262, %261, !dbg !1666
  br i1 %263, label %467, label %270, !dbg !1666

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1667
  %266 = icmp ne i64 %122, 0, !dbg !1664
  %267 = or i1 %266, %265, !dbg !1661
  br i1 %267, label %467, label %270, !dbg !1661

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1664
  br i1 %269, label %270, label %467, !dbg !1668

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1433, metadata !DIExpression()), !dbg !1550
  br label %271, !dbg !1669

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1655
  call void @llvm.dbg.value(metadata i8 %272, metadata !1433, metadata !DIExpression()), !dbg !1550
  br i1 %113, label %467, label %661, !dbg !1670

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 1, metadata !1433, metadata !DIExpression()), !dbg !1550
  br i1 %114, label %274, label %467, !dbg !1672

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1673

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1676
  %277 = icmp ne i64 %124, 0, !dbg !1678
  %278 = or i1 %277, %276, !dbg !1679
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1679
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %280, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %279, metadata !1417, metadata !DIExpression()), !dbg !1480
  %281 = icmp ult i64 %123, %280, !dbg !1680
  br i1 %281, label %282, label %284, !dbg !1683

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1680
  store i8 39, i8* %283, align 1, !dbg !1680, !tbaa !1112
  br label %284, !dbg !1680

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %285, metadata !1416, metadata !DIExpression()), !dbg !1479
  %286 = icmp ult i64 %285, %280, !dbg !1684
  br i1 %286, label %287, label %289, !dbg !1687

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1684
  store i8 92, i8* %288, align 1, !dbg !1684, !tbaa !1112
  br label %289, !dbg !1684

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %290, metadata !1416, metadata !DIExpression()), !dbg !1479
  %291 = icmp ult i64 %290, %280, !dbg !1688
  br i1 %291, label %292, label %294, !dbg !1691

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1688
  store i8 39, i8* %293, align 1, !dbg !1688, !tbaa !1112
  br label %294, !dbg !1688

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1691
  call void @llvm.dbg.value(metadata i64 %295, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %467, !dbg !1692

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1693

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1434, metadata !DIExpression()), !dbg !1694
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1695
  %299 = load i16*, i16** %298, align 8, !dbg !1695, !tbaa !692
  %300 = zext i8 %157 to i64, !dbg !1695
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1695
  %302 = load i16, i16* %301, align 2, !dbg !1695, !tbaa !1697
  %303 = lshr i16 %302, 14, !dbg !1698
  %304 = trunc i16 %303 to i8, !dbg !1698
  %305 = and i8 %304, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i8 %305, metadata !1437, metadata !DIExpression()), !dbg !1699
  br label %359, !dbg !1700

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1701
  store i64 0, i64* %10, align 8, !dbg !1702
  call void @llvm.dbg.value(metadata i64 0, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 1, metadata !1437, metadata !DIExpression()), !dbg !1699
  %307 = icmp eq i64 %154, -1, !dbg !1703
  br i1 %307, label %308, label %310, !dbg !1705

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %309, metadata !1409, metadata !DIExpression()), !dbg !1473
  br label %310, !dbg !1707

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1708
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  br label %312, !dbg !1709

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1710
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1711
  call void @llvm.dbg.value(metadata i8 %314, metadata !1437, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1712
  %315 = add i64 %313, %122, !dbg !1713
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1714
  %317 = sub i64 %311, %315, !dbg !1715
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1438, metadata !DIExpression(DW_OP_deref)), !dbg !1716
  call void @llvm.dbg.value(metadata i32* %12, metadata !1456, metadata !DIExpression(DW_OP_deref)), !dbg !1717
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %318, metadata !1459, metadata !DIExpression()), !dbg !1719
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1720

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  %320 = icmp ugt i64 %311, %315, !dbg !1721
  br i1 %320, label %321, label %344, !dbg !1723

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1434, metadata !DIExpression()), !dbg !1694
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1724
  %325 = load i8, i8* %324, align 1, !dbg !1724, !tbaa !1112
  %326 = icmp eq i8 %325, 0, !dbg !1723
  br i1 %326, label %344, label %327, !dbg !1725

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %328, metadata !1434, metadata !DIExpression()), !dbg !1694
  %329 = add i64 %328, %122, !dbg !1727
  %330 = icmp ult i64 %329, %311, !dbg !1721
  br i1 %330, label %321, label %344, !dbg !1723, !llvm.loop !1728

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1729
  %333 = and i1 %116, %332, !dbg !1732
  call void @llvm.dbg.value(metadata i64 1, metadata !1460, metadata !DIExpression()), !dbg !1733
  br i1 %333, label %334, label %347, !dbg !1732

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1460, metadata !DIExpression()), !dbg !1733
  %336 = add i64 %335, %315, !dbg !1734
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1735
  %338 = load i8, i8* %337, align 1, !dbg !1735, !tbaa !1112
  %339 = sext i8 %338 to i32, !dbg !1735
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1736

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %341, metadata !1460, metadata !DIExpression()), !dbg !1733
  %342 = icmp ult i64 %341, %318, !dbg !1729
  br i1 %342, label %334, label %347, !dbg !1738, !llvm.loop !1739

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %314, metadata !1437, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %313, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %314, metadata !1437, metadata !DIExpression()), !dbg !1699
  br label %344, !dbg !1741

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1437, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %352, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1741
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1742, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %348, metadata !1456, metadata !DIExpression()), !dbg !1717
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !1744
  %350 = icmp eq i32 %349, 0, !dbg !1744
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1745
  call void @llvm.dbg.value(metadata i8 %351, metadata !1437, metadata !DIExpression()), !dbg !1699
  %352 = add i64 %318, %313, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %352, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 %351, metadata !1437, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %352, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1741
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1438, metadata !DIExpression(DW_OP_deref)), !dbg !1716
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1747
  %354 = icmp eq i32 %353, 0, !dbg !1748
  br i1 %354, label %312, label %355, !dbg !1749, !llvm.loop !1750

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1752
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 2, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %94, metadata !1410, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %100, metadata !1420, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %311, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %351, metadata !1437, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %352, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1741
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1752
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1753
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1754
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1754
  call void @llvm.dbg.value(metadata i8 %362, metadata !1437, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %361, metadata !1434, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %360, metadata !1409, metadata !DIExpression()), !dbg !1473
  %363 = and i8 %362, 1, !dbg !1755
  %364 = icmp ne i8 %363, 0, !dbg !1755
  call void @llvm.dbg.value(metadata i8 %363, metadata !1433, metadata !DIExpression()), !dbg !1550
  %365 = icmp ult i64 %361, 2, !dbg !1756
  %366 = or i1 %364, %115, !dbg !1757
  %367 = and i1 %365, %366, !dbg !1758
  br i1 %367, label %467, label %368, !dbg !1758

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %369, metadata !1467, metadata !DIExpression()), !dbg !1760
  br label %370, !dbg !1761

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1762
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1766
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1487
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1762
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1768
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1549
  call void @llvm.dbg.value(metadata i8 %376, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %375, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %374, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %373, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %372, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %371, metadata !1415, metadata !DIExpression()), !dbg !1539
  br i1 %366, label %423, label %377, !dbg !1772

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1773

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1549
  %379 = and i8 %373, 1, !dbg !1776
  %380 = icmp eq i8 %379, 0, !dbg !1776
  %381 = and i1 %114, %380, !dbg !1776
  br i1 %381, label %382, label %398, !dbg !1776

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1778
  br i1 %383, label %384, label %386, !dbg !1782

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1778
  store i8 39, i8* %385, align 1, !dbg !1778, !tbaa !1112
  br label %386, !dbg !1778

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %387, metadata !1416, metadata !DIExpression()), !dbg !1479
  %388 = icmp ult i64 %387, %129, !dbg !1783
  br i1 %388, label %389, label %391, !dbg !1786

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1783
  store i8 36, i8* %390, align 1, !dbg !1783, !tbaa !1112
  br label %391, !dbg !1783

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1786
  call void @llvm.dbg.value(metadata i64 %392, metadata !1416, metadata !DIExpression()), !dbg !1479
  %393 = icmp ult i64 %392, %129, !dbg !1787
  br i1 %393, label %394, label %396, !dbg !1790

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1787
  store i8 39, i8* %395, align 1, !dbg !1787, !tbaa !1112
  br label %396, !dbg !1787

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %397, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %398, !dbg !1791

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1538
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %400, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %399, metadata !1416, metadata !DIExpression()), !dbg !1479
  %401 = icmp ult i64 %399, %129, !dbg !1792
  br i1 %401, label %402, label %404, !dbg !1795

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1792
  store i8 92, i8* %403, align 1, !dbg !1792, !tbaa !1112
  br label %404, !dbg !1792

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %405, metadata !1416, metadata !DIExpression()), !dbg !1479
  %406 = icmp ult i64 %405, %129, !dbg !1796
  br i1 %406, label %407, label %411, !dbg !1799

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1796
  %409 = or i8 %408, 48, !dbg !1796
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1796
  store i8 %409, i8* %410, align 1, !dbg !1796, !tbaa !1112
  br label %411, !dbg !1796

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %412, metadata !1416, metadata !DIExpression()), !dbg !1479
  %413 = icmp ult i64 %412, %129, !dbg !1800
  br i1 %413, label %414, label %419, !dbg !1803

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1800
  %416 = and i8 %415, 7, !dbg !1800
  %417 = or i8 %416, 48, !dbg !1800
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1800
  store i8 %417, i8* %418, align 1, !dbg !1800, !tbaa !1112
  br label %419, !dbg !1800

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %420, metadata !1416, metadata !DIExpression()), !dbg !1479
  %421 = and i8 %374, 7, !dbg !1804
  %422 = or i8 %421, 48, !dbg !1805
  call void @llvm.dbg.value(metadata i8 %422, metadata !1426, metadata !DIExpression()), !dbg !1565
  br label %432, !dbg !1806

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1807
  %425 = icmp eq i8 %424, 0, !dbg !1807
  br i1 %425, label %432, label %426, !dbg !1808

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1809
  br i1 %427, label %428, label %430, !dbg !1812

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1809
  store i8 92, i8* %429, align 1, !dbg !1809, !tbaa !1112
  br label %430, !dbg !1809

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %431, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1431, metadata !DIExpression()), !dbg !1548
  br label %432, !dbg !1813

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1814
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1487
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1815
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1816
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %437, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %436, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %435, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %434, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %433, metadata !1416, metadata !DIExpression()), !dbg !1479
  %438 = add i64 %371, 1, !dbg !1819
  %439 = icmp ugt i64 %369, %438, !dbg !1821
  br i1 %439, label %440, label %562, !dbg !1822

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1823
  %442 = icmp ne i8 %441, 0, !dbg !1823
  %443 = and i8 %437, 1, !dbg !1823
  %444 = icmp eq i8 %443, 0, !dbg !1823
  %445 = and i1 %442, %444, !dbg !1823
  br i1 %445, label %446, label %457, !dbg !1823

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1826
  br i1 %447, label %448, label %450, !dbg !1830

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1826
  store i8 39, i8* %449, align 1, !dbg !1826, !tbaa !1112
  br label %450, !dbg !1826

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %451, metadata !1416, metadata !DIExpression()), !dbg !1479
  %452 = icmp ult i64 %451, %129, !dbg !1831
  br i1 %452, label %453, label %455, !dbg !1834

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1831
  store i8 39, i8* %454, align 1, !dbg !1831, !tbaa !1112
  br label %455, !dbg !1831

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %456, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %457, !dbg !1835

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1836
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %459, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %458, metadata !1416, metadata !DIExpression()), !dbg !1479
  %460 = icmp ult i64 %458, %129, !dbg !1837
  br i1 %460, label %461, label %463, !dbg !1839

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1837
  store i8 %435, i8* %462, align 1, !dbg !1837, !tbaa !1112
  br label %463, !dbg !1837

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %464, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %438, metadata !1415, metadata !DIExpression()), !dbg !1539
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1840
  %466 = load i8, i8* %465, align 1, !dbg !1840, !tbaa !1112
  call void @llvm.dbg.value(metadata i8 %466, metadata !1426, metadata !DIExpression()), !dbg !1565
  br label %370, !dbg !1841, !llvm.loop !1842

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1845
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1538
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1480
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1846
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1538
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1538
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1563
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1563
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1563
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %476, metadata !1433, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %475, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %155, metadata !1431, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %474, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %473, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %472, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %471, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %470, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %469, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %468, metadata !1415, metadata !DIExpression()), !dbg !1539
  br i1 %105, label %489, label %478, !dbg !1847

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !1849

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1850

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !1851
  %502 = zext i8 %501 to i64, !dbg !1851
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1852
  %504 = load i32, i32* %503, align 4, !dbg !1852, !tbaa !790
  %505 = and i8 %494, 31, !dbg !1853
  %506 = zext i8 %505 to i32, !dbg !1853
  %507 = shl i32 1, %506, !dbg !1854
  %508 = and i32 %504, %507, !dbg !1854
  %509 = icmp eq i32 %508, 0, !dbg !1854
  %510 = icmp eq i8 %155, 0, !dbg !1855
  %511 = and i1 %510, %509, !dbg !1856
  br i1 %511, label %562, label %524, !dbg !1856

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !1855
  br i1 %523, label %562, label %524, !dbg !1857

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1858
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1538
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1480
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1846
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1487
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1488
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1859
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1563
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %532, metadata !1433, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %531, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %530, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %529, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %528, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %527, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %526, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %525, metadata !1415, metadata !DIExpression()), !dbg !1539
  br i1 %110, label %534, label %661, !dbg !1862

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1432, metadata !DIExpression()), !dbg !1549
  %535 = and i8 %529, 1, !dbg !1864
  %536 = icmp eq i8 %535, 0, !dbg !1864
  %537 = and i1 %114, %536, !dbg !1864
  br i1 %537, label %538, label %554, !dbg !1864

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1866
  br i1 %539, label %540, label %542, !dbg !1870

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1866
  store i8 39, i8* %541, align 1, !dbg !1866, !tbaa !1112
  br label %542, !dbg !1866

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %543, metadata !1416, metadata !DIExpression()), !dbg !1479
  %544 = icmp ult i64 %543, %533, !dbg !1871
  br i1 %544, label %545, label %547, !dbg !1874

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1871
  store i8 36, i8* %546, align 1, !dbg !1871, !tbaa !1112
  br label %547, !dbg !1871

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %548, metadata !1416, metadata !DIExpression()), !dbg !1479
  %549 = icmp ult i64 %548, %533, !dbg !1875
  br i1 %549, label %550, label %552, !dbg !1878

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1875
  store i8 39, i8* %551, align 1, !dbg !1875, !tbaa !1112
  br label %552, !dbg !1875

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %553, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %554, !dbg !1879

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1836
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %556, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %555, metadata !1416, metadata !DIExpression()), !dbg !1479
  %557 = icmp ult i64 %555, %533, !dbg !1880
  br i1 %557, label %558, label %560, !dbg !1883

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1880
  store i8 92, i8* %559, align 1, !dbg !1880, !tbaa !1112
  br label %560, !dbg !1880

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %561, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %572, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %571, metadata !1433, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %570, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %569, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %568, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %567, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %566, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %565, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %564, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %563, metadata !1415, metadata !DIExpression()), !dbg !1539
  br label %589, !dbg !1884

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1858
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1538
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1480
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1846
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1487
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1488
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1887
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1563
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1563
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %571, metadata !1433, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %570, metadata !1432, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i8 %569, metadata !1426, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8 %568, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %567, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %566, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %565, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %564, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %563, metadata !1415, metadata !DIExpression()), !dbg !1539
  %573 = and i8 %567, 1, !dbg !1884
  %574 = icmp ne i8 %573, 0, !dbg !1884
  %575 = and i8 %570, 1, !dbg !1884
  %576 = icmp eq i8 %575, 0, !dbg !1884
  %577 = and i1 %574, %576, !dbg !1884
  br i1 %577, label %578, label %589, !dbg !1884

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1888
  br i1 %579, label %580, label %582, !dbg !1892

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1888
  store i8 39, i8* %581, align 1, !dbg !1888, !tbaa !1112
  br label %582, !dbg !1888

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %583, metadata !1416, metadata !DIExpression()), !dbg !1479
  %584 = icmp ult i64 %583, %572, !dbg !1893
  br i1 %584, label %585, label %587, !dbg !1896

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1893
  store i8 39, i8* %586, align 1, !dbg !1893, !tbaa !1112
  br label %587, !dbg !1893

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %588, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1487
  br label %589, !dbg !1897

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1836
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1538
  call void @llvm.dbg.value(metadata i8 %598, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %597, metadata !1416, metadata !DIExpression()), !dbg !1479
  %599 = icmp ult i64 %597, %590, !dbg !1898
  br i1 %599, label %600, label %602, !dbg !1901

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1898
  store i8 %592, i8* %601, align 1, !dbg !1898, !tbaa !1112
  br label %602, !dbg !1898

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %603, metadata !1416, metadata !DIExpression()), !dbg !1479
  %604 = and i8 %591, 1, !dbg !1902
  %605 = icmp eq i8 %604, 0, !dbg !1902
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1904
  call void @llvm.dbg.value(metadata i8 %606, metadata !1425, metadata !DIExpression()), !dbg !1489
  br label %607, !dbg !1905

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1858
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1538
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1480
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1846
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1487
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1538
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1489
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %614, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %613, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %612, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i64 %611, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %610, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %609, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %608, metadata !1415, metadata !DIExpression()), !dbg !1539
  %616 = add i64 %608, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %616, metadata !1415, metadata !DIExpression()), !dbg !1539
  br label %121, !dbg !1907, !llvm.loop !1908

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %125, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %125, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %126, metadata !1423, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %127, metadata !1424, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %128, metadata !1425, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  %619 = icmp eq i64 %123, 0, !dbg !1910
  %620 = and i1 %114, %619, !dbg !1912
  %621 = xor i1 %620, true, !dbg !1912
  %622 = or i1 %110, %621, !dbg !1912
  br i1 %622, label %623, label %661, !dbg !1912

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1913
  %625 = xor i1 %624, true, !dbg !1913
  %626 = and i8 %127, 1, !dbg !1915
  %627 = icmp eq i8 %626, 0, !dbg !1915
  %628 = or i1 %627, %625, !dbg !1913
  br i1 %628, label %638, label %629, !dbg !1913

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1916
  %631 = icmp eq i8 %630, 0, !dbg !1916
  br i1 %631, label %634, label %632, !dbg !1919

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %618, metadata !1409, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %95, metadata !1413, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 %124, metadata !1417, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %125, metadata !1409, metadata !DIExpression()), !dbg !1473
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1920
  br label %671, !dbg !1921

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1922
  %636 = icmp ne i64 %124, 0, !dbg !1924
  %637 = and i1 %636, %635, !dbg !1925
  br i1 %637, label %27, label %638, !dbg !1925

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %129, metadata !1407, metadata !DIExpression()), !dbg !1471
  %639 = icmp ne i8* %98, null, !dbg !1926
  %640 = and i1 %639, %110, !dbg !1928
  br i1 %640, label %641, label %656, !dbg !1928

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %123, metadata !1416, metadata !DIExpression()), !dbg !1479
  %642 = load i8, i8* %98, align 1, !dbg !1929, !tbaa !1112
  %643 = icmp eq i8 %642, 0, !dbg !1932
  br i1 %643, label %656, label %644, !dbg !1932

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %647, metadata !1416, metadata !DIExpression()), !dbg !1479
  %648 = icmp ult i64 %647, %129, !dbg !1933
  br i1 %648, label %649, label %651, !dbg !1936

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1933
  store i8 %645, i8* %650, align 1, !dbg !1933, !tbaa !1112
  br label %651, !dbg !1933

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1936
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1937
  call void @llvm.dbg.value(metadata i8* %653, metadata !1418, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %652, metadata !1416, metadata !DIExpression()), !dbg !1479
  %654 = load i8, i8* %653, align 1, !dbg !1929, !tbaa !1112
  %655 = icmp eq i8 %654, 0, !dbg !1932
  br i1 %655, label %656, label %644, !dbg !1932, !llvm.loop !1938

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %657, metadata !1416, metadata !DIExpression()), !dbg !1479
  %658 = icmp ult i64 %657, %129, !dbg !1940
  br i1 %658, label %659, label %671, !dbg !1942

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1943
  store i8 0, i8* %660, align 1, !dbg !1944, !tbaa !1112
  br label %671, !dbg !1943

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1407, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %663, metadata !1409, metadata !DIExpression()), !dbg !1473
  %665 = icmp ne i32 %662, 2, !dbg !1945
  %666 = icmp eq i8 %102, 0, !dbg !1947
  %667 = or i1 %665, %666, !dbg !1948
  call void @llvm.dbg.value(metadata i32 4, metadata !1410, metadata !DIExpression()), !dbg !1474
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1948
  call void @llvm.dbg.value(metadata i32 %668, metadata !1410, metadata !DIExpression()), !dbg !1474
  %669 = and i32 %5, -3, !dbg !1949
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1950
  br label %671, !dbg !1951

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1952
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1953 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1957, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %1, metadata !1958, metadata !DIExpression()), !dbg !1962
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1963
  call void @llvm.dbg.value(metadata i8* %3, metadata !1959, metadata !DIExpression()), !dbg !1964
  %4 = icmp eq i8* %3, %0, !dbg !1965
  br i1 %4, label %5, label %71, !dbg !1967

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %6, metadata !1960, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %6, metadata !1970, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8* null, metadata !1976, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 85, metadata !1977, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i8 84, metadata !1978, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8 70, metadata !1979, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 45, metadata !1980, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i8 56, metadata !1981, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8 0, metadata !1982, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1983, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !1998
  %7 = load i8, i8* %6, align 1, !dbg !1999, !tbaa !1112
  %8 = and i8 %7, -33, !dbg !1999
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1999

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2001, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8* null, metadata !2006, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 84, metadata !2007, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 70, metadata !2008, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 45, metadata !2009, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 56, metadata !2010, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2011, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !2012, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2027
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2028
  %11 = load i8, i8* %10, align 1, !dbg !2028, !tbaa !1112
  %12 = and i8 %11, -33, !dbg !2028
  %13 = icmp eq i8 %12, 84, !dbg !2028
  br i1 %13, label %14, label %68, !dbg !2028

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2030, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8* null, metadata !2035, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8 70, metadata !2036, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 45, metadata !2037, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 56, metadata !2038, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2054
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2055
  %16 = load i8, i8* %15, align 1, !dbg !2055, !tbaa !1112
  %17 = and i8 %16, -33, !dbg !2055
  %18 = icmp eq i8 %17, 70, !dbg !2055
  br i1 %18, label %19, label %68, !dbg !2055

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2057, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8* null, metadata !2062, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 45, metadata !2063, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8 56, metadata !2064, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2065, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2079
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2080
  %21 = load i8, i8* %20, align 1, !dbg !2080, !tbaa !1112
  %22 = icmp eq i8 %21, 45, !dbg !2080
  br i1 %22, label %23, label %68, !dbg !2082

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2083, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* null, metadata !2088, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 56, metadata !2089, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !2090, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2103
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2104
  %25 = load i8, i8* %24, align 1, !dbg !2104, !tbaa !1112
  %26 = icmp eq i8 %25, 56, !dbg !2104
  br i1 %26, label %27, label %68, !dbg !2106

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2107, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8* null, metadata !2112, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2116, metadata !DIExpression()), !dbg !2125
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2126
  %29 = load i8, i8* %28, align 1, !dbg !2126, !tbaa !1112
  %30 = icmp eq i8 %29, 0, !dbg !2126
  br i1 %30, label %31, label %68, !dbg !2128

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2129, !tbaa !1112
  %33 = icmp eq i8 %32, 96, !dbg !2130
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.84, i64 0, i64 0), !dbg !2129
  br label %71, !dbg !2131

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2001, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* null, metadata !2006, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 66, metadata !2007, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 49, metadata !2008, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 56, metadata !2009, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 48, metadata !2010, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 51, metadata !2011, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 48, metadata !2012, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2144
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2145
  %37 = load i8, i8* %36, align 1, !dbg !2145, !tbaa !1112
  %38 = and i8 %37, -33, !dbg !2145
  %39 = icmp eq i8 %38, 66, !dbg !2145
  br i1 %39, label %40, label %68, !dbg !2145

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2030, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* null, metadata !2035, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8 49, metadata !2036, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 56, metadata !2037, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8 48, metadata !2038, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 51, metadata !2039, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 48, metadata !2040, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2155
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2156
  %42 = load i8, i8* %41, align 1, !dbg !2156, !tbaa !1112
  %43 = icmp eq i8 %42, 49, !dbg !2156
  br i1 %43, label %44, label %68, !dbg !2157

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2057, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8* null, metadata !2062, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 56, metadata !2063, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8 48, metadata !2064, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 51, metadata !2065, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 48, metadata !2066, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, metadata !2068, metadata !DIExpression()), !dbg !2166
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2167
  %46 = load i8, i8* %45, align 1, !dbg !2167, !tbaa !1112
  %47 = icmp eq i8 %46, 56, !dbg !2167
  br i1 %47, label %48, label %68, !dbg !2168

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2083, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8* null, metadata !2088, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 48, metadata !2089, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 51, metadata !2090, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8 48, metadata !2091, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2176
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2177
  %50 = load i8, i8* %49, align 1, !dbg !2177, !tbaa !1112
  %51 = icmp eq i8 %50, 48, !dbg !2177
  br i1 %51, label %52, label %68, !dbg !2178

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2107, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* null, metadata !2112, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 51, metadata !2113, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8 48, metadata !2114, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 0, metadata !2116, metadata !DIExpression()), !dbg !2185
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2186
  %54 = load i8, i8* %53, align 1, !dbg !2186, !tbaa !1112
  %55 = icmp eq i8 %54, 51, !dbg !2186
  br i1 %55, label %56, label %68, !dbg !2187

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2188, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8* null, metadata !2193, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 48, metadata !2194, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2204
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2205
  %58 = load i8, i8* %57, align 1, !dbg !2205, !tbaa !1112
  %59 = icmp eq i8 %58, 48, !dbg !2205
  br i1 %59, label %60, label %68, !dbg !2207

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2208, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8* null, metadata !2213, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i8 0, metadata !2214, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2222
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2223
  %62 = load i8, i8* %61, align 1, !dbg !2223, !tbaa !1112
  %63 = icmp eq i8 %62, 0, !dbg !2223
  br i1 %63, label %64, label %68, !dbg !2225

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2226, !tbaa !1112
  %66 = icmp eq i8 %65, 96, !dbg !2227
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.86, i64 0, i64 0), !dbg !2226
  br label %71, !dbg !2228

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2229
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), !dbg !2230
  br label %71, !dbg !2231

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2232
  ret i8* %72, !dbg !2233
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %1, metadata !2239, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2240, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8* %0, metadata !2244, metadata !DIExpression()) #11, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %1, metadata !2249, metadata !DIExpression()) #11, !dbg !2259
  call void @llvm.dbg.value(metadata i64* null, metadata !2250, metadata !DIExpression()) #11, !dbg !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2251, metadata !DIExpression()) #11, !dbg !2261
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2262
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2262
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2252, metadata !DIExpression()) #11, !dbg !2263
  %6 = tail call i32* @__errno_location() #17, !dbg !2264
  %7 = load i32, i32* %6, align 4, !dbg !2264, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %7, metadata !2253, metadata !DIExpression()) #11, !dbg !2265
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2266
  %9 = load i32, i32* %8, align 4, !dbg !2266, !tbaa !1339
  %10 = or i32 %9, 1, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %10, metadata !2254, metadata !DIExpression()) #11, !dbg !2268
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2269
  %12 = load i32, i32* %11, align 8, !dbg !2269, !tbaa !1279
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2270
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2271
  %15 = load i8*, i8** %14, align 8, !dbg !2271, !tbaa !1365
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2272
  %17 = load i8*, i8** %16, align 8, !dbg !2272, !tbaa !1368
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2273
  %19 = add i64 %18, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %19, metadata !2255, metadata !DIExpression()) #11, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %19, metadata !2276, metadata !DIExpression()) #11, !dbg !2281
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2283
  call void @llvm.dbg.value(metadata i8* %20, metadata !2256, metadata !DIExpression()) #11, !dbg !2284
  %21 = load i32, i32* %11, align 8, !dbg !2285, !tbaa !1279
  %22 = load i8*, i8** %14, align 8, !dbg !2286, !tbaa !1365
  %23 = load i8*, i8** %16, align 8, !dbg !2287, !tbaa !1368
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2288
  store i32 %7, i32* %6, align 4, !dbg !2289, !tbaa !790
  ret i8* %20, !dbg !2290
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2245 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2244, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i64 %1, metadata !2249, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64* %2, metadata !2250, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2251, metadata !DIExpression()), !dbg !2294
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2295
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2295
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2252, metadata !DIExpression()), !dbg !2296
  %7 = tail call i32* @__errno_location() #17, !dbg !2297
  %8 = load i32, i32* %7, align 4, !dbg !2297, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %8, metadata !2253, metadata !DIExpression()), !dbg !2298
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2299
  %10 = load i32, i32* %9, align 4, !dbg !2299, !tbaa !1339
  %11 = icmp ne i64* %2, null, !dbg !2300
  %12 = xor i1 %11, true, !dbg !2300
  %13 = zext i1 %12 to i32, !dbg !2300
  %14 = or i32 %10, %13, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %14, metadata !2254, metadata !DIExpression()), !dbg !2302
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2303
  %16 = load i32, i32* %15, align 8, !dbg !2303, !tbaa !1279
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2304
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2305
  %19 = load i8*, i8** %18, align 8, !dbg !2305, !tbaa !1365
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2306
  %21 = load i8*, i8** %20, align 8, !dbg !2306, !tbaa !1368
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2307
  %23 = add i64 %22, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %23, metadata !2255, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %23, metadata !2276, metadata !DIExpression()) #11, !dbg !2310
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2312
  call void @llvm.dbg.value(metadata i8* %24, metadata !2256, metadata !DIExpression()), !dbg !2313
  %25 = load i32, i32* %15, align 8, !dbg !2314, !tbaa !1279
  %26 = load i8*, i8** %18, align 8, !dbg !2315, !tbaa !1365
  %27 = load i8*, i8** %20, align 8, !dbg !2316, !tbaa !1368
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2317
  store i32 %8, i32* %7, align 4, !dbg !2318, !tbaa !790
  br i1 %11, label %29, label %30, !dbg !2319

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2320, !tbaa !2322
  br label %30, !dbg !2323

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2325 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2329, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 1, metadata !2328, metadata !DIExpression()), !dbg !2331
  %2 = load i32, i32* @nslots, align 4, !dbg !2332, !tbaa !790
  %3 = icmp sgt i32 %2, 1, !dbg !2335
  br i1 %3, label %4, label %12, !dbg !2336

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2328, metadata !DIExpression()), !dbg !2331
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2337
  %7 = load i8*, i8** %6, align 8, !dbg !2337, !tbaa !2338
  tail call void @free(i8* %7) #11, !dbg !2340
  %8 = add nuw nsw i64 %5, 1, !dbg !2341
  call void @llvm.dbg.value(metadata i32 undef, metadata !2328, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2331
  %9 = load i32, i32* @nslots, align 4, !dbg !2332, !tbaa !790
  %10 = sext i32 %9 to i64, !dbg !2335
  %11 = icmp slt i64 %8, %10, !dbg !2335
  br i1 %11, label %4, label %12, !dbg !2336, !llvm.loop !2342

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2344
  %14 = load i8*, i8** %13, align 8, !dbg !2344, !tbaa !2338
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2346
  br i1 %15, label %17, label %16, !dbg !2347

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2348
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2350, !tbaa !2351
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2352, !tbaa !2338
  br label %17, !dbg !2353

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2354
  br i1 %18, label %21, label %19, !dbg !2356

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2357
  tail call void @free(i8* %20) #11, !dbg !2359
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2360, !tbaa !692
  br label %21, !dbg !2361

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2362, !tbaa !790
  ret void, !dbg !2363
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8* %1, metadata !2369, metadata !DIExpression()), !dbg !2371
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2372
  ret i8* %3, !dbg !2373
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2374 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2378, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8* %1, metadata !2379, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %2, metadata !2380, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2381, metadata !DIExpression()), !dbg !2396
  %5 = tail call i32* @__errno_location() #17, !dbg !2397
  %6 = load i32, i32* %5, align 4, !dbg !2397, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %6, metadata !2382, metadata !DIExpression()), !dbg !2398
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2399, !tbaa !692
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2383, metadata !DIExpression()), !dbg !2400
  %8 = icmp slt i32 %0, 0, !dbg !2401
  br i1 %8, label %9, label %10, !dbg !2403

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2404
  unreachable, !dbg !2404

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2405, !tbaa !790
  %12 = icmp sgt i32 %11, %0, !dbg !2406
  br i1 %12, label %34, label %13, !dbg !2407

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2408
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2387, metadata !DIExpression()), !dbg !2409
  %15 = icmp eq i32 %0, 2147483647, !dbg !2410
  br i1 %15, label %16, label %17, !dbg !2412

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2413
  unreachable, !dbg !2413

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2414
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2414
  %20 = add nsw i32 %0, 1, !dbg !2415
  %21 = sext i32 %20 to i64, !dbg !2416
  %22 = shl nsw i64 %21, 4, !dbg !2417
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2418
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2418
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2383, metadata !DIExpression()), !dbg !2400
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2419, !tbaa !692
  br i1 %14, label %25, label %26, !dbg !2420

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2421, !tbaa.struct !2423
  br label %26, !dbg !2424

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2425, !tbaa !790
  %28 = sext i32 %27 to i64, !dbg !2426
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2426
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2427
  %31 = sub nsw i32 %20, %27, !dbg !2428
  %32 = sext i32 %31 to i64, !dbg !2429
  %33 = shl nsw i64 %32, 4, !dbg !2430
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2427
  store i32 %20, i32* @nslots, align 4, !dbg !2431, !tbaa !790
  br label %34, !dbg !2432

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2433
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2383, metadata !DIExpression()), !dbg !2400
  %36 = sext i32 %0 to i64, !dbg !2434
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2435
  %38 = load i64, i64* %37, align 8, !dbg !2435, !tbaa !2351
  call void @llvm.dbg.value(metadata i64 %38, metadata !2388, metadata !DIExpression()), !dbg !2436
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2437
  %40 = load i8*, i8** %39, align 8, !dbg !2437, !tbaa !2338
  call void @llvm.dbg.value(metadata i8* %40, metadata !2390, metadata !DIExpression()), !dbg !2438
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2439
  %42 = load i32, i32* %41, align 4, !dbg !2439, !tbaa !1339
  %43 = or i32 %42, 1, !dbg !2440
  call void @llvm.dbg.value(metadata i32 %43, metadata !2391, metadata !DIExpression()), !dbg !2441
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2442
  %45 = load i32, i32* %44, align 8, !dbg !2442, !tbaa !1279
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2443
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2444
  %48 = load i8*, i8** %47, align 8, !dbg !2444, !tbaa !1365
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2445
  %50 = load i8*, i8** %49, align 8, !dbg !2445, !tbaa !1368
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2446
  call void @llvm.dbg.value(metadata i64 %51, metadata !2392, metadata !DIExpression()), !dbg !2447
  %52 = icmp ugt i64 %38, %51, !dbg !2448
  br i1 %52, label %63, label %53, !dbg !2450

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i64 %54, metadata !2388, metadata !DIExpression()), !dbg !2436
  store i64 %54, i64* %37, align 8, !dbg !2453, !tbaa !2351
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2454
  br i1 %55, label %57, label %56, !dbg !2456

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2457
  br label %57, !dbg !2457

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2276, metadata !DIExpression()) #11, !dbg !2458
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %58, metadata !2390, metadata !DIExpression()), !dbg !2438
  store i8* %58, i8** %39, align 8, !dbg !2461, !tbaa !2338
  %59 = load i32, i32* %44, align 8, !dbg !2462, !tbaa !1279
  %60 = load i8*, i8** %47, align 8, !dbg !2463, !tbaa !1365
  %61 = load i8*, i8** %49, align 8, !dbg !2464, !tbaa !1368
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2465
  br label %63, !dbg !2466

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2467
  call void @llvm.dbg.value(metadata i8* %64, metadata !2390, metadata !DIExpression()), !dbg !2438
  store i32 %6, i32* %5, align 4, !dbg !2468, !tbaa !790
  ret i8* %64, !dbg !2469
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2475, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %2, metadata !2476, metadata !DIExpression()), !dbg !2479
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2480
  ret i8* %4, !dbg !2481
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2482 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 0, metadata !2368, metadata !DIExpression()) #11, !dbg !2488
  call void @llvm.dbg.value(metadata i8* %0, metadata !2369, metadata !DIExpression()) #11, !dbg !2490
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2491
  ret i8* %2, !dbg !2492
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2493 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i64 %1, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !2474, metadata !DIExpression()) #11, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()) #11, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()) #11, !dbg !2504
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2505
  ret i8* %3, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2507 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2511, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 %1, metadata !2512, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8* %2, metadata !2513, metadata !DIExpression()), !dbg !2517
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2518
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression()) #11, !dbg !2526
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2528, !alias.scope !2529
  %6 = icmp eq i32 %1, 10, !dbg !2532
  br i1 %6, label %7, label %8, !dbg !2534

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2535, !noalias !2529
  unreachable, !dbg !2535

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2536
  store i32 %1, i32* %9, align 8, !dbg !2537, !tbaa !1279, !alias.scope !2529
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2525, metadata !DIExpression(DW_OP_deref)), !dbg !2528
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2538
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2539
  ret i8* %10, !dbg !2540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2541 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 %1, metadata !2546, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %2, metadata !2547, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %3, metadata !2548, metadata !DIExpression()), !dbg !2553
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2554
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2554
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2549, metadata !DIExpression(DW_OP_deref)), !dbg !2555
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression()) #11, !dbg !2556
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2558, !alias.scope !2559
  %7 = icmp eq i32 %1, 10, !dbg !2562
  br i1 %7, label %8, label %9, !dbg !2563

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2564, !noalias !2559
  unreachable, !dbg !2564

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2565
  store i32 %1, i32* %10, align 8, !dbg !2566, !tbaa !1279, !alias.scope !2559
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2549, metadata !DIExpression(DW_OP_deref)), !dbg !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2525, metadata !DIExpression(DW_OP_deref)), !dbg !2558
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2567
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2568
  ret i8* %11, !dbg !2569
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2570 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %1, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2511, metadata !DIExpression()) #11, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %0, metadata !2512, metadata !DIExpression()) #11, !dbg !2580
  call void @llvm.dbg.value(metadata i8* %1, metadata !2513, metadata !DIExpression()) #11, !dbg !2581
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2582
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2582
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2514, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %0, metadata !2520, metadata !DIExpression()) #11, !dbg !2584
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2586, !alias.scope !2587
  %5 = icmp eq i32 %0, 10, !dbg !2590
  br i1 %5, label %6, label %7, !dbg !2591

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2592, !noalias !2587
  unreachable, !dbg !2592

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2593
  store i32 %0, i32* %8, align 8, !dbg !2594, !tbaa !1279, !alias.scope !2587
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2514, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2583
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2525, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2586
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2596
  ret i8* %9, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2598 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %1, metadata !2603, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %2, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 0, metadata !2545, metadata !DIExpression()) #11, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()) #11, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %1, metadata !2547, metadata !DIExpression()) #11, !dbg !2611
  call void @llvm.dbg.value(metadata i64 %2, metadata !2548, metadata !DIExpression()) #11, !dbg !2612
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2613
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2549, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2614
  call void @llvm.dbg.value(metadata i32 %0, metadata !2520, metadata !DIExpression()) #11, !dbg !2615
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2617, !alias.scope !2618
  %6 = icmp eq i32 %0, 10, !dbg !2621
  br i1 %6, label %7, label %8, !dbg !2622

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2623, !noalias !2618
  unreachable, !dbg !2623

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2624
  store i32 %0, i32* %9, align 8, !dbg !2625, !tbaa !1279, !alias.scope !2618
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2549, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2525, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2617
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !2626
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2627
  ret i8* %10, !dbg !2628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2629 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2633, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %1, metadata !2634, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 %2, metadata !2635, metadata !DIExpression()), !dbg !2639
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2641, !tbaa.struct !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1298, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 %2, metadata !1299, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %2, metadata !1301, metadata !DIExpression()), !dbg !2648
  %6 = lshr i8 %2, 5, !dbg !2649
  %7 = zext i8 %6 to i64, !dbg !2649
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2650
  call void @llvm.dbg.value(metadata i32* %8, metadata !1303, metadata !DIExpression()), !dbg !2651
  %9 = and i8 %2, 31, !dbg !2652
  %10 = zext i8 %9 to i32, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %10, metadata !1305, metadata !DIExpression()), !dbg !2653
  %11 = load i32, i32* %8, align 4, !dbg !2654, !tbaa !790
  %12 = lshr i32 %11, %10, !dbg !2655
  %13 = and i32 %12, 1, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %13, metadata !1306, metadata !DIExpression()), !dbg !2657
  %14 = xor i32 %13, 1, !dbg !2658
  %15 = shl i32 %14, %10, !dbg !2659
  %16 = xor i32 %15, %11, !dbg !2660
  store i32 %16, i32* %8, align 4, !dbg !2660, !tbaa !790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2643
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2661
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2662
  ret i8* %17, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2664 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8 %1, metadata !2669, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8* %0, metadata !2633, metadata !DIExpression()) #11, !dbg !2672
  call void @llvm.dbg.value(metadata i64 -1, metadata !2634, metadata !DIExpression()) #11, !dbg !2674
  call void @llvm.dbg.value(metadata i8 %1, metadata !2635, metadata !DIExpression()) #11, !dbg !2675
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2677, !tbaa.struct !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2636, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1298, metadata !DIExpression()) #11, !dbg !2679
  call void @llvm.dbg.value(metadata i8 %1, metadata !1299, metadata !DIExpression()) #11, !dbg !2681
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()) #11, !dbg !2682
  call void @llvm.dbg.value(metadata i8 %1, metadata !1301, metadata !DIExpression()) #11, !dbg !2683
  %5 = lshr i8 %1, 5, !dbg !2684
  %6 = zext i8 %5 to i64, !dbg !2684
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2685
  call void @llvm.dbg.value(metadata i32* %7, metadata !1303, metadata !DIExpression()) #11, !dbg !2686
  %8 = and i8 %1, 31, !dbg !2687
  %9 = zext i8 %8 to i32, !dbg !2687
  call void @llvm.dbg.value(metadata i32 %9, metadata !1305, metadata !DIExpression()) #11, !dbg !2688
  %10 = load i32, i32* %7, align 4, !dbg !2689, !tbaa !790
  %11 = lshr i32 %10, %9, !dbg !2690
  %12 = and i32 %11, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i32 %12, metadata !1306, metadata !DIExpression()) #11, !dbg !2692
  %13 = xor i32 %12, 1, !dbg !2693
  %14 = shl i32 %13, %9, !dbg !2694
  %15 = xor i32 %14, %10, !dbg !2695
  store i32 %15, i32* %7, align 4, !dbg !2695, !tbaa !790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2636, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2678
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2696
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2697
  ret i8* %16, !dbg !2698
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2699 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()) #11, !dbg !2703
  call void @llvm.dbg.value(metadata i8 58, metadata !2669, metadata !DIExpression()) #11, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %0, metadata !2633, metadata !DIExpression()) #11, !dbg !2706
  call void @llvm.dbg.value(metadata i64 -1, metadata !2634, metadata !DIExpression()) #11, !dbg !2708
  call void @llvm.dbg.value(metadata i8 58, metadata !2635, metadata !DIExpression()) #11, !dbg !2709
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2711, !tbaa.struct !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2636, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1298, metadata !DIExpression()) #11, !dbg !2713
  call void @llvm.dbg.value(metadata i8 58, metadata !1299, metadata !DIExpression()) #11, !dbg !2715
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()) #11, !dbg !2716
  call void @llvm.dbg.value(metadata i8 58, metadata !1301, metadata !DIExpression()) #11, !dbg !2717
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2718
  call void @llvm.dbg.value(metadata i32* %4, metadata !1303, metadata !DIExpression()) #11, !dbg !2719
  call void @llvm.dbg.value(metadata i32 26, metadata !1305, metadata !DIExpression()) #11, !dbg !2720
  %5 = load i32, i32* %4, align 4, !dbg !2721, !tbaa !790
  %6 = or i32 %5, 67108864, !dbg !2722
  store i32 %6, i32* %4, align 4, !dbg !2722, !tbaa !790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2636, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2712
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2724
  ret i8* %7, !dbg !2725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2726 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2728, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %1, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %0, metadata !2633, metadata !DIExpression()) #11, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %1, metadata !2634, metadata !DIExpression()) #11, !dbg !2734
  call void @llvm.dbg.value(metadata i8 58, metadata !2635, metadata !DIExpression()) #11, !dbg !2735
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2737, !tbaa.struct !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2636, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1298, metadata !DIExpression()) #11, !dbg !2739
  call void @llvm.dbg.value(metadata i8 58, metadata !1299, metadata !DIExpression()) #11, !dbg !2741
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()) #11, !dbg !2742
  call void @llvm.dbg.value(metadata i8 58, metadata !1301, metadata !DIExpression()) #11, !dbg !2743
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2744
  call void @llvm.dbg.value(metadata i32* %5, metadata !1303, metadata !DIExpression()) #11, !dbg !2745
  call void @llvm.dbg.value(metadata i32 26, metadata !1305, metadata !DIExpression()) #11, !dbg !2746
  %6 = load i32, i32* %5, align 4, !dbg !2747, !tbaa !790
  %7 = or i32 %6, 67108864, !dbg !2748
  store i32 %7, i32* %5, align 4, !dbg !2748, !tbaa !790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2636, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2738
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2749
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2750
  ret i8* %8, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2752 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2525, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2758
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %1, metadata !2755, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %2, metadata !2756, metadata !DIExpression()), !dbg !2762
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2763
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2764
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression()) #11, !dbg !2765
  call void @llvm.dbg.value(metadata i32 0, metadata !2525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2758
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2758, !alias.scope !2766
  %8 = icmp eq i32 %1, 10, !dbg !2769
  br i1 %8, label %9, label %10, !dbg !2770

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2771, !noalias !2766
  unreachable, !dbg !2771

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2758
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2764
  store i32 %1, i32* %11, align 8, !dbg !2764
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2764
  %13 = bitcast i32* %12 to i8*, !dbg !2764
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2764
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2757, metadata !DIExpression(DW_OP_deref)), !dbg !2772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1298, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 58, metadata !1299, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 1, metadata !1300, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8 58, metadata !1301, metadata !DIExpression()), !dbg !2777
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2778
  call void @llvm.dbg.value(metadata i32* %14, metadata !1303, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i32 26, metadata !1305, metadata !DIExpression()), !dbg !2780
  %15 = load i32, i32* %14, align 4, !dbg !2781, !tbaa !790
  %16 = or i32 %15, 67108864, !dbg !2782
  store i32 %16, i32* %14, align 4, !dbg !2782, !tbaa !790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2757, metadata !DIExpression(DW_OP_deref)), !dbg !2772
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2783
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2784
  ret i8* %17, !dbg !2785
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2786 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2790, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %1, metadata !2791, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %2, metadata !2792, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %3, metadata !2793, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %0, metadata !2798, metadata !DIExpression()) #11, !dbg !2808
  call void @llvm.dbg.value(metadata i8* %1, metadata !2803, metadata !DIExpression()) #11, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %2, metadata !2804, metadata !DIExpression()) #11, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %3, metadata !2805, metadata !DIExpression()) #11, !dbg !2812
  call void @llvm.dbg.value(metadata i64 -1, metadata !2806, metadata !DIExpression()) #11, !dbg !2813
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2814
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2815, !tbaa.struct !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2807, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2816
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()) #11, !dbg !2817
  call void @llvm.dbg.value(metadata i8* %1, metadata !1348, metadata !DIExpression()) #11, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %2, metadata !1349, metadata !DIExpression()) #11, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()) #11, !dbg !2817
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2821
  store i32 10, i32* %7, align 8, !dbg !2822, !tbaa !1279
  %8 = icmp ne i8* %1, null, !dbg !2823
  %9 = icmp ne i8* %2, null, !dbg !2824
  %10 = and i1 %8, %9, !dbg !2825
  br i1 %10, label %12, label %11, !dbg !2825

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2826
  unreachable, !dbg !2826

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2827
  store i8* %1, i8** %13, align 8, !dbg !2828, !tbaa !1365
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2829
  store i8* %2, i8** %14, align 8, !dbg !2830, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2807, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2816
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2831
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2832
  ret i8* %15, !dbg !2833
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2799 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2798, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %1, metadata !2803, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8* %2, metadata !2804, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %3, metadata !2805, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 %4, metadata !2806, metadata !DIExpression()), !dbg !2838
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2839
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2840, !tbaa.struct !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2807, metadata !DIExpression(DW_OP_deref)), !dbg !2841
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1347, metadata !DIExpression()) #11, !dbg !2842
  call void @llvm.dbg.value(metadata i8* %1, metadata !1348, metadata !DIExpression()) #11, !dbg !2844
  call void @llvm.dbg.value(metadata i8* %2, metadata !1349, metadata !DIExpression()) #11, !dbg !2845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1347, metadata !DIExpression()) #11, !dbg !2842
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2846
  store i32 10, i32* %8, align 8, !dbg !2847, !tbaa !1279
  %9 = icmp ne i8* %1, null, !dbg !2848
  %10 = icmp ne i8* %2, null, !dbg !2849
  %11 = and i1 %9, %10, !dbg !2850
  br i1 %11, label %13, label %12, !dbg !2850

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2851
  unreachable, !dbg !2851

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2852
  store i8* %1, i8** %14, align 8, !dbg !2853, !tbaa !1365
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2854
  store i8* %2, i8** %15, align 8, !dbg !2855, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2807, metadata !DIExpression(DW_OP_deref)), !dbg !2841
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2856
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2857
  ret i8* %16, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2859 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2863, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %1, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %2, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()) #11, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %0, metadata !2791, metadata !DIExpression()) #11, !dbg !2871
  call void @llvm.dbg.value(metadata i8* %1, metadata !2792, metadata !DIExpression()) #11, !dbg !2872
  call void @llvm.dbg.value(metadata i8* %2, metadata !2793, metadata !DIExpression()) #11, !dbg !2873
  call void @llvm.dbg.value(metadata i32 0, metadata !2798, metadata !DIExpression()) #11, !dbg !2874
  call void @llvm.dbg.value(metadata i8* %0, metadata !2803, metadata !DIExpression()) #11, !dbg !2876
  call void @llvm.dbg.value(metadata i8* %1, metadata !2804, metadata !DIExpression()) #11, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %2, metadata !2805, metadata !DIExpression()) #11, !dbg !2878
  call void @llvm.dbg.value(metadata i64 -1, metadata !2806, metadata !DIExpression()) #11, !dbg !2879
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2880
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2881, !tbaa.struct !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2807, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1347, metadata !DIExpression()) #11, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %0, metadata !1348, metadata !DIExpression()) #11, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %1, metadata !1349, metadata !DIExpression()) #11, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1347, metadata !DIExpression()) #11, !dbg !2883
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2887
  store i32 10, i32* %6, align 8, !dbg !2888, !tbaa !1279
  %7 = icmp ne i8* %0, null, !dbg !2889
  %8 = icmp ne i8* %1, null, !dbg !2890
  %9 = and i1 %7, %8, !dbg !2891
  br i1 %9, label %11, label %10, !dbg !2891

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2892
  unreachable, !dbg !2892

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2893
  store i8* %0, i8** %12, align 8, !dbg !2894, !tbaa !1365
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2895
  store i8* %1, i8** %13, align 8, !dbg !2896, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2807, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2882
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2897
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2898
  ret i8* %14, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2900 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2904, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* %1, metadata !2905, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8* %2, metadata !2906, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %3, metadata !2907, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i32 0, metadata !2798, metadata !DIExpression()) #11, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !2803, metadata !DIExpression()) #11, !dbg !2914
  call void @llvm.dbg.value(metadata i8* %1, metadata !2804, metadata !DIExpression()) #11, !dbg !2915
  call void @llvm.dbg.value(metadata i8* %2, metadata !2805, metadata !DIExpression()) #11, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %3, metadata !2806, metadata !DIExpression()) #11, !dbg !2917
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2918
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2918
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2919, !tbaa.struct !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2807, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()) #11, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %0, metadata !1348, metadata !DIExpression()) #11, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %1, metadata !1349, metadata !DIExpression()) #11, !dbg !2924
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1347, metadata !DIExpression()) #11, !dbg !2921
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2925
  store i32 10, i32* %7, align 8, !dbg !2926, !tbaa !1279
  %8 = icmp ne i8* %0, null, !dbg !2927
  %9 = icmp ne i8* %1, null, !dbg !2928
  %10 = and i1 %8, %9, !dbg !2929
  br i1 %10, label %12, label %11, !dbg !2929

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2930
  unreachable, !dbg !2930

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2931
  store i8* %0, i8** %13, align 8, !dbg !2932, !tbaa !1365
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2933
  store i8* %1, i8** %14, align 8, !dbg !2934, !tbaa !1368
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2807, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2920
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2935
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2936
  ret i8* %15, !dbg !2937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %1, metadata !2943, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i64 %2, metadata !2944, metadata !DIExpression()), !dbg !2947
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2948
  ret i8* %4, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2950 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 0, metadata !2942, metadata !DIExpression()) #11, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #11, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()) #11, !dbg !2961
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2962
  ret i8* %3, !dbg !2963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2968, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %1, metadata !2969, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()) #11, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %1, metadata !2943, metadata !DIExpression()) #11, !dbg !2974
  call void @llvm.dbg.value(metadata i64 -1, metadata !2944, metadata !DIExpression()) #11, !dbg !2975
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2976
  ret i8* %3, !dbg !2977
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2978 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 0, metadata !2968, metadata !DIExpression()) #11, !dbg !2984
  call void @llvm.dbg.value(metadata i8* %0, metadata !2969, metadata !DIExpression()) #11, !dbg !2986
  call void @llvm.dbg.value(metadata i32 0, metadata !2942, metadata !DIExpression()) #11, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #11, !dbg !2989
  call void @llvm.dbg.value(metadata i64 -1, metadata !2944, metadata !DIExpression()) #11, !dbg !2990
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2991
  ret i8* %2, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2993 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3032, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8* %1, metadata !3033, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i8* %2, metadata !3034, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i8* %3, metadata !3035, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8** %4, metadata !3036, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %5, metadata !3037, metadata !DIExpression()), !dbg !3043
  %7 = icmp eq i8* %1, null, !dbg !3044
  br i1 %7, label %10, label %8, !dbg !3046

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3047
  br label %12, !dbg !3047

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3048
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.93, i64 0, i64 0), i32 5) #11, !dbg !3049
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3049
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.94, i64 0, i64 0), i32 5) #11, !dbg !3050
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3050
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ], !dbg !3051

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3052
  unreachable, !dbg !3052

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #11, !dbg !3054
  %20 = load i8*, i8** %4, align 8, !dbg !3054, !tbaa !692
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3054
  br label %146, !dbg !3055

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.96, i64 0, i64 0), i32 5) #11, !dbg !3056
  %24 = load i8*, i8** %4, align 8, !dbg !3056, !tbaa !692
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3056
  %26 = load i8*, i8** %25, align 8, !dbg !3056, !tbaa !692
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3056
  br label %146, !dbg !3057

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.97, i64 0, i64 0), i32 5) #11, !dbg !3058
  %30 = load i8*, i8** %4, align 8, !dbg !3058, !tbaa !692
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3058
  %32 = load i8*, i8** %31, align 8, !dbg !3058, !tbaa !692
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3058
  %34 = load i8*, i8** %33, align 8, !dbg !3058, !tbaa !692
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3058
  br label %146, !dbg !3059

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.98, i64 0, i64 0), i32 5) #11, !dbg !3060
  %38 = load i8*, i8** %4, align 8, !dbg !3060, !tbaa !692
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3060
  %40 = load i8*, i8** %39, align 8, !dbg !3060, !tbaa !692
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3060
  %42 = load i8*, i8** %41, align 8, !dbg !3060, !tbaa !692
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3060
  %44 = load i8*, i8** %43, align 8, !dbg !3060, !tbaa !692
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3060
  br label %146, !dbg !3061

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.99, i64 0, i64 0), i32 5) #11, !dbg !3062
  %48 = load i8*, i8** %4, align 8, !dbg !3062, !tbaa !692
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3062
  %50 = load i8*, i8** %49, align 8, !dbg !3062, !tbaa !692
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3062
  %52 = load i8*, i8** %51, align 8, !dbg !3062, !tbaa !692
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3062
  %54 = load i8*, i8** %53, align 8, !dbg !3062, !tbaa !692
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3062
  %56 = load i8*, i8** %55, align 8, !dbg !3062, !tbaa !692
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3062
  br label %146, !dbg !3063

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.100, i64 0, i64 0), i32 5) #11, !dbg !3064
  %60 = load i8*, i8** %4, align 8, !dbg !3064, !tbaa !692
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3064
  %62 = load i8*, i8** %61, align 8, !dbg !3064, !tbaa !692
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3064
  %64 = load i8*, i8** %63, align 8, !dbg !3064, !tbaa !692
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3064
  %66 = load i8*, i8** %65, align 8, !dbg !3064, !tbaa !692
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3064
  %68 = load i8*, i8** %67, align 8, !dbg !3064, !tbaa !692
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3064
  %70 = load i8*, i8** %69, align 8, !dbg !3064, !tbaa !692
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3064
  br label %146, !dbg !3065

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.101, i64 0, i64 0), i32 5) #11, !dbg !3066
  %74 = load i8*, i8** %4, align 8, !dbg !3066, !tbaa !692
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3066
  %76 = load i8*, i8** %75, align 8, !dbg !3066, !tbaa !692
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3066
  %78 = load i8*, i8** %77, align 8, !dbg !3066, !tbaa !692
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3066
  %80 = load i8*, i8** %79, align 8, !dbg !3066, !tbaa !692
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3066
  %82 = load i8*, i8** %81, align 8, !dbg !3066, !tbaa !692
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3066
  %84 = load i8*, i8** %83, align 8, !dbg !3066, !tbaa !692
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3066
  %86 = load i8*, i8** %85, align 8, !dbg !3066, !tbaa !692
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3066
  br label %146, !dbg !3067

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.102, i64 0, i64 0), i32 5) #11, !dbg !3068
  %90 = load i8*, i8** %4, align 8, !dbg !3068, !tbaa !692
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3068
  %92 = load i8*, i8** %91, align 8, !dbg !3068, !tbaa !692
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3068
  %94 = load i8*, i8** %93, align 8, !dbg !3068, !tbaa !692
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3068
  %96 = load i8*, i8** %95, align 8, !dbg !3068, !tbaa !692
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3068
  %98 = load i8*, i8** %97, align 8, !dbg !3068, !tbaa !692
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3068
  %100 = load i8*, i8** %99, align 8, !dbg !3068, !tbaa !692
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3068
  %102 = load i8*, i8** %101, align 8, !dbg !3068, !tbaa !692
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3068
  %104 = load i8*, i8** %103, align 8, !dbg !3068, !tbaa !692
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3068
  br label %146, !dbg !3069

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.103, i64 0, i64 0), i32 5) #11, !dbg !3070
  %108 = load i8*, i8** %4, align 8, !dbg !3070, !tbaa !692
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3070
  %110 = load i8*, i8** %109, align 8, !dbg !3070, !tbaa !692
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3070
  %112 = load i8*, i8** %111, align 8, !dbg !3070, !tbaa !692
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3070
  %114 = load i8*, i8** %113, align 8, !dbg !3070, !tbaa !692
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3070
  %116 = load i8*, i8** %115, align 8, !dbg !3070, !tbaa !692
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3070
  %118 = load i8*, i8** %117, align 8, !dbg !3070, !tbaa !692
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3070
  %120 = load i8*, i8** %119, align 8, !dbg !3070, !tbaa !692
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3070
  %122 = load i8*, i8** %121, align 8, !dbg !3070, !tbaa !692
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3070
  %124 = load i8*, i8** %123, align 8, !dbg !3070, !tbaa !692
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3070
  br label %146, !dbg !3071

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.104, i64 0, i64 0), i32 5) #11, !dbg !3072
  %128 = load i8*, i8** %4, align 8, !dbg !3072, !tbaa !692
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3072
  %130 = load i8*, i8** %129, align 8, !dbg !3072, !tbaa !692
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3072
  %132 = load i8*, i8** %131, align 8, !dbg !3072, !tbaa !692
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3072
  %134 = load i8*, i8** %133, align 8, !dbg !3072, !tbaa !692
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3072
  %136 = load i8*, i8** %135, align 8, !dbg !3072, !tbaa !692
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3072
  %138 = load i8*, i8** %137, align 8, !dbg !3072, !tbaa !692
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3072
  %140 = load i8*, i8** %139, align 8, !dbg !3072, !tbaa !692
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3072
  %142 = load i8*, i8** %141, align 8, !dbg !3072, !tbaa !692
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3072
  %144 = load i8*, i8** %143, align 8, !dbg !3072, !tbaa !692
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3072
  br label %146, !dbg !3073

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3074
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3075 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3079, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8* %1, metadata !3080, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8* %2, metadata !3081, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8* %3, metadata !3082, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8** %4, metadata !3083, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 0, metadata !3084, metadata !DIExpression()), !dbg !3090
  br label %6, !dbg !3091

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3093
  call void @llvm.dbg.value(metadata i64 %7, metadata !3084, metadata !DIExpression()), !dbg !3090
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3095
  %9 = load i8*, i8** %8, align 8, !dbg !3095, !tbaa !692
  %10 = icmp eq i8* %9, null, !dbg !3096
  %11 = add i64 %7, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %11, metadata !3084, metadata !DIExpression()), !dbg !3090
  br i1 %10, label %12, label %6, !dbg !3096, !llvm.loop !3098

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3084, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %7, metadata !3084, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %7, metadata !3084, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %7, metadata !3084, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %7, metadata !3084, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %7, metadata !3084, metadata !DIExpression()), !dbg !3090
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3100
  ret void, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3102 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3113, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %1, metadata !3114, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %2, metadata !3115, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8* %3, metadata !3116, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3117, metadata !DIExpression()), !dbg !3125
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3126
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3119, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 0, metadata !3118, metadata !DIExpression()), !dbg !3128
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3118, metadata !DIExpression()), !dbg !3128
  %11 = load i32, i32* %8, align 8, !dbg !3129
  %12 = icmp ult i32 %11, 41, !dbg !3129
  br i1 %12, label %13, label %18, !dbg !3129

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3129
  %15 = sext i32 %11 to i64, !dbg !3129
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3129
  %17 = add i32 %11, 8, !dbg !3129
  store i32 %17, i32* %8, align 8, !dbg !3129
  br label %21, !dbg !3129

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3129
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3129
  store i8* %20, i8** %10, align 8, !dbg !3129
  br label %21, !dbg !3129

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3129
  %25 = load i8*, i8** %24, align 8, !dbg !3129
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3132
  store i8* %25, i8** %26, align 16, !dbg !3133, !tbaa !692
  %27 = icmp eq i8* %25, null, !dbg !3134
  br i1 %27, label %30, label %28, !dbg !3135

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 1, metadata !3118, metadata !DIExpression()), !dbg !3128
  %29 = icmp ult i32 %22, 41, !dbg !3129
  br i1 %29, label %35, label %32, !dbg !3129

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3136
  call void @llvm.dbg.value(metadata i64 %31, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %31, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3137
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3138
  ret void, !dbg !3138

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3129
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3129
  store i8* %34, i8** %10, align 8, !dbg !3129
  br label %40, !dbg !3129

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3129
  %37 = sext i32 %22 to i64, !dbg !3129
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3129
  %39 = add i32 %22, 8, !dbg !3129
  store i32 %39, i32* %8, align 8, !dbg !3129
  br label %40, !dbg !3129

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3129
  %44 = load i8*, i8** %43, align 8, !dbg !3129
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3132
  store i8* %44, i8** %45, align 8, !dbg !3133, !tbaa !692
  %46 = icmp eq i8* %44, null, !dbg !3134
  br i1 %46, label %30, label %47, !dbg !3135

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 2, metadata !3118, metadata !DIExpression()), !dbg !3128
  %48 = icmp ult i32 %41, 41, !dbg !3129
  br i1 %48, label %52, label %49, !dbg !3129

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3129
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3129
  store i8* %51, i8** %10, align 8, !dbg !3129
  br label %57, !dbg !3129

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3129
  %54 = sext i32 %41 to i64, !dbg !3129
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3129
  %56 = add i32 %41, 8, !dbg !3129
  store i32 %56, i32* %8, align 8, !dbg !3129
  br label %57, !dbg !3129

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3129
  %61 = load i8*, i8** %60, align 8, !dbg !3129
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3132
  store i8* %61, i8** %62, align 16, !dbg !3133, !tbaa !692
  %63 = icmp eq i8* %61, null, !dbg !3134
  br i1 %63, label %30, label %64, !dbg !3135

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 3, metadata !3118, metadata !DIExpression()), !dbg !3128
  %65 = icmp ult i32 %58, 41, !dbg !3129
  br i1 %65, label %69, label %66, !dbg !3129

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3129
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3129
  store i8* %68, i8** %10, align 8, !dbg !3129
  br label %74, !dbg !3129

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3129
  %71 = sext i32 %58 to i64, !dbg !3129
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3129
  %73 = add i32 %58, 8, !dbg !3129
  store i32 %73, i32* %8, align 8, !dbg !3129
  br label %74, !dbg !3129

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3129
  %78 = load i8*, i8** %77, align 8, !dbg !3129
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3132
  store i8* %78, i8** %79, align 8, !dbg !3133, !tbaa !692
  %80 = icmp eq i8* %78, null, !dbg !3134
  br i1 %80, label %30, label %81, !dbg !3135

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 4, metadata !3118, metadata !DIExpression()), !dbg !3128
  %82 = icmp ult i32 %75, 41, !dbg !3129
  br i1 %82, label %86, label %83, !dbg !3129

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3129
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3129
  store i8* %85, i8** %10, align 8, !dbg !3129
  br label %91, !dbg !3129

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3129
  %88 = sext i32 %75 to i64, !dbg !3129
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3129
  %90 = add i32 %75, 8, !dbg !3129
  store i32 %90, i32* %8, align 8, !dbg !3129
  br label %91, !dbg !3129

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3129
  %95 = load i8*, i8** %94, align 8, !dbg !3129
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3132
  store i8* %95, i8** %96, align 16, !dbg !3133, !tbaa !692
  %97 = icmp eq i8* %95, null, !dbg !3134
  br i1 %97, label %30, label %98, !dbg !3135

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 5, metadata !3118, metadata !DIExpression()), !dbg !3128
  %99 = icmp ult i32 %92, 41, !dbg !3129
  br i1 %99, label %103, label %100, !dbg !3129

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3129
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3129
  store i8* %102, i8** %10, align 8, !dbg !3129
  br label %108, !dbg !3129

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3129
  %105 = sext i32 %92 to i64, !dbg !3129
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3129
  %107 = add i32 %92, 8, !dbg !3129
  store i32 %107, i32* %8, align 8, !dbg !3129
  br label %108, !dbg !3129

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3129
  %111 = load i8*, i8** %110, align 8, !dbg !3129
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3132
  store i8* %111, i8** %112, align 8, !dbg !3133, !tbaa !692
  %113 = icmp eq i8* %111, null, !dbg !3134
  br i1 %113, label %30, label %114, !dbg !3135

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 6, metadata !3118, metadata !DIExpression()), !dbg !3128
  %115 = load i8*, i8** %10, align 8, !dbg !3129
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3129
  store i8* %116, i8** %10, align 8, !dbg !3129
  %117 = bitcast i8* %115 to i8**, !dbg !3129
  %118 = load i8*, i8** %117, align 8, !dbg !3129
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3132
  store i8* %118, i8** %119, align 16, !dbg !3133, !tbaa !692
  %120 = icmp eq i8* %118, null, !dbg !3134
  br i1 %120, label %30, label %121, !dbg !3135

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 7, metadata !3118, metadata !DIExpression()), !dbg !3128
  %122 = load i8*, i8** %10, align 8, !dbg !3129
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3129
  store i8* %123, i8** %10, align 8, !dbg !3129
  %124 = bitcast i8* %122 to i8**, !dbg !3129
  %125 = load i8*, i8** %124, align 8, !dbg !3129
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3132
  store i8* %125, i8** %126, align 8, !dbg !3133, !tbaa !692
  %127 = icmp eq i8* %125, null, !dbg !3134
  br i1 %127, label %30, label %128, !dbg !3135

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 8, metadata !3118, metadata !DIExpression()), !dbg !3128
  %129 = load i8*, i8** %10, align 8, !dbg !3129
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3129
  store i8* %130, i8** %10, align 8, !dbg !3129
  %131 = bitcast i8* %129 to i8**, !dbg !3129
  %132 = load i8*, i8** %131, align 8, !dbg !3129
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3132
  store i8* %132, i8** %133, align 16, !dbg !3133, !tbaa !692
  %134 = icmp eq i8* %132, null, !dbg !3134
  br i1 %134, label %30, label %135, !dbg !3135

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3118, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 9, metadata !3118, metadata !DIExpression()), !dbg !3128
  %136 = load i8*, i8** %10, align 8, !dbg !3129
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3129
  store i8* %137, i8** %10, align 8, !dbg !3129
  %138 = bitcast i8* %136 to i8**, !dbg !3129
  %139 = load i8*, i8** %138, align 8, !dbg !3129
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3132
  store i8* %139, i8** %140, align 8, !dbg !3133, !tbaa !692
  %141 = icmp eq i8* %139, null, !dbg !3134
  %142 = select i1 %141, i64 9, i64 10, !dbg !3135
  br label %30, !dbg !3135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3139 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3143, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i8* %1, metadata !3144, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %2, metadata !3145, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8* %3, metadata !3146, metadata !DIExpression()), !dbg !3155
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3156
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3156
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3147, metadata !DIExpression()), !dbg !3157
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3158
  call void @llvm.va_start(i8* nonnull %6), !dbg !3158
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3159
  call void @llvm.va_end(i8* nonnull %6), !dbg !3160
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3161
  ret void, !dbg !3161
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3162 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #11, !dbg !3163
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.108, i64 0, i64 0)) #11, !dbg !3163
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.109, i64 0, i64 0), i32 5) #11, !dbg !3164
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.111, i64 0, i64 0)) #11, !dbg !3164
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.112, i64 0, i64 0), i32 5) #11, !dbg !3165
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3165, !tbaa !692
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3165
  ret void, !dbg !3166
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3167 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3171, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3172, metadata !DIExpression()), !dbg !3174
  %3 = udiv i64 9223372036854775807, %1, !dbg !3175
  %4 = icmp ult i64 %3, %0, !dbg !3175
  br i1 %4, label %5, label %6, !dbg !3177

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3178
  unreachable, !dbg !3178

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %7, metadata !3180, metadata !DIExpression()) #11, !dbg !3187
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3189
  call void @llvm.dbg.value(metadata i8* %8, metadata !3186, metadata !DIExpression()) #11, !dbg !3190
  %9 = icmp eq i8* %8, null, !dbg !3191
  %10 = icmp ne i64 %7, 0, !dbg !3193
  %11 = and i1 %10, %9, !dbg !3194
  br i1 %11, label %12, label %13, !dbg !3194

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3195
  unreachable, !dbg !3195

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3181 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()), !dbg !3197
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %2, metadata !3186, metadata !DIExpression()), !dbg !3199
  %3 = icmp eq i8* %2, null, !dbg !3200
  %4 = icmp ne i64 %0, 0, !dbg !3201
  %5 = and i1 %4, %3, !dbg !3202
  br i1 %5, label %6, label %7, !dbg !3202

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3203
  unreachable, !dbg !3203

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3204
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3209, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3210, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %2, metadata !3211, metadata !DIExpression()), !dbg !3214
  %4 = udiv i64 9223372036854775807, %2, !dbg !3215
  %5 = icmp ult i64 %4, %1, !dbg !3215
  br i1 %5, label %6, label %7, !dbg !3217

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3218
  unreachable, !dbg !3218

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()) #11, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %8, metadata !3225, metadata !DIExpression()) #11, !dbg !3228
  %9 = icmp eq i64 %8, 0, !dbg !3229
  %10 = icmp ne i8* %0, null, !dbg !3231
  %11 = and i1 %10, %9, !dbg !3232
  br i1 %11, label %12, label %13, !dbg !3232

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3233
  br label %19, !dbg !3235

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %14, metadata !3220, metadata !DIExpression()) #11, !dbg !3226
  %15 = icmp eq i8* %14, null, !dbg !3237
  %16 = icmp ne i64 %8, 0, !dbg !3239
  %17 = and i1 %16, %15, !dbg !3240
  br i1 %17, label %18, label %19, !dbg !3240

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3241
  unreachable, !dbg !3241

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3242
  ret i8* %20, !dbg !3243
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3221 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()), !dbg !3245
  %3 = icmp eq i64 %1, 0, !dbg !3246
  %4 = icmp ne i8* %0, null, !dbg !3247
  %5 = and i1 %4, %3, !dbg !3248
  br i1 %5, label %6, label %7, !dbg !3248

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3249
  br label %13, !dbg !3250

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %8, metadata !3220, metadata !DIExpression()), !dbg !3244
  %9 = icmp eq i8* %8, null, !dbg !3252
  %10 = icmp ne i64 %1, 0, !dbg !3253
  %11 = and i1 %10, %9, !dbg !3254
  br i1 %11, label %12, label %13, !dbg !3254

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3255
  unreachable, !dbg !3255

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3256
  ret i8* %14, !dbg !3257
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !235 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64* %1, metadata !241, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %2, metadata !242, metadata !DIExpression()), !dbg !3260
  %4 = load i64, i64* %1, align 8, !dbg !3261, !tbaa !2322
  call void @llvm.dbg.value(metadata i64 %4, metadata !243, metadata !DIExpression()), !dbg !3262
  %5 = icmp eq i8* %0, null, !dbg !3263
  br i1 %5, label %6, label %20, !dbg !3265

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3266
  br i1 %7, label %8, label %13, !dbg !3269

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %9, metadata !243, metadata !DIExpression()), !dbg !3262
  %10 = icmp ugt i64 %2, 128, !dbg !3272
  %11 = zext i1 %10 to i64, !dbg !3272
  %12 = add nuw nsw i64 %9, %11, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %12, metadata !243, metadata !DIExpression()), !dbg !3262
  br label %13, !dbg !3274

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3275
  call void @llvm.dbg.value(metadata i64 %14, metadata !243, metadata !DIExpression()), !dbg !3262
  %15 = udiv i64 9223372036854775807, %2, !dbg !3276
  %16 = icmp ult i64 %15, %14, !dbg !3276
  br i1 %16, label %19, label %17, !dbg !3278

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !3262
  store i64 %14, i64* %1, align 8, !dbg !3279, !tbaa !2322
  %18 = mul i64 %14, %2, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()) #11, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %28, metadata !3225, metadata !DIExpression()) #11, !dbg !3283
  br label %31, !dbg !3284

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3285
  unreachable, !dbg !3285

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3286
  %22 = icmp ugt i64 %21, %4, !dbg !3289
  br i1 %22, label %24, label %23, !dbg !3290

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3291
  unreachable, !dbg !3291

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3292
  %26 = add i64 %4, 1, !dbg !3293
  %27 = add i64 %26, %25, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !3262
  store i64 %27, i64* %1, align 8, !dbg !3279, !tbaa !2322
  %28 = mul i64 %27, %2, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()) #11, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %28, metadata !3225, metadata !DIExpression()) #11, !dbg !3283
  %29 = icmp eq i64 %28, 0, !dbg !3295
  br i1 %29, label %30, label %31, !dbg !3284

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3296
  br label %38, !dbg !3297

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %33, metadata !3220, metadata !DIExpression()) #11, !dbg !3281
  %34 = icmp eq i8* %33, null, !dbg !3299
  %35 = icmp ne i64 %32, 0, !dbg !3300
  %36 = and i1 %35, %34, !dbg !3301
  br i1 %36, label %37, label %38, !dbg !3301

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3302
  unreachable, !dbg !3302

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3303
  ret i8* %39, !dbg !3304
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3305 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()) #11, !dbg !3309
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %2, metadata !3186, metadata !DIExpression()) #11, !dbg !3312
  %3 = icmp eq i8* %2, null, !dbg !3313
  %4 = icmp ne i64 %0, 0, !dbg !3314
  %5 = and i1 %4, %3, !dbg !3315
  br i1 %5, label %6, label %7, !dbg !3315

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3316
  unreachable, !dbg !3316

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3317
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3318 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64* %1, metadata !3323, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()) #11, !dbg !3326
  call void @llvm.dbg.value(metadata i64* %1, metadata !241, metadata !DIExpression()) #11, !dbg !3328
  call void @llvm.dbg.value(metadata i64 1, metadata !242, metadata !DIExpression()) #11, !dbg !3329
  %3 = load i64, i64* %1, align 8, !dbg !3330, !tbaa !2322
  call void @llvm.dbg.value(metadata i64 %3, metadata !243, metadata !DIExpression()) #11, !dbg !3331
  %4 = icmp eq i8* %0, null, !dbg !3332
  br i1 %4, label %5, label %12, !dbg !3333

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3334
  br i1 %6, label %9, label %7, !dbg !3335

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !243, metadata !DIExpression()) #11, !dbg !3331
  %8 = icmp slt i64 %3, 0, !dbg !3336
  br i1 %8, label %11, label %9, !dbg !3337

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #11, !dbg !3331
  store i64 %10, i64* %1, align 8, !dbg !3338, !tbaa !2322
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()) #11, !dbg !3339
  call void @llvm.dbg.value(metadata i64 %18, metadata !3225, metadata !DIExpression()) #11, !dbg !3341
  br label %21, !dbg !3342

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3343
  unreachable, !dbg !3343

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3344
  br i1 %13, label %15, label %14, !dbg !3345

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3346
  unreachable, !dbg !3346

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3347
  %17 = add i64 %3, 1, !dbg !3348
  %18 = add i64 %17, %16, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #11, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #11, !dbg !3331
  store i64 %18, i64* %1, align 8, !dbg !3338, !tbaa !2322
  call void @llvm.dbg.value(metadata i8* %0, metadata !3220, metadata !DIExpression()) #11, !dbg !3339
  call void @llvm.dbg.value(metadata i64 %18, metadata !3225, metadata !DIExpression()) #11, !dbg !3341
  %19 = icmp eq i64 %18, 0, !dbg !3350
  br i1 %19, label %20, label %21, !dbg !3342

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3351
  br label %28, !dbg !3352

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %23, metadata !3220, metadata !DIExpression()) #11, !dbg !3339
  %24 = icmp eq i8* %23, null, !dbg !3354
  %25 = icmp ne i64 %22, 0, !dbg !3355
  %26 = and i1 %25, %24, !dbg !3356
  br i1 %26, label %27, label %28, !dbg !3356

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3357
  unreachable, !dbg !3357

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3358
  ret i8* %29, !dbg !3359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3360 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %0, metadata !3180, metadata !DIExpression()) #11, !dbg !3364
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %2, metadata !3186, metadata !DIExpression()) #11, !dbg !3367
  %3 = icmp eq i8* %2, null, !dbg !3368
  %4 = icmp ne i64 %0, 0, !dbg !3369
  %5 = and i1 %4, %3, !dbg !3370
  br i1 %5, label %6, label %7, !dbg !3370

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3371
  unreachable, !dbg !3371

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3372
  ret i8* %2, !dbg !3373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3374 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %1, metadata !3377, metadata !DIExpression()), !dbg !3380
  %3 = udiv i64 9223372036854775807, %1, !dbg !3381
  %4 = icmp ult i64 %3, %0, !dbg !3381
  br i1 %4, label %8, label %5, !dbg !3383

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3384
  call void @llvm.dbg.value(metadata i8* %6, metadata !3378, metadata !DIExpression()), !dbg !3385
  %7 = icmp eq i8* %6, null, !dbg !3386
  br i1 %7, label %8, label %9, !dbg !3387

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3388
  unreachable, !dbg !3388

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3389
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3390 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3394, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %1, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %1, metadata !3180, metadata !DIExpression()) #11, !dbg !3398
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %3, metadata !3186, metadata !DIExpression()) #11, !dbg !3401
  %4 = icmp eq i8* %3, null, !dbg !3402
  %5 = icmp ne i64 %1, 0, !dbg !3403
  %6 = and i1 %5, %4, !dbg !3404
  br i1 %6, label %7, label %8, !dbg !3404

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3405
  unreachable, !dbg !3405

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3406
  ret i8* %3, !dbg !3407
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3410, metadata !DIExpression()), !dbg !3411
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3412
  %3 = add i64 %2, 1, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %0, metadata !3394, metadata !DIExpression()) #11, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %3, metadata !3395, metadata !DIExpression()) #11, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %3, metadata !3180, metadata !DIExpression()) #11, !dbg !3417
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %4, metadata !3186, metadata !DIExpression()) #11, !dbg !3420
  %5 = icmp eq i8* %4, null, !dbg !3421
  %6 = icmp ne i64 %3, 0, !dbg !3422
  %7 = and i1 %6, %5, !dbg !3423
  br i1 %7, label %8, label %9, !dbg !3423

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3424
  unreachable, !dbg !3424

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !3425
  ret i8* %4, !dbg !3426
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3427 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3429, !tbaa !790
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.123, i64 0, i64 0), i32 5) #11, !dbg !3430
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i64 0, i64 0), i8* %2) #11, !dbg !3431
  tail call void @abort() #15, !dbg !3432
  unreachable, !dbg !3432
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3433 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3436, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %1, metadata !3437, metadata !DIExpression()), !dbg !3443
  %3 = icmp eq i64 %0, 0, !dbg !3444
  %4 = icmp eq i64 %1, 0, !dbg !3445
  %5 = or i1 %3, %4, !dbg !3446
  br i1 %5, label %12, label %6, !dbg !3446

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %7, metadata !3439, metadata !DIExpression()), !dbg !3448
  %8 = udiv i64 %7, %1, !dbg !3449
  %9 = icmp eq i64 %8, %0, !dbg !3451
  br i1 %9, label %12, label %10, !dbg !3452

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3453
  store i32 12, i32* %11, align 4, !dbg !3455, !tbaa !790
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3436, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %13, metadata !3437, metadata !DIExpression()), !dbg !3443
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3456
  call void @llvm.dbg.value(metadata i8* %15, metadata !3438, metadata !DIExpression()), !dbg !3457
  br label %16, !dbg !3458

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3459
  ret i8* %17, !dbg !3460
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #7 !dbg !183 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !191, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %1, metadata !192, metadata !DIExpression()), !dbg !3462
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3463
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #11, !dbg !3463
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !193, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 -1, metadata !204, metadata !DIExpression()), !dbg !3465
  call void @llvm.va_start(i8* nonnull %4), !dbg !3466
  %5 = icmp eq i32 %1, 1030, !dbg !3467
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3468
  %7 = load i32, i32* %6, align 16, !dbg !3468
  %8 = icmp ult i32 %7, 41, !dbg !3468
  br i1 %5, label %9, label %58, !dbg !3467

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !3469

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3469
  %12 = load i8*, i8** %11, align 16, !dbg !3469
  %13 = sext i32 %7 to i64, !dbg !3469
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !3469
  %15 = add i32 %7, 8, !dbg !3469
  store i32 %15, i32* %6, align 16, !dbg !3469
  br label %20, !dbg !3469

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3469
  %18 = load i8*, i8** %17, align 8, !dbg !3469
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !3469
  store i8* %19, i8** %17, align 8, !dbg !3469
  br label %20, !dbg !3469

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !3469
  %23 = load i32, i32* %22, align 4, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %23, metadata !205, metadata !DIExpression()), !dbg !3470
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3471, !tbaa !790
  %25 = icmp sgt i32 %24, -1, !dbg !3473
  br i1 %25, label %26, label %38, !dbg !3474

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %27, metadata !204, metadata !DIExpression()), !dbg !3465
  %28 = icmp sgt i32 %27, -1, !dbg !3477
  br i1 %28, label %33, label %29, !dbg !3479

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #17, !dbg !3480
  %31 = load i32, i32* %30, align 4, !dbg !3480, !tbaa !790
  %32 = icmp eq i32 %31, 22, !dbg !3481
  br i1 %32, label %34, label %33, !dbg !3482

; <label>:33:                                     ; preds = %26, %29
  store i32 1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3483, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %44, metadata !204, metadata !DIExpression()), !dbg !3465
  br label %74, !dbg !3485

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3486
  call void @llvm.dbg.value(metadata i32 %35, metadata !204, metadata !DIExpression()), !dbg !3465
  %36 = icmp slt i32 %35, 0, !dbg !3488
  br i1 %36, label %74, label %37, !dbg !3490

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3491, !tbaa !790
  br label %42

; <label>:38:                                     ; preds = %20
  %39 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %39, metadata !204, metadata !DIExpression()), !dbg !3465
  %40 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !3493
  %41 = icmp eq i32 %40, -1
  br label %42

; <label>:42:                                     ; preds = %37, %38
  %43 = phi i1 [ true, %37 ], [ %41, %38 ]
  %44 = phi i32 [ %35, %37 ], [ %39, %38 ], !dbg !3494
  call void @llvm.dbg.value(metadata i32 %44, metadata !204, metadata !DIExpression()), !dbg !3465
  %45 = icmp sgt i32 %44, -1, !dbg !3495
  %46 = and i1 %45, %43, !dbg !3485
  br i1 %46, label %47, label %74, !dbg !3485

; <label>:47:                                     ; preds = %42
  %48 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11, !dbg !3496
  call void @llvm.dbg.value(metadata i32 %48, metadata !208, metadata !DIExpression()), !dbg !3497
  %49 = icmp slt i32 %48, 0, !dbg !3498
  br i1 %49, label %54, label %50, !dbg !3499

; <label>:50:                                     ; preds = %47
  %51 = or i32 %48, 1, !dbg !3500
  %52 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %51) #11, !dbg !3501
  %53 = icmp eq i32 %52, -1, !dbg !3502
  br i1 %53, label %54, label %74, !dbg !3503

; <label>:54:                                     ; preds = %50, %47
  %55 = tail call i32* @__errno_location() #17, !dbg !3504
  %56 = load i32, i32* %55, align 4, !dbg !3504, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %56, metadata !211, metadata !DIExpression()), !dbg !3505
  %57 = call i32 @close(i32 %44) #11, !dbg !3506
  store i32 %56, i32* %55, align 4, !dbg !3507, !tbaa !790
  call void @llvm.dbg.value(metadata i32 -1, metadata !204, metadata !DIExpression()), !dbg !3465
  br label %74, !dbg !3508

; <label>:58:                                     ; preds = %2
  br i1 %8, label %59, label %65, !dbg !3509

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3509
  %61 = load i8*, i8** %60, align 16, !dbg !3509
  %62 = sext i32 %7 to i64, !dbg !3509
  %63 = getelementptr i8, i8* %61, i64 %62, !dbg !3509
  %64 = add i32 %7, 8, !dbg !3509
  store i32 %64, i32* %6, align 16, !dbg !3509
  br label %69, !dbg !3509

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3509
  %67 = load i8*, i8** %66, align 8, !dbg !3509
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3509
  store i8* %68, i8** %66, align 8, !dbg !3509
  br label %69, !dbg !3509

; <label>:69:                                     ; preds = %65, %59
  %70 = phi i8* [ %63, %59 ], [ %67, %65 ]
  %71 = bitcast i8* %70 to i8**, !dbg !3509
  %72 = load i8*, i8** %71, align 8, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %72, metadata !214, metadata !DIExpression()), !dbg !3510
  %73 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %72) #11, !dbg !3511
  call void @llvm.dbg.value(metadata i32 %73, metadata !204, metadata !DIExpression()), !dbg !3465
  br label %74

; <label>:74:                                     ; preds = %33, %34, %50, %54, %42, %69
  %75 = phi i32 [ %73, %69 ], [ %35, %34 ], [ %44, %42 ], [ -1, %54 ], [ %44, %50 ], [ %27, %33 ], !dbg !3468
  call void @llvm.dbg.value(metadata i32 %75, metadata !204, metadata !DIExpression()), !dbg !3465
  call void @llvm.va_end(i8* nonnull %4), !dbg !3512
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #11, !dbg !3513
  ret i32 %75, !dbg !3514
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3515 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3532, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3533, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 %2, metadata !3534, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3535, metadata !DIExpression()), !dbg !3544
  %6 = bitcast i32* %5 to i8*, !dbg !3545
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3545
  %7 = icmp eq i32* %0, null, !dbg !3546
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3548
  call void @llvm.dbg.value(metadata i32* %8, metadata !3532, metadata !DIExpression()), !dbg !3541
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3549
  call void @llvm.dbg.value(metadata i64 %9, metadata !3536, metadata !DIExpression()), !dbg !3550
  %10 = icmp ugt i64 %9, -3, !dbg !3551
  %11 = icmp ne i64 %2, 0, !dbg !3552
  %12 = and i1 %11, %10, !dbg !3553
  br i1 %12, label %13, label %18, !dbg !3553

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3554
  br i1 %14, label %18, label %15, !dbg !3555

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3556, !tbaa !1112
  call void @llvm.dbg.value(metadata i8 %16, metadata !3538, metadata !DIExpression()), !dbg !3557
  %17 = zext i8 %16 to i32, !dbg !3558
  store i32 %17, i32* %8, align 4, !dbg !3559, !tbaa !790
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3560
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3561
  ret i64 %19, !dbg !3561
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3562 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3601, metadata !DIExpression()), !dbg !3606
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3607
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3608, metadata !DIExpression()), !dbg !3611
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3613
  %4 = load i32, i32* %3, align 8, !dbg !3613, !tbaa !954
  %5 = and i32 %4, 32, !dbg !3613
  %6 = icmp eq i32 %5, 0, !dbg !3614
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3615
  %8 = icmp ne i32 %7, 0, !dbg !3616
  br i1 %6, label %9, label %19, !dbg !3617

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3619
  %11 = xor i1 %8, true, !dbg !3620
  %12 = or i1 %10, %11, !dbg !3620
  %13 = sext i1 %8 to i32, !dbg !3620
  br i1 %12, label %22, label %14, !dbg !3620

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3621
  %16 = load i32, i32* %15, align 4, !dbg !3621, !tbaa !790
  %17 = icmp ne i32 %16, 9, !dbg !3622
  %18 = sext i1 %17 to i32, !dbg !3623
  br label %22, !dbg !3623

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3624

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3626
  store i32 0, i32* %21, align 4, !dbg !3628, !tbaa !790
  br label %22, !dbg !3626

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3629
  ret i32 %23, !dbg !3630
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly) local_unnamed_addr #12 !dbg !3631 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3634, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i8* %0, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8 0, metadata !3637, metadata !DIExpression()), !dbg !3640
  br label %2, !dbg !3641

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3642
  call void @llvm.dbg.value(metadata i8* %3, metadata !3635, metadata !DIExpression()), !dbg !3639
  %4 = load i8, i8* %3, align 1, !dbg !3643, !tbaa !1112
  %5 = icmp eq i8 %4, 47, !dbg !3643
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3644
  call void @llvm.dbg.value(metadata i8* %6, metadata !3635, metadata !DIExpression()), !dbg !3639
  br i1 %5, label %2, label %7, !dbg !3641, !llvm.loop !3645

; <label>:7:                                      ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !3646
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !3639
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !3649
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !3650
  call void @llvm.dbg.value(metadata i8 %11, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8* %10, metadata !3636, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8* %9, metadata !3635, metadata !DIExpression()), !dbg !3639
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !3654

; <label>:12:                                     ; preds = %7
  %13 = and i8 %11, 1, !dbg !3655
  %14 = icmp eq i8 %13, 0, !dbg !3655
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !3657
  %16 = select i1 %14, i8 %11, i8 0, !dbg !3657
  br label %17, !dbg !3657

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !3642
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !3642
  call void @llvm.dbg.value(metadata i8 %19, metadata !3637, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i8* %18, metadata !3635, metadata !DIExpression()), !dbg !3639
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %20, metadata !3636, metadata !DIExpression()), !dbg !3653
  %21 = load i8, i8* %20, align 1, !dbg !3646, !tbaa !1112
  br label %7, !dbg !3659, !llvm.loop !3660

; <label>:22:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %9, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %9, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %9, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %9, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i8* %9, metadata !3635, metadata !DIExpression()), !dbg !3639
  ret i8* %9, !dbg !3662
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly) local_unnamed_addr #12 !dbg !3663 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3667, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 0, metadata !3669, metadata !DIExpression()), !dbg !3671
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %2, metadata !3668, metadata !DIExpression()), !dbg !3674
  br label %3, !dbg !3675

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !3676
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  %5 = icmp ugt i64 %4, 1, !dbg !3678
  br i1 %5, label %6, label %11, !dbg !3679

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !3680
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !3680
  %9 = load i8, i8* %8, align 1, !dbg !3680, !tbaa !1112
  %10 = icmp eq i8 %9, 47, !dbg !3680
  br i1 %10, label %3, label %11, !dbg !3681, !llvm.loop !3682

; <label>:11:                                     ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %4, metadata !3668, metadata !DIExpression()), !dbg !3674
  ret i64 %4, !dbg !3684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3685 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3690, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i8 1, metadata !3691, metadata !DIExpression()), !dbg !3694
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3695
  call void @llvm.dbg.value(metadata i8* %2, metadata !3692, metadata !DIExpression()), !dbg !3696
  %3 = icmp eq i8* %2, null, !dbg !3697
  br i1 %3, label %11, label %4, !dbg !3699

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i64 0, i64 0)) #14, !dbg !3700
  %6 = icmp eq i32 %5, 0, !dbg !3705
  br i1 %6, label %10, label %7, !dbg !3706

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0)) #14, !dbg !3707
  %9 = icmp eq i32 %8, 0, !dbg !3708
  br i1 %9, label %10, label %11, !dbg !3709

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3691, metadata !DIExpression()), !dbg !3694
  br label %11, !dbg !3710

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3712 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %1, metadata !3717, metadata !DIExpression()), !dbg !3719
  %2 = icmp eq i8* %1, null, !dbg !3720
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), i8* %1, !dbg !3722
  call void @llvm.dbg.value(metadata i8* %3, metadata !3717, metadata !DIExpression()), !dbg !3719
  %4 = load i8, i8* %3, align 1, !dbg !3723, !tbaa !1112
  %5 = icmp eq i8 %4, 0, !dbg !3727
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.144, i64 0, i64 0), i8* %3, !dbg !3728
  call void @llvm.dbg.value(metadata i8* %6, metadata !3717, metadata !DIExpression()), !dbg !3719
  ret i8* %6, !dbg !3729
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3730 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3769, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i32 0, metadata !3770, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 0, metadata !3772, metadata !DIExpression()), !dbg !3775
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3776
  call void @llvm.dbg.value(metadata i32 %2, metadata !3771, metadata !DIExpression()), !dbg !3777
  %3 = icmp slt i32 %2, 0, !dbg !3778
  br i1 %3, label %4, label %6, !dbg !3780

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3781
  br label %24, !dbg !3782

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3783
  %8 = icmp eq i32 %7, 0, !dbg !3783
  br i1 %8, label %13, label %9, !dbg !3785

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3786
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3787
  %12 = icmp eq i64 %11, -1, !dbg !3788
  br i1 %12, label %16, label %13, !dbg !3789

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3790
  %15 = icmp eq i32 %14, 0, !dbg !3790
  br i1 %15, label %16, label %18, !dbg !3791

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3770, metadata !DIExpression()), !dbg !3774
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3792
  call void @llvm.dbg.value(metadata i32 %21, metadata !3772, metadata !DIExpression()), !dbg !3775
  br label %24, !dbg !3793

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3794
  %20 = load i32, i32* %19, align 4, !dbg !3794, !tbaa !790
  call void @llvm.dbg.value(metadata i32 %20, metadata !3770, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i32 %20, metadata !3770, metadata !DIExpression()), !dbg !3774
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3792
  call void @llvm.dbg.value(metadata i32 %21, metadata !3772, metadata !DIExpression()), !dbg !3775
  %22 = icmp eq i32 %20, 0, !dbg !3795
  br i1 %22, label %24, label %23, !dbg !3793

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3797, !tbaa !790
  call void @llvm.dbg.value(metadata i32 -1, metadata !3772, metadata !DIExpression()), !dbg !3775
  br label %24, !dbg !3799

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3800
  ret i32 %25, !dbg !3801
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3802 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3841, metadata !DIExpression()), !dbg !3842
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3843
  br i1 %2, label %6, label %3, !dbg !3845

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3846
  %5 = icmp eq i32 %4, 0, !dbg !3846
  br i1 %5, label %6, label %8, !dbg !3847

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3848
  br label %17, !dbg !3849

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3850, metadata !DIExpression()) #11, !dbg !3855
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3857
  %10 = load i32, i32* %9, align 8, !dbg !3857, !tbaa !954
  %11 = and i32 %10, 256, !dbg !3859
  %12 = icmp eq i32 %11, 0, !dbg !3859
  br i1 %12, label %15, label %13, !dbg !3860

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3861
  br label %15, !dbg !3861

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3862
  br label %17, !dbg !3863

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3864
  ret i32 %18, !dbg !3865
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3866 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3906, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i32 %2, metadata !3908, metadata !DIExpression()), !dbg !3914
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3915
  %5 = load i8*, i8** %4, align 8, !dbg !3915, !tbaa !3916
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3917
  %7 = load i8*, i8** %6, align 8, !dbg !3917, !tbaa !3918
  %8 = icmp eq i8* %5, %7, !dbg !3919
  br i1 %8, label %9, label %28, !dbg !3920

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3921
  %11 = load i8*, i8** %10, align 8, !dbg !3921, !tbaa !3922
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3923
  %13 = load i8*, i8** %12, align 8, !dbg !3923, !tbaa !3924
  %14 = icmp eq i8* %11, %13, !dbg !3925
  br i1 %14, label %15, label %28, !dbg !3926

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3927
  %17 = load i8*, i8** %16, align 8, !dbg !3927, !tbaa !3928
  %18 = icmp eq i8* %17, null, !dbg !3929
  br i1 %18, label %19, label %28, !dbg !3930

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3931
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %21, metadata !3909, metadata !DIExpression()), !dbg !3933
  %22 = icmp eq i64 %21, -1, !dbg !3934
  br i1 %22, label %30, label %23, !dbg !3936

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3937
  %25 = load i32, i32* %24, align 8, !dbg !3938, !tbaa !954
  %26 = and i32 %25, -17, !dbg !3938
  store i32 %26, i32* %24, align 8, !dbg !3938, !tbaa !954
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3939
  store i64 %21, i64* %27, align 8, !dbg !3940, !tbaa !3941
  br label %30, !dbg !3942

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3943
  br label %30, !dbg !3944

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3945
  ret i32 %31, !dbg !3946
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !56, !62, !71, !216, !218, !221, !78, !94, !102, !223, !174, !230, !247, !249, !187, !251, !254, !256, !259, !261, !650, !652, !654}
!llvm.ident = !{!656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656, !656}
!llvm.module.flags = !{!657, !658, !659, !660, !661}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 37, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !41)
!3 = !DIFile(filename: "src/nohup.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !9, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 43, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIEnumerator(name: "POSIX_NOHUP_FAILURE", value: 127, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 87, baseType: !6, size: 32, elements: !11)
!10 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!13 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!14 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!15 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !17, line: 32, baseType: !6, size: 32, elements: !18)
!17 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!19 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!22 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!23 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!24 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!25 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!26 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!27 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!28 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!29 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!30 = !{!31, !34, !35}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !36, line: 72, baseType: !37)
!36 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !{!0}
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !52)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !45, line: 50, size: 256, elements: !46)
!45 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!46 = !{!47, !48, !49, !51}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !45, line: 52, baseType: !31, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !44, file: !45, line: 55, baseType: !40, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !44, file: !45, line: 56, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !44, file: !45, line: 57, baseType: !40, size: 32, offset: 192)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "Version", scope: !56, file: !57, line: 2, type: !31, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, globals: !59)
!57 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!58 = !{}
!59 = !{!54}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "file_name", scope: !62, file: !67, line: 46, type: !31, isLocal: true, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, globals: !64)
!63 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!64 = !{!60, !65}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !62, file: !67, line: 56, type: !68, isLocal: true, isDefinition: true)
!67 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!68 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "exit_failure", scope: !71, file: !74, line: 24, type: !75, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, globals: !73)
!72 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!73 = !{!69}
!74 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!75 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "long_options", scope: !78, file: !81, line: 33, type: !82, isLocal: true, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, globals: !80)
!79 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!80 = !{!76}
!81 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 768, elements: !90)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !45, line: 50, size: 256, elements: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !45, line: 52, baseType: !31, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !84, file: !45, line: 55, baseType: !40, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !84, file: !45, line: 56, baseType: !50, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !45, line: 57, baseType: !40, size: 32, offset: 192)
!90 = !{!91}
!91 = !DISubrange(count: 3)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "program_name", scope: !94, file: !99, line: 33, type: !31, isLocal: false, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !96, globals: !98)
!95 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!96 = !{!34, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!98 = !{!92}
!99 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !102, file: !133, line: 85, type: !168, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !104, retainedTypes: !125, globals: !130)
!103 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!104 = !{!16, !105, !110}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !17, line: 242, baseType: !6, size: 32, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 46, baseType: !6, size: 32, elements: !112)
!111 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!113 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!115 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!118 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!119 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!121 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!125 = !{!40, !126, !127, !97}
!126 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 62, baseType: !129)
!128 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!129 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !{!100, !131, !138, !150, !152, !157, !164, !166}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !102, file: !133, line: 101, type: !134, isLocal: false, isDefinition: true)
!133 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 320, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!136 = !{!137}
!137 = !DISubrange(count: 10)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !102, file: !133, line: 1052, type: !140, isLocal: false, isDefinition: true)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !133, line: 65, size: 448, elements: !141)
!141 = !{!142, !143, !144, !148, !149}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !140, file: !133, line: 68, baseType: !16, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !133, line: 71, baseType: !40, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !140, file: !133, line: 75, baseType: !145, size: 256, offset: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !140, file: !133, line: 78, baseType: !31, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !140, file: !133, line: 81, baseType: !31, size: 64, offset: 384)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !102, file: !133, line: 116, type: !140, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "slot0", scope: !102, file: !133, line: 842, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 256)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "slotvec", scope: !102, file: !133, line: 845, type: !159, isLocal: true, isDefinition: true)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !133, line: 834, size: 128, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !160, file: !133, line: 836, baseType: !127, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !160, file: !133, line: 837, baseType: !97, size: 64, offset: 64)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "nslots", scope: !102, file: !133, line: 843, type: !40, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "slotvec0", scope: !102, file: !133, line: 844, type: !160, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 704, elements: !170)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!170 = !{!171}
!171 = !DISubrange(count: 11)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !174, file: !177, line: 26, type: !178, isLocal: false, isDefinition: true)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, globals: !176)
!175 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!176 = !{!172}
!177 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 376, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 47)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !183, file: !184, line: 339, type: !40, isLocal: true, isDefinition: true)
!183 = distinct !DISubprogram(name: "rpl_fcntl", scope: !184, file: !184, line: 276, type: !185, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !190)
!184 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!185 = !DISubroutineType(types: !186)
!186 = !{!40, !40, !40, null}
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, globals: !189)
!188 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!189 = !{!181}
!190 = !{!191, !192, !193, !204, !205, !208, !211, !214}
!191 = !DILocalVariable(name: "fd", arg: 1, scope: !183, file: !184, line: 276, type: !40)
!192 = !DILocalVariable(name: "action", arg: 2, scope: !183, file: !184, line: 276, type: !40)
!193 = !DILocalVariable(name: "arg", scope: !183, file: !184, line: 278, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !195, line: 30, baseType: !196)
!195 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !188, line: 278, baseType: !197)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 192, elements: !52)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !188, line: 278, size: 192, elements: !199)
!199 = !{!200, !201, !202, !203}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !198, file: !188, line: 278, baseType: !6, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !198, file: !188, line: 278, baseType: !6, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !198, file: !188, line: 278, baseType: !34, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !198, file: !188, line: 278, baseType: !34, size: 64, offset: 128)
!204 = !DILocalVariable(name: "result", scope: !183, file: !184, line: 279, type: !40)
!205 = !DILocalVariable(name: "target", scope: !206, file: !184, line: 326, type: !40)
!206 = distinct !DILexicalBlock(scope: !207, file: !184, line: 325, column: 7)
!207 = distinct !DILexicalBlock(scope: !183, file: !184, line: 282, column: 5)
!208 = !DILocalVariable(name: "flags", scope: !209, file: !184, line: 363, type: !40)
!209 = distinct !DILexicalBlock(scope: !210, file: !184, line: 362, column: 11)
!210 = distinct !DILexicalBlock(scope: !206, file: !184, line: 361, column: 13)
!211 = !DILocalVariable(name: "saved_errno", scope: !212, file: !184, line: 366, type: !40)
!212 = distinct !DILexicalBlock(scope: !213, file: !184, line: 365, column: 15)
!213 = distinct !DILexicalBlock(scope: !209, file: !184, line: 364, column: 17)
!214 = !DILocalVariable(name: "p", scope: !215, file: !184, line: 408, type: !34)
!215 = distinct !DILexicalBlock(scope: !207, file: !184, line: 406, column: 7)
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58)
!217 = !DIFile(filename: "./lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !220)
!219 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!220 = !{!34}
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !220)
!222 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !225, retainedTypes: !220)
!224 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!225 = !{!226}
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 41, baseType: !6, size: 32, elements: !228)
!227 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!228 = !{!229}
!229 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !246)
!231 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!232 = !{!233}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !235, file: !234, line: 186, baseType: !6, size: 32, elements: !244)
!234 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!235 = distinct !DISubprogram(name: "x2nrealloc", scope: !234, file: !234, line: 174, type: !236, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !239)
!236 = !DISubroutineType(types: !237)
!237 = !{!34, !34, !238, !127}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!239 = !{!240, !241, !242, !243}
!240 = !DILocalVariable(name: "p", arg: 1, scope: !235, file: !234, line: 174, type: !34)
!241 = !DILocalVariable(name: "pn", arg: 2, scope: !235, file: !234, line: 174, type: !238)
!242 = !DILocalVariable(name: "s", arg: 3, scope: !235, file: !234, line: 174, type: !127)
!243 = !DILocalVariable(name: "n", scope: !235, file: !234, line: 176, type: !127)
!244 = !{!245}
!245 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!246 = !{!127, !97, !34}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58)
!248 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !220)
!250 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !253)
!252 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!253 = !{!127}
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58)
!255 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !258)
!257 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!258 = !{!97}
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58)
!260 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !263, retainedTypes: !220)
!262 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!263 = !{!264}
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 41, baseType: !6, size: 32, elements: !266)
!265 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!267 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!268 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!269 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!270 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!271 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!272 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!273 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!274 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!275 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!276 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!277 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!278 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!279 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!280 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!281 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!282 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!283 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!284 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!285 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!287 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!289 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!290 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!291 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!293 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!294 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!295 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!296 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!297 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!299 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!301 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!302 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!303 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!305 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!306 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!307 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!308 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!309 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!310 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!311 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!312 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!313 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!314 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!315 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!316 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!375 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!378 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!379 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!380 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!381 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!382 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!384 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!386 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!387 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!388 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!462 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!535 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!536 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!537 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!538 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!539 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!540 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!541 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!542 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!543 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!544 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!545 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!546 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!547 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!548 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!549 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!551 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!552 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!553 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!554 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!555 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!556 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!582 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!583 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!584 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!585 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!586 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!591 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!592 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!593 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!594 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!650 = distinct !DICompileUnit(language: DW_LANG_C99, file: !651, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58)
!651 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !220)
!653 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !220)
!655 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!656 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!657 = !{i32 2, !"Dwarf Version", i32 4}
!658 = !{i32 2, !"Debug Info Version", i32 3}
!659 = !{i32 1, !"wchar_size", i32 4}
!660 = !{i32 7, !"PIC Level", i32 2}
!661 = !{i32 7, !"PIE Level", i32 2}
!662 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 50, type: !38, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !663)
!663 = !{!664}
!664 = !DILocalVariable(name: "status", arg: 1, scope: !662, file: !3, line: 50, type: !40)
!665 = !DILocalVariable(name: "infomap", scope: !666, file: !10, line: 632, type: !680)
!666 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !10, file: !10, line: 630, type: !667, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !31}
!669 = !{!670, !665, !671, !672, !679}
!670 = !DILocalVariable(name: "program", arg: 1, scope: !666, file: !10, line: 630, type: !31)
!671 = !DILocalVariable(name: "node", scope: !666, file: !10, line: 642, type: !31)
!672 = !DILocalVariable(name: "map_prog", scope: !666, file: !10, line: 643, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !666, file: !10, line: 632, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !675, file: !10, line: 632, baseType: !31, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !10, line: 632, baseType: !31, size: 64, offset: 64)
!679 = !DILocalVariable(name: "lc_messages", scope: !666, file: !10, line: 655, type: !31)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 896, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 7)
!683 = !DILocation(line: 632, column: 67, scope: !666, inlinedAt: !684)
!684 = distinct !DILocation(line: 76, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 55, column: 5)
!686 = distinct !DILexicalBlock(scope: !662, file: !3, line: 52, column: 7)
!687 = !DILocation(line: 50, column: 12, scope: !662)
!688 = !DILocation(line: 52, column: 14, scope: !686)
!689 = !DILocation(line: 52, column: 7, scope: !662)
!690 = !DILocation(line: 53, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !3, line: 53, column: 5)
!692 = !{!693, !693, i64 0}
!693 = !{!"any pointer", !694, i64 0}
!694 = !{!"omnipotent char", !695, i64 0}
!695 = !{!"Simple C/C++ TBAA"}
!696 = !DILocation(line: 56, column: 7, scope: !685)
!697 = !DILocation(line: 62, column: 7, scope: !685)
!698 = !DILocation(line: 66, column: 7, scope: !685)
!699 = !DILocation(line: 67, column: 7, scope: !685)
!700 = !DILocation(line: 68, column: 7, scope: !685)
!701 = !DILocation(line: 75, column: 7, scope: !685)
!702 = !DILocation(line: 632, column: 3, scope: !666, inlinedAt: !684)
!703 = !DILocation(line: 643, column: 36, scope: !666, inlinedAt: !684)
!704 = !DILocation(line: 643, column: 25, scope: !666, inlinedAt: !684)
!705 = !DILocation(line: 645, column: 33, scope: !666, inlinedAt: !684)
!706 = !DILocation(line: 645, column: 3, scope: !666, inlinedAt: !684)
!707 = !DILocation(line: 646, column: 13, scope: !666, inlinedAt: !684)
!708 = !DILocation(line: 645, column: 20, scope: !666, inlinedAt: !684)
!709 = !{!710, !693, i64 0}
!710 = !{!"infomap", !693, i64 0, !693, i64 8}
!711 = !DILocation(line: 645, column: 10, scope: !666, inlinedAt: !684)
!712 = !DILocation(line: 645, column: 28, scope: !666, inlinedAt: !684)
!713 = distinct !{!713, !714, !715}
!714 = !DILocation(line: 645, column: 3, scope: !666)
!715 = !DILocation(line: 646, column: 13, scope: !666)
!716 = !DILocation(line: 648, column: 17, scope: !717, inlinedAt: !684)
!717 = distinct !DILexicalBlock(scope: !666, file: !10, line: 648, column: 7)
!718 = !{!710, !693, i64 8}
!719 = !DILocation(line: 648, column: 7, scope: !717, inlinedAt: !684)
!720 = !DILocation(line: 648, column: 7, scope: !666, inlinedAt: !684)
!721 = !DILocation(line: 642, column: 15, scope: !666, inlinedAt: !684)
!722 = !DILocation(line: 651, column: 3, scope: !666, inlinedAt: !684)
!723 = !DILocation(line: 655, column: 29, scope: !666, inlinedAt: !684)
!724 = !DILocation(line: 655, column: 15, scope: !666, inlinedAt: !684)
!725 = !DILocation(line: 656, column: 7, scope: !726, inlinedAt: !684)
!726 = distinct !DILexicalBlock(scope: !666, file: !10, line: 656, column: 7)
!727 = !DILocation(line: 656, column: 19, scope: !726, inlinedAt: !684)
!728 = !DILocation(line: 656, column: 22, scope: !726, inlinedAt: !684)
!729 = !DILocation(line: 656, column: 7, scope: !666, inlinedAt: !684)
!730 = !DILocation(line: 662, column: 7, scope: !731, inlinedAt: !684)
!731 = distinct !DILexicalBlock(scope: !726, file: !10, line: 657, column: 5)
!732 = !DILocation(line: 664, column: 5, scope: !731, inlinedAt: !684)
!733 = !DILocation(line: 665, column: 3, scope: !666, inlinedAt: !684)
!734 = !DILocation(line: 667, column: 3, scope: !666, inlinedAt: !684)
!735 = !DILocation(line: 669, column: 1, scope: !666, inlinedAt: !684)
!736 = !DILocation(line: 78, column: 3, scope: !662)
!737 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 82, type: !738, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !741)
!738 = !DISubroutineType(types: !739)
!739 = !{!40, !40, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !754, !755, !756, !761, !762, !765, !766, !769, !770, !771}
!742 = !DILocalVariable(name: "argc", arg: 1, scope: !737, file: !3, line: 82, type: !40)
!743 = !DILocalVariable(name: "argv", arg: 2, scope: !737, file: !3, line: 82, type: !740)
!744 = !DILocalVariable(name: "out_fd", scope: !737, file: !3, line: 84, type: !40)
!745 = !DILocalVariable(name: "saved_stderr_fd", scope: !737, file: !3, line: 85, type: !40)
!746 = !DILocalVariable(name: "ignoring_input", scope: !737, file: !3, line: 86, type: !68)
!747 = !DILocalVariable(name: "redirecting_stdout", scope: !737, file: !3, line: 87, type: !68)
!748 = !DILocalVariable(name: "stdout_is_closed", scope: !737, file: !3, line: 88, type: !68)
!749 = !DILocalVariable(name: "redirecting_stderr", scope: !737, file: !3, line: 89, type: !68)
!750 = !DILocalVariable(name: "exit_internal_failure", scope: !737, file: !3, line: 90, type: !40)
!751 = !DILocalVariable(name: "in_home", scope: !752, file: !3, line: 141, type: !97)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 140, column: 5)
!753 = distinct !DILexicalBlock(scope: !737, file: !3, line: 139, column: 7)
!754 = !DILocalVariable(name: "file", scope: !752, file: !3, line: 142, type: !31)
!755 = !DILocalVariable(name: "flags", scope: !752, file: !3, line: 143, type: !40)
!756 = !DILocalVariable(name: "mode", scope: !752, file: !3, line: 144, type: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !758, line: 69, baseType: !759)
!758 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !760, line: 148, baseType: !6)
!760 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!761 = !DILocalVariable(name: "umask_value", scope: !752, file: !3, line: 145, type: !757)
!762 = !DILocalVariable(name: "saved_errno", scope: !763, file: !3, line: 152, type: !40)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 151, column: 9)
!764 = distinct !DILexicalBlock(scope: !752, file: !3, line: 150, column: 11)
!765 = !DILocalVariable(name: "home", scope: !763, file: !3, line: 153, type: !31)
!766 = !DILocalVariable(name: "saved_errno2", scope: !767, file: !3, line: 163, type: !40)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 162, column: 13)
!768 = distinct !DILexicalBlock(scope: !763, file: !3, line: 161, column: 15)
!769 = !DILocalVariable(name: "cmd", scope: !737, file: !3, line: 217, type: !740)
!770 = !DILocalVariable(name: "exit_status", scope: !737, file: !3, line: 219, type: !40)
!771 = !DILocalVariable(name: "saved_errno", scope: !737, file: !3, line: 220, type: !40)
!772 = !DILocation(line: 82, column: 11, scope: !737)
!773 = !DILocation(line: 82, column: 24, scope: !737)
!774 = !DILocation(line: 84, column: 7, scope: !737)
!775 = !DILocation(line: 85, column: 7, scope: !737)
!776 = !DILocation(line: 93, column: 21, scope: !737)
!777 = !DILocation(line: 93, column: 3, scope: !737)
!778 = !DILocation(line: 94, column: 3, scope: !737)
!779 = !DILocation(line: 95, column: 3, scope: !737)
!780 = !DILocation(line: 96, column: 3, scope: !737)
!781 = !DILocation(line: 102, column: 28, scope: !737)
!782 = !DILocation(line: 90, column: 7, scope: !737)
!783 = !DILocalVariable(name: "status", arg: 1, scope: !784, file: !10, line: 99, type: !40)
!784 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !10, file: !10, line: 99, type: !38, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !785)
!785 = !{!783}
!786 = !DILocation(line: 99, column: 30, scope: !784, inlinedAt: !787)
!787 = distinct !DILocation(line: 104, column: 3, scope: !737)
!788 = !DILocation(line: 102, column: 18, scope: !789, inlinedAt: !787)
!789 = distinct !DILexicalBlock(scope: !784, file: !10, line: 101, column: 7)
!790 = !{!791, !791, i64 0}
!791 = !{!"int", !694, i64 0}
!792 = !DILocation(line: 105, column: 3, scope: !737)
!793 = !DILocation(line: 107, column: 63, scope: !737)
!794 = !DILocation(line: 107, column: 3, scope: !737)
!795 = !DILocation(line: 109, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !737, file: !3, line: 109, column: 7)
!797 = !DILocation(line: 109, column: 57, scope: !796)
!798 = !DILocation(line: 109, column: 7, scope: !737)
!799 = !DILocation(line: 110, column: 5, scope: !796)
!800 = !DILocation(line: 112, column: 15, scope: !801)
!801 = distinct !DILexicalBlock(scope: !737, file: !3, line: 112, column: 7)
!802 = !DILocation(line: 112, column: 12, scope: !801)
!803 = !DILocation(line: 112, column: 7, scope: !737)
!804 = !DILocation(line: 114, column: 20, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !3, line: 113, column: 5)
!806 = !DILocation(line: 114, column: 7, scope: !805)
!807 = !DILocation(line: 115, column: 7, scope: !805)
!808 = !DILocation(line: 118, column: 20, scope: !737)
!809 = !DILocation(line: 119, column: 24, scope: !737)
!810 = !DILocation(line: 120, column: 43, scope: !737)
!811 = !DILocation(line: 120, column: 46, scope: !737)
!812 = !DILocation(line: 120, column: 52, scope: !737)
!813 = !DILocation(line: 0, scope: !737)
!814 = !DILocation(line: 121, column: 24, scope: !737)
!815 = !DILocation(line: 126, column: 7, scope: !737)
!816 = !DILocation(line: 128, column: 11, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 128, column: 11)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 127, column: 5)
!819 = distinct !DILexicalBlock(scope: !737, file: !3, line: 126, column: 7)
!820 = !DILocation(line: 128, column: 62, scope: !817)
!821 = !DILocation(line: 128, column: 11, scope: !818)
!822 = !DILocation(line: 129, column: 39, scope: !817)
!823 = !DILocation(line: 130, column: 16, scope: !817)
!824 = !DILocation(line: 129, column: 9, scope: !817)
!825 = !DILocation(line: 131, column: 31, scope: !826)
!826 = distinct !DILexicalBlock(scope: !818, file: !3, line: 131, column: 11)
!827 = !DILocation(line: 132, column: 22, scope: !826)
!828 = !DILocation(line: 132, column: 9, scope: !826)
!829 = !DILocation(line: 139, column: 26, scope: !753)
!830 = !DILocation(line: 139, column: 49, scope: !753)
!831 = !DILocation(line: 141, column: 13, scope: !752)
!832 = !DILocation(line: 143, column: 11, scope: !752)
!833 = !DILocation(line: 144, column: 14, scope: !752)
!834 = !DILocation(line: 145, column: 28, scope: !752)
!835 = !DILocation(line: 145, column: 14, scope: !752)
!836 = !DILocation(line: 147, column: 19, scope: !752)
!837 = !DILocation(line: 146, column: 17, scope: !752)
!838 = !DILocation(line: 148, column: 19, scope: !752)
!839 = !DILocation(line: 150, column: 18, scope: !764)
!840 = !DILocation(line: 150, column: 11, scope: !752)
!841 = !DILocation(line: 152, column: 29, scope: !763)
!842 = !DILocation(line: 152, column: 15, scope: !763)
!843 = !DILocation(line: 153, column: 30, scope: !763)
!844 = !DILocation(line: 153, column: 23, scope: !763)
!845 = !DILocation(line: 154, column: 15, scope: !846)
!846 = distinct !DILexicalBlock(scope: !763, file: !3, line: 154, column: 15)
!847 = !DILocation(line: 154, column: 15, scope: !763)
!848 = !DILocation(line: 156, column: 25, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !3, line: 155, column: 13)
!850 = !DILocation(line: 157, column: 25, scope: !849)
!851 = !DILocation(line: 158, column: 27, scope: !849)
!852 = !DILocation(line: 159, column: 27, scope: !849)
!853 = !DILocation(line: 0, scope: !752)
!854 = !DILocation(line: 161, column: 22, scope: !768)
!855 = !DILocation(line: 161, column: 15, scope: !763)
!856 = !DILocation(line: 163, column: 34, scope: !767)
!857 = !DILocation(line: 163, column: 19, scope: !767)
!858 = !DILocation(line: 164, column: 38, scope: !767)
!859 = !DILocation(line: 164, column: 62, scope: !767)
!860 = !DILocation(line: 164, column: 15, scope: !767)
!861 = !DILocation(line: 165, column: 19, scope: !862)
!862 = distinct !DILexicalBlock(scope: !767, file: !3, line: 165, column: 19)
!863 = !DILocation(line: 165, column: 19, scope: !767)
!864 = !DILocation(line: 166, column: 41, scope: !862)
!865 = !DILocation(line: 167, column: 24, scope: !862)
!866 = !DILocation(line: 166, column: 17, scope: !862)
!867 = !DILocation(line: 142, column: 19, scope: !752)
!868 = !DILocation(line: 173, column: 7, scope: !752)
!869 = !DILocation(line: 175, column: 14, scope: !752)
!870 = !DILocation(line: 178, column: 14, scope: !752)
!871 = !DILocation(line: 174, column: 7, scope: !752)
!872 = !DILocation(line: 179, column: 7, scope: !752)
!873 = !DILocation(line: 183, column: 7, scope: !737)
!874 = !DILocation(line: 189, column: 25, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 184, column: 5)
!876 = distinct !DILexicalBlock(scope: !737, file: !3, line: 183, column: 7)
!877 = !DILocation(line: 192, column: 11, scope: !875)
!878 = !DILocation(line: 194, column: 16, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !3, line: 192, column: 11)
!880 = !DILocation(line: 193, column: 9, scope: !879)
!881 = !DILocation(line: 198, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !875, file: !3, line: 198, column: 11)
!883 = !DILocation(line: 198, column: 40, scope: !882)
!884 = !DILocation(line: 198, column: 11, scope: !875)
!885 = !DILocation(line: 199, column: 39, scope: !882)
!886 = !DILocation(line: 200, column: 16, scope: !882)
!887 = !DILocation(line: 199, column: 9, scope: !882)
!888 = !DILocation(line: 202, column: 11, scope: !875)
!889 = !DILocation(line: 203, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !875, file: !3, line: 202, column: 11)
!891 = !DILocation(line: 212, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !737, file: !3, line: 212, column: 7)
!893 = !DILocalVariable(name: "__stream", arg: 1, scope: !894, file: !895, line: 135, type: !898)
!894 = distinct !DISubprogram(name: "ferror_unlocked", scope: !895, file: !895, line: 135, type: !896, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !950)
!895 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!896 = !DISubroutineType(types: !897)
!897 = !{!40, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 7, baseType: !901)
!900 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 49, size: 1728, elements: !903)
!902 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!903 = !{!904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !919, !921, !922, !923, !926, !927, !929, !931, !934, !936, !939, !942, !943, !944, !945, !946}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !901, file: !902, line: 51, baseType: !40, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !901, file: !902, line: 54, baseType: !97, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !901, file: !902, line: 55, baseType: !97, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !901, file: !902, line: 56, baseType: !97, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !901, file: !902, line: 57, baseType: !97, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !901, file: !902, line: 58, baseType: !97, size: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !901, file: !902, line: 59, baseType: !97, size: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !901, file: !902, line: 60, baseType: !97, size: 64, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !901, file: !902, line: 61, baseType: !97, size: 64, offset: 512)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !901, file: !902, line: 64, baseType: !97, size: 64, offset: 576)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !901, file: !902, line: 65, baseType: !97, size: 64, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !901, file: !902, line: 66, baseType: !97, size: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !901, file: !902, line: 68, baseType: !917, size: 64, offset: 768)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !902, line: 36, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !901, file: !902, line: 70, baseType: !920, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !901, file: !902, line: 72, baseType: !40, size: 32, offset: 896)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !901, file: !902, line: 73, baseType: !40, size: 32, offset: 928)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !901, file: !902, line: 74, baseType: !924, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !760, line: 150, baseType: !925)
!925 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !901, file: !902, line: 77, baseType: !126, size: 16, offset: 1024)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !901, file: !902, line: 78, baseType: !928, size: 8, offset: 1040)
!928 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !901, file: !902, line: 79, baseType: !930, size: 8, offset: 1048)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !52)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !901, file: !902, line: 81, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !902, line: 43, baseType: null)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !901, file: !902, line: 89, baseType: !935, size: 64, offset: 1152)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !760, line: 151, baseType: !925)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !901, file: !902, line: 91, baseType: !937, size: 64, offset: 1216)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !902, line: 37, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !901, file: !902, line: 92, baseType: !940, size: 64, offset: 1280)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !902, line: 38, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !901, file: !902, line: 93, baseType: !920, size: 64, offset: 1344)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !901, file: !902, line: 94, baseType: !34, size: 64, offset: 1408)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !901, file: !902, line: 95, baseType: !127, size: 64, offset: 1472)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !901, file: !902, line: 96, baseType: !40, size: 32, offset: 1536)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !901, file: !902, line: 98, baseType: !947, size: 160, offset: 1568)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 20)
!950 = !{!893}
!951 = !DILocation(line: 135, column: 1, scope: !894, inlinedAt: !952)
!952 = distinct !DILocation(line: 212, column: 7, scope: !892)
!953 = !DILocation(line: 137, column: 10, scope: !894, inlinedAt: !952)
!954 = !{!955, !791, i64 0}
!955 = !{!"_IO_FILE", !791, i64 0, !693, i64 8, !693, i64 16, !693, i64 24, !693, i64 32, !693, i64 40, !693, i64 48, !693, i64 56, !693, i64 64, !693, i64 72, !693, i64 80, !693, i64 88, !693, i64 96, !693, i64 104, !791, i64 112, !791, i64 116, !956, i64 120, !957, i64 128, !694, i64 130, !694, i64 131, !693, i64 136, !956, i64 144, !693, i64 152, !693, i64 160, !693, i64 168, !693, i64 176, !956, i64 184, !791, i64 192, !694, i64 196}
!956 = !{!"long", !694, i64 0}
!957 = !{!"short", !694, i64 0}
!958 = !DILocation(line: 212, column: 7, scope: !737)
!959 = !DILocation(line: 215, column: 3, scope: !737)
!960 = !DILocation(line: 217, column: 23, scope: !737)
!961 = !DILocation(line: 217, column: 21, scope: !737)
!962 = !DILocation(line: 217, column: 10, scope: !737)
!963 = !DILocation(line: 218, column: 11, scope: !737)
!964 = !DILocation(line: 218, column: 3, scope: !737)
!965 = !DILocation(line: 219, column: 21, scope: !737)
!966 = !DILocation(line: 219, column: 27, scope: !737)
!967 = !DILocation(line: 219, column: 7, scope: !737)
!968 = !DILocation(line: 220, column: 7, scope: !737)
!969 = !DILocation(line: 228, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !737, file: !3, line: 228, column: 7)
!971 = !DILocation(line: 228, column: 45, scope: !970)
!972 = !DILocation(line: 228, column: 7, scope: !737)
!973 = !DILocation(line: 229, column: 28, scope: !970)
!974 = !DILocation(line: 229, column: 59, scope: !970)
!975 = !DILocation(line: 229, column: 5, scope: !970)
!976 = !DILocation(line: 0, scope: !767)
!977 = !DILocation(line: 232, column: 1, scope: !737)
!978 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !67, file: !67, line: 51, type: !667, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !62, retainedNodes: !979)
!979 = !{!980}
!980 = !DILocalVariable(name: "file", arg: 1, scope: !978, file: !67, line: 51, type: !31)
!981 = !DILocation(line: 51, column: 41, scope: !978)
!982 = !DILocation(line: 53, column: 13, scope: !978)
!983 = !DILocation(line: 54, column: 1, scope: !978)
!984 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !67, file: !67, line: 88, type: !985, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !62, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !68}
!987 = !{!988}
!988 = !DILocalVariable(name: "ignore", arg: 1, scope: !984, file: !67, line: 88, type: !68)
!989 = !DILocation(line: 88, column: 37, scope: !984)
!990 = !DILocation(line: 90, column: 16, scope: !984)
!991 = !{!992, !992, i64 0}
!992 = !{!"_Bool", !694, i64 0}
!993 = !DILocation(line: 91, column: 1, scope: !984)
!994 = distinct !DISubprogram(name: "close_stdout", scope: !67, file: !67, line: 117, type: !995, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !62, retainedNodes: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{null}
!997 = !{!998}
!998 = !DILocalVariable(name: "write_error", scope: !999, file: !67, line: 122, type: !31)
!999 = distinct !DILexicalBlock(scope: !1000, file: !67, line: 121, column: 5)
!1000 = distinct !DILexicalBlock(scope: !994, file: !67, line: 119, column: 7)
!1001 = !DILocation(line: 119, column: 21, scope: !1000)
!1002 = !DILocation(line: 119, column: 7, scope: !1000)
!1003 = !DILocation(line: 119, column: 29, scope: !1000)
!1004 = !DILocation(line: 120, column: 7, scope: !1000)
!1005 = !DILocation(line: 120, column: 12, scope: !1000)
!1006 = !{i8 0, i8 2}
!1007 = !DILocation(line: 120, column: 25, scope: !1000)
!1008 = !DILocation(line: 120, column: 28, scope: !1000)
!1009 = !DILocation(line: 120, column: 34, scope: !1000)
!1010 = !DILocation(line: 119, column: 7, scope: !994)
!1011 = !DILocation(line: 122, column: 33, scope: !999)
!1012 = !DILocation(line: 122, column: 19, scope: !999)
!1013 = !DILocation(line: 123, column: 11, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !999, file: !67, line: 123, column: 11)
!1015 = !DILocation(line: 0, scope: !1014)
!1016 = !DILocation(line: 123, column: 11, scope: !999)
!1017 = !DILocation(line: 124, column: 36, scope: !1014)
!1018 = !DILocation(line: 124, column: 9, scope: !1014)
!1019 = !DILocation(line: 127, column: 9, scope: !1014)
!1020 = !DILocation(line: 129, column: 14, scope: !999)
!1021 = !DILocation(line: 129, column: 7, scope: !999)
!1022 = !DILocation(line: 134, column: 42, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !994, file: !67, line: 134, column: 7)
!1024 = !DILocation(line: 134, column: 28, scope: !1023)
!1025 = !DILocation(line: 134, column: 50, scope: !1023)
!1026 = !DILocation(line: 134, column: 7, scope: !994)
!1027 = !DILocation(line: 135, column: 12, scope: !1023)
!1028 = !DILocation(line: 135, column: 5, scope: !1023)
!1029 = !DILocation(line: 136, column: 1, scope: !994)
!1030 = distinct !DISubprogram(name: "fd_reopen", scope: !1031, file: !1031, line: 32, type: !1032, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !216, retainedNodes: !1034)
!1031 = !DIFile(filename: "lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!40, !40, !31, !40, !757}
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1043}
!1035 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1030, file: !1031, line: 32, type: !40)
!1036 = !DILocalVariable(name: "file", arg: 2, scope: !1030, file: !1031, line: 32, type: !31)
!1037 = !DILocalVariable(name: "flags", arg: 3, scope: !1030, file: !1031, line: 32, type: !40)
!1038 = !DILocalVariable(name: "mode", arg: 4, scope: !1030, file: !1031, line: 32, type: !757)
!1039 = !DILocalVariable(name: "fd", scope: !1030, file: !1031, line: 34, type: !40)
!1040 = !DILocalVariable(name: "fd2", scope: !1041, file: !1031, line: 40, type: !40)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !1031, line: 39, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1030, file: !1031, line: 36, column: 7)
!1043 = !DILocalVariable(name: "saved_errno", scope: !1041, file: !1031, line: 41, type: !40)
!1044 = !DILocation(line: 32, column: 16, scope: !1030)
!1045 = !DILocation(line: 32, column: 40, scope: !1030)
!1046 = !DILocation(line: 32, column: 50, scope: !1030)
!1047 = !DILocation(line: 32, column: 64, scope: !1030)
!1048 = !DILocation(line: 34, column: 12, scope: !1030)
!1049 = !DILocation(line: 34, column: 7, scope: !1030)
!1050 = !DILocation(line: 36, column: 10, scope: !1042)
!1051 = !DILocation(line: 36, column: 30, scope: !1042)
!1052 = !DILocation(line: 36, column: 24, scope: !1042)
!1053 = !DILocation(line: 40, column: 17, scope: !1041)
!1054 = !DILocation(line: 40, column: 11, scope: !1041)
!1055 = !DILocation(line: 41, column: 25, scope: !1041)
!1056 = !DILocation(line: 41, column: 11, scope: !1041)
!1057 = !DILocation(line: 42, column: 7, scope: !1041)
!1058 = !DILocation(line: 43, column: 13, scope: !1041)
!1059 = !DILocation(line: 0, scope: !1041)
!1060 = !DILocation(line: 46, column: 1, scope: !1030)
!1061 = distinct !DISubprogram(name: "file_name_concat", scope: !1062, file: !1062, line: 35, type: !1063, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !218, retainedNodes: !1065)
!1062 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!97, !31, !31, !740}
!1065 = !{!1066, !1067, !1068, !1069}
!1066 = !DILocalVariable(name: "dir", arg: 1, scope: !1061, file: !1062, line: 35, type: !31)
!1067 = !DILocalVariable(name: "base", arg: 2, scope: !1061, file: !1062, line: 35, type: !31)
!1068 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1061, file: !1062, line: 35, type: !740)
!1069 = !DILocalVariable(name: "p", scope: !1061, file: !1062, line: 37, type: !97)
!1070 = !DILocation(line: 35, column: 31, scope: !1061)
!1071 = !DILocation(line: 35, column: 48, scope: !1061)
!1072 = !DILocation(line: 35, column: 61, scope: !1061)
!1073 = !DILocation(line: 37, column: 13, scope: !1061)
!1074 = !DILocation(line: 37, column: 9, scope: !1061)
!1075 = !DILocation(line: 38, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1061, file: !1062, line: 38, column: 7)
!1077 = !DILocation(line: 38, column: 7, scope: !1061)
!1078 = !DILocation(line: 39, column: 5, scope: !1076)
!1079 = !DILocation(line: 40, column: 3, scope: !1061)
!1080 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1081, file: !1081, line: 47, type: !1063, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !221, retainedNodes: !1082)
!1081 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1083 = !DILocalVariable(name: "dir", arg: 1, scope: !1080, file: !1081, line: 47, type: !31)
!1084 = !DILocalVariable(name: "base", arg: 2, scope: !1080, file: !1081, line: 47, type: !31)
!1085 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1080, file: !1081, line: 47, type: !740)
!1086 = !DILocalVariable(name: "dirbase", scope: !1080, file: !1081, line: 49, type: !31)
!1087 = !DILocalVariable(name: "dirbaselen", scope: !1080, file: !1081, line: 50, type: !127)
!1088 = !DILocalVariable(name: "dirlen", scope: !1080, file: !1081, line: 51, type: !127)
!1089 = !DILocalVariable(name: "baselen", scope: !1080, file: !1081, line: 52, type: !127)
!1090 = !DILocalVariable(name: "sep", scope: !1080, file: !1081, line: 53, type: !33)
!1091 = !DILocalVariable(name: "p_concat", scope: !1080, file: !1081, line: 70, type: !97)
!1092 = !DILocalVariable(name: "p", scope: !1080, file: !1081, line: 71, type: !97)
!1093 = !DILocation(line: 47, column: 32, scope: !1080)
!1094 = !DILocation(line: 47, column: 49, scope: !1080)
!1095 = !DILocation(line: 47, column: 62, scope: !1080)
!1096 = !DILocation(line: 49, column: 25, scope: !1080)
!1097 = !DILocation(line: 49, column: 15, scope: !1080)
!1098 = !DILocation(line: 50, column: 23, scope: !1080)
!1099 = !DILocation(line: 50, column: 10, scope: !1080)
!1100 = !DILocation(line: 51, column: 27, scope: !1080)
!1101 = !DILocation(line: 51, column: 33, scope: !1080)
!1102 = !DILocation(line: 51, column: 10, scope: !1080)
!1103 = !DILocation(line: 52, column: 20, scope: !1080)
!1104 = !DILocation(line: 52, column: 10, scope: !1080)
!1105 = !DILocation(line: 53, column: 8, scope: !1080)
!1106 = !DILocation(line: 54, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1080, file: !1081, line: 54, column: 7)
!1108 = !DILocation(line: 54, column: 7, scope: !1080)
!1109 = !DILocation(line: 57, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !1081, line: 57, column: 11)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !1081, line: 55, column: 5)
!1112 = !{!694, !694, i64 0}
!1113 = !DILocation(line: 57, column: 39, scope: !1110)
!1114 = !DILocation(line: 57, column: 44, scope: !1110)
!1115 = !DILocation(line: 57, column: 11, scope: !1111)
!1116 = !DILocation(line: 60, column: 12, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1107, file: !1081, line: 60, column: 12)
!1118 = !DILocation(line: 60, column: 12, scope: !1107)
!1119 = !DILocation(line: 0, scope: !1080)
!1120 = !DILocation(line: 70, column: 42, scope: !1080)
!1121 = !DILocation(line: 70, column: 37, scope: !1080)
!1122 = !DILocation(line: 70, column: 35, scope: !1080)
!1123 = !DILocation(line: 70, column: 52, scope: !1080)
!1124 = !DILocation(line: 70, column: 62, scope: !1080)
!1125 = !DILocation(line: 70, column: 20, scope: !1080)
!1126 = !DILocation(line: 70, column: 9, scope: !1080)
!1127 = !DILocation(line: 73, column: 16, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1080, file: !1081, line: 73, column: 7)
!1129 = !DILocation(line: 73, column: 7, scope: !1080)
!1130 = !DILocalVariable(name: "__dest", arg: 1, scope: !1131, file: !1132, line: 45, type: !1135)
!1131 = distinct !DISubprogram(name: "mempcpy", scope: !1132, file: !1132, line: 45, type: !1133, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !221, retainedNodes: !1139)
!1132 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!34, !1135, !1136, !127}
!1135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!1136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1139 = !{!1130, !1140, !1141}
!1140 = !DILocalVariable(name: "__src", arg: 2, scope: !1131, file: !1132, line: 45, type: !1136)
!1141 = !DILocalVariable(name: "__len", arg: 3, scope: !1131, file: !1132, line: 45, type: !127)
!1142 = !DILocation(line: 45, column: 1, scope: !1131, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 76, column: 7, scope: !1080)
!1144 = !DILocation(line: 48, column: 57, scope: !1131, inlinedAt: !1143)
!1145 = !DILocation(line: 48, column: 10, scope: !1131, inlinedAt: !1143)
!1146 = !DILocation(line: 71, column: 9, scope: !1080)
!1147 = !DILocation(line: 77, column: 6, scope: !1080)
!1148 = !DILocation(line: 78, column: 5, scope: !1080)
!1149 = !DILocation(line: 80, column: 7, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1080, file: !1081, line: 80, column: 7)
!1151 = !DILocation(line: 80, column: 7, scope: !1080)
!1152 = !DILocation(line: 81, column: 21, scope: !1150)
!1153 = !DILocation(line: 81, column: 5, scope: !1150)
!1154 = !DILocation(line: 45, column: 1, scope: !1131, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 83, column: 7, scope: !1080)
!1156 = !DILocation(line: 48, column: 57, scope: !1131, inlinedAt: !1155)
!1157 = !DILocation(line: 48, column: 10, scope: !1131, inlinedAt: !1155)
!1158 = !DILocation(line: 84, column: 6, scope: !1080)
!1159 = !DILocation(line: 86, column: 3, scope: !1080)
!1160 = !DILocation(line: 87, column: 1, scope: !1080)
!1161 = distinct !DISubprogram(name: "parse_long_options", scope: !81, file: !81, line: 44, type: !1162, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !40, !740, !31, !31, !31, !37, null}
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1165 = !DILocalVariable(name: "argc", arg: 1, scope: !1161, file: !81, line: 44, type: !40)
!1166 = !DILocalVariable(name: "argv", arg: 2, scope: !1161, file: !81, line: 45, type: !740)
!1167 = !DILocalVariable(name: "command_name", arg: 3, scope: !1161, file: !81, line: 46, type: !31)
!1168 = !DILocalVariable(name: "package", arg: 4, scope: !1161, file: !81, line: 47, type: !31)
!1169 = !DILocalVariable(name: "version", arg: 5, scope: !1161, file: !81, line: 48, type: !31)
!1170 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1161, file: !81, line: 49, type: !37)
!1171 = !DILocalVariable(name: "c", scope: !1161, file: !81, line: 52, type: !40)
!1172 = !DILocalVariable(name: "saved_opterr", scope: !1161, file: !81, line: 53, type: !40)
!1173 = !DILocalVariable(name: "authors", scope: !1174, file: !81, line: 71, type: !1178)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !81, line: 70, column: 11)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !81, line: 64, column: 9)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !81, line: 62, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1161, file: !81, line: 60, column: 7)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1179, line: 52, baseType: !1180)
!1179 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !195, line: 48, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !79, line: 71, baseType: !1182)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 192, elements: !52)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !79, line: 71, size: 192, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1183, file: !79, line: 71, baseType: !6, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1183, file: !79, line: 71, baseType: !6, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1183, file: !79, line: 71, baseType: !34, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1183, file: !79, line: 71, baseType: !34, size: 64, offset: 128)
!1189 = !DILocation(line: 44, column: 25, scope: !1161)
!1190 = !DILocation(line: 45, column: 28, scope: !1161)
!1191 = !DILocation(line: 46, column: 33, scope: !1161)
!1192 = !DILocation(line: 47, column: 33, scope: !1161)
!1193 = !DILocation(line: 48, column: 33, scope: !1161)
!1194 = !DILocation(line: 49, column: 28, scope: !1161)
!1195 = !DILocation(line: 55, column: 18, scope: !1161)
!1196 = !DILocation(line: 53, column: 7, scope: !1161)
!1197 = !DILocation(line: 58, column: 10, scope: !1161)
!1198 = !DILocation(line: 60, column: 12, scope: !1177)
!1199 = !DILocation(line: 61, column: 7, scope: !1177)
!1200 = !DILocation(line: 61, column: 15, scope: !1177)
!1201 = !DILocation(line: 52, column: 7, scope: !1161)
!1202 = !DILocation(line: 60, column: 7, scope: !1161)
!1203 = !DILocation(line: 66, column: 11, scope: !1175)
!1204 = !DILocation(line: 67, column: 11, scope: !1175)
!1205 = !DILocation(line: 71, column: 13, scope: !1174)
!1206 = !DILocation(line: 71, column: 21, scope: !1174)
!1207 = !DILocation(line: 72, column: 13, scope: !1174)
!1208 = !DILocation(line: 73, column: 29, scope: !1174)
!1209 = !DILocation(line: 73, column: 13, scope: !1174)
!1210 = !DILocation(line: 74, column: 13, scope: !1174)
!1211 = !DILocation(line: 84, column: 10, scope: !1161)
!1212 = !DILocation(line: 88, column: 10, scope: !1161)
!1213 = !DILocation(line: 89, column: 1, scope: !1161)
!1214 = distinct !DISubprogram(name: "set_program_name", scope: !99, file: !99, line: 39, type: !667, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !94, retainedNodes: !1215)
!1215 = !{!1216, !1217, !1218}
!1216 = !DILocalVariable(name: "argv0", arg: 1, scope: !1214, file: !99, line: 39, type: !31)
!1217 = !DILocalVariable(name: "slash", scope: !1214, file: !99, line: 46, type: !31)
!1218 = !DILocalVariable(name: "base", scope: !1214, file: !99, line: 47, type: !31)
!1219 = !DILocation(line: 39, column: 31, scope: !1214)
!1220 = !DILocation(line: 51, column: 13, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1214, file: !99, line: 51, column: 7)
!1222 = !DILocation(line: 51, column: 7, scope: !1214)
!1223 = !DILocation(line: 55, column: 14, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !99, line: 52, column: 5)
!1225 = !DILocation(line: 54, column: 7, scope: !1224)
!1226 = !DILocation(line: 56, column: 7, scope: !1224)
!1227 = !DILocation(line: 59, column: 11, scope: !1214)
!1228 = !DILocation(line: 46, column: 15, scope: !1214)
!1229 = !DILocation(line: 60, column: 17, scope: !1214)
!1230 = !DILocation(line: 60, column: 33, scope: !1214)
!1231 = !DILocation(line: 60, column: 11, scope: !1214)
!1232 = !DILocation(line: 47, column: 15, scope: !1214)
!1233 = !DILocation(line: 61, column: 12, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1214, file: !99, line: 61, column: 7)
!1235 = !DILocation(line: 61, column: 20, scope: !1234)
!1236 = !DILocation(line: 61, column: 25, scope: !1234)
!1237 = !DILocation(line: 61, column: 42, scope: !1234)
!1238 = !DILocation(line: 61, column: 28, scope: !1234)
!1239 = !DILocation(line: 61, column: 61, scope: !1234)
!1240 = !DILocation(line: 61, column: 7, scope: !1214)
!1241 = !DILocation(line: 64, column: 11, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !99, line: 64, column: 11)
!1243 = distinct !DILexicalBlock(scope: !1234, file: !99, line: 62, column: 5)
!1244 = !DILocation(line: 64, column: 36, scope: !1242)
!1245 = !DILocation(line: 64, column: 11, scope: !1243)
!1246 = !DILocation(line: 66, column: 24, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !99, line: 65, column: 9)
!1248 = !DILocation(line: 70, column: 41, scope: !1247)
!1249 = !DILocation(line: 72, column: 9, scope: !1247)
!1250 = !DILocation(line: 84, column: 16, scope: !1214)
!1251 = !DILocation(line: 90, column: 27, scope: !1214)
!1252 = !DILocation(line: 92, column: 1, scope: !1214)
!1253 = distinct !DISubprogram(name: "clone_quoting_options", scope: !133, file: !133, line: 122, type: !1254, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1257)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!1256, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1257 = !{!1258, !1259, !1260}
!1258 = !DILocalVariable(name: "o", arg: 1, scope: !1253, file: !133, line: 122, type: !1256)
!1259 = !DILocalVariable(name: "e", scope: !1253, file: !133, line: 124, type: !40)
!1260 = !DILocalVariable(name: "p", scope: !1253, file: !133, line: 125, type: !1256)
!1261 = !DILocation(line: 122, column: 48, scope: !1253)
!1262 = !DILocation(line: 124, column: 11, scope: !1253)
!1263 = !DILocation(line: 124, column: 7, scope: !1253)
!1264 = !DILocation(line: 125, column: 40, scope: !1253)
!1265 = !DILocation(line: 125, column: 31, scope: !1253)
!1266 = !DILocation(line: 125, column: 27, scope: !1253)
!1267 = !DILocation(line: 127, column: 9, scope: !1253)
!1268 = !DILocation(line: 128, column: 3, scope: !1253)
!1269 = distinct !DISubprogram(name: "get_quoting_style", scope: !133, file: !133, line: 133, type: !1270, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1274)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!16, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "o", arg: 1, scope: !1269, file: !133, line: 133, type: !1272)
!1276 = !DILocation(line: 133, column: 50, scope: !1269)
!1277 = !DILocation(line: 135, column: 11, scope: !1269)
!1278 = !DILocation(line: 135, column: 46, scope: !1269)
!1279 = !{!1280, !694, i64 0}
!1280 = !{!"quoting_options", !694, i64 0, !791, i64 4, !694, i64 8, !693, i64 40, !693, i64 48}
!1281 = !DILocation(line: 135, column: 3, scope: !1269)
!1282 = distinct !DISubprogram(name: "set_quoting_style", scope: !133, file: !133, line: 141, type: !1283, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1256, !16}
!1285 = !{!1286, !1287}
!1286 = !DILocalVariable(name: "o", arg: 1, scope: !1282, file: !133, line: 141, type: !1256)
!1287 = !DILocalVariable(name: "s", arg: 2, scope: !1282, file: !133, line: 141, type: !16)
!1288 = !DILocation(line: 141, column: 44, scope: !1282)
!1289 = !DILocation(line: 141, column: 66, scope: !1282)
!1290 = !DILocation(line: 143, column: 4, scope: !1282)
!1291 = !DILocation(line: 143, column: 39, scope: !1282)
!1292 = !DILocation(line: 143, column: 45, scope: !1282)
!1293 = !DILocation(line: 144, column: 1, scope: !1282)
!1294 = distinct !DISubprogram(name: "set_char_quoting", scope: !133, file: !133, line: 152, type: !1295, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!40, !1256, !33, !40}
!1297 = !{!1298, !1299, !1300, !1301, !1303, !1305, !1306}
!1298 = !DILocalVariable(name: "o", arg: 1, scope: !1294, file: !133, line: 152, type: !1256)
!1299 = !DILocalVariable(name: "c", arg: 2, scope: !1294, file: !133, line: 152, type: !33)
!1300 = !DILocalVariable(name: "i", arg: 3, scope: !1294, file: !133, line: 152, type: !40)
!1301 = !DILocalVariable(name: "uc", scope: !1294, file: !133, line: 154, type: !1302)
!1302 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1303 = !DILocalVariable(name: "p", scope: !1294, file: !133, line: 155, type: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1305 = !DILocalVariable(name: "shift", scope: !1294, file: !133, line: 157, type: !40)
!1306 = !DILocalVariable(name: "r", scope: !1294, file: !133, line: 158, type: !40)
!1307 = !DILocation(line: 152, column: 43, scope: !1294)
!1308 = !DILocation(line: 152, column: 51, scope: !1294)
!1309 = !DILocation(line: 152, column: 58, scope: !1294)
!1310 = !DILocation(line: 154, column: 17, scope: !1294)
!1311 = !DILocation(line: 156, column: 6, scope: !1294)
!1312 = !DILocation(line: 156, column: 62, scope: !1294)
!1313 = !DILocation(line: 156, column: 57, scope: !1294)
!1314 = !DILocation(line: 155, column: 17, scope: !1294)
!1315 = !DILocation(line: 157, column: 15, scope: !1294)
!1316 = !DILocation(line: 157, column: 7, scope: !1294)
!1317 = !DILocation(line: 158, column: 12, scope: !1294)
!1318 = !DILocation(line: 158, column: 15, scope: !1294)
!1319 = !DILocation(line: 158, column: 25, scope: !1294)
!1320 = !DILocation(line: 158, column: 7, scope: !1294)
!1321 = !DILocation(line: 159, column: 13, scope: !1294)
!1322 = !DILocation(line: 159, column: 18, scope: !1294)
!1323 = !DILocation(line: 159, column: 23, scope: !1294)
!1324 = !DILocation(line: 159, column: 6, scope: !1294)
!1325 = !DILocation(line: 160, column: 3, scope: !1294)
!1326 = distinct !DISubprogram(name: "set_quoting_flags", scope: !133, file: !133, line: 168, type: !1327, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1329)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!40, !1256, !40}
!1329 = !{!1330, !1331, !1332}
!1330 = !DILocalVariable(name: "o", arg: 1, scope: !1326, file: !133, line: 168, type: !1256)
!1331 = !DILocalVariable(name: "i", arg: 2, scope: !1326, file: !133, line: 168, type: !40)
!1332 = !DILocalVariable(name: "r", scope: !1326, file: !133, line: 170, type: !40)
!1333 = !DILocation(line: 168, column: 44, scope: !1326)
!1334 = !DILocation(line: 168, column: 51, scope: !1326)
!1335 = !DILocation(line: 171, column: 8, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1326, file: !133, line: 171, column: 7)
!1337 = !DILocation(line: 171, column: 7, scope: !1326)
!1338 = !DILocation(line: 173, column: 10, scope: !1326)
!1339 = !{!1280, !791, i64 4}
!1340 = !DILocation(line: 170, column: 7, scope: !1326)
!1341 = !DILocation(line: 174, column: 12, scope: !1326)
!1342 = !DILocation(line: 175, column: 3, scope: !1326)
!1343 = distinct !DISubprogram(name: "set_custom_quoting", scope: !133, file: !133, line: 179, type: !1344, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1256, !31, !31}
!1346 = !{!1347, !1348, !1349}
!1347 = !DILocalVariable(name: "o", arg: 1, scope: !1343, file: !133, line: 179, type: !1256)
!1348 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1343, file: !133, line: 180, type: !31)
!1349 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1343, file: !133, line: 180, type: !31)
!1350 = !DILocation(line: 179, column: 45, scope: !1343)
!1351 = !DILocation(line: 180, column: 33, scope: !1343)
!1352 = !DILocation(line: 180, column: 57, scope: !1343)
!1353 = !DILocation(line: 182, column: 8, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1343, file: !133, line: 182, column: 7)
!1355 = !DILocation(line: 182, column: 7, scope: !1343)
!1356 = !DILocation(line: 184, column: 6, scope: !1343)
!1357 = !DILocation(line: 184, column: 12, scope: !1343)
!1358 = !DILocation(line: 185, column: 8, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1343, file: !133, line: 185, column: 7)
!1360 = !DILocation(line: 185, column: 23, scope: !1359)
!1361 = !DILocation(line: 185, column: 19, scope: !1359)
!1362 = !DILocation(line: 186, column: 5, scope: !1359)
!1363 = !DILocation(line: 187, column: 6, scope: !1343)
!1364 = !DILocation(line: 187, column: 17, scope: !1343)
!1365 = !{!1280, !693, i64 40}
!1366 = !DILocation(line: 188, column: 6, scope: !1343)
!1367 = !DILocation(line: 188, column: 18, scope: !1343)
!1368 = !{!1280, !693, i64 48}
!1369 = !DILocation(line: 189, column: 1, scope: !1343)
!1370 = distinct !DISubprogram(name: "quotearg_buffer", scope: !133, file: !133, line: 784, type: !1371, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!127, !97, !127, !31, !127, !1272}
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1374 = !DILocalVariable(name: "buffer", arg: 1, scope: !1370, file: !133, line: 784, type: !97)
!1375 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1370, file: !133, line: 784, type: !127)
!1376 = !DILocalVariable(name: "arg", arg: 3, scope: !1370, file: !133, line: 785, type: !31)
!1377 = !DILocalVariable(name: "argsize", arg: 4, scope: !1370, file: !133, line: 785, type: !127)
!1378 = !DILocalVariable(name: "o", arg: 5, scope: !1370, file: !133, line: 786, type: !1272)
!1379 = !DILocalVariable(name: "p", scope: !1370, file: !133, line: 788, type: !1272)
!1380 = !DILocalVariable(name: "e", scope: !1370, file: !133, line: 789, type: !40)
!1381 = !DILocalVariable(name: "r", scope: !1370, file: !133, line: 790, type: !127)
!1382 = !DILocation(line: 784, column: 24, scope: !1370)
!1383 = !DILocation(line: 784, column: 39, scope: !1370)
!1384 = !DILocation(line: 785, column: 30, scope: !1370)
!1385 = !DILocation(line: 785, column: 42, scope: !1370)
!1386 = !DILocation(line: 786, column: 48, scope: !1370)
!1387 = !DILocation(line: 788, column: 37, scope: !1370)
!1388 = !DILocation(line: 788, column: 33, scope: !1370)
!1389 = !DILocation(line: 789, column: 11, scope: !1370)
!1390 = !DILocation(line: 789, column: 7, scope: !1370)
!1391 = !DILocation(line: 791, column: 43, scope: !1370)
!1392 = !DILocation(line: 791, column: 53, scope: !1370)
!1393 = !DILocation(line: 791, column: 60, scope: !1370)
!1394 = !DILocation(line: 792, column: 43, scope: !1370)
!1395 = !DILocation(line: 792, column: 58, scope: !1370)
!1396 = !DILocation(line: 790, column: 14, scope: !1370)
!1397 = !DILocation(line: 790, column: 10, scope: !1370)
!1398 = !DILocation(line: 793, column: 9, scope: !1370)
!1399 = !DILocation(line: 794, column: 3, scope: !1370)
!1400 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !133, file: !133, line: 256, type: !1401, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1405)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!127, !97, !127, !31, !127, !16, !40, !1403, !31, !31}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1430, !1431, !1432, !1433, !1434, !1437, !1438, !1456, !1459, !1460, !1467}
!1406 = !DILocalVariable(name: "buffer", arg: 1, scope: !1400, file: !133, line: 256, type: !97)
!1407 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1400, file: !133, line: 256, type: !127)
!1408 = !DILocalVariable(name: "arg", arg: 3, scope: !1400, file: !133, line: 257, type: !31)
!1409 = !DILocalVariable(name: "argsize", arg: 4, scope: !1400, file: !133, line: 257, type: !127)
!1410 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1400, file: !133, line: 258, type: !16)
!1411 = !DILocalVariable(name: "flags", arg: 6, scope: !1400, file: !133, line: 258, type: !40)
!1412 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1400, file: !133, line: 259, type: !1403)
!1413 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1400, file: !133, line: 260, type: !31)
!1414 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1400, file: !133, line: 261, type: !31)
!1415 = !DILocalVariable(name: "i", scope: !1400, file: !133, line: 263, type: !127)
!1416 = !DILocalVariable(name: "len", scope: !1400, file: !133, line: 264, type: !127)
!1417 = !DILocalVariable(name: "orig_buffersize", scope: !1400, file: !133, line: 265, type: !127)
!1418 = !DILocalVariable(name: "quote_string", scope: !1400, file: !133, line: 266, type: !31)
!1419 = !DILocalVariable(name: "quote_string_len", scope: !1400, file: !133, line: 267, type: !127)
!1420 = !DILocalVariable(name: "backslash_escapes", scope: !1400, file: !133, line: 268, type: !68)
!1421 = !DILocalVariable(name: "unibyte_locale", scope: !1400, file: !133, line: 269, type: !68)
!1422 = !DILocalVariable(name: "elide_outer_quotes", scope: !1400, file: !133, line: 270, type: !68)
!1423 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1400, file: !133, line: 271, type: !68)
!1424 = !DILocalVariable(name: "encountered_single_quote", scope: !1400, file: !133, line: 272, type: !68)
!1425 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1400, file: !133, line: 273, type: !68)
!1426 = !DILocalVariable(name: "c", scope: !1427, file: !133, line: 402, type: !1302)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !133, line: 401, column: 5)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !133, line: 400, column: 3)
!1429 = distinct !DILexicalBlock(scope: !1400, file: !133, line: 400, column: 3)
!1430 = !DILocalVariable(name: "esc", scope: !1427, file: !133, line: 403, type: !1302)
!1431 = !DILocalVariable(name: "is_right_quote", scope: !1427, file: !133, line: 404, type: !68)
!1432 = !DILocalVariable(name: "escaping", scope: !1427, file: !133, line: 405, type: !68)
!1433 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1427, file: !133, line: 406, type: !68)
!1434 = !DILocalVariable(name: "m", scope: !1435, file: !133, line: 610, type: !127)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 608, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !133, line: 426, column: 9)
!1437 = !DILocalVariable(name: "printable", scope: !1435, file: !133, line: 612, type: !68)
!1438 = !DILocalVariable(name: "mbstate", scope: !1439, file: !133, line: 621, type: !1441)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !133, line: 620, column: 15)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !133, line: 614, column: 17)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1442, line: 6, baseType: !1443)
!1442 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1444, line: 21, baseType: !1445)
!1444 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1444, line: 13, size: 64, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1445, file: !1444, line: 15, baseType: !40, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1445, file: !1444, line: 20, baseType: !1449, size: 32, offset: 32)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1444, line: 16, size: 32, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1449, file: !1444, line: 18, baseType: !6, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1449, file: !1444, line: 19, baseType: !1453, size: 32)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !1454)
!1454 = !{!1455}
!1455 = !DISubrange(count: 4)
!1456 = !DILocalVariable(name: "w", scope: !1457, file: !133, line: 631, type: !1458)
!1457 = distinct !DILexicalBlock(scope: !1439, file: !133, line: 630, column: 19)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !128, line: 90, baseType: !40)
!1459 = !DILocalVariable(name: "bytes", scope: !1457, file: !133, line: 632, type: !127)
!1460 = !DILocalVariable(name: "j", scope: !1461, file: !133, line: 657, type: !127)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !133, line: 656, column: 27)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !133, line: 654, column: 29)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 649, column: 23)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !133, line: 641, column: 30)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !133, line: 636, column: 30)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !133, line: 634, column: 25)
!1467 = !DILocalVariable(name: "ilim", scope: !1468, file: !133, line: 684, type: !127)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !133, line: 681, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1435, file: !133, line: 680, column: 17)
!1470 = !DILocation(line: 256, column: 33, scope: !1400)
!1471 = !DILocation(line: 256, column: 48, scope: !1400)
!1472 = !DILocation(line: 257, column: 39, scope: !1400)
!1473 = !DILocation(line: 257, column: 51, scope: !1400)
!1474 = !DILocation(line: 258, column: 46, scope: !1400)
!1475 = !DILocation(line: 258, column: 65, scope: !1400)
!1476 = !DILocation(line: 259, column: 47, scope: !1400)
!1477 = !DILocation(line: 260, column: 39, scope: !1400)
!1478 = !DILocation(line: 261, column: 39, scope: !1400)
!1479 = !DILocation(line: 264, column: 10, scope: !1400)
!1480 = !DILocation(line: 265, column: 10, scope: !1400)
!1481 = !DILocation(line: 266, column: 15, scope: !1400)
!1482 = !DILocation(line: 267, column: 10, scope: !1400)
!1483 = !DILocation(line: 268, column: 8, scope: !1400)
!1484 = !DILocation(line: 269, column: 25, scope: !1400)
!1485 = !DILocation(line: 269, column: 36, scope: !1400)
!1486 = !DILocation(line: 270, column: 8, scope: !1400)
!1487 = !DILocation(line: 271, column: 8, scope: !1400)
!1488 = !DILocation(line: 272, column: 8, scope: !1400)
!1489 = !DILocation(line: 273, column: 8, scope: !1400)
!1490 = !DILocation(line: 273, column: 3, scope: !1400)
!1491 = !DILocation(line: 0, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1400, file: !133, line: 317, column: 5)
!1493 = !DILocation(line: 316, column: 3, scope: !1400)
!1494 = !DILocation(line: 323, column: 11, scope: !1492)
!1495 = !DILocation(line: 323, column: 12, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !133, line: 323, column: 11)
!1497 = !DILocation(line: 324, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !133, line: 324, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !133, line: 324, column: 9)
!1500 = !DILocation(line: 324, column: 9, scope: !1499)
!1501 = !DILocation(line: 362, column: 26, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !133, line: 340, column: 11)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !133, line: 339, column: 13)
!1504 = distinct !DILexicalBlock(scope: !1492, file: !133, line: 338, column: 7)
!1505 = !DILocation(line: 363, column: 27, scope: !1502)
!1506 = !DILocation(line: 364, column: 11, scope: !1502)
!1507 = !DILocation(line: 365, column: 14, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !133, line: 365, column: 13)
!1509 = !DILocation(line: 365, column: 13, scope: !1504)
!1510 = !DILocation(line: 366, column: 43, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !133, line: 366, column: 11)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !133, line: 366, column: 11)
!1513 = !DILocation(line: 366, column: 11, scope: !1512)
!1514 = !DILocation(line: 367, column: 13, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !133, line: 367, column: 13)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !133, line: 367, column: 13)
!1517 = !DILocation(line: 367, column: 13, scope: !1516)
!1518 = !DILocation(line: 366, column: 70, scope: !1511)
!1519 = distinct !{!1519, !1513, !1520}
!1520 = !DILocation(line: 367, column: 13, scope: !1512)
!1521 = !DILocation(line: 370, column: 28, scope: !1504)
!1522 = !DILocation(line: 372, column: 7, scope: !1492)
!1523 = !DILocation(line: 376, column: 7, scope: !1492)
!1524 = !DILocation(line: 379, column: 7, scope: !1492)
!1525 = !DILocation(line: 381, column: 12, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1492, file: !133, line: 381, column: 11)
!1527 = !DILocation(line: 381, column: 11, scope: !1492)
!1528 = !DILocation(line: 0, scope: !1526)
!1529 = !DILocation(line: 386, column: 12, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1492, file: !133, line: 386, column: 11)
!1531 = !DILocation(line: 386, column: 11, scope: !1492)
!1532 = !DILocation(line: 387, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !133, line: 387, column: 9)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !133, line: 387, column: 9)
!1535 = !DILocation(line: 387, column: 9, scope: !1534)
!1536 = !DILocation(line: 394, column: 7, scope: !1492)
!1537 = !DILocation(line: 397, column: 7, scope: !1492)
!1538 = !DILocation(line: 0, scope: !1400)
!1539 = !DILocation(line: 263, column: 10, scope: !1400)
!1540 = !DILocation(line: 400, column: 8, scope: !1429)
!1541 = !DILocation(line: 0, scope: !1428)
!1542 = !DILocation(line: 400, column: 27, scope: !1428)
!1543 = !DILocation(line: 400, column: 19, scope: !1428)
!1544 = !DILocation(line: 400, column: 41, scope: !1428)
!1545 = !DILocation(line: 400, column: 48, scope: !1428)
!1546 = !DILocation(line: 400, column: 3, scope: !1429)
!1547 = !DILocation(line: 400, column: 60, scope: !1428)
!1548 = !DILocation(line: 404, column: 12, scope: !1427)
!1549 = !DILocation(line: 405, column: 12, scope: !1427)
!1550 = !DILocation(line: 406, column: 12, scope: !1427)
!1551 = !DILocation(line: 409, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1427, file: !133, line: 408, column: 11)
!1553 = !DILocation(line: 411, column: 17, scope: !1552)
!1554 = !DILocation(line: 412, column: 39, scope: !1552)
!1555 = !DILocation(line: 416, column: 32, scope: !1552)
!1556 = !DILocation(line: 412, column: 19, scope: !1552)
!1557 = !DILocation(line: 412, column: 15, scope: !1552)
!1558 = !DILocation(line: 417, column: 11, scope: !1552)
!1559 = !DILocation(line: 417, column: 26, scope: !1552)
!1560 = !DILocation(line: 417, column: 14, scope: !1552)
!1561 = !DILocation(line: 417, column: 63, scope: !1552)
!1562 = !DILocation(line: 408, column: 11, scope: !1427)
!1563 = !DILocation(line: 0, scope: !1427)
!1564 = !DILocation(line: 424, column: 11, scope: !1427)
!1565 = !DILocation(line: 402, column: 21, scope: !1427)
!1566 = !DILocation(line: 425, column: 7, scope: !1427)
!1567 = !DILocation(line: 428, column: 15, scope: !1436)
!1568 = !DILocation(line: 430, column: 15, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !133, line: 430, column: 15)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !133, line: 429, column: 13)
!1571 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 428, column: 15)
!1572 = !DILocation(line: 430, column: 15, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !133, line: 430, column: 15)
!1574 = !DILocation(line: 430, column: 15, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !133, line: 430, column: 15)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !133, line: 430, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !133, line: 430, column: 15)
!1578 = !DILocation(line: 430, column: 15, scope: !1576)
!1579 = !DILocation(line: 430, column: 15, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !133, line: 430, column: 15)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !133, line: 430, column: 15)
!1582 = !DILocation(line: 430, column: 15, scope: !1581)
!1583 = !DILocation(line: 430, column: 15, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !133, line: 430, column: 15)
!1585 = distinct !DILexicalBlock(scope: !1577, file: !133, line: 430, column: 15)
!1586 = !DILocation(line: 430, column: 15, scope: !1585)
!1587 = !DILocation(line: 430, column: 15, scope: !1577)
!1588 = !DILocation(line: 430, column: 15, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !133, line: 430, column: 15)
!1590 = distinct !DILexicalBlock(scope: !1569, file: !133, line: 430, column: 15)
!1591 = !DILocation(line: 430, column: 15, scope: !1590)
!1592 = !DILocation(line: 438, column: 19, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1570, file: !133, line: 437, column: 19)
!1594 = !DILocation(line: 438, column: 24, scope: !1593)
!1595 = !DILocation(line: 438, column: 28, scope: !1593)
!1596 = !DILocation(line: 438, column: 38, scope: !1593)
!1597 = !DILocation(line: 438, column: 48, scope: !1593)
!1598 = !DILocation(line: 438, column: 59, scope: !1593)
!1599 = !DILocation(line: 440, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !133, line: 440, column: 19)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !133, line: 440, column: 19)
!1602 = distinct !DILexicalBlock(scope: !1593, file: !133, line: 439, column: 17)
!1603 = !DILocation(line: 440, column: 19, scope: !1601)
!1604 = !DILocation(line: 441, column: 19, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !133, line: 441, column: 19)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !133, line: 441, column: 19)
!1607 = !DILocation(line: 441, column: 19, scope: !1606)
!1608 = !DILocation(line: 442, column: 17, scope: !1602)
!1609 = !DILocation(line: 449, column: 20, scope: !1571)
!1610 = !DILocation(line: 454, column: 11, scope: !1436)
!1611 = !DILocation(line: 457, column: 19, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 455, column: 13)
!1613 = !DILocation(line: 463, column: 19, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !133, line: 462, column: 19)
!1615 = !DILocation(line: 463, column: 24, scope: !1614)
!1616 = !DILocation(line: 463, column: 28, scope: !1614)
!1617 = !DILocation(line: 463, column: 38, scope: !1614)
!1618 = !DILocation(line: 463, column: 47, scope: !1614)
!1619 = !DILocation(line: 463, column: 41, scope: !1614)
!1620 = !DILocation(line: 463, column: 52, scope: !1614)
!1621 = !DILocation(line: 462, column: 19, scope: !1612)
!1622 = !DILocation(line: 464, column: 25, scope: !1614)
!1623 = !DILocation(line: 464, column: 17, scope: !1614)
!1624 = !DILocation(line: 471, column: 25, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1614, file: !133, line: 465, column: 19)
!1626 = !DILocation(line: 475, column: 21, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !133, line: 475, column: 21)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !133, line: 475, column: 21)
!1629 = !DILocation(line: 475, column: 21, scope: !1628)
!1630 = !DILocation(line: 476, column: 21, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !133, line: 476, column: 21)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !133, line: 476, column: 21)
!1633 = !DILocation(line: 476, column: 21, scope: !1632)
!1634 = !DILocation(line: 477, column: 21, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !133, line: 477, column: 21)
!1636 = distinct !DILexicalBlock(scope: !1625, file: !133, line: 477, column: 21)
!1637 = !DILocation(line: 477, column: 21, scope: !1636)
!1638 = !DILocation(line: 478, column: 21, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !133, line: 478, column: 21)
!1640 = distinct !DILexicalBlock(scope: !1625, file: !133, line: 478, column: 21)
!1641 = !DILocation(line: 478, column: 21, scope: !1640)
!1642 = !DILocation(line: 479, column: 21, scope: !1625)
!1643 = !DILocation(line: 403, column: 21, scope: !1427)
!1644 = !DILocation(line: 492, column: 31, scope: !1436)
!1645 = !DILocation(line: 493, column: 31, scope: !1436)
!1646 = !DILocation(line: 495, column: 31, scope: !1436)
!1647 = !DILocation(line: 496, column: 31, scope: !1436)
!1648 = !DILocation(line: 497, column: 31, scope: !1436)
!1649 = !DILocation(line: 500, column: 15, scope: !1436)
!1650 = !DILocation(line: 502, column: 19, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !133, line: 501, column: 13)
!1652 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 500, column: 15)
!1653 = !DILocation(line: 509, column: 33, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 509, column: 15)
!1655 = !DILocation(line: 0, scope: !1436)
!1656 = !DILocation(line: 514, column: 15, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 513, column: 15)
!1658 = !DILocation(line: 518, column: 15, scope: !1436)
!1659 = !DILocation(line: 526, column: 26, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 526, column: 15)
!1661 = !DILocation(line: 526, column: 15, scope: !1436)
!1662 = !DILocation(line: 526, column: 40, scope: !1660)
!1663 = !DILocation(line: 526, column: 47, scope: !1660)
!1664 = !DILocation(line: 530, column: 17, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 530, column: 15)
!1666 = !DILocation(line: 526, column: 18, scope: !1660)
!1667 = !DILocation(line: 526, column: 65, scope: !1660)
!1668 = !DILocation(line: 530, column: 15, scope: !1436)
!1669 = !DILocation(line: 535, column: 11, scope: !1436)
!1670 = !DILocation(line: 549, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 548, column: 15)
!1672 = !DILocation(line: 556, column: 15, scope: !1436)
!1673 = !DILocation(line: 558, column: 19, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !133, line: 557, column: 13)
!1675 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 556, column: 15)
!1676 = !DILocation(line: 561, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !133, line: 561, column: 19)
!1678 = !DILocation(line: 561, column: 35, scope: !1677)
!1679 = !DILocation(line: 561, column: 30, scope: !1677)
!1680 = !DILocation(line: 570, column: 15, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !133, line: 570, column: 15)
!1682 = distinct !DILexicalBlock(scope: !1674, file: !133, line: 570, column: 15)
!1683 = !DILocation(line: 570, column: 15, scope: !1682)
!1684 = !DILocation(line: 571, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !133, line: 571, column: 15)
!1686 = distinct !DILexicalBlock(scope: !1674, file: !133, line: 571, column: 15)
!1687 = !DILocation(line: 571, column: 15, scope: !1686)
!1688 = !DILocation(line: 572, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !133, line: 572, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1674, file: !133, line: 572, column: 15)
!1691 = !DILocation(line: 572, column: 15, scope: !1690)
!1692 = !DILocation(line: 574, column: 13, scope: !1674)
!1693 = !DILocation(line: 614, column: 17, scope: !1435)
!1694 = !DILocation(line: 610, column: 20, scope: !1435)
!1695 = !DILocation(line: 617, column: 29, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1440, file: !133, line: 615, column: 15)
!1697 = !{!957, !957, i64 0}
!1698 = !DILocation(line: 617, column: 27, scope: !1696)
!1699 = !DILocation(line: 612, column: 18, scope: !1435)
!1700 = !DILocation(line: 618, column: 15, scope: !1696)
!1701 = !DILocation(line: 621, column: 17, scope: !1439)
!1702 = !DILocation(line: 622, column: 17, scope: !1439)
!1703 = !DILocation(line: 626, column: 29, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1439, file: !133, line: 626, column: 21)
!1705 = !DILocation(line: 626, column: 21, scope: !1439)
!1706 = !DILocation(line: 627, column: 29, scope: !1704)
!1707 = !DILocation(line: 627, column: 19, scope: !1704)
!1708 = !DILocation(line: 0, scope: !1552)
!1709 = !DILocation(line: 629, column: 17, scope: !1439)
!1710 = !DILocation(line: 624, column: 19, scope: !1439)
!1711 = !DILocation(line: 625, column: 27, scope: !1439)
!1712 = !DILocation(line: 631, column: 21, scope: !1457)
!1713 = !DILocation(line: 632, column: 56, scope: !1457)
!1714 = !DILocation(line: 632, column: 50, scope: !1457)
!1715 = !DILocation(line: 633, column: 53, scope: !1457)
!1716 = !DILocation(line: 621, column: 27, scope: !1439)
!1717 = !DILocation(line: 631, column: 29, scope: !1457)
!1718 = !DILocation(line: 632, column: 36, scope: !1457)
!1719 = !DILocation(line: 632, column: 28, scope: !1457)
!1720 = !DILocation(line: 634, column: 25, scope: !1457)
!1721 = !DILocation(line: 644, column: 38, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1464, file: !133, line: 642, column: 23)
!1723 = !DILocation(line: 644, column: 48, scope: !1722)
!1724 = !DILocation(line: 644, column: 51, scope: !1722)
!1725 = !DILocation(line: 644, column: 25, scope: !1722)
!1726 = !DILocation(line: 645, column: 28, scope: !1722)
!1727 = !DILocation(line: 644, column: 34, scope: !1722)
!1728 = distinct !{!1728, !1725, !1726}
!1729 = !DILocation(line: 658, column: 43, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !133, line: 658, column: 29)
!1731 = distinct !DILexicalBlock(scope: !1461, file: !133, line: 658, column: 29)
!1732 = !DILocation(line: 655, column: 29, scope: !1462)
!1733 = !DILocation(line: 657, column: 36, scope: !1461)
!1734 = !DILocation(line: 659, column: 49, scope: !1730)
!1735 = !DILocation(line: 659, column: 39, scope: !1730)
!1736 = !DILocation(line: 659, column: 31, scope: !1730)
!1737 = !DILocation(line: 658, column: 53, scope: !1730)
!1738 = !DILocation(line: 658, column: 29, scope: !1731)
!1739 = distinct !{!1739, !1738, !1740}
!1740 = !DILocation(line: 667, column: 33, scope: !1731)
!1741 = !DILocation(line: 674, column: 19, scope: !1439)
!1742 = !DILocation(line: 670, column: 41, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1463, file: !133, line: 670, column: 29)
!1744 = !DILocation(line: 670, column: 31, scope: !1743)
!1745 = !DILocation(line: 670, column: 29, scope: !1463)
!1746 = !DILocation(line: 672, column: 27, scope: !1463)
!1747 = !DILocation(line: 675, column: 26, scope: !1439)
!1748 = !DILocation(line: 675, column: 24, scope: !1439)
!1749 = !DILocation(line: 674, column: 19, scope: !1457)
!1750 = distinct !{!1750, !1709, !1751}
!1751 = !DILocation(line: 675, column: 44, scope: !1439)
!1752 = !DILocation(line: 676, column: 15, scope: !1440)
!1753 = !DILocation(line: 0, scope: !1704)
!1754 = !DILocation(line: 0, scope: !1439)
!1755 = !DILocation(line: 678, column: 40, scope: !1435)
!1756 = !DILocation(line: 680, column: 19, scope: !1469)
!1757 = !DILocation(line: 680, column: 45, scope: !1469)
!1758 = !DILocation(line: 680, column: 23, scope: !1469)
!1759 = !DILocation(line: 684, column: 33, scope: !1468)
!1760 = !DILocation(line: 684, column: 24, scope: !1468)
!1761 = !DILocation(line: 686, column: 17, scope: !1468)
!1762 = !DILocation(line: 0, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !133, line: 687, column: 19)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !133, line: 686, column: 17)
!1765 = distinct !DILexicalBlock(scope: !1468, file: !133, line: 686, column: 17)
!1766 = !DILocation(line: 0, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !133, line: 703, column: 21)
!1768 = !DILocation(line: 0, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !133, line: 696, column: 23)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !133, line: 695, column: 30)
!1771 = distinct !DILexicalBlock(scope: !1763, file: !133, line: 688, column: 25)
!1772 = !DILocation(line: 688, column: 43, scope: !1771)
!1773 = !DILocation(line: 690, column: 25, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !133, line: 690, column: 25)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !133, line: 689, column: 23)
!1776 = !DILocation(line: 690, column: 25, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !133, line: 690, column: 25)
!1778 = !DILocation(line: 690, column: 25, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !133, line: 690, column: 25)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !133, line: 690, column: 25)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !133, line: 690, column: 25)
!1782 = !DILocation(line: 690, column: 25, scope: !1780)
!1783 = !DILocation(line: 690, column: 25, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !133, line: 690, column: 25)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !133, line: 690, column: 25)
!1786 = !DILocation(line: 690, column: 25, scope: !1785)
!1787 = !DILocation(line: 690, column: 25, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !133, line: 690, column: 25)
!1789 = distinct !DILexicalBlock(scope: !1781, file: !133, line: 690, column: 25)
!1790 = !DILocation(line: 690, column: 25, scope: !1789)
!1791 = !DILocation(line: 690, column: 25, scope: !1781)
!1792 = !DILocation(line: 690, column: 25, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !133, line: 690, column: 25)
!1794 = distinct !DILexicalBlock(scope: !1774, file: !133, line: 690, column: 25)
!1795 = !DILocation(line: 690, column: 25, scope: !1794)
!1796 = !DILocation(line: 691, column: 25, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !133, line: 691, column: 25)
!1798 = distinct !DILexicalBlock(scope: !1775, file: !133, line: 691, column: 25)
!1799 = !DILocation(line: 691, column: 25, scope: !1798)
!1800 = !DILocation(line: 692, column: 25, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !133, line: 692, column: 25)
!1802 = distinct !DILexicalBlock(scope: !1775, file: !133, line: 692, column: 25)
!1803 = !DILocation(line: 692, column: 25, scope: !1802)
!1804 = !DILocation(line: 693, column: 38, scope: !1775)
!1805 = !DILocation(line: 693, column: 33, scope: !1775)
!1806 = !DILocation(line: 694, column: 23, scope: !1775)
!1807 = !DILocation(line: 695, column: 30, scope: !1770)
!1808 = !DILocation(line: 695, column: 30, scope: !1771)
!1809 = !DILocation(line: 697, column: 25, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !133, line: 697, column: 25)
!1811 = distinct !DILexicalBlock(scope: !1769, file: !133, line: 697, column: 25)
!1812 = !DILocation(line: 697, column: 25, scope: !1811)
!1813 = !DILocation(line: 699, column: 23, scope: !1769)
!1814 = !DILocation(line: 0, scope: !1802)
!1815 = !DILocation(line: 0, scope: !1775)
!1816 = !DILocation(line: 0, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1552, file: !133, line: 418, column: 9)
!1818 = !DILocation(line: 0, scope: !1774)
!1819 = !DILocation(line: 700, column: 35, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1763, file: !133, line: 700, column: 25)
!1821 = !DILocation(line: 700, column: 30, scope: !1820)
!1822 = !DILocation(line: 700, column: 25, scope: !1763)
!1823 = !DILocation(line: 702, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !133, line: 702, column: 21)
!1825 = distinct !DILexicalBlock(scope: !1763, file: !133, line: 702, column: 21)
!1826 = !DILocation(line: 702, column: 21, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !133, line: 702, column: 21)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !133, line: 702, column: 21)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !133, line: 702, column: 21)
!1830 = !DILocation(line: 702, column: 21, scope: !1828)
!1831 = !DILocation(line: 702, column: 21, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !133, line: 702, column: 21)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !133, line: 702, column: 21)
!1834 = !DILocation(line: 702, column: 21, scope: !1833)
!1835 = !DILocation(line: 702, column: 21, scope: !1829)
!1836 = !DILocation(line: 0, scope: !1811)
!1837 = !DILocation(line: 703, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1767, file: !133, line: 703, column: 21)
!1839 = !DILocation(line: 703, column: 21, scope: !1767)
!1840 = !DILocation(line: 704, column: 25, scope: !1763)
!1841 = !DILocation(line: 686, column: 17, scope: !1764)
!1842 = distinct !{!1842, !1843, !1844}
!1843 = !DILocation(line: 686, column: 17, scope: !1765)
!1844 = !DILocation(line: 705, column: 19, scope: !1765)
!1845 = !DILocation(line: 0, scope: !1429)
!1846 = !DILocation(line: 416, column: 30, scope: !1552)
!1847 = !DILocation(line: 712, column: 34, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1427, file: !133, line: 712, column: 11)
!1849 = !DILocation(line: 714, column: 14, scope: !1848)
!1850 = !DILocation(line: 715, column: 14, scope: !1848)
!1851 = !DILocation(line: 715, column: 35, scope: !1848)
!1852 = !DILocation(line: 715, column: 17, scope: !1848)
!1853 = !DILocation(line: 715, column: 47, scope: !1848)
!1854 = !DILocation(line: 715, column: 65, scope: !1848)
!1855 = !DILocation(line: 716, column: 15, scope: !1848)
!1856 = !DILocation(line: 716, column: 11, scope: !1848)
!1857 = !DILocation(line: 712, column: 11, scope: !1427)
!1858 = !DILocation(line: 400, column: 10, scope: !1429)
!1859 = !DILocation(line: 0, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !133, line: 519, column: 13)
!1861 = distinct !DILexicalBlock(scope: !1436, file: !133, line: 518, column: 15)
!1862 = !DILocation(line: 720, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1427, file: !133, line: 720, column: 7)
!1864 = !DILocation(line: 720, column: 7, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1863, file: !133, line: 720, column: 7)
!1866 = !DILocation(line: 720, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !133, line: 720, column: 7)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !133, line: 720, column: 7)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !133, line: 720, column: 7)
!1870 = !DILocation(line: 720, column: 7, scope: !1868)
!1871 = !DILocation(line: 720, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !133, line: 720, column: 7)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !133, line: 720, column: 7)
!1874 = !DILocation(line: 720, column: 7, scope: !1873)
!1875 = !DILocation(line: 720, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !133, line: 720, column: 7)
!1877 = distinct !DILexicalBlock(scope: !1869, file: !133, line: 720, column: 7)
!1878 = !DILocation(line: 720, column: 7, scope: !1877)
!1879 = !DILocation(line: 720, column: 7, scope: !1869)
!1880 = !DILocation(line: 720, column: 7, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !133, line: 720, column: 7)
!1882 = distinct !DILexicalBlock(scope: !1863, file: !133, line: 720, column: 7)
!1883 = !DILocation(line: 720, column: 7, scope: !1882)
!1884 = !DILocation(line: 723, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !133, line: 723, column: 7)
!1886 = distinct !DILexicalBlock(scope: !1427, file: !133, line: 723, column: 7)
!1887 = !DILocation(line: 424, column: 9, scope: !1427)
!1888 = !DILocation(line: 723, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !133, line: 723, column: 7)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !133, line: 723, column: 7)
!1891 = distinct !DILexicalBlock(scope: !1885, file: !133, line: 723, column: 7)
!1892 = !DILocation(line: 723, column: 7, scope: !1890)
!1893 = !DILocation(line: 723, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !133, line: 723, column: 7)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !133, line: 723, column: 7)
!1896 = !DILocation(line: 723, column: 7, scope: !1895)
!1897 = !DILocation(line: 723, column: 7, scope: !1891)
!1898 = !DILocation(line: 724, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !133, line: 724, column: 7)
!1900 = distinct !DILexicalBlock(scope: !1427, file: !133, line: 724, column: 7)
!1901 = !DILocation(line: 724, column: 7, scope: !1900)
!1902 = !DILocation(line: 726, column: 13, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1427, file: !133, line: 726, column: 11)
!1904 = !DILocation(line: 726, column: 11, scope: !1427)
!1905 = !DILocation(line: 728, column: 5, scope: !1428)
!1906 = !DILocation(line: 400, column: 75, scope: !1428)
!1907 = !DILocation(line: 400, column: 3, scope: !1428)
!1908 = distinct !{!1908, !1546, !1909}
!1909 = !DILocation(line: 728, column: 5, scope: !1429)
!1910 = !DILocation(line: 730, column: 11, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1400, file: !133, line: 730, column: 7)
!1912 = !DILocation(line: 730, column: 16, scope: !1911)
!1913 = !DILocation(line: 738, column: 51, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1400, file: !133, line: 738, column: 7)
!1915 = !DILocation(line: 739, column: 10, scope: !1914)
!1916 = !DILocation(line: 741, column: 11, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !133, line: 741, column: 11)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !133, line: 740, column: 5)
!1919 = !DILocation(line: 741, column: 11, scope: !1918)
!1920 = !DILocation(line: 742, column: 16, scope: !1917)
!1921 = !DILocation(line: 742, column: 9, scope: !1917)
!1922 = !DILocation(line: 746, column: 18, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1917, file: !133, line: 746, column: 16)
!1924 = !DILocation(line: 746, column: 32, scope: !1923)
!1925 = !DILocation(line: 746, column: 29, scope: !1923)
!1926 = !DILocation(line: 755, column: 7, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1400, file: !133, line: 755, column: 7)
!1928 = !DILocation(line: 755, column: 20, scope: !1927)
!1929 = !DILocation(line: 756, column: 12, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !133, line: 756, column: 5)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !133, line: 756, column: 5)
!1932 = !DILocation(line: 756, column: 5, scope: !1931)
!1933 = !DILocation(line: 757, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !133, line: 757, column: 7)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !133, line: 757, column: 7)
!1936 = !DILocation(line: 757, column: 7, scope: !1935)
!1937 = !DILocation(line: 756, column: 39, scope: !1930)
!1938 = distinct !{!1938, !1932, !1939}
!1939 = !DILocation(line: 757, column: 7, scope: !1931)
!1940 = !DILocation(line: 759, column: 11, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1400, file: !133, line: 759, column: 7)
!1942 = !DILocation(line: 759, column: 7, scope: !1400)
!1943 = !DILocation(line: 760, column: 5, scope: !1941)
!1944 = !DILocation(line: 760, column: 17, scope: !1941)
!1945 = !DILocation(line: 766, column: 21, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1400, file: !133, line: 766, column: 7)
!1947 = !DILocation(line: 766, column: 54, scope: !1946)
!1948 = !DILocation(line: 766, column: 51, scope: !1946)
!1949 = !DILocation(line: 770, column: 42, scope: !1400)
!1950 = !DILocation(line: 768, column: 10, scope: !1400)
!1951 = !DILocation(line: 768, column: 3, scope: !1400)
!1952 = !DILocation(line: 772, column: 1, scope: !1400)
!1953 = distinct !DISubprogram(name: "gettext_quote", scope: !133, file: !133, line: 207, type: !1954, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!31, !31, !16}
!1956 = !{!1957, !1958, !1959, !1960}
!1957 = !DILocalVariable(name: "msgid", arg: 1, scope: !1953, file: !133, line: 207, type: !31)
!1958 = !DILocalVariable(name: "s", arg: 2, scope: !1953, file: !133, line: 207, type: !16)
!1959 = !DILocalVariable(name: "translation", scope: !1953, file: !133, line: 209, type: !31)
!1960 = !DILocalVariable(name: "locale_code", scope: !1953, file: !133, line: 210, type: !31)
!1961 = !DILocation(line: 207, column: 28, scope: !1953)
!1962 = !DILocation(line: 207, column: 54, scope: !1953)
!1963 = !DILocation(line: 209, column: 29, scope: !1953)
!1964 = !DILocation(line: 209, column: 15, scope: !1953)
!1965 = !DILocation(line: 212, column: 19, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1953, file: !133, line: 212, column: 7)
!1967 = !DILocation(line: 212, column: 7, scope: !1953)
!1968 = !DILocation(line: 233, column: 17, scope: !1953)
!1969 = !DILocation(line: 210, column: 15, scope: !1953)
!1970 = !DILocalVariable(name: "s1", arg: 1, scope: !1971, file: !1972, line: 160, type: !31)
!1971 = distinct !DISubprogram(name: "strcaseeq0", scope: !1972, file: !1972, line: 160, type: !1973, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !1975)
!1972 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!40, !31, !31, !33, !33, !33, !33, !33, !33, !33, !33, !33}
!1975 = !{!1970, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1976 = !DILocalVariable(name: "s2", arg: 2, scope: !1971, file: !1972, line: 160, type: !31)
!1977 = !DILocalVariable(name: "s20", arg: 3, scope: !1971, file: !1972, line: 160, type: !33)
!1978 = !DILocalVariable(name: "s21", arg: 4, scope: !1971, file: !1972, line: 160, type: !33)
!1979 = !DILocalVariable(name: "s22", arg: 5, scope: !1971, file: !1972, line: 160, type: !33)
!1980 = !DILocalVariable(name: "s23", arg: 6, scope: !1971, file: !1972, line: 160, type: !33)
!1981 = !DILocalVariable(name: "s24", arg: 7, scope: !1971, file: !1972, line: 160, type: !33)
!1982 = !DILocalVariable(name: "s25", arg: 8, scope: !1971, file: !1972, line: 160, type: !33)
!1983 = !DILocalVariable(name: "s26", arg: 9, scope: !1971, file: !1972, line: 160, type: !33)
!1984 = !DILocalVariable(name: "s27", arg: 10, scope: !1971, file: !1972, line: 160, type: !33)
!1985 = !DILocalVariable(name: "s28", arg: 11, scope: !1971, file: !1972, line: 160, type: !33)
!1986 = !DILocation(line: 160, column: 25, scope: !1971, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 234, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1953, file: !133, line: 234, column: 7)
!1989 = !DILocation(line: 160, column: 41, scope: !1971, inlinedAt: !1987)
!1990 = !DILocation(line: 160, column: 50, scope: !1971, inlinedAt: !1987)
!1991 = !DILocation(line: 160, column: 60, scope: !1971, inlinedAt: !1987)
!1992 = !DILocation(line: 160, column: 70, scope: !1971, inlinedAt: !1987)
!1993 = !DILocation(line: 160, column: 80, scope: !1971, inlinedAt: !1987)
!1994 = !DILocation(line: 160, column: 90, scope: !1971, inlinedAt: !1987)
!1995 = !DILocation(line: 160, column: 100, scope: !1971, inlinedAt: !1987)
!1996 = !DILocation(line: 160, column: 110, scope: !1971, inlinedAt: !1987)
!1997 = !DILocation(line: 160, column: 120, scope: !1971, inlinedAt: !1987)
!1998 = !DILocation(line: 160, column: 130, scope: !1971, inlinedAt: !1987)
!1999 = !DILocation(line: 162, column: 7, scope: !2000, inlinedAt: !1987)
!2000 = distinct !DILexicalBlock(scope: !1971, file: !1972, line: 162, column: 7)
!2001 = !DILocalVariable(name: "s1", arg: 1, scope: !2002, file: !1972, line: 146, type: !31)
!2002 = distinct !DISubprogram(name: "strcaseeq1", scope: !1972, file: !1972, line: 146, type: !2003, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!40, !31, !31, !33, !33, !33, !33, !33, !33, !33, !33}
!2005 = !{!2001, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!2006 = !DILocalVariable(name: "s2", arg: 2, scope: !2002, file: !1972, line: 146, type: !31)
!2007 = !DILocalVariable(name: "s21", arg: 3, scope: !2002, file: !1972, line: 146, type: !33)
!2008 = !DILocalVariable(name: "s22", arg: 4, scope: !2002, file: !1972, line: 146, type: !33)
!2009 = !DILocalVariable(name: "s23", arg: 5, scope: !2002, file: !1972, line: 146, type: !33)
!2010 = !DILocalVariable(name: "s24", arg: 6, scope: !2002, file: !1972, line: 146, type: !33)
!2011 = !DILocalVariable(name: "s25", arg: 7, scope: !2002, file: !1972, line: 146, type: !33)
!2012 = !DILocalVariable(name: "s26", arg: 8, scope: !2002, file: !1972, line: 146, type: !33)
!2013 = !DILocalVariable(name: "s27", arg: 9, scope: !2002, file: !1972, line: 146, type: !33)
!2014 = !DILocalVariable(name: "s28", arg: 10, scope: !2002, file: !1972, line: 146, type: !33)
!2015 = !DILocation(line: 146, column: 25, scope: !2002, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 167, column: 16, scope: !2017, inlinedAt: !1987)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !1972, line: 164, column: 11)
!2018 = distinct !DILexicalBlock(scope: !2000, file: !1972, line: 163, column: 5)
!2019 = !DILocation(line: 146, column: 41, scope: !2002, inlinedAt: !2016)
!2020 = !DILocation(line: 146, column: 50, scope: !2002, inlinedAt: !2016)
!2021 = !DILocation(line: 146, column: 60, scope: !2002, inlinedAt: !2016)
!2022 = !DILocation(line: 146, column: 70, scope: !2002, inlinedAt: !2016)
!2023 = !DILocation(line: 146, column: 80, scope: !2002, inlinedAt: !2016)
!2024 = !DILocation(line: 146, column: 90, scope: !2002, inlinedAt: !2016)
!2025 = !DILocation(line: 146, column: 100, scope: !2002, inlinedAt: !2016)
!2026 = !DILocation(line: 146, column: 110, scope: !2002, inlinedAt: !2016)
!2027 = !DILocation(line: 146, column: 120, scope: !2002, inlinedAt: !2016)
!2028 = !DILocation(line: 148, column: 7, scope: !2029, inlinedAt: !2016)
!2029 = distinct !DILexicalBlock(scope: !2002, file: !1972, line: 148, column: 7)
!2030 = !DILocalVariable(name: "s1", arg: 1, scope: !2031, file: !1972, line: 132, type: !31)
!2031 = distinct !DISubprogram(name: "strcaseeq2", scope: !1972, file: !1972, line: 132, type: !2032, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!40, !31, !31, !33, !33, !33, !33, !33, !33, !33}
!2034 = !{!2030, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042}
!2035 = !DILocalVariable(name: "s2", arg: 2, scope: !2031, file: !1972, line: 132, type: !31)
!2036 = !DILocalVariable(name: "s22", arg: 3, scope: !2031, file: !1972, line: 132, type: !33)
!2037 = !DILocalVariable(name: "s23", arg: 4, scope: !2031, file: !1972, line: 132, type: !33)
!2038 = !DILocalVariable(name: "s24", arg: 5, scope: !2031, file: !1972, line: 132, type: !33)
!2039 = !DILocalVariable(name: "s25", arg: 6, scope: !2031, file: !1972, line: 132, type: !33)
!2040 = !DILocalVariable(name: "s26", arg: 7, scope: !2031, file: !1972, line: 132, type: !33)
!2041 = !DILocalVariable(name: "s27", arg: 8, scope: !2031, file: !1972, line: 132, type: !33)
!2042 = !DILocalVariable(name: "s28", arg: 9, scope: !2031, file: !1972, line: 132, type: !33)
!2043 = !DILocation(line: 132, column: 25, scope: !2031, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 153, column: 16, scope: !2045, inlinedAt: !2016)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !1972, line: 150, column: 11)
!2046 = distinct !DILexicalBlock(scope: !2029, file: !1972, line: 149, column: 5)
!2047 = !DILocation(line: 132, column: 41, scope: !2031, inlinedAt: !2044)
!2048 = !DILocation(line: 132, column: 50, scope: !2031, inlinedAt: !2044)
!2049 = !DILocation(line: 132, column: 60, scope: !2031, inlinedAt: !2044)
!2050 = !DILocation(line: 132, column: 70, scope: !2031, inlinedAt: !2044)
!2051 = !DILocation(line: 132, column: 80, scope: !2031, inlinedAt: !2044)
!2052 = !DILocation(line: 132, column: 90, scope: !2031, inlinedAt: !2044)
!2053 = !DILocation(line: 132, column: 100, scope: !2031, inlinedAt: !2044)
!2054 = !DILocation(line: 132, column: 110, scope: !2031, inlinedAt: !2044)
!2055 = !DILocation(line: 134, column: 7, scope: !2056, inlinedAt: !2044)
!2056 = distinct !DILexicalBlock(scope: !2031, file: !1972, line: 134, column: 7)
!2057 = !DILocalVariable(name: "s1", arg: 1, scope: !2058, file: !1972, line: 118, type: !31)
!2058 = distinct !DISubprogram(name: "strcaseeq3", scope: !1972, file: !1972, line: 118, type: !2059, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2061)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!40, !31, !31, !33, !33, !33, !33, !33, !33}
!2061 = !{!2057, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2062 = !DILocalVariable(name: "s2", arg: 2, scope: !2058, file: !1972, line: 118, type: !31)
!2063 = !DILocalVariable(name: "s23", arg: 3, scope: !2058, file: !1972, line: 118, type: !33)
!2064 = !DILocalVariable(name: "s24", arg: 4, scope: !2058, file: !1972, line: 118, type: !33)
!2065 = !DILocalVariable(name: "s25", arg: 5, scope: !2058, file: !1972, line: 118, type: !33)
!2066 = !DILocalVariable(name: "s26", arg: 6, scope: !2058, file: !1972, line: 118, type: !33)
!2067 = !DILocalVariable(name: "s27", arg: 7, scope: !2058, file: !1972, line: 118, type: !33)
!2068 = !DILocalVariable(name: "s28", arg: 8, scope: !2058, file: !1972, line: 118, type: !33)
!2069 = !DILocation(line: 118, column: 25, scope: !2058, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 139, column: 16, scope: !2071, inlinedAt: !2044)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !1972, line: 136, column: 11)
!2072 = distinct !DILexicalBlock(scope: !2056, file: !1972, line: 135, column: 5)
!2073 = !DILocation(line: 118, column: 41, scope: !2058, inlinedAt: !2070)
!2074 = !DILocation(line: 118, column: 50, scope: !2058, inlinedAt: !2070)
!2075 = !DILocation(line: 118, column: 60, scope: !2058, inlinedAt: !2070)
!2076 = !DILocation(line: 118, column: 70, scope: !2058, inlinedAt: !2070)
!2077 = !DILocation(line: 118, column: 80, scope: !2058, inlinedAt: !2070)
!2078 = !DILocation(line: 118, column: 90, scope: !2058, inlinedAt: !2070)
!2079 = !DILocation(line: 118, column: 100, scope: !2058, inlinedAt: !2070)
!2080 = !DILocation(line: 120, column: 7, scope: !2081, inlinedAt: !2070)
!2081 = distinct !DILexicalBlock(scope: !2058, file: !1972, line: 120, column: 7)
!2082 = !DILocation(line: 120, column: 7, scope: !2058, inlinedAt: !2070)
!2083 = !DILocalVariable(name: "s1", arg: 1, scope: !2084, file: !1972, line: 104, type: !31)
!2084 = distinct !DISubprogram(name: "strcaseeq4", scope: !1972, file: !1972, line: 104, type: !2085, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!40, !31, !31, !33, !33, !33, !33, !33}
!2087 = !{!2083, !2088, !2089, !2090, !2091, !2092, !2093}
!2088 = !DILocalVariable(name: "s2", arg: 2, scope: !2084, file: !1972, line: 104, type: !31)
!2089 = !DILocalVariable(name: "s24", arg: 3, scope: !2084, file: !1972, line: 104, type: !33)
!2090 = !DILocalVariable(name: "s25", arg: 4, scope: !2084, file: !1972, line: 104, type: !33)
!2091 = !DILocalVariable(name: "s26", arg: 5, scope: !2084, file: !1972, line: 104, type: !33)
!2092 = !DILocalVariable(name: "s27", arg: 6, scope: !2084, file: !1972, line: 104, type: !33)
!2093 = !DILocalVariable(name: "s28", arg: 7, scope: !2084, file: !1972, line: 104, type: !33)
!2094 = !DILocation(line: 104, column: 25, scope: !2084, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 125, column: 16, scope: !2096, inlinedAt: !2070)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !1972, line: 122, column: 11)
!2097 = distinct !DILexicalBlock(scope: !2081, file: !1972, line: 121, column: 5)
!2098 = !DILocation(line: 104, column: 41, scope: !2084, inlinedAt: !2095)
!2099 = !DILocation(line: 104, column: 50, scope: !2084, inlinedAt: !2095)
!2100 = !DILocation(line: 104, column: 60, scope: !2084, inlinedAt: !2095)
!2101 = !DILocation(line: 104, column: 70, scope: !2084, inlinedAt: !2095)
!2102 = !DILocation(line: 104, column: 80, scope: !2084, inlinedAt: !2095)
!2103 = !DILocation(line: 104, column: 90, scope: !2084, inlinedAt: !2095)
!2104 = !DILocation(line: 106, column: 7, scope: !2105, inlinedAt: !2095)
!2105 = distinct !DILexicalBlock(scope: !2084, file: !1972, line: 106, column: 7)
!2106 = !DILocation(line: 106, column: 7, scope: !2084, inlinedAt: !2095)
!2107 = !DILocalVariable(name: "s1", arg: 1, scope: !2108, file: !1972, line: 90, type: !31)
!2108 = distinct !DISubprogram(name: "strcaseeq5", scope: !1972, file: !1972, line: 90, type: !2109, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!40, !31, !31, !33, !33, !33, !33}
!2111 = !{!2107, !2112, !2113, !2114, !2115, !2116}
!2112 = !DILocalVariable(name: "s2", arg: 2, scope: !2108, file: !1972, line: 90, type: !31)
!2113 = !DILocalVariable(name: "s25", arg: 3, scope: !2108, file: !1972, line: 90, type: !33)
!2114 = !DILocalVariable(name: "s26", arg: 4, scope: !2108, file: !1972, line: 90, type: !33)
!2115 = !DILocalVariable(name: "s27", arg: 5, scope: !2108, file: !1972, line: 90, type: !33)
!2116 = !DILocalVariable(name: "s28", arg: 6, scope: !2108, file: !1972, line: 90, type: !33)
!2117 = !DILocation(line: 90, column: 25, scope: !2108, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 111, column: 16, scope: !2119, inlinedAt: !2095)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !1972, line: 108, column: 11)
!2120 = distinct !DILexicalBlock(scope: !2105, file: !1972, line: 107, column: 5)
!2121 = !DILocation(line: 90, column: 41, scope: !2108, inlinedAt: !2118)
!2122 = !DILocation(line: 90, column: 50, scope: !2108, inlinedAt: !2118)
!2123 = !DILocation(line: 90, column: 60, scope: !2108, inlinedAt: !2118)
!2124 = !DILocation(line: 90, column: 70, scope: !2108, inlinedAt: !2118)
!2125 = !DILocation(line: 90, column: 80, scope: !2108, inlinedAt: !2118)
!2126 = !DILocation(line: 92, column: 7, scope: !2127, inlinedAt: !2118)
!2127 = distinct !DILexicalBlock(scope: !2108, file: !1972, line: 92, column: 7)
!2128 = !DILocation(line: 92, column: 7, scope: !2108, inlinedAt: !2118)
!2129 = !DILocation(line: 235, column: 12, scope: !1988)
!2130 = !DILocation(line: 235, column: 21, scope: !1988)
!2131 = !DILocation(line: 235, column: 5, scope: !1988)
!2132 = !DILocation(line: 146, column: 25, scope: !2002, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 167, column: 16, scope: !2017, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 236, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1953, file: !133, line: 236, column: 7)
!2136 = !DILocation(line: 146, column: 41, scope: !2002, inlinedAt: !2133)
!2137 = !DILocation(line: 146, column: 50, scope: !2002, inlinedAt: !2133)
!2138 = !DILocation(line: 146, column: 60, scope: !2002, inlinedAt: !2133)
!2139 = !DILocation(line: 146, column: 70, scope: !2002, inlinedAt: !2133)
!2140 = !DILocation(line: 146, column: 80, scope: !2002, inlinedAt: !2133)
!2141 = !DILocation(line: 146, column: 90, scope: !2002, inlinedAt: !2133)
!2142 = !DILocation(line: 146, column: 100, scope: !2002, inlinedAt: !2133)
!2143 = !DILocation(line: 146, column: 110, scope: !2002, inlinedAt: !2133)
!2144 = !DILocation(line: 146, column: 120, scope: !2002, inlinedAt: !2133)
!2145 = !DILocation(line: 148, column: 7, scope: !2029, inlinedAt: !2133)
!2146 = !DILocation(line: 132, column: 25, scope: !2031, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 153, column: 16, scope: !2045, inlinedAt: !2133)
!2148 = !DILocation(line: 132, column: 41, scope: !2031, inlinedAt: !2147)
!2149 = !DILocation(line: 132, column: 50, scope: !2031, inlinedAt: !2147)
!2150 = !DILocation(line: 132, column: 60, scope: !2031, inlinedAt: !2147)
!2151 = !DILocation(line: 132, column: 70, scope: !2031, inlinedAt: !2147)
!2152 = !DILocation(line: 132, column: 80, scope: !2031, inlinedAt: !2147)
!2153 = !DILocation(line: 132, column: 90, scope: !2031, inlinedAt: !2147)
!2154 = !DILocation(line: 132, column: 100, scope: !2031, inlinedAt: !2147)
!2155 = !DILocation(line: 132, column: 110, scope: !2031, inlinedAt: !2147)
!2156 = !DILocation(line: 134, column: 7, scope: !2056, inlinedAt: !2147)
!2157 = !DILocation(line: 134, column: 7, scope: !2031, inlinedAt: !2147)
!2158 = !DILocation(line: 118, column: 25, scope: !2058, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 139, column: 16, scope: !2071, inlinedAt: !2147)
!2160 = !DILocation(line: 118, column: 41, scope: !2058, inlinedAt: !2159)
!2161 = !DILocation(line: 118, column: 50, scope: !2058, inlinedAt: !2159)
!2162 = !DILocation(line: 118, column: 60, scope: !2058, inlinedAt: !2159)
!2163 = !DILocation(line: 118, column: 70, scope: !2058, inlinedAt: !2159)
!2164 = !DILocation(line: 118, column: 80, scope: !2058, inlinedAt: !2159)
!2165 = !DILocation(line: 118, column: 90, scope: !2058, inlinedAt: !2159)
!2166 = !DILocation(line: 118, column: 100, scope: !2058, inlinedAt: !2159)
!2167 = !DILocation(line: 120, column: 7, scope: !2081, inlinedAt: !2159)
!2168 = !DILocation(line: 120, column: 7, scope: !2058, inlinedAt: !2159)
!2169 = !DILocation(line: 104, column: 25, scope: !2084, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 125, column: 16, scope: !2096, inlinedAt: !2159)
!2171 = !DILocation(line: 104, column: 41, scope: !2084, inlinedAt: !2170)
!2172 = !DILocation(line: 104, column: 50, scope: !2084, inlinedAt: !2170)
!2173 = !DILocation(line: 104, column: 60, scope: !2084, inlinedAt: !2170)
!2174 = !DILocation(line: 104, column: 70, scope: !2084, inlinedAt: !2170)
!2175 = !DILocation(line: 104, column: 80, scope: !2084, inlinedAt: !2170)
!2176 = !DILocation(line: 104, column: 90, scope: !2084, inlinedAt: !2170)
!2177 = !DILocation(line: 106, column: 7, scope: !2105, inlinedAt: !2170)
!2178 = !DILocation(line: 106, column: 7, scope: !2084, inlinedAt: !2170)
!2179 = !DILocation(line: 90, column: 25, scope: !2108, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 111, column: 16, scope: !2119, inlinedAt: !2170)
!2181 = !DILocation(line: 90, column: 41, scope: !2108, inlinedAt: !2180)
!2182 = !DILocation(line: 90, column: 50, scope: !2108, inlinedAt: !2180)
!2183 = !DILocation(line: 90, column: 60, scope: !2108, inlinedAt: !2180)
!2184 = !DILocation(line: 90, column: 70, scope: !2108, inlinedAt: !2180)
!2185 = !DILocation(line: 90, column: 80, scope: !2108, inlinedAt: !2180)
!2186 = !DILocation(line: 92, column: 7, scope: !2127, inlinedAt: !2180)
!2187 = !DILocation(line: 92, column: 7, scope: !2108, inlinedAt: !2180)
!2188 = !DILocalVariable(name: "s1", arg: 1, scope: !2189, file: !1972, line: 76, type: !31)
!2189 = distinct !DISubprogram(name: "strcaseeq6", scope: !1972, file: !1972, line: 76, type: !2190, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!40, !31, !31, !33, !33, !33}
!2192 = !{!2188, !2193, !2194, !2195, !2196}
!2193 = !DILocalVariable(name: "s2", arg: 2, scope: !2189, file: !1972, line: 76, type: !31)
!2194 = !DILocalVariable(name: "s26", arg: 3, scope: !2189, file: !1972, line: 76, type: !33)
!2195 = !DILocalVariable(name: "s27", arg: 4, scope: !2189, file: !1972, line: 76, type: !33)
!2196 = !DILocalVariable(name: "s28", arg: 5, scope: !2189, file: !1972, line: 76, type: !33)
!2197 = !DILocation(line: 76, column: 25, scope: !2189, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 97, column: 16, scope: !2199, inlinedAt: !2180)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !1972, line: 94, column: 11)
!2200 = distinct !DILexicalBlock(scope: !2127, file: !1972, line: 93, column: 5)
!2201 = !DILocation(line: 76, column: 41, scope: !2189, inlinedAt: !2198)
!2202 = !DILocation(line: 76, column: 50, scope: !2189, inlinedAt: !2198)
!2203 = !DILocation(line: 76, column: 60, scope: !2189, inlinedAt: !2198)
!2204 = !DILocation(line: 76, column: 70, scope: !2189, inlinedAt: !2198)
!2205 = !DILocation(line: 78, column: 7, scope: !2206, inlinedAt: !2198)
!2206 = distinct !DILexicalBlock(scope: !2189, file: !1972, line: 78, column: 7)
!2207 = !DILocation(line: 78, column: 7, scope: !2189, inlinedAt: !2198)
!2208 = !DILocalVariable(name: "s1", arg: 1, scope: !2209, file: !1972, line: 62, type: !31)
!2209 = distinct !DISubprogram(name: "strcaseeq7", scope: !1972, file: !1972, line: 62, type: !2210, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!40, !31, !31, !33, !33}
!2212 = !{!2208, !2213, !2214, !2215}
!2213 = !DILocalVariable(name: "s2", arg: 2, scope: !2209, file: !1972, line: 62, type: !31)
!2214 = !DILocalVariable(name: "s27", arg: 3, scope: !2209, file: !1972, line: 62, type: !33)
!2215 = !DILocalVariable(name: "s28", arg: 4, scope: !2209, file: !1972, line: 62, type: !33)
!2216 = !DILocation(line: 62, column: 25, scope: !2209, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 83, column: 16, scope: !2218, inlinedAt: !2198)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !1972, line: 80, column: 11)
!2219 = distinct !DILexicalBlock(scope: !2206, file: !1972, line: 79, column: 5)
!2220 = !DILocation(line: 62, column: 41, scope: !2209, inlinedAt: !2217)
!2221 = !DILocation(line: 62, column: 50, scope: !2209, inlinedAt: !2217)
!2222 = !DILocation(line: 62, column: 60, scope: !2209, inlinedAt: !2217)
!2223 = !DILocation(line: 64, column: 7, scope: !2224, inlinedAt: !2217)
!2224 = distinct !DILexicalBlock(scope: !2209, file: !1972, line: 64, column: 7)
!2225 = !DILocation(line: 236, column: 7, scope: !1953)
!2226 = !DILocation(line: 237, column: 12, scope: !2135)
!2227 = !DILocation(line: 237, column: 21, scope: !2135)
!2228 = !DILocation(line: 237, column: 5, scope: !2135)
!2229 = !DILocation(line: 239, column: 13, scope: !1953)
!2230 = !DILocation(line: 239, column: 11, scope: !1953)
!2231 = !DILocation(line: 239, column: 3, scope: !1953)
!2232 = !DILocation(line: 0, scope: !1953)
!2233 = !DILocation(line: 240, column: 1, scope: !1953)
!2234 = distinct !DISubprogram(name: "quotearg_alloc", scope: !133, file: !133, line: 799, type: !2235, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!97, !31, !127, !1272}
!2237 = !{!2238, !2239, !2240}
!2238 = !DILocalVariable(name: "arg", arg: 1, scope: !2234, file: !133, line: 799, type: !31)
!2239 = !DILocalVariable(name: "argsize", arg: 2, scope: !2234, file: !133, line: 799, type: !127)
!2240 = !DILocalVariable(name: "o", arg: 3, scope: !2234, file: !133, line: 800, type: !1272)
!2241 = !DILocation(line: 799, column: 29, scope: !2234)
!2242 = !DILocation(line: 799, column: 41, scope: !2234)
!2243 = !DILocation(line: 800, column: 47, scope: !2234)
!2244 = !DILocalVariable(name: "arg", arg: 1, scope: !2245, file: !133, line: 812, type: !31)
!2245 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !133, file: !133, line: 812, type: !2246, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!97, !31, !127, !238, !1272}
!2248 = !{!2244, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256}
!2249 = !DILocalVariable(name: "argsize", arg: 2, scope: !2245, file: !133, line: 812, type: !127)
!2250 = !DILocalVariable(name: "size", arg: 3, scope: !2245, file: !133, line: 812, type: !238)
!2251 = !DILocalVariable(name: "o", arg: 4, scope: !2245, file: !133, line: 813, type: !1272)
!2252 = !DILocalVariable(name: "p", scope: !2245, file: !133, line: 815, type: !1272)
!2253 = !DILocalVariable(name: "e", scope: !2245, file: !133, line: 816, type: !40)
!2254 = !DILocalVariable(name: "flags", scope: !2245, file: !133, line: 818, type: !40)
!2255 = !DILocalVariable(name: "bufsize", scope: !2245, file: !133, line: 819, type: !127)
!2256 = !DILocalVariable(name: "buf", scope: !2245, file: !133, line: 823, type: !97)
!2257 = !DILocation(line: 812, column: 33, scope: !2245, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 802, column: 10, scope: !2234)
!2259 = !DILocation(line: 812, column: 45, scope: !2245, inlinedAt: !2258)
!2260 = !DILocation(line: 812, column: 62, scope: !2245, inlinedAt: !2258)
!2261 = !DILocation(line: 813, column: 51, scope: !2245, inlinedAt: !2258)
!2262 = !DILocation(line: 815, column: 37, scope: !2245, inlinedAt: !2258)
!2263 = !DILocation(line: 815, column: 33, scope: !2245, inlinedAt: !2258)
!2264 = !DILocation(line: 816, column: 11, scope: !2245, inlinedAt: !2258)
!2265 = !DILocation(line: 816, column: 7, scope: !2245, inlinedAt: !2258)
!2266 = !DILocation(line: 818, column: 18, scope: !2245, inlinedAt: !2258)
!2267 = !DILocation(line: 818, column: 24, scope: !2245, inlinedAt: !2258)
!2268 = !DILocation(line: 818, column: 7, scope: !2245, inlinedAt: !2258)
!2269 = !DILocation(line: 819, column: 69, scope: !2245, inlinedAt: !2258)
!2270 = !DILocation(line: 820, column: 53, scope: !2245, inlinedAt: !2258)
!2271 = !DILocation(line: 821, column: 49, scope: !2245, inlinedAt: !2258)
!2272 = !DILocation(line: 822, column: 49, scope: !2245, inlinedAt: !2258)
!2273 = !DILocation(line: 819, column: 20, scope: !2245, inlinedAt: !2258)
!2274 = !DILocation(line: 822, column: 62, scope: !2245, inlinedAt: !2258)
!2275 = !DILocation(line: 819, column: 10, scope: !2245, inlinedAt: !2258)
!2276 = !DILocalVariable(name: "n", arg: 1, scope: !2277, file: !234, line: 216, type: !127)
!2277 = distinct !DISubprogram(name: "xcharalloc", scope: !234, file: !234, line: 216, type: !2278, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!97, !127}
!2280 = !{!2276}
!2281 = !DILocation(line: 216, column: 20, scope: !2277, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 823, column: 15, scope: !2245, inlinedAt: !2258)
!2283 = !DILocation(line: 218, column: 10, scope: !2277, inlinedAt: !2282)
!2284 = !DILocation(line: 823, column: 9, scope: !2245, inlinedAt: !2258)
!2285 = !DILocation(line: 824, column: 60, scope: !2245, inlinedAt: !2258)
!2286 = !DILocation(line: 826, column: 32, scope: !2245, inlinedAt: !2258)
!2287 = !DILocation(line: 826, column: 47, scope: !2245, inlinedAt: !2258)
!2288 = !DILocation(line: 824, column: 3, scope: !2245, inlinedAt: !2258)
!2289 = !DILocation(line: 827, column: 9, scope: !2245, inlinedAt: !2258)
!2290 = !DILocation(line: 802, column: 3, scope: !2234)
!2291 = !DILocation(line: 812, column: 33, scope: !2245)
!2292 = !DILocation(line: 812, column: 45, scope: !2245)
!2293 = !DILocation(line: 812, column: 62, scope: !2245)
!2294 = !DILocation(line: 813, column: 51, scope: !2245)
!2295 = !DILocation(line: 815, column: 37, scope: !2245)
!2296 = !DILocation(line: 815, column: 33, scope: !2245)
!2297 = !DILocation(line: 816, column: 11, scope: !2245)
!2298 = !DILocation(line: 816, column: 7, scope: !2245)
!2299 = !DILocation(line: 818, column: 18, scope: !2245)
!2300 = !DILocation(line: 818, column: 27, scope: !2245)
!2301 = !DILocation(line: 818, column: 24, scope: !2245)
!2302 = !DILocation(line: 818, column: 7, scope: !2245)
!2303 = !DILocation(line: 819, column: 69, scope: !2245)
!2304 = !DILocation(line: 820, column: 53, scope: !2245)
!2305 = !DILocation(line: 821, column: 49, scope: !2245)
!2306 = !DILocation(line: 822, column: 49, scope: !2245)
!2307 = !DILocation(line: 819, column: 20, scope: !2245)
!2308 = !DILocation(line: 822, column: 62, scope: !2245)
!2309 = !DILocation(line: 819, column: 10, scope: !2245)
!2310 = !DILocation(line: 216, column: 20, scope: !2277, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 823, column: 15, scope: !2245)
!2312 = !DILocation(line: 218, column: 10, scope: !2277, inlinedAt: !2311)
!2313 = !DILocation(line: 823, column: 9, scope: !2245)
!2314 = !DILocation(line: 824, column: 60, scope: !2245)
!2315 = !DILocation(line: 826, column: 32, scope: !2245)
!2316 = !DILocation(line: 826, column: 47, scope: !2245)
!2317 = !DILocation(line: 824, column: 3, scope: !2245)
!2318 = !DILocation(line: 827, column: 9, scope: !2245)
!2319 = !DILocation(line: 828, column: 7, scope: !2245)
!2320 = !DILocation(line: 829, column: 11, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2245, file: !133, line: 828, column: 7)
!2322 = !{!956, !956, i64 0}
!2323 = !DILocation(line: 829, column: 5, scope: !2321)
!2324 = !DILocation(line: 830, column: 3, scope: !2245)
!2325 = distinct !DISubprogram(name: "quotearg_free", scope: !133, file: !133, line: 848, type: !995, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2326)
!2326 = !{!2327, !2328}
!2327 = !DILocalVariable(name: "sv", scope: !2325, file: !133, line: 850, type: !159)
!2328 = !DILocalVariable(name: "i", scope: !2325, file: !133, line: 851, type: !40)
!2329 = !DILocation(line: 850, column: 24, scope: !2325)
!2330 = !DILocation(line: 850, column: 19, scope: !2325)
!2331 = !DILocation(line: 851, column: 7, scope: !2325)
!2332 = !DILocation(line: 852, column: 19, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !133, line: 852, column: 3)
!2334 = distinct !DILexicalBlock(scope: !2325, file: !133, line: 852, column: 3)
!2335 = !DILocation(line: 852, column: 17, scope: !2333)
!2336 = !DILocation(line: 852, column: 3, scope: !2334)
!2337 = !DILocation(line: 853, column: 17, scope: !2333)
!2338 = !{!2339, !693, i64 8}
!2339 = !{!"slotvec", !956, i64 0, !693, i64 8}
!2340 = !DILocation(line: 853, column: 5, scope: !2333)
!2341 = !DILocation(line: 852, column: 28, scope: !2333)
!2342 = distinct !{!2342, !2336, !2343}
!2343 = !DILocation(line: 853, column: 20, scope: !2334)
!2344 = !DILocation(line: 854, column: 13, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2325, file: !133, line: 854, column: 7)
!2346 = !DILocation(line: 854, column: 17, scope: !2345)
!2347 = !DILocation(line: 854, column: 7, scope: !2325)
!2348 = !DILocation(line: 856, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !133, line: 855, column: 5)
!2350 = !DILocation(line: 857, column: 21, scope: !2349)
!2351 = !{!2339, !956, i64 0}
!2352 = !DILocation(line: 858, column: 20, scope: !2349)
!2353 = !DILocation(line: 859, column: 5, scope: !2349)
!2354 = !DILocation(line: 860, column: 10, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2325, file: !133, line: 860, column: 7)
!2356 = !DILocation(line: 860, column: 7, scope: !2325)
!2357 = !DILocation(line: 862, column: 13, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !133, line: 861, column: 5)
!2359 = !DILocation(line: 862, column: 7, scope: !2358)
!2360 = !DILocation(line: 863, column: 15, scope: !2358)
!2361 = !DILocation(line: 864, column: 5, scope: !2358)
!2362 = !DILocation(line: 865, column: 10, scope: !2325)
!2363 = !DILocation(line: 866, column: 1, scope: !2325)
!2364 = distinct !DISubprogram(name: "quotearg_n", scope: !133, file: !133, line: 931, type: !2365, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!97, !40, !31}
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "n", arg: 1, scope: !2364, file: !133, line: 931, type: !40)
!2369 = !DILocalVariable(name: "arg", arg: 2, scope: !2364, file: !133, line: 931, type: !31)
!2370 = !DILocation(line: 931, column: 17, scope: !2364)
!2371 = !DILocation(line: 931, column: 32, scope: !2364)
!2372 = !DILocation(line: 933, column: 10, scope: !2364)
!2373 = !DILocation(line: 933, column: 3, scope: !2364)
!2374 = distinct !DISubprogram(name: "quotearg_n_options", scope: !133, file: !133, line: 877, type: !2375, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!97, !40, !31, !127, !1272}
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2387, !2388, !2390, !2391, !2392}
!2378 = !DILocalVariable(name: "n", arg: 1, scope: !2374, file: !133, line: 877, type: !40)
!2379 = !DILocalVariable(name: "arg", arg: 2, scope: !2374, file: !133, line: 877, type: !31)
!2380 = !DILocalVariable(name: "argsize", arg: 3, scope: !2374, file: !133, line: 877, type: !127)
!2381 = !DILocalVariable(name: "options", arg: 4, scope: !2374, file: !133, line: 878, type: !1272)
!2382 = !DILocalVariable(name: "e", scope: !2374, file: !133, line: 880, type: !40)
!2383 = !DILocalVariable(name: "sv", scope: !2374, file: !133, line: 882, type: !159)
!2384 = !DILocalVariable(name: "preallocated", scope: !2385, file: !133, line: 889, type: !68)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !133, line: 888, column: 5)
!2386 = distinct !DILexicalBlock(scope: !2374, file: !133, line: 887, column: 7)
!2387 = !DILocalVariable(name: "nmax", scope: !2385, file: !133, line: 890, type: !40)
!2388 = !DILocalVariable(name: "size", scope: !2389, file: !133, line: 903, type: !127)
!2389 = distinct !DILexicalBlock(scope: !2374, file: !133, line: 902, column: 3)
!2390 = !DILocalVariable(name: "val", scope: !2389, file: !133, line: 904, type: !97)
!2391 = !DILocalVariable(name: "flags", scope: !2389, file: !133, line: 906, type: !40)
!2392 = !DILocalVariable(name: "qsize", scope: !2389, file: !133, line: 907, type: !127)
!2393 = !DILocation(line: 877, column: 25, scope: !2374)
!2394 = !DILocation(line: 877, column: 40, scope: !2374)
!2395 = !DILocation(line: 877, column: 52, scope: !2374)
!2396 = !DILocation(line: 878, column: 51, scope: !2374)
!2397 = !DILocation(line: 880, column: 11, scope: !2374)
!2398 = !DILocation(line: 880, column: 7, scope: !2374)
!2399 = !DILocation(line: 882, column: 24, scope: !2374)
!2400 = !DILocation(line: 882, column: 19, scope: !2374)
!2401 = !DILocation(line: 884, column: 9, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2374, file: !133, line: 884, column: 7)
!2403 = !DILocation(line: 884, column: 7, scope: !2374)
!2404 = !DILocation(line: 885, column: 5, scope: !2402)
!2405 = !DILocation(line: 887, column: 7, scope: !2386)
!2406 = !DILocation(line: 887, column: 14, scope: !2386)
!2407 = !DILocation(line: 887, column: 7, scope: !2374)
!2408 = !DILocation(line: 889, column: 31, scope: !2385)
!2409 = !DILocation(line: 890, column: 11, scope: !2385)
!2410 = !DILocation(line: 892, column: 16, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2385, file: !133, line: 892, column: 11)
!2412 = !DILocation(line: 892, column: 11, scope: !2385)
!2413 = !DILocation(line: 893, column: 9, scope: !2411)
!2414 = !DILocation(line: 895, column: 32, scope: !2385)
!2415 = !DILocation(line: 895, column: 61, scope: !2385)
!2416 = !DILocation(line: 895, column: 58, scope: !2385)
!2417 = !DILocation(line: 895, column: 66, scope: !2385)
!2418 = !DILocation(line: 895, column: 22, scope: !2385)
!2419 = !DILocation(line: 895, column: 15, scope: !2385)
!2420 = !DILocation(line: 896, column: 11, scope: !2385)
!2421 = !DILocation(line: 897, column: 15, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2385, file: !133, line: 896, column: 11)
!2423 = !{i64 0, i64 8, !2322, i64 8, i64 8, !692}
!2424 = !DILocation(line: 897, column: 9, scope: !2422)
!2425 = !DILocation(line: 898, column: 20, scope: !2385)
!2426 = !DILocation(line: 898, column: 18, scope: !2385)
!2427 = !DILocation(line: 898, column: 7, scope: !2385)
!2428 = !DILocation(line: 898, column: 38, scope: !2385)
!2429 = !DILocation(line: 898, column: 31, scope: !2385)
!2430 = !DILocation(line: 898, column: 48, scope: !2385)
!2431 = !DILocation(line: 899, column: 14, scope: !2385)
!2432 = !DILocation(line: 900, column: 5, scope: !2385)
!2433 = !DILocation(line: 0, scope: !2374)
!2434 = !DILocation(line: 903, column: 19, scope: !2389)
!2435 = !DILocation(line: 903, column: 25, scope: !2389)
!2436 = !DILocation(line: 903, column: 12, scope: !2389)
!2437 = !DILocation(line: 904, column: 23, scope: !2389)
!2438 = !DILocation(line: 904, column: 11, scope: !2389)
!2439 = !DILocation(line: 906, column: 26, scope: !2389)
!2440 = !DILocation(line: 906, column: 32, scope: !2389)
!2441 = !DILocation(line: 906, column: 9, scope: !2389)
!2442 = !DILocation(line: 908, column: 55, scope: !2389)
!2443 = !DILocation(line: 909, column: 46, scope: !2389)
!2444 = !DILocation(line: 910, column: 55, scope: !2389)
!2445 = !DILocation(line: 911, column: 55, scope: !2389)
!2446 = !DILocation(line: 907, column: 20, scope: !2389)
!2447 = !DILocation(line: 907, column: 12, scope: !2389)
!2448 = !DILocation(line: 913, column: 14, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2389, file: !133, line: 913, column: 9)
!2450 = !DILocation(line: 913, column: 9, scope: !2389)
!2451 = !DILocation(line: 915, column: 35, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !133, line: 914, column: 7)
!2453 = !DILocation(line: 915, column: 20, scope: !2452)
!2454 = !DILocation(line: 916, column: 17, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !133, line: 916, column: 13)
!2456 = !DILocation(line: 916, column: 13, scope: !2452)
!2457 = !DILocation(line: 917, column: 11, scope: !2455)
!2458 = !DILocation(line: 216, column: 20, scope: !2277, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 918, column: 27, scope: !2452)
!2460 = !DILocation(line: 218, column: 10, scope: !2277, inlinedAt: !2459)
!2461 = !DILocation(line: 918, column: 19, scope: !2452)
!2462 = !DILocation(line: 919, column: 69, scope: !2452)
!2463 = !DILocation(line: 921, column: 44, scope: !2452)
!2464 = !DILocation(line: 922, column: 44, scope: !2452)
!2465 = !DILocation(line: 919, column: 9, scope: !2452)
!2466 = !DILocation(line: 923, column: 7, scope: !2452)
!2467 = !DILocation(line: 0, scope: !2389)
!2468 = !DILocation(line: 925, column: 11, scope: !2389)
!2469 = !DILocation(line: 926, column: 5, scope: !2389)
!2470 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !133, file: !133, line: 937, type: !2471, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!97, !40, !31, !127}
!2473 = !{!2474, !2475, !2476}
!2474 = !DILocalVariable(name: "n", arg: 1, scope: !2470, file: !133, line: 937, type: !40)
!2475 = !DILocalVariable(name: "arg", arg: 2, scope: !2470, file: !133, line: 937, type: !31)
!2476 = !DILocalVariable(name: "argsize", arg: 3, scope: !2470, file: !133, line: 937, type: !127)
!2477 = !DILocation(line: 937, column: 21, scope: !2470)
!2478 = !DILocation(line: 937, column: 36, scope: !2470)
!2479 = !DILocation(line: 937, column: 48, scope: !2470)
!2480 = !DILocation(line: 939, column: 10, scope: !2470)
!2481 = !DILocation(line: 939, column: 3, scope: !2470)
!2482 = distinct !DISubprogram(name: "quotearg", scope: !133, file: !133, line: 943, type: !2483, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!97, !31}
!2485 = !{!2486}
!2486 = !DILocalVariable(name: "arg", arg: 1, scope: !2482, file: !133, line: 943, type: !31)
!2487 = !DILocation(line: 943, column: 23, scope: !2482)
!2488 = !DILocation(line: 931, column: 17, scope: !2364, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 945, column: 10, scope: !2482)
!2490 = !DILocation(line: 931, column: 32, scope: !2364, inlinedAt: !2489)
!2491 = !DILocation(line: 933, column: 10, scope: !2364, inlinedAt: !2489)
!2492 = !DILocation(line: 945, column: 3, scope: !2482)
!2493 = distinct !DISubprogram(name: "quotearg_mem", scope: !133, file: !133, line: 949, type: !2494, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!97, !31, !127}
!2496 = !{!2497, !2498}
!2497 = !DILocalVariable(name: "arg", arg: 1, scope: !2493, file: !133, line: 949, type: !31)
!2498 = !DILocalVariable(name: "argsize", arg: 2, scope: !2493, file: !133, line: 949, type: !127)
!2499 = !DILocation(line: 949, column: 27, scope: !2493)
!2500 = !DILocation(line: 949, column: 39, scope: !2493)
!2501 = !DILocation(line: 937, column: 21, scope: !2470, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 951, column: 10, scope: !2493)
!2503 = !DILocation(line: 937, column: 36, scope: !2470, inlinedAt: !2502)
!2504 = !DILocation(line: 937, column: 48, scope: !2470, inlinedAt: !2502)
!2505 = !DILocation(line: 939, column: 10, scope: !2470, inlinedAt: !2502)
!2506 = !DILocation(line: 951, column: 3, scope: !2493)
!2507 = distinct !DISubprogram(name: "quotearg_n_style", scope: !133, file: !133, line: 955, type: !2508, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!97, !40, !16, !31}
!2510 = !{!2511, !2512, !2513, !2514}
!2511 = !DILocalVariable(name: "n", arg: 1, scope: !2507, file: !133, line: 955, type: !40)
!2512 = !DILocalVariable(name: "s", arg: 2, scope: !2507, file: !133, line: 955, type: !16)
!2513 = !DILocalVariable(name: "arg", arg: 3, scope: !2507, file: !133, line: 955, type: !31)
!2514 = !DILocalVariable(name: "o", scope: !2507, file: !133, line: 957, type: !1273)
!2515 = !DILocation(line: 955, column: 23, scope: !2507)
!2516 = !DILocation(line: 955, column: 45, scope: !2507)
!2517 = !DILocation(line: 955, column: 60, scope: !2507)
!2518 = !DILocation(line: 957, column: 3, scope: !2507)
!2519 = !DILocation(line: 957, column: 32, scope: !2507)
!2520 = !DILocalVariable(name: "style", arg: 1, scope: !2521, file: !133, line: 193, type: !16)
!2521 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !133, file: !133, line: 193, type: !2522, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!140, !16}
!2524 = !{!2520, !2525}
!2525 = !DILocalVariable(name: "o", scope: !2521, file: !133, line: 195, type: !140)
!2526 = !DILocation(line: 193, column: 48, scope: !2521, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 957, column: 36, scope: !2507)
!2528 = !DILocation(line: 195, column: 26, scope: !2521, inlinedAt: !2527)
!2529 = !{!2530}
!2530 = distinct !{!2530, !2531, !"quoting_options_from_style: argument 0"}
!2531 = distinct !{!2531, !"quoting_options_from_style"}
!2532 = !DILocation(line: 196, column: 13, scope: !2533, inlinedAt: !2527)
!2533 = distinct !DILexicalBlock(scope: !2521, file: !133, line: 196, column: 7)
!2534 = !DILocation(line: 196, column: 7, scope: !2521, inlinedAt: !2527)
!2535 = !DILocation(line: 197, column: 5, scope: !2533, inlinedAt: !2527)
!2536 = !DILocation(line: 198, column: 5, scope: !2521, inlinedAt: !2527)
!2537 = !DILocation(line: 198, column: 11, scope: !2521, inlinedAt: !2527)
!2538 = !DILocation(line: 958, column: 10, scope: !2507)
!2539 = !DILocation(line: 959, column: 1, scope: !2507)
!2540 = !DILocation(line: 958, column: 3, scope: !2507)
!2541 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !133, file: !133, line: 962, type: !2542, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!97, !40, !16, !31, !127}
!2544 = !{!2545, !2546, !2547, !2548, !2549}
!2545 = !DILocalVariable(name: "n", arg: 1, scope: !2541, file: !133, line: 962, type: !40)
!2546 = !DILocalVariable(name: "s", arg: 2, scope: !2541, file: !133, line: 962, type: !16)
!2547 = !DILocalVariable(name: "arg", arg: 3, scope: !2541, file: !133, line: 963, type: !31)
!2548 = !DILocalVariable(name: "argsize", arg: 4, scope: !2541, file: !133, line: 963, type: !127)
!2549 = !DILocalVariable(name: "o", scope: !2541, file: !133, line: 965, type: !1273)
!2550 = !DILocation(line: 962, column: 27, scope: !2541)
!2551 = !DILocation(line: 962, column: 49, scope: !2541)
!2552 = !DILocation(line: 963, column: 35, scope: !2541)
!2553 = !DILocation(line: 963, column: 47, scope: !2541)
!2554 = !DILocation(line: 965, column: 3, scope: !2541)
!2555 = !DILocation(line: 965, column: 32, scope: !2541)
!2556 = !DILocation(line: 193, column: 48, scope: !2521, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 965, column: 36, scope: !2541)
!2558 = !DILocation(line: 195, column: 26, scope: !2521, inlinedAt: !2557)
!2559 = !{!2560}
!2560 = distinct !{!2560, !2561, !"quoting_options_from_style: argument 0"}
!2561 = distinct !{!2561, !"quoting_options_from_style"}
!2562 = !DILocation(line: 196, column: 13, scope: !2533, inlinedAt: !2557)
!2563 = !DILocation(line: 196, column: 7, scope: !2521, inlinedAt: !2557)
!2564 = !DILocation(line: 197, column: 5, scope: !2533, inlinedAt: !2557)
!2565 = !DILocation(line: 198, column: 5, scope: !2521, inlinedAt: !2557)
!2566 = !DILocation(line: 198, column: 11, scope: !2521, inlinedAt: !2557)
!2567 = !DILocation(line: 966, column: 10, scope: !2541)
!2568 = !DILocation(line: 967, column: 1, scope: !2541)
!2569 = !DILocation(line: 966, column: 3, scope: !2541)
!2570 = distinct !DISubprogram(name: "quotearg_style", scope: !133, file: !133, line: 970, type: !2571, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!97, !16, !31}
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "s", arg: 1, scope: !2570, file: !133, line: 970, type: !16)
!2575 = !DILocalVariable(name: "arg", arg: 2, scope: !2570, file: !133, line: 970, type: !31)
!2576 = !DILocation(line: 970, column: 36, scope: !2570)
!2577 = !DILocation(line: 970, column: 51, scope: !2570)
!2578 = !DILocation(line: 955, column: 23, scope: !2507, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 972, column: 10, scope: !2570)
!2580 = !DILocation(line: 955, column: 45, scope: !2507, inlinedAt: !2579)
!2581 = !DILocation(line: 955, column: 60, scope: !2507, inlinedAt: !2579)
!2582 = !DILocation(line: 957, column: 3, scope: !2507, inlinedAt: !2579)
!2583 = !DILocation(line: 957, column: 32, scope: !2507, inlinedAt: !2579)
!2584 = !DILocation(line: 193, column: 48, scope: !2521, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 957, column: 36, scope: !2507, inlinedAt: !2579)
!2586 = !DILocation(line: 195, column: 26, scope: !2521, inlinedAt: !2585)
!2587 = !{!2588}
!2588 = distinct !{!2588, !2589, !"quoting_options_from_style: argument 0"}
!2589 = distinct !{!2589, !"quoting_options_from_style"}
!2590 = !DILocation(line: 196, column: 13, scope: !2533, inlinedAt: !2585)
!2591 = !DILocation(line: 196, column: 7, scope: !2521, inlinedAt: !2585)
!2592 = !DILocation(line: 197, column: 5, scope: !2533, inlinedAt: !2585)
!2593 = !DILocation(line: 198, column: 5, scope: !2521, inlinedAt: !2585)
!2594 = !DILocation(line: 198, column: 11, scope: !2521, inlinedAt: !2585)
!2595 = !DILocation(line: 958, column: 10, scope: !2507, inlinedAt: !2579)
!2596 = !DILocation(line: 959, column: 1, scope: !2507, inlinedAt: !2579)
!2597 = !DILocation(line: 972, column: 3, scope: !2570)
!2598 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !133, file: !133, line: 976, type: !2599, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!97, !16, !31, !127}
!2601 = !{!2602, !2603, !2604}
!2602 = !DILocalVariable(name: "s", arg: 1, scope: !2598, file: !133, line: 976, type: !16)
!2603 = !DILocalVariable(name: "arg", arg: 2, scope: !2598, file: !133, line: 976, type: !31)
!2604 = !DILocalVariable(name: "argsize", arg: 3, scope: !2598, file: !133, line: 976, type: !127)
!2605 = !DILocation(line: 976, column: 40, scope: !2598)
!2606 = !DILocation(line: 976, column: 55, scope: !2598)
!2607 = !DILocation(line: 976, column: 67, scope: !2598)
!2608 = !DILocation(line: 962, column: 27, scope: !2541, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 978, column: 10, scope: !2598)
!2610 = !DILocation(line: 962, column: 49, scope: !2541, inlinedAt: !2609)
!2611 = !DILocation(line: 963, column: 35, scope: !2541, inlinedAt: !2609)
!2612 = !DILocation(line: 963, column: 47, scope: !2541, inlinedAt: !2609)
!2613 = !DILocation(line: 965, column: 3, scope: !2541, inlinedAt: !2609)
!2614 = !DILocation(line: 965, column: 32, scope: !2541, inlinedAt: !2609)
!2615 = !DILocation(line: 193, column: 48, scope: !2521, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 965, column: 36, scope: !2541, inlinedAt: !2609)
!2617 = !DILocation(line: 195, column: 26, scope: !2521, inlinedAt: !2616)
!2618 = !{!2619}
!2619 = distinct !{!2619, !2620, !"quoting_options_from_style: argument 0"}
!2620 = distinct !{!2620, !"quoting_options_from_style"}
!2621 = !DILocation(line: 196, column: 13, scope: !2533, inlinedAt: !2616)
!2622 = !DILocation(line: 196, column: 7, scope: !2521, inlinedAt: !2616)
!2623 = !DILocation(line: 197, column: 5, scope: !2533, inlinedAt: !2616)
!2624 = !DILocation(line: 198, column: 5, scope: !2521, inlinedAt: !2616)
!2625 = !DILocation(line: 198, column: 11, scope: !2521, inlinedAt: !2616)
!2626 = !DILocation(line: 966, column: 10, scope: !2541, inlinedAt: !2609)
!2627 = !DILocation(line: 967, column: 1, scope: !2541, inlinedAt: !2609)
!2628 = !DILocation(line: 978, column: 3, scope: !2598)
!2629 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !133, file: !133, line: 982, type: !2630, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!97, !31, !127, !33}
!2632 = !{!2633, !2634, !2635, !2636}
!2633 = !DILocalVariable(name: "arg", arg: 1, scope: !2629, file: !133, line: 982, type: !31)
!2634 = !DILocalVariable(name: "argsize", arg: 2, scope: !2629, file: !133, line: 982, type: !127)
!2635 = !DILocalVariable(name: "ch", arg: 3, scope: !2629, file: !133, line: 982, type: !33)
!2636 = !DILocalVariable(name: "options", scope: !2629, file: !133, line: 984, type: !140)
!2637 = !DILocation(line: 982, column: 32, scope: !2629)
!2638 = !DILocation(line: 982, column: 44, scope: !2629)
!2639 = !DILocation(line: 982, column: 58, scope: !2629)
!2640 = !DILocation(line: 984, column: 3, scope: !2629)
!2641 = !DILocation(line: 985, column: 13, scope: !2629)
!2642 = !{i64 0, i64 4, !1112, i64 4, i64 4, !790, i64 8, i64 32, !1112, i64 40, i64 8, !692, i64 48, i64 8, !692}
!2643 = !DILocation(line: 984, column: 26, scope: !2629)
!2644 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 986, column: 3, scope: !2629)
!2646 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2645)
!2647 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2645)
!2648 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2645)
!2649 = !DILocation(line: 156, column: 62, scope: !1294, inlinedAt: !2645)
!2650 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2645)
!2651 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2645)
!2652 = !DILocation(line: 157, column: 15, scope: !1294, inlinedAt: !2645)
!2653 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2645)
!2654 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2645)
!2655 = !DILocation(line: 158, column: 15, scope: !1294, inlinedAt: !2645)
!2656 = !DILocation(line: 158, column: 25, scope: !1294, inlinedAt: !2645)
!2657 = !DILocation(line: 158, column: 7, scope: !1294, inlinedAt: !2645)
!2658 = !DILocation(line: 159, column: 18, scope: !1294, inlinedAt: !2645)
!2659 = !DILocation(line: 159, column: 23, scope: !1294, inlinedAt: !2645)
!2660 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2645)
!2661 = !DILocation(line: 987, column: 10, scope: !2629)
!2662 = !DILocation(line: 988, column: 1, scope: !2629)
!2663 = !DILocation(line: 987, column: 3, scope: !2629)
!2664 = distinct !DISubprogram(name: "quotearg_char", scope: !133, file: !133, line: 991, type: !2665, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!97, !31, !33}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "arg", arg: 1, scope: !2664, file: !133, line: 991, type: !31)
!2669 = !DILocalVariable(name: "ch", arg: 2, scope: !2664, file: !133, line: 991, type: !33)
!2670 = !DILocation(line: 991, column: 28, scope: !2664)
!2671 = !DILocation(line: 991, column: 38, scope: !2664)
!2672 = !DILocation(line: 982, column: 32, scope: !2629, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 993, column: 10, scope: !2664)
!2674 = !DILocation(line: 982, column: 44, scope: !2629, inlinedAt: !2673)
!2675 = !DILocation(line: 982, column: 58, scope: !2629, inlinedAt: !2673)
!2676 = !DILocation(line: 984, column: 3, scope: !2629, inlinedAt: !2673)
!2677 = !DILocation(line: 985, column: 13, scope: !2629, inlinedAt: !2673)
!2678 = !DILocation(line: 984, column: 26, scope: !2629, inlinedAt: !2673)
!2679 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 986, column: 3, scope: !2629, inlinedAt: !2673)
!2681 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2680)
!2682 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2680)
!2683 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2680)
!2684 = !DILocation(line: 156, column: 62, scope: !1294, inlinedAt: !2680)
!2685 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2680)
!2686 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2680)
!2687 = !DILocation(line: 157, column: 15, scope: !1294, inlinedAt: !2680)
!2688 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2680)
!2689 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2680)
!2690 = !DILocation(line: 158, column: 15, scope: !1294, inlinedAt: !2680)
!2691 = !DILocation(line: 158, column: 25, scope: !1294, inlinedAt: !2680)
!2692 = !DILocation(line: 158, column: 7, scope: !1294, inlinedAt: !2680)
!2693 = !DILocation(line: 159, column: 18, scope: !1294, inlinedAt: !2680)
!2694 = !DILocation(line: 159, column: 23, scope: !1294, inlinedAt: !2680)
!2695 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2680)
!2696 = !DILocation(line: 987, column: 10, scope: !2629, inlinedAt: !2673)
!2697 = !DILocation(line: 988, column: 1, scope: !2629, inlinedAt: !2673)
!2698 = !DILocation(line: 993, column: 3, scope: !2664)
!2699 = distinct !DISubprogram(name: "quotearg_colon", scope: !133, file: !133, line: 997, type: !2483, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2700)
!2700 = !{!2701}
!2701 = !DILocalVariable(name: "arg", arg: 1, scope: !2699, file: !133, line: 997, type: !31)
!2702 = !DILocation(line: 997, column: 29, scope: !2699)
!2703 = !DILocation(line: 991, column: 28, scope: !2664, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 999, column: 10, scope: !2699)
!2705 = !DILocation(line: 991, column: 38, scope: !2664, inlinedAt: !2704)
!2706 = !DILocation(line: 982, column: 32, scope: !2629, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 993, column: 10, scope: !2664, inlinedAt: !2704)
!2708 = !DILocation(line: 982, column: 44, scope: !2629, inlinedAt: !2707)
!2709 = !DILocation(line: 982, column: 58, scope: !2629, inlinedAt: !2707)
!2710 = !DILocation(line: 984, column: 3, scope: !2629, inlinedAt: !2707)
!2711 = !DILocation(line: 985, column: 13, scope: !2629, inlinedAt: !2707)
!2712 = !DILocation(line: 984, column: 26, scope: !2629, inlinedAt: !2707)
!2713 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 986, column: 3, scope: !2629, inlinedAt: !2707)
!2715 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2714)
!2716 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2714)
!2717 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2714)
!2718 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2714)
!2719 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2714)
!2720 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2714)
!2721 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2714)
!2722 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2714)
!2723 = !DILocation(line: 987, column: 10, scope: !2629, inlinedAt: !2707)
!2724 = !DILocation(line: 988, column: 1, scope: !2629, inlinedAt: !2707)
!2725 = !DILocation(line: 999, column: 3, scope: !2699)
!2726 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !133, file: !133, line: 1003, type: !2494, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2727)
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "arg", arg: 1, scope: !2726, file: !133, line: 1003, type: !31)
!2729 = !DILocalVariable(name: "argsize", arg: 2, scope: !2726, file: !133, line: 1003, type: !127)
!2730 = !DILocation(line: 1003, column: 33, scope: !2726)
!2731 = !DILocation(line: 1003, column: 45, scope: !2726)
!2732 = !DILocation(line: 982, column: 32, scope: !2629, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1005, column: 10, scope: !2726)
!2734 = !DILocation(line: 982, column: 44, scope: !2629, inlinedAt: !2733)
!2735 = !DILocation(line: 982, column: 58, scope: !2629, inlinedAt: !2733)
!2736 = !DILocation(line: 984, column: 3, scope: !2629, inlinedAt: !2733)
!2737 = !DILocation(line: 985, column: 13, scope: !2629, inlinedAt: !2733)
!2738 = !DILocation(line: 984, column: 26, scope: !2629, inlinedAt: !2733)
!2739 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 986, column: 3, scope: !2629, inlinedAt: !2733)
!2741 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2740)
!2742 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2740)
!2743 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2740)
!2744 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2740)
!2745 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2740)
!2746 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2740)
!2747 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2740)
!2748 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2740)
!2749 = !DILocation(line: 987, column: 10, scope: !2629, inlinedAt: !2733)
!2750 = !DILocation(line: 988, column: 1, scope: !2629, inlinedAt: !2733)
!2751 = !DILocation(line: 1005, column: 3, scope: !2726)
!2752 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !133, file: !133, line: 1009, type: !2508, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2753)
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !133, line: 1009, type: !40)
!2755 = !DILocalVariable(name: "s", arg: 2, scope: !2752, file: !133, line: 1009, type: !16)
!2756 = !DILocalVariable(name: "arg", arg: 3, scope: !2752, file: !133, line: 1009, type: !31)
!2757 = !DILocalVariable(name: "options", scope: !2752, file: !133, line: 1011, type: !140)
!2758 = !DILocation(line: 195, column: 26, scope: !2521, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 1012, column: 13, scope: !2752)
!2760 = !DILocation(line: 1009, column: 29, scope: !2752)
!2761 = !DILocation(line: 1009, column: 51, scope: !2752)
!2762 = !DILocation(line: 1009, column: 66, scope: !2752)
!2763 = !DILocation(line: 1011, column: 3, scope: !2752)
!2764 = !DILocation(line: 1012, column: 13, scope: !2752)
!2765 = !DILocation(line: 193, column: 48, scope: !2521, inlinedAt: !2759)
!2766 = !{!2767}
!2767 = distinct !{!2767, !2768, !"quoting_options_from_style: argument 0"}
!2768 = distinct !{!2768, !"quoting_options_from_style"}
!2769 = !DILocation(line: 196, column: 13, scope: !2533, inlinedAt: !2759)
!2770 = !DILocation(line: 196, column: 7, scope: !2521, inlinedAt: !2759)
!2771 = !DILocation(line: 197, column: 5, scope: !2533, inlinedAt: !2759)
!2772 = !DILocation(line: 1011, column: 26, scope: !2752)
!2773 = !DILocation(line: 152, column: 43, scope: !1294, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 1013, column: 3, scope: !2752)
!2775 = !DILocation(line: 152, column: 51, scope: !1294, inlinedAt: !2774)
!2776 = !DILocation(line: 152, column: 58, scope: !1294, inlinedAt: !2774)
!2777 = !DILocation(line: 154, column: 17, scope: !1294, inlinedAt: !2774)
!2778 = !DILocation(line: 156, column: 57, scope: !1294, inlinedAt: !2774)
!2779 = !DILocation(line: 155, column: 17, scope: !1294, inlinedAt: !2774)
!2780 = !DILocation(line: 157, column: 7, scope: !1294, inlinedAt: !2774)
!2781 = !DILocation(line: 158, column: 12, scope: !1294, inlinedAt: !2774)
!2782 = !DILocation(line: 159, column: 6, scope: !1294, inlinedAt: !2774)
!2783 = !DILocation(line: 1014, column: 10, scope: !2752)
!2784 = !DILocation(line: 1015, column: 1, scope: !2752)
!2785 = !DILocation(line: 1014, column: 3, scope: !2752)
!2786 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !133, file: !133, line: 1018, type: !2787, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!97, !40, !31, !31, !31}
!2789 = !{!2790, !2791, !2792, !2793}
!2790 = !DILocalVariable(name: "n", arg: 1, scope: !2786, file: !133, line: 1018, type: !40)
!2791 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2786, file: !133, line: 1018, type: !31)
!2792 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2786, file: !133, line: 1019, type: !31)
!2793 = !DILocalVariable(name: "arg", arg: 4, scope: !2786, file: !133, line: 1019, type: !31)
!2794 = !DILocation(line: 1018, column: 24, scope: !2786)
!2795 = !DILocation(line: 1018, column: 39, scope: !2786)
!2796 = !DILocation(line: 1019, column: 32, scope: !2786)
!2797 = !DILocation(line: 1019, column: 57, scope: !2786)
!2798 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !133, line: 1026, type: !40)
!2799 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !133, file: !133, line: 1026, type: !2800, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!97, !40, !31, !31, !31, !127}
!2802 = !{!2798, !2803, !2804, !2805, !2806, !2807}
!2803 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2799, file: !133, line: 1026, type: !31)
!2804 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2799, file: !133, line: 1027, type: !31)
!2805 = !DILocalVariable(name: "arg", arg: 4, scope: !2799, file: !133, line: 1028, type: !31)
!2806 = !DILocalVariable(name: "argsize", arg: 5, scope: !2799, file: !133, line: 1028, type: !127)
!2807 = !DILocalVariable(name: "o", scope: !2799, file: !133, line: 1030, type: !140)
!2808 = !DILocation(line: 1026, column: 28, scope: !2799, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 1021, column: 10, scope: !2786)
!2810 = !DILocation(line: 1026, column: 43, scope: !2799, inlinedAt: !2809)
!2811 = !DILocation(line: 1027, column: 36, scope: !2799, inlinedAt: !2809)
!2812 = !DILocation(line: 1028, column: 36, scope: !2799, inlinedAt: !2809)
!2813 = !DILocation(line: 1028, column: 48, scope: !2799, inlinedAt: !2809)
!2814 = !DILocation(line: 1030, column: 3, scope: !2799, inlinedAt: !2809)
!2815 = !DILocation(line: 1030, column: 30, scope: !2799, inlinedAt: !2809)
!2816 = !DILocation(line: 1030, column: 26, scope: !2799, inlinedAt: !2809)
!2817 = !DILocation(line: 179, column: 45, scope: !1343, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 1031, column: 3, scope: !2799, inlinedAt: !2809)
!2819 = !DILocation(line: 180, column: 33, scope: !1343, inlinedAt: !2818)
!2820 = !DILocation(line: 180, column: 57, scope: !1343, inlinedAt: !2818)
!2821 = !DILocation(line: 184, column: 6, scope: !1343, inlinedAt: !2818)
!2822 = !DILocation(line: 184, column: 12, scope: !1343, inlinedAt: !2818)
!2823 = !DILocation(line: 185, column: 8, scope: !1359, inlinedAt: !2818)
!2824 = !DILocation(line: 185, column: 23, scope: !1359, inlinedAt: !2818)
!2825 = !DILocation(line: 185, column: 19, scope: !1359, inlinedAt: !2818)
!2826 = !DILocation(line: 186, column: 5, scope: !1359, inlinedAt: !2818)
!2827 = !DILocation(line: 187, column: 6, scope: !1343, inlinedAt: !2818)
!2828 = !DILocation(line: 187, column: 17, scope: !1343, inlinedAt: !2818)
!2829 = !DILocation(line: 188, column: 6, scope: !1343, inlinedAt: !2818)
!2830 = !DILocation(line: 188, column: 18, scope: !1343, inlinedAt: !2818)
!2831 = !DILocation(line: 1032, column: 10, scope: !2799, inlinedAt: !2809)
!2832 = !DILocation(line: 1033, column: 1, scope: !2799, inlinedAt: !2809)
!2833 = !DILocation(line: 1021, column: 3, scope: !2786)
!2834 = !DILocation(line: 1026, column: 28, scope: !2799)
!2835 = !DILocation(line: 1026, column: 43, scope: !2799)
!2836 = !DILocation(line: 1027, column: 36, scope: !2799)
!2837 = !DILocation(line: 1028, column: 36, scope: !2799)
!2838 = !DILocation(line: 1028, column: 48, scope: !2799)
!2839 = !DILocation(line: 1030, column: 3, scope: !2799)
!2840 = !DILocation(line: 1030, column: 30, scope: !2799)
!2841 = !DILocation(line: 1030, column: 26, scope: !2799)
!2842 = !DILocation(line: 179, column: 45, scope: !1343, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 1031, column: 3, scope: !2799)
!2844 = !DILocation(line: 180, column: 33, scope: !1343, inlinedAt: !2843)
!2845 = !DILocation(line: 180, column: 57, scope: !1343, inlinedAt: !2843)
!2846 = !DILocation(line: 184, column: 6, scope: !1343, inlinedAt: !2843)
!2847 = !DILocation(line: 184, column: 12, scope: !1343, inlinedAt: !2843)
!2848 = !DILocation(line: 185, column: 8, scope: !1359, inlinedAt: !2843)
!2849 = !DILocation(line: 185, column: 23, scope: !1359, inlinedAt: !2843)
!2850 = !DILocation(line: 185, column: 19, scope: !1359, inlinedAt: !2843)
!2851 = !DILocation(line: 186, column: 5, scope: !1359, inlinedAt: !2843)
!2852 = !DILocation(line: 187, column: 6, scope: !1343, inlinedAt: !2843)
!2853 = !DILocation(line: 187, column: 17, scope: !1343, inlinedAt: !2843)
!2854 = !DILocation(line: 188, column: 6, scope: !1343, inlinedAt: !2843)
!2855 = !DILocation(line: 188, column: 18, scope: !1343, inlinedAt: !2843)
!2856 = !DILocation(line: 1032, column: 10, scope: !2799)
!2857 = !DILocation(line: 1033, column: 1, scope: !2799)
!2858 = !DILocation(line: 1032, column: 3, scope: !2799)
!2859 = distinct !DISubprogram(name: "quotearg_custom", scope: !133, file: !133, line: 1036, type: !2860, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!97, !31, !31, !31}
!2862 = !{!2863, !2864, !2865}
!2863 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2859, file: !133, line: 1036, type: !31)
!2864 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2859, file: !133, line: 1036, type: !31)
!2865 = !DILocalVariable(name: "arg", arg: 3, scope: !2859, file: !133, line: 1037, type: !31)
!2866 = !DILocation(line: 1036, column: 30, scope: !2859)
!2867 = !DILocation(line: 1036, column: 54, scope: !2859)
!2868 = !DILocation(line: 1037, column: 30, scope: !2859)
!2869 = !DILocation(line: 1018, column: 24, scope: !2786, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 1039, column: 10, scope: !2859)
!2871 = !DILocation(line: 1018, column: 39, scope: !2786, inlinedAt: !2870)
!2872 = !DILocation(line: 1019, column: 32, scope: !2786, inlinedAt: !2870)
!2873 = !DILocation(line: 1019, column: 57, scope: !2786, inlinedAt: !2870)
!2874 = !DILocation(line: 1026, column: 28, scope: !2799, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 1021, column: 10, scope: !2786, inlinedAt: !2870)
!2876 = !DILocation(line: 1026, column: 43, scope: !2799, inlinedAt: !2875)
!2877 = !DILocation(line: 1027, column: 36, scope: !2799, inlinedAt: !2875)
!2878 = !DILocation(line: 1028, column: 36, scope: !2799, inlinedAt: !2875)
!2879 = !DILocation(line: 1028, column: 48, scope: !2799, inlinedAt: !2875)
!2880 = !DILocation(line: 1030, column: 3, scope: !2799, inlinedAt: !2875)
!2881 = !DILocation(line: 1030, column: 30, scope: !2799, inlinedAt: !2875)
!2882 = !DILocation(line: 1030, column: 26, scope: !2799, inlinedAt: !2875)
!2883 = !DILocation(line: 179, column: 45, scope: !1343, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 1031, column: 3, scope: !2799, inlinedAt: !2875)
!2885 = !DILocation(line: 180, column: 33, scope: !1343, inlinedAt: !2884)
!2886 = !DILocation(line: 180, column: 57, scope: !1343, inlinedAt: !2884)
!2887 = !DILocation(line: 184, column: 6, scope: !1343, inlinedAt: !2884)
!2888 = !DILocation(line: 184, column: 12, scope: !1343, inlinedAt: !2884)
!2889 = !DILocation(line: 185, column: 8, scope: !1359, inlinedAt: !2884)
!2890 = !DILocation(line: 185, column: 23, scope: !1359, inlinedAt: !2884)
!2891 = !DILocation(line: 185, column: 19, scope: !1359, inlinedAt: !2884)
!2892 = !DILocation(line: 186, column: 5, scope: !1359, inlinedAt: !2884)
!2893 = !DILocation(line: 187, column: 6, scope: !1343, inlinedAt: !2884)
!2894 = !DILocation(line: 187, column: 17, scope: !1343, inlinedAt: !2884)
!2895 = !DILocation(line: 188, column: 6, scope: !1343, inlinedAt: !2884)
!2896 = !DILocation(line: 188, column: 18, scope: !1343, inlinedAt: !2884)
!2897 = !DILocation(line: 1032, column: 10, scope: !2799, inlinedAt: !2875)
!2898 = !DILocation(line: 1033, column: 1, scope: !2799, inlinedAt: !2875)
!2899 = !DILocation(line: 1039, column: 3, scope: !2859)
!2900 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !133, file: !133, line: 1043, type: !2901, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!97, !31, !31, !31, !127}
!2903 = !{!2904, !2905, !2906, !2907}
!2904 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2900, file: !133, line: 1043, type: !31)
!2905 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2900, file: !133, line: 1043, type: !31)
!2906 = !DILocalVariable(name: "arg", arg: 3, scope: !2900, file: !133, line: 1044, type: !31)
!2907 = !DILocalVariable(name: "argsize", arg: 4, scope: !2900, file: !133, line: 1044, type: !127)
!2908 = !DILocation(line: 1043, column: 34, scope: !2900)
!2909 = !DILocation(line: 1043, column: 58, scope: !2900)
!2910 = !DILocation(line: 1044, column: 34, scope: !2900)
!2911 = !DILocation(line: 1044, column: 46, scope: !2900)
!2912 = !DILocation(line: 1026, column: 28, scope: !2799, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1046, column: 10, scope: !2900)
!2914 = !DILocation(line: 1026, column: 43, scope: !2799, inlinedAt: !2913)
!2915 = !DILocation(line: 1027, column: 36, scope: !2799, inlinedAt: !2913)
!2916 = !DILocation(line: 1028, column: 36, scope: !2799, inlinedAt: !2913)
!2917 = !DILocation(line: 1028, column: 48, scope: !2799, inlinedAt: !2913)
!2918 = !DILocation(line: 1030, column: 3, scope: !2799, inlinedAt: !2913)
!2919 = !DILocation(line: 1030, column: 30, scope: !2799, inlinedAt: !2913)
!2920 = !DILocation(line: 1030, column: 26, scope: !2799, inlinedAt: !2913)
!2921 = !DILocation(line: 179, column: 45, scope: !1343, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 1031, column: 3, scope: !2799, inlinedAt: !2913)
!2923 = !DILocation(line: 180, column: 33, scope: !1343, inlinedAt: !2922)
!2924 = !DILocation(line: 180, column: 57, scope: !1343, inlinedAt: !2922)
!2925 = !DILocation(line: 184, column: 6, scope: !1343, inlinedAt: !2922)
!2926 = !DILocation(line: 184, column: 12, scope: !1343, inlinedAt: !2922)
!2927 = !DILocation(line: 185, column: 8, scope: !1359, inlinedAt: !2922)
!2928 = !DILocation(line: 185, column: 23, scope: !1359, inlinedAt: !2922)
!2929 = !DILocation(line: 185, column: 19, scope: !1359, inlinedAt: !2922)
!2930 = !DILocation(line: 186, column: 5, scope: !1359, inlinedAt: !2922)
!2931 = !DILocation(line: 187, column: 6, scope: !1343, inlinedAt: !2922)
!2932 = !DILocation(line: 187, column: 17, scope: !1343, inlinedAt: !2922)
!2933 = !DILocation(line: 188, column: 6, scope: !1343, inlinedAt: !2922)
!2934 = !DILocation(line: 188, column: 18, scope: !1343, inlinedAt: !2922)
!2935 = !DILocation(line: 1032, column: 10, scope: !2799, inlinedAt: !2913)
!2936 = !DILocation(line: 1033, column: 1, scope: !2799, inlinedAt: !2913)
!2937 = !DILocation(line: 1046, column: 3, scope: !2900)
!2938 = distinct !DISubprogram(name: "quote_n_mem", scope: !133, file: !133, line: 1061, type: !2939, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!31, !40, !31, !127}
!2941 = !{!2942, !2943, !2944}
!2942 = !DILocalVariable(name: "n", arg: 1, scope: !2938, file: !133, line: 1061, type: !40)
!2943 = !DILocalVariable(name: "arg", arg: 2, scope: !2938, file: !133, line: 1061, type: !31)
!2944 = !DILocalVariable(name: "argsize", arg: 3, scope: !2938, file: !133, line: 1061, type: !127)
!2945 = !DILocation(line: 1061, column: 18, scope: !2938)
!2946 = !DILocation(line: 1061, column: 33, scope: !2938)
!2947 = !DILocation(line: 1061, column: 45, scope: !2938)
!2948 = !DILocation(line: 1063, column: 10, scope: !2938)
!2949 = !DILocation(line: 1063, column: 3, scope: !2938)
!2950 = distinct !DISubprogram(name: "quote_mem", scope: !133, file: !133, line: 1067, type: !2951, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!31, !31, !127}
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !133, line: 1067, type: !31)
!2955 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !133, line: 1067, type: !127)
!2956 = !DILocation(line: 1067, column: 24, scope: !2950)
!2957 = !DILocation(line: 1067, column: 36, scope: !2950)
!2958 = !DILocation(line: 1061, column: 18, scope: !2938, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 1069, column: 10, scope: !2950)
!2960 = !DILocation(line: 1061, column: 33, scope: !2938, inlinedAt: !2959)
!2961 = !DILocation(line: 1061, column: 45, scope: !2938, inlinedAt: !2959)
!2962 = !DILocation(line: 1063, column: 10, scope: !2938, inlinedAt: !2959)
!2963 = !DILocation(line: 1069, column: 3, scope: !2950)
!2964 = distinct !DISubprogram(name: "quote_n", scope: !133, file: !133, line: 1073, type: !2965, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!31, !40, !31}
!2967 = !{!2968, !2969}
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2964, file: !133, line: 1073, type: !40)
!2969 = !DILocalVariable(name: "arg", arg: 2, scope: !2964, file: !133, line: 1073, type: !31)
!2970 = !DILocation(line: 1073, column: 14, scope: !2964)
!2971 = !DILocation(line: 1073, column: 29, scope: !2964)
!2972 = !DILocation(line: 1061, column: 18, scope: !2938, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 1075, column: 10, scope: !2964)
!2974 = !DILocation(line: 1061, column: 33, scope: !2938, inlinedAt: !2973)
!2975 = !DILocation(line: 1061, column: 45, scope: !2938, inlinedAt: !2973)
!2976 = !DILocation(line: 1063, column: 10, scope: !2938, inlinedAt: !2973)
!2977 = !DILocation(line: 1075, column: 3, scope: !2964)
!2978 = distinct !DISubprogram(name: "quote", scope: !133, file: !133, line: 1079, type: !2979, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !102, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!31, !31}
!2981 = !{!2982}
!2982 = !DILocalVariable(name: "arg", arg: 1, scope: !2978, file: !133, line: 1079, type: !31)
!2983 = !DILocation(line: 1079, column: 20, scope: !2978)
!2984 = !DILocation(line: 1073, column: 14, scope: !2964, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 1081, column: 10, scope: !2978)
!2986 = !DILocation(line: 1073, column: 29, scope: !2964, inlinedAt: !2985)
!2987 = !DILocation(line: 1061, column: 18, scope: !2938, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 1075, column: 10, scope: !2964, inlinedAt: !2985)
!2989 = !DILocation(line: 1061, column: 33, scope: !2938, inlinedAt: !2988)
!2990 = !DILocation(line: 1061, column: 45, scope: !2938, inlinedAt: !2988)
!2991 = !DILocation(line: 1063, column: 10, scope: !2938, inlinedAt: !2988)
!2992 = !DILocation(line: 1081, column: 3, scope: !2978)
!2993 = distinct !DISubprogram(name: "version_etc_arn", scope: !227, file: !227, line: 62, type: !2994, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !3031)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !2996, !31, !31, !31, !3030, !127}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 7, baseType: !2998)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 49, size: 1728, elements: !2999)
!2999 = !{!3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2998, file: !902, line: 51, baseType: !40, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2998, file: !902, line: 54, baseType: !97, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2998, file: !902, line: 55, baseType: !97, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2998, file: !902, line: 56, baseType: !97, size: 64, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2998, file: !902, line: 57, baseType: !97, size: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2998, file: !902, line: 58, baseType: !97, size: 64, offset: 320)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2998, file: !902, line: 59, baseType: !97, size: 64, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2998, file: !902, line: 60, baseType: !97, size: 64, offset: 448)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2998, file: !902, line: 61, baseType: !97, size: 64, offset: 512)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2998, file: !902, line: 64, baseType: !97, size: 64, offset: 576)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2998, file: !902, line: 65, baseType: !97, size: 64, offset: 640)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2998, file: !902, line: 66, baseType: !97, size: 64, offset: 704)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2998, file: !902, line: 68, baseType: !917, size: 64, offset: 768)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2998, file: !902, line: 70, baseType: !3014, size: 64, offset: 832)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2998, file: !902, line: 72, baseType: !40, size: 32, offset: 896)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2998, file: !902, line: 73, baseType: !40, size: 32, offset: 928)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2998, file: !902, line: 74, baseType: !924, size: 64, offset: 960)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2998, file: !902, line: 77, baseType: !126, size: 16, offset: 1024)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2998, file: !902, line: 78, baseType: !928, size: 8, offset: 1040)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2998, file: !902, line: 79, baseType: !930, size: 8, offset: 1048)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2998, file: !902, line: 81, baseType: !932, size: 64, offset: 1088)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2998, file: !902, line: 89, baseType: !935, size: 64, offset: 1152)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2998, file: !902, line: 91, baseType: !937, size: 64, offset: 1216)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2998, file: !902, line: 92, baseType: !940, size: 64, offset: 1280)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2998, file: !902, line: 93, baseType: !3014, size: 64, offset: 1344)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2998, file: !902, line: 94, baseType: !34, size: 64, offset: 1408)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2998, file: !902, line: 95, baseType: !127, size: 64, offset: 1472)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2998, file: !902, line: 96, baseType: !40, size: 32, offset: 1536)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2998, file: !902, line: 98, baseType: !947, size: 160, offset: 1568)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037}
!3032 = !DILocalVariable(name: "stream", arg: 1, scope: !2993, file: !227, line: 62, type: !2996)
!3033 = !DILocalVariable(name: "command_name", arg: 2, scope: !2993, file: !227, line: 63, type: !31)
!3034 = !DILocalVariable(name: "package", arg: 3, scope: !2993, file: !227, line: 63, type: !31)
!3035 = !DILocalVariable(name: "version", arg: 4, scope: !2993, file: !227, line: 64, type: !31)
!3036 = !DILocalVariable(name: "authors", arg: 5, scope: !2993, file: !227, line: 65, type: !3030)
!3037 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2993, file: !227, line: 65, type: !127)
!3038 = !DILocation(line: 62, column: 24, scope: !2993)
!3039 = !DILocation(line: 63, column: 30, scope: !2993)
!3040 = !DILocation(line: 63, column: 56, scope: !2993)
!3041 = !DILocation(line: 64, column: 30, scope: !2993)
!3042 = !DILocation(line: 65, column: 39, scope: !2993)
!3043 = !DILocation(line: 65, column: 55, scope: !2993)
!3044 = !DILocation(line: 67, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2993, file: !227, line: 67, column: 7)
!3046 = !DILocation(line: 67, column: 7, scope: !2993)
!3047 = !DILocation(line: 68, column: 5, scope: !3045)
!3048 = !DILocation(line: 70, column: 5, scope: !3045)
!3049 = !DILocation(line: 84, column: 3, scope: !2993)
!3050 = !DILocation(line: 86, column: 3, scope: !2993)
!3051 = !DILocation(line: 95, column: 3, scope: !2993)
!3052 = !DILocation(line: 99, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2993, file: !227, line: 96, column: 5)
!3054 = !DILocation(line: 102, column: 7, scope: !3053)
!3055 = !DILocation(line: 103, column: 7, scope: !3053)
!3056 = !DILocation(line: 106, column: 7, scope: !3053)
!3057 = !DILocation(line: 107, column: 7, scope: !3053)
!3058 = !DILocation(line: 110, column: 7, scope: !3053)
!3059 = !DILocation(line: 112, column: 7, scope: !3053)
!3060 = !DILocation(line: 117, column: 7, scope: !3053)
!3061 = !DILocation(line: 119, column: 7, scope: !3053)
!3062 = !DILocation(line: 124, column: 7, scope: !3053)
!3063 = !DILocation(line: 126, column: 7, scope: !3053)
!3064 = !DILocation(line: 131, column: 7, scope: !3053)
!3065 = !DILocation(line: 134, column: 7, scope: !3053)
!3066 = !DILocation(line: 139, column: 7, scope: !3053)
!3067 = !DILocation(line: 142, column: 7, scope: !3053)
!3068 = !DILocation(line: 147, column: 7, scope: !3053)
!3069 = !DILocation(line: 151, column: 7, scope: !3053)
!3070 = !DILocation(line: 156, column: 7, scope: !3053)
!3071 = !DILocation(line: 160, column: 7, scope: !3053)
!3072 = !DILocation(line: 167, column: 7, scope: !3053)
!3073 = !DILocation(line: 171, column: 7, scope: !3053)
!3074 = !DILocation(line: 173, column: 1, scope: !2993)
!3075 = distinct !DISubprogram(name: "version_etc_ar", scope: !227, file: !227, line: 180, type: !3076, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !2996, !31, !31, !31, !3030}
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084}
!3079 = !DILocalVariable(name: "stream", arg: 1, scope: !3075, file: !227, line: 180, type: !2996)
!3080 = !DILocalVariable(name: "command_name", arg: 2, scope: !3075, file: !227, line: 181, type: !31)
!3081 = !DILocalVariable(name: "package", arg: 3, scope: !3075, file: !227, line: 181, type: !31)
!3082 = !DILocalVariable(name: "version", arg: 4, scope: !3075, file: !227, line: 182, type: !31)
!3083 = !DILocalVariable(name: "authors", arg: 5, scope: !3075, file: !227, line: 182, type: !3030)
!3084 = !DILocalVariable(name: "n_authors", scope: !3075, file: !227, line: 184, type: !127)
!3085 = !DILocation(line: 180, column: 23, scope: !3075)
!3086 = !DILocation(line: 181, column: 29, scope: !3075)
!3087 = !DILocation(line: 181, column: 55, scope: !3075)
!3088 = !DILocation(line: 182, column: 29, scope: !3075)
!3089 = !DILocation(line: 182, column: 59, scope: !3075)
!3090 = !DILocation(line: 184, column: 10, scope: !3075)
!3091 = !DILocation(line: 186, column: 8, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3075, file: !227, line: 186, column: 3)
!3093 = !DILocation(line: 0, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3092, file: !227, line: 186, column: 3)
!3095 = !DILocation(line: 186, column: 23, scope: !3094)
!3096 = !DILocation(line: 186, column: 3, scope: !3092)
!3097 = !DILocation(line: 186, column: 52, scope: !3094)
!3098 = distinct !{!3098, !3096, !3099}
!3099 = !DILocation(line: 187, column: 5, scope: !3092)
!3100 = !DILocation(line: 188, column: 3, scope: !3075)
!3101 = !DILocation(line: 189, column: 1, scope: !3075)
!3102 = distinct !DISubprogram(name: "version_etc_va", scope: !227, file: !227, line: 196, type: !3103, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !3112)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !2996, !31, !31, !31, !3105}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !224, line: 189, size: 192, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3111}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3106, file: !224, line: 189, baseType: !6, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3106, file: !224, line: 189, baseType: !6, size: 32, offset: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3106, file: !224, line: 189, baseType: !34, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3106, file: !224, line: 189, baseType: !34, size: 64, offset: 128)
!3112 = !{!3113, !3114, !3115, !3116, !3117, !3118, !3119}
!3113 = !DILocalVariable(name: "stream", arg: 1, scope: !3102, file: !227, line: 196, type: !2996)
!3114 = !DILocalVariable(name: "command_name", arg: 2, scope: !3102, file: !227, line: 197, type: !31)
!3115 = !DILocalVariable(name: "package", arg: 3, scope: !3102, file: !227, line: 197, type: !31)
!3116 = !DILocalVariable(name: "version", arg: 4, scope: !3102, file: !227, line: 198, type: !31)
!3117 = !DILocalVariable(name: "authors", arg: 5, scope: !3102, file: !227, line: 198, type: !3105)
!3118 = !DILocalVariable(name: "n_authors", scope: !3102, file: !227, line: 200, type: !127)
!3119 = !DILocalVariable(name: "authtab", scope: !3102, file: !227, line: 201, type: !3120)
!3120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !136)
!3121 = !DILocation(line: 196, column: 23, scope: !3102)
!3122 = !DILocation(line: 197, column: 29, scope: !3102)
!3123 = !DILocation(line: 197, column: 55, scope: !3102)
!3124 = !DILocation(line: 198, column: 29, scope: !3102)
!3125 = !DILocation(line: 198, column: 46, scope: !3102)
!3126 = !DILocation(line: 201, column: 3, scope: !3102)
!3127 = !DILocation(line: 201, column: 15, scope: !3102)
!3128 = !DILocation(line: 200, column: 10, scope: !3102)
!3129 = !DILocation(line: 205, column: 35, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !227, line: 203, column: 3)
!3131 = distinct !DILexicalBlock(scope: !3102, file: !227, line: 203, column: 3)
!3132 = !DILocation(line: 205, column: 14, scope: !3130)
!3133 = !DILocation(line: 205, column: 33, scope: !3130)
!3134 = !DILocation(line: 205, column: 67, scope: !3130)
!3135 = !DILocation(line: 203, column: 3, scope: !3131)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 208, column: 3, scope: !3102)
!3138 = !DILocation(line: 210, column: 1, scope: !3102)
!3139 = distinct !DISubprogram(name: "version_etc", scope: !227, file: !227, line: 227, type: !3140, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !2996, !31, !31, !31, null}
!3142 = !{!3143, !3144, !3145, !3146, !3147}
!3143 = !DILocalVariable(name: "stream", arg: 1, scope: !3139, file: !227, line: 227, type: !2996)
!3144 = !DILocalVariable(name: "command_name", arg: 2, scope: !3139, file: !227, line: 228, type: !31)
!3145 = !DILocalVariable(name: "package", arg: 3, scope: !3139, file: !227, line: 228, type: !31)
!3146 = !DILocalVariable(name: "version", arg: 4, scope: !3139, file: !227, line: 229, type: !31)
!3147 = !DILocalVariable(name: "authors", scope: !3139, file: !227, line: 231, type: !3148)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1179, line: 52, baseType: !3149)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !195, line: 48, baseType: !3150)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !224, line: 231, baseType: !3151)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3106, size: 192, elements: !52)
!3152 = !DILocation(line: 227, column: 20, scope: !3139)
!3153 = !DILocation(line: 228, column: 26, scope: !3139)
!3154 = !DILocation(line: 228, column: 52, scope: !3139)
!3155 = !DILocation(line: 229, column: 26, scope: !3139)
!3156 = !DILocation(line: 231, column: 3, scope: !3139)
!3157 = !DILocation(line: 231, column: 11, scope: !3139)
!3158 = !DILocation(line: 233, column: 3, scope: !3139)
!3159 = !DILocation(line: 234, column: 3, scope: !3139)
!3160 = !DILocation(line: 235, column: 3, scope: !3139)
!3161 = !DILocation(line: 236, column: 1, scope: !3139)
!3162 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !227, file: !227, line: 239, type: !995, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !223, retainedNodes: !58)
!3163 = !DILocation(line: 245, column: 3, scope: !3162)
!3164 = !DILocation(line: 251, column: 3, scope: !3162)
!3165 = !DILocation(line: 256, column: 3, scope: !3162)
!3166 = !DILocation(line: 258, column: 1, scope: !3162)
!3167 = distinct !DISubprogram(name: "xnmalloc", scope: !234, file: !234, line: 99, type: !3168, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!34, !127, !127}
!3170 = !{!3171, !3172}
!3171 = !DILocalVariable(name: "n", arg: 1, scope: !3167, file: !234, line: 99, type: !127)
!3172 = !DILocalVariable(name: "s", arg: 2, scope: !3167, file: !234, line: 99, type: !127)
!3173 = !DILocation(line: 99, column: 18, scope: !3167)
!3174 = !DILocation(line: 99, column: 28, scope: !3167)
!3175 = !DILocation(line: 101, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3167, file: !234, line: 101, column: 7)
!3177 = !DILocation(line: 101, column: 7, scope: !3167)
!3178 = !DILocation(line: 102, column: 5, scope: !3176)
!3179 = !DILocation(line: 103, column: 21, scope: !3167)
!3180 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !3182, line: 39, type: !127)
!3181 = distinct !DISubprogram(name: "xmalloc", scope: !3182, file: !3182, line: 39, type: !3183, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3185)
!3182 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!34, !127}
!3185 = !{!3180, !3186}
!3186 = !DILocalVariable(name: "p", scope: !3181, file: !3182, line: 41, type: !34)
!3187 = !DILocation(line: 39, column: 17, scope: !3181, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 103, column: 10, scope: !3167)
!3189 = !DILocation(line: 41, column: 13, scope: !3181, inlinedAt: !3188)
!3190 = !DILocation(line: 41, column: 9, scope: !3181, inlinedAt: !3188)
!3191 = !DILocation(line: 42, column: 8, scope: !3192, inlinedAt: !3188)
!3192 = distinct !DILexicalBlock(scope: !3181, file: !3182, line: 42, column: 7)
!3193 = !DILocation(line: 42, column: 15, scope: !3192, inlinedAt: !3188)
!3194 = !DILocation(line: 42, column: 10, scope: !3192, inlinedAt: !3188)
!3195 = !DILocation(line: 43, column: 5, scope: !3192, inlinedAt: !3188)
!3196 = !DILocation(line: 103, column: 3, scope: !3167)
!3197 = !DILocation(line: 39, column: 17, scope: !3181)
!3198 = !DILocation(line: 41, column: 13, scope: !3181)
!3199 = !DILocation(line: 41, column: 9, scope: !3181)
!3200 = !DILocation(line: 42, column: 8, scope: !3192)
!3201 = !DILocation(line: 42, column: 15, scope: !3192)
!3202 = !DILocation(line: 42, column: 10, scope: !3192)
!3203 = !DILocation(line: 43, column: 5, scope: !3192)
!3204 = !DILocation(line: 44, column: 3, scope: !3181)
!3205 = distinct !DISubprogram(name: "xnrealloc", scope: !234, file: !234, line: 112, type: !3206, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!34, !34, !127, !127}
!3208 = !{!3209, !3210, !3211}
!3209 = !DILocalVariable(name: "p", arg: 1, scope: !3205, file: !234, line: 112, type: !34)
!3210 = !DILocalVariable(name: "n", arg: 2, scope: !3205, file: !234, line: 112, type: !127)
!3211 = !DILocalVariable(name: "s", arg: 3, scope: !3205, file: !234, line: 112, type: !127)
!3212 = !DILocation(line: 112, column: 18, scope: !3205)
!3213 = !DILocation(line: 112, column: 28, scope: !3205)
!3214 = !DILocation(line: 112, column: 38, scope: !3205)
!3215 = !DILocation(line: 114, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3205, file: !234, line: 114, column: 7)
!3217 = !DILocation(line: 114, column: 7, scope: !3205)
!3218 = !DILocation(line: 115, column: 5, scope: !3216)
!3219 = !DILocation(line: 116, column: 25, scope: !3205)
!3220 = !DILocalVariable(name: "p", arg: 1, scope: !3221, file: !3182, line: 51, type: !34)
!3221 = distinct !DISubprogram(name: "xrealloc", scope: !3182, file: !3182, line: 51, type: !3222, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!34, !34, !127}
!3224 = !{!3220, !3225}
!3225 = !DILocalVariable(name: "n", arg: 2, scope: !3221, file: !3182, line: 51, type: !127)
!3226 = !DILocation(line: 51, column: 17, scope: !3221, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 116, column: 10, scope: !3205)
!3228 = !DILocation(line: 51, column: 27, scope: !3221, inlinedAt: !3227)
!3229 = !DILocation(line: 53, column: 8, scope: !3230, inlinedAt: !3227)
!3230 = distinct !DILexicalBlock(scope: !3221, file: !3182, line: 53, column: 7)
!3231 = !DILocation(line: 53, column: 13, scope: !3230, inlinedAt: !3227)
!3232 = !DILocation(line: 53, column: 10, scope: !3230, inlinedAt: !3227)
!3233 = !DILocation(line: 57, column: 7, scope: !3234, inlinedAt: !3227)
!3234 = distinct !DILexicalBlock(scope: !3230, file: !3182, line: 54, column: 5)
!3235 = !DILocation(line: 58, column: 7, scope: !3234, inlinedAt: !3227)
!3236 = !DILocation(line: 61, column: 7, scope: !3221, inlinedAt: !3227)
!3237 = !DILocation(line: 62, column: 8, scope: !3238, inlinedAt: !3227)
!3238 = distinct !DILexicalBlock(scope: !3221, file: !3182, line: 62, column: 7)
!3239 = !DILocation(line: 62, column: 13, scope: !3238, inlinedAt: !3227)
!3240 = !DILocation(line: 62, column: 10, scope: !3238, inlinedAt: !3227)
!3241 = !DILocation(line: 63, column: 5, scope: !3238, inlinedAt: !3227)
!3242 = !DILocation(line: 0, scope: !3221, inlinedAt: !3227)
!3243 = !DILocation(line: 116, column: 3, scope: !3205)
!3244 = !DILocation(line: 51, column: 17, scope: !3221)
!3245 = !DILocation(line: 51, column: 27, scope: !3221)
!3246 = !DILocation(line: 53, column: 8, scope: !3230)
!3247 = !DILocation(line: 53, column: 13, scope: !3230)
!3248 = !DILocation(line: 53, column: 10, scope: !3230)
!3249 = !DILocation(line: 57, column: 7, scope: !3234)
!3250 = !DILocation(line: 58, column: 7, scope: !3234)
!3251 = !DILocation(line: 61, column: 7, scope: !3221)
!3252 = !DILocation(line: 62, column: 8, scope: !3238)
!3253 = !DILocation(line: 62, column: 13, scope: !3238)
!3254 = !DILocation(line: 62, column: 10, scope: !3238)
!3255 = !DILocation(line: 63, column: 5, scope: !3238)
!3256 = !DILocation(line: 0, scope: !3221)
!3257 = !DILocation(line: 65, column: 1, scope: !3221)
!3258 = !DILocation(line: 174, column: 19, scope: !235)
!3259 = !DILocation(line: 174, column: 30, scope: !235)
!3260 = !DILocation(line: 174, column: 41, scope: !235)
!3261 = !DILocation(line: 176, column: 14, scope: !235)
!3262 = !DILocation(line: 176, column: 10, scope: !235)
!3263 = !DILocation(line: 178, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !235, file: !234, line: 178, column: 7)
!3265 = !DILocation(line: 178, column: 7, scope: !235)
!3266 = !DILocation(line: 180, column: 13, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !234, line: 180, column: 11)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !234, line: 179, column: 5)
!3269 = !DILocation(line: 180, column: 11, scope: !3268)
!3270 = !DILocation(line: 188, column: 30, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3267, file: !234, line: 181, column: 9)
!3272 = !DILocation(line: 189, column: 16, scope: !3271)
!3273 = !DILocation(line: 189, column: 13, scope: !3271)
!3274 = !DILocation(line: 190, column: 9, scope: !3271)
!3275 = !DILocation(line: 0, scope: !3271)
!3276 = !DILocation(line: 191, column: 11, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3268, file: !234, line: 191, column: 11)
!3278 = !DILocation(line: 191, column: 11, scope: !3268)
!3279 = !DILocation(line: 206, column: 7, scope: !235)
!3280 = !DILocation(line: 207, column: 25, scope: !235)
!3281 = !DILocation(line: 51, column: 17, scope: !3221, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 207, column: 10, scope: !235)
!3283 = !DILocation(line: 51, column: 27, scope: !3221, inlinedAt: !3282)
!3284 = !DILocation(line: 53, column: 10, scope: !3230, inlinedAt: !3282)
!3285 = !DILocation(line: 192, column: 9, scope: !3277)
!3286 = !DILocation(line: 200, column: 69, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !234, line: 200, column: 11)
!3288 = distinct !DILexicalBlock(scope: !3264, file: !234, line: 195, column: 5)
!3289 = !DILocation(line: 201, column: 11, scope: !3287)
!3290 = !DILocation(line: 200, column: 11, scope: !3288)
!3291 = !DILocation(line: 202, column: 9, scope: !3287)
!3292 = !DILocation(line: 203, column: 14, scope: !3288)
!3293 = !DILocation(line: 203, column: 18, scope: !3288)
!3294 = !DILocation(line: 203, column: 9, scope: !3288)
!3295 = !DILocation(line: 53, column: 8, scope: !3230, inlinedAt: !3282)
!3296 = !DILocation(line: 57, column: 7, scope: !3234, inlinedAt: !3282)
!3297 = !DILocation(line: 58, column: 7, scope: !3234, inlinedAt: !3282)
!3298 = !DILocation(line: 61, column: 7, scope: !3221, inlinedAt: !3282)
!3299 = !DILocation(line: 62, column: 8, scope: !3238, inlinedAt: !3282)
!3300 = !DILocation(line: 62, column: 13, scope: !3238, inlinedAt: !3282)
!3301 = !DILocation(line: 62, column: 10, scope: !3238, inlinedAt: !3282)
!3302 = !DILocation(line: 63, column: 5, scope: !3238, inlinedAt: !3282)
!3303 = !DILocation(line: 0, scope: !3221, inlinedAt: !3282)
!3304 = !DILocation(line: 207, column: 3, scope: !235)
!3305 = distinct !DISubprogram(name: "xcharalloc", scope: !234, file: !234, line: 216, type: !2278, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3306)
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "n", arg: 1, scope: !3305, file: !234, line: 216, type: !127)
!3308 = !DILocation(line: 216, column: 20, scope: !3305)
!3309 = !DILocation(line: 39, column: 17, scope: !3181, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 218, column: 10, scope: !3305)
!3311 = !DILocation(line: 41, column: 13, scope: !3181, inlinedAt: !3310)
!3312 = !DILocation(line: 41, column: 9, scope: !3181, inlinedAt: !3310)
!3313 = !DILocation(line: 42, column: 8, scope: !3192, inlinedAt: !3310)
!3314 = !DILocation(line: 42, column: 15, scope: !3192, inlinedAt: !3310)
!3315 = !DILocation(line: 42, column: 10, scope: !3192, inlinedAt: !3310)
!3316 = !DILocation(line: 43, column: 5, scope: !3192, inlinedAt: !3310)
!3317 = !DILocation(line: 218, column: 3, scope: !3305)
!3318 = distinct !DISubprogram(name: "x2realloc", scope: !3182, file: !3182, line: 74, type: !3319, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!34, !34, !238}
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "p", arg: 1, scope: !3318, file: !3182, line: 74, type: !34)
!3323 = !DILocalVariable(name: "pn", arg: 2, scope: !3318, file: !3182, line: 74, type: !238)
!3324 = !DILocation(line: 74, column: 18, scope: !3318)
!3325 = !DILocation(line: 74, column: 29, scope: !3318)
!3326 = !DILocation(line: 174, column: 19, scope: !235, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 76, column: 10, scope: !3318)
!3328 = !DILocation(line: 174, column: 30, scope: !235, inlinedAt: !3327)
!3329 = !DILocation(line: 174, column: 41, scope: !235, inlinedAt: !3327)
!3330 = !DILocation(line: 176, column: 14, scope: !235, inlinedAt: !3327)
!3331 = !DILocation(line: 176, column: 10, scope: !235, inlinedAt: !3327)
!3332 = !DILocation(line: 178, column: 9, scope: !3264, inlinedAt: !3327)
!3333 = !DILocation(line: 178, column: 7, scope: !235, inlinedAt: !3327)
!3334 = !DILocation(line: 180, column: 13, scope: !3267, inlinedAt: !3327)
!3335 = !DILocation(line: 180, column: 11, scope: !3268, inlinedAt: !3327)
!3336 = !DILocation(line: 191, column: 11, scope: !3277, inlinedAt: !3327)
!3337 = !DILocation(line: 191, column: 11, scope: !3268, inlinedAt: !3327)
!3338 = !DILocation(line: 206, column: 7, scope: !235, inlinedAt: !3327)
!3339 = !DILocation(line: 51, column: 17, scope: !3221, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 207, column: 10, scope: !235, inlinedAt: !3327)
!3341 = !DILocation(line: 51, column: 27, scope: !3221, inlinedAt: !3340)
!3342 = !DILocation(line: 53, column: 10, scope: !3230, inlinedAt: !3340)
!3343 = !DILocation(line: 192, column: 9, scope: !3277, inlinedAt: !3327)
!3344 = !DILocation(line: 201, column: 11, scope: !3287, inlinedAt: !3327)
!3345 = !DILocation(line: 200, column: 11, scope: !3288, inlinedAt: !3327)
!3346 = !DILocation(line: 202, column: 9, scope: !3287, inlinedAt: !3327)
!3347 = !DILocation(line: 203, column: 14, scope: !3288, inlinedAt: !3327)
!3348 = !DILocation(line: 203, column: 18, scope: !3288, inlinedAt: !3327)
!3349 = !DILocation(line: 203, column: 9, scope: !3288, inlinedAt: !3327)
!3350 = !DILocation(line: 53, column: 8, scope: !3230, inlinedAt: !3340)
!3351 = !DILocation(line: 57, column: 7, scope: !3234, inlinedAt: !3340)
!3352 = !DILocation(line: 58, column: 7, scope: !3234, inlinedAt: !3340)
!3353 = !DILocation(line: 61, column: 7, scope: !3221, inlinedAt: !3340)
!3354 = !DILocation(line: 62, column: 8, scope: !3238, inlinedAt: !3340)
!3355 = !DILocation(line: 62, column: 13, scope: !3238, inlinedAt: !3340)
!3356 = !DILocation(line: 62, column: 10, scope: !3238, inlinedAt: !3340)
!3357 = !DILocation(line: 63, column: 5, scope: !3238, inlinedAt: !3340)
!3358 = !DILocation(line: 0, scope: !3221, inlinedAt: !3340)
!3359 = !DILocation(line: 76, column: 3, scope: !3318)
!3360 = distinct !DISubprogram(name: "xzalloc", scope: !3182, file: !3182, line: 84, type: !3183, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3361)
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "s", arg: 1, scope: !3360, file: !3182, line: 84, type: !127)
!3363 = !DILocation(line: 84, column: 17, scope: !3360)
!3364 = !DILocation(line: 39, column: 17, scope: !3181, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 86, column: 18, scope: !3360)
!3366 = !DILocation(line: 41, column: 13, scope: !3181, inlinedAt: !3365)
!3367 = !DILocation(line: 41, column: 9, scope: !3181, inlinedAt: !3365)
!3368 = !DILocation(line: 42, column: 8, scope: !3192, inlinedAt: !3365)
!3369 = !DILocation(line: 42, column: 15, scope: !3192, inlinedAt: !3365)
!3370 = !DILocation(line: 42, column: 10, scope: !3192, inlinedAt: !3365)
!3371 = !DILocation(line: 43, column: 5, scope: !3192, inlinedAt: !3365)
!3372 = !DILocation(line: 86, column: 10, scope: !3360)
!3373 = !DILocation(line: 86, column: 3, scope: !3360)
!3374 = distinct !DISubprogram(name: "xcalloc", scope: !3182, file: !3182, line: 93, type: !3168, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3375)
!3375 = !{!3376, !3377, !3378}
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3374, file: !3182, line: 93, type: !127)
!3377 = !DILocalVariable(name: "s", arg: 2, scope: !3374, file: !3182, line: 93, type: !127)
!3378 = !DILocalVariable(name: "p", scope: !3374, file: !3182, line: 95, type: !34)
!3379 = !DILocation(line: 93, column: 17, scope: !3374)
!3380 = !DILocation(line: 93, column: 27, scope: !3374)
!3381 = !DILocation(line: 100, column: 7, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3374, file: !3182, line: 100, column: 7)
!3383 = !DILocation(line: 101, column: 7, scope: !3382)
!3384 = !DILocation(line: 101, column: 18, scope: !3382)
!3385 = !DILocation(line: 95, column: 9, scope: !3374)
!3386 = !DILocation(line: 101, column: 16, scope: !3382)
!3387 = !DILocation(line: 100, column: 7, scope: !3374)
!3388 = !DILocation(line: 102, column: 5, scope: !3382)
!3389 = !DILocation(line: 103, column: 3, scope: !3374)
!3390 = distinct !DISubprogram(name: "xmemdup", scope: !3182, file: !3182, line: 111, type: !3391, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!34, !1137, !127}
!3393 = !{!3394, !3395}
!3394 = !DILocalVariable(name: "p", arg: 1, scope: !3390, file: !3182, line: 111, type: !1137)
!3395 = !DILocalVariable(name: "s", arg: 2, scope: !3390, file: !3182, line: 111, type: !127)
!3396 = !DILocation(line: 111, column: 22, scope: !3390)
!3397 = !DILocation(line: 111, column: 32, scope: !3390)
!3398 = !DILocation(line: 39, column: 17, scope: !3181, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 113, column: 18, scope: !3390)
!3400 = !DILocation(line: 41, column: 13, scope: !3181, inlinedAt: !3399)
!3401 = !DILocation(line: 41, column: 9, scope: !3181, inlinedAt: !3399)
!3402 = !DILocation(line: 42, column: 8, scope: !3192, inlinedAt: !3399)
!3403 = !DILocation(line: 42, column: 15, scope: !3192, inlinedAt: !3399)
!3404 = !DILocation(line: 42, column: 10, scope: !3192, inlinedAt: !3399)
!3405 = !DILocation(line: 43, column: 5, scope: !3192, inlinedAt: !3399)
!3406 = !DILocation(line: 113, column: 10, scope: !3390)
!3407 = !DILocation(line: 113, column: 3, scope: !3390)
!3408 = distinct !DISubprogram(name: "xstrdup", scope: !3182, file: !3182, line: 119, type: !2483, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !230, retainedNodes: !3409)
!3409 = !{!3410}
!3410 = !DILocalVariable(name: "string", arg: 1, scope: !3408, file: !3182, line: 119, type: !31)
!3411 = !DILocation(line: 119, column: 22, scope: !3408)
!3412 = !DILocation(line: 121, column: 27, scope: !3408)
!3413 = !DILocation(line: 121, column: 43, scope: !3408)
!3414 = !DILocation(line: 111, column: 22, scope: !3390, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 121, column: 10, scope: !3408)
!3416 = !DILocation(line: 111, column: 32, scope: !3390, inlinedAt: !3415)
!3417 = !DILocation(line: 39, column: 17, scope: !3181, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 113, column: 18, scope: !3390, inlinedAt: !3415)
!3419 = !DILocation(line: 41, column: 13, scope: !3181, inlinedAt: !3418)
!3420 = !DILocation(line: 41, column: 9, scope: !3181, inlinedAt: !3418)
!3421 = !DILocation(line: 42, column: 8, scope: !3192, inlinedAt: !3418)
!3422 = !DILocation(line: 42, column: 15, scope: !3192, inlinedAt: !3418)
!3423 = !DILocation(line: 42, column: 10, scope: !3192, inlinedAt: !3418)
!3424 = !DILocation(line: 43, column: 5, scope: !3192, inlinedAt: !3418)
!3425 = !DILocation(line: 113, column: 10, scope: !3390, inlinedAt: !3415)
!3426 = !DILocation(line: 121, column: 3, scope: !3408)
!3427 = distinct !DISubprogram(name: "xalloc_die", scope: !3428, file: !3428, line: 32, type: !995, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !247, retainedNodes: !58)
!3428 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3429 = !DILocation(line: 34, column: 10, scope: !3427)
!3430 = !DILocation(line: 34, column: 33, scope: !3427)
!3431 = !DILocation(line: 34, column: 3, scope: !3427)
!3432 = !DILocation(line: 40, column: 3, scope: !3427)
!3433 = distinct !DISubprogram(name: "rpl_calloc", scope: !3434, file: !3434, line: 42, type: !3168, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !249, retainedNodes: !3435)
!3434 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3435 = !{!3436, !3437, !3438, !3439}
!3436 = !DILocalVariable(name: "n", arg: 1, scope: !3433, file: !3434, line: 42, type: !127)
!3437 = !DILocalVariable(name: "s", arg: 2, scope: !3433, file: !3434, line: 42, type: !127)
!3438 = !DILocalVariable(name: "result", scope: !3433, file: !3434, line: 44, type: !34)
!3439 = !DILocalVariable(name: "bytes", scope: !3440, file: !3434, line: 56, type: !127)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !3434, line: 53, column: 5)
!3441 = distinct !DILexicalBlock(scope: !3433, file: !3434, line: 47, column: 7)
!3442 = !DILocation(line: 42, column: 20, scope: !3433)
!3443 = !DILocation(line: 42, column: 30, scope: !3433)
!3444 = !DILocation(line: 47, column: 9, scope: !3441)
!3445 = !DILocation(line: 47, column: 19, scope: !3441)
!3446 = !DILocation(line: 47, column: 14, scope: !3441)
!3447 = !DILocation(line: 56, column: 24, scope: !3440)
!3448 = !DILocation(line: 56, column: 14, scope: !3440)
!3449 = !DILocation(line: 57, column: 17, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3440, file: !3434, line: 57, column: 11)
!3451 = !DILocation(line: 57, column: 21, scope: !3450)
!3452 = !DILocation(line: 57, column: 11, scope: !3440)
!3453 = !DILocation(line: 59, column: 11, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3450, file: !3434, line: 58, column: 9)
!3455 = !DILocation(line: 59, column: 17, scope: !3454)
!3456 = !DILocation(line: 65, column: 12, scope: !3433)
!3457 = !DILocation(line: 44, column: 9, scope: !3433)
!3458 = !DILocation(line: 72, column: 3, scope: !3433)
!3459 = !DILocation(line: 0, scope: !3454)
!3460 = !DILocation(line: 73, column: 1, scope: !3433)
!3461 = !DILocation(line: 276, column: 16, scope: !183)
!3462 = !DILocation(line: 276, column: 24, scope: !183)
!3463 = !DILocation(line: 278, column: 3, scope: !183)
!3464 = !DILocation(line: 278, column: 11, scope: !183)
!3465 = !DILocation(line: 279, column: 7, scope: !183)
!3466 = !DILocation(line: 280, column: 3, scope: !183)
!3467 = !DILocation(line: 281, column: 3, scope: !183)
!3468 = !DILocation(line: 0, scope: !215)
!3469 = !DILocation(line: 326, column: 22, scope: !206)
!3470 = !DILocation(line: 326, column: 13, scope: !206)
!3471 = !DILocation(line: 340, column: 18, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !206, file: !184, line: 340, column: 13)
!3473 = !DILocation(line: 340, column: 15, scope: !3472)
!3474 = !DILocation(line: 340, column: 13, scope: !206)
!3475 = !DILocation(line: 342, column: 22, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !184, line: 341, column: 11)
!3477 = !DILocation(line: 343, column: 19, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3476, file: !184, line: 343, column: 17)
!3479 = !DILocation(line: 343, column: 29, scope: !3478)
!3480 = !DILocation(line: 343, column: 32, scope: !3478)
!3481 = !DILocation(line: 343, column: 38, scope: !3478)
!3482 = !DILocation(line: 343, column: 17, scope: !3476)
!3483 = !DILocation(line: 345, column: 36, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3478, file: !184, line: 344, column: 15)
!3485 = !DILocation(line: 361, column: 25, scope: !210)
!3486 = !DILocation(line: 353, column: 26, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3478, file: !184, line: 352, column: 15)
!3488 = !DILocation(line: 354, column: 28, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3487, file: !184, line: 354, column: 21)
!3490 = !DILocation(line: 354, column: 21, scope: !3487)
!3491 = !DILocation(line: 356, column: 36, scope: !3487)
!3492 = !DILocation(line: 360, column: 20, scope: !3472)
!3493 = !DILocation(line: 361, column: 28, scope: !210)
!3494 = !DILocation(line: 0, scope: !3472)
!3495 = !DILocation(line: 361, column: 15, scope: !210)
!3496 = !DILocation(line: 363, column: 25, scope: !209)
!3497 = !DILocation(line: 363, column: 17, scope: !209)
!3498 = !DILocation(line: 364, column: 23, scope: !213)
!3499 = !DILocation(line: 364, column: 27, scope: !213)
!3500 = !DILocation(line: 364, column: 60, scope: !213)
!3501 = !DILocation(line: 364, column: 30, scope: !213)
!3502 = !DILocation(line: 364, column: 74, scope: !213)
!3503 = !DILocation(line: 364, column: 17, scope: !209)
!3504 = !DILocation(line: 366, column: 35, scope: !212)
!3505 = !DILocation(line: 366, column: 21, scope: !212)
!3506 = !DILocation(line: 367, column: 17, scope: !212)
!3507 = !DILocation(line: 368, column: 23, scope: !212)
!3508 = !DILocation(line: 370, column: 15, scope: !212)
!3509 = !DILocation(line: 408, column: 19, scope: !215)
!3510 = !DILocation(line: 408, column: 15, scope: !215)
!3511 = !DILocation(line: 409, column: 18, scope: !215)
!3512 = !DILocation(line: 416, column: 3, scope: !183)
!3513 = !DILocation(line: 418, column: 1, scope: !183)
!3514 = !DILocation(line: 417, column: 3, scope: !183)
!3515 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3516, file: !3516, line: 385, type: !3517, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !251, retainedNodes: !3531)
!3516 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!127, !3519, !31, !127, !3520}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1442, line: 6, baseType: !3522)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1444, line: 21, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1444, line: 13, size: 64, elements: !3524)
!3524 = !{!3525, !3526}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3523, file: !1444, line: 15, baseType: !40, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3523, file: !1444, line: 20, baseType: !3527, size: 32, offset: 32)
!3527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3523, file: !1444, line: 16, size: 32, elements: !3528)
!3528 = !{!3529, !3530}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3527, file: !1444, line: 18, baseType: !6, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3527, file: !1444, line: 19, baseType: !1453, size: 32)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3532 = !DILocalVariable(name: "pwc", arg: 1, scope: !3515, file: !3516, line: 385, type: !3519)
!3533 = !DILocalVariable(name: "s", arg: 2, scope: !3515, file: !3516, line: 385, type: !31)
!3534 = !DILocalVariable(name: "n", arg: 3, scope: !3515, file: !3516, line: 385, type: !127)
!3535 = !DILocalVariable(name: "ps", arg: 4, scope: !3515, file: !3516, line: 385, type: !3520)
!3536 = !DILocalVariable(name: "ret", scope: !3515, file: !3516, line: 387, type: !127)
!3537 = !DILocalVariable(name: "wc", scope: !3515, file: !3516, line: 388, type: !1458)
!3538 = !DILocalVariable(name: "uc", scope: !3539, file: !3516, line: 449, type: !1302)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3516, line: 448, column: 5)
!3540 = distinct !DILexicalBlock(scope: !3515, file: !3516, line: 447, column: 7)
!3541 = !DILocation(line: 385, column: 23, scope: !3515)
!3542 = !DILocation(line: 385, column: 40, scope: !3515)
!3543 = !DILocation(line: 385, column: 50, scope: !3515)
!3544 = !DILocation(line: 385, column: 64, scope: !3515)
!3545 = !DILocation(line: 388, column: 3, scope: !3515)
!3546 = !DILocation(line: 404, column: 9, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3515, file: !3516, line: 404, column: 7)
!3548 = !DILocation(line: 404, column: 7, scope: !3515)
!3549 = !DILocation(line: 439, column: 9, scope: !3515)
!3550 = !DILocation(line: 387, column: 10, scope: !3515)
!3551 = !DILocation(line: 447, column: 19, scope: !3540)
!3552 = !DILocation(line: 447, column: 31, scope: !3540)
!3553 = !DILocation(line: 447, column: 26, scope: !3540)
!3554 = !DILocation(line: 447, column: 41, scope: !3540)
!3555 = !DILocation(line: 447, column: 7, scope: !3515)
!3556 = !DILocation(line: 449, column: 26, scope: !3539)
!3557 = !DILocation(line: 449, column: 21, scope: !3539)
!3558 = !DILocation(line: 450, column: 14, scope: !3539)
!3559 = !DILocation(line: 450, column: 12, scope: !3539)
!3560 = !DILocation(line: 0, scope: !3539)
!3561 = !DILocation(line: 456, column: 1, scope: !3515)
!3562 = distinct !DISubprogram(name: "close_stream", scope: !3563, file: !3563, line: 56, type: !3564, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !254, retainedNodes: !3600)
!3563 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!40, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 7, baseType: !3568)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 49, size: 1728, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3568, file: !902, line: 51, baseType: !40, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3568, file: !902, line: 54, baseType: !97, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3568, file: !902, line: 55, baseType: !97, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3568, file: !902, line: 56, baseType: !97, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3568, file: !902, line: 57, baseType: !97, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3568, file: !902, line: 58, baseType: !97, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3568, file: !902, line: 59, baseType: !97, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3568, file: !902, line: 60, baseType: !97, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3568, file: !902, line: 61, baseType: !97, size: 64, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3568, file: !902, line: 64, baseType: !97, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3568, file: !902, line: 65, baseType: !97, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3568, file: !902, line: 66, baseType: !97, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3568, file: !902, line: 68, baseType: !917, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3568, file: !902, line: 70, baseType: !3584, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3568, file: !902, line: 72, baseType: !40, size: 32, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3568, file: !902, line: 73, baseType: !40, size: 32, offset: 928)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3568, file: !902, line: 74, baseType: !924, size: 64, offset: 960)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3568, file: !902, line: 77, baseType: !126, size: 16, offset: 1024)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3568, file: !902, line: 78, baseType: !928, size: 8, offset: 1040)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3568, file: !902, line: 79, baseType: !930, size: 8, offset: 1048)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3568, file: !902, line: 81, baseType: !932, size: 64, offset: 1088)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3568, file: !902, line: 89, baseType: !935, size: 64, offset: 1152)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3568, file: !902, line: 91, baseType: !937, size: 64, offset: 1216)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3568, file: !902, line: 92, baseType: !940, size: 64, offset: 1280)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3568, file: !902, line: 93, baseType: !3584, size: 64, offset: 1344)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3568, file: !902, line: 94, baseType: !34, size: 64, offset: 1408)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3568, file: !902, line: 95, baseType: !127, size: 64, offset: 1472)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3568, file: !902, line: 96, baseType: !40, size: 32, offset: 1536)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3568, file: !902, line: 98, baseType: !947, size: 160, offset: 1568)
!3600 = !{!3601, !3602, !3604, !3605}
!3601 = !DILocalVariable(name: "stream", arg: 1, scope: !3562, file: !3563, line: 56, type: !3566)
!3602 = !DILocalVariable(name: "some_pending", scope: !3562, file: !3563, line: 58, type: !3603)
!3603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3604 = !DILocalVariable(name: "prev_fail", scope: !3562, file: !3563, line: 59, type: !3603)
!3605 = !DILocalVariable(name: "fclose_fail", scope: !3562, file: !3563, line: 60, type: !3603)
!3606 = !DILocation(line: 56, column: 21, scope: !3562)
!3607 = !DILocation(line: 58, column: 30, scope: !3562)
!3608 = !DILocalVariable(name: "__stream", arg: 1, scope: !3609, file: !895, line: 135, type: !3566)
!3609 = distinct !DISubprogram(name: "ferror_unlocked", scope: !895, file: !895, line: 135, type: !3564, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !254, retainedNodes: !3610)
!3610 = !{!3608}
!3611 = !DILocation(line: 135, column: 1, scope: !3609, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 59, column: 27, scope: !3562)
!3613 = !DILocation(line: 137, column: 10, scope: !3609, inlinedAt: !3612)
!3614 = !DILocation(line: 59, column: 43, scope: !3562)
!3615 = !DILocation(line: 60, column: 29, scope: !3562)
!3616 = !DILocation(line: 60, column: 45, scope: !3562)
!3617 = !DILocation(line: 70, column: 17, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3562, file: !3563, line: 70, column: 7)
!3619 = !DILocation(line: 58, column: 50, scope: !3562)
!3620 = !DILocation(line: 70, column: 33, scope: !3618)
!3621 = !DILocation(line: 70, column: 53, scope: !3618)
!3622 = !DILocation(line: 70, column: 59, scope: !3618)
!3623 = !DILocation(line: 70, column: 7, scope: !3562)
!3624 = !DILocation(line: 72, column: 11, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3618, file: !3563, line: 71, column: 5)
!3626 = !DILocation(line: 73, column: 9, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3625, file: !3563, line: 72, column: 11)
!3628 = !DILocation(line: 73, column: 15, scope: !3627)
!3629 = !DILocation(line: 0, scope: !3562)
!3630 = !DILocation(line: 78, column: 1, scope: !3562)
!3631 = distinct !DISubprogram(name: "last_component", scope: !3632, file: !3632, line: 30, type: !2483, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3633)
!3632 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3633 = !{!3634, !3635, !3636, !3637}
!3634 = !DILocalVariable(name: "name", arg: 1, scope: !3631, file: !3632, line: 30, type: !31)
!3635 = !DILocalVariable(name: "base", scope: !3631, file: !3632, line: 32, type: !31)
!3636 = !DILocalVariable(name: "p", scope: !3631, file: !3632, line: 33, type: !31)
!3637 = !DILocalVariable(name: "saw_slash", scope: !3631, file: !3632, line: 34, type: !68)
!3638 = !DILocation(line: 30, column: 29, scope: !3631)
!3639 = !DILocation(line: 32, column: 15, scope: !3631)
!3640 = !DILocation(line: 34, column: 8, scope: !3631)
!3641 = !DILocation(line: 36, column: 3, scope: !3631)
!3642 = !DILocation(line: 0, scope: !3631)
!3643 = !DILocation(line: 36, column: 10, scope: !3631)
!3644 = !DILocation(line: 37, column: 9, scope: !3631)
!3645 = distinct !{!3645, !3641, !3644}
!3646 = !DILocation(line: 39, column: 18, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !3632, line: 39, column: 3)
!3648 = distinct !DILexicalBlock(scope: !3631, file: !3632, line: 39, column: 3)
!3649 = !DILocation(line: 0, scope: !3647)
!3650 = !DILocation(line: 0, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !3632, line: 41, column: 11)
!3652 = distinct !DILexicalBlock(scope: !3647, file: !3632, line: 40, column: 5)
!3653 = !DILocation(line: 33, column: 15, scope: !3631)
!3654 = !DILocation(line: 39, column: 3, scope: !3648)
!3655 = !DILocation(line: 43, column: 16, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3651, file: !3632, line: 43, column: 16)
!3657 = !DILocation(line: 43, column: 16, scope: !3651)
!3658 = !DILocation(line: 39, column: 23, scope: !3647)
!3659 = !DILocation(line: 39, column: 3, scope: !3647)
!3660 = distinct !{!3660, !3654, !3661}
!3661 = !DILocation(line: 48, column: 5, scope: !3648)
!3662 = !DILocation(line: 50, column: 3, scope: !3631)
!3663 = distinct !DISubprogram(name: "base_len", scope: !3632, file: !3632, line: 58, type: !3664, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !256, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!127, !31}
!3666 = !{!3667, !3668, !3669}
!3667 = !DILocalVariable(name: "name", arg: 1, scope: !3663, file: !3632, line: 58, type: !31)
!3668 = !DILocalVariable(name: "len", scope: !3663, file: !3632, line: 60, type: !127)
!3669 = !DILocalVariable(name: "prefix_len", scope: !3663, file: !3632, line: 61, type: !127)
!3670 = !DILocation(line: 58, column: 23, scope: !3663)
!3671 = !DILocation(line: 61, column: 10, scope: !3663)
!3672 = !DILocation(line: 63, column: 14, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3663, file: !3632, line: 63, column: 3)
!3674 = !DILocation(line: 60, column: 10, scope: !3663)
!3675 = !DILocation(line: 63, column: 8, scope: !3673)
!3676 = !DILocation(line: 0, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3673, file: !3632, line: 63, column: 3)
!3678 = !DILocation(line: 63, column: 32, scope: !3677)
!3679 = !DILocation(line: 63, column: 38, scope: !3677)
!3680 = !DILocation(line: 63, column: 41, scope: !3677)
!3681 = !DILocation(line: 63, column: 3, scope: !3673)
!3682 = distinct !{!3682, !3681, !3683}
!3683 = !DILocation(line: 64, column: 5, scope: !3673)
!3684 = !DILocation(line: 74, column: 3, scope: !3663)
!3685 = distinct !DISubprogram(name: "hard_locale", scope: !3686, file: !3686, line: 38, type: !3687, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !259, retainedNodes: !3689)
!3686 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!68, !40}
!3689 = !{!3690, !3691, !3692}
!3690 = !DILocalVariable(name: "category", arg: 1, scope: !3685, file: !3686, line: 38, type: !40)
!3691 = !DILocalVariable(name: "hard", scope: !3685, file: !3686, line: 40, type: !68)
!3692 = !DILocalVariable(name: "p", scope: !3685, file: !3686, line: 41, type: !31)
!3693 = !DILocation(line: 38, column: 18, scope: !3685)
!3694 = !DILocation(line: 40, column: 8, scope: !3685)
!3695 = !DILocation(line: 41, column: 19, scope: !3685)
!3696 = !DILocation(line: 41, column: 15, scope: !3685)
!3697 = !DILocation(line: 43, column: 7, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3685, file: !3686, line: 43, column: 7)
!3699 = !DILocation(line: 43, column: 7, scope: !3685)
!3700 = !DILocation(line: 47, column: 15, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3702, file: !3686, line: 47, column: 15)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !3686, line: 46, column: 9)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !3686, line: 45, column: 11)
!3704 = distinct !DILexicalBlock(scope: !3698, file: !3686, line: 44, column: 5)
!3705 = !DILocation(line: 47, column: 31, scope: !3701)
!3706 = !DILocation(line: 47, column: 36, scope: !3701)
!3707 = !DILocation(line: 47, column: 39, scope: !3701)
!3708 = !DILocation(line: 47, column: 59, scope: !3701)
!3709 = !DILocation(line: 47, column: 15, scope: !3702)
!3710 = !DILocation(line: 48, column: 13, scope: !3701)
!3711 = !DILocation(line: 71, column: 3, scope: !3685)
!3712 = distinct !DISubprogram(name: "locale_charset", scope: !3713, file: !3713, line: 687, type: !3714, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !3716)
!3713 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!31}
!3716 = !{!3717}
!3717 = !DILocalVariable(name: "codeset", scope: !3712, file: !3713, line: 689, type: !31)
!3718 = !DILocation(line: 696, column: 13, scope: !3712)
!3719 = !DILocation(line: 689, column: 15, scope: !3712)
!3720 = !DILocation(line: 754, column: 15, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3712, file: !3713, line: 754, column: 7)
!3722 = !DILocation(line: 754, column: 7, scope: !3712)
!3723 = !DILocation(line: 907, column: 13, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !3713, line: 907, column: 13)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !3713, line: 897, column: 7)
!3726 = distinct !DILexicalBlock(scope: !3712, file: !3713, line: 856, column: 3)
!3727 = !DILocation(line: 907, column: 24, scope: !3724)
!3728 = !DILocation(line: 907, column: 13, scope: !3725)
!3729 = !DILocation(line: 995, column: 3, scope: !3712)
!3730 = distinct !DISubprogram(name: "rpl_fclose", scope: !3731, file: !3731, line: 58, type: !3732, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !650, retainedNodes: !3768)
!3731 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!40, !3734}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 7, baseType: !3736)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 49, size: 1728, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3736, file: !902, line: 51, baseType: !40, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3736, file: !902, line: 54, baseType: !97, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3736, file: !902, line: 55, baseType: !97, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3736, file: !902, line: 56, baseType: !97, size: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3736, file: !902, line: 57, baseType: !97, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3736, file: !902, line: 58, baseType: !97, size: 64, offset: 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3736, file: !902, line: 59, baseType: !97, size: 64, offset: 384)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3736, file: !902, line: 60, baseType: !97, size: 64, offset: 448)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3736, file: !902, line: 61, baseType: !97, size: 64, offset: 512)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3736, file: !902, line: 64, baseType: !97, size: 64, offset: 576)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3736, file: !902, line: 65, baseType: !97, size: 64, offset: 640)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3736, file: !902, line: 66, baseType: !97, size: 64, offset: 704)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3736, file: !902, line: 68, baseType: !917, size: 64, offset: 768)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3736, file: !902, line: 70, baseType: !3752, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3736, file: !902, line: 72, baseType: !40, size: 32, offset: 896)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3736, file: !902, line: 73, baseType: !40, size: 32, offset: 928)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3736, file: !902, line: 74, baseType: !924, size: 64, offset: 960)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3736, file: !902, line: 77, baseType: !126, size: 16, offset: 1024)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3736, file: !902, line: 78, baseType: !928, size: 8, offset: 1040)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3736, file: !902, line: 79, baseType: !930, size: 8, offset: 1048)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3736, file: !902, line: 81, baseType: !932, size: 64, offset: 1088)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3736, file: !902, line: 89, baseType: !935, size: 64, offset: 1152)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3736, file: !902, line: 91, baseType: !937, size: 64, offset: 1216)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3736, file: !902, line: 92, baseType: !940, size: 64, offset: 1280)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3736, file: !902, line: 93, baseType: !3752, size: 64, offset: 1344)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3736, file: !902, line: 94, baseType: !34, size: 64, offset: 1408)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3736, file: !902, line: 95, baseType: !127, size: 64, offset: 1472)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3736, file: !902, line: 96, baseType: !40, size: 32, offset: 1536)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3736, file: !902, line: 98, baseType: !947, size: 160, offset: 1568)
!3768 = !{!3769, !3770, !3771, !3772}
!3769 = !DILocalVariable(name: "fp", arg: 1, scope: !3730, file: !3731, line: 58, type: !3734)
!3770 = !DILocalVariable(name: "saved_errno", scope: !3730, file: !3731, line: 60, type: !40)
!3771 = !DILocalVariable(name: "fd", scope: !3730, file: !3731, line: 61, type: !40)
!3772 = !DILocalVariable(name: "result", scope: !3730, file: !3731, line: 62, type: !40)
!3773 = !DILocation(line: 58, column: 19, scope: !3730)
!3774 = !DILocation(line: 60, column: 7, scope: !3730)
!3775 = !DILocation(line: 62, column: 7, scope: !3730)
!3776 = !DILocation(line: 65, column: 8, scope: !3730)
!3777 = !DILocation(line: 61, column: 7, scope: !3730)
!3778 = !DILocation(line: 66, column: 10, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3730, file: !3731, line: 66, column: 7)
!3780 = !DILocation(line: 66, column: 7, scope: !3730)
!3781 = !DILocation(line: 67, column: 12, scope: !3779)
!3782 = !DILocation(line: 67, column: 5, scope: !3779)
!3783 = !DILocation(line: 72, column: 9, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3730, file: !3731, line: 72, column: 7)
!3785 = !DILocation(line: 72, column: 23, scope: !3784)
!3786 = !DILocation(line: 72, column: 33, scope: !3784)
!3787 = !DILocation(line: 72, column: 26, scope: !3784)
!3788 = !DILocation(line: 72, column: 59, scope: !3784)
!3789 = !DILocation(line: 73, column: 7, scope: !3784)
!3790 = !DILocation(line: 73, column: 10, scope: !3784)
!3791 = !DILocation(line: 72, column: 7, scope: !3730)
!3792 = !DILocation(line: 100, column: 12, scope: !3730)
!3793 = !DILocation(line: 105, column: 7, scope: !3730)
!3794 = !DILocation(line: 74, column: 19, scope: !3784)
!3795 = !DILocation(line: 105, column: 19, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3730, file: !3731, line: 105, column: 7)
!3797 = !DILocation(line: 107, column: 13, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3796, file: !3731, line: 106, column: 5)
!3799 = !DILocation(line: 109, column: 5, scope: !3798)
!3800 = !DILocation(line: 0, scope: !3730)
!3801 = !DILocation(line: 112, column: 1, scope: !3730)
!3802 = distinct !DISubprogram(name: "rpl_fflush", scope: !3803, file: !3803, line: 129, type: !3804, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !652, retainedNodes: !3840)
!3803 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!40, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 7, baseType: !3808)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 49, size: 1728, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3808, file: !902, line: 51, baseType: !40, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3808, file: !902, line: 54, baseType: !97, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3808, file: !902, line: 55, baseType: !97, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3808, file: !902, line: 56, baseType: !97, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3808, file: !902, line: 57, baseType: !97, size: 64, offset: 256)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3808, file: !902, line: 58, baseType: !97, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3808, file: !902, line: 59, baseType: !97, size: 64, offset: 384)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3808, file: !902, line: 60, baseType: !97, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3808, file: !902, line: 61, baseType: !97, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3808, file: !902, line: 64, baseType: !97, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3808, file: !902, line: 65, baseType: !97, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3808, file: !902, line: 66, baseType: !97, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3808, file: !902, line: 68, baseType: !917, size: 64, offset: 768)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3808, file: !902, line: 70, baseType: !3824, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3808, file: !902, line: 72, baseType: !40, size: 32, offset: 896)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3808, file: !902, line: 73, baseType: !40, size: 32, offset: 928)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3808, file: !902, line: 74, baseType: !924, size: 64, offset: 960)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3808, file: !902, line: 77, baseType: !126, size: 16, offset: 1024)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3808, file: !902, line: 78, baseType: !928, size: 8, offset: 1040)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3808, file: !902, line: 79, baseType: !930, size: 8, offset: 1048)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3808, file: !902, line: 81, baseType: !932, size: 64, offset: 1088)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3808, file: !902, line: 89, baseType: !935, size: 64, offset: 1152)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3808, file: !902, line: 91, baseType: !937, size: 64, offset: 1216)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3808, file: !902, line: 92, baseType: !940, size: 64, offset: 1280)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3808, file: !902, line: 93, baseType: !3824, size: 64, offset: 1344)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3808, file: !902, line: 94, baseType: !34, size: 64, offset: 1408)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3808, file: !902, line: 95, baseType: !127, size: 64, offset: 1472)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3808, file: !902, line: 96, baseType: !40, size: 32, offset: 1536)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3808, file: !902, line: 98, baseType: !947, size: 160, offset: 1568)
!3840 = !{!3841}
!3841 = !DILocalVariable(name: "stream", arg: 1, scope: !3802, file: !3803, line: 129, type: !3806)
!3842 = !DILocation(line: 129, column: 19, scope: !3802)
!3843 = !DILocation(line: 150, column: 14, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3802, file: !3803, line: 150, column: 7)
!3845 = !DILocation(line: 150, column: 22, scope: !3844)
!3846 = !DILocation(line: 150, column: 27, scope: !3844)
!3847 = !DILocation(line: 150, column: 7, scope: !3802)
!3848 = !DILocation(line: 151, column: 12, scope: !3844)
!3849 = !DILocation(line: 151, column: 5, scope: !3844)
!3850 = !DILocalVariable(name: "fp", arg: 1, scope: !3851, file: !3803, line: 41, type: !3806)
!3851 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3803, file: !3803, line: 41, type: !3852, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !652, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3806}
!3854 = !{!3850}
!3855 = !DILocation(line: 41, column: 48, scope: !3851, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 156, column: 3, scope: !3802)
!3857 = !DILocation(line: 43, column: 11, scope: !3858, inlinedAt: !3856)
!3858 = distinct !DILexicalBlock(scope: !3851, file: !3803, line: 43, column: 7)
!3859 = !DILocation(line: 43, column: 18, scope: !3858, inlinedAt: !3856)
!3860 = !DILocation(line: 43, column: 7, scope: !3851, inlinedAt: !3856)
!3861 = !DILocation(line: 45, column: 5, scope: !3858, inlinedAt: !3856)
!3862 = !DILocation(line: 158, column: 10, scope: !3802)
!3863 = !DILocation(line: 158, column: 3, scope: !3802)
!3864 = !DILocation(line: 0, scope: !3802)
!3865 = !DILocation(line: 232, column: 1, scope: !3802)
!3866 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3867, file: !3867, line: 28, type: !3868, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !654, retainedNodes: !3905)
!3867 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!40, !3870, !3904, !40}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !900, line: 7, baseType: !3872)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !902, line: 49, size: 1728, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3872, file: !902, line: 51, baseType: !40, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3872, file: !902, line: 54, baseType: !97, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3872, file: !902, line: 55, baseType: !97, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3872, file: !902, line: 56, baseType: !97, size: 64, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3872, file: !902, line: 57, baseType: !97, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3872, file: !902, line: 58, baseType: !97, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3872, file: !902, line: 59, baseType: !97, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3872, file: !902, line: 60, baseType: !97, size: 64, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3872, file: !902, line: 61, baseType: !97, size: 64, offset: 512)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3872, file: !902, line: 64, baseType: !97, size: 64, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3872, file: !902, line: 65, baseType: !97, size: 64, offset: 640)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3872, file: !902, line: 66, baseType: !97, size: 64, offset: 704)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3872, file: !902, line: 68, baseType: !917, size: 64, offset: 768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3872, file: !902, line: 70, baseType: !3888, size: 64, offset: 832)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3872, file: !902, line: 72, baseType: !40, size: 32, offset: 896)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3872, file: !902, line: 73, baseType: !40, size: 32, offset: 928)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3872, file: !902, line: 74, baseType: !924, size: 64, offset: 960)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3872, file: !902, line: 77, baseType: !126, size: 16, offset: 1024)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3872, file: !902, line: 78, baseType: !928, size: 8, offset: 1040)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3872, file: !902, line: 79, baseType: !930, size: 8, offset: 1048)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3872, file: !902, line: 81, baseType: !932, size: 64, offset: 1088)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3872, file: !902, line: 89, baseType: !935, size: 64, offset: 1152)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3872, file: !902, line: 91, baseType: !937, size: 64, offset: 1216)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3872, file: !902, line: 92, baseType: !940, size: 64, offset: 1280)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3872, file: !902, line: 93, baseType: !3888, size: 64, offset: 1344)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3872, file: !902, line: 94, baseType: !34, size: 64, offset: 1408)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3872, file: !902, line: 95, baseType: !127, size: 64, offset: 1472)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3872, file: !902, line: 96, baseType: !40, size: 32, offset: 1536)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3872, file: !902, line: 98, baseType: !947, size: 160, offset: 1568)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1179, line: 63, baseType: !924)
!3905 = !{!3906, !3907, !3908, !3909}
!3906 = !DILocalVariable(name: "fp", arg: 1, scope: !3866, file: !3867, line: 28, type: !3870)
!3907 = !DILocalVariable(name: "offset", arg: 2, scope: !3866, file: !3867, line: 28, type: !3904)
!3908 = !DILocalVariable(name: "whence", arg: 3, scope: !3866, file: !3867, line: 28, type: !40)
!3909 = !DILocalVariable(name: "pos", scope: !3910, file: !3867, line: 117, type: !3904)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !3867, line: 113, column: 5)
!3911 = distinct !DILexicalBlock(scope: !3866, file: !3867, line: 52, column: 7)
!3912 = !DILocation(line: 28, column: 15, scope: !3866)
!3913 = !DILocation(line: 28, column: 25, scope: !3866)
!3914 = !DILocation(line: 28, column: 37, scope: !3866)
!3915 = !DILocation(line: 52, column: 11, scope: !3911)
!3916 = !{!955, !693, i64 16}
!3917 = !DILocation(line: 52, column: 31, scope: !3911)
!3918 = !{!955, !693, i64 8}
!3919 = !DILocation(line: 52, column: 24, scope: !3911)
!3920 = !DILocation(line: 53, column: 7, scope: !3911)
!3921 = !DILocation(line: 53, column: 14, scope: !3911)
!3922 = !{!955, !693, i64 40}
!3923 = !DILocation(line: 53, column: 35, scope: !3911)
!3924 = !{!955, !693, i64 32}
!3925 = !DILocation(line: 53, column: 28, scope: !3911)
!3926 = !DILocation(line: 54, column: 7, scope: !3911)
!3927 = !DILocation(line: 54, column: 14, scope: !3911)
!3928 = !{!955, !693, i64 72}
!3929 = !DILocation(line: 54, column: 28, scope: !3911)
!3930 = !DILocation(line: 52, column: 7, scope: !3866)
!3931 = !DILocation(line: 117, column: 26, scope: !3910)
!3932 = !DILocation(line: 117, column: 19, scope: !3910)
!3933 = !DILocation(line: 117, column: 13, scope: !3910)
!3934 = !DILocation(line: 118, column: 15, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3910, file: !3867, line: 118, column: 11)
!3936 = !DILocation(line: 118, column: 11, scope: !3910)
!3937 = !DILocation(line: 129, column: 11, scope: !3910)
!3938 = !DILocation(line: 129, column: 18, scope: !3910)
!3939 = !DILocation(line: 130, column: 11, scope: !3910)
!3940 = !DILocation(line: 130, column: 19, scope: !3910)
!3941 = !{!955, !956, i64 144}
!3942 = !DILocation(line: 161, column: 7, scope: !3910)
!3943 = !DILocation(line: 163, column: 10, scope: !3866)
!3944 = !DILocation(line: 163, column: 3, scope: !3866)
!3945 = !DILocation(line: 0, scope: !3866)
!3946 = !DILocation(line: 164, column: 1, scope: !3866)
