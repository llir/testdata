; ModuleID = 'coreutils-8.32/src/nohup.bc'
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"failed to render standard input unusable\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"ignoring input\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"nohup.out\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"appending output to %s\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"ignoring input and appending output to %s\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"redirecting stderr to stdout\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"ignoring input and redirecting stderr to stdout\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"failed to redirect standard error\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), align 8, !dbg !0
@.str.42 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.45 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.46 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !17
@opterr = external local_unnamed_addr global i32, align 4
@.str.56 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.57, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.58, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !24
@.str.2.57 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.58 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !41
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16, !dbg !49
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !95
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !101
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
@.str.90 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.91 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.92 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.93 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.94 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.95 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.96 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.97 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.98 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.99 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.100 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.101 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.102 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.103 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.104 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.105 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.108 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.109 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.110 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.111 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.112 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.113 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.114 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.125 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !143
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !627 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !629, metadata !DIExpression()), !dbg !630
  %3 = icmp eq i32 %0, 0, !dbg !631
  br i1 %3, label %9, label %4, !dbg !633

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634, !tbaa !636
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #28, !dbg !634
  %7 = load i8*, i8** @program_name, align 8, !dbg !634, !tbaa !636
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #28, !dbg !634
  br label %63, !dbg !634

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 5) #28, !dbg !640
  %11 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !636
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #28, !dbg !640
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 5) #28, !dbg !642
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !636
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !642
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #28, !dbg !643
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !636
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !643
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #28, !dbg !644
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !636
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !644
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str.5, i64 0, i64 0), i32 5) #28, !dbg !645
  %23 = load i8*, i8** @program_name, align 8, !dbg !645, !tbaa !636
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* %23) #28, !dbg !645
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #28, !dbg !646
  %26 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #28, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !647, metadata !DIExpression()) #28, !dbg !665
  %27 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !667
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %27) #28, !dbg !667
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !652, metadata !DIExpression()) #28, !dbg !668
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %27, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #28, !dbg !668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !661, metadata !DIExpression()) #28, !dbg !665
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !662, metadata !DIExpression()) #28, !dbg !665
  %28 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !669
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !662, metadata !DIExpression()) #28, !dbg !665
  br label %29, !dbg !670

29:                                               ; preds = %34, %9
  %30 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %31 = phi %struct.infomap* [ %35, %34 ], [ %28, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !662, metadata !DIExpression()) #28, !dbg !665
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %30) #29, !dbg !671
  %33 = icmp eq i32 %32, 0, !dbg !671
  br i1 %33, label %39, label %34, !dbg !670

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %31, i64 1, !dbg !672
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !662, metadata !DIExpression()) #28, !dbg !665
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 0, !dbg !673
  %37 = load i8*, i8** %36, align 8, !dbg !673, !tbaa !674
  %38 = icmp eq i8* %37, null, !dbg !676
  br i1 %38, label %39, label %29, !dbg !677, !llvm.loop !678

39:                                               ; preds = %34, %29
  %40 = phi %struct.infomap* [ %31, %29 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 1, !dbg !680
  %42 = load i8*, i8** %41, align 8, !dbg !680, !tbaa !682
  %43 = icmp eq i8* %42, null, !dbg !683
  %44 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %42, !dbg !684
  call void @llvm.dbg.value(metadata i8* %44, metadata !661, metadata !DIExpression()) #28, !dbg !665
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #28, !dbg !685
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0)) #28, !dbg !685
  %47 = tail call i8* @setlocale(i32 5, i8* null) #28, !dbg !686
  call void @llvm.dbg.value(metadata i8* %47, metadata !664, metadata !DIExpression()) #28, !dbg !665
  %48 = icmp eq i8* %47, null, !dbg !687
  br i1 %48, label %56, label %49, !dbg !689

49:                                               ; preds = %39
  %50 = tail call i32 @strncmp(i8* nonnull %47, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #29, !dbg !690
  %51 = icmp eq i32 %50, 0, !dbg !690
  br i1 %51, label %56, label %52, !dbg !691

52:                                               ; preds = %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.38, i64 0, i64 0), i32 5) #28, !dbg !692
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !692, !tbaa !636
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #28, !dbg !692
  br label %56, !dbg !694

56:                                               ; preds = %39, %49, %52
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #28, !dbg !695
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #28, !dbg !695
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #28, !dbg !696
  %60 = icmp eq i8* %44, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !696
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !696
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %44, i8* %61) #28, !dbg !696
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %27) #28, !dbg !697
  br label %63

63:                                               ; preds = %56, %4
  tail call void @exit(i32 %0) #30, !dbg !698
  unreachable, !dbg !698
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !699 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !703 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !759 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !768, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i8** %1, metadata !769, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i32 1, metadata !770, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i32 2, metadata !771, metadata !DIExpression()), !dbg !797
  %3 = load i8*, i8** %1, align 8, !dbg !798, !tbaa !636
  tail call void @set_program_name(i8* %3) #28, !dbg !799
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #28, !dbg !800
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #28, !dbg !801
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #28, !dbg !802
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #28, !dbg !803
  %8 = icmp eq i8* %7, null, !dbg !803
  %9 = select i1 %8, i32 125, i32 127, !dbg !803
  call void @llvm.dbg.value(metadata i32 %9, metadata !776, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i32 %9, metadata !804, metadata !DIExpression()), !dbg !807
  store volatile i32 %9, i32* @exit_failure, align 4, !dbg !809, !tbaa !811
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #28, !dbg !813
  %11 = load i8*, i8** @Version, align 8, !dbg !814, !tbaa !636
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %11, i1 zeroext false, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #28, !dbg !815
  %12 = load i32, i32* @optind, align 4, !dbg !816, !tbaa !811
  %13 = icmp slt i32 %12, %0, !dbg !818
  br i1 %13, label %16, label %14, !dbg !819

14:                                               ; preds = %2
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #28, !dbg !820
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %15) #28, !dbg !822
  tail call void @usage(i32 %9) #31, !dbg !823
  unreachable, !dbg !823

16:                                               ; preds = %2
  %17 = tail call i32 @isatty(i32 0) #28, !dbg !824
  %18 = icmp eq i32 %17, 0, !dbg !824
  call void @llvm.dbg.value(metadata i1 %18, metadata !772, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !797
  %19 = tail call i32 @isatty(i32 1) #28, !dbg !825
  %20 = icmp eq i32 %19, 0, !dbg !825
  call void @llvm.dbg.value(metadata i1 %20, metadata !773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !797
  br i1 %20, label %21, label %25, !dbg !826

21:                                               ; preds = %16
  %22 = tail call i32* @__errno_location() #32, !dbg !827
  %23 = load i32, i32* %22, align 4, !dbg !827, !tbaa !811
  %24 = icmp eq i32 %23, 9, !dbg !828
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ], !dbg !797
  call void @llvm.dbg.value(metadata i1 %26, metadata !774, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !797
  %27 = tail call i32 @isatty(i32 2) #28, !dbg !829
  %28 = icmp eq i32 %27, 0, !dbg !829
  call void @llvm.dbg.value(metadata i1 %28, metadata !775, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !797
  br i1 %18, label %41, label %29, !dbg !830

29:                                               ; preds = %25
  %30 = tail call i32 @fd_reopen(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 1, i32 0) #28, !dbg !831
  %31 = icmp slt i32 %30, 0, !dbg !835
  br i1 %31, label %32, label %36, !dbg !836

32:                                               ; preds = %29
  %33 = tail call i32* @__errno_location() #32, !dbg !837
  %34 = load i32, i32* %33, align 4, !dbg !837, !tbaa !811
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 5) #28, !dbg !838
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %34, i8* %35) #28, !dbg !839
  br label %36, !dbg !839

36:                                               ; preds = %32, %29
  %37 = or i32 %27, %19, !dbg !840
  %38 = icmp eq i32 %37, 0, !dbg !840
  br i1 %38, label %39, label %41, !dbg !840

39:                                               ; preds = %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 5) #28, !dbg !842
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40) #28, !dbg !843
  br label %41, !dbg !843

41:                                               ; preds = %36, %39, %25
  %42 = xor i1 %26, true
  %43 = or i1 %28, %42
  %44 = and i1 %20, %43, !dbg !844
  br i1 %44, label %87, label %45, !dbg !844

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* null, metadata !777, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), metadata !780, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i32 1089, metadata !781, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i32 384, metadata !782, metadata !DIExpression()), !dbg !845
  %46 = tail call i32 @umask(i32 -385) #28, !dbg !846
  call void @llvm.dbg.value(metadata i32 %46, metadata !786, metadata !DIExpression()), !dbg !845
  br i1 %20, label %49, label %47, !dbg !847

47:                                               ; preds = %45
  %48 = tail call i32 @fd_reopen(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1089, i32 384) #28, !dbg !848
  br label %51, !dbg !847

49:                                               ; preds = %45
  %50 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1089, i32 384) #28, !dbg !849
  br label %51, !dbg !847

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ], !dbg !847
  call void @llvm.dbg.value(metadata i32 %52, metadata !770, metadata !DIExpression()), !dbg !797
  %53 = icmp slt i32 %52, 0, !dbg !850
  br i1 %53, label %54, label %79, !dbg !851

54:                                               ; preds = %51
  %55 = tail call i32* @__errno_location() #32, !dbg !852
  %56 = load i32, i32* %55, align 4, !dbg !852, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %56, metadata !787, metadata !DIExpression()), !dbg !853
  %57 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #28, !dbg !854
  call void @llvm.dbg.value(metadata i8* %57, metadata !790, metadata !DIExpression()), !dbg !853
  %58 = icmp eq i8* %57, null, !dbg !855
  br i1 %58, label %70, label %59, !dbg !857

59:                                               ; preds = %54
  %60 = tail call i8* @file_name_concat(i8* nonnull %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** null) #28, !dbg !858
  call void @llvm.dbg.value(metadata i8* %60, metadata !777, metadata !DIExpression()), !dbg !845
  br i1 %20, label %63, label %61, !dbg !860

61:                                               ; preds = %59
  %62 = tail call i32 @fd_reopen(i32 1, i8* %60, i32 1089, i32 384) #28, !dbg !861
  br label %65, !dbg !860

63:                                               ; preds = %59
  %64 = tail call i32 (i8*, i32, ...) @open(i8* %60, i32 1089, i32 384) #28, !dbg !862
  br label %65, !dbg !860

65:                                               ; preds = %61, %63
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ], !dbg !845
  call void @llvm.dbg.value(metadata i32 %66, metadata !770, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i8* %60, metadata !777, metadata !DIExpression()), !dbg !845
  %67 = icmp slt i32 %66, 0, !dbg !863
  br i1 %67, label %68, label %79, !dbg !864

68:                                               ; preds = %65
  %69 = load i32, i32* %55, align 4, !dbg !865, !tbaa !811
  br label %70, !dbg !864

70:                                               ; preds = %68, %54
  %71 = phi i32 [ %69, %68 ], [ %56, %54 ], !dbg !865
  %72 = phi i8* [ %60, %68 ], [ null, %54 ]
  call void @llvm.dbg.value(metadata i32 %71, metadata !791, metadata !DIExpression()), !dbg !866
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 5) #28, !dbg !867
  %74 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #28, !dbg !868
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %56, i8* %73, i8* %74) #28, !dbg !869
  %75 = icmp eq i8* %72, null, !dbg !870
  br i1 %75, label %128, label %76, !dbg !872

76:                                               ; preds = %70
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 5) #28, !dbg !873
  %78 = tail call i8* @quotearg_style(i32 4, i8* nonnull %72) #28, !dbg !874
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %71, i8* %77, i8* %78) #28, !dbg !875
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), metadata !780, metadata !DIExpression()), !dbg !845
  br label %128

79:                                               ; preds = %65, %51
  %80 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %51 ], [ %60, %65 ], !dbg !876
  %81 = phi i8* [ null, %51 ], [ %60, %65 ], !dbg !845
  %82 = phi i32 [ %52, %51 ], [ %66, %65 ], !dbg !845
  call void @llvm.dbg.value(metadata i32 %82, metadata !770, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i8* %81, metadata !777, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i8* %80, metadata !780, metadata !DIExpression()), !dbg !845
  %83 = tail call i32 @umask(i32 %46) #28, !dbg !877
  %84 = select i1 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), !dbg !878
  %85 = tail call i8* @dcgettext(i8* null, i8* %84, i32 5) #28, !dbg !878
  %86 = tail call i8* @quotearg_style(i32 4, i8* %80) #28, !dbg !879
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85, i8* %86) #28, !dbg !880
  tail call void @free(i8* %81) #28, !dbg !881
  br label %87

87:                                               ; preds = %79, %41
  %88 = phi i32 [ %82, %79 ], [ 1, %41 ], !dbg !797
  call void @llvm.dbg.value(metadata i32 %88, metadata !770, metadata !DIExpression()), !dbg !797
  br i1 %28, label %104, label %89, !dbg !882

89:                                               ; preds = %87
  %90 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 2, i32 1030, i32 3) #28, !dbg !883
  call void @llvm.dbg.value(metadata i32 %90, metadata !771, metadata !DIExpression()), !dbg !797
  br i1 %20, label %91, label %94, !dbg !886

91:                                               ; preds = %89
  %92 = select i1 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0), !dbg !887
  %93 = tail call i8* @dcgettext(i8* null, i8* %92, i32 5) #28, !dbg !887
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %93) #28, !dbg !889
  br label %94, !dbg !889

94:                                               ; preds = %91, %89
  %95 = tail call i32 @dup2(i32 %88, i32 2) #28, !dbg !890
  %96 = icmp slt i32 %95, 0, !dbg !892
  br i1 %96, label %97, label %101, !dbg !893

97:                                               ; preds = %94
  %98 = tail call i32* @__errno_location() #32, !dbg !894
  %99 = load i32, i32* %98, align 4, !dbg !894, !tbaa !811
  %100 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i32 5) #28, !dbg !895
  tail call void (i32, i32, i8*, ...) @error(i32 %9, i32 %99, i8* %100) #28, !dbg !896
  br label %101, !dbg !896

101:                                              ; preds = %97, %94
  br i1 %26, label %102, label %104, !dbg !897

102:                                              ; preds = %101
  %103 = tail call i32 @close(i32 %88) #28, !dbg !898
  br label %104, !dbg !898

104:                                              ; preds = %101, %102, %87
  %105 = phi i32 [ %90, %102 ], [ %90, %101 ], [ 2, %87 ], !dbg !797
  call void @llvm.dbg.value(metadata i32 %105, metadata !771, metadata !DIExpression()), !dbg !797
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !900, !tbaa !636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %106, metadata !902, metadata !DIExpression()), !dbg !911
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %106, i64 0, i32 0, !dbg !913
  %108 = load i32, i32* %107, align 8, !dbg !913, !tbaa !914
  %109 = and i32 %108, 32, !dbg !900
  %110 = icmp eq i32 %109, 0, !dbg !900
  br i1 %110, label %111, label %128, !dbg !918

111:                                              ; preds = %104
  %112 = tail call void (i32)* @signal(i32 1, void (i32)* nonnull inttoptr (i64 1 to void (i32)*)) #28, !dbg !919
  %113 = load i32, i32* @optind, align 4, !dbg !920, !tbaa !811
  %114 = sext i32 %113 to i64, !dbg !921
  %115 = getelementptr inbounds i8*, i8** %1, i64 %114, !dbg !921
  call void @llvm.dbg.value(metadata i8** %115, metadata !794, metadata !DIExpression()), !dbg !797
  %116 = load i8*, i8** %115, align 8, !dbg !922, !tbaa !636
  %117 = tail call i32 @execvp(i8* %116, i8** nonnull %115) #28, !dbg !923
  %118 = tail call i32* @__errno_location() #32, !dbg !924
  %119 = load i32, i32* %118, align 4, !dbg !924, !tbaa !811
  %120 = icmp eq i32 %119, 2, !dbg !925
  %121 = select i1 %120, i32 127, i32 126, !dbg !924
  call void @llvm.dbg.value(metadata i32 %121, metadata !795, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.value(metadata i32 %119, metadata !796, metadata !DIExpression()), !dbg !797
  %122 = tail call i32 @dup2(i32 %105, i32 2) #28, !dbg !926
  %123 = icmp eq i32 %122, 2, !dbg !928
  br i1 %123, label %124, label %128, !dbg !929

124:                                              ; preds = %111
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 5) #28, !dbg !930
  %126 = load i8*, i8** %115, align 8, !dbg !931, !tbaa !636
  %127 = tail call i8* @quotearg_style(i32 4, i8* %126) #28, !dbg !931
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %119, i8* %125, i8* %127) #28, !dbg !932
  br label %128, !dbg !932

128:                                              ; preds = %70, %76, %111, %124, %104
  %129 = phi i32 [ %9, %104 ], [ %121, %124 ], [ %121, %111 ], [ %9, %76 ], [ %9, %70 ], !dbg !797
  ret i32 %129, !dbg !933
}

; Function Attrs: nounwind
declare !dbg !934 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !937 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare !dbg !940 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !942 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !948 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !952 i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !956 i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !960 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !964 i32 @dup2(i32, i32) local_unnamed_addr #2

declare !dbg !965 i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !966 void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !969 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !976, metadata !DIExpression()), !dbg !977
  store i8* %0, i8** @file_name, align 8, !dbg !978, !tbaa !636
  ret void, !dbg !979
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !980 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !984, metadata !DIExpression()), !dbg !985
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !986, !tbaa !987
  ret void, !dbg !989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !990 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !995, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #28, !dbg !996
  %3 = icmp eq i32 %2, 0, !dbg !997
  br i1 %3, label %22, label %4, !dbg !998

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !999, !tbaa !987, !range !1000
  %6 = icmp eq i8 %5, 0, !dbg !999
  br i1 %6, label %11, label %7, !dbg !1001

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !1002
  %9 = load i32, i32* %8, align 4, !dbg !1002, !tbaa !811
  %10 = icmp eq i32 %9, 32, !dbg !1003
  br i1 %10, label %22, label %11, !dbg !1004

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 5) #28, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %12, metadata !992, metadata !DIExpression()), !dbg !1006
  %13 = load i8*, i8** @file_name, align 8, !dbg !1007, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !1007
  %15 = tail call i32* @__errno_location() #32, !dbg !1009
  %16 = load i32, i32* %15, align 4, !dbg !1009, !tbaa !811
  br i1 %14, label %19, label %17, !dbg !1010

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #28, !dbg !1011
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.46, i64 0, i64 0), i8* %18, i8* %12) #28, !dbg !1012
  br label %20, !dbg !1012

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.47, i64 0, i64 0), i8* %12) #28, !dbg !1013
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1014, !tbaa !811
  tail call void @_exit(i32 %21) #30, !dbg !1015
  unreachable, !dbg !1015

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1016, !tbaa !636
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #28, !dbg !1018
  %25 = icmp eq i32 %24, 0, !dbg !1019
  br i1 %25, label %28, label %26, !dbg !1020

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1021, !tbaa !811
  tail call void @_exit(i32 %27) #30, !dbg !1022
  unreachable, !dbg !1022

28:                                               ; preds = %22
  ret void, !dbg !1023
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @fd_reopen(i32 %0, i8* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #8 !dbg !1024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1028, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i8* %1, metadata !1029, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %2, metadata !1030, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %3, metadata !1031, metadata !DIExpression()), !dbg !1037
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #28, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %5, metadata !1032, metadata !DIExpression()), !dbg !1037
  %6 = icmp eq i32 %5, %0, !dbg !1039
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7, !dbg !1040
  br i1 %8, label %14, label %9, !dbg !1040

9:                                                ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #28, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %10, metadata !1033, metadata !DIExpression()), !dbg !1042
  %11 = tail call i32* @__errno_location() #32, !dbg !1043
  %12 = load i32, i32* %11, align 4, !dbg !1043, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %12, metadata !1036, metadata !DIExpression()), !dbg !1042
  %13 = tail call i32 @close(i32 %5) #28, !dbg !1044
  store i32 %12, i32* %11, align 4, !dbg !1045, !tbaa !811
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ], !dbg !1046
  ret i32 %15, !dbg !1047
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @file_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #8 !dbg !1048 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8* %1, metadata !1053, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8** %2, metadata !1054, metadata !DIExpression()), !dbg !1056
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #28, !dbg !1057
  call void @llvm.dbg.value(metadata i8* %4, metadata !1055, metadata !DIExpression()), !dbg !1056
  %5 = icmp eq i8* %4, null, !dbg !1058
  br i1 %5, label %6, label %7, !dbg !1060

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !1061
  unreachable, !dbg !1061

7:                                                ; preds = %3
  ret i8* %4, !dbg !1062
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) local_unnamed_addr #15 !dbg !1063 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1065, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %1, metadata !1066, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8** %2, metadata !1067, metadata !DIExpression()), !dbg !1075
  %4 = tail call i8* @last_component(i8* %0) #29, !dbg !1076
  call void @llvm.dbg.value(metadata i8* %4, metadata !1068, metadata !DIExpression()), !dbg !1075
  %5 = tail call i64 @base_len(i8* %4) #29, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %5, metadata !1069, metadata !DIExpression()), !dbg !1075
  %6 = ptrtoint i8* %4 to i64, !dbg !1078
  %7 = ptrtoint i8* %0 to i64, !dbg !1078
  %8 = sub i64 %6, %7, !dbg !1078
  %9 = add i64 %8, %5, !dbg !1079
  call void @llvm.dbg.value(metadata i64 %9, metadata !1070, metadata !DIExpression()), !dbg !1075
  %10 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #29, !dbg !1080
  call void @llvm.dbg.value(metadata i64 %10, metadata !1071, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8 0, metadata !1072, metadata !DIExpression()), !dbg !1075
  %11 = icmp eq i64 %5, 0, !dbg !1081
  br i1 %11, label %22, label %12, !dbg !1083

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1084
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1084
  %15 = load i8, i8* %14, align 1, !dbg !1084, !tbaa !1087
  %16 = icmp eq i8 %15, 47, !dbg !1084
  br i1 %16, label %26, label %17, !dbg !1088

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1089, !tbaa !1087
  %19 = icmp eq i8 %18, 47, !dbg !1089
  %20 = xor i1 %19, true, !dbg !1090
  %21 = select i1 %19, i8 0, i8 47, !dbg !1090
  br label %26, !dbg !1090

22:                                               ; preds = %3
  %23 = load i8, i8* %1, align 1, !dbg !1091, !tbaa !1087
  %24 = icmp eq i8 %23, 47, !dbg !1091
  %25 = select i1 %24, i8 46, i8 0, !dbg !1093
  br label %26, !dbg !1093

26:                                               ; preds = %22, %17, %12
  %27 = phi i1 [ false, %12 ], [ %20, %17 ], [ %24, %22 ]
  %28 = phi i8 [ 0, %12 ], [ %21, %17 ], [ %25, %22 ], !dbg !1075
  %29 = zext i1 %27 to i64
  call void @llvm.dbg.value(metadata i8 %28, metadata !1072, metadata !DIExpression()), !dbg !1075
  %30 = add i64 %10, 1, !dbg !1094
  %31 = add i64 %30, %9, !dbg !1095
  %32 = add i64 %31, %29, !dbg !1096
  %33 = tail call noalias i8* @malloc(i64 %32) #28, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %33, metadata !1073, metadata !DIExpression()), !dbg !1075
  %34 = icmp eq i8* %33, null, !dbg !1098
  br i1 %34, label %42, label %35, !dbg !1100

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %33, metadata !1101, metadata !DIExpression()) #28, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %0, metadata !1111, metadata !DIExpression()) #28, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %9, metadata !1112, metadata !DIExpression()) #28, !dbg !1113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %33, i8* nonnull align 1 %0, i64 %9, i1 false) #28, !dbg !1115
  %36 = getelementptr inbounds i8, i8* %33, i64 %9, !dbg !1115
  call void @llvm.dbg.value(metadata i8* %36, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i8 %28, i8* %36, align 1, !dbg !1116, !tbaa !1087
  %37 = getelementptr inbounds i8, i8* %36, i64 %29, !dbg !1117
  call void @llvm.dbg.value(metadata i8* %37, metadata !1074, metadata !DIExpression()), !dbg !1075
  %38 = icmp eq i8** %2, null, !dbg !1118
  br i1 %38, label %40, label %39, !dbg !1120

39:                                               ; preds = %35
  store i8* %37, i8** %2, align 8, !dbg !1121, !tbaa !636
  br label %40, !dbg !1122

40:                                               ; preds = %39, %35
  call void @llvm.dbg.value(metadata i8* %37, metadata !1101, metadata !DIExpression()) #28, !dbg !1123
  call void @llvm.dbg.value(metadata i8* %1, metadata !1111, metadata !DIExpression()) #28, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %10, metadata !1112, metadata !DIExpression()) #28, !dbg !1123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %37, i8* nonnull align 1 %1, i64 %10, i1 false) #28, !dbg !1125
  %41 = getelementptr inbounds i8, i8* %37, i64 %10, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %41, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i8 0, i8* %41, align 1, !dbg !1126, !tbaa !1087
  br label %42, !dbg !1127

42:                                               ; preds = %26, %40
  ret i8* %33, !dbg !1128
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1129 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1133, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8** %1, metadata !1134, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %2, metadata !1135, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %3, metadata !1136, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i8* %4, metadata !1137, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1138, metadata !DIExpression()), !dbg !1157
  %8 = load i32, i32* @opterr, align 4, !dbg !1158, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %8, metadata !1140, metadata !DIExpression()), !dbg !1157
  store i32 0, i32* @opterr, align 4, !dbg !1159, !tbaa !811
  %9 = icmp eq i32 %0, 2, !dbg !1160
  br i1 %9, label %10, label %17, !dbg !1161

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #28, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %11, metadata !1139, metadata !DIExpression()), !dbg !1157
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1163

12:                                               ; preds = %10
  tail call void %5(i32 0) #28, !dbg !1164
  br label %17, !dbg !1165

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1166
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #28, !dbg !1166
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1141, metadata !DIExpression()), !dbg !1167
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1168
  call void @llvm.va_start(i8* nonnull %14), !dbg !1168
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1169, !tbaa !636
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #28, !dbg !1170
  call void @exit(i32 0) #30, !dbg !1171
  unreachable, !dbg !1171

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1172, !tbaa !811
  store i32 0, i32* @optind, align 4, !dbg !1173, !tbaa !811
  ret void, !dbg !1174
}

; Function Attrs: nounwind
declare !dbg !1175 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1179 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1183, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i8** %1, metadata !1184, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i8* %2, metadata !1185, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i8* %3, metadata !1186, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i8* %4, metadata !1187, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i1 %5, metadata !1188, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1198
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1189, metadata !DIExpression()), !dbg !1198
  %9 = load i32, i32* @opterr, align 4, !dbg !1199, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %9, metadata !1191, metadata !DIExpression()), !dbg !1198
  store i32 1, i32* @opterr, align 4, !dbg !1200, !tbaa !811
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), !dbg !1201
  call void @llvm.dbg.value(metadata i8* %10, metadata !1192, metadata !DIExpression()), !dbg !1198
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #28, !dbg !1202
  call void @llvm.dbg.value(metadata i32 %11, metadata !1190, metadata !DIExpression()), !dbg !1198
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1203

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1204
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #28, !dbg !1204
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1193, metadata !DIExpression()), !dbg !1205
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1206
  call void @llvm.va_start(i8* nonnull %13), !dbg !1206
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1207, !tbaa !636
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #28, !dbg !1208
  call void @exit(i32 0) #30, !dbg !1209
  unreachable, !dbg !1209

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1210, !tbaa !811
  br label %18, !dbg !1211

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #28, !dbg !1212
  br label %20, !dbg !1213

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1213, !tbaa !811
  ret void, !dbg !1214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1215 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1217, metadata !DIExpression()), !dbg !1220
  %2 = icmp eq i8* %0, null, !dbg !1221
  br i1 %2, label %3, label %6, !dbg !1223

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1224, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #33, !dbg !1226
  tail call void @abort() #30, !dbg !1227
  unreachable, !dbg !1227

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #29, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %7, metadata !1218, metadata !DIExpression()), !dbg !1220
  %8 = icmp eq i8* %7, null, !dbg !1229
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1230
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %10, metadata !1219, metadata !DIExpression()), !dbg !1220
  %11 = ptrtoint i8* %10 to i64, !dbg !1231
  %12 = ptrtoint i8* %0 to i64, !dbg !1231
  %13 = sub i64 %11, %12, !dbg !1231
  %14 = icmp sgt i64 %13, 6, !dbg !1233
  br i1 %14, label %15, label %24, !dbg !1234

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1235
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #29, !dbg !1236
  %18 = icmp eq i32 %17, 0, !dbg !1237
  br i1 %18, label %19, label %24, !dbg !1238

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1217, metadata !DIExpression()), !dbg !1220
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #29, !dbg !1239
  %21 = icmp eq i32 %20, 0, !dbg !1242
  br i1 %21, label %22, label %24, !dbg !1243

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %23, metadata !1217, metadata !DIExpression()), !dbg !1220
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1246, !tbaa !636
  br label %24, !dbg !1247

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1217, metadata !DIExpression()), !dbg !1220
  store i8* %25, i8** @program_name, align 8, !dbg !1248, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1249, !tbaa !636
  ret void, !dbg !1250
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #18

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1251 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1256, metadata !DIExpression()), !dbg !1259
  %2 = tail call i32* @__errno_location() #32, !dbg !1260
  %3 = load i32, i32* %2, align 4, !dbg !1260, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %3, metadata !1257, metadata !DIExpression()), !dbg !1259
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1261
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1261
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1261
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #28, !dbg !1262
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1262
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1258, metadata !DIExpression()), !dbg !1259
  store i32 %3, i32* %2, align 4, !dbg !1263, !tbaa !811
  ret %struct.quoting_options* %8, !dbg !1264
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #19 !dbg !1265 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1271, metadata !DIExpression()), !dbg !1272
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1273
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1273
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1274
  %5 = load i32, i32* %4, align 8, !dbg !1274, !tbaa !1275
  ret i32 %5, !dbg !1277
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !1278 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1282, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %1, metadata !1283, metadata !DIExpression()), !dbg !1284
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1285
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1285
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1286
  store i32 %1, i32* %5, align 8, !dbg !1287, !tbaa !1275
  ret void, !dbg !1288
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #20 !dbg !1289 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1293, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8 %1, metadata !1294, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i32 %2, metadata !1295, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8 %1, metadata !1296, metadata !DIExpression()), !dbg !1302
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1303
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1303
  %6 = lshr i8 %1, 5, !dbg !1304
  %7 = zext i8 %6 to i64, !dbg !1304
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1305
  call void @llvm.dbg.value(metadata i32* %8, metadata !1298, metadata !DIExpression()), !dbg !1302
  %9 = and i8 %1, 31, !dbg !1306
  %10 = zext i8 %9 to i32, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %10, metadata !1300, metadata !DIExpression()), !dbg !1302
  %11 = load i32, i32* %8, align 4, !dbg !1307, !tbaa !811
  %12 = lshr i32 %11, %10, !dbg !1308
  %13 = and i32 %12, 1, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %13, metadata !1301, metadata !DIExpression()), !dbg !1302
  %14 = and i32 %2, 1, !dbg !1310
  %15 = xor i32 %13, %14, !dbg !1311
  %16 = shl i32 %15, %10, !dbg !1312
  %17 = xor i32 %16, %11, !dbg !1313
  store i32 %17, i32* %8, align 4, !dbg !1313, !tbaa !811
  ret i32 %13, !dbg !1314
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #20 !dbg !1315 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1319, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %1, metadata !1320, metadata !DIExpression()), !dbg !1322
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1323
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1319, metadata !DIExpression()), !dbg !1322
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1326
  %6 = load i32, i32* %5, align 4, !dbg !1326, !tbaa !1327
  call void @llvm.dbg.value(metadata i32 %6, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i32 %1, i32* %5, align 4, !dbg !1328, !tbaa !1327
  ret i32 %6, !dbg !1329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1330 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1334, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %1, metadata !1335, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %2, metadata !1336, metadata !DIExpression()), !dbg !1337
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1338
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1334, metadata !DIExpression()), !dbg !1337
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1341
  store i32 10, i32* %6, align 8, !dbg !1342, !tbaa !1275
  %7 = icmp ne i8* %1, null, !dbg !1343
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1345
  br i1 %9, label %11, label %10, !dbg !1345

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !1346
  unreachable, !dbg !1346

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1347
  store i8* %1, i8** %12, align 8, !dbg !1348, !tbaa !1349
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1350
  store i8* %2, i8** %13, align 8, !dbg !1351, !tbaa !1352
  ret void, !dbg !1353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1354 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1358, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %1, metadata !1359, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8* %2, metadata !1360, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i64 %3, metadata !1361, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1362, metadata !DIExpression()), !dbg !1366
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1367
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1367
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1363, metadata !DIExpression()), !dbg !1366
  %8 = tail call i32* @__errno_location() #32, !dbg !1368
  %9 = load i32, i32* %8, align 4, !dbg !1368, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %9, metadata !1364, metadata !DIExpression()), !dbg !1366
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1369
  %11 = load i32, i32* %10, align 8, !dbg !1369, !tbaa !1275
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1370
  %13 = load i32, i32* %12, align 4, !dbg !1370, !tbaa !1327
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1371
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1372
  %16 = load i8*, i8** %15, align 8, !dbg !1372, !tbaa !1349
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1373
  %18 = load i8*, i8** %17, align 8, !dbg !1373, !tbaa !1352
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1374
  call void @llvm.dbg.value(metadata i64 %19, metadata !1365, metadata !DIExpression()), !dbg !1366
  store i32 %9, i32* %8, align 4, !dbg !1375, !tbaa !811
  ret i64 %19, !dbg !1376
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1377 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1383, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %1, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %2, metadata !1385, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %3, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 %4, metadata !1387, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 %5, metadata !1388, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32* %6, metadata !1389, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %7, metadata !1390, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %8, metadata !1391, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1394, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* null, metadata !1395, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1396, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, metadata !1397, metadata !DIExpression()), !dbg !1453
  %13 = tail call i64 @__ctype_get_mb_cur_max() #28, !dbg !1454
  %14 = icmp eq i64 %13, 1, !dbg !1455
  call void @llvm.dbg.value(metadata i1 %14, metadata !1398, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1453
  %15 = lshr i32 %5, 1, !dbg !1456
  %16 = trunc i32 %15 to i8, !dbg !1456
  %17 = and i8 %16, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i8 %17, metadata !1399, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 1, metadata !1402, metadata !DIExpression()), !dbg !1453
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1457

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1458
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1459
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1460
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1461
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1453
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1462
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1463
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1464
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %38, metadata !1402, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %37, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %36, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %35, metadata !1399, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %34, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %33, metadata !1397, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %32, metadata !1396, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %31, metadata !1395, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %30, metadata !1394, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %29, metadata !1391, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %28, metadata !1390, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 %27, metadata !1387, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.label(metadata !1447), !dbg !1465
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
  ], !dbg !1466

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1399, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 5, metadata !1387, metadata !DIExpression()), !dbg !1453
  br label %92, !dbg !1467

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1399, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 5, metadata !1387, metadata !DIExpression()), !dbg !1453
  %42 = and i8 %35, 1, !dbg !1469
  %43 = icmp eq i8 %42, 0, !dbg !1469
  br i1 %43, label %44, label %92, !dbg !1467

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1471
  br i1 %45, label %92, label %46, !dbg !1474

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1471, !tbaa !1087
  br label %92, !dbg !1471

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %27), !dbg !1475
  call void @llvm.dbg.value(metadata i8* %48, metadata !1390, metadata !DIExpression()), !dbg !1453
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %27), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %49, metadata !1391, metadata !DIExpression()), !dbg !1453
  br label %50, !dbg !1480

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1391, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %51, metadata !1390, metadata !DIExpression()), !dbg !1453
  %53 = and i8 %35, 1, !dbg !1481
  %54 = icmp eq i8 %53, 0, !dbg !1481
  br i1 %54, label %55, label %70, !dbg !1483

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1395, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1393, metadata !DIExpression()), !dbg !1453
  %56 = load i8, i8* %51, align 1, !dbg !1484, !tbaa !1087
  %57 = icmp eq i8 %56, 0, !dbg !1487
  br i1 %57, label %70, label %58, !dbg !1487

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1395, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %61, metadata !1393, metadata !DIExpression()), !dbg !1453
  %62 = icmp ult i64 %61, %39, !dbg !1488
  br i1 %62, label %63, label %65, !dbg !1491

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1488
  store i8 %59, i8* %64, align 1, !dbg !1488, !tbaa !1087
  br label %65, !dbg !1488

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %66, metadata !1393, metadata !DIExpression()), !dbg !1453
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1492
  call void @llvm.dbg.value(metadata i8* %67, metadata !1395, metadata !DIExpression()), !dbg !1453
  %68 = load i8, i8* %67, align 1, !dbg !1484, !tbaa !1087
  %69 = icmp eq i8 %68, 0, !dbg !1487
  br i1 %69, label %70, label %58, !dbg !1487, !llvm.loop !1493

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1495
  call void @llvm.dbg.value(metadata i64 %71, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 1, metadata !1397, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %52, metadata !1395, metadata !DIExpression()), !dbg !1453
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #29, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %72, metadata !1396, metadata !DIExpression()), !dbg !1453
  br label %92, !dbg !1497

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1397, metadata !DIExpression()), !dbg !1453
  br label %74, !dbg !1498

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %75, metadata !1397, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 1, metadata !1399, metadata !DIExpression()), !dbg !1453
  br label %76, !dbg !1499

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1461
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %78, metadata !1399, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %77, metadata !1397, metadata !DIExpression()), !dbg !1453
  %79 = and i8 %78, 1, !dbg !1500
  %80 = icmp eq i8 %79, 0, !dbg !1500
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1502
  br label %82, !dbg !1502

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1453
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1456
  call void @llvm.dbg.value(metadata i8 %84, metadata !1399, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %83, metadata !1397, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 2, metadata !1387, metadata !DIExpression()), !dbg !1453
  %85 = and i8 %84, 1, !dbg !1503
  %86 = icmp eq i8 %85, 0, !dbg !1503
  br i1 %86, label %87, label %92, !dbg !1505

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1506
  br i1 %88, label %92, label %89, !dbg !1509

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1506, !tbaa !1087
  br label %92, !dbg !1506

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1399, metadata !DIExpression()), !dbg !1453
  br label %92, !dbg !1510

91:                                               ; preds = %26
  call void @abort() #30, !dbg !1511
  unreachable, !dbg !1511

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1495
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %40 ], !dbg !1453
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1453
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1453
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %100, metadata !1399, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %99, metadata !1397, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %98, metadata !1396, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %97, metadata !1395, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %96, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %95, metadata !1391, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8* %94, metadata !1390, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 %93, metadata !1387, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 0, metadata !1392, metadata !DIExpression()), !dbg !1453
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
  br label %121, !dbg !1512

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1513
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1495
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1458
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1462
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1463
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1464
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %128, metadata !1402, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %127, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %126, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %125, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %124, metadata !1394, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %123, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %122, metadata !1392, metadata !DIExpression()), !dbg !1453
  %130 = icmp eq i64 %125, -1, !dbg !1514
  br i1 %130, label %131, label %135, !dbg !1515

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1516
  %133 = load i8, i8* %132, align 1, !dbg !1516, !tbaa !1087
  %134 = icmp eq i8 %133, 0, !dbg !1517
  br i1 %134, label %587, label %137, !dbg !1518

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1519
  br i1 %136, label %587, label %137, !dbg !1518

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1408, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 0, metadata !1409, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 0, metadata !1410, metadata !DIExpression()), !dbg !1520
  br i1 %106, label %138, label %153, !dbg !1521

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1523
  %140 = and i1 %107, %130, !dbg !1524
  br i1 %140, label %141, label %143, !dbg !1524

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %142, metadata !1386, metadata !DIExpression()), !dbg !1453
  br label %143, !dbg !1526

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1526
  call void @llvm.dbg.value(metadata i64 %144, metadata !1386, metadata !DIExpression()), !dbg !1453
  %145 = icmp ugt i64 %139, %144, !dbg !1527
  br i1 %145, label %153, label %146, !dbg !1528

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1529
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1530
  %149 = icmp ne i32 %148, 0, !dbg !1531
  %150 = or i1 %149, %109, !dbg !1532
  %151 = xor i1 %149, true, !dbg !1532
  %152 = zext i1 %151 to i8, !dbg !1532
  br i1 %150, label %153, label %646, !dbg !1532

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1520
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %156, metadata !1408, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %154, metadata !1386, metadata !DIExpression()), !dbg !1453
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1533
  %158 = load i8, i8* %157, align 1, !dbg !1533, !tbaa !1087
  call void @llvm.dbg.value(metadata i8 %158, metadata !1403, metadata !DIExpression()), !dbg !1520
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
  ], !dbg !1534

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1535

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1536

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1409, metadata !DIExpression()), !dbg !1520
  %162 = and i8 %126, 1, !dbg !1540
  %163 = icmp eq i8 %162, 0, !dbg !1540
  %164 = and i1 %110, %163, !dbg !1540
  br i1 %164, label %165, label %181, !dbg !1540

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1542
  br i1 %166, label %167, label %169, !dbg !1546

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1542
  store i8 39, i8* %168, align 1, !dbg !1542, !tbaa !1087
  br label %169, !dbg !1542

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %170, metadata !1393, metadata !DIExpression()), !dbg !1453
  %171 = icmp ult i64 %170, %129, !dbg !1547
  br i1 %171, label %172, label %174, !dbg !1550

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1547
  store i8 36, i8* %173, align 1, !dbg !1547, !tbaa !1087
  br label %174, !dbg !1547

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %175, metadata !1393, metadata !DIExpression()), !dbg !1453
  %176 = icmp ult i64 %175, %129, !dbg !1551
  br i1 %176, label %177, label %179, !dbg !1554

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1551
  store i8 39, i8* %178, align 1, !dbg !1551, !tbaa !1087
  br label %179, !dbg !1551

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %180, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 1, metadata !1400, metadata !DIExpression()), !dbg !1453
  br label %181, !dbg !1555

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1453
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %183, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %182, metadata !1393, metadata !DIExpression()), !dbg !1453
  %184 = icmp ult i64 %182, %129, !dbg !1556
  br i1 %184, label %185, label %187, !dbg !1559

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1556
  store i8 92, i8* %186, align 1, !dbg !1556, !tbaa !1087
  br label %187, !dbg !1556

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %188, metadata !1393, metadata !DIExpression()), !dbg !1453
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1560
  br i1 %191, label %192, label %473, !dbg !1560

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1562
  %194 = load i8, i8* %193, align 1, !dbg !1562, !tbaa !1087
  %195 = add i8 %194, -48, !dbg !1563
  %196 = icmp ult i8 %195, 10, !dbg !1563
  br i1 %196, label %197, label %473, !dbg !1563

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1564
  br i1 %198, label %199, label %201, !dbg !1568

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1564
  store i8 48, i8* %200, align 1, !dbg !1564, !tbaa !1087
  br label %201, !dbg !1564

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %202, metadata !1393, metadata !DIExpression()), !dbg !1453
  %203 = icmp ult i64 %202, %129, !dbg !1569
  br i1 %203, label %204, label %206, !dbg !1572

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1569
  store i8 48, i8* %205, align 1, !dbg !1569, !tbaa !1087
  br label %206, !dbg !1569

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %207, metadata !1393, metadata !DIExpression()), !dbg !1453
  br label %473, !dbg !1573

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1574

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1575

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1576

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1578
  br i1 %214, label %215, label %473, !dbg !1578

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1580
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1581
  %218 = load i8, i8* %217, align 1, !dbg !1581, !tbaa !1087
  %219 = icmp eq i8 %218, 63, !dbg !1582
  br i1 %219, label %220, label %473, !dbg !1583

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1584
  %222 = load i8, i8* %221, align 1, !dbg !1584, !tbaa !1087
  %223 = sext i8 %222 to i32, !dbg !1584
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
  ], !dbg !1585

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1586

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 undef, metadata !1392, metadata !DIExpression()), !dbg !1453
  %226 = icmp ult i64 %123, %129, !dbg !1588
  br i1 %226, label %227, label %229, !dbg !1591

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1588
  store i8 63, i8* %228, align 1, !dbg !1588, !tbaa !1087
  br label %229, !dbg !1588

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %230, metadata !1393, metadata !DIExpression()), !dbg !1453
  %231 = icmp ult i64 %230, %129, !dbg !1592
  br i1 %231, label %232, label %234, !dbg !1595

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1592
  store i8 34, i8* %233, align 1, !dbg !1592, !tbaa !1087
  br label %234, !dbg !1592

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %235, metadata !1393, metadata !DIExpression()), !dbg !1453
  %236 = icmp ult i64 %235, %129, !dbg !1596
  br i1 %236, label %237, label %239, !dbg !1599

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1596
  store i8 34, i8* %238, align 1, !dbg !1596, !tbaa !1087
  br label %239, !dbg !1596

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %240, metadata !1393, metadata !DIExpression()), !dbg !1453
  %241 = icmp ult i64 %240, %129, !dbg !1600
  br i1 %241, label %242, label %244, !dbg !1603

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1600
  store i8 63, i8* %243, align 1, !dbg !1600, !tbaa !1087
  br label %244, !dbg !1600

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %245, metadata !1393, metadata !DIExpression()), !dbg !1453
  br label %473, !dbg !1604

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1407, metadata !DIExpression()), !dbg !1520
  br label %256, !dbg !1605

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1407, metadata !DIExpression()), !dbg !1520
  br label %256, !dbg !1606

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1407, metadata !DIExpression()), !dbg !1520
  br label %254, !dbg !1607

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1407, metadata !DIExpression()), !dbg !1520
  br label %254, !dbg !1608

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1407, metadata !DIExpression()), !dbg !1520
  br label %256, !dbg !1609

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1407, metadata !DIExpression()), !dbg !1520
  br i1 %110, label %252, label %253, !dbg !1610

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1611

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1614

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1616
  call void @llvm.dbg.value(metadata i8 %255, metadata !1407, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.label(metadata !1448), !dbg !1617
  br i1 %111, label %256, label %631, !dbg !1618

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1616
  call void @llvm.dbg.value(metadata i8 %257, metadata !1407, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.label(metadata !1449), !dbg !1620
  br i1 %102, label %495, label %473, !dbg !1621

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1622

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1623, !tbaa !1087
  %261 = icmp eq i8 %260, 0, !dbg !1625
  br i1 %261, label %262, label %473, !dbg !1626

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1627
  br i1 %263, label %264, label %473, !dbg !1629

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1410, metadata !DIExpression()), !dbg !1520
  br label %265, !dbg !1630

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %266, metadata !1410, metadata !DIExpression()), !dbg !1520
  br i1 %111, label %473, label %631, !dbg !1631

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 1, metadata !1410, metadata !DIExpression()), !dbg !1520
  br i1 %110, label %268, label %473, !dbg !1633

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1634

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1637
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1639
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1639
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %274, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %273, metadata !1394, metadata !DIExpression()), !dbg !1453
  %275 = icmp ult i64 %123, %274, !dbg !1640
  br i1 %275, label %276, label %278, !dbg !1643

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1640
  store i8 39, i8* %277, align 1, !dbg !1640, !tbaa !1087
  br label %278, !dbg !1640

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %279, metadata !1393, metadata !DIExpression()), !dbg !1453
  %280 = icmp ult i64 %279, %274, !dbg !1644
  br i1 %280, label %281, label %283, !dbg !1647

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1644
  store i8 92, i8* %282, align 1, !dbg !1644, !tbaa !1087
  br label %283, !dbg !1644

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %284, metadata !1393, metadata !DIExpression()), !dbg !1453
  %285 = icmp ult i64 %284, %274, !dbg !1648
  br i1 %285, label %286, label %288, !dbg !1651

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1648
  store i8 39, i8* %287, align 1, !dbg !1648, !tbaa !1087
  br label %288, !dbg !1648

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %289, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, metadata !1400, metadata !DIExpression()), !dbg !1453
  br label %473, !dbg !1652

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1653

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1411, metadata !DIExpression()), !dbg !1654
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !1655
  %293 = load i16*, i16** %292, align 8, !dbg !1655, !tbaa !636
  %294 = zext i8 %158 to i64, !dbg !1655
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1655
  %296 = load i16, i16* %295, align 2, !dbg !1655, !tbaa !1657
  %297 = lshr i16 %296, 14, !dbg !1658
  %298 = trunc i16 %297 to i8, !dbg !1658
  %299 = and i8 %298, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i8 %354, metadata !1414, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %355, metadata !1411, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %306, metadata !1386, metadata !DIExpression()), !dbg !1453
  %300 = icmp eq i8 %299, 0, !dbg !1659
  call void @llvm.dbg.value(metadata i1 %357, metadata !1410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1520
  br label %359, !dbg !1660

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28, !dbg !1661
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1415, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %23, metadata !1663, metadata !DIExpression()) #28, !dbg !1670
  call void @llvm.dbg.value(metadata i32 0, metadata !1668, metadata !DIExpression()) #28, !dbg !1670
  call void @llvm.dbg.value(metadata i64 8, metadata !1669, metadata !DIExpression()) #28, !dbg !1670
  store i64 0, i64* %10, align 8, !dbg !1672
  call void @llvm.dbg.value(metadata i64 0, metadata !1411, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1414, metadata !DIExpression()), !dbg !1654
  %302 = icmp eq i64 %154, -1, !dbg !1673
  br i1 %302, label %303, label %305, !dbg !1675

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %304, metadata !1386, metadata !DIExpression()), !dbg !1453
  br label %305, !dbg !1677

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1520
  call void @llvm.dbg.value(metadata i64 %306, metadata !1386, metadata !DIExpression()), !dbg !1453
  br label %307, !dbg !1678

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1679
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1680
  call void @llvm.dbg.value(metadata i8 %309, metadata !1414, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %308, metadata !1411, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #28, !dbg !1681
  %310 = add i64 %308, %122, !dbg !1682
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1683
  %312 = sub i64 %306, %310, !dbg !1684
  call void @llvm.dbg.value(metadata i32* %12, metadata !1433, metadata !DIExpression(DW_OP_deref)), !dbg !1685
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #28, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %313, metadata !1436, metadata !DIExpression()), !dbg !1685
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1687

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1411, metadata !DIExpression()), !dbg !1654
  %315 = icmp ugt i64 %306, %310, !dbg !1688
  br i1 %315, label %316, label %341, !dbg !1690

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1691
  br label %318, !dbg !1691

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1411, metadata !DIExpression()), !dbg !1654
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1692
  %322 = load i8, i8* %321, align 1, !dbg !1692, !tbaa !1087
  %323 = icmp eq i8 %322, 0, !dbg !1690
  br i1 %323, label %341, label %324, !dbg !1691

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %325, metadata !1411, metadata !DIExpression()), !dbg !1654
  %326 = add i64 %325, %122, !dbg !1694
  %327 = icmp ult i64 %326, %306, !dbg !1688
  br i1 %327, label %318, label %341, !dbg !1690, !llvm.loop !1695

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1696
  call void @llvm.dbg.value(metadata i64 1, metadata !1437, metadata !DIExpression()), !dbg !1697
  br i1 %330, label %331, label %344, !dbg !1696

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1437, metadata !DIExpression()), !dbg !1697
  %333 = add i64 %332, %310, !dbg !1698
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1701
  %335 = load i8, i8* %334, align 1, !dbg !1701, !tbaa !1087
  %336 = sext i8 %335 to i32, !dbg !1701
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1702

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %338, metadata !1437, metadata !DIExpression()), !dbg !1697
  %339 = icmp eq i64 %338, %313, !dbg !1704
  br i1 %339, label %344, label %331, !dbg !1705, !llvm.loop !1706

340:                                              ; preds = %307
  br label %341, !dbg !1708

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1414, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 undef, metadata !1411, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !1708
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1709, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %345, metadata !1433, metadata !DIExpression()), !dbg !1685
  %346 = call i32 @iswprint(i32 %345) #28, !dbg !1711
  %347 = icmp eq i32 %346, 0, !dbg !1711
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1712
  call void @llvm.dbg.value(metadata i8 %348, metadata !1414, metadata !DIExpression()), !dbg !1654
  %349 = add i64 %313, %308, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %349, metadata !1411, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !1708
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #29, !dbg !1714
  %351 = icmp eq i32 %350, 0, !dbg !1715
  br i1 %351, label %307, label %353, !dbg !1716, !llvm.loop !1717

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1414, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 undef, metadata !1411, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !1708
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !1719
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !1719
  call void @llvm.dbg.value(metadata i8 %354, metadata !1414, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %355, metadata !1411, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %306, metadata !1386, metadata !DIExpression()), !dbg !1453
  %356 = and i8 %354, 1, !dbg !1659
  %357 = icmp eq i8 %356, 0, !dbg !1659
  call void @llvm.dbg.value(metadata i1 %357, metadata !1410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1520
  %358 = icmp ugt i64 %355, 1, !dbg !1720
  br i1 %358, label %367, label %359, !dbg !1660

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1721
  br i1 %364, label %367, label %365, !dbg !1721

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i8 %472, metadata !1410, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %441, metadata !1409, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %440, metadata !1408, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %439, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %438, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %371, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %437, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %375, metadata !1392, metadata !DIExpression()), !dbg !1453
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %372, metadata !1444, metadata !DIExpression()), !dbg !1723
  %373 = and i1 %102, %368
  br label %374, !dbg !1724

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1513
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1453
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1462
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1520
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1520
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1725
  call void @llvm.dbg.value(metadata i8 %380, metadata !1409, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %379, metadata !1408, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %378, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %377, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %376, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %375, metadata !1392, metadata !DIExpression()), !dbg !1453
  br i1 %373, label %381, label %427, !dbg !1726

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1731

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1409, metadata !DIExpression()), !dbg !1520
  %383 = and i8 %377, 1, !dbg !1734
  %384 = icmp eq i8 %383, 0, !dbg !1734
  %385 = and i1 %110, %384, !dbg !1734
  br i1 %385, label %386, label %402, !dbg !1734

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1736
  br i1 %387, label %388, label %390, !dbg !1740

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1736
  store i8 39, i8* %389, align 1, !dbg !1736, !tbaa !1087
  br label %390, !dbg !1736

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %391, metadata !1393, metadata !DIExpression()), !dbg !1453
  %392 = icmp ult i64 %391, %129, !dbg !1741
  br i1 %392, label %393, label %395, !dbg !1744

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1741
  store i8 36, i8* %394, align 1, !dbg !1741, !tbaa !1087
  br label %395, !dbg !1741

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %396, metadata !1393, metadata !DIExpression()), !dbg !1453
  %397 = icmp ult i64 %396, %129, !dbg !1745
  br i1 %397, label %398, label %400, !dbg !1748

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1745
  store i8 39, i8* %399, align 1, !dbg !1745, !tbaa !1087
  br label %400, !dbg !1745

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %401, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 1, metadata !1400, metadata !DIExpression()), !dbg !1453
  br label %402, !dbg !1749

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1453
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %404, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %403, metadata !1393, metadata !DIExpression()), !dbg !1453
  %405 = icmp ult i64 %403, %129, !dbg !1750
  br i1 %405, label %406, label %408, !dbg !1753

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1750
  store i8 92, i8* %407, align 1, !dbg !1750, !tbaa !1087
  br label %408, !dbg !1750

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %409, metadata !1393, metadata !DIExpression()), !dbg !1453
  %410 = icmp ult i64 %409, %129, !dbg !1754
  br i1 %410, label %411, label %415, !dbg !1757

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1754
  %413 = or i8 %412, 48, !dbg !1754
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1754
  store i8 %413, i8* %414, align 1, !dbg !1754, !tbaa !1087
  br label %415, !dbg !1754

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %416, metadata !1393, metadata !DIExpression()), !dbg !1453
  %417 = icmp ult i64 %416, %129, !dbg !1758
  br i1 %417, label %418, label %423, !dbg !1761

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1758
  %420 = and i8 %419, 7, !dbg !1758
  %421 = or i8 %420, 48, !dbg !1758
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1758
  store i8 %421, i8* %422, align 1, !dbg !1758, !tbaa !1087
  br label %423, !dbg !1758

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %424, metadata !1393, metadata !DIExpression()), !dbg !1453
  %425 = and i8 %378, 7, !dbg !1762
  %426 = or i8 %425, 48, !dbg !1763
  call void @llvm.dbg.value(metadata i8 %426, metadata !1403, metadata !DIExpression()), !dbg !1520
  br label %436, !dbg !1764

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1765
  %429 = icmp eq i8 %428, 0, !dbg !1765
  br i1 %429, label %436, label %430, !dbg !1767

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1768
  br i1 %431, label %432, label %434, !dbg !1772

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1768
  store i8 92, i8* %433, align 1, !dbg !1768, !tbaa !1087
  br label %434, !dbg !1768

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i64 %435, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, metadata !1408, metadata !DIExpression()), !dbg !1520
  br label %436, !dbg !1773

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1453
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1462
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1520
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1520
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %441, metadata !1409, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %440, metadata !1408, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %439, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %438, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %437, metadata !1393, metadata !DIExpression()), !dbg !1453
  %442 = add i64 %375, 1, !dbg !1774
  %443 = icmp ugt i64 %372, %442, !dbg !1776
  br i1 %443, label %444, label %471, !dbg !1777

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1778
  %446 = icmp ne i8 %445, 0, !dbg !1778
  %447 = and i8 %441, 1, !dbg !1778
  %448 = icmp eq i8 %447, 0, !dbg !1778
  %449 = and i1 %446, %448, !dbg !1778
  br i1 %449, label %450, label %461, !dbg !1778

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1781
  br i1 %451, label %452, label %454, !dbg !1785

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1781
  store i8 39, i8* %453, align 1, !dbg !1781, !tbaa !1087
  br label %454, !dbg !1781

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %455, metadata !1393, metadata !DIExpression()), !dbg !1453
  %456 = icmp ult i64 %455, %129, !dbg !1786
  br i1 %456, label %457, label %459, !dbg !1789

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1786
  store i8 39, i8* %458, align 1, !dbg !1786, !tbaa !1087
  br label %459, !dbg !1786

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %460, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, metadata !1400, metadata !DIExpression()), !dbg !1453
  br label %461, !dbg !1790

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1791
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %463, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %462, metadata !1393, metadata !DIExpression()), !dbg !1453
  %464 = icmp ult i64 %462, %129, !dbg !1792
  br i1 %464, label %465, label %467, !dbg !1795

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1792
  store i8 %439, i8* %466, align 1, !dbg !1792, !tbaa !1087
  br label %467, !dbg !1792

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %468, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %442, metadata !1392, metadata !DIExpression()), !dbg !1453
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1796
  %470 = load i8, i8* %469, align 1, !dbg !1796, !tbaa !1087
  call void @llvm.dbg.value(metadata i8 %470, metadata !1403, metadata !DIExpression()), !dbg !1520
  br label %374, !dbg !1797, !llvm.loop !1798

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i8 %472, metadata !1410, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %441, metadata !1409, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %440, metadata !1408, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %439, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %438, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %371, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %437, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %375, metadata !1392, metadata !DIExpression()), !dbg !1453
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1513
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1453
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1458
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1801
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1453
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1453
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1520
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1520
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1520
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %482, metadata !1410, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %481, metadata !1409, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %156, metadata !1408, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %480, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %479, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %478, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %477, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %476, metadata !1394, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %475, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %474, metadata !1392, metadata !DIExpression()), !dbg !1453
  br i1 %116, label %494, label %484, !dbg !1802

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1804
  %486 = zext i8 %485 to i64, !dbg !1804
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1805
  %488 = load i32, i32* %487, align 4, !dbg !1805, !tbaa !811
  %489 = and i8 %480, 31, !dbg !1806
  %490 = zext i8 %489 to i32, !dbg !1806
  %491 = shl nuw i32 1, %490, !dbg !1807
  %492 = and i32 %488, %491, !dbg !1807
  %493 = icmp eq i32 %492, 0, !dbg !1807
  br i1 %493, label %494, label %495, !dbg !1808

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1809

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1810
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1453
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1458
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1801
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1462
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1463
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1520
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1520
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %503, metadata !1410, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %502, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %501, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %500, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %499, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %498, metadata !1394, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %497, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %496, metadata !1392, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.label(metadata !1450), !dbg !1811
  br i1 %109, label %505, label %635, !dbg !1812

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1409, metadata !DIExpression()), !dbg !1520
  %506 = and i8 %500, 1, !dbg !1814
  %507 = icmp eq i8 %506, 0, !dbg !1814
  %508 = and i1 %110, %507, !dbg !1814
  br i1 %508, label %509, label %525, !dbg !1814

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1816
  br i1 %510, label %511, label %513, !dbg !1820

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1816
  store i8 39, i8* %512, align 1, !dbg !1816, !tbaa !1087
  br label %513, !dbg !1816

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %514, metadata !1393, metadata !DIExpression()), !dbg !1453
  %515 = icmp ult i64 %514, %504, !dbg !1821
  br i1 %515, label %516, label %518, !dbg !1824

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1821
  store i8 36, i8* %517, align 1, !dbg !1821, !tbaa !1087
  br label %518, !dbg !1821

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %519, metadata !1393, metadata !DIExpression()), !dbg !1453
  %520 = icmp ult i64 %519, %504, !dbg !1825
  br i1 %520, label %521, label %523, !dbg !1828

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1825
  store i8 39, i8* %522, align 1, !dbg !1825, !tbaa !1087
  br label %523, !dbg !1825

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %524, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 1, metadata !1400, metadata !DIExpression()), !dbg !1453
  br label %525, !dbg !1829

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1520
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %527, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %526, metadata !1393, metadata !DIExpression()), !dbg !1453
  %528 = icmp ult i64 %526, %504, !dbg !1830
  br i1 %528, label %529, label %531, !dbg !1833

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1830
  store i8 92, i8* %530, align 1, !dbg !1830, !tbaa !1087
  br label %531, !dbg !1830

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %543, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %542, metadata !1410, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %541, metadata !1409, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %540, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %539, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %538, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %537, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %536, metadata !1394, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %535, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %534, metadata !1392, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.label(metadata !1451), !dbg !1834
  br label %560, !dbg !1835

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1810
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1453
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1458
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1801
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1462
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1463
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1838
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1520
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1520
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %542, metadata !1410, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %541, metadata !1409, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %540, metadata !1403, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8 %539, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %538, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %537, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %536, metadata !1394, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %535, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %534, metadata !1392, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.label(metadata !1451), !dbg !1834
  %544 = and i8 %538, 1, !dbg !1835
  %545 = icmp ne i8 %544, 0, !dbg !1835
  %546 = and i8 %541, 1, !dbg !1835
  %547 = icmp eq i8 %546, 0, !dbg !1835
  %548 = and i1 %545, %547, !dbg !1835
  br i1 %548, label %549, label %560, !dbg !1835

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1839
  br i1 %550, label %551, label %553, !dbg !1843

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1839
  store i8 39, i8* %552, align 1, !dbg !1839, !tbaa !1087
  br label %553, !dbg !1839

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %554, metadata !1393, metadata !DIExpression()), !dbg !1453
  %555 = icmp ult i64 %554, %543, !dbg !1844
  br i1 %555, label %556, label %558, !dbg !1847

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1844
  store i8 39, i8* %557, align 1, !dbg !1844, !tbaa !1087
  br label %558, !dbg !1844

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %559, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 0, metadata !1400, metadata !DIExpression()), !dbg !1453
  br label %560, !dbg !1848

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1520
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %569, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %568, metadata !1393, metadata !DIExpression()), !dbg !1453
  %570 = icmp ult i64 %568, %561, !dbg !1849
  br i1 %570, label %571, label %573, !dbg !1852

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1849
  store i8 %563, i8* %572, align 1, !dbg !1849, !tbaa !1087
  br label %573, !dbg !1849

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %574, metadata !1393, metadata !DIExpression()), !dbg !1453
  %575 = icmp eq i8 %562, 0, !dbg !1853
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1855
  call void @llvm.dbg.value(metadata i8 %576, metadata !1402, metadata !DIExpression()), !dbg !1453
  br label %577, !dbg !1856

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1810
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1453
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1458
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1801
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1462
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1453
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1464
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %584, metadata !1402, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %583, metadata !1401, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i8 %582, metadata !1400, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %581, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %580, metadata !1394, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %579, metadata !1393, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %578, metadata !1392, metadata !DIExpression()), !dbg !1453
  %586 = add i64 %578, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %586, metadata !1392, metadata !DIExpression()), !dbg !1453
  br label %121, !dbg !1858, !llvm.loop !1859

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1861
  %590 = and i1 %110, %589, !dbg !1863
  %591 = xor i1 %590, true, !dbg !1863
  %592 = or i1 %109, %591, !dbg !1863
  br i1 %592, label %593, label %635, !dbg !1863

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1864
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1864
  br i1 %597, label %598, label %607, !dbg !1864

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1866
  %600 = icmp eq i8 %599, 0, !dbg !1866
  br i1 %600, label %603, label %601, !dbg !1869

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1870
  br label %652, !dbg !1871

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1872
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1874
  br i1 %606, label %26, label %607, !dbg !1874

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1875
  %610 = and i1 %609, %608, !dbg !1877
  br i1 %610, label %611, label %626, !dbg !1877

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1395, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %123, metadata !1393, metadata !DIExpression()), !dbg !1453
  %612 = load i8, i8* %97, align 1, !dbg !1878, !tbaa !1087
  %613 = icmp eq i8 %612, 0, !dbg !1881
  br i1 %613, label %626, label %614, !dbg !1881

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1395, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %617, metadata !1393, metadata !DIExpression()), !dbg !1453
  %618 = icmp ult i64 %617, %129, !dbg !1882
  br i1 %618, label %619, label %621, !dbg !1885

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1882
  store i8 %615, i8* %620, align 1, !dbg !1882, !tbaa !1087
  br label %621, !dbg !1882

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %622, metadata !1393, metadata !DIExpression()), !dbg !1453
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1886
  call void @llvm.dbg.value(metadata i8* %623, metadata !1395, metadata !DIExpression()), !dbg !1453
  %624 = load i8, i8* %623, align 1, !dbg !1878, !tbaa !1087
  %625 = icmp eq i8 %624, 0, !dbg !1881
  br i1 %625, label %626, label %614, !dbg !1881, !llvm.loop !1887

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1495
  call void @llvm.dbg.value(metadata i64 %627, metadata !1393, metadata !DIExpression()), !dbg !1453
  %628 = icmp ult i64 %627, %129, !dbg !1889
  br i1 %628, label %629, label %652, !dbg !1891

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1892
  store i8 0, i8* %630, align 1, !dbg !1893, !tbaa !1087
  br label %652, !dbg !1892

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %637, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.label(metadata !1452), !dbg !1894
  %633 = icmp eq i8 %101, 0, !dbg !1895
  %634 = select i1 %633, i32 2, i32 4, !dbg !1895
  br label %642, !dbg !1895

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1384, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %637, metadata !1386, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.label(metadata !1452), !dbg !1894
  %639 = icmp eq i32 %93, 2, !dbg !1897
  %640 = icmp eq i8 %636, 0, !dbg !1895
  %641 = select i1 %640, i32 2, i32 4, !dbg !1895
  br i1 %639, label %642, label %646, !dbg !1895

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1895

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1387, metadata !DIExpression()), !dbg !1453
  %650 = and i32 %5, -3, !dbg !1898
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1899
  br label %652, !dbg !1900

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1901
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1902 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1906, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i32 %1, metadata !1907, metadata !DIExpression()), !dbg !1910
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #28, !dbg !1911
  call void @llvm.dbg.value(metadata i8* %3, metadata !1908, metadata !DIExpression()), !dbg !1910
  %4 = icmp eq i8* %3, %0, !dbg !1912
  br i1 %4, label %5, label %72, !dbg !1914

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #28, !dbg !1915
  call void @llvm.dbg.value(metadata i8* %6, metadata !1909, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8* %6, metadata !1916, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* undef, metadata !1922, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 85, metadata !1923, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 84, metadata !1924, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 70, metadata !1925, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 45, metadata !1926, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 56, metadata !1927, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1932
  %7 = load i8, i8* %6, align 1, !dbg !1935, !tbaa !1087
  %8 = and i8 %7, -33, !dbg !1935
  %9 = sext i8 %8 to i32, !dbg !1935
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1935

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1937, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* undef, metadata !1942, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 84, metadata !1943, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 70, metadata !1944, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 45, metadata !1945, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 56, metadata !1946, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1947, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !1951
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1955
  %12 = load i8, i8* %11, align 1, !dbg !1955, !tbaa !1087
  %13 = and i8 %12, -33, !dbg !1955
  %14 = icmp eq i8 %13, 84, !dbg !1955
  br i1 %14, label %15, label %69, !dbg !1955

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1957, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* undef, metadata !1962, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 70, metadata !1963, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 45, metadata !1964, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 56, metadata !1965, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1966, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1969, metadata !DIExpression()), !dbg !1970
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1974
  %17 = load i8, i8* %16, align 1, !dbg !1974, !tbaa !1087
  %18 = and i8 %17, -33, !dbg !1974
  %19 = icmp eq i8 %18, 70, !dbg !1974
  br i1 %19, label %20, label %69, !dbg !1974

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1976, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* undef, metadata !1981, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 45, metadata !1982, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 56, metadata !1983, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !1988
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1992
  %22 = load i8, i8* %21, align 1, !dbg !1992, !tbaa !1087
  %23 = icmp eq i8 %22, 45, !dbg !1992
  br i1 %23, label %24, label %69, !dbg !1994

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1995, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8* undef, metadata !2000, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 56, metadata !2001, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !2003, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2006
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2010
  %26 = load i8, i8* %25, align 1, !dbg !2010, !tbaa !1087
  %27 = icmp eq i8 %26, 56, !dbg !2010
  br i1 %27, label %28, label %69, !dbg !2012

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2013, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8* undef, metadata !2018, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2019, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2020, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2023
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2027
  %30 = load i8, i8* %29, align 1, !dbg !2027, !tbaa !1087
  %31 = icmp eq i8 %30, 0, !dbg !2027
  br i1 %31, label %32, label %69, !dbg !2029

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2030, !tbaa !1087
  %34 = icmp eq i8 %33, 96, !dbg !2031
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0), !dbg !2030
  br label %72, !dbg !2032

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1937, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8* undef, metadata !1942, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 66, metadata !1943, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 49, metadata !1944, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 56, metadata !1945, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 48, metadata !1946, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 51, metadata !1947, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 48, metadata !1948, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !2033
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2037
  %38 = load i8, i8* %37, align 1, !dbg !2037, !tbaa !1087
  %39 = and i8 %38, -33, !dbg !2037
  %40 = icmp eq i8 %39, 66, !dbg !2037
  br i1 %40, label %41, label %69, !dbg !2037

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1957, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8* undef, metadata !1962, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 49, metadata !1963, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 56, metadata !1964, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 48, metadata !1965, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 51, metadata !1966, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 48, metadata !1967, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 0, metadata !1969, metadata !DIExpression()), !dbg !2038
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2040
  %43 = load i8, i8* %42, align 1, !dbg !2040, !tbaa !1087
  %44 = icmp eq i8 %43, 49, !dbg !2040
  br i1 %44, label %45, label %69, !dbg !2041

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1976, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8* undef, metadata !1981, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 56, metadata !1982, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 48, metadata !1983, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 51, metadata !1984, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 48, metadata !1985, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !2042
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2044
  %47 = load i8, i8* %46, align 1, !dbg !2044, !tbaa !1087
  %48 = icmp eq i8 %47, 56, !dbg !2044
  br i1 %48, label %49, label %69, !dbg !2045

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1995, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8* undef, metadata !2000, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8 48, metadata !2001, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8 51, metadata !2002, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8 48, metadata !2003, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2046
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2048
  %51 = load i8, i8* %50, align 1, !dbg !2048, !tbaa !1087
  %52 = icmp eq i8 %51, 48, !dbg !2048
  br i1 %52, label %53, label %69, !dbg !2049

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2013, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8* undef, metadata !2018, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 51, metadata !2019, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 48, metadata !2020, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2050
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2052
  %55 = load i8, i8* %54, align 1, !dbg !2052, !tbaa !1087
  %56 = icmp eq i8 %55, 51, !dbg !2052
  br i1 %56, label %57, label %69, !dbg !2053

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2054, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* undef, metadata !2059, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 48, metadata !2060, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2063
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2067
  %59 = load i8, i8* %58, align 1, !dbg !2067, !tbaa !1087
  %60 = icmp eq i8 %59, 48, !dbg !2067
  br i1 %60, label %61, label %69, !dbg !2069

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2070, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* undef, metadata !2075, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2078
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2082
  %63 = load i8, i8* %62, align 1, !dbg !2082, !tbaa !1087
  %64 = icmp eq i8 %63, 0, !dbg !2082
  br i1 %64, label %65, label %69, !dbg !2084

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2085, !tbaa !1087
  %67 = icmp eq i8 %66, 96, !dbg !2086
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0), !dbg !2085
  br label %72, !dbg !2087

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2088
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), !dbg !2089
  br label %72, !dbg !2090

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1910
  ret i8* %73, !dbg !2091
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2092 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2096 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2102 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2106, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %1, metadata !2107, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2108, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %0, metadata !2110, metadata !DIExpression()) #28, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %1, metadata !2115, metadata !DIExpression()) #28, !dbg !2123
  call void @llvm.dbg.value(metadata i64* null, metadata !2116, metadata !DIExpression()) #28, !dbg !2123
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2117, metadata !DIExpression()) #28, !dbg !2123
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2125
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2125
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2118, metadata !DIExpression()) #28, !dbg !2123
  %6 = tail call i32* @__errno_location() #32, !dbg !2126
  %7 = load i32, i32* %6, align 4, !dbg !2126, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %7, metadata !2119, metadata !DIExpression()) #28, !dbg !2123
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2127
  %9 = load i32, i32* %8, align 4, !dbg !2127, !tbaa !1327
  %10 = or i32 %9, 1, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %10, metadata !2120, metadata !DIExpression()) #28, !dbg !2123
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2129
  %12 = load i32, i32* %11, align 8, !dbg !2129, !tbaa !1275
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2130
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2131
  %15 = load i8*, i8** %14, align 8, !dbg !2131, !tbaa !1349
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2132
  %17 = load i8*, i8** %16, align 8, !dbg !2132, !tbaa !1352
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #28, !dbg !2133
  %19 = add i64 %18, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %19, metadata !2121, metadata !DIExpression()) #28, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %19, metadata !2135, metadata !DIExpression()) #28, !dbg !2140
  %20 = tail call noalias i8* @xmalloc(i64 %19) #28, !dbg !2142
  call void @llvm.dbg.value(metadata i8* %20, metadata !2122, metadata !DIExpression()) #28, !dbg !2123
  %21 = load i32, i32* %11, align 8, !dbg !2143, !tbaa !1275
  %22 = load i8*, i8** %14, align 8, !dbg !2144, !tbaa !1349
  %23 = load i8*, i8** %16, align 8, !dbg !2145, !tbaa !1352
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #28, !dbg !2146
  store i32 %7, i32* %6, align 4, !dbg !2147, !tbaa !811
  ret i8* %20, !dbg !2148
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2110, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i64 %1, metadata !2115, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i64* %2, metadata !2116, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2117, metadata !DIExpression()), !dbg !2149
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2150
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2118, metadata !DIExpression()), !dbg !2149
  %7 = tail call i32* @__errno_location() #32, !dbg !2151
  %8 = load i32, i32* %7, align 4, !dbg !2151, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %8, metadata !2119, metadata !DIExpression()), !dbg !2149
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2152
  %10 = load i32, i32* %9, align 4, !dbg !2152, !tbaa !1327
  %11 = icmp eq i64* %2, null, !dbg !2153
  %12 = zext i1 %11 to i32, !dbg !2153
  %13 = or i32 %10, %12, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %13, metadata !2120, metadata !DIExpression()), !dbg !2149
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2155
  %15 = load i32, i32* %14, align 8, !dbg !2155, !tbaa !1275
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2156
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2157
  %18 = load i8*, i8** %17, align 8, !dbg !2157, !tbaa !1349
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2158
  %20 = load i8*, i8** %19, align 8, !dbg !2158, !tbaa !1352
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2159
  %22 = add i64 %21, 1, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %22, metadata !2121, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i64 %22, metadata !2135, metadata !DIExpression()) #28, !dbg !2161
  %23 = tail call noalias i8* @xmalloc(i64 %22) #28, !dbg !2163
  call void @llvm.dbg.value(metadata i8* %23, metadata !2122, metadata !DIExpression()), !dbg !2149
  %24 = load i32, i32* %14, align 8, !dbg !2164, !tbaa !1275
  %25 = load i8*, i8** %17, align 8, !dbg !2165, !tbaa !1349
  %26 = load i8*, i8** %19, align 8, !dbg !2166, !tbaa !1352
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2167
  store i32 %8, i32* %7, align 4, !dbg !2168, !tbaa !811
  br i1 %11, label %29, label %28, !dbg !2169

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2170, !tbaa !2172
  br label %29, !dbg !2173

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2174
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2175 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2179, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2177, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 1, metadata !2178, metadata !DIExpression()), !dbg !2180
  %2 = load i32, i32* @nslots, align 4, !dbg !2181, !tbaa !811
  %3 = icmp sgt i32 %2, 1, !dbg !2184
  br i1 %3, label %4, label %12, !dbg !2185

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2184
  br label %6, !dbg !2185

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2178, metadata !DIExpression()), !dbg !2180
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2186
  %9 = load i8*, i8** %8, align 8, !dbg !2186, !tbaa !2187
  tail call void @free(i8* %9) #28, !dbg !2189
  %10 = add nuw nsw i64 %7, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %10, metadata !2178, metadata !DIExpression()), !dbg !2180
  %11 = icmp eq i64 %10, %5, !dbg !2184
  br i1 %11, label %12, label %6, !dbg !2185, !llvm.loop !2191

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2193
  %14 = load i8*, i8** %13, align 8, !dbg !2193, !tbaa !2187
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2195
  br i1 %15, label %17, label %16, !dbg !2196

16:                                               ; preds = %12
  tail call void @free(i8* %14) #28, !dbg !2197
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2199, !tbaa !2200
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2201, !tbaa !2187
  br label %17, !dbg !2202

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2203
  br i1 %18, label %21, label %19, !dbg !2205

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2206
  tail call void @free(i8* %20) #28, !dbg !2208
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2209, !tbaa !636
  br label %21, !dbg !2210

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2211, !tbaa !811
  ret void, !dbg !2212
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2213 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8* %1, metadata !2216, metadata !DIExpression()), !dbg !2217
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2218
  ret i8* %3, !dbg !2219
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8* %1, metadata !2225, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 %2, metadata !2226, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2227, metadata !DIExpression()), !dbg !2239
  %5 = tail call i32* @__errno_location() #32, !dbg !2240
  %6 = load i32, i32* %5, align 4, !dbg !2240, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %6, metadata !2228, metadata !DIExpression()), !dbg !2239
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2241, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2229, metadata !DIExpression()), !dbg !2239
  %8 = icmp slt i32 %0, 0, !dbg !2242
  br i1 %8, label %9, label %10, !dbg !2244

9:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2245
  unreachable, !dbg !2245

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2246, !tbaa !811
  %12 = icmp sgt i32 %11, %0, !dbg !2247
  br i1 %12, label %34, label %13, !dbg !2248

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2249
  call void @llvm.dbg.value(metadata i1 %14, metadata !2230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2250
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2233, metadata !DIExpression()), !dbg !2250
  %15 = icmp eq i32 %0, 2147483647, !dbg !2251
  br i1 %15, label %16, label %17, !dbg !2253

16:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !2254
  unreachable, !dbg !2254

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2255
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2255
  %20 = add nuw nsw i32 %0, 1, !dbg !2256
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2257
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #28, !dbg !2258
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2258
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2229, metadata !DIExpression()), !dbg !2239
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2259, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2260

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2261, !tbaa.struct !2263
  br label %26, !dbg !2264

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2265, !tbaa !811
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2266
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2267
  %31 = sub nsw i32 %20, %27, !dbg !2268
  %32 = sext i32 %31 to i64, !dbg !2269
  %33 = shl nsw i64 %32, 4, !dbg !2270
  call void @llvm.dbg.value(metadata i8* %30, metadata !1663, metadata !DIExpression()) #28, !dbg !2271
  call void @llvm.dbg.value(metadata i32 0, metadata !1668, metadata !DIExpression()) #28, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %33, metadata !1669, metadata !DIExpression()) #28, !dbg !2271
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #28, !dbg !2273
  store i32 %20, i32* @nslots, align 4, !dbg !2274, !tbaa !811
  br label %34, !dbg !2275

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2239
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2229, metadata !DIExpression()), !dbg !2239
  %36 = zext i32 %0 to i64, !dbg !2276
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2277
  %38 = load i64, i64* %37, align 8, !dbg !2277, !tbaa !2200
  call void @llvm.dbg.value(metadata i64 %38, metadata !2234, metadata !DIExpression()), !dbg !2278
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2279
  %40 = load i8*, i8** %39, align 8, !dbg !2279, !tbaa !2187
  call void @llvm.dbg.value(metadata i8* %40, metadata !2236, metadata !DIExpression()), !dbg !2278
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2280
  %42 = load i32, i32* %41, align 4, !dbg !2280, !tbaa !1327
  %43 = or i32 %42, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i32 %43, metadata !2237, metadata !DIExpression()), !dbg !2278
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2282
  %45 = load i32, i32* %44, align 8, !dbg !2282, !tbaa !1275
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2283
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2284
  %48 = load i8*, i8** %47, align 8, !dbg !2284, !tbaa !1349
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2285
  %50 = load i8*, i8** %49, align 8, !dbg !2285, !tbaa !1352
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %51, metadata !2238, metadata !DIExpression()), !dbg !2278
  %52 = icmp ugt i64 %38, %51, !dbg !2287
  br i1 %52, label %63, label %53, !dbg !2289

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %54, metadata !2234, metadata !DIExpression()), !dbg !2278
  store i64 %54, i64* %37, align 8, !dbg !2292, !tbaa !2200
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2293
  br i1 %55, label %57, label %56, !dbg !2295

56:                                               ; preds = %53
  tail call void @free(i8* %40) #28, !dbg !2296
  br label %57, !dbg !2296

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2135, metadata !DIExpression()) #28, !dbg !2297
  %58 = tail call noalias i8* @xmalloc(i64 %54) #28, !dbg !2299
  call void @llvm.dbg.value(metadata i8* %58, metadata !2236, metadata !DIExpression()), !dbg !2278
  store i8* %58, i8** %39, align 8, !dbg !2300, !tbaa !2187
  %59 = load i32, i32* %44, align 8, !dbg !2301, !tbaa !1275
  %60 = load i8*, i8** %47, align 8, !dbg !2302, !tbaa !1349
  %61 = load i8*, i8** %49, align 8, !dbg !2303, !tbaa !1352
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2304
  br label %63, !dbg !2305

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2278
  call void @llvm.dbg.value(metadata i8* %64, metadata !2236, metadata !DIExpression()), !dbg !2278
  store i32 %6, i32* %5, align 4, !dbg !2306, !tbaa !811
  ret i8* %64, !dbg !2307
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2308 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* %1, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i64 %2, metadata !2314, metadata !DIExpression()), !dbg !2315
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2316
  ret i8* %4, !dbg !2317
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2318 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2320, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 0, metadata !2215, metadata !DIExpression()) #28, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %0, metadata !2216, metadata !DIExpression()) #28, !dbg !2322
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2324
  ret i8* %2, !dbg !2325
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2326 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %1, metadata !2331, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 0, metadata !2312, metadata !DIExpression()) #28, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %0, metadata !2313, metadata !DIExpression()) #28, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %1, metadata !2314, metadata !DIExpression()) #28, !dbg !2333
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2335
  ret i8* %3, !dbg !2336
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2337 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %1, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %2, metadata !2343, metadata !DIExpression()), !dbg !2345
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2346
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2344, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2348), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %1, metadata !2352, metadata !DIExpression()) #28, !dbg !2358
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2357, metadata !DIExpression()) #28, !dbg !2360
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2360, !alias.scope !2348
  %6 = icmp eq i32 %1, 10, !dbg !2361
  br i1 %6, label %7, label %8, !dbg !2363

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2364, !noalias !2348
  unreachable, !dbg !2364

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2365
  store i32 %1, i32* %9, align 8, !dbg !2366, !tbaa !1275, !alias.scope !2348
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2368
  ret i8* %10, !dbg !2369
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2370 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2374, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 %1, metadata !2375, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %2, metadata !2376, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %3, metadata !2377, metadata !DIExpression()), !dbg !2379
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2380
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2378, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %1, metadata !2352, metadata !DIExpression()) #28, !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2357, metadata !DIExpression()) #28, !dbg !2388
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #28, !dbg !2388, !alias.scope !2382
  %7 = icmp eq i32 %1, 10, !dbg !2389
  br i1 %7, label %8, label %9, !dbg !2390

8:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2391, !noalias !2382
  unreachable, !dbg !2391

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2392
  store i32 %1, i32* %10, align 8, !dbg !2393, !tbaa !1275, !alias.scope !2382
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2394
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2395
  ret i8* %11, !dbg !2396
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2397 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %1, metadata !2402, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 0, metadata !2341, metadata !DIExpression()) #28, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %0, metadata !2342, metadata !DIExpression()) #28, !dbg !2404
  call void @llvm.dbg.value(metadata i8* %1, metadata !2343, metadata !DIExpression()) #28, !dbg !2404
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2406
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2406
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2344, metadata !DIExpression()) #28, !dbg !2407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408) #28, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()) #28, !dbg !2412
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2357, metadata !DIExpression()) #28, !dbg !2414
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28, !dbg !2414, !alias.scope !2408
  %5 = icmp eq i32 %0, 10, !dbg !2415
  br i1 %5, label %6, label %7, !dbg !2416

6:                                                ; preds = %2
  tail call void @abort() #30, !dbg !2417, !noalias !2408
  unreachable, !dbg !2417

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2418
  store i32 %0, i32* %8, align 8, !dbg !2419, !tbaa !1275, !alias.scope !2408
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !2420
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2421
  ret i8* %9, !dbg !2422
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2423 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2427, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %2, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 0, metadata !2374, metadata !DIExpression()) #28, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %0, metadata !2375, metadata !DIExpression()) #28, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %1, metadata !2376, metadata !DIExpression()) #28, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %2, metadata !2377, metadata !DIExpression()) #28, !dbg !2431
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2433
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2378, metadata !DIExpression()) #28, !dbg !2434
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435) #28, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()) #28, !dbg !2439
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2357, metadata !DIExpression()) #28, !dbg !2441
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2441, !alias.scope !2435
  %6 = icmp eq i32 %0, 10, !dbg !2442
  br i1 %6, label %7, label %8, !dbg !2443

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2444, !noalias !2435
  unreachable, !dbg !2444

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2445
  store i32 %0, i32* %9, align 8, !dbg !2446, !tbaa !1275, !alias.scope !2435
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #28, !dbg !2447
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2448
  ret i8* %10, !dbg !2449
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2450 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2454, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %1, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 %2, metadata !2456, metadata !DIExpression()), !dbg !2458
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2459
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2459
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2457, metadata !DIExpression()), !dbg !2460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2461, !tbaa.struct !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1293, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %2, metadata !1294, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 1, metadata !1295, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 %2, metadata !1296, metadata !DIExpression()), !dbg !2463
  %6 = lshr i8 %2, 5, !dbg !2465
  %7 = zext i8 %6 to i64, !dbg !2465
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2466
  call void @llvm.dbg.value(metadata i32* %8, metadata !1298, metadata !DIExpression()), !dbg !2463
  %9 = and i8 %2, 31, !dbg !2467
  %10 = zext i8 %9 to i32, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %10, metadata !1300, metadata !DIExpression()), !dbg !2463
  %11 = load i32, i32* %8, align 4, !dbg !2468, !tbaa !811
  %12 = lshr i32 %11, %10, !dbg !2469
  %13 = and i32 %12, 1, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %13, metadata !1301, metadata !DIExpression()), !dbg !2463
  %14 = xor i32 %13, 1, !dbg !2471
  %15 = shl i32 %14, %10, !dbg !2472
  %16 = xor i32 %15, %11, !dbg !2473
  store i32 %16, i32* %8, align 4, !dbg !2473, !tbaa !811
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2475
  ret i8* %17, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2477 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 %1, metadata !2482, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %0, metadata !2454, metadata !DIExpression()) #28, !dbg !2484
  call void @llvm.dbg.value(metadata i64 -1, metadata !2455, metadata !DIExpression()) #28, !dbg !2484
  call void @llvm.dbg.value(metadata i8 %1, metadata !2456, metadata !DIExpression()) #28, !dbg !2484
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2486
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2486
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2457, metadata !DIExpression()) #28, !dbg !2487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !2488, !tbaa.struct !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1293, metadata !DIExpression()) #28, !dbg !2489
  call void @llvm.dbg.value(metadata i8 %1, metadata !1294, metadata !DIExpression()) #28, !dbg !2489
  call void @llvm.dbg.value(metadata i32 1, metadata !1295, metadata !DIExpression()) #28, !dbg !2489
  call void @llvm.dbg.value(metadata i8 %1, metadata !1296, metadata !DIExpression()) #28, !dbg !2489
  %5 = lshr i8 %1, 5, !dbg !2491
  %6 = zext i8 %5 to i64, !dbg !2491
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2492
  call void @llvm.dbg.value(metadata i32* %7, metadata !1298, metadata !DIExpression()) #28, !dbg !2489
  %8 = and i8 %1, 31, !dbg !2493
  %9 = zext i8 %8 to i32, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %9, metadata !1300, metadata !DIExpression()) #28, !dbg !2489
  %10 = load i32, i32* %7, align 4, !dbg !2494, !tbaa !811
  %11 = lshr i32 %10, %9, !dbg !2495
  %12 = and i32 %11, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %12, metadata !1301, metadata !DIExpression()) #28, !dbg !2489
  %13 = xor i32 %12, 1, !dbg !2497
  %14 = shl i32 %13, %9, !dbg !2498
  %15 = xor i32 %14, %10, !dbg !2499
  store i32 %15, i32* %7, align 4, !dbg !2499, !tbaa !811
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2501
  ret i8* %16, !dbg !2502
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2503 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8* %0, metadata !2481, metadata !DIExpression()) #28, !dbg !2507
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()) #28, !dbg !2507
  call void @llvm.dbg.value(metadata i8* %0, metadata !2454, metadata !DIExpression()) #28, !dbg !2509
  call void @llvm.dbg.value(metadata i64 -1, metadata !2455, metadata !DIExpression()) #28, !dbg !2509
  call void @llvm.dbg.value(metadata i8 58, metadata !2456, metadata !DIExpression()) #28, !dbg !2509
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #28, !dbg !2511
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2457, metadata !DIExpression()) #28, !dbg !2512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !2513, !tbaa.struct !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1293, metadata !DIExpression()) #28, !dbg !2514
  call void @llvm.dbg.value(metadata i8 58, metadata !1294, metadata !DIExpression()) #28, !dbg !2514
  call void @llvm.dbg.value(metadata i32 1, metadata !1295, metadata !DIExpression()) #28, !dbg !2514
  call void @llvm.dbg.value(metadata i8 58, metadata !1296, metadata !DIExpression()) #28, !dbg !2514
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2516
  call void @llvm.dbg.value(metadata i32* %4, metadata !1298, metadata !DIExpression()) #28, !dbg !2514
  call void @llvm.dbg.value(metadata i32 26, metadata !1300, metadata !DIExpression()) #28, !dbg !2514
  %5 = load i32, i32* %4, align 4, !dbg !2517, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %5, metadata !1301, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !2514
  %6 = or i32 %5, 67108864, !dbg !2518
  store i32 %6, i32* %4, align 4, !dbg !2518, !tbaa !811
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #28, !dbg !2519
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #28, !dbg !2520
  ret i8* %7, !dbg !2521
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2522 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %1, metadata !2525, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %0, metadata !2454, metadata !DIExpression()) #28, !dbg !2527
  call void @llvm.dbg.value(metadata i64 %1, metadata !2455, metadata !DIExpression()) #28, !dbg !2527
  call void @llvm.dbg.value(metadata i8 58, metadata !2456, metadata !DIExpression()) #28, !dbg !2527
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2529
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2529
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2457, metadata !DIExpression()) #28, !dbg !2530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !2531, !tbaa.struct !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1293, metadata !DIExpression()) #28, !dbg !2532
  call void @llvm.dbg.value(metadata i8 58, metadata !1294, metadata !DIExpression()) #28, !dbg !2532
  call void @llvm.dbg.value(metadata i32 1, metadata !1295, metadata !DIExpression()) #28, !dbg !2532
  call void @llvm.dbg.value(metadata i8 58, metadata !1296, metadata !DIExpression()) #28, !dbg !2532
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2534
  call void @llvm.dbg.value(metadata i32* %5, metadata !1298, metadata !DIExpression()) #28, !dbg !2532
  call void @llvm.dbg.value(metadata i32 26, metadata !1300, metadata !DIExpression()) #28, !dbg !2532
  %6 = load i32, i32* %5, align 4, !dbg !2535, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %6, metadata !1301, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !2532
  %7 = or i32 %6, 67108864, !dbg !2536
  store i32 %7, i32* %5, align 4, !dbg !2536, !tbaa !811
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #28, !dbg !2537
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2538
  ret i8* %8, !dbg !2539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2540 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2357, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %0, metadata !2542, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %1, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8* %2, metadata !2544, metadata !DIExpression()), !dbg !2548
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2549
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2549
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2545, metadata !DIExpression()), !dbg !2550
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2551
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %1, metadata !2352, metadata !DIExpression()) #28, !dbg !2555
  call void @llvm.dbg.value(metadata i32 0, metadata !2357, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2555
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2546, !alias.scope !2552
  %8 = icmp eq i32 %1, 10, !dbg !2556
  br i1 %8, label %9, label %10, !dbg !2557

9:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2558, !noalias !2552
  unreachable, !dbg !2558

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2357, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2555
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2551
  store i32 %1, i32* %11, align 8, !dbg !2551, !tbaa.struct !2462
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2551
  %13 = bitcast i32* %12 to i8*, !dbg !2551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2551, !tbaa.struct !2559
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1293, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 58, metadata !1294, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 1, metadata !1295, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 58, metadata !1296, metadata !DIExpression()), !dbg !2560
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2562
  call void @llvm.dbg.value(metadata i32* %14, metadata !1298, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 26, metadata !1300, metadata !DIExpression()), !dbg !2560
  %15 = load i32, i32* %14, align 4, !dbg !2563, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %15, metadata !1301, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2560
  %16 = or i32 %15, 67108864, !dbg !2564
  store i32 %16, i32* %14, align 4, !dbg !2564, !tbaa !811
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2565
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2566
  ret i8* %17, !dbg !2567
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2568 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %1, metadata !2573, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %2, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %3, metadata !2575, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()) #28, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()) #28, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %2, metadata !2583, metadata !DIExpression()) #28, !dbg !2587
  call void @llvm.dbg.value(metadata i8* %3, metadata !2584, metadata !DIExpression()) #28, !dbg !2587
  call void @llvm.dbg.value(metadata i64 -1, metadata !2585, metadata !DIExpression()) #28, !dbg !2587
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2589
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2589
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2586, metadata !DIExpression()) #28, !dbg !2590
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !2591, !tbaa.struct !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1334, metadata !DIExpression()) #28, !dbg !2592
  call void @llvm.dbg.value(metadata i8* %1, metadata !1335, metadata !DIExpression()) #28, !dbg !2592
  call void @llvm.dbg.value(metadata i8* %2, metadata !1336, metadata !DIExpression()) #28, !dbg !2592
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1334, metadata !DIExpression()) #28, !dbg !2592
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2594
  store i32 10, i32* %7, align 8, !dbg !2595, !tbaa !1275
  %8 = icmp ne i8* %1, null, !dbg !2596
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2597
  br i1 %10, label %12, label %11, !dbg !2597

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !2598
  unreachable, !dbg !2598

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2599
  store i8* %1, i8** %13, align 8, !dbg !2600, !tbaa !1349
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2601
  store i8* %2, i8** %14, align 8, !dbg !2602, !tbaa !1352
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #28, !dbg !2603
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2604
  ret i8* %15, !dbg !2605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2578 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8* %2, metadata !2583, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8* %3, metadata !2584, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %4, metadata !2585, metadata !DIExpression()), !dbg !2606
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2607
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #28, !dbg !2607
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2586, metadata !DIExpression()), !dbg !2608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2609, !tbaa.struct !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1334, metadata !DIExpression()) #28, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %1, metadata !1335, metadata !DIExpression()) #28, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %2, metadata !1336, metadata !DIExpression()) #28, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1334, metadata !DIExpression()) #28, !dbg !2610
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2612
  store i32 10, i32* %8, align 8, !dbg !2613, !tbaa !1275
  %9 = icmp ne i8* %1, null, !dbg !2614
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2615
  br i1 %11, label %13, label %12, !dbg !2615

12:                                               ; preds = %5
  tail call void @abort() #30, !dbg !2616
  unreachable, !dbg !2616

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2617
  store i8* %1, i8** %14, align 8, !dbg !2618, !tbaa !1349
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2619
  store i8* %2, i8** %15, align 8, !dbg !2620, !tbaa !1352
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #28, !dbg !2622
  ret i8* %16, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2624 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %2, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()) #28, !dbg !2632
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()) #28, !dbg !2632
  call void @llvm.dbg.value(metadata i8* %1, metadata !2574, metadata !DIExpression()) #28, !dbg !2632
  call void @llvm.dbg.value(metadata i8* %2, metadata !2575, metadata !DIExpression()) #28, !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2577, metadata !DIExpression()) #28, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()) #28, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %1, metadata !2583, metadata !DIExpression()) #28, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %2, metadata !2584, metadata !DIExpression()) #28, !dbg !2634
  call void @llvm.dbg.value(metadata i64 -1, metadata !2585, metadata !DIExpression()) #28, !dbg !2634
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2636
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2636
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2586, metadata !DIExpression()) #28, !dbg !2637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !2638, !tbaa.struct !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1334, metadata !DIExpression()) #28, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %0, metadata !1335, metadata !DIExpression()) #28, !dbg !2639
  call void @llvm.dbg.value(metadata i8* %1, metadata !1336, metadata !DIExpression()) #28, !dbg !2639
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1334, metadata !DIExpression()) #28, !dbg !2639
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2641
  store i32 10, i32* %6, align 8, !dbg !2642, !tbaa !1275
  %7 = icmp ne i8* %0, null, !dbg !2643
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2644
  br i1 %9, label %11, label %10, !dbg !2644

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !2645
  unreachable, !dbg !2645

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2646
  store i8* %0, i8** %12, align 8, !dbg !2647, !tbaa !1349
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2648
  store i8* %1, i8** %13, align 8, !dbg !2649, !tbaa !1352
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #28, !dbg !2650
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2651
  ret i8* %14, !dbg !2652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2653 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2657, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %1, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %2, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %3, metadata !2660, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 0, metadata !2577, metadata !DIExpression()) #28, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()) #28, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %1, metadata !2583, metadata !DIExpression()) #28, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %2, metadata !2584, metadata !DIExpression()) #28, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %3, metadata !2585, metadata !DIExpression()) #28, !dbg !2662
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2664
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2586, metadata !DIExpression()) #28, !dbg !2665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !2666, !tbaa.struct !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1334, metadata !DIExpression()) #28, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %0, metadata !1335, metadata !DIExpression()) #28, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %1, metadata !1336, metadata !DIExpression()) #28, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1334, metadata !DIExpression()) #28, !dbg !2667
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2669
  store i32 10, i32* %7, align 8, !dbg !2670, !tbaa !1275
  %8 = icmp ne i8* %0, null, !dbg !2671
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2672
  br i1 %10, label %12, label %11, !dbg !2672

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !2673
  unreachable, !dbg !2673

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2674
  store i8* %0, i8** %13, align 8, !dbg !2675, !tbaa !1349
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2676
  store i8* %1, i8** %14, align 8, !dbg !2677, !tbaa !1352
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #28, !dbg !2678
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2679
  ret i8* %15, !dbg !2680
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2685, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8* %1, metadata !2686, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %2, metadata !2687, metadata !DIExpression()), !dbg !2688
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2689
  ret i8* %4, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2691 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %1, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2685, metadata !DIExpression()) #28, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %0, metadata !2686, metadata !DIExpression()) #28, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %1, metadata !2687, metadata !DIExpression()) #28, !dbg !2698
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !2700
  ret i8* %3, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2702 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2706, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8* %1, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 %0, metadata !2685, metadata !DIExpression()) #28, !dbg !2709
  call void @llvm.dbg.value(metadata i8* %1, metadata !2686, metadata !DIExpression()) #28, !dbg !2709
  call void @llvm.dbg.value(metadata i64 -1, metadata !2687, metadata !DIExpression()) #28, !dbg !2709
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !2711
  ret i8* %3, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2713 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2706, metadata !DIExpression()) #28, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %0, metadata !2707, metadata !DIExpression()) #28, !dbg !2719
  call void @llvm.dbg.value(metadata i32 0, metadata !2685, metadata !DIExpression()) #28, !dbg !2721
  call void @llvm.dbg.value(metadata i8* %0, metadata !2686, metadata !DIExpression()) #28, !dbg !2721
  call void @llvm.dbg.value(metadata i64 -1, metadata !2687, metadata !DIExpression()) #28, !dbg !2721
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !2723
  ret i8* %2, !dbg !2724
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2725 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2764, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8* %1, metadata !2765, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8* %2, metadata !2766, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8* %3, metadata !2767, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8** %4, metadata !2768, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64 %5, metadata !2769, metadata !DIExpression()), !dbg !2770
  %7 = icmp eq i8* %1, null, !dbg !2771
  br i1 %7, label %10, label %8, !dbg !2773

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #28, !dbg !2774
  br label %12, !dbg !2774

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.91, i64 0, i64 0), i8* %2, i8* %3) #28, !dbg !2775
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.92, i64 0, i64 0), i32 5) #28, !dbg !2776
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #28, !dbg !2776
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2777
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.94, i64 0, i64 0), i32 5) #28, !dbg !2778
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.95, i64 0, i64 0)) #28, !dbg !2778
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2779
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
  ], !dbg !2780

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.96, i64 0, i64 0), i32 5) #28, !dbg !2781
  %21 = load i8*, i8** %4, align 8, !dbg !2781, !tbaa !636
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #28, !dbg !2781
  br label %147, !dbg !2783

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.97, i64 0, i64 0), i32 5) #28, !dbg !2784
  %25 = load i8*, i8** %4, align 8, !dbg !2784, !tbaa !636
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2784
  %27 = load i8*, i8** %26, align 8, !dbg !2784, !tbaa !636
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #28, !dbg !2784
  br label %147, !dbg !2785

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.98, i64 0, i64 0), i32 5) #28, !dbg !2786
  %31 = load i8*, i8** %4, align 8, !dbg !2786, !tbaa !636
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2786
  %33 = load i8*, i8** %32, align 8, !dbg !2786, !tbaa !636
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2786
  %35 = load i8*, i8** %34, align 8, !dbg !2786, !tbaa !636
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #28, !dbg !2786
  br label %147, !dbg !2787

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.99, i64 0, i64 0), i32 5) #28, !dbg !2788
  %39 = load i8*, i8** %4, align 8, !dbg !2788, !tbaa !636
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2788
  %41 = load i8*, i8** %40, align 8, !dbg !2788, !tbaa !636
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2788
  %43 = load i8*, i8** %42, align 8, !dbg !2788, !tbaa !636
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2788
  %45 = load i8*, i8** %44, align 8, !dbg !2788, !tbaa !636
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #28, !dbg !2788
  br label %147, !dbg !2789

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.100, i64 0, i64 0), i32 5) #28, !dbg !2790
  %49 = load i8*, i8** %4, align 8, !dbg !2790, !tbaa !636
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2790
  %51 = load i8*, i8** %50, align 8, !dbg !2790, !tbaa !636
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2790
  %53 = load i8*, i8** %52, align 8, !dbg !2790, !tbaa !636
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2790
  %55 = load i8*, i8** %54, align 8, !dbg !2790, !tbaa !636
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2790
  %57 = load i8*, i8** %56, align 8, !dbg !2790, !tbaa !636
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #28, !dbg !2790
  br label %147, !dbg !2791

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.101, i64 0, i64 0), i32 5) #28, !dbg !2792
  %61 = load i8*, i8** %4, align 8, !dbg !2792, !tbaa !636
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2792
  %63 = load i8*, i8** %62, align 8, !dbg !2792, !tbaa !636
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2792
  %65 = load i8*, i8** %64, align 8, !dbg !2792, !tbaa !636
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2792
  %67 = load i8*, i8** %66, align 8, !dbg !2792, !tbaa !636
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2792
  %69 = load i8*, i8** %68, align 8, !dbg !2792, !tbaa !636
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2792
  %71 = load i8*, i8** %70, align 8, !dbg !2792, !tbaa !636
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #28, !dbg !2792
  br label %147, !dbg !2793

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.102, i64 0, i64 0), i32 5) #28, !dbg !2794
  %75 = load i8*, i8** %4, align 8, !dbg !2794, !tbaa !636
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2794
  %77 = load i8*, i8** %76, align 8, !dbg !2794, !tbaa !636
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2794
  %79 = load i8*, i8** %78, align 8, !dbg !2794, !tbaa !636
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2794
  %81 = load i8*, i8** %80, align 8, !dbg !2794, !tbaa !636
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2794
  %83 = load i8*, i8** %82, align 8, !dbg !2794, !tbaa !636
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2794
  %85 = load i8*, i8** %84, align 8, !dbg !2794, !tbaa !636
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2794
  %87 = load i8*, i8** %86, align 8, !dbg !2794, !tbaa !636
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #28, !dbg !2794
  br label %147, !dbg !2795

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.103, i64 0, i64 0), i32 5) #28, !dbg !2796
  %91 = load i8*, i8** %4, align 8, !dbg !2796, !tbaa !636
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2796
  %93 = load i8*, i8** %92, align 8, !dbg !2796, !tbaa !636
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2796
  %95 = load i8*, i8** %94, align 8, !dbg !2796, !tbaa !636
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2796
  %97 = load i8*, i8** %96, align 8, !dbg !2796, !tbaa !636
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2796
  %99 = load i8*, i8** %98, align 8, !dbg !2796, !tbaa !636
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2796
  %101 = load i8*, i8** %100, align 8, !dbg !2796, !tbaa !636
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2796
  %103 = load i8*, i8** %102, align 8, !dbg !2796, !tbaa !636
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2796
  %105 = load i8*, i8** %104, align 8, !dbg !2796, !tbaa !636
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #28, !dbg !2796
  br label %147, !dbg !2797

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.104, i64 0, i64 0), i32 5) #28, !dbg !2798
  %109 = load i8*, i8** %4, align 8, !dbg !2798, !tbaa !636
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2798
  %111 = load i8*, i8** %110, align 8, !dbg !2798, !tbaa !636
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2798
  %113 = load i8*, i8** %112, align 8, !dbg !2798, !tbaa !636
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2798
  %115 = load i8*, i8** %114, align 8, !dbg !2798, !tbaa !636
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2798
  %117 = load i8*, i8** %116, align 8, !dbg !2798, !tbaa !636
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2798
  %119 = load i8*, i8** %118, align 8, !dbg !2798, !tbaa !636
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2798
  %121 = load i8*, i8** %120, align 8, !dbg !2798, !tbaa !636
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2798
  %123 = load i8*, i8** %122, align 8, !dbg !2798, !tbaa !636
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2798
  %125 = load i8*, i8** %124, align 8, !dbg !2798, !tbaa !636
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #28, !dbg !2798
  br label %147, !dbg !2799

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.105, i64 0, i64 0), i32 5) #28, !dbg !2800
  %129 = load i8*, i8** %4, align 8, !dbg !2800, !tbaa !636
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2800
  %131 = load i8*, i8** %130, align 8, !dbg !2800, !tbaa !636
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2800
  %133 = load i8*, i8** %132, align 8, !dbg !2800, !tbaa !636
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2800
  %135 = load i8*, i8** %134, align 8, !dbg !2800, !tbaa !636
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2800
  %137 = load i8*, i8** %136, align 8, !dbg !2800, !tbaa !636
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2800
  %139 = load i8*, i8** %138, align 8, !dbg !2800, !tbaa !636
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2800
  %141 = load i8*, i8** %140, align 8, !dbg !2800, !tbaa !636
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2800
  %143 = load i8*, i8** %142, align 8, !dbg !2800, !tbaa !636
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2800
  %145 = load i8*, i8** %144, align 8, !dbg !2800, !tbaa !636
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #28, !dbg !2800
  br label %147, !dbg !2801

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2803 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2807, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %1, metadata !2808, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %2, metadata !2809, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %3, metadata !2810, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8** %4, metadata !2811, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 0, metadata !2812, metadata !DIExpression()), !dbg !2813
  br label %6, !dbg !2814

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2816
  call void @llvm.dbg.value(metadata i64 %7, metadata !2812, metadata !DIExpression()), !dbg !2813
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2817
  %9 = load i8*, i8** %8, align 8, !dbg !2817, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !2819
  %11 = add i64 %7, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %11, metadata !2812, metadata !DIExpression()), !dbg !2813
  br i1 %10, label %12, label %6, !dbg !2819, !llvm.loop !2821

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2823
  ret void, !dbg !2824
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2825 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2836, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %2, metadata !2838, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %3, metadata !2839, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2840, metadata !DIExpression()), !dbg !2844
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #28, !dbg !2845
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2842, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 0, metadata !2841, metadata !DIExpression()), !dbg !2844
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2841, metadata !DIExpression()), !dbg !2844
  %11 = load i32, i32* %8, align 8, !dbg !2847
  %12 = icmp ult i32 %11, 41, !dbg !2847
  br i1 %12, label %13, label %18, !dbg !2847

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2847
  %15 = zext i32 %11 to i64, !dbg !2847
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2847
  %17 = add nuw nsw i32 %11, 8, !dbg !2847
  store i32 %17, i32* %8, align 8, !dbg !2847
  br label %21, !dbg !2847

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2847
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2847
  store i8* %20, i8** %9, align 8, !dbg !2847
  br label %21, !dbg !2847

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2847
  %25 = load i8*, i8** %24, align 8, !dbg !2847
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2850
  store i8* %25, i8** %26, align 16, !dbg !2851, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !2852
  br i1 %27, label %30, label %28, !dbg !2853

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 1, metadata !2841, metadata !DIExpression()), !dbg !2844
  %29 = icmp ult i32 %22, 41, !dbg !2847
  br i1 %29, label %35, label %32, !dbg !2847

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2854
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2855
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #28, !dbg !2856
  ret void, !dbg !2856

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2847
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2847
  store i8* %34, i8** %9, align 8, !dbg !2847
  br label %40, !dbg !2847

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2847
  %37 = zext i32 %22 to i64, !dbg !2847
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2847
  %39 = add nuw nsw i32 %22, 8, !dbg !2847
  store i32 %39, i32* %8, align 8, !dbg !2847
  br label %40, !dbg !2847

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2847
  %44 = load i8*, i8** %43, align 8, !dbg !2847
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2850
  store i8* %44, i8** %45, align 8, !dbg !2851, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !2852
  br i1 %46, label %30, label %47, !dbg !2853

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 2, metadata !2841, metadata !DIExpression()), !dbg !2844
  %48 = icmp ult i32 %41, 41, !dbg !2847
  br i1 %48, label %52, label %49, !dbg !2847

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2847
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2847
  store i8* %51, i8** %9, align 8, !dbg !2847
  br label %57, !dbg !2847

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2847
  %54 = zext i32 %41 to i64, !dbg !2847
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2847
  %56 = add nuw nsw i32 %41, 8, !dbg !2847
  store i32 %56, i32* %8, align 8, !dbg !2847
  br label %57, !dbg !2847

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2847
  %61 = load i8*, i8** %60, align 8, !dbg !2847
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2850
  store i8* %61, i8** %62, align 16, !dbg !2851, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !2852
  br i1 %63, label %30, label %64, !dbg !2853

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 3, metadata !2841, metadata !DIExpression()), !dbg !2844
  %65 = icmp ult i32 %58, 41, !dbg !2847
  br i1 %65, label %69, label %66, !dbg !2847

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2847
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2847
  store i8* %68, i8** %9, align 8, !dbg !2847
  br label %74, !dbg !2847

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2847
  %71 = zext i32 %58 to i64, !dbg !2847
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2847
  %73 = add nuw nsw i32 %58, 8, !dbg !2847
  store i32 %73, i32* %8, align 8, !dbg !2847
  br label %74, !dbg !2847

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2847
  %78 = load i8*, i8** %77, align 8, !dbg !2847
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2850
  store i8* %78, i8** %79, align 8, !dbg !2851, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !2852
  br i1 %80, label %30, label %81, !dbg !2853

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 4, metadata !2841, metadata !DIExpression()), !dbg !2844
  %82 = icmp ult i32 %75, 41, !dbg !2847
  br i1 %82, label %86, label %83, !dbg !2847

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2847
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2847
  store i8* %85, i8** %9, align 8, !dbg !2847
  br label %91, !dbg !2847

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2847
  %88 = zext i32 %75 to i64, !dbg !2847
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2847
  %90 = add nuw nsw i32 %75, 8, !dbg !2847
  store i32 %90, i32* %8, align 8, !dbg !2847
  br label %91, !dbg !2847

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2847
  %95 = load i8*, i8** %94, align 8, !dbg !2847
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2850
  store i8* %95, i8** %96, align 16, !dbg !2851, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !2852
  br i1 %97, label %30, label %98, !dbg !2853

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 5, metadata !2841, metadata !DIExpression()), !dbg !2844
  %99 = icmp ult i32 %92, 41, !dbg !2847
  br i1 %99, label %103, label %100, !dbg !2847

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2847
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2847
  store i8* %102, i8** %9, align 8, !dbg !2847
  br label %108, !dbg !2847

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2847
  %105 = zext i32 %92 to i64, !dbg !2847
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2847
  %107 = add nuw nsw i32 %92, 8, !dbg !2847
  store i32 %107, i32* %8, align 8, !dbg !2847
  br label %108, !dbg !2847

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2847
  %111 = load i8*, i8** %110, align 8, !dbg !2847
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2850
  store i8* %111, i8** %112, align 8, !dbg !2851, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !2852
  br i1 %113, label %30, label %114, !dbg !2853

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2841, metadata !DIExpression()), !dbg !2844
  %115 = load i8*, i8** %9, align 8, !dbg !2847
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2847
  store i8* %116, i8** %9, align 8, !dbg !2847
  %117 = bitcast i8* %115 to i8**, !dbg !2847
  %118 = load i8*, i8** %117, align 8, !dbg !2847
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2850
  store i8* %118, i8** %119, align 16, !dbg !2851, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !2852
  br i1 %120, label %30, label %121, !dbg !2853

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2841, metadata !DIExpression()), !dbg !2844
  %122 = load i8*, i8** %9, align 8, !dbg !2847
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2847
  store i8* %123, i8** %9, align 8, !dbg !2847
  %124 = bitcast i8* %122 to i8**, !dbg !2847
  %125 = load i8*, i8** %124, align 8, !dbg !2847
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2850
  store i8* %125, i8** %126, align 8, !dbg !2851, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !2852
  br i1 %127, label %30, label %128, !dbg !2853

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2841, metadata !DIExpression()), !dbg !2844
  %129 = load i8*, i8** %9, align 8, !dbg !2847
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2847
  store i8* %130, i8** %9, align 8, !dbg !2847
  %131 = bitcast i8* %129 to i8**, !dbg !2847
  %132 = load i8*, i8** %131, align 8, !dbg !2847
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2850
  store i8* %132, i8** %133, align 16, !dbg !2851, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !2852
  br i1 %134, label %30, label %135, !dbg !2853

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2841, metadata !DIExpression()), !dbg !2844
  %136 = load i8*, i8** %9, align 8, !dbg !2847
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2847
  store i8* %137, i8** %9, align 8, !dbg !2847
  %138 = bitcast i8* %136 to i8**, !dbg !2847
  %139 = load i8*, i8** %138, align 8, !dbg !2847
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2850
  store i8* %139, i8** %140, align 8, !dbg !2851, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !2852
  %142 = select i1 %141, i64 9, i64 10, !dbg !2853
  br label %30, !dbg !2853
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2857 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2861, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8* %1, metadata !2862, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8* %2, metadata !2863, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8* %3, metadata !2864, metadata !DIExpression()), !dbg !2870
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2871
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #28, !dbg !2871
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2865, metadata !DIExpression()), !dbg !2872
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2873
  call void @llvm.va_start(i8* nonnull %6), !dbg !2873
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2874
  call void @llvm.va_end(i8* nonnull %6), !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #28, !dbg !2876
  ret void, !dbg !2876
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2877 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2878, !tbaa !636
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.93, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2878
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.108, i64 0, i64 0), i32 5) #28, !dbg !2879
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.109, i64 0, i64 0)) #28, !dbg !2879
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.110, i64 0, i64 0), i32 5) #28, !dbg !2880
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.111, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.112, i64 0, i64 0)) #28, !dbg !2880
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.113, i64 0, i64 0), i32 5) #28, !dbg !2881
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.114, i64 0, i64 0)) #28, !dbg !2881
  ret void, !dbg !2882
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !2883 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %1, metadata !2888, metadata !DIExpression()), !dbg !2889
  %3 = udiv i64 9223372036854775807, %1, !dbg !2890
  %4 = icmp ult i64 %3, %0, !dbg !2890
  br i1 %4, label %5, label %6, !dbg !2892

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !2893
  unreachable, !dbg !2893

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %7, metadata !2895, metadata !DIExpression()) #28, !dbg !2901
  %8 = tail call noalias i8* @malloc(i64 %7) #28, !dbg !2903
  call void @llvm.dbg.value(metadata i8* %8, metadata !2900, metadata !DIExpression()) #28, !dbg !2901
  %9 = icmp eq i8* %8, null, !dbg !2904
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2906
  br i1 %11, label %12, label %13, !dbg !2906

12:                                               ; preds = %6
  tail call void @xalloc_die() #30, !dbg !2907
  unreachable, !dbg !2907

13:                                               ; preds = %6
  ret i8* %8, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2896 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2895, metadata !DIExpression()), !dbg !2909
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !2910
  call void @llvm.dbg.value(metadata i8* %2, metadata !2900, metadata !DIExpression()), !dbg !2909
  %3 = icmp eq i8* %2, null, !dbg !2911
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2912
  br i1 %5, label %6, label %7, !dbg !2912

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !2913
  unreachable, !dbg !2913

7:                                                ; preds = %1
  ret i8* %2, !dbg !2914
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !2915 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %1, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %2, metadata !2921, metadata !DIExpression()), !dbg !2922
  %4 = udiv i64 9223372036854775807, %2, !dbg !2923
  %5 = icmp ult i64 %4, %1, !dbg !2923
  br i1 %5, label %6, label %7, !dbg !2925

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !2926
  unreachable, !dbg !2926

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #28, !dbg !2934
  call void @llvm.dbg.value(metadata i64 %8, metadata !2933, metadata !DIExpression()) #28, !dbg !2934
  %9 = icmp eq i64 %8, 0, !dbg !2936
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2938
  br i1 %11, label %12, label %13, !dbg !2938

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #28, !dbg !2939
  br label %19, !dbg !2941

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #28, !dbg !2942
  call void @llvm.dbg.value(metadata i8* %14, metadata !2928, metadata !DIExpression()) #28, !dbg !2934
  %15 = icmp eq i8* %14, null, !dbg !2943
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2945
  br i1 %17, label %18, label %19, !dbg !2945

18:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !2946
  unreachable, !dbg !2946

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2934
  ret i8* %20, !dbg !2947
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2929 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !2948
  %3 = icmp eq i64 %1, 0, !dbg !2949
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2950
  br i1 %5, label %6, label %7, !dbg !2950

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #28, !dbg !2951
  br label %13, !dbg !2952

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #28, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %8, metadata !2928, metadata !DIExpression()), !dbg !2948
  %9 = icmp eq i8* %8, null, !dbg !2954
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2955
  br i1 %11, label %12, label %13, !dbg !2955

12:                                               ; preds = %7
  tail call void @xalloc_die() #30, !dbg !2956
  unreachable, !dbg !2956

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2948
  ret i8* %14, !dbg !2957
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !198 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !203, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64* %1, metadata !204, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %2, metadata !205, metadata !DIExpression()), !dbg !2958
  %4 = load i64, i64* %1, align 8, !dbg !2959, !tbaa !2172
  call void @llvm.dbg.value(metadata i64 %4, metadata !206, metadata !DIExpression()), !dbg !2958
  %5 = icmp eq i8* %0, null, !dbg !2960
  br i1 %5, label %6, label %20, !dbg !2962

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2963
  br i1 %7, label %8, label %13, !dbg !2966

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %9, metadata !206, metadata !DIExpression()), !dbg !2958
  %10 = icmp ugt i64 %2, 128, !dbg !2969
  %11 = zext i1 %10 to i64, !dbg !2969
  %12 = add nuw nsw i64 %9, %11, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %12, metadata !206, metadata !DIExpression()), !dbg !2958
  br label %13, !dbg !2971

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2958
  call void @llvm.dbg.value(metadata i64 %14, metadata !206, metadata !DIExpression()), !dbg !2958
  %15 = udiv i64 9223372036854775807, %2, !dbg !2972
  %16 = icmp ult i64 %15, %14, !dbg !2972
  br i1 %16, label %19, label %17, !dbg !2974

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !206, metadata !DIExpression()), !dbg !2958
  store i64 %14, i64* %1, align 8, !dbg !2975, !tbaa !2172
  %18 = mul i64 %14, %2, !dbg !2976
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #28, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %28, metadata !2933, metadata !DIExpression()) #28, !dbg !2977
  br label %31, !dbg !2979

19:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !2980
  unreachable, !dbg !2980

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2981
  %22 = icmp ugt i64 %21, %4, !dbg !2984
  br i1 %22, label %24, label %23, !dbg !2985

23:                                               ; preds = %20
  tail call void @xalloc_die() #30, !dbg !2986
  unreachable, !dbg !2986

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2987
  %26 = add nuw i64 %4, 1, !dbg !2988
  %27 = add i64 %26, %25, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %27, metadata !206, metadata !DIExpression()), !dbg !2958
  store i64 %27, i64* %1, align 8, !dbg !2975, !tbaa !2172
  %28 = mul i64 %27, %2, !dbg !2976
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #28, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %28, metadata !2933, metadata !DIExpression()) #28, !dbg !2977
  %29 = icmp eq i64 %28, 0, !dbg !2990
  br i1 %29, label %30, label %31, !dbg !2979

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #28, !dbg !2991
  br label %38, !dbg !2992

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #28, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %33, metadata !2928, metadata !DIExpression()) #28, !dbg !2977
  %34 = icmp eq i8* %33, null, !dbg !2994
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2995
  br i1 %36, label %37, label %38, !dbg !2995

37:                                               ; preds = %31
  tail call void @xalloc_die() #30, !dbg !2996
  unreachable, !dbg !2996

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2977
  ret i8* %39, !dbg !2997
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !2998 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3000, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %0, metadata !2895, metadata !DIExpression()) #28, !dbg !3002
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %2, metadata !2900, metadata !DIExpression()) #28, !dbg !3002
  %3 = icmp eq i8* %2, null, !dbg !3005
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3006
  br i1 %5, label %6, label %7, !dbg !3006

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3007
  unreachable, !dbg !3007

7:                                                ; preds = %1
  ret i8* %2, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3009 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64* %1, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8* %0, metadata !203, metadata !DIExpression()) #28, !dbg !3016
  call void @llvm.dbg.value(metadata i64* %1, metadata !204, metadata !DIExpression()) #28, !dbg !3016
  call void @llvm.dbg.value(metadata i64 1, metadata !205, metadata !DIExpression()) #28, !dbg !3016
  %3 = load i64, i64* %1, align 8, !dbg !3018, !tbaa !2172
  call void @llvm.dbg.value(metadata i64 %3, metadata !206, metadata !DIExpression()) #28, !dbg !3016
  %4 = icmp eq i8* %0, null, !dbg !3019
  br i1 %4, label %5, label %10, !dbg !3020

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3021
  br i1 %6, label %17, label %7, !dbg !3022

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !206, metadata !DIExpression()) #28, !dbg !3016
  %8 = icmp slt i64 %3, 0, !dbg !3023
  br i1 %8, label %9, label %17, !dbg !3024

9:                                                ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3025
  unreachable, !dbg !3025

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3026
  br i1 %11, label %13, label %12, !dbg !3027

12:                                               ; preds = %10
  tail call void @xalloc_die() #30, !dbg !3028
  unreachable, !dbg !3028

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3029
  %15 = add nuw nsw i64 %3, 1, !dbg !3030
  %16 = add nuw nsw i64 %15, %14, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %16, metadata !206, metadata !DIExpression()) #28, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #28, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %16, metadata !2933, metadata !DIExpression()) #28, !dbg !3032
  br label %17, !dbg !3034

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3035
  store i64 %18, i64* %1, align 8, !dbg !3035, !tbaa !2172
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #28, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %19, metadata !2928, metadata !DIExpression()) #28, !dbg !3032
  %20 = icmp eq i8* %19, null, !dbg !3037
  br i1 %20, label %21, label %22, !dbg !3038

21:                                               ; preds = %17
  tail call void @xalloc_die() #30, !dbg !3039
  unreachable, !dbg !3039

22:                                               ; preds = %17
  ret i8* %19, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3041 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %0, metadata !3045, metadata !DIExpression()) #28, !dbg !3050
  call void @llvm.dbg.value(metadata i64 1, metadata !3048, metadata !DIExpression()) #28, !dbg !3050
  %2 = icmp slt i64 %0, 0, !dbg !3052
  br i1 %2, label %6, label %3, !dbg !3054

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #28, !dbg !3055
  call void @llvm.dbg.value(metadata i8* %4, metadata !3049, metadata !DIExpression()) #28, !dbg !3050
  %5 = icmp eq i8* %4, null, !dbg !3056
  br i1 %5, label %6, label %7, !dbg !3057

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #30, !dbg !3058
  unreachable, !dbg !3058

7:                                                ; preds = %3
  ret i8* %4, !dbg !3059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3046 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3045, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3060
  %3 = udiv i64 9223372036854775807, %1, !dbg !3061
  %4 = icmp ult i64 %3, %0, !dbg !3061
  br i1 %4, label %8, label %5, !dbg !3062

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #28, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %6, metadata !3049, metadata !DIExpression()), !dbg !3060
  %7 = icmp eq i8* %6, null, !dbg !3064
  br i1 %7, label %8, label %9, !dbg !3065

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #30, !dbg !3066
  unreachable, !dbg !3066

9:                                                ; preds = %5
  ret i8* %6, !dbg !3067
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3068 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !2895, metadata !DIExpression()) #28, !dbg !3075
  %3 = tail call noalias i8* @malloc(i64 %1) #28, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %3, metadata !2900, metadata !DIExpression()) #28, !dbg !3075
  %4 = icmp eq i8* %3, null, !dbg !3078
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3079
  br i1 %6, label %7, label %8, !dbg !3079

7:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3080
  unreachable, !dbg !3080

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3081, metadata !DIExpression()) #28, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %0, metadata !3084, metadata !DIExpression()) #28, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %1, metadata !3085, metadata !DIExpression()) #28, !dbg !3086
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #28, !dbg !3088
  ret i8* %3, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3090 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()), !dbg !3093
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !3094
  %3 = add i64 %2, 1, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()) #28, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %3, metadata !3073, metadata !DIExpression()) #28, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %3, metadata !2895, metadata !DIExpression()) #28, !dbg !3098
  %4 = tail call noalias i8* @malloc(i64 %3) #28, !dbg !3100
  call void @llvm.dbg.value(metadata i8* %4, metadata !2900, metadata !DIExpression()) #28, !dbg !3098
  %5 = icmp eq i8* %4, null, !dbg !3101
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3102
  br i1 %7, label %8, label %9, !dbg !3102

8:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3103
  unreachable, !dbg !3103

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3081, metadata !DIExpression()) #28, !dbg !3104
  call void @llvm.dbg.value(metadata i8* %0, metadata !3084, metadata !DIExpression()) #28, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %3, metadata !3085, metadata !DIExpression()) #28, !dbg !3104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #28, !dbg !3106
  ret i8* %4, !dbg !3107
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3108 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3109, !tbaa !811
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.125, i64 0, i64 0), i32 5) #28, !dbg !3110
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i8* %2) #28, !dbg !3111
  tail call void @abort() #30, !dbg !3112
  unreachable, !dbg !3112
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #26 !dbg !3113 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3115, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !3116, metadata !DIExpression()), !dbg !3121
  %3 = icmp eq i64 %0, 0, !dbg !3122
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3123
  br i1 %5, label %11, label %6, !dbg !3123

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3118, metadata !DIExpression()), !dbg !3124
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3125
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3125
  br i1 %8, label %9, label %11, !dbg !3127

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !3128
  store i32 12, i32* %10, align 4, !dbg !3130, !tbaa !811
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3115, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %12, metadata !3116, metadata !DIExpression()), !dbg !3121
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #28, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %14, metadata !3117, metadata !DIExpression()), !dbg !3121
  br label %15, !dbg !3132

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3121
  ret i8* %16, !dbg !3133
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fcntl(i32 %0, i32 %1, ...) local_unnamed_addr #8 !dbg !3134 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3138, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32 %1, metadata !3139, metadata !DIExpression()), !dbg !3162
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !3163
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #28, !dbg !3163
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !3140, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 -1, metadata !3150, metadata !DIExpression()), !dbg !3162
  call void @llvm.va_start(i8* nonnull %4), !dbg !3165
  switch i32 %1, label %97 [
    i32 0, label %5
    i32 1030, label %24
    i32 1, label %76
    i32 3, label %76
    i32 1025, label %76
    i32 9, label %76
    i32 1032, label %76
    i32 1034, label %76
    i32 11, label %76
    i32 1033, label %78
    i32 1031, label %78
    i32 10, label %78
    i32 1026, label %78
    i32 2, label %78
    i32 4, label %78
    i32 1024, label %78
    i32 8, label %78
  ], !dbg !3166

5:                                                ; preds = %2
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3167
  %7 = load i32, i32* %6, align 16, !dbg !3167
  %8 = icmp ult i32 %7, 41, !dbg !3167
  br i1 %8, label %9, label %15, !dbg !3167

9:                                                ; preds = %5
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3167
  %11 = load i8*, i8** %10, align 16, !dbg !3167
  %12 = zext i32 %7 to i64, !dbg !3167
  %13 = getelementptr i8, i8* %11, i64 %12, !dbg !3167
  %14 = add nuw nsw i32 %7, 8, !dbg !3167
  store i32 %14, i32* %6, align 16, !dbg !3167
  br label %19, !dbg !3167

15:                                               ; preds = %5
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3167
  %17 = load i8*, i8** %16, align 8, !dbg !3167
  %18 = getelementptr i8, i8* %17, i64 8, !dbg !3167
  store i8* %18, i8** %16, align 8, !dbg !3167
  br label %19, !dbg !3167

19:                                               ; preds = %15, %9
  %20 = phi i8* [ %13, %9 ], [ %17, %15 ]
  %21 = bitcast i8* %20 to i32*, !dbg !3167
  %22 = load i32, i32* %21, align 4, !dbg !3167
  call void @llvm.dbg.value(metadata i32 %22, metadata !3151, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i32 %0, metadata !3169, metadata !DIExpression()) #28, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %22, metadata !3172, metadata !DIExpression()) #28, !dbg !3174
  %23 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %22) #28, !dbg !3176
  call void @llvm.dbg.value(metadata i32 %23, metadata !3173, metadata !DIExpression()) #28, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %23, metadata !3150, metadata !DIExpression()), !dbg !3162
  br label %116

24:                                               ; preds = %2
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3177
  %26 = load i32, i32* %25, align 16, !dbg !3177
  %27 = icmp ult i32 %26, 41, !dbg !3177
  br i1 %27, label %28, label %34, !dbg !3177

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3177
  %30 = load i8*, i8** %29, align 16, !dbg !3177
  %31 = zext i32 %26 to i64, !dbg !3177
  %32 = getelementptr i8, i8* %30, i64 %31, !dbg !3177
  %33 = add nuw nsw i32 %26, 8, !dbg !3177
  store i32 %33, i32* %25, align 16, !dbg !3177
  br label %38, !dbg !3177

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3177
  %36 = load i8*, i8** %35, align 8, !dbg !3177
  %37 = getelementptr i8, i8* %36, i64 8, !dbg !3177
  store i8* %37, i8** %35, align 8, !dbg !3177
  br label %38, !dbg !3177

38:                                               ; preds = %34, %28
  %39 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %40 = bitcast i8* %39 to i32*, !dbg !3177
  %41 = load i32, i32* %40, align 4, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %41, metadata !3154, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i32 %0, metadata !152, metadata !DIExpression()) #28, !dbg !3179
  call void @llvm.dbg.value(metadata i32 %41, metadata !153, metadata !DIExpression()) #28, !dbg !3179
  %42 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3181, !tbaa !811
  %43 = icmp sgt i32 %42, -1, !dbg !3183
  br i1 %43, label %44, label %56, !dbg !3184

44:                                               ; preds = %38
  %45 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %41) #28, !dbg !3185
  call void @llvm.dbg.value(metadata i32 %45, metadata !154, metadata !DIExpression()) #28, !dbg !3179
  %46 = icmp sgt i32 %45, -1, !dbg !3187
  br i1 %46, label %51, label %47, !dbg !3189

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #32, !dbg !3190
  %49 = load i32, i32* %48, align 4, !dbg !3190, !tbaa !811
  %50 = icmp eq i32 %49, 22, !dbg !3191
  br i1 %50, label %52, label %51, !dbg !3192

51:                                               ; preds = %47, %44
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3193, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %62, metadata !154, metadata !DIExpression()) #28, !dbg !3179
  br label %116, !dbg !3195

52:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 %0, metadata !3169, metadata !DIExpression()) #28, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %41, metadata !3172, metadata !DIExpression()) #28, !dbg !3196
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #28, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %53, metadata !3173, metadata !DIExpression()) #28, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %53, metadata !154, metadata !DIExpression()) #28, !dbg !3179
  %54 = icmp sgt i32 %53, -1, !dbg !3200
  br i1 %54, label %55, label %116, !dbg !3202

55:                                               ; preds = %52
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !3203, !tbaa !811
  br label %60, !dbg !3204

56:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !3169, metadata !DIExpression()) #28, !dbg !3205
  call void @llvm.dbg.value(metadata i32 %41, metadata !3172, metadata !DIExpression()) #28, !dbg !3205
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %41) #28, !dbg !3207
  call void @llvm.dbg.value(metadata i32 %57, metadata !3173, metadata !DIExpression()) #28, !dbg !3205
  call void @llvm.dbg.value(metadata i32 %57, metadata !154, metadata !DIExpression()) #28, !dbg !3179
  %58 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %59 = icmp eq i32 %58, -1
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i1 [ true, %55 ], [ %59, %56 ]
  %62 = phi i32 [ %53, %55 ], [ %57, %56 ], !dbg !3208
  call void @llvm.dbg.value(metadata i32 %62, metadata !154, metadata !DIExpression()) #28, !dbg !3179
  %63 = icmp sgt i32 %62, -1, !dbg !3209
  %64 = and i1 %61, %63, !dbg !3195
  br i1 %64, label %65, label %116, !dbg !3195

65:                                               ; preds = %60
  %66 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 1) #28, !dbg !3210
  call void @llvm.dbg.value(metadata i32 %66, metadata !155, metadata !DIExpression()) #28, !dbg !3211
  %67 = icmp slt i32 %66, 0, !dbg !3212
  br i1 %67, label %72, label %68, !dbg !3213

68:                                               ; preds = %65
  %69 = or i32 %66, 1, !dbg !3214
  %70 = call i32 (i32, i32, ...) @fcntl(i32 %62, i32 2, i32 %69) #28, !dbg !3215
  %71 = icmp eq i32 %70, -1, !dbg !3216
  br i1 %71, label %72, label %116, !dbg !3217

72:                                               ; preds = %68, %65
  %73 = tail call i32* @__errno_location() #32, !dbg !3218
  %74 = load i32, i32* %73, align 4, !dbg !3218, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %74, metadata !158, metadata !DIExpression()) #28, !dbg !3219
  %75 = call i32 @close(i32 %62) #28, !dbg !3220
  store i32 %74, i32* %73, align 4, !dbg !3221, !tbaa !811
  call void @llvm.dbg.value(metadata i32 -1, metadata !154, metadata !DIExpression()) #28, !dbg !3179
  br label %116, !dbg !3222

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %77 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1) #28, !dbg !3223
  call void @llvm.dbg.value(metadata i32 %77, metadata !3150, metadata !DIExpression()), !dbg !3162
  br label %116, !dbg !3224

78:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3225
  %80 = load i32, i32* %79, align 16, !dbg !3225
  %81 = icmp ult i32 %80, 41, !dbg !3225
  br i1 %81, label %82, label %88, !dbg !3225

82:                                               ; preds = %78
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3225
  %84 = load i8*, i8** %83, align 16, !dbg !3225
  %85 = zext i32 %80 to i64, !dbg !3225
  %86 = getelementptr i8, i8* %84, i64 %85, !dbg !3225
  %87 = add nuw nsw i32 %80, 8, !dbg !3225
  store i32 %87, i32* %79, align 16, !dbg !3225
  br label %92, !dbg !3225

88:                                               ; preds = %78
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3225
  %90 = load i8*, i8** %89, align 8, !dbg !3225
  %91 = getelementptr i8, i8* %90, i64 8, !dbg !3225
  store i8* %91, i8** %89, align 8, !dbg !3225
  br label %92, !dbg !3225

92:                                               ; preds = %88, %82
  %93 = phi i8* [ %86, %82 ], [ %90, %88 ]
  %94 = bitcast i8* %93 to i32*, !dbg !3225
  %95 = load i32, i32* %94, align 4, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %95, metadata !3156, metadata !DIExpression()), !dbg !3226
  %96 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i32 %95) #28, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %96, metadata !3150, metadata !DIExpression()), !dbg !3162
  br label %116, !dbg !3228

97:                                               ; preds = %2
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !3229
  %99 = load i32, i32* %98, align 16, !dbg !3229
  %100 = icmp ult i32 %99, 41, !dbg !3229
  br i1 %100, label %101, label %107, !dbg !3229

101:                                              ; preds = %97
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !3229
  %103 = load i8*, i8** %102, align 16, !dbg !3229
  %104 = zext i32 %99 to i64, !dbg !3229
  %105 = getelementptr i8, i8* %103, i64 %104, !dbg !3229
  %106 = add nuw nsw i32 %99, 8, !dbg !3229
  store i32 %106, i32* %98, align 16, !dbg !3229
  br label %111, !dbg !3229

107:                                              ; preds = %97
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !3229
  %109 = load i8*, i8** %108, align 8, !dbg !3229
  %110 = getelementptr i8, i8* %109, i64 8, !dbg !3229
  store i8* %110, i8** %108, align 8, !dbg !3229
  br label %111, !dbg !3229

111:                                              ; preds = %107, %101
  %112 = phi i8* [ %105, %101 ], [ %109, %107 ]
  %113 = bitcast i8* %112 to i8**, !dbg !3229
  %114 = load i8*, i8** %113, align 8, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %114, metadata !3160, metadata !DIExpression()), !dbg !3230
  %115 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %114) #28, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %115, metadata !3150, metadata !DIExpression()), !dbg !3162
  br label %116, !dbg !3232

116:                                              ; preds = %72, %68, %60, %52, %51, %76, %92, %111, %19
  %117 = phi i32 [ %115, %111 ], [ %96, %92 ], [ %77, %76 ], [ %23, %19 ], [ %62, %60 ], [ -1, %72 ], [ %62, %68 ], [ %53, %52 ], [ %45, %51 ], !dbg !3233
  call void @llvm.dbg.value(metadata i32 %117, metadata !3150, metadata !DIExpression()), !dbg !3162
  call void @llvm.va_end(i8* nonnull %4), !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #28, !dbg !3235
  ret i32 %117, !dbg !3236
}

declare !dbg !3237 i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3238 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3254, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8* %1, metadata !3255, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 %2, metadata !3256, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3257, metadata !DIExpression()), !dbg !3263
  %6 = bitcast i32* %5 to i8*, !dbg !3264
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #28, !dbg !3264
  %7 = icmp eq i32* %0, null, !dbg !3265
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3267
  call void @llvm.dbg.value(metadata i32* %8, metadata !3254, metadata !DIExpression()), !dbg !3263
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #28, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %9, metadata !3258, metadata !DIExpression()), !dbg !3263
  %10 = icmp ugt i64 %9, -3, !dbg !3269
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3270
  br i1 %12, label %13, label %18, !dbg !3270

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #28, !dbg !3271
  br i1 %14, label %18, label %15, !dbg !3272

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3273, !tbaa !1087
  call void @llvm.dbg.value(metadata i8 %16, metadata !3260, metadata !DIExpression()), !dbg !3274
  %17 = zext i8 %16 to i32, !dbg !3275
  store i32 %17, i32* %8, align 4, !dbg !3276, !tbaa !811
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3263
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #28, !dbg !3277
  ret i64 %19, !dbg !3277
}

; Function Attrs: nounwind
declare !dbg !3278 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3282 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3320, metadata !DIExpression()), !dbg !3325
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #28, !dbg !3326
  call void @llvm.dbg.value(metadata i1 undef, metadata !3321, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3325
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3327, metadata !DIExpression()), !dbg !3330
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3332
  %4 = load i32, i32* %3, align 8, !dbg !3332, !tbaa !914
  %5 = and i32 %4, 32, !dbg !3333
  %6 = icmp eq i32 %5, 0, !dbg !3333
  call void @llvm.dbg.value(metadata i1 %6, metadata !3323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3325
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #28, !dbg !3334
  %8 = icmp eq i32 %7, 0, !dbg !3335
  call void @llvm.dbg.value(metadata i1 %8, metadata !3324, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3325
  br i1 %6, label %9, label %19, !dbg !3336

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3338
  call void @llvm.dbg.value(metadata i1 %10, metadata !3321, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3325
  %11 = or i1 %10, %8, !dbg !3339
  %12 = xor i1 %8, true, !dbg !3339
  %13 = sext i1 %12 to i32, !dbg !3339
  br i1 %11, label %22, label %14, !dbg !3339

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !3340
  %16 = load i32, i32* %15, align 4, !dbg !3340, !tbaa !811
  %17 = icmp ne i32 %16, 9, !dbg !3341
  %18 = sext i1 %17 to i32, !dbg !3342
  br label %22, !dbg !3342

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3343

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !3345
  store i32 0, i32* %21, align 4, !dbg !3347, !tbaa !811
  br label %22, !dbg !3345

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3325
  ret i32 %23, !dbg !3348
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #19 !dbg !3349 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3351, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8 0, metadata !3354, metadata !DIExpression()), !dbg !3355
  br label %2, !dbg !3356

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3355
  call void @llvm.dbg.value(metadata i8* %3, metadata !3352, metadata !DIExpression()), !dbg !3355
  %4 = load i8, i8* %3, align 1, !dbg !3357, !tbaa !1087
  %5 = icmp eq i8 %4, 47, !dbg !3357
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %6, metadata !3352, metadata !DIExpression()), !dbg !3355
  br i1 %5, label %2, label %7, !dbg !3356, !llvm.loop !3359

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !3360
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !3363
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !3364
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !3355
  call void @llvm.dbg.value(metadata i8 %11, metadata !3354, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %10, metadata !3353, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %9, metadata !3352, metadata !DIExpression()), !dbg !3355
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !3365

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !3366
  %14 = icmp eq i8 %13, 0, !dbg !3366
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !3370
  %16 = select i1 %14, i8 %11, i8 0, !dbg !3370
  br label %17, !dbg !3370

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !3355
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !3355
  call void @llvm.dbg.value(metadata i8 %19, metadata !3354, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %18, metadata !3352, metadata !DIExpression()), !dbg !3355
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %20, metadata !3353, metadata !DIExpression()), !dbg !3355
  %21 = load i8, i8* %20, align 1, !dbg !3360, !tbaa !1087
  br label %7, !dbg !3372, !llvm.loop !3373

22:                                               ; preds = %7
  ret i8* %9, !dbg !3375
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #27 !dbg !3376 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3380, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.value(metadata i64 0, metadata !3382, metadata !DIExpression()), !dbg !3383
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %2, metadata !3381, metadata !DIExpression()), !dbg !3383
  %3 = icmp ne i64 %2, 0, !dbg !3386
  %4 = zext i1 %3 to i64, !dbg !3386
  br label %5, !dbg !3386

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3387
  call void @llvm.dbg.value(metadata i64 %6, metadata !3381, metadata !DIExpression()), !dbg !3383
  %7 = icmp ugt i64 %6, 1, !dbg !3388
  br i1 %7, label %8, label %13, !dbg !3390

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3391
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !3391
  %11 = load i8, i8* %10, align 1, !dbg !3391, !tbaa !1087
  %12 = icmp eq i8 %11, 47, !dbg !3391
  br i1 %12, label %5, label %13, !dbg !3392, !llvm.loop !3393

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3387
  ret i64 %14, !dbg !3395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3396 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3400, metadata !DIExpression()), !dbg !3405
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3406
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #28, !dbg !3406
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3401, metadata !DIExpression()), !dbg !3407
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #28, !dbg !3408
  %5 = icmp eq i32 %4, 0, !dbg !3408
  br i1 %5, label %6, label %13, !dbg !3410

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3411
  %8 = load i16, i16* %7, align 16, !dbg !3411
  %9 = icmp eq i16 %8, 67, !dbg !3411
  br i1 %9, label %13, label %10, !dbg !3412

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i64 6), !dbg !3413
  %12 = icmp ne i32 %11, 0, !dbg !3414
  br label %13, !dbg !3412

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3405
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #28, !dbg !3415
  ret i1 %14, !dbg !3415
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3416 {
  %1 = tail call i8* @nl_langinfo(i32 14) #28, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()), !dbg !3422
  %2 = icmp eq i8* %1, null, !dbg !3423
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), i8* %1, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %3, metadata !3420, metadata !DIExpression()), !dbg !3422
  %4 = load i8, i8* %3, align 1, !dbg !3426, !tbaa !1087
  %5 = icmp eq i8 %4, 0, !dbg !3430
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %3, !dbg !3431
  call void @llvm.dbg.value(metadata i8* %6, metadata !3420, metadata !DIExpression()), !dbg !3422
  ret i8* %6, !dbg !3432
}

; Function Attrs: nounwind
declare !dbg !3433 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %0, metadata !3444, metadata !DIExpression()) #28, !dbg !3453
  call void @llvm.dbg.value(metadata i8* %1, metadata !3447, metadata !DIExpression()) #28, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %2, metadata !3448, metadata !DIExpression()) #28, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %0, metadata !3455, metadata !DIExpression()) #28, !dbg !3461
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %4, metadata !3460, metadata !DIExpression()) #28, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %4, metadata !3449, metadata !DIExpression()) #28, !dbg !3453
  %5 = icmp eq i8* %4, null, !dbg !3464
  br i1 %5, label %6, label %9, !dbg !3465

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3466
  br i1 %7, label %19, label %8, !dbg !3469

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3470, !tbaa !1087
  br label %19, !dbg !3471

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %10, metadata !3450, metadata !DIExpression()) #28, !dbg !3473
  %11 = icmp ult i64 %10, %2, !dbg !3474
  br i1 %11, label %12, label %14, !dbg !3476

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i8* %1, metadata !3479, metadata !DIExpression()) #28, !dbg !3484
  call void @llvm.dbg.value(metadata i8* %4, metadata !3482, metadata !DIExpression()) #28, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %13, metadata !3483, metadata !DIExpression()) #28, !dbg !3484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #28, !dbg !3486
  br label %19, !dbg !3487

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3488
  br i1 %15, label %19, label %16, !dbg !3491

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3492
  call void @llvm.dbg.value(metadata i8* %1, metadata !3479, metadata !DIExpression()) #28, !dbg !3494
  call void @llvm.dbg.value(metadata i8* %4, metadata !3482, metadata !DIExpression()) #28, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %17, metadata !3483, metadata !DIExpression()) #28, !dbg !3494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #28, !dbg !3496
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3497
  store i8 0, i8* %18, align 1, !dbg !3498, !tbaa !1087
  br label %19, !dbg !3499

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3500
  ret i32 %20, !dbg !3501
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3502 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3504, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 %0, metadata !3455, metadata !DIExpression()) #28, !dbg !3506
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !3508
  call void @llvm.dbg.value(metadata i8* %2, metadata !3460, metadata !DIExpression()) #28, !dbg !3506
  ret i8* %2, !dbg !3509
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3510 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3548, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 0, metadata !3549, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32 0, metadata !3551, metadata !DIExpression()), !dbg !3552
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %2, metadata !3550, metadata !DIExpression()), !dbg !3552
  %3 = icmp slt i32 %2, 0, !dbg !3554
  br i1 %3, label %4, label %6, !dbg !3556

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3557
  br label %24, !dbg !3558

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !3559
  %8 = icmp eq i32 %7, 0, !dbg !3559
  br i1 %8, label %13, label %9, !dbg !3561

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !3562
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #28, !dbg !3563
  %12 = icmp eq i64 %11, -1, !dbg !3564
  br i1 %12, label %16, label %13, !dbg !3565

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #28, !dbg !3566
  %15 = icmp eq i32 %14, 0, !dbg !3566
  br i1 %15, label %16, label %18, !dbg !3567

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3549, metadata !DIExpression()), !dbg !3552
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %21, metadata !3551, metadata !DIExpression()), !dbg !3552
  br label %24, !dbg !3569

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !3570
  %20 = load i32, i32* %19, align 4, !dbg !3570, !tbaa !811
  call void @llvm.dbg.value(metadata i32 %20, metadata !3549, metadata !DIExpression()), !dbg !3552
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %21, metadata !3551, metadata !DIExpression()), !dbg !3552
  %22 = icmp eq i32 %20, 0, !dbg !3571
  br i1 %22, label %24, label %23, !dbg !3569

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3573, !tbaa !811
  call void @llvm.dbg.value(metadata i32 -1, metadata !3551, metadata !DIExpression()), !dbg !3552
  br label %24, !dbg !3575

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3552
  ret i32 %25, !dbg !3576
}

; Function Attrs: nofree nounwind
declare !dbg !3577 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3580 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3581 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3584 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3622, metadata !DIExpression()), !dbg !3623
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3624
  br i1 %2, label %6, label %3, !dbg !3626

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !3627
  %5 = icmp eq i32 %4, 0, !dbg !3627
  br i1 %5, label %6, label %8, !dbg !3628

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3629
  br label %17, !dbg !3630

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3631, metadata !DIExpression()) #28, !dbg !3636
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3638
  %10 = load i32, i32* %9, align 8, !dbg !3638, !tbaa !914
  %11 = and i32 %10, 256, !dbg !3640
  %12 = icmp eq i32 %11, 0, !dbg !3640
  br i1 %12, label %15, label %13, !dbg !3641

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #28, !dbg !3642
  br label %15, !dbg !3642

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3643
  br label %17, !dbg !3644

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3623
  ret i32 %18, !dbg !3645
}

; Function Attrs: nofree nounwind
declare !dbg !3646 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3649 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3688, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %1, metadata !3689, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 %2, metadata !3690, metadata !DIExpression()), !dbg !3694
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3695
  %5 = load i8*, i8** %4, align 8, !dbg !3695, !tbaa !3696
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3697
  %7 = load i8*, i8** %6, align 8, !dbg !3697, !tbaa !3698
  %8 = icmp eq i8* %5, %7, !dbg !3699
  br i1 %8, label %9, label %28, !dbg !3700

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3701
  %11 = load i8*, i8** %10, align 8, !dbg !3701, !tbaa !3702
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3703
  %13 = load i8*, i8** %12, align 8, !dbg !3703, !tbaa !3704
  %14 = icmp eq i8* %11, %13, !dbg !3705
  br i1 %14, label %15, label %28, !dbg !3706

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3707
  %17 = load i8*, i8** %16, align 8, !dbg !3707, !tbaa !3708
  %18 = icmp eq i8* %17, null, !dbg !3709
  br i1 %18, label %19, label %28, !dbg !3710

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !3711
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #28, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %21, metadata !3691, metadata !DIExpression()), !dbg !3713
  %22 = icmp eq i64 %21, -1, !dbg !3714
  br i1 %22, label %30, label %23, !dbg !3716

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3717
  %25 = load i32, i32* %24, align 8, !dbg !3718, !tbaa !914
  %26 = and i32 %25, -17, !dbg !3718
  store i32 %26, i32* %24, align 8, !dbg !3718, !tbaa !914
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3719
  store i64 %21, i64* %27, align 8, !dbg !3720, !tbaa !3721
  br label %30, !dbg !3722

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3723
  br label %30, !dbg !3724

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3694
  ret i32 %31, !dbg !3725
}

; Function Attrs: nofree nounwind
declare !dbg !3726 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind }
attributes #19 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nounwind }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold }

!llvm.dbg.cu = !{!161, !2, !11, !19, !180, !182, !185, !26, !43, !51, !187, !137, !193, !210, !212, !149, !214, !217, !219, !222, !224, !613, !615, !617, !619}
!llvm.ident = !{!621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621, !621}
!llvm.module.flags = !{!622, !623, !624, !625, !626}

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
!25 = distinct !DIGlobalVariable(name: "long_options", scope: !26, file: !27, line: 34, type: !29, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!28 = !{!24}
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 768, elements: !39)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !32, line: 50, size: 256, elements: !33)
!32 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!33 = !{!34, !35, !36, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !32, line: 52, baseType: !6, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !31, file: !32, line: 55, baseType: !23, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !31, file: !32, line: 56, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !31, file: !32, line: 57, baseType: !23, size: 32, offset: 192)
!39 = !{!40}
!40 = !DISubrange(count: 3)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "program_name", scope: !43, file: !44, line: 33, type: !6, isLocal: false, isDefinition: true)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !48, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!48 = !{!41}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !51, file: !52, line: 85, type: !131, isLocal: false, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !89, globals: !94, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!53 = !{!54, !69, !74}
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !55, line: 32, baseType: !56, size: 32, elements: !57)
!55 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!58 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!64 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!65 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!66 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!67 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!68 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !55, line: 242, baseType: !56, size: 32, elements: !70)
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 46, baseType: !56, size: 32, elements: !76)
!75 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!77 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!78 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!79 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!89 = !{!23, !90, !91, !47}
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 46, baseType: !93)
!92 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!93 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!94 = !{!49, !95, !101, !113, !115, !120, !127, !129}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !51, file: !52, line: 101, type: !97, isLocal: false, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 320, elements: !99)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!99 = !{!100}
!100 = !DISubrange(count: 10)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !51, file: !52, line: 1052, type: !103, isLocal: false, isDefinition: true)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !52, line: 65, size: 448, elements: !104)
!104 = !{!105, !106, !107, !111, !112}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !103, file: !52, line: 68, baseType: !54, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !52, line: 71, baseType: !23, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !103, file: !52, line: 75, baseType: !108, size: 256, offset: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !103, file: !52, line: 78, baseType: !6, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !103, file: !52, line: 81, baseType: !6, size: 64, offset: 384)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !51, file: !52, line: 116, type: !103, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "slot0", scope: !51, file: !52, line: 842, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 256)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "slotvec", scope: !51, file: !52, line: 845, type: !122, isLocal: true, isDefinition: true)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !52, line: 834, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !52, line: 836, baseType: !91, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !52, line: 837, baseType: !47, size: 64, offset: 64)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "nslots", scope: !51, file: !52, line: 843, type: !23, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slotvec0", scope: !51, file: !52, line: 844, type: !123, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 704, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!133 = !{!134}
!134 = !DISubrange(count: 11)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !137, file: !138, line: 26, type: !140, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !139, splitDebugInlining: false, nameTableKind: None)
!138 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !{!135}
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 47)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !145, file: !146, line: 507, type: !23, isLocal: true, isDefinition: true)
!145 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !146, file: !146, line: 488, type: !147, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !151)
!146 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = !DISubroutineType(types: !148)
!148 = !{!23, !23, !23}
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !150, splitDebugInlining: false, nameTableKind: None)
!150 = !{!143}
!151 = !{!152, !153, !154, !155, !158}
!152 = !DILocalVariable(name: "fd", arg: 1, scope: !145, file: !146, line: 488, type: !23)
!153 = !DILocalVariable(name: "target", arg: 2, scope: !145, file: !146, line: 488, type: !23)
!154 = !DILocalVariable(name: "result", scope: !145, file: !146, line: 490, type: !23)
!155 = !DILocalVariable(name: "flags", scope: !156, file: !146, line: 531, type: !23)
!156 = distinct !DILexicalBlock(scope: !157, file: !146, line: 530, column: 5)
!157 = distinct !DILexicalBlock(scope: !145, file: !146, line: 529, column: 7)
!158 = !DILocalVariable(name: "saved_errno", scope: !159, file: !146, line: 534, type: !23)
!159 = distinct !DILexicalBlock(scope: !160, file: !146, line: 533, column: 9)
!160 = distinct !DILexicalBlock(scope: !156, file: !146, line: 532, column: 11)
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !163, retainedTypes: !174, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "src/nohup.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!163 = !{!164, !167, !54}
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !162, line: 37, baseType: !56, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIEnumerator(name: "POSIX_NOHUP_FAILURE", value: 127, isUnsigned: true)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 87, baseType: !56, size: 32, elements: !169)
!168 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = !{!170, !171, !172, !173}
!170 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!171 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!172 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!173 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!174 = !{!6, !46, !175}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !176, line: 72, baseType: !177)
!176 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !23}
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!181 = !DIFile(filename: "lib/fd-reopen.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!46}
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = !{!190}
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !188, line: 40, baseType: !56, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !195, retainedTypes: !209, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = !{!196}
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !198, file: !197, line: 186, baseType: !56, size: 32, elements: !207)
!197 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!198 = distinct !DISubprogram(name: "x2nrealloc", scope: !197, file: !197, line: 174, type: !199, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !202)
!199 = !DISubroutineType(types: !200)
!200 = !{!46, !46, !201, !91}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!202 = !{!203, !204, !205, !206}
!203 = !DILocalVariable(name: "p", arg: 1, scope: !198, file: !197, line: 174, type: !46)
!204 = !DILocalVariable(name: "pn", arg: 2, scope: !198, file: !197, line: 174, type: !201)
!205 = !DILocalVariable(name: "s", arg: 3, scope: !198, file: !197, line: 174, type: !91)
!206 = !DILocalVariable(name: "n", scope: !198, file: !197, line: 176, type: !91)
!207 = !{!208}
!208 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!209 = !{!91, !47, !46}
!210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !211, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!211 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !216, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!216 = !{!91}
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!218 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !221, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = !{!47}
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!223 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !226, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!226 = !{!227}
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !228, line: 41, baseType: !56, size: 32, elements: !229)
!228 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!230 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!231 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!232 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!233 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!234 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!235 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!236 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!237 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!238 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!239 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!240 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!241 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!242 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!243 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!248 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!249 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!253 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!254 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!260 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!261 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!265 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!266 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!268 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!269 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!270 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!271 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!272 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!273 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!274 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!275 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!276 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!277 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!278 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!279 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!338 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!345 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!346 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!350 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!351 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!425 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!498 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!499 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!500 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!501 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!502 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!503 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!504 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!505 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!506 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!507 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!508 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!509 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!510 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!511 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!512 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!514 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!515 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!516 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!517 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!518 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!519 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!545 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!546 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!547 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!548 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!549 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!554 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!555 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!556 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!557 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!614 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!616 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!618 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, splitDebugInlining: false, nameTableKind: None)
!620 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!621 = !{!"clang version 12.0.1"}
!622 = !{i32 7, !"Dwarf Version", i32 4}
!623 = !{i32 2, !"Debug Info Version", i32 3}
!624 = !{i32 1, !"wchar_size", i32 4}
!625 = !{i32 7, !"PIC Level", i32 2}
!626 = !{i32 7, !"PIE Level", i32 2}
!627 = distinct !DISubprogram(name: "usage", scope: !162, file: !162, line: 44, type: !178, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !628)
!628 = !{!629}
!629 = !DILocalVariable(name: "status", arg: 1, scope: !627, file: !162, line: 44, type: !23)
!630 = !DILocation(line: 0, scope: !627)
!631 = !DILocation(line: 46, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !162, line: 46, column: 7)
!633 = !DILocation(line: 46, column: 7, scope: !627)
!634 = !DILocation(line: 47, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !162, line: 47, column: 5)
!636 = !{!637, !637, i64 0}
!637 = !{!"any pointer", !638, i64 0}
!638 = !{!"omnipotent char", !639, i64 0}
!639 = !{!"Simple C/C++ TBAA"}
!640 = !DILocation(line: 50, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !632, file: !162, line: 49, column: 5)
!642 = !DILocation(line: 56, column: 7, scope: !641)
!643 = !DILocation(line: 60, column: 7, scope: !641)
!644 = !DILocation(line: 61, column: 7, scope: !641)
!645 = !DILocation(line: 62, column: 7, scope: !641)
!646 = !DILocation(line: 69, column: 7, scope: !641)
!647 = !DILocalVariable(name: "program", arg: 1, scope: !648, file: !168, line: 634, type: !6)
!648 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !168, file: !168, line: 634, type: !649, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !6}
!651 = !{!647, !652, !661, !662, !664}
!652 = !DILocalVariable(name: "infomap", scope: !648, file: !168, line: 636, type: !653)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 896, elements: !659)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !648, file: !168, line: 636, size: 128, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !655, file: !168, line: 636, baseType: !6, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !168, line: 636, baseType: !6, size: 64, offset: 64)
!659 = !{!660}
!660 = !DISubrange(count: 7)
!661 = !DILocalVariable(name: "node", scope: !648, file: !168, line: 646, type: !6)
!662 = !DILocalVariable(name: "map_prog", scope: !648, file: !168, line: 647, type: !663)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!664 = !DILocalVariable(name: "lc_messages", scope: !648, file: !168, line: 659, type: !6)
!665 = !DILocation(line: 0, scope: !648, inlinedAt: !666)
!666 = distinct !DILocation(line: 70, column: 7, scope: !641)
!667 = !DILocation(line: 636, column: 3, scope: !648, inlinedAt: !666)
!668 = !DILocation(line: 636, column: 67, scope: !648, inlinedAt: !666)
!669 = !DILocation(line: 647, column: 36, scope: !648, inlinedAt: !666)
!670 = !DILocation(line: 649, column: 3, scope: !648, inlinedAt: !666)
!671 = !DILocation(line: 649, column: 33, scope: !648, inlinedAt: !666)
!672 = !DILocation(line: 650, column: 13, scope: !648, inlinedAt: !666)
!673 = !DILocation(line: 649, column: 20, scope: !648, inlinedAt: !666)
!674 = !{!675, !637, i64 0}
!675 = !{!"infomap", !637, i64 0, !637, i64 8}
!676 = !DILocation(line: 649, column: 10, scope: !648, inlinedAt: !666)
!677 = !DILocation(line: 649, column: 28, scope: !648, inlinedAt: !666)
!678 = distinct !{!678, !670, !672, !679}
!679 = !{!"llvm.loop.mustprogress"}
!680 = !DILocation(line: 652, column: 17, scope: !681, inlinedAt: !666)
!681 = distinct !DILexicalBlock(scope: !648, file: !168, line: 652, column: 7)
!682 = !{!675, !637, i64 8}
!683 = !DILocation(line: 652, column: 7, scope: !681, inlinedAt: !666)
!684 = !DILocation(line: 652, column: 7, scope: !648, inlinedAt: !666)
!685 = !DILocation(line: 655, column: 3, scope: !648, inlinedAt: !666)
!686 = !DILocation(line: 659, column: 29, scope: !648, inlinedAt: !666)
!687 = !DILocation(line: 660, column: 7, scope: !688, inlinedAt: !666)
!688 = distinct !DILexicalBlock(scope: !648, file: !168, line: 660, column: 7)
!689 = !DILocation(line: 660, column: 19, scope: !688, inlinedAt: !666)
!690 = !DILocation(line: 660, column: 22, scope: !688, inlinedAt: !666)
!691 = !DILocation(line: 660, column: 7, scope: !648, inlinedAt: !666)
!692 = !DILocation(line: 666, column: 7, scope: !693, inlinedAt: !666)
!693 = distinct !DILexicalBlock(scope: !688, file: !168, line: 661, column: 5)
!694 = !DILocation(line: 668, column: 5, scope: !693, inlinedAt: !666)
!695 = !DILocation(line: 669, column: 3, scope: !648, inlinedAt: !666)
!696 = !DILocation(line: 671, column: 3, scope: !648, inlinedAt: !666)
!697 = !DILocation(line: 673, column: 1, scope: !648, inlinedAt: !666)
!698 = !DILocation(line: 72, column: 3, scope: !627)
!699 = !DISubprogram(name: "dcgettext", scope: !700, file: !700, line: 51, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!700 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!701 = !DISubroutineType(types: !702)
!702 = !{!47, !6, !6, !23}
!703 = !DISubprogram(name: "fputs_unlocked", scope: !704, file: !704, line: 667, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!704 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!705 = !DISubroutineType(types: !706)
!706 = !{!23, !6, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 49, size: 1728, elements: !710)
!709 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !726, !727, !728, !729, !733, !734, !736, !740, !743, !745, !748, !751, !752, !753, !754, !755}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !708, file: !709, line: 51, baseType: !23, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !708, file: !709, line: 54, baseType: !47, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !708, file: !709, line: 55, baseType: !47, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !708, file: !709, line: 56, baseType: !47, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !708, file: !709, line: 57, baseType: !47, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !708, file: !709, line: 58, baseType: !47, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !708, file: !709, line: 59, baseType: !47, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !708, file: !709, line: 60, baseType: !47, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !708, file: !709, line: 61, baseType: !47, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !708, file: !709, line: 64, baseType: !47, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !708, file: !709, line: 65, baseType: !47, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !708, file: !709, line: 66, baseType: !47, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !708, file: !709, line: 68, baseType: !724, size: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !709, line: 36, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !708, file: !709, line: 70, baseType: !707, size: 64, offset: 832)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !708, file: !709, line: 72, baseType: !23, size: 32, offset: 896)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !708, file: !709, line: 73, baseType: !23, size: 32, offset: 928)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !708, file: !709, line: 74, baseType: !730, size: 64, offset: 960)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !731, line: 152, baseType: !732)
!731 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!732 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !708, file: !709, line: 77, baseType: !90, size: 16, offset: 1024)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !708, file: !709, line: 78, baseType: !735, size: 8, offset: 1040)
!735 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !708, file: !709, line: 79, baseType: !737, size: 8, offset: 1048)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 1)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !708, file: !709, line: 81, baseType: !741, size: 64, offset: 1088)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !709, line: 43, baseType: null)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !708, file: !709, line: 89, baseType: !744, size: 64, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !731, line: 153, baseType: !732)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !708, file: !709, line: 91, baseType: !746, size: 64, offset: 1216)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !709, line: 37, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !708, file: !709, line: 92, baseType: !749, size: 64, offset: 1280)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !709, line: 38, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !708, file: !709, line: 93, baseType: !707, size: 64, offset: 1344)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !708, file: !709, line: 94, baseType: !46, size: 64, offset: 1408)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !708, file: !709, line: 95, baseType: !91, size: 64, offset: 1472)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !708, file: !709, line: 96, baseType: !23, size: 32, offset: 1536)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !708, file: !709, line: 98, baseType: !756, size: 160, offset: 1568)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 20)
!759 = !DISubprogram(name: "setlocale", scope: !760, file: !760, line: 122, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!760 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!761 = !DISubroutineType(types: !762)
!762 = !{!47, !23, !6}
!763 = distinct !DISubprogram(name: "main", scope: !162, file: !162, line: 76, type: !764, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !767)
!764 = !DISubroutineType(types: !765)
!765 = !{!23, !23, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !780, !781, !782, !786, !787, !790, !791, !794, !795, !796}
!768 = !DILocalVariable(name: "argc", arg: 1, scope: !763, file: !162, line: 76, type: !23)
!769 = !DILocalVariable(name: "argv", arg: 2, scope: !763, file: !162, line: 76, type: !766)
!770 = !DILocalVariable(name: "out_fd", scope: !763, file: !162, line: 78, type: !23)
!771 = !DILocalVariable(name: "saved_stderr_fd", scope: !763, file: !162, line: 79, type: !23)
!772 = !DILocalVariable(name: "ignoring_input", scope: !763, file: !162, line: 80, type: !16)
!773 = !DILocalVariable(name: "redirecting_stdout", scope: !763, file: !162, line: 81, type: !16)
!774 = !DILocalVariable(name: "stdout_is_closed", scope: !763, file: !162, line: 82, type: !16)
!775 = !DILocalVariable(name: "redirecting_stderr", scope: !763, file: !162, line: 83, type: !16)
!776 = !DILocalVariable(name: "exit_internal_failure", scope: !763, file: !162, line: 84, type: !23)
!777 = !DILocalVariable(name: "in_home", scope: !778, file: !162, line: 134, type: !47)
!778 = distinct !DILexicalBlock(scope: !779, file: !162, line: 133, column: 5)
!779 = distinct !DILexicalBlock(scope: !763, file: !162, line: 132, column: 7)
!780 = !DILocalVariable(name: "file", scope: !778, file: !162, line: 135, type: !6)
!781 = !DILocalVariable(name: "flags", scope: !778, file: !162, line: 136, type: !23)
!782 = !DILocalVariable(name: "mode", scope: !778, file: !162, line: 137, type: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !784, line: 69, baseType: !785)
!784 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !731, line: 150, baseType: !56)
!786 = !DILocalVariable(name: "umask_value", scope: !778, file: !162, line: 138, type: !783)
!787 = !DILocalVariable(name: "saved_errno", scope: !788, file: !162, line: 145, type: !23)
!788 = distinct !DILexicalBlock(scope: !789, file: !162, line: 144, column: 9)
!789 = distinct !DILexicalBlock(scope: !778, file: !162, line: 143, column: 11)
!790 = !DILocalVariable(name: "home", scope: !788, file: !162, line: 146, type: !6)
!791 = !DILocalVariable(name: "saved_errno2", scope: !792, file: !162, line: 156, type: !23)
!792 = distinct !DILexicalBlock(scope: !793, file: !162, line: 155, column: 13)
!793 = distinct !DILexicalBlock(scope: !788, file: !162, line: 154, column: 15)
!794 = !DILocalVariable(name: "cmd", scope: !763, file: !162, line: 210, type: !766)
!795 = !DILocalVariable(name: "exit_status", scope: !763, file: !162, line: 212, type: !23)
!796 = !DILocalVariable(name: "saved_errno", scope: !763, file: !162, line: 213, type: !23)
!797 = !DILocation(line: 0, scope: !763)
!798 = !DILocation(line: 87, column: 21, scope: !763)
!799 = !DILocation(line: 87, column: 3, scope: !763)
!800 = !DILocation(line: 88, column: 3, scope: !763)
!801 = !DILocation(line: 89, column: 3, scope: !763)
!802 = !DILocation(line: 90, column: 3, scope: !763)
!803 = !DILocation(line: 96, column: 28, scope: !763)
!804 = !DILocalVariable(name: "status", arg: 1, scope: !805, file: !168, line: 99, type: !23)
!805 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !168, file: !168, line: 99, type: !178, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !806)
!806 = !{!804}
!807 = !DILocation(line: 0, scope: !805, inlinedAt: !808)
!808 = distinct !DILocation(line: 98, column: 3, scope: !763)
!809 = !DILocation(line: 102, column: 18, scope: !810, inlinedAt: !808)
!810 = distinct !DILexicalBlock(scope: !805, file: !168, line: 101, column: 7)
!811 = !{!812, !812, i64 0}
!812 = !{!"int", !638, i64 0}
!813 = !DILocation(line: 99, column: 3, scope: !763)
!814 = !DILocation(line: 102, column: 36, scope: !763)
!815 = !DILocation(line: 101, column: 3, scope: !763)
!816 = !DILocation(line: 105, column: 15, scope: !817)
!817 = distinct !DILexicalBlock(scope: !763, file: !162, line: 105, column: 7)
!818 = !DILocation(line: 105, column: 12, scope: !817)
!819 = !DILocation(line: 105, column: 7, scope: !763)
!820 = !DILocation(line: 107, column: 20, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !162, line: 106, column: 5)
!822 = !DILocation(line: 107, column: 7, scope: !821)
!823 = !DILocation(line: 108, column: 7, scope: !821)
!824 = !DILocation(line: 111, column: 20, scope: !763)
!825 = !DILocation(line: 112, column: 24, scope: !763)
!826 = !DILocation(line: 113, column: 43, scope: !763)
!827 = !DILocation(line: 113, column: 46, scope: !763)
!828 = !DILocation(line: 113, column: 52, scope: !763)
!829 = !DILocation(line: 114, column: 24, scope: !763)
!830 = !DILocation(line: 119, column: 7, scope: !763)
!831 = !DILocation(line: 121, column: 11, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !162, line: 121, column: 11)
!833 = distinct !DILexicalBlock(scope: !834, file: !162, line: 120, column: 5)
!834 = distinct !DILexicalBlock(scope: !763, file: !162, line: 119, column: 7)
!835 = !DILocation(line: 121, column: 62, scope: !832)
!836 = !DILocation(line: 121, column: 11, scope: !833)
!837 = !DILocation(line: 122, column: 39, scope: !832)
!838 = !DILocation(line: 123, column: 16, scope: !832)
!839 = !DILocation(line: 122, column: 9, scope: !832)
!840 = !DILocation(line: 124, column: 31, scope: !841)
!841 = distinct !DILexicalBlock(scope: !833, file: !162, line: 124, column: 11)
!842 = !DILocation(line: 125, column: 22, scope: !841)
!843 = !DILocation(line: 125, column: 9, scope: !841)
!844 = !DILocation(line: 132, column: 26, scope: !779)
!845 = !DILocation(line: 0, scope: !778)
!846 = !DILocation(line: 138, column: 28, scope: !778)
!847 = !DILocation(line: 139, column: 17, scope: !778)
!848 = !DILocation(line: 140, column: 19, scope: !778)
!849 = !DILocation(line: 141, column: 19, scope: !778)
!850 = !DILocation(line: 143, column: 18, scope: !789)
!851 = !DILocation(line: 143, column: 11, scope: !778)
!852 = !DILocation(line: 145, column: 29, scope: !788)
!853 = !DILocation(line: 0, scope: !788)
!854 = !DILocation(line: 146, column: 30, scope: !788)
!855 = !DILocation(line: 147, column: 15, scope: !856)
!856 = distinct !DILexicalBlock(scope: !788, file: !162, line: 147, column: 15)
!857 = !DILocation(line: 147, column: 15, scope: !788)
!858 = !DILocation(line: 149, column: 25, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !162, line: 148, column: 13)
!860 = !DILocation(line: 150, column: 25, scope: !859)
!861 = !DILocation(line: 151, column: 27, scope: !859)
!862 = !DILocation(line: 152, column: 27, scope: !859)
!863 = !DILocation(line: 154, column: 22, scope: !793)
!864 = !DILocation(line: 154, column: 15, scope: !788)
!865 = !DILocation(line: 156, column: 34, scope: !792)
!866 = !DILocation(line: 0, scope: !792)
!867 = !DILocation(line: 157, column: 38, scope: !792)
!868 = !DILocation(line: 157, column: 62, scope: !792)
!869 = !DILocation(line: 157, column: 15, scope: !792)
!870 = !DILocation(line: 158, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !792, file: !162, line: 158, column: 19)
!872 = !DILocation(line: 158, column: 19, scope: !792)
!873 = !DILocation(line: 159, column: 41, scope: !871)
!874 = !DILocation(line: 160, column: 24, scope: !871)
!875 = !DILocation(line: 159, column: 17, scope: !871)
!876 = !DILocation(line: 135, column: 19, scope: !778)
!877 = !DILocation(line: 166, column: 7, scope: !778)
!878 = !DILocation(line: 168, column: 14, scope: !778)
!879 = !DILocation(line: 171, column: 14, scope: !778)
!880 = !DILocation(line: 167, column: 7, scope: !778)
!881 = !DILocation(line: 172, column: 7, scope: !778)
!882 = !DILocation(line: 176, column: 7, scope: !763)
!883 = !DILocation(line: 182, column: 25, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !162, line: 177, column: 5)
!885 = distinct !DILexicalBlock(scope: !763, file: !162, line: 176, column: 7)
!886 = !DILocation(line: 185, column: 11, scope: !884)
!887 = !DILocation(line: 187, column: 16, scope: !888)
!888 = distinct !DILexicalBlock(scope: !884, file: !162, line: 185, column: 11)
!889 = !DILocation(line: 186, column: 9, scope: !888)
!890 = !DILocation(line: 191, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !884, file: !162, line: 191, column: 11)
!892 = !DILocation(line: 191, column: 40, scope: !891)
!893 = !DILocation(line: 191, column: 11, scope: !884)
!894 = !DILocation(line: 192, column: 39, scope: !891)
!895 = !DILocation(line: 193, column: 16, scope: !891)
!896 = !DILocation(line: 192, column: 9, scope: !891)
!897 = !DILocation(line: 195, column: 11, scope: !884)
!898 = !DILocation(line: 196, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !884, file: !162, line: 195, column: 11)
!900 = !DILocation(line: 205, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !763, file: !162, line: 205, column: 7)
!902 = !DILocalVariable(name: "__stream", arg: 1, scope: !903, file: !904, line: 135, type: !907)
!903 = distinct !DISubprogram(name: "ferror_unlocked", scope: !904, file: !904, line: 135, type: !905, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !910)
!904 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!905 = !DISubroutineType(types: !906)
!906 = !{!23, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !909, line: 7, baseType: !708)
!909 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!910 = !{!902}
!911 = !DILocation(line: 0, scope: !903, inlinedAt: !912)
!912 = distinct !DILocation(line: 205, column: 7, scope: !901)
!913 = !DILocation(line: 137, column: 10, scope: !903, inlinedAt: !912)
!914 = !{!915, !812, i64 0}
!915 = !{!"_IO_FILE", !812, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !812, i64 112, !812, i64 116, !916, i64 120, !917, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !916, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !916, i64 184, !812, i64 192, !638, i64 196}
!916 = !{!"long", !638, i64 0}
!917 = !{!"short", !638, i64 0}
!918 = !DILocation(line: 205, column: 7, scope: !763)
!919 = !DILocation(line: 208, column: 3, scope: !763)
!920 = !DILocation(line: 210, column: 23, scope: !763)
!921 = !DILocation(line: 210, column: 21, scope: !763)
!922 = !DILocation(line: 211, column: 11, scope: !763)
!923 = !DILocation(line: 211, column: 3, scope: !763)
!924 = !DILocation(line: 212, column: 21, scope: !763)
!925 = !DILocation(line: 212, column: 27, scope: !763)
!926 = !DILocation(line: 221, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !763, file: !162, line: 221, column: 7)
!928 = !DILocation(line: 221, column: 45, scope: !927)
!929 = !DILocation(line: 221, column: 7, scope: !763)
!930 = !DILocation(line: 222, column: 28, scope: !927)
!931 = !DILocation(line: 222, column: 59, scope: !927)
!932 = !DILocation(line: 222, column: 5, scope: !927)
!933 = !DILocation(line: 225, column: 1, scope: !763)
!934 = !DISubprogram(name: "bindtextdomain", scope: !700, file: !700, line: 86, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!935 = !DISubroutineType(types: !936)
!936 = !{!47, !6, !6}
!937 = !DISubprogram(name: "textdomain", scope: !700, file: !700, line: 82, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!938 = !DISubroutineType(types: !939)
!939 = !{!47, !6}
!940 = !DISubprogram(name: "getenv", scope: !941, file: !941, line: 634, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!941 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!942 = !DISubprogram(name: "atexit", scope: !941, file: !941, line: 595, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!943 = !DISubroutineType(types: !944)
!944 = !{!23, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null}
!948 = !DISubprogram(name: "error", scope: !949, file: !949, line: 52, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!949 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!950 = !DISubroutineType(types: !951)
!951 = !{null, !23, !23, !6, null}
!952 = !DISubprogram(name: "isatty", scope: !953, file: !953, line: 791, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!953 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!954 = !DISubroutineType(types: !955)
!955 = !{!23, !23}
!956 = !DISubprogram(name: "umask", scope: !957, file: !957, line: 308, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!957 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!958 = !DISubroutineType(types: !959)
!959 = !{!56, !56}
!960 = !DISubprogram(name: "open", scope: !961, file: !961, line: 196, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!961 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!962 = !DISubroutineType(types: !963)
!963 = !{!23, !6, !23, null}
!964 = !DISubprogram(name: "dup2", scope: !953, file: !953, line: 545, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!965 = !DISubprogram(name: "close", scope: !953, file: !953, line: 353, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!966 = !DISubprogram(name: "signal", scope: !176, file: !176, line: 88, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!967 = !DISubroutineType(types: !968)
!968 = !{!177, !23, !177}
!969 = !DISubprogram(name: "execvp", scope: !953, file: !953, line: 589, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!970 = !DISubroutineType(types: !971)
!971 = !{!23, !6, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!974 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !649, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !975)
!975 = !{!976}
!976 = !DILocalVariable(name: "file", arg: 1, scope: !974, file: !12, line: 51, type: !6)
!977 = !DILocation(line: 0, scope: !974)
!978 = !DILocation(line: 53, column: 13, scope: !974)
!979 = !DILocation(line: 54, column: 1, scope: !974)
!980 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !981, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !16}
!983 = !{!984}
!984 = !DILocalVariable(name: "ignore", arg: 1, scope: !980, file: !12, line: 88, type: !16)
!985 = !DILocation(line: 0, scope: !980)
!986 = !DILocation(line: 90, column: 16, scope: !980)
!987 = !{!988, !988, i64 0}
!988 = !{!"_Bool", !638, i64 0}
!989 = !DILocation(line: 91, column: 1, scope: !980)
!990 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !946, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !991)
!991 = !{!992}
!992 = !DILocalVariable(name: "write_error", scope: !993, file: !12, line: 122, type: !6)
!993 = distinct !DILexicalBlock(scope: !994, file: !12, line: 121, column: 5)
!994 = distinct !DILexicalBlock(scope: !990, file: !12, line: 119, column: 7)
!995 = !DILocation(line: 119, column: 21, scope: !994)
!996 = !DILocation(line: 119, column: 7, scope: !994)
!997 = !DILocation(line: 119, column: 29, scope: !994)
!998 = !DILocation(line: 120, column: 7, scope: !994)
!999 = !DILocation(line: 120, column: 12, scope: !994)
!1000 = !{i8 0, i8 2}
!1001 = !DILocation(line: 120, column: 25, scope: !994)
!1002 = !DILocation(line: 120, column: 28, scope: !994)
!1003 = !DILocation(line: 120, column: 34, scope: !994)
!1004 = !DILocation(line: 119, column: 7, scope: !990)
!1005 = !DILocation(line: 122, column: 33, scope: !993)
!1006 = !DILocation(line: 0, scope: !993)
!1007 = !DILocation(line: 123, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !993, file: !12, line: 123, column: 11)
!1009 = !DILocation(line: 0, scope: !1008)
!1010 = !DILocation(line: 123, column: 11, scope: !993)
!1011 = !DILocation(line: 124, column: 36, scope: !1008)
!1012 = !DILocation(line: 124, column: 9, scope: !1008)
!1013 = !DILocation(line: 127, column: 9, scope: !1008)
!1014 = !DILocation(line: 129, column: 14, scope: !993)
!1015 = !DILocation(line: 129, column: 7, scope: !993)
!1016 = !DILocation(line: 134, column: 42, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !990, file: !12, line: 134, column: 7)
!1018 = !DILocation(line: 134, column: 28, scope: !1017)
!1019 = !DILocation(line: 134, column: 50, scope: !1017)
!1020 = !DILocation(line: 134, column: 7, scope: !990)
!1021 = !DILocation(line: 135, column: 12, scope: !1017)
!1022 = !DILocation(line: 135, column: 5, scope: !1017)
!1023 = !DILocation(line: 136, column: 1, scope: !990)
!1024 = distinct !DISubprogram(name: "fd_reopen", scope: !181, file: !181, line: 32, type: !1025, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !180, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!23, !23, !6, !23, !783}
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1036}
!1028 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1024, file: !181, line: 32, type: !23)
!1029 = !DILocalVariable(name: "file", arg: 2, scope: !1024, file: !181, line: 32, type: !6)
!1030 = !DILocalVariable(name: "flags", arg: 3, scope: !1024, file: !181, line: 32, type: !23)
!1031 = !DILocalVariable(name: "mode", arg: 4, scope: !1024, file: !181, line: 32, type: !783)
!1032 = !DILocalVariable(name: "fd", scope: !1024, file: !181, line: 34, type: !23)
!1033 = !DILocalVariable(name: "fd2", scope: !1034, file: !181, line: 40, type: !23)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !181, line: 39, column: 5)
!1035 = distinct !DILexicalBlock(scope: !1024, file: !181, line: 36, column: 7)
!1036 = !DILocalVariable(name: "saved_errno", scope: !1034, file: !181, line: 41, type: !23)
!1037 = !DILocation(line: 0, scope: !1024)
!1038 = !DILocation(line: 34, column: 12, scope: !1024)
!1039 = !DILocation(line: 36, column: 10, scope: !1035)
!1040 = !DILocation(line: 36, column: 24, scope: !1035)
!1041 = !DILocation(line: 40, column: 17, scope: !1034)
!1042 = !DILocation(line: 0, scope: !1034)
!1043 = !DILocation(line: 41, column: 25, scope: !1034)
!1044 = !DILocation(line: 42, column: 7, scope: !1034)
!1045 = !DILocation(line: 43, column: 13, scope: !1034)
!1046 = !DILocation(line: 0, scope: !1035)
!1047 = !DILocation(line: 46, column: 1, scope: !1024)
!1048 = distinct !DISubprogram(name: "file_name_concat", scope: !183, file: !183, line: 35, type: !1049, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!47, !6, !6, !766}
!1051 = !{!1052, !1053, !1054, !1055}
!1052 = !DILocalVariable(name: "dir", arg: 1, scope: !1048, file: !183, line: 35, type: !6)
!1053 = !DILocalVariable(name: "base", arg: 2, scope: !1048, file: !183, line: 35, type: !6)
!1054 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1048, file: !183, line: 35, type: !766)
!1055 = !DILocalVariable(name: "p", scope: !1048, file: !183, line: 37, type: !47)
!1056 = !DILocation(line: 0, scope: !1048)
!1057 = !DILocation(line: 37, column: 13, scope: !1048)
!1058 = !DILocation(line: 38, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1048, file: !183, line: 38, column: 7)
!1060 = !DILocation(line: 38, column: 7, scope: !1048)
!1061 = !DILocation(line: 39, column: 5, scope: !1059)
!1062 = !DILocation(line: 40, column: 3, scope: !1048)
!1063 = distinct !DISubprogram(name: "mfile_name_concat", scope: !186, file: !186, line: 47, type: !1049, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1065 = !DILocalVariable(name: "dir", arg: 1, scope: !1063, file: !186, line: 47, type: !6)
!1066 = !DILocalVariable(name: "base", arg: 2, scope: !1063, file: !186, line: 47, type: !6)
!1067 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1063, file: !186, line: 47, type: !766)
!1068 = !DILocalVariable(name: "dirbase", scope: !1063, file: !186, line: 49, type: !6)
!1069 = !DILocalVariable(name: "dirbaselen", scope: !1063, file: !186, line: 50, type: !91)
!1070 = !DILocalVariable(name: "dirlen", scope: !1063, file: !186, line: 51, type: !91)
!1071 = !DILocalVariable(name: "baselen", scope: !1063, file: !186, line: 52, type: !91)
!1072 = !DILocalVariable(name: "sep", scope: !1063, file: !186, line: 53, type: !8)
!1073 = !DILocalVariable(name: "p_concat", scope: !1063, file: !186, line: 70, type: !47)
!1074 = !DILocalVariable(name: "p", scope: !1063, file: !186, line: 71, type: !47)
!1075 = !DILocation(line: 0, scope: !1063)
!1076 = !DILocation(line: 49, column: 25, scope: !1063)
!1077 = !DILocation(line: 50, column: 23, scope: !1063)
!1078 = !DILocation(line: 51, column: 27, scope: !1063)
!1079 = !DILocation(line: 51, column: 33, scope: !1063)
!1080 = !DILocation(line: 52, column: 20, scope: !1063)
!1081 = !DILocation(line: 54, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1063, file: !186, line: 54, column: 7)
!1083 = !DILocation(line: 54, column: 7, scope: !1063)
!1084 = !DILocation(line: 57, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !186, line: 57, column: 11)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !186, line: 55, column: 5)
!1087 = !{!638, !638, i64 0}
!1088 = !DILocation(line: 57, column: 39, scope: !1085)
!1089 = !DILocation(line: 57, column: 44, scope: !1085)
!1090 = !DILocation(line: 57, column: 11, scope: !1086)
!1091 = !DILocation(line: 60, column: 12, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1082, file: !186, line: 60, column: 12)
!1093 = !DILocation(line: 60, column: 12, scope: !1082)
!1094 = !DILocation(line: 70, column: 35, scope: !1063)
!1095 = !DILocation(line: 70, column: 52, scope: !1063)
!1096 = !DILocation(line: 70, column: 62, scope: !1063)
!1097 = !DILocation(line: 70, column: 20, scope: !1063)
!1098 = !DILocation(line: 73, column: 16, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1063, file: !186, line: 73, column: 7)
!1100 = !DILocation(line: 73, column: 7, scope: !1063)
!1101 = !DILocalVariable(name: "__dest", arg: 1, scope: !1102, file: !1103, line: 42, type: !1106)
!1102 = distinct !DISubprogram(name: "mempcpy", scope: !1103, file: !1103, line: 42, type: !1104, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1110)
!1103 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!46, !1106, !1107, !91}
!1106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!1107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1110 = !{!1101, !1111, !1112}
!1111 = !DILocalVariable(name: "__src", arg: 2, scope: !1102, file: !1103, line: 42, type: !1107)
!1112 = !DILocalVariable(name: "__len", arg: 3, scope: !1102, file: !1103, line: 42, type: !91)
!1113 = !DILocation(line: 0, scope: !1102, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 76, column: 7, scope: !1063)
!1115 = !DILocation(line: 45, column: 10, scope: !1102, inlinedAt: !1114)
!1116 = !DILocation(line: 77, column: 6, scope: !1063)
!1117 = !DILocation(line: 78, column: 5, scope: !1063)
!1118 = !DILocation(line: 80, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1063, file: !186, line: 80, column: 7)
!1120 = !DILocation(line: 80, column: 7, scope: !1063)
!1121 = !DILocation(line: 81, column: 21, scope: !1119)
!1122 = !DILocation(line: 81, column: 5, scope: !1119)
!1123 = !DILocation(line: 0, scope: !1102, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 83, column: 7, scope: !1063)
!1125 = !DILocation(line: 45, column: 10, scope: !1102, inlinedAt: !1124)
!1126 = !DILocation(line: 84, column: 6, scope: !1063)
!1127 = !DILocation(line: 86, column: 3, scope: !1063)
!1128 = !DILocation(line: 87, column: 1, scope: !1063)
!1129 = distinct !DISubprogram(name: "parse_long_options", scope: !27, file: !27, line: 45, type: !1130, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !23, !766, !6, !6, !6, !177, null}
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141}
!1133 = !DILocalVariable(name: "argc", arg: 1, scope: !1129, file: !27, line: 45, type: !23)
!1134 = !DILocalVariable(name: "argv", arg: 2, scope: !1129, file: !27, line: 46, type: !766)
!1135 = !DILocalVariable(name: "command_name", arg: 3, scope: !1129, file: !27, line: 47, type: !6)
!1136 = !DILocalVariable(name: "package", arg: 4, scope: !1129, file: !27, line: 48, type: !6)
!1137 = !DILocalVariable(name: "version", arg: 5, scope: !1129, file: !27, line: 49, type: !6)
!1138 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1129, file: !27, line: 50, type: !177)
!1139 = !DILocalVariable(name: "c", scope: !1129, file: !27, line: 53, type: !23)
!1140 = !DILocalVariable(name: "saved_opterr", scope: !1129, file: !27, line: 54, type: !23)
!1141 = !DILocalVariable(name: "authors", scope: !1142, file: !27, line: 72, type: !1146)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !27, line: 71, column: 11)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !27, line: 65, column: 9)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !27, line: 63, column: 5)
!1145 = distinct !DILexicalBlock(scope: !1129, file: !27, line: 61, column: 7)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !704, line: 52, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1148, line: 32, baseType: !1149)
!1148 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !27, baseType: !1150)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1151, size: 192, elements: !738)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1151, file: !27, line: 72, baseType: !56, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1151, file: !27, line: 72, baseType: !56, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1151, file: !27, line: 72, baseType: !46, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1151, file: !27, line: 72, baseType: !46, size: 64, offset: 128)
!1157 = !DILocation(line: 0, scope: !1129)
!1158 = !DILocation(line: 56, column: 18, scope: !1129)
!1159 = !DILocation(line: 59, column: 10, scope: !1129)
!1160 = !DILocation(line: 61, column: 12, scope: !1145)
!1161 = !DILocation(line: 62, column: 7, scope: !1145)
!1162 = !DILocation(line: 62, column: 15, scope: !1145)
!1163 = !DILocation(line: 61, column: 7, scope: !1129)
!1164 = !DILocation(line: 67, column: 11, scope: !1143)
!1165 = !DILocation(line: 68, column: 11, scope: !1143)
!1166 = !DILocation(line: 72, column: 13, scope: !1142)
!1167 = !DILocation(line: 72, column: 21, scope: !1142)
!1168 = !DILocation(line: 73, column: 13, scope: !1142)
!1169 = !DILocation(line: 74, column: 29, scope: !1142)
!1170 = !DILocation(line: 74, column: 13, scope: !1142)
!1171 = !DILocation(line: 75, column: 13, scope: !1142)
!1172 = !DILocation(line: 85, column: 10, scope: !1129)
!1173 = !DILocation(line: 89, column: 10, scope: !1129)
!1174 = !DILocation(line: 90, column: 1, scope: !1129)
!1175 = !DISubprogram(name: "getopt_long", scope: !32, file: !32, line: 66, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!23, !23, !972, !6, !1178, !37}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1179 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !27, file: !27, line: 98, type: !1180, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !23, !766, !6, !6, !6, !16, !177, null}
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193}
!1183 = !DILocalVariable(name: "argc", arg: 1, scope: !1179, file: !27, line: 98, type: !23)
!1184 = !DILocalVariable(name: "argv", arg: 2, scope: !1179, file: !27, line: 99, type: !766)
!1185 = !DILocalVariable(name: "command_name", arg: 3, scope: !1179, file: !27, line: 100, type: !6)
!1186 = !DILocalVariable(name: "package", arg: 4, scope: !1179, file: !27, line: 101, type: !6)
!1187 = !DILocalVariable(name: "version", arg: 5, scope: !1179, file: !27, line: 102, type: !6)
!1188 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1179, file: !27, line: 103, type: !16)
!1189 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1179, file: !27, line: 104, type: !177)
!1190 = !DILocalVariable(name: "c", scope: !1179, file: !27, line: 107, type: !23)
!1191 = !DILocalVariable(name: "saved_opterr", scope: !1179, file: !27, line: 108, type: !23)
!1192 = !DILocalVariable(name: "optstring", scope: !1179, file: !27, line: 113, type: !6)
!1193 = !DILocalVariable(name: "authors", scope: !1194, file: !27, line: 125, type: !1146)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !27, line: 124, column: 11)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !27, line: 118, column: 9)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !27, line: 116, column: 5)
!1197 = distinct !DILexicalBlock(scope: !1179, file: !27, line: 115, column: 7)
!1198 = !DILocation(line: 0, scope: !1179)
!1199 = !DILocation(line: 108, column: 22, scope: !1179)
!1200 = !DILocation(line: 111, column: 10, scope: !1179)
!1201 = !DILocation(line: 113, column: 27, scope: !1179)
!1202 = !DILocation(line: 115, column: 12, scope: !1197)
!1203 = !DILocation(line: 115, column: 7, scope: !1179)
!1204 = !DILocation(line: 125, column: 13, scope: !1194)
!1205 = !DILocation(line: 125, column: 21, scope: !1194)
!1206 = !DILocation(line: 126, column: 13, scope: !1194)
!1207 = !DILocation(line: 127, column: 29, scope: !1194)
!1208 = !DILocation(line: 127, column: 13, scope: !1194)
!1209 = !DILocation(line: 128, column: 13, scope: !1194)
!1210 = !DILocation(line: 132, column: 26, scope: !1195)
!1211 = !DILocation(line: 133, column: 11, scope: !1195)
!1212 = !DILocation(line: 0, scope: !1195)
!1213 = !DILocation(line: 138, column: 10, scope: !1179)
!1214 = !DILocation(line: 139, column: 1, scope: !1179)
!1215 = distinct !DISubprogram(name: "set_program_name", scope: !44, file: !44, line: 39, type: !649, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DILocalVariable(name: "argv0", arg: 1, scope: !1215, file: !44, line: 39, type: !6)
!1218 = !DILocalVariable(name: "slash", scope: !1215, file: !44, line: 46, type: !6)
!1219 = !DILocalVariable(name: "base", scope: !1215, file: !44, line: 47, type: !6)
!1220 = !DILocation(line: 0, scope: !1215)
!1221 = !DILocation(line: 51, column: 13, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !44, line: 51, column: 7)
!1223 = !DILocation(line: 51, column: 7, scope: !1215)
!1224 = !DILocation(line: 55, column: 14, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !44, line: 52, column: 5)
!1226 = !DILocation(line: 54, column: 7, scope: !1225)
!1227 = !DILocation(line: 56, column: 7, scope: !1225)
!1228 = !DILocation(line: 59, column: 11, scope: !1215)
!1229 = !DILocation(line: 60, column: 17, scope: !1215)
!1230 = !DILocation(line: 60, column: 11, scope: !1215)
!1231 = !DILocation(line: 61, column: 12, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1215, file: !44, line: 61, column: 7)
!1233 = !DILocation(line: 61, column: 20, scope: !1232)
!1234 = !DILocation(line: 61, column: 25, scope: !1232)
!1235 = !DILocation(line: 61, column: 42, scope: !1232)
!1236 = !DILocation(line: 61, column: 28, scope: !1232)
!1237 = !DILocation(line: 61, column: 61, scope: !1232)
!1238 = !DILocation(line: 61, column: 7, scope: !1215)
!1239 = !DILocation(line: 64, column: 11, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !44, line: 64, column: 11)
!1241 = distinct !DILexicalBlock(scope: !1232, file: !44, line: 62, column: 5)
!1242 = !DILocation(line: 64, column: 36, scope: !1240)
!1243 = !DILocation(line: 64, column: 11, scope: !1241)
!1244 = !DILocation(line: 66, column: 24, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !44, line: 65, column: 9)
!1246 = !DILocation(line: 70, column: 41, scope: !1245)
!1247 = !DILocation(line: 72, column: 9, scope: !1245)
!1248 = !DILocation(line: 84, column: 16, scope: !1215)
!1249 = !DILocation(line: 90, column: 27, scope: !1215)
!1250 = !DILocation(line: 92, column: 1, scope: !1215)
!1251 = distinct !DISubprogram(name: "clone_quoting_options", scope: !52, file: !52, line: 122, type: !1252, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1255)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!1254, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1255 = !{!1256, !1257, !1258}
!1256 = !DILocalVariable(name: "o", arg: 1, scope: !1251, file: !52, line: 122, type: !1254)
!1257 = !DILocalVariable(name: "e", scope: !1251, file: !52, line: 124, type: !23)
!1258 = !DILocalVariable(name: "p", scope: !1251, file: !52, line: 125, type: !1254)
!1259 = !DILocation(line: 0, scope: !1251)
!1260 = !DILocation(line: 124, column: 11, scope: !1251)
!1261 = !DILocation(line: 125, column: 40, scope: !1251)
!1262 = !DILocation(line: 125, column: 31, scope: !1251)
!1263 = !DILocation(line: 127, column: 9, scope: !1251)
!1264 = !DILocation(line: 128, column: 3, scope: !1251)
!1265 = distinct !DISubprogram(name: "get_quoting_style", scope: !52, file: !52, line: 133, type: !1266, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1270)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!54, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1270 = !{!1271}
!1271 = !DILocalVariable(name: "o", arg: 1, scope: !1265, file: !52, line: 133, type: !1268)
!1272 = !DILocation(line: 0, scope: !1265)
!1273 = !DILocation(line: 135, column: 11, scope: !1265)
!1274 = !DILocation(line: 135, column: 46, scope: !1265)
!1275 = !{!1276, !638, i64 0}
!1276 = !{!"quoting_options", !638, i64 0, !812, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!1277 = !DILocation(line: 135, column: 3, scope: !1265)
!1278 = distinct !DISubprogram(name: "set_quoting_style", scope: !52, file: !52, line: 141, type: !1279, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !1254, !54}
!1281 = !{!1282, !1283}
!1282 = !DILocalVariable(name: "o", arg: 1, scope: !1278, file: !52, line: 141, type: !1254)
!1283 = !DILocalVariable(name: "s", arg: 2, scope: !1278, file: !52, line: 141, type: !54)
!1284 = !DILocation(line: 0, scope: !1278)
!1285 = !DILocation(line: 143, column: 4, scope: !1278)
!1286 = !DILocation(line: 143, column: 39, scope: !1278)
!1287 = !DILocation(line: 143, column: 45, scope: !1278)
!1288 = !DILocation(line: 144, column: 1, scope: !1278)
!1289 = distinct !DISubprogram(name: "set_char_quoting", scope: !52, file: !52, line: 152, type: !1290, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!23, !1254, !8, !23}
!1292 = !{!1293, !1294, !1295, !1296, !1298, !1300, !1301}
!1293 = !DILocalVariable(name: "o", arg: 1, scope: !1289, file: !52, line: 152, type: !1254)
!1294 = !DILocalVariable(name: "c", arg: 2, scope: !1289, file: !52, line: 152, type: !8)
!1295 = !DILocalVariable(name: "i", arg: 3, scope: !1289, file: !52, line: 152, type: !23)
!1296 = !DILocalVariable(name: "uc", scope: !1289, file: !52, line: 154, type: !1297)
!1297 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1298 = !DILocalVariable(name: "p", scope: !1289, file: !52, line: 155, type: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1300 = !DILocalVariable(name: "shift", scope: !1289, file: !52, line: 157, type: !23)
!1301 = !DILocalVariable(name: "r", scope: !1289, file: !52, line: 158, type: !23)
!1302 = !DILocation(line: 0, scope: !1289)
!1303 = !DILocation(line: 156, column: 6, scope: !1289)
!1304 = !DILocation(line: 156, column: 62, scope: !1289)
!1305 = !DILocation(line: 156, column: 57, scope: !1289)
!1306 = !DILocation(line: 157, column: 15, scope: !1289)
!1307 = !DILocation(line: 158, column: 12, scope: !1289)
!1308 = !DILocation(line: 158, column: 15, scope: !1289)
!1309 = !DILocation(line: 158, column: 25, scope: !1289)
!1310 = !DILocation(line: 159, column: 13, scope: !1289)
!1311 = !DILocation(line: 159, column: 18, scope: !1289)
!1312 = !DILocation(line: 159, column: 23, scope: !1289)
!1313 = !DILocation(line: 159, column: 6, scope: !1289)
!1314 = !DILocation(line: 160, column: 3, scope: !1289)
!1315 = distinct !DISubprogram(name: "set_quoting_flags", scope: !52, file: !52, line: 168, type: !1316, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!23, !1254, !23}
!1318 = !{!1319, !1320, !1321}
!1319 = !DILocalVariable(name: "o", arg: 1, scope: !1315, file: !52, line: 168, type: !1254)
!1320 = !DILocalVariable(name: "i", arg: 2, scope: !1315, file: !52, line: 168, type: !23)
!1321 = !DILocalVariable(name: "r", scope: !1315, file: !52, line: 170, type: !23)
!1322 = !DILocation(line: 0, scope: !1315)
!1323 = !DILocation(line: 171, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1315, file: !52, line: 171, column: 7)
!1325 = !DILocation(line: 171, column: 7, scope: !1315)
!1326 = !DILocation(line: 173, column: 10, scope: !1315)
!1327 = !{!1276, !812, i64 4}
!1328 = !DILocation(line: 174, column: 12, scope: !1315)
!1329 = !DILocation(line: 175, column: 3, scope: !1315)
!1330 = distinct !DISubprogram(name: "set_custom_quoting", scope: !52, file: !52, line: 179, type: !1331, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !1254, !6, !6}
!1333 = !{!1334, !1335, !1336}
!1334 = !DILocalVariable(name: "o", arg: 1, scope: !1330, file: !52, line: 179, type: !1254)
!1335 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1330, file: !52, line: 180, type: !6)
!1336 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1330, file: !52, line: 180, type: !6)
!1337 = !DILocation(line: 0, scope: !1330)
!1338 = !DILocation(line: 182, column: 8, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !52, line: 182, column: 7)
!1340 = !DILocation(line: 182, column: 7, scope: !1330)
!1341 = !DILocation(line: 184, column: 6, scope: !1330)
!1342 = !DILocation(line: 184, column: 12, scope: !1330)
!1343 = !DILocation(line: 185, column: 8, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1330, file: !52, line: 185, column: 7)
!1345 = !DILocation(line: 185, column: 19, scope: !1344)
!1346 = !DILocation(line: 186, column: 5, scope: !1344)
!1347 = !DILocation(line: 187, column: 6, scope: !1330)
!1348 = !DILocation(line: 187, column: 17, scope: !1330)
!1349 = !{!1276, !637, i64 40}
!1350 = !DILocation(line: 188, column: 6, scope: !1330)
!1351 = !DILocation(line: 188, column: 18, scope: !1330)
!1352 = !{!1276, !637, i64 48}
!1353 = !DILocation(line: 189, column: 1, scope: !1330)
!1354 = distinct !DISubprogram(name: "quotearg_buffer", scope: !52, file: !52, line: 784, type: !1355, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!91, !47, !91, !6, !91, !1268}
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365}
!1358 = !DILocalVariable(name: "buffer", arg: 1, scope: !1354, file: !52, line: 784, type: !47)
!1359 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1354, file: !52, line: 784, type: !91)
!1360 = !DILocalVariable(name: "arg", arg: 3, scope: !1354, file: !52, line: 785, type: !6)
!1361 = !DILocalVariable(name: "argsize", arg: 4, scope: !1354, file: !52, line: 785, type: !91)
!1362 = !DILocalVariable(name: "o", arg: 5, scope: !1354, file: !52, line: 786, type: !1268)
!1363 = !DILocalVariable(name: "p", scope: !1354, file: !52, line: 788, type: !1268)
!1364 = !DILocalVariable(name: "e", scope: !1354, file: !52, line: 789, type: !23)
!1365 = !DILocalVariable(name: "r", scope: !1354, file: !52, line: 790, type: !91)
!1366 = !DILocation(line: 0, scope: !1354)
!1367 = !DILocation(line: 788, column: 37, scope: !1354)
!1368 = !DILocation(line: 789, column: 11, scope: !1354)
!1369 = !DILocation(line: 791, column: 43, scope: !1354)
!1370 = !DILocation(line: 791, column: 53, scope: !1354)
!1371 = !DILocation(line: 791, column: 60, scope: !1354)
!1372 = !DILocation(line: 792, column: 43, scope: !1354)
!1373 = !DILocation(line: 792, column: 58, scope: !1354)
!1374 = !DILocation(line: 790, column: 14, scope: !1354)
!1375 = !DILocation(line: 793, column: 9, scope: !1354)
!1376 = !DILocation(line: 794, column: 3, scope: !1354)
!1377 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !52, file: !52, line: 256, type: !1378, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1382)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!91, !47, !91, !6, !91, !54, !23, !1380, !6, !6}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1407, !1408, !1409, !1410, !1411, !1414, !1415, !1433, !1436, !1437, !1444, !1447, !1448, !1449, !1450, !1451, !1452}
!1383 = !DILocalVariable(name: "buffer", arg: 1, scope: !1377, file: !52, line: 256, type: !47)
!1384 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1377, file: !52, line: 256, type: !91)
!1385 = !DILocalVariable(name: "arg", arg: 3, scope: !1377, file: !52, line: 257, type: !6)
!1386 = !DILocalVariable(name: "argsize", arg: 4, scope: !1377, file: !52, line: 257, type: !91)
!1387 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1377, file: !52, line: 258, type: !54)
!1388 = !DILocalVariable(name: "flags", arg: 6, scope: !1377, file: !52, line: 258, type: !23)
!1389 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1377, file: !52, line: 259, type: !1380)
!1390 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1377, file: !52, line: 260, type: !6)
!1391 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1377, file: !52, line: 261, type: !6)
!1392 = !DILocalVariable(name: "i", scope: !1377, file: !52, line: 263, type: !91)
!1393 = !DILocalVariable(name: "len", scope: !1377, file: !52, line: 264, type: !91)
!1394 = !DILocalVariable(name: "orig_buffersize", scope: !1377, file: !52, line: 265, type: !91)
!1395 = !DILocalVariable(name: "quote_string", scope: !1377, file: !52, line: 266, type: !6)
!1396 = !DILocalVariable(name: "quote_string_len", scope: !1377, file: !52, line: 267, type: !91)
!1397 = !DILocalVariable(name: "backslash_escapes", scope: !1377, file: !52, line: 268, type: !16)
!1398 = !DILocalVariable(name: "unibyte_locale", scope: !1377, file: !52, line: 269, type: !16)
!1399 = !DILocalVariable(name: "elide_outer_quotes", scope: !1377, file: !52, line: 270, type: !16)
!1400 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1377, file: !52, line: 271, type: !16)
!1401 = !DILocalVariable(name: "encountered_single_quote", scope: !1377, file: !52, line: 272, type: !16)
!1402 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1377, file: !52, line: 273, type: !16)
!1403 = !DILocalVariable(name: "c", scope: !1404, file: !52, line: 402, type: !1297)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !52, line: 401, column: 5)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !52, line: 400, column: 3)
!1406 = distinct !DILexicalBlock(scope: !1377, file: !52, line: 400, column: 3)
!1407 = !DILocalVariable(name: "esc", scope: !1404, file: !52, line: 403, type: !1297)
!1408 = !DILocalVariable(name: "is_right_quote", scope: !1404, file: !52, line: 404, type: !16)
!1409 = !DILocalVariable(name: "escaping", scope: !1404, file: !52, line: 405, type: !16)
!1410 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1404, file: !52, line: 406, type: !16)
!1411 = !DILocalVariable(name: "m", scope: !1412, file: !52, line: 610, type: !91)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 608, column: 11)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !52, line: 426, column: 9)
!1414 = !DILocalVariable(name: "printable", scope: !1412, file: !52, line: 612, type: !16)
!1415 = !DILocalVariable(name: "mbstate", scope: !1416, file: !52, line: 621, type: !1418)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !52, line: 620, column: 15)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !52, line: 614, column: 17)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1419, line: 6, baseType: !1420)
!1419 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1421, line: 21, baseType: !1422)
!1421 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1421, line: 13, size: 64, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1422, file: !1421, line: 15, baseType: !23, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1422, file: !1421, line: 20, baseType: !1426, size: 32, offset: 32)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !1421, line: 16, size: 32, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1426, file: !1421, line: 18, baseType: !56, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1426, file: !1421, line: 19, baseType: !1430, size: 32)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 4)
!1433 = !DILocalVariable(name: "w", scope: !1434, file: !52, line: 631, type: !1435)
!1434 = distinct !DILexicalBlock(scope: !1416, file: !52, line: 630, column: 19)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !92, line: 74, baseType: !23)
!1436 = !DILocalVariable(name: "bytes", scope: !1434, file: !52, line: 632, type: !91)
!1437 = !DILocalVariable(name: "j", scope: !1438, file: !52, line: 657, type: !91)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !52, line: 656, column: 27)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !52, line: 654, column: 29)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !52, line: 649, column: 23)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !52, line: 641, column: 30)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !52, line: 636, column: 30)
!1443 = distinct !DILexicalBlock(scope: !1434, file: !52, line: 634, column: 25)
!1444 = !DILocalVariable(name: "ilim", scope: !1445, file: !52, line: 684, type: !91)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !52, line: 681, column: 15)
!1446 = distinct !DILexicalBlock(scope: !1412, file: !52, line: 680, column: 17)
!1447 = !DILabel(scope: !1377, name: "process_input", file: !52, line: 314)
!1448 = !DILabel(scope: !1413, name: "c_and_shell_escape", file: !52, line: 512)
!1449 = !DILabel(scope: !1413, name: "c_escape", file: !52, line: 517)
!1450 = !DILabel(scope: !1404, name: "store_escape", file: !52, line: 719)
!1451 = !DILabel(scope: !1404, name: "store_c", file: !52, line: 722)
!1452 = !DILabel(scope: !1377, name: "force_outer_quoting_style", file: !52, line: 763)
!1453 = !DILocation(line: 0, scope: !1377)
!1454 = !DILocation(line: 269, column: 25, scope: !1377)
!1455 = !DILocation(line: 269, column: 36, scope: !1377)
!1456 = !DILocation(line: 270, column: 8, scope: !1377)
!1457 = !DILocation(line: 273, column: 3, scope: !1377)
!1458 = !DILocation(line: 265, column: 10, scope: !1377)
!1459 = !DILocation(line: 266, column: 15, scope: !1377)
!1460 = !DILocation(line: 267, column: 10, scope: !1377)
!1461 = !DILocation(line: 268, column: 8, scope: !1377)
!1462 = !DILocation(line: 271, column: 8, scope: !1377)
!1463 = !DILocation(line: 272, column: 8, scope: !1377)
!1464 = !DILocation(line: 273, column: 8, scope: !1377)
!1465 = !DILocation(line: 314, column: 2, scope: !1377)
!1466 = !DILocation(line: 316, column: 3, scope: !1377)
!1467 = !DILocation(line: 323, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1377, file: !52, line: 317, column: 5)
!1469 = !DILocation(line: 323, column: 12, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1468, file: !52, line: 323, column: 11)
!1471 = !DILocation(line: 324, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !52, line: 324, column: 9)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !52, line: 324, column: 9)
!1474 = !DILocation(line: 324, column: 9, scope: !1473)
!1475 = !DILocation(line: 362, column: 26, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !52, line: 340, column: 11)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !52, line: 339, column: 13)
!1478 = distinct !DILexicalBlock(scope: !1468, file: !52, line: 338, column: 7)
!1479 = !DILocation(line: 363, column: 27, scope: !1476)
!1480 = !DILocation(line: 364, column: 11, scope: !1476)
!1481 = !DILocation(line: 365, column: 14, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !52, line: 365, column: 13)
!1483 = !DILocation(line: 365, column: 13, scope: !1478)
!1484 = !DILocation(line: 366, column: 43, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !52, line: 366, column: 11)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !52, line: 366, column: 11)
!1487 = !DILocation(line: 366, column: 11, scope: !1486)
!1488 = !DILocation(line: 367, column: 13, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !52, line: 367, column: 13)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !52, line: 367, column: 13)
!1491 = !DILocation(line: 367, column: 13, scope: !1490)
!1492 = !DILocation(line: 366, column: 70, scope: !1485)
!1493 = distinct !{!1493, !1487, !1494, !679}
!1494 = !DILocation(line: 367, column: 13, scope: !1486)
!1495 = !DILocation(line: 264, column: 10, scope: !1377)
!1496 = !DILocation(line: 370, column: 28, scope: !1478)
!1497 = !DILocation(line: 372, column: 7, scope: !1468)
!1498 = !DILocation(line: 376, column: 7, scope: !1468)
!1499 = !DILocation(line: 379, column: 7, scope: !1468)
!1500 = !DILocation(line: 381, column: 12, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1468, file: !52, line: 381, column: 11)
!1502 = !DILocation(line: 381, column: 11, scope: !1468)
!1503 = !DILocation(line: 386, column: 12, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1468, file: !52, line: 386, column: 11)
!1505 = !DILocation(line: 386, column: 11, scope: !1468)
!1506 = !DILocation(line: 387, column: 9, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !52, line: 387, column: 9)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !52, line: 387, column: 9)
!1509 = !DILocation(line: 387, column: 9, scope: !1508)
!1510 = !DILocation(line: 394, column: 7, scope: !1468)
!1511 = !DILocation(line: 397, column: 7, scope: !1468)
!1512 = !DILocation(line: 400, column: 8, scope: !1406)
!1513 = !DILocation(line: 0, scope: !1406)
!1514 = !DILocation(line: 400, column: 27, scope: !1405)
!1515 = !DILocation(line: 400, column: 19, scope: !1405)
!1516 = !DILocation(line: 400, column: 41, scope: !1405)
!1517 = !DILocation(line: 400, column: 48, scope: !1405)
!1518 = !DILocation(line: 400, column: 3, scope: !1406)
!1519 = !DILocation(line: 400, column: 60, scope: !1405)
!1520 = !DILocation(line: 0, scope: !1404)
!1521 = !DILocation(line: 409, column: 11, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1404, file: !52, line: 408, column: 11)
!1523 = !DILocation(line: 411, column: 17, scope: !1522)
!1524 = !DILocation(line: 412, column: 39, scope: !1522)
!1525 = !DILocation(line: 416, column: 32, scope: !1522)
!1526 = !DILocation(line: 412, column: 19, scope: !1522)
!1527 = !DILocation(line: 412, column: 15, scope: !1522)
!1528 = !DILocation(line: 417, column: 11, scope: !1522)
!1529 = !DILocation(line: 417, column: 26, scope: !1522)
!1530 = !DILocation(line: 417, column: 14, scope: !1522)
!1531 = !DILocation(line: 417, column: 63, scope: !1522)
!1532 = !DILocation(line: 408, column: 11, scope: !1404)
!1533 = !DILocation(line: 424, column: 11, scope: !1404)
!1534 = !DILocation(line: 425, column: 7, scope: !1404)
!1535 = !DILocation(line: 428, column: 15, scope: !1413)
!1536 = !DILocation(line: 430, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !52, line: 430, column: 15)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !52, line: 429, column: 13)
!1539 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 428, column: 15)
!1540 = !DILocation(line: 430, column: 15, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !52, line: 430, column: 15)
!1542 = !DILocation(line: 430, column: 15, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !52, line: 430, column: 15)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !52, line: 430, column: 15)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !52, line: 430, column: 15)
!1546 = !DILocation(line: 430, column: 15, scope: !1544)
!1547 = !DILocation(line: 430, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !52, line: 430, column: 15)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !52, line: 430, column: 15)
!1550 = !DILocation(line: 430, column: 15, scope: !1549)
!1551 = !DILocation(line: 430, column: 15, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !52, line: 430, column: 15)
!1553 = distinct !DILexicalBlock(scope: !1545, file: !52, line: 430, column: 15)
!1554 = !DILocation(line: 430, column: 15, scope: !1553)
!1555 = !DILocation(line: 430, column: 15, scope: !1545)
!1556 = !DILocation(line: 430, column: 15, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !52, line: 430, column: 15)
!1558 = distinct !DILexicalBlock(scope: !1537, file: !52, line: 430, column: 15)
!1559 = !DILocation(line: 430, column: 15, scope: !1558)
!1560 = !DILocation(line: 438, column: 19, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1538, file: !52, line: 437, column: 19)
!1562 = !DILocation(line: 438, column: 48, scope: !1561)
!1563 = !DILocation(line: 438, column: 59, scope: !1561)
!1564 = !DILocation(line: 440, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !52, line: 440, column: 19)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !52, line: 440, column: 19)
!1567 = distinct !DILexicalBlock(scope: !1561, file: !52, line: 439, column: 17)
!1568 = !DILocation(line: 440, column: 19, scope: !1566)
!1569 = !DILocation(line: 441, column: 19, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !52, line: 441, column: 19)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !52, line: 441, column: 19)
!1572 = !DILocation(line: 441, column: 19, scope: !1571)
!1573 = !DILocation(line: 442, column: 17, scope: !1567)
!1574 = !DILocation(line: 449, column: 20, scope: !1539)
!1575 = !DILocation(line: 454, column: 11, scope: !1413)
!1576 = !DILocation(line: 457, column: 19, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 455, column: 13)
!1578 = !DILocation(line: 463, column: 19, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1577, file: !52, line: 462, column: 19)
!1580 = !DILocation(line: 463, column: 47, scope: !1579)
!1581 = !DILocation(line: 463, column: 41, scope: !1579)
!1582 = !DILocation(line: 463, column: 52, scope: !1579)
!1583 = !DILocation(line: 462, column: 19, scope: !1577)
!1584 = !DILocation(line: 464, column: 25, scope: !1579)
!1585 = !DILocation(line: 464, column: 17, scope: !1579)
!1586 = !DILocation(line: 471, column: 25, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1579, file: !52, line: 465, column: 19)
!1588 = !DILocation(line: 475, column: 21, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !52, line: 475, column: 21)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !52, line: 475, column: 21)
!1591 = !DILocation(line: 475, column: 21, scope: !1590)
!1592 = !DILocation(line: 476, column: 21, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !52, line: 476, column: 21)
!1594 = distinct !DILexicalBlock(scope: !1587, file: !52, line: 476, column: 21)
!1595 = !DILocation(line: 476, column: 21, scope: !1594)
!1596 = !DILocation(line: 477, column: 21, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !52, line: 477, column: 21)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !52, line: 477, column: 21)
!1599 = !DILocation(line: 477, column: 21, scope: !1598)
!1600 = !DILocation(line: 478, column: 21, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !52, line: 478, column: 21)
!1602 = distinct !DILexicalBlock(scope: !1587, file: !52, line: 478, column: 21)
!1603 = !DILocation(line: 478, column: 21, scope: !1602)
!1604 = !DILocation(line: 479, column: 21, scope: !1587)
!1605 = !DILocation(line: 492, column: 31, scope: !1413)
!1606 = !DILocation(line: 493, column: 31, scope: !1413)
!1607 = !DILocation(line: 495, column: 31, scope: !1413)
!1608 = !DILocation(line: 496, column: 31, scope: !1413)
!1609 = !DILocation(line: 497, column: 31, scope: !1413)
!1610 = !DILocation(line: 500, column: 15, scope: !1413)
!1611 = !DILocation(line: 502, column: 19, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !52, line: 501, column: 13)
!1613 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 500, column: 15)
!1614 = !DILocation(line: 509, column: 33, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 509, column: 15)
!1616 = !DILocation(line: 0, scope: !1413)
!1617 = !DILocation(line: 512, column: 9, scope: !1413)
!1618 = !DILocation(line: 514, column: 15, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 513, column: 15)
!1620 = !DILocation(line: 517, column: 9, scope: !1413)
!1621 = !DILocation(line: 518, column: 15, scope: !1413)
!1622 = !DILocation(line: 526, column: 15, scope: !1413)
!1623 = !DILocation(line: 526, column: 40, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 526, column: 15)
!1625 = !DILocation(line: 526, column: 47, scope: !1624)
!1626 = !DILocation(line: 526, column: 18, scope: !1624)
!1627 = !DILocation(line: 530, column: 17, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 530, column: 15)
!1629 = !DILocation(line: 530, column: 15, scope: !1413)
!1630 = !DILocation(line: 535, column: 11, scope: !1413)
!1631 = !DILocation(line: 549, column: 15, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 548, column: 15)
!1633 = !DILocation(line: 556, column: 15, scope: !1413)
!1634 = !DILocation(line: 558, column: 19, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !52, line: 557, column: 13)
!1636 = distinct !DILexicalBlock(scope: !1413, file: !52, line: 556, column: 15)
!1637 = !DILocation(line: 561, column: 19, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !52, line: 561, column: 19)
!1639 = !DILocation(line: 561, column: 30, scope: !1638)
!1640 = !DILocation(line: 570, column: 15, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !52, line: 570, column: 15)
!1642 = distinct !DILexicalBlock(scope: !1635, file: !52, line: 570, column: 15)
!1643 = !DILocation(line: 570, column: 15, scope: !1642)
!1644 = !DILocation(line: 571, column: 15, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !52, line: 571, column: 15)
!1646 = distinct !DILexicalBlock(scope: !1635, file: !52, line: 571, column: 15)
!1647 = !DILocation(line: 571, column: 15, scope: !1646)
!1648 = !DILocation(line: 572, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !52, line: 572, column: 15)
!1650 = distinct !DILexicalBlock(scope: !1635, file: !52, line: 572, column: 15)
!1651 = !DILocation(line: 572, column: 15, scope: !1650)
!1652 = !DILocation(line: 574, column: 13, scope: !1635)
!1653 = !DILocation(line: 614, column: 17, scope: !1412)
!1654 = !DILocation(line: 0, scope: !1412)
!1655 = !DILocation(line: 617, column: 29, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1417, file: !52, line: 615, column: 15)
!1657 = !{!917, !917, i64 0}
!1658 = !DILocation(line: 617, column: 27, scope: !1656)
!1659 = !DILocation(line: 678, column: 40, scope: !1412)
!1660 = !DILocation(line: 680, column: 23, scope: !1446)
!1661 = !DILocation(line: 621, column: 17, scope: !1416)
!1662 = !DILocation(line: 621, column: 27, scope: !1416)
!1663 = !DILocalVariable(name: "__dest", arg: 1, scope: !1664, file: !1103, line: 57, type: !46)
!1664 = distinct !DISubprogram(name: "memset", scope: !1103, file: !1103, line: 57, type: !1665, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!46, !46, !23, !91}
!1667 = !{!1663, !1668, !1669}
!1668 = !DILocalVariable(name: "__ch", arg: 2, scope: !1664, file: !1103, line: 57, type: !23)
!1669 = !DILocalVariable(name: "__len", arg: 3, scope: !1664, file: !1103, line: 57, type: !91)
!1670 = !DILocation(line: 0, scope: !1664, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 622, column: 17, scope: !1416)
!1672 = !DILocation(line: 59, column: 10, scope: !1664, inlinedAt: !1671)
!1673 = !DILocation(line: 626, column: 29, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1416, file: !52, line: 626, column: 21)
!1675 = !DILocation(line: 626, column: 21, scope: !1416)
!1676 = !DILocation(line: 627, column: 29, scope: !1674)
!1677 = !DILocation(line: 627, column: 19, scope: !1674)
!1678 = !DILocation(line: 629, column: 17, scope: !1416)
!1679 = !DILocation(line: 624, column: 19, scope: !1416)
!1680 = !DILocation(line: 625, column: 27, scope: !1416)
!1681 = !DILocation(line: 631, column: 21, scope: !1434)
!1682 = !DILocation(line: 632, column: 56, scope: !1434)
!1683 = !DILocation(line: 632, column: 50, scope: !1434)
!1684 = !DILocation(line: 633, column: 53, scope: !1434)
!1685 = !DILocation(line: 0, scope: !1434)
!1686 = !DILocation(line: 632, column: 36, scope: !1434)
!1687 = !DILocation(line: 634, column: 25, scope: !1434)
!1688 = !DILocation(line: 644, column: 38, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1441, file: !52, line: 642, column: 23)
!1690 = !DILocation(line: 644, column: 48, scope: !1689)
!1691 = !DILocation(line: 644, column: 25, scope: !1689)
!1692 = !DILocation(line: 644, column: 51, scope: !1689)
!1693 = !DILocation(line: 645, column: 28, scope: !1689)
!1694 = !DILocation(line: 644, column: 34, scope: !1689)
!1695 = distinct !{!1695, !1691, !1693, !679}
!1696 = !DILocation(line: 655, column: 29, scope: !1439)
!1697 = !DILocation(line: 0, scope: !1438)
!1698 = !DILocation(line: 659, column: 49, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !52, line: 658, column: 29)
!1700 = distinct !DILexicalBlock(scope: !1438, file: !52, line: 658, column: 29)
!1701 = !DILocation(line: 659, column: 39, scope: !1699)
!1702 = !DILocation(line: 659, column: 31, scope: !1699)
!1703 = !DILocation(line: 658, column: 53, scope: !1699)
!1704 = !DILocation(line: 658, column: 43, scope: !1699)
!1705 = !DILocation(line: 658, column: 29, scope: !1700)
!1706 = distinct !{!1706, !1705, !1707, !679}
!1707 = !DILocation(line: 667, column: 33, scope: !1700)
!1708 = !DILocation(line: 674, column: 19, scope: !1416)
!1709 = !DILocation(line: 670, column: 41, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1440, file: !52, line: 670, column: 29)
!1711 = !DILocation(line: 670, column: 31, scope: !1710)
!1712 = !DILocation(line: 670, column: 29, scope: !1440)
!1713 = !DILocation(line: 672, column: 27, scope: !1440)
!1714 = !DILocation(line: 675, column: 26, scope: !1416)
!1715 = !DILocation(line: 675, column: 24, scope: !1416)
!1716 = !DILocation(line: 674, column: 19, scope: !1434)
!1717 = distinct !{!1717, !1678, !1718, !679}
!1718 = !DILocation(line: 675, column: 44, scope: !1416)
!1719 = !DILocation(line: 676, column: 15, scope: !1417)
!1720 = !DILocation(line: 680, column: 19, scope: !1446)
!1721 = !DILocation(line: 680, column: 45, scope: !1446)
!1722 = !DILocation(line: 684, column: 33, scope: !1445)
!1723 = !DILocation(line: 0, scope: !1445)
!1724 = !DILocation(line: 686, column: 17, scope: !1445)
!1725 = !DILocation(line: 405, column: 12, scope: !1404)
!1726 = !DILocation(line: 688, column: 43, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !52, line: 688, column: 25)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !52, line: 687, column: 19)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !52, line: 686, column: 17)
!1730 = distinct !DILexicalBlock(scope: !1445, file: !52, line: 686, column: 17)
!1731 = !DILocation(line: 690, column: 25, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !52, line: 690, column: 25)
!1733 = distinct !DILexicalBlock(scope: !1727, file: !52, line: 689, column: 23)
!1734 = !DILocation(line: 690, column: 25, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !52, line: 690, column: 25)
!1736 = !DILocation(line: 690, column: 25, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !52, line: 690, column: 25)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !52, line: 690, column: 25)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !52, line: 690, column: 25)
!1740 = !DILocation(line: 690, column: 25, scope: !1738)
!1741 = !DILocation(line: 690, column: 25, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !52, line: 690, column: 25)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !52, line: 690, column: 25)
!1744 = !DILocation(line: 690, column: 25, scope: !1743)
!1745 = !DILocation(line: 690, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !52, line: 690, column: 25)
!1747 = distinct !DILexicalBlock(scope: !1739, file: !52, line: 690, column: 25)
!1748 = !DILocation(line: 690, column: 25, scope: !1747)
!1749 = !DILocation(line: 690, column: 25, scope: !1739)
!1750 = !DILocation(line: 690, column: 25, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !52, line: 690, column: 25)
!1752 = distinct !DILexicalBlock(scope: !1732, file: !52, line: 690, column: 25)
!1753 = !DILocation(line: 690, column: 25, scope: !1752)
!1754 = !DILocation(line: 691, column: 25, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !52, line: 691, column: 25)
!1756 = distinct !DILexicalBlock(scope: !1733, file: !52, line: 691, column: 25)
!1757 = !DILocation(line: 691, column: 25, scope: !1756)
!1758 = !DILocation(line: 692, column: 25, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !52, line: 692, column: 25)
!1760 = distinct !DILexicalBlock(scope: !1733, file: !52, line: 692, column: 25)
!1761 = !DILocation(line: 692, column: 25, scope: !1760)
!1762 = !DILocation(line: 693, column: 38, scope: !1733)
!1763 = !DILocation(line: 693, column: 33, scope: !1733)
!1764 = !DILocation(line: 694, column: 23, scope: !1733)
!1765 = !DILocation(line: 695, column: 30, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1727, file: !52, line: 695, column: 30)
!1767 = !DILocation(line: 695, column: 30, scope: !1727)
!1768 = !DILocation(line: 697, column: 25, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !52, line: 697, column: 25)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !52, line: 697, column: 25)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !52, line: 696, column: 23)
!1772 = !DILocation(line: 697, column: 25, scope: !1770)
!1773 = !DILocation(line: 699, column: 23, scope: !1771)
!1774 = !DILocation(line: 700, column: 35, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1728, file: !52, line: 700, column: 25)
!1776 = !DILocation(line: 700, column: 30, scope: !1775)
!1777 = !DILocation(line: 700, column: 25, scope: !1728)
!1778 = !DILocation(line: 702, column: 21, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !52, line: 702, column: 21)
!1780 = distinct !DILexicalBlock(scope: !1728, file: !52, line: 702, column: 21)
!1781 = !DILocation(line: 702, column: 21, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !52, line: 702, column: 21)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !52, line: 702, column: 21)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !52, line: 702, column: 21)
!1785 = !DILocation(line: 702, column: 21, scope: !1783)
!1786 = !DILocation(line: 702, column: 21, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !52, line: 702, column: 21)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !52, line: 702, column: 21)
!1789 = !DILocation(line: 702, column: 21, scope: !1788)
!1790 = !DILocation(line: 702, column: 21, scope: !1784)
!1791 = !DILocation(line: 0, scope: !1728)
!1792 = !DILocation(line: 703, column: 21, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !52, line: 703, column: 21)
!1794 = distinct !DILexicalBlock(scope: !1728, file: !52, line: 703, column: 21)
!1795 = !DILocation(line: 703, column: 21, scope: !1794)
!1796 = !DILocation(line: 704, column: 25, scope: !1728)
!1797 = !DILocation(line: 686, column: 17, scope: !1729)
!1798 = distinct !{!1798, !1799, !1800}
!1799 = !DILocation(line: 686, column: 17, scope: !1730)
!1800 = !DILocation(line: 705, column: 19, scope: !1730)
!1801 = !DILocation(line: 416, column: 30, scope: !1522)
!1802 = !DILocation(line: 712, column: 34, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1404, file: !52, line: 712, column: 11)
!1804 = !DILocation(line: 715, column: 35, scope: !1803)
!1805 = !DILocation(line: 715, column: 17, scope: !1803)
!1806 = !DILocation(line: 715, column: 47, scope: !1803)
!1807 = !DILocation(line: 715, column: 65, scope: !1803)
!1808 = !DILocation(line: 716, column: 11, scope: !1803)
!1809 = !DILocation(line: 712, column: 11, scope: !1404)
!1810 = !DILocation(line: 400, column: 10, scope: !1406)
!1811 = !DILocation(line: 719, column: 5, scope: !1404)
!1812 = !DILocation(line: 720, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1404, file: !52, line: 720, column: 7)
!1814 = !DILocation(line: 720, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1813, file: !52, line: 720, column: 7)
!1816 = !DILocation(line: 720, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !52, line: 720, column: 7)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !52, line: 720, column: 7)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !52, line: 720, column: 7)
!1820 = !DILocation(line: 720, column: 7, scope: !1818)
!1821 = !DILocation(line: 720, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !52, line: 720, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !52, line: 720, column: 7)
!1824 = !DILocation(line: 720, column: 7, scope: !1823)
!1825 = !DILocation(line: 720, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !52, line: 720, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !52, line: 720, column: 7)
!1828 = !DILocation(line: 720, column: 7, scope: !1827)
!1829 = !DILocation(line: 720, column: 7, scope: !1819)
!1830 = !DILocation(line: 720, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !52, line: 720, column: 7)
!1832 = distinct !DILexicalBlock(scope: !1813, file: !52, line: 720, column: 7)
!1833 = !DILocation(line: 720, column: 7, scope: !1832)
!1834 = !DILocation(line: 722, column: 5, scope: !1404)
!1835 = !DILocation(line: 723, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !52, line: 723, column: 7)
!1837 = distinct !DILexicalBlock(scope: !1404, file: !52, line: 723, column: 7)
!1838 = !DILocation(line: 424, column: 9, scope: !1404)
!1839 = !DILocation(line: 723, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !52, line: 723, column: 7)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !52, line: 723, column: 7)
!1842 = distinct !DILexicalBlock(scope: !1836, file: !52, line: 723, column: 7)
!1843 = !DILocation(line: 723, column: 7, scope: !1841)
!1844 = !DILocation(line: 723, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !52, line: 723, column: 7)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !52, line: 723, column: 7)
!1847 = !DILocation(line: 723, column: 7, scope: !1846)
!1848 = !DILocation(line: 723, column: 7, scope: !1842)
!1849 = !DILocation(line: 724, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !52, line: 724, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1404, file: !52, line: 724, column: 7)
!1852 = !DILocation(line: 724, column: 7, scope: !1851)
!1853 = !DILocation(line: 726, column: 13, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1404, file: !52, line: 726, column: 11)
!1855 = !DILocation(line: 726, column: 11, scope: !1404)
!1856 = !DILocation(line: 728, column: 5, scope: !1405)
!1857 = !DILocation(line: 400, column: 75, scope: !1405)
!1858 = !DILocation(line: 400, column: 3, scope: !1405)
!1859 = distinct !{!1859, !1518, !1860, !679}
!1860 = !DILocation(line: 728, column: 5, scope: !1406)
!1861 = !DILocation(line: 730, column: 11, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1377, file: !52, line: 730, column: 7)
!1863 = !DILocation(line: 730, column: 16, scope: !1862)
!1864 = !DILocation(line: 738, column: 51, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1377, file: !52, line: 738, column: 7)
!1866 = !DILocation(line: 741, column: 11, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !52, line: 741, column: 11)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !52, line: 740, column: 5)
!1869 = !DILocation(line: 741, column: 11, scope: !1868)
!1870 = !DILocation(line: 742, column: 16, scope: !1867)
!1871 = !DILocation(line: 742, column: 9, scope: !1867)
!1872 = !DILocation(line: 746, column: 18, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !52, line: 746, column: 16)
!1874 = !DILocation(line: 746, column: 29, scope: !1873)
!1875 = !DILocation(line: 755, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1377, file: !52, line: 755, column: 7)
!1877 = !DILocation(line: 755, column: 20, scope: !1876)
!1878 = !DILocation(line: 756, column: 12, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !52, line: 756, column: 5)
!1880 = distinct !DILexicalBlock(scope: !1876, file: !52, line: 756, column: 5)
!1881 = !DILocation(line: 756, column: 5, scope: !1880)
!1882 = !DILocation(line: 757, column: 7, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !52, line: 757, column: 7)
!1884 = distinct !DILexicalBlock(scope: !1879, file: !52, line: 757, column: 7)
!1885 = !DILocation(line: 757, column: 7, scope: !1884)
!1886 = !DILocation(line: 756, column: 39, scope: !1879)
!1887 = distinct !{!1887, !1881, !1888, !679}
!1888 = !DILocation(line: 757, column: 7, scope: !1880)
!1889 = !DILocation(line: 759, column: 11, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1377, file: !52, line: 759, column: 7)
!1891 = !DILocation(line: 759, column: 7, scope: !1377)
!1892 = !DILocation(line: 760, column: 5, scope: !1890)
!1893 = !DILocation(line: 760, column: 17, scope: !1890)
!1894 = !DILocation(line: 763, column: 2, scope: !1377)
!1895 = !DILocation(line: 766, column: 51, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1377, file: !52, line: 766, column: 7)
!1897 = !DILocation(line: 766, column: 21, scope: !1896)
!1898 = !DILocation(line: 770, column: 42, scope: !1377)
!1899 = !DILocation(line: 768, column: 10, scope: !1377)
!1900 = !DILocation(line: 768, column: 3, scope: !1377)
!1901 = !DILocation(line: 772, column: 1, scope: !1377)
!1902 = distinct !DISubprogram(name: "gettext_quote", scope: !52, file: !52, line: 207, type: !1903, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1905)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!6, !6, !54}
!1905 = !{!1906, !1907, !1908, !1909}
!1906 = !DILocalVariable(name: "msgid", arg: 1, scope: !1902, file: !52, line: 207, type: !6)
!1907 = !DILocalVariable(name: "s", arg: 2, scope: !1902, file: !52, line: 207, type: !54)
!1908 = !DILocalVariable(name: "translation", scope: !1902, file: !52, line: 209, type: !6)
!1909 = !DILocalVariable(name: "locale_code", scope: !1902, file: !52, line: 210, type: !6)
!1910 = !DILocation(line: 0, scope: !1902)
!1911 = !DILocation(line: 209, column: 29, scope: !1902)
!1912 = !DILocation(line: 212, column: 19, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1902, file: !52, line: 212, column: 7)
!1914 = !DILocation(line: 212, column: 7, scope: !1902)
!1915 = !DILocation(line: 233, column: 17, scope: !1902)
!1916 = !DILocalVariable(name: "s1", arg: 1, scope: !1917, file: !1918, line: 160, type: !6)
!1917 = distinct !DISubprogram(name: "strcaseeq0", scope: !1918, file: !1918, line: 160, type: !1919, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1921)
!1918 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1921 = !{!1916, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1922 = !DILocalVariable(name: "s2", arg: 2, scope: !1917, file: !1918, line: 160, type: !6)
!1923 = !DILocalVariable(name: "s20", arg: 3, scope: !1917, file: !1918, line: 160, type: !8)
!1924 = !DILocalVariable(name: "s21", arg: 4, scope: !1917, file: !1918, line: 160, type: !8)
!1925 = !DILocalVariable(name: "s22", arg: 5, scope: !1917, file: !1918, line: 160, type: !8)
!1926 = !DILocalVariable(name: "s23", arg: 6, scope: !1917, file: !1918, line: 160, type: !8)
!1927 = !DILocalVariable(name: "s24", arg: 7, scope: !1917, file: !1918, line: 160, type: !8)
!1928 = !DILocalVariable(name: "s25", arg: 8, scope: !1917, file: !1918, line: 160, type: !8)
!1929 = !DILocalVariable(name: "s26", arg: 9, scope: !1917, file: !1918, line: 160, type: !8)
!1930 = !DILocalVariable(name: "s27", arg: 10, scope: !1917, file: !1918, line: 160, type: !8)
!1931 = !DILocalVariable(name: "s28", arg: 11, scope: !1917, file: !1918, line: 160, type: !8)
!1932 = !DILocation(line: 0, scope: !1917, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 234, column: 7, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1902, file: !52, line: 234, column: 7)
!1935 = !DILocation(line: 162, column: 7, scope: !1936, inlinedAt: !1933)
!1936 = distinct !DILexicalBlock(scope: !1917, file: !1918, line: 162, column: 7)
!1937 = !DILocalVariable(name: "s1", arg: 1, scope: !1938, file: !1918, line: 146, type: !6)
!1938 = distinct !DISubprogram(name: "strcaseeq1", scope: !1918, file: !1918, line: 146, type: !1939, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1941 = !{!1937, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1942 = !DILocalVariable(name: "s2", arg: 2, scope: !1938, file: !1918, line: 146, type: !6)
!1943 = !DILocalVariable(name: "s21", arg: 3, scope: !1938, file: !1918, line: 146, type: !8)
!1944 = !DILocalVariable(name: "s22", arg: 4, scope: !1938, file: !1918, line: 146, type: !8)
!1945 = !DILocalVariable(name: "s23", arg: 5, scope: !1938, file: !1918, line: 146, type: !8)
!1946 = !DILocalVariable(name: "s24", arg: 6, scope: !1938, file: !1918, line: 146, type: !8)
!1947 = !DILocalVariable(name: "s25", arg: 7, scope: !1938, file: !1918, line: 146, type: !8)
!1948 = !DILocalVariable(name: "s26", arg: 8, scope: !1938, file: !1918, line: 146, type: !8)
!1949 = !DILocalVariable(name: "s27", arg: 9, scope: !1938, file: !1918, line: 146, type: !8)
!1950 = !DILocalVariable(name: "s28", arg: 10, scope: !1938, file: !1918, line: 146, type: !8)
!1951 = !DILocation(line: 0, scope: !1938, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 167, column: 16, scope: !1953, inlinedAt: !1933)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1918, line: 164, column: 11)
!1954 = distinct !DILexicalBlock(scope: !1936, file: !1918, line: 163, column: 5)
!1955 = !DILocation(line: 148, column: 7, scope: !1956, inlinedAt: !1952)
!1956 = distinct !DILexicalBlock(scope: !1938, file: !1918, line: 148, column: 7)
!1957 = !DILocalVariable(name: "s1", arg: 1, scope: !1958, file: !1918, line: 132, type: !6)
!1958 = distinct !DISubprogram(name: "strcaseeq2", scope: !1918, file: !1918, line: 132, type: !1959, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1961 = !{!1957, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1962 = !DILocalVariable(name: "s2", arg: 2, scope: !1958, file: !1918, line: 132, type: !6)
!1963 = !DILocalVariable(name: "s22", arg: 3, scope: !1958, file: !1918, line: 132, type: !8)
!1964 = !DILocalVariable(name: "s23", arg: 4, scope: !1958, file: !1918, line: 132, type: !8)
!1965 = !DILocalVariable(name: "s24", arg: 5, scope: !1958, file: !1918, line: 132, type: !8)
!1966 = !DILocalVariable(name: "s25", arg: 6, scope: !1958, file: !1918, line: 132, type: !8)
!1967 = !DILocalVariable(name: "s26", arg: 7, scope: !1958, file: !1918, line: 132, type: !8)
!1968 = !DILocalVariable(name: "s27", arg: 8, scope: !1958, file: !1918, line: 132, type: !8)
!1969 = !DILocalVariable(name: "s28", arg: 9, scope: !1958, file: !1918, line: 132, type: !8)
!1970 = !DILocation(line: 0, scope: !1958, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 153, column: 16, scope: !1972, inlinedAt: !1952)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !1918, line: 150, column: 11)
!1973 = distinct !DILexicalBlock(scope: !1956, file: !1918, line: 149, column: 5)
!1974 = !DILocation(line: 134, column: 7, scope: !1975, inlinedAt: !1971)
!1975 = distinct !DILexicalBlock(scope: !1958, file: !1918, line: 134, column: 7)
!1976 = !DILocalVariable(name: "s1", arg: 1, scope: !1977, file: !1918, line: 118, type: !6)
!1977 = distinct !DISubprogram(name: "strcaseeq3", scope: !1918, file: !1918, line: 118, type: !1978, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!23, !6, !6, !8, !8, !8, !8, !8, !8}
!1980 = !{!1976, !1981, !1982, !1983, !1984, !1985, !1986, !1987}
!1981 = !DILocalVariable(name: "s2", arg: 2, scope: !1977, file: !1918, line: 118, type: !6)
!1982 = !DILocalVariable(name: "s23", arg: 3, scope: !1977, file: !1918, line: 118, type: !8)
!1983 = !DILocalVariable(name: "s24", arg: 4, scope: !1977, file: !1918, line: 118, type: !8)
!1984 = !DILocalVariable(name: "s25", arg: 5, scope: !1977, file: !1918, line: 118, type: !8)
!1985 = !DILocalVariable(name: "s26", arg: 6, scope: !1977, file: !1918, line: 118, type: !8)
!1986 = !DILocalVariable(name: "s27", arg: 7, scope: !1977, file: !1918, line: 118, type: !8)
!1987 = !DILocalVariable(name: "s28", arg: 8, scope: !1977, file: !1918, line: 118, type: !8)
!1988 = !DILocation(line: 0, scope: !1977, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 139, column: 16, scope: !1990, inlinedAt: !1971)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !1918, line: 136, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1975, file: !1918, line: 135, column: 5)
!1992 = !DILocation(line: 120, column: 7, scope: !1993, inlinedAt: !1989)
!1993 = distinct !DILexicalBlock(scope: !1977, file: !1918, line: 120, column: 7)
!1994 = !DILocation(line: 120, column: 7, scope: !1977, inlinedAt: !1989)
!1995 = !DILocalVariable(name: "s1", arg: 1, scope: !1996, file: !1918, line: 104, type: !6)
!1996 = distinct !DISubprogram(name: "strcaseeq4", scope: !1918, file: !1918, line: 104, type: !1997, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!23, !6, !6, !8, !8, !8, !8, !8}
!1999 = !{!1995, !2000, !2001, !2002, !2003, !2004, !2005}
!2000 = !DILocalVariable(name: "s2", arg: 2, scope: !1996, file: !1918, line: 104, type: !6)
!2001 = !DILocalVariable(name: "s24", arg: 3, scope: !1996, file: !1918, line: 104, type: !8)
!2002 = !DILocalVariable(name: "s25", arg: 4, scope: !1996, file: !1918, line: 104, type: !8)
!2003 = !DILocalVariable(name: "s26", arg: 5, scope: !1996, file: !1918, line: 104, type: !8)
!2004 = !DILocalVariable(name: "s27", arg: 6, scope: !1996, file: !1918, line: 104, type: !8)
!2005 = !DILocalVariable(name: "s28", arg: 7, scope: !1996, file: !1918, line: 104, type: !8)
!2006 = !DILocation(line: 0, scope: !1996, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 125, column: 16, scope: !2008, inlinedAt: !1989)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !1918, line: 122, column: 11)
!2009 = distinct !DILexicalBlock(scope: !1993, file: !1918, line: 121, column: 5)
!2010 = !DILocation(line: 106, column: 7, scope: !2011, inlinedAt: !2007)
!2011 = distinct !DILexicalBlock(scope: !1996, file: !1918, line: 106, column: 7)
!2012 = !DILocation(line: 106, column: 7, scope: !1996, inlinedAt: !2007)
!2013 = !DILocalVariable(name: "s1", arg: 1, scope: !2014, file: !1918, line: 90, type: !6)
!2014 = distinct !DISubprogram(name: "strcaseeq5", scope: !1918, file: !1918, line: 90, type: !2015, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!23, !6, !6, !8, !8, !8, !8}
!2017 = !{!2013, !2018, !2019, !2020, !2021, !2022}
!2018 = !DILocalVariable(name: "s2", arg: 2, scope: !2014, file: !1918, line: 90, type: !6)
!2019 = !DILocalVariable(name: "s25", arg: 3, scope: !2014, file: !1918, line: 90, type: !8)
!2020 = !DILocalVariable(name: "s26", arg: 4, scope: !2014, file: !1918, line: 90, type: !8)
!2021 = !DILocalVariable(name: "s27", arg: 5, scope: !2014, file: !1918, line: 90, type: !8)
!2022 = !DILocalVariable(name: "s28", arg: 6, scope: !2014, file: !1918, line: 90, type: !8)
!2023 = !DILocation(line: 0, scope: !2014, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 111, column: 16, scope: !2025, inlinedAt: !2007)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !1918, line: 108, column: 11)
!2026 = distinct !DILexicalBlock(scope: !2011, file: !1918, line: 107, column: 5)
!2027 = !DILocation(line: 92, column: 7, scope: !2028, inlinedAt: !2024)
!2028 = distinct !DILexicalBlock(scope: !2014, file: !1918, line: 92, column: 7)
!2029 = !DILocation(line: 92, column: 7, scope: !2014, inlinedAt: !2024)
!2030 = !DILocation(line: 235, column: 12, scope: !1934)
!2031 = !DILocation(line: 235, column: 21, scope: !1934)
!2032 = !DILocation(line: 235, column: 5, scope: !1934)
!2033 = !DILocation(line: 0, scope: !1938, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 167, column: 16, scope: !1953, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 236, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1902, file: !52, line: 236, column: 7)
!2037 = !DILocation(line: 148, column: 7, scope: !1956, inlinedAt: !2034)
!2038 = !DILocation(line: 0, scope: !1958, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 153, column: 16, scope: !1972, inlinedAt: !2034)
!2040 = !DILocation(line: 134, column: 7, scope: !1975, inlinedAt: !2039)
!2041 = !DILocation(line: 134, column: 7, scope: !1958, inlinedAt: !2039)
!2042 = !DILocation(line: 0, scope: !1977, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 139, column: 16, scope: !1990, inlinedAt: !2039)
!2044 = !DILocation(line: 120, column: 7, scope: !1993, inlinedAt: !2043)
!2045 = !DILocation(line: 120, column: 7, scope: !1977, inlinedAt: !2043)
!2046 = !DILocation(line: 0, scope: !1996, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 125, column: 16, scope: !2008, inlinedAt: !2043)
!2048 = !DILocation(line: 106, column: 7, scope: !2011, inlinedAt: !2047)
!2049 = !DILocation(line: 106, column: 7, scope: !1996, inlinedAt: !2047)
!2050 = !DILocation(line: 0, scope: !2014, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 111, column: 16, scope: !2025, inlinedAt: !2047)
!2052 = !DILocation(line: 92, column: 7, scope: !2028, inlinedAt: !2051)
!2053 = !DILocation(line: 92, column: 7, scope: !2014, inlinedAt: !2051)
!2054 = !DILocalVariable(name: "s1", arg: 1, scope: !2055, file: !1918, line: 76, type: !6)
!2055 = distinct !DISubprogram(name: "strcaseeq6", scope: !1918, file: !1918, line: 76, type: !2056, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!23, !6, !6, !8, !8, !8}
!2058 = !{!2054, !2059, !2060, !2061, !2062}
!2059 = !DILocalVariable(name: "s2", arg: 2, scope: !2055, file: !1918, line: 76, type: !6)
!2060 = !DILocalVariable(name: "s26", arg: 3, scope: !2055, file: !1918, line: 76, type: !8)
!2061 = !DILocalVariable(name: "s27", arg: 4, scope: !2055, file: !1918, line: 76, type: !8)
!2062 = !DILocalVariable(name: "s28", arg: 5, scope: !2055, file: !1918, line: 76, type: !8)
!2063 = !DILocation(line: 0, scope: !2055, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 97, column: 16, scope: !2065, inlinedAt: !2051)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !1918, line: 94, column: 11)
!2066 = distinct !DILexicalBlock(scope: !2028, file: !1918, line: 93, column: 5)
!2067 = !DILocation(line: 78, column: 7, scope: !2068, inlinedAt: !2064)
!2068 = distinct !DILexicalBlock(scope: !2055, file: !1918, line: 78, column: 7)
!2069 = !DILocation(line: 78, column: 7, scope: !2055, inlinedAt: !2064)
!2070 = !DILocalVariable(name: "s1", arg: 1, scope: !2071, file: !1918, line: 62, type: !6)
!2071 = distinct !DISubprogram(name: "strcaseeq7", scope: !1918, file: !1918, line: 62, type: !2072, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!23, !6, !6, !8, !8}
!2074 = !{!2070, !2075, !2076, !2077}
!2075 = !DILocalVariable(name: "s2", arg: 2, scope: !2071, file: !1918, line: 62, type: !6)
!2076 = !DILocalVariable(name: "s27", arg: 3, scope: !2071, file: !1918, line: 62, type: !8)
!2077 = !DILocalVariable(name: "s28", arg: 4, scope: !2071, file: !1918, line: 62, type: !8)
!2078 = !DILocation(line: 0, scope: !2071, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 83, column: 16, scope: !2080, inlinedAt: !2064)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !1918, line: 80, column: 11)
!2081 = distinct !DILexicalBlock(scope: !2068, file: !1918, line: 79, column: 5)
!2082 = !DILocation(line: 64, column: 7, scope: !2083, inlinedAt: !2079)
!2083 = distinct !DILexicalBlock(scope: !2071, file: !1918, line: 64, column: 7)
!2084 = !DILocation(line: 236, column: 7, scope: !1902)
!2085 = !DILocation(line: 237, column: 12, scope: !2036)
!2086 = !DILocation(line: 237, column: 21, scope: !2036)
!2087 = !DILocation(line: 237, column: 5, scope: !2036)
!2088 = !DILocation(line: 239, column: 13, scope: !1902)
!2089 = !DILocation(line: 239, column: 11, scope: !1902)
!2090 = !DILocation(line: 239, column: 3, scope: !1902)
!2091 = !DILocation(line: 240, column: 1, scope: !1902)
!2092 = !DISubprogram(name: "iswprint", scope: !2093, file: !2093, line: 120, type: !2094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2093 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!23, !56}
!2096 = !DISubprogram(name: "mbsinit", scope: !2097, file: !2097, line: 292, type: !2098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2097 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!23, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!2102 = distinct !DISubprogram(name: "quotearg_alloc", scope: !52, file: !52, line: 799, type: !2103, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!47, !6, !91, !1268}
!2105 = !{!2106, !2107, !2108}
!2106 = !DILocalVariable(name: "arg", arg: 1, scope: !2102, file: !52, line: 799, type: !6)
!2107 = !DILocalVariable(name: "argsize", arg: 2, scope: !2102, file: !52, line: 799, type: !91)
!2108 = !DILocalVariable(name: "o", arg: 3, scope: !2102, file: !52, line: 800, type: !1268)
!2109 = !DILocation(line: 0, scope: !2102)
!2110 = !DILocalVariable(name: "arg", arg: 1, scope: !2111, file: !52, line: 812, type: !6)
!2111 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !52, file: !52, line: 812, type: !2112, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!47, !6, !91, !201, !1268}
!2114 = !{!2110, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122}
!2115 = !DILocalVariable(name: "argsize", arg: 2, scope: !2111, file: !52, line: 812, type: !91)
!2116 = !DILocalVariable(name: "size", arg: 3, scope: !2111, file: !52, line: 812, type: !201)
!2117 = !DILocalVariable(name: "o", arg: 4, scope: !2111, file: !52, line: 813, type: !1268)
!2118 = !DILocalVariable(name: "p", scope: !2111, file: !52, line: 815, type: !1268)
!2119 = !DILocalVariable(name: "e", scope: !2111, file: !52, line: 816, type: !23)
!2120 = !DILocalVariable(name: "flags", scope: !2111, file: !52, line: 818, type: !23)
!2121 = !DILocalVariable(name: "bufsize", scope: !2111, file: !52, line: 819, type: !91)
!2122 = !DILocalVariable(name: "buf", scope: !2111, file: !52, line: 823, type: !47)
!2123 = !DILocation(line: 0, scope: !2111, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 802, column: 10, scope: !2102)
!2125 = !DILocation(line: 815, column: 37, scope: !2111, inlinedAt: !2124)
!2126 = !DILocation(line: 816, column: 11, scope: !2111, inlinedAt: !2124)
!2127 = !DILocation(line: 818, column: 18, scope: !2111, inlinedAt: !2124)
!2128 = !DILocation(line: 818, column: 24, scope: !2111, inlinedAt: !2124)
!2129 = !DILocation(line: 819, column: 69, scope: !2111, inlinedAt: !2124)
!2130 = !DILocation(line: 820, column: 53, scope: !2111, inlinedAt: !2124)
!2131 = !DILocation(line: 821, column: 49, scope: !2111, inlinedAt: !2124)
!2132 = !DILocation(line: 822, column: 49, scope: !2111, inlinedAt: !2124)
!2133 = !DILocation(line: 819, column: 20, scope: !2111, inlinedAt: !2124)
!2134 = !DILocation(line: 822, column: 62, scope: !2111, inlinedAt: !2124)
!2135 = !DILocalVariable(name: "n", arg: 1, scope: !2136, file: !197, line: 216, type: !91)
!2136 = distinct !DISubprogram(name: "xcharalloc", scope: !197, file: !197, line: 216, type: !2137, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!47, !91}
!2139 = !{!2135}
!2140 = !DILocation(line: 0, scope: !2136, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 823, column: 15, scope: !2111, inlinedAt: !2124)
!2142 = !DILocation(line: 218, column: 10, scope: !2136, inlinedAt: !2141)
!2143 = !DILocation(line: 824, column: 60, scope: !2111, inlinedAt: !2124)
!2144 = !DILocation(line: 826, column: 32, scope: !2111, inlinedAt: !2124)
!2145 = !DILocation(line: 826, column: 47, scope: !2111, inlinedAt: !2124)
!2146 = !DILocation(line: 824, column: 3, scope: !2111, inlinedAt: !2124)
!2147 = !DILocation(line: 827, column: 9, scope: !2111, inlinedAt: !2124)
!2148 = !DILocation(line: 802, column: 3, scope: !2102)
!2149 = !DILocation(line: 0, scope: !2111)
!2150 = !DILocation(line: 815, column: 37, scope: !2111)
!2151 = !DILocation(line: 816, column: 11, scope: !2111)
!2152 = !DILocation(line: 818, column: 18, scope: !2111)
!2153 = !DILocation(line: 818, column: 27, scope: !2111)
!2154 = !DILocation(line: 818, column: 24, scope: !2111)
!2155 = !DILocation(line: 819, column: 69, scope: !2111)
!2156 = !DILocation(line: 820, column: 53, scope: !2111)
!2157 = !DILocation(line: 821, column: 49, scope: !2111)
!2158 = !DILocation(line: 822, column: 49, scope: !2111)
!2159 = !DILocation(line: 819, column: 20, scope: !2111)
!2160 = !DILocation(line: 822, column: 62, scope: !2111)
!2161 = !DILocation(line: 0, scope: !2136, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 823, column: 15, scope: !2111)
!2163 = !DILocation(line: 218, column: 10, scope: !2136, inlinedAt: !2162)
!2164 = !DILocation(line: 824, column: 60, scope: !2111)
!2165 = !DILocation(line: 826, column: 32, scope: !2111)
!2166 = !DILocation(line: 826, column: 47, scope: !2111)
!2167 = !DILocation(line: 824, column: 3, scope: !2111)
!2168 = !DILocation(line: 827, column: 9, scope: !2111)
!2169 = !DILocation(line: 828, column: 7, scope: !2111)
!2170 = !DILocation(line: 829, column: 11, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2111, file: !52, line: 828, column: 7)
!2172 = !{!916, !916, i64 0}
!2173 = !DILocation(line: 829, column: 5, scope: !2171)
!2174 = !DILocation(line: 830, column: 3, scope: !2111)
!2175 = distinct !DISubprogram(name: "quotearg_free", scope: !52, file: !52, line: 848, type: !946, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2176)
!2176 = !{!2177, !2178}
!2177 = !DILocalVariable(name: "sv", scope: !2175, file: !52, line: 850, type: !122)
!2178 = !DILocalVariable(name: "i", scope: !2175, file: !52, line: 851, type: !23)
!2179 = !DILocation(line: 850, column: 24, scope: !2175)
!2180 = !DILocation(line: 0, scope: !2175)
!2181 = !DILocation(line: 852, column: 19, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !52, line: 852, column: 3)
!2183 = distinct !DILexicalBlock(scope: !2175, file: !52, line: 852, column: 3)
!2184 = !DILocation(line: 852, column: 17, scope: !2182)
!2185 = !DILocation(line: 852, column: 3, scope: !2183)
!2186 = !DILocation(line: 853, column: 17, scope: !2182)
!2187 = !{!2188, !637, i64 8}
!2188 = !{!"slotvec", !916, i64 0, !637, i64 8}
!2189 = !DILocation(line: 853, column: 5, scope: !2182)
!2190 = !DILocation(line: 852, column: 28, scope: !2182)
!2191 = distinct !{!2191, !2185, !2192, !679}
!2192 = !DILocation(line: 853, column: 20, scope: !2183)
!2193 = !DILocation(line: 854, column: 13, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2175, file: !52, line: 854, column: 7)
!2195 = !DILocation(line: 854, column: 17, scope: !2194)
!2196 = !DILocation(line: 854, column: 7, scope: !2175)
!2197 = !DILocation(line: 856, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !52, line: 855, column: 5)
!2199 = !DILocation(line: 857, column: 21, scope: !2198)
!2200 = !{!2188, !916, i64 0}
!2201 = !DILocation(line: 858, column: 20, scope: !2198)
!2202 = !DILocation(line: 859, column: 5, scope: !2198)
!2203 = !DILocation(line: 860, column: 10, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2175, file: !52, line: 860, column: 7)
!2205 = !DILocation(line: 860, column: 7, scope: !2175)
!2206 = !DILocation(line: 862, column: 13, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !52, line: 861, column: 5)
!2208 = !DILocation(line: 862, column: 7, scope: !2207)
!2209 = !DILocation(line: 863, column: 15, scope: !2207)
!2210 = !DILocation(line: 864, column: 5, scope: !2207)
!2211 = !DILocation(line: 865, column: 10, scope: !2175)
!2212 = !DILocation(line: 866, column: 1, scope: !2175)
!2213 = distinct !DISubprogram(name: "quotearg_n", scope: !52, file: !52, line: 931, type: !761, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2214)
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "n", arg: 1, scope: !2213, file: !52, line: 931, type: !23)
!2216 = !DILocalVariable(name: "arg", arg: 2, scope: !2213, file: !52, line: 931, type: !6)
!2217 = !DILocation(line: 0, scope: !2213)
!2218 = !DILocation(line: 933, column: 10, scope: !2213)
!2219 = !DILocation(line: 933, column: 3, scope: !2213)
!2220 = distinct !DISubprogram(name: "quotearg_n_options", scope: !52, file: !52, line: 877, type: !2221, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!47, !23, !6, !91, !1268}
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2233, !2234, !2236, !2237, !2238}
!2224 = !DILocalVariable(name: "n", arg: 1, scope: !2220, file: !52, line: 877, type: !23)
!2225 = !DILocalVariable(name: "arg", arg: 2, scope: !2220, file: !52, line: 877, type: !6)
!2226 = !DILocalVariable(name: "argsize", arg: 3, scope: !2220, file: !52, line: 877, type: !91)
!2227 = !DILocalVariable(name: "options", arg: 4, scope: !2220, file: !52, line: 878, type: !1268)
!2228 = !DILocalVariable(name: "e", scope: !2220, file: !52, line: 880, type: !23)
!2229 = !DILocalVariable(name: "sv", scope: !2220, file: !52, line: 882, type: !122)
!2230 = !DILocalVariable(name: "preallocated", scope: !2231, file: !52, line: 889, type: !16)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !52, line: 888, column: 5)
!2232 = distinct !DILexicalBlock(scope: !2220, file: !52, line: 887, column: 7)
!2233 = !DILocalVariable(name: "nmax", scope: !2231, file: !52, line: 890, type: !23)
!2234 = !DILocalVariable(name: "size", scope: !2235, file: !52, line: 903, type: !91)
!2235 = distinct !DILexicalBlock(scope: !2220, file: !52, line: 902, column: 3)
!2236 = !DILocalVariable(name: "val", scope: !2235, file: !52, line: 904, type: !47)
!2237 = !DILocalVariable(name: "flags", scope: !2235, file: !52, line: 906, type: !23)
!2238 = !DILocalVariable(name: "qsize", scope: !2235, file: !52, line: 907, type: !91)
!2239 = !DILocation(line: 0, scope: !2220)
!2240 = !DILocation(line: 880, column: 11, scope: !2220)
!2241 = !DILocation(line: 882, column: 24, scope: !2220)
!2242 = !DILocation(line: 884, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2220, file: !52, line: 884, column: 7)
!2244 = !DILocation(line: 884, column: 7, scope: !2220)
!2245 = !DILocation(line: 885, column: 5, scope: !2243)
!2246 = !DILocation(line: 887, column: 7, scope: !2232)
!2247 = !DILocation(line: 887, column: 14, scope: !2232)
!2248 = !DILocation(line: 887, column: 7, scope: !2220)
!2249 = !DILocation(line: 889, column: 31, scope: !2231)
!2250 = !DILocation(line: 0, scope: !2231)
!2251 = !DILocation(line: 892, column: 16, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2231, file: !52, line: 892, column: 11)
!2253 = !DILocation(line: 892, column: 11, scope: !2231)
!2254 = !DILocation(line: 893, column: 9, scope: !2252)
!2255 = !DILocation(line: 895, column: 32, scope: !2231)
!2256 = !DILocation(line: 895, column: 61, scope: !2231)
!2257 = !DILocation(line: 895, column: 66, scope: !2231)
!2258 = !DILocation(line: 895, column: 22, scope: !2231)
!2259 = !DILocation(line: 895, column: 15, scope: !2231)
!2260 = !DILocation(line: 896, column: 11, scope: !2231)
!2261 = !DILocation(line: 897, column: 15, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2231, file: !52, line: 896, column: 11)
!2263 = !{i64 0, i64 8, !2172, i64 8, i64 8, !636}
!2264 = !DILocation(line: 897, column: 9, scope: !2262)
!2265 = !DILocation(line: 898, column: 20, scope: !2231)
!2266 = !DILocation(line: 898, column: 18, scope: !2231)
!2267 = !DILocation(line: 898, column: 15, scope: !2231)
!2268 = !DILocation(line: 898, column: 38, scope: !2231)
!2269 = !DILocation(line: 898, column: 31, scope: !2231)
!2270 = !DILocation(line: 898, column: 48, scope: !2231)
!2271 = !DILocation(line: 0, scope: !1664, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 898, column: 7, scope: !2231)
!2273 = !DILocation(line: 59, column: 10, scope: !1664, inlinedAt: !2272)
!2274 = !DILocation(line: 899, column: 14, scope: !2231)
!2275 = !DILocation(line: 900, column: 5, scope: !2231)
!2276 = !DILocation(line: 903, column: 19, scope: !2235)
!2277 = !DILocation(line: 903, column: 25, scope: !2235)
!2278 = !DILocation(line: 0, scope: !2235)
!2279 = !DILocation(line: 904, column: 23, scope: !2235)
!2280 = !DILocation(line: 906, column: 26, scope: !2235)
!2281 = !DILocation(line: 906, column: 32, scope: !2235)
!2282 = !DILocation(line: 908, column: 55, scope: !2235)
!2283 = !DILocation(line: 909, column: 46, scope: !2235)
!2284 = !DILocation(line: 910, column: 55, scope: !2235)
!2285 = !DILocation(line: 911, column: 55, scope: !2235)
!2286 = !DILocation(line: 907, column: 20, scope: !2235)
!2287 = !DILocation(line: 913, column: 14, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2235, file: !52, line: 913, column: 9)
!2289 = !DILocation(line: 913, column: 9, scope: !2235)
!2290 = !DILocation(line: 915, column: 35, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !52, line: 914, column: 7)
!2292 = !DILocation(line: 915, column: 20, scope: !2291)
!2293 = !DILocation(line: 916, column: 17, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !52, line: 916, column: 13)
!2295 = !DILocation(line: 916, column: 13, scope: !2291)
!2296 = !DILocation(line: 917, column: 11, scope: !2294)
!2297 = !DILocation(line: 0, scope: !2136, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 918, column: 27, scope: !2291)
!2299 = !DILocation(line: 218, column: 10, scope: !2136, inlinedAt: !2298)
!2300 = !DILocation(line: 918, column: 19, scope: !2291)
!2301 = !DILocation(line: 919, column: 69, scope: !2291)
!2302 = !DILocation(line: 921, column: 44, scope: !2291)
!2303 = !DILocation(line: 922, column: 44, scope: !2291)
!2304 = !DILocation(line: 919, column: 9, scope: !2291)
!2305 = !DILocation(line: 923, column: 7, scope: !2291)
!2306 = !DILocation(line: 925, column: 11, scope: !2235)
!2307 = !DILocation(line: 926, column: 5, scope: !2235)
!2308 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !52, file: !52, line: 937, type: !2309, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!47, !23, !6, !91}
!2311 = !{!2312, !2313, !2314}
!2312 = !DILocalVariable(name: "n", arg: 1, scope: !2308, file: !52, line: 937, type: !23)
!2313 = !DILocalVariable(name: "arg", arg: 2, scope: !2308, file: !52, line: 937, type: !6)
!2314 = !DILocalVariable(name: "argsize", arg: 3, scope: !2308, file: !52, line: 937, type: !91)
!2315 = !DILocation(line: 0, scope: !2308)
!2316 = !DILocation(line: 939, column: 10, scope: !2308)
!2317 = !DILocation(line: 939, column: 3, scope: !2308)
!2318 = distinct !DISubprogram(name: "quotearg", scope: !52, file: !52, line: 943, type: !938, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2319)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "arg", arg: 1, scope: !2318, file: !52, line: 943, type: !6)
!2321 = !DILocation(line: 0, scope: !2318)
!2322 = !DILocation(line: 0, scope: !2213, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 945, column: 10, scope: !2318)
!2324 = !DILocation(line: 933, column: 10, scope: !2213, inlinedAt: !2323)
!2325 = !DILocation(line: 945, column: 3, scope: !2318)
!2326 = distinct !DISubprogram(name: "quotearg_mem", scope: !52, file: !52, line: 949, type: !2327, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!47, !6, !91}
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "arg", arg: 1, scope: !2326, file: !52, line: 949, type: !6)
!2331 = !DILocalVariable(name: "argsize", arg: 2, scope: !2326, file: !52, line: 949, type: !91)
!2332 = !DILocation(line: 0, scope: !2326)
!2333 = !DILocation(line: 0, scope: !2308, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 951, column: 10, scope: !2326)
!2335 = !DILocation(line: 939, column: 10, scope: !2308, inlinedAt: !2334)
!2336 = !DILocation(line: 951, column: 3, scope: !2326)
!2337 = distinct !DISubprogram(name: "quotearg_n_style", scope: !52, file: !52, line: 955, type: !2338, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!47, !23, !54, !6}
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DILocalVariable(name: "n", arg: 1, scope: !2337, file: !52, line: 955, type: !23)
!2342 = !DILocalVariable(name: "s", arg: 2, scope: !2337, file: !52, line: 955, type: !54)
!2343 = !DILocalVariable(name: "arg", arg: 3, scope: !2337, file: !52, line: 955, type: !6)
!2344 = !DILocalVariable(name: "o", scope: !2337, file: !52, line: 957, type: !1269)
!2345 = !DILocation(line: 0, scope: !2337)
!2346 = !DILocation(line: 957, column: 3, scope: !2337)
!2347 = !DILocation(line: 957, column: 32, scope: !2337)
!2348 = !{!2349}
!2349 = distinct !{!2349, !2350, !"quoting_options_from_style: argument 0"}
!2350 = distinct !{!2350, !"quoting_options_from_style"}
!2351 = !DILocation(line: 957, column: 36, scope: !2337)
!2352 = !DILocalVariable(name: "style", arg: 1, scope: !2353, file: !52, line: 193, type: !54)
!2353 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !52, file: !52, line: 193, type: !2354, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!103, !54}
!2356 = !{!2352, !2357}
!2357 = !DILocalVariable(name: "o", scope: !2353, file: !52, line: 195, type: !103)
!2358 = !DILocation(line: 0, scope: !2353, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 957, column: 36, scope: !2337)
!2360 = !DILocation(line: 195, column: 26, scope: !2353, inlinedAt: !2359)
!2361 = !DILocation(line: 196, column: 13, scope: !2362, inlinedAt: !2359)
!2362 = distinct !DILexicalBlock(scope: !2353, file: !52, line: 196, column: 7)
!2363 = !DILocation(line: 196, column: 7, scope: !2353, inlinedAt: !2359)
!2364 = !DILocation(line: 197, column: 5, scope: !2362, inlinedAt: !2359)
!2365 = !DILocation(line: 198, column: 5, scope: !2353, inlinedAt: !2359)
!2366 = !DILocation(line: 198, column: 11, scope: !2353, inlinedAt: !2359)
!2367 = !DILocation(line: 958, column: 10, scope: !2337)
!2368 = !DILocation(line: 959, column: 1, scope: !2337)
!2369 = !DILocation(line: 958, column: 3, scope: !2337)
!2370 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !52, file: !52, line: 962, type: !2371, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!47, !23, !54, !6, !91}
!2373 = !{!2374, !2375, !2376, !2377, !2378}
!2374 = !DILocalVariable(name: "n", arg: 1, scope: !2370, file: !52, line: 962, type: !23)
!2375 = !DILocalVariable(name: "s", arg: 2, scope: !2370, file: !52, line: 962, type: !54)
!2376 = !DILocalVariable(name: "arg", arg: 3, scope: !2370, file: !52, line: 963, type: !6)
!2377 = !DILocalVariable(name: "argsize", arg: 4, scope: !2370, file: !52, line: 963, type: !91)
!2378 = !DILocalVariable(name: "o", scope: !2370, file: !52, line: 965, type: !1269)
!2379 = !DILocation(line: 0, scope: !2370)
!2380 = !DILocation(line: 965, column: 3, scope: !2370)
!2381 = !DILocation(line: 965, column: 32, scope: !2370)
!2382 = !{!2383}
!2383 = distinct !{!2383, !2384, !"quoting_options_from_style: argument 0"}
!2384 = distinct !{!2384, !"quoting_options_from_style"}
!2385 = !DILocation(line: 965, column: 36, scope: !2370)
!2386 = !DILocation(line: 0, scope: !2353, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 965, column: 36, scope: !2370)
!2388 = !DILocation(line: 195, column: 26, scope: !2353, inlinedAt: !2387)
!2389 = !DILocation(line: 196, column: 13, scope: !2362, inlinedAt: !2387)
!2390 = !DILocation(line: 196, column: 7, scope: !2353, inlinedAt: !2387)
!2391 = !DILocation(line: 197, column: 5, scope: !2362, inlinedAt: !2387)
!2392 = !DILocation(line: 198, column: 5, scope: !2353, inlinedAt: !2387)
!2393 = !DILocation(line: 198, column: 11, scope: !2353, inlinedAt: !2387)
!2394 = !DILocation(line: 966, column: 10, scope: !2370)
!2395 = !DILocation(line: 967, column: 1, scope: !2370)
!2396 = !DILocation(line: 966, column: 3, scope: !2370)
!2397 = distinct !DISubprogram(name: "quotearg_style", scope: !52, file: !52, line: 970, type: !2398, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!47, !54, !6}
!2400 = !{!2401, !2402}
!2401 = !DILocalVariable(name: "s", arg: 1, scope: !2397, file: !52, line: 970, type: !54)
!2402 = !DILocalVariable(name: "arg", arg: 2, scope: !2397, file: !52, line: 970, type: !6)
!2403 = !DILocation(line: 0, scope: !2397)
!2404 = !DILocation(line: 0, scope: !2337, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 972, column: 10, scope: !2397)
!2406 = !DILocation(line: 957, column: 3, scope: !2337, inlinedAt: !2405)
!2407 = !DILocation(line: 957, column: 32, scope: !2337, inlinedAt: !2405)
!2408 = !{!2409}
!2409 = distinct !{!2409, !2410, !"quoting_options_from_style: argument 0"}
!2410 = distinct !{!2410, !"quoting_options_from_style"}
!2411 = !DILocation(line: 957, column: 36, scope: !2337, inlinedAt: !2405)
!2412 = !DILocation(line: 0, scope: !2353, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 957, column: 36, scope: !2337, inlinedAt: !2405)
!2414 = !DILocation(line: 195, column: 26, scope: !2353, inlinedAt: !2413)
!2415 = !DILocation(line: 196, column: 13, scope: !2362, inlinedAt: !2413)
!2416 = !DILocation(line: 196, column: 7, scope: !2353, inlinedAt: !2413)
!2417 = !DILocation(line: 197, column: 5, scope: !2362, inlinedAt: !2413)
!2418 = !DILocation(line: 198, column: 5, scope: !2353, inlinedAt: !2413)
!2419 = !DILocation(line: 198, column: 11, scope: !2353, inlinedAt: !2413)
!2420 = !DILocation(line: 958, column: 10, scope: !2337, inlinedAt: !2405)
!2421 = !DILocation(line: 959, column: 1, scope: !2337, inlinedAt: !2405)
!2422 = !DILocation(line: 972, column: 3, scope: !2397)
!2423 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !52, file: !52, line: 976, type: !2424, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!47, !54, !6, !91}
!2426 = !{!2427, !2428, !2429}
!2427 = !DILocalVariable(name: "s", arg: 1, scope: !2423, file: !52, line: 976, type: !54)
!2428 = !DILocalVariable(name: "arg", arg: 2, scope: !2423, file: !52, line: 976, type: !6)
!2429 = !DILocalVariable(name: "argsize", arg: 3, scope: !2423, file: !52, line: 976, type: !91)
!2430 = !DILocation(line: 0, scope: !2423)
!2431 = !DILocation(line: 0, scope: !2370, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 978, column: 10, scope: !2423)
!2433 = !DILocation(line: 965, column: 3, scope: !2370, inlinedAt: !2432)
!2434 = !DILocation(line: 965, column: 32, scope: !2370, inlinedAt: !2432)
!2435 = !{!2436}
!2436 = distinct !{!2436, !2437, !"quoting_options_from_style: argument 0"}
!2437 = distinct !{!2437, !"quoting_options_from_style"}
!2438 = !DILocation(line: 965, column: 36, scope: !2370, inlinedAt: !2432)
!2439 = !DILocation(line: 0, scope: !2353, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 965, column: 36, scope: !2370, inlinedAt: !2432)
!2441 = !DILocation(line: 195, column: 26, scope: !2353, inlinedAt: !2440)
!2442 = !DILocation(line: 196, column: 13, scope: !2362, inlinedAt: !2440)
!2443 = !DILocation(line: 196, column: 7, scope: !2353, inlinedAt: !2440)
!2444 = !DILocation(line: 197, column: 5, scope: !2362, inlinedAt: !2440)
!2445 = !DILocation(line: 198, column: 5, scope: !2353, inlinedAt: !2440)
!2446 = !DILocation(line: 198, column: 11, scope: !2353, inlinedAt: !2440)
!2447 = !DILocation(line: 966, column: 10, scope: !2370, inlinedAt: !2432)
!2448 = !DILocation(line: 967, column: 1, scope: !2370, inlinedAt: !2432)
!2449 = !DILocation(line: 978, column: 3, scope: !2423)
!2450 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !52, file: !52, line: 982, type: !2451, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!47, !6, !91, !8}
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DILocalVariable(name: "arg", arg: 1, scope: !2450, file: !52, line: 982, type: !6)
!2455 = !DILocalVariable(name: "argsize", arg: 2, scope: !2450, file: !52, line: 982, type: !91)
!2456 = !DILocalVariable(name: "ch", arg: 3, scope: !2450, file: !52, line: 982, type: !8)
!2457 = !DILocalVariable(name: "options", scope: !2450, file: !52, line: 984, type: !103)
!2458 = !DILocation(line: 0, scope: !2450)
!2459 = !DILocation(line: 984, column: 3, scope: !2450)
!2460 = !DILocation(line: 984, column: 26, scope: !2450)
!2461 = !DILocation(line: 985, column: 13, scope: !2450)
!2462 = !{i64 0, i64 4, !1087, i64 4, i64 4, !811, i64 8, i64 32, !1087, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2463 = !DILocation(line: 0, scope: !1289, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 986, column: 3, scope: !2450)
!2465 = !DILocation(line: 156, column: 62, scope: !1289, inlinedAt: !2464)
!2466 = !DILocation(line: 156, column: 57, scope: !1289, inlinedAt: !2464)
!2467 = !DILocation(line: 157, column: 15, scope: !1289, inlinedAt: !2464)
!2468 = !DILocation(line: 158, column: 12, scope: !1289, inlinedAt: !2464)
!2469 = !DILocation(line: 158, column: 15, scope: !1289, inlinedAt: !2464)
!2470 = !DILocation(line: 158, column: 25, scope: !1289, inlinedAt: !2464)
!2471 = !DILocation(line: 159, column: 18, scope: !1289, inlinedAt: !2464)
!2472 = !DILocation(line: 159, column: 23, scope: !1289, inlinedAt: !2464)
!2473 = !DILocation(line: 159, column: 6, scope: !1289, inlinedAt: !2464)
!2474 = !DILocation(line: 987, column: 10, scope: !2450)
!2475 = !DILocation(line: 988, column: 1, scope: !2450)
!2476 = !DILocation(line: 987, column: 3, scope: !2450)
!2477 = distinct !DISubprogram(name: "quotearg_char", scope: !52, file: !52, line: 991, type: !2478, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!47, !6, !8}
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "arg", arg: 1, scope: !2477, file: !52, line: 991, type: !6)
!2482 = !DILocalVariable(name: "ch", arg: 2, scope: !2477, file: !52, line: 991, type: !8)
!2483 = !DILocation(line: 0, scope: !2477)
!2484 = !DILocation(line: 0, scope: !2450, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 993, column: 10, scope: !2477)
!2486 = !DILocation(line: 984, column: 3, scope: !2450, inlinedAt: !2485)
!2487 = !DILocation(line: 984, column: 26, scope: !2450, inlinedAt: !2485)
!2488 = !DILocation(line: 985, column: 13, scope: !2450, inlinedAt: !2485)
!2489 = !DILocation(line: 0, scope: !1289, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 986, column: 3, scope: !2450, inlinedAt: !2485)
!2491 = !DILocation(line: 156, column: 62, scope: !1289, inlinedAt: !2490)
!2492 = !DILocation(line: 156, column: 57, scope: !1289, inlinedAt: !2490)
!2493 = !DILocation(line: 157, column: 15, scope: !1289, inlinedAt: !2490)
!2494 = !DILocation(line: 158, column: 12, scope: !1289, inlinedAt: !2490)
!2495 = !DILocation(line: 158, column: 15, scope: !1289, inlinedAt: !2490)
!2496 = !DILocation(line: 158, column: 25, scope: !1289, inlinedAt: !2490)
!2497 = !DILocation(line: 159, column: 18, scope: !1289, inlinedAt: !2490)
!2498 = !DILocation(line: 159, column: 23, scope: !1289, inlinedAt: !2490)
!2499 = !DILocation(line: 159, column: 6, scope: !1289, inlinedAt: !2490)
!2500 = !DILocation(line: 987, column: 10, scope: !2450, inlinedAt: !2485)
!2501 = !DILocation(line: 988, column: 1, scope: !2450, inlinedAt: !2485)
!2502 = !DILocation(line: 993, column: 3, scope: !2477)
!2503 = distinct !DISubprogram(name: "quotearg_colon", scope: !52, file: !52, line: 997, type: !938, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2504)
!2504 = !{!2505}
!2505 = !DILocalVariable(name: "arg", arg: 1, scope: !2503, file: !52, line: 997, type: !6)
!2506 = !DILocation(line: 0, scope: !2503)
!2507 = !DILocation(line: 0, scope: !2477, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 999, column: 10, scope: !2503)
!2509 = !DILocation(line: 0, scope: !2450, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 993, column: 10, scope: !2477, inlinedAt: !2508)
!2511 = !DILocation(line: 984, column: 3, scope: !2450, inlinedAt: !2510)
!2512 = !DILocation(line: 984, column: 26, scope: !2450, inlinedAt: !2510)
!2513 = !DILocation(line: 985, column: 13, scope: !2450, inlinedAt: !2510)
!2514 = !DILocation(line: 0, scope: !1289, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 986, column: 3, scope: !2450, inlinedAt: !2510)
!2516 = !DILocation(line: 156, column: 57, scope: !1289, inlinedAt: !2515)
!2517 = !DILocation(line: 158, column: 12, scope: !1289, inlinedAt: !2515)
!2518 = !DILocation(line: 159, column: 6, scope: !1289, inlinedAt: !2515)
!2519 = !DILocation(line: 987, column: 10, scope: !2450, inlinedAt: !2510)
!2520 = !DILocation(line: 988, column: 1, scope: !2450, inlinedAt: !2510)
!2521 = !DILocation(line: 999, column: 3, scope: !2503)
!2522 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !52, file: !52, line: 1003, type: !2327, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2523)
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !52, line: 1003, type: !6)
!2525 = !DILocalVariable(name: "argsize", arg: 2, scope: !2522, file: !52, line: 1003, type: !91)
!2526 = !DILocation(line: 0, scope: !2522)
!2527 = !DILocation(line: 0, scope: !2450, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 1005, column: 10, scope: !2522)
!2529 = !DILocation(line: 984, column: 3, scope: !2450, inlinedAt: !2528)
!2530 = !DILocation(line: 984, column: 26, scope: !2450, inlinedAt: !2528)
!2531 = !DILocation(line: 985, column: 13, scope: !2450, inlinedAt: !2528)
!2532 = !DILocation(line: 0, scope: !1289, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 986, column: 3, scope: !2450, inlinedAt: !2528)
!2534 = !DILocation(line: 156, column: 57, scope: !1289, inlinedAt: !2533)
!2535 = !DILocation(line: 158, column: 12, scope: !1289, inlinedAt: !2533)
!2536 = !DILocation(line: 159, column: 6, scope: !1289, inlinedAt: !2533)
!2537 = !DILocation(line: 987, column: 10, scope: !2450, inlinedAt: !2528)
!2538 = !DILocation(line: 988, column: 1, scope: !2450, inlinedAt: !2528)
!2539 = !DILocation(line: 1005, column: 3, scope: !2522)
!2540 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !52, file: !52, line: 1009, type: !2338, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2541)
!2541 = !{!2542, !2543, !2544, !2545}
!2542 = !DILocalVariable(name: "n", arg: 1, scope: !2540, file: !52, line: 1009, type: !23)
!2543 = !DILocalVariable(name: "s", arg: 2, scope: !2540, file: !52, line: 1009, type: !54)
!2544 = !DILocalVariable(name: "arg", arg: 3, scope: !2540, file: !52, line: 1009, type: !6)
!2545 = !DILocalVariable(name: "options", scope: !2540, file: !52, line: 1011, type: !103)
!2546 = !DILocation(line: 195, column: 26, scope: !2353, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 1012, column: 13, scope: !2540)
!2548 = !DILocation(line: 0, scope: !2540)
!2549 = !DILocation(line: 1011, column: 3, scope: !2540)
!2550 = !DILocation(line: 1011, column: 26, scope: !2540)
!2551 = !DILocation(line: 1012, column: 13, scope: !2540)
!2552 = !{!2553}
!2553 = distinct !{!2553, !2554, !"quoting_options_from_style: argument 0"}
!2554 = distinct !{!2554, !"quoting_options_from_style"}
!2555 = !DILocation(line: 0, scope: !2353, inlinedAt: !2547)
!2556 = !DILocation(line: 196, column: 13, scope: !2362, inlinedAt: !2547)
!2557 = !DILocation(line: 196, column: 7, scope: !2353, inlinedAt: !2547)
!2558 = !DILocation(line: 197, column: 5, scope: !2362, inlinedAt: !2547)
!2559 = !{i64 0, i64 4, !811, i64 4, i64 32, !1087, i64 36, i64 8, !636, i64 44, i64 8, !636}
!2560 = !DILocation(line: 0, scope: !1289, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 1013, column: 3, scope: !2540)
!2562 = !DILocation(line: 156, column: 57, scope: !1289, inlinedAt: !2561)
!2563 = !DILocation(line: 158, column: 12, scope: !1289, inlinedAt: !2561)
!2564 = !DILocation(line: 159, column: 6, scope: !1289, inlinedAt: !2561)
!2565 = !DILocation(line: 1014, column: 10, scope: !2540)
!2566 = !DILocation(line: 1015, column: 1, scope: !2540)
!2567 = !DILocation(line: 1014, column: 3, scope: !2540)
!2568 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !52, file: !52, line: 1018, type: !2569, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!47, !23, !6, !6, !6}
!2571 = !{!2572, !2573, !2574, !2575}
!2572 = !DILocalVariable(name: "n", arg: 1, scope: !2568, file: !52, line: 1018, type: !23)
!2573 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2568, file: !52, line: 1018, type: !6)
!2574 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2568, file: !52, line: 1019, type: !6)
!2575 = !DILocalVariable(name: "arg", arg: 4, scope: !2568, file: !52, line: 1019, type: !6)
!2576 = !DILocation(line: 0, scope: !2568)
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2578, file: !52, line: 1026, type: !23)
!2578 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !52, file: !52, line: 1026, type: !2579, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!47, !23, !6, !6, !6, !91}
!2581 = !{!2577, !2582, !2583, !2584, !2585, !2586}
!2582 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2578, file: !52, line: 1026, type: !6)
!2583 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2578, file: !52, line: 1027, type: !6)
!2584 = !DILocalVariable(name: "arg", arg: 4, scope: !2578, file: !52, line: 1028, type: !6)
!2585 = !DILocalVariable(name: "argsize", arg: 5, scope: !2578, file: !52, line: 1028, type: !91)
!2586 = !DILocalVariable(name: "o", scope: !2578, file: !52, line: 1030, type: !103)
!2587 = !DILocation(line: 0, scope: !2578, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 1021, column: 10, scope: !2568)
!2589 = !DILocation(line: 1030, column: 3, scope: !2578, inlinedAt: !2588)
!2590 = !DILocation(line: 1030, column: 26, scope: !2578, inlinedAt: !2588)
!2591 = !DILocation(line: 1030, column: 30, scope: !2578, inlinedAt: !2588)
!2592 = !DILocation(line: 0, scope: !1330, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 1031, column: 3, scope: !2578, inlinedAt: !2588)
!2594 = !DILocation(line: 184, column: 6, scope: !1330, inlinedAt: !2593)
!2595 = !DILocation(line: 184, column: 12, scope: !1330, inlinedAt: !2593)
!2596 = !DILocation(line: 185, column: 8, scope: !1344, inlinedAt: !2593)
!2597 = !DILocation(line: 185, column: 19, scope: !1344, inlinedAt: !2593)
!2598 = !DILocation(line: 186, column: 5, scope: !1344, inlinedAt: !2593)
!2599 = !DILocation(line: 187, column: 6, scope: !1330, inlinedAt: !2593)
!2600 = !DILocation(line: 187, column: 17, scope: !1330, inlinedAt: !2593)
!2601 = !DILocation(line: 188, column: 6, scope: !1330, inlinedAt: !2593)
!2602 = !DILocation(line: 188, column: 18, scope: !1330, inlinedAt: !2593)
!2603 = !DILocation(line: 1032, column: 10, scope: !2578, inlinedAt: !2588)
!2604 = !DILocation(line: 1033, column: 1, scope: !2578, inlinedAt: !2588)
!2605 = !DILocation(line: 1021, column: 3, scope: !2568)
!2606 = !DILocation(line: 0, scope: !2578)
!2607 = !DILocation(line: 1030, column: 3, scope: !2578)
!2608 = !DILocation(line: 1030, column: 26, scope: !2578)
!2609 = !DILocation(line: 1030, column: 30, scope: !2578)
!2610 = !DILocation(line: 0, scope: !1330, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1031, column: 3, scope: !2578)
!2612 = !DILocation(line: 184, column: 6, scope: !1330, inlinedAt: !2611)
!2613 = !DILocation(line: 184, column: 12, scope: !1330, inlinedAt: !2611)
!2614 = !DILocation(line: 185, column: 8, scope: !1344, inlinedAt: !2611)
!2615 = !DILocation(line: 185, column: 19, scope: !1344, inlinedAt: !2611)
!2616 = !DILocation(line: 186, column: 5, scope: !1344, inlinedAt: !2611)
!2617 = !DILocation(line: 187, column: 6, scope: !1330, inlinedAt: !2611)
!2618 = !DILocation(line: 187, column: 17, scope: !1330, inlinedAt: !2611)
!2619 = !DILocation(line: 188, column: 6, scope: !1330, inlinedAt: !2611)
!2620 = !DILocation(line: 188, column: 18, scope: !1330, inlinedAt: !2611)
!2621 = !DILocation(line: 1032, column: 10, scope: !2578)
!2622 = !DILocation(line: 1033, column: 1, scope: !2578)
!2623 = !DILocation(line: 1032, column: 3, scope: !2578)
!2624 = distinct !DISubprogram(name: "quotearg_custom", scope: !52, file: !52, line: 1036, type: !2625, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!47, !6, !6, !6}
!2627 = !{!2628, !2629, !2630}
!2628 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2624, file: !52, line: 1036, type: !6)
!2629 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2624, file: !52, line: 1036, type: !6)
!2630 = !DILocalVariable(name: "arg", arg: 3, scope: !2624, file: !52, line: 1037, type: !6)
!2631 = !DILocation(line: 0, scope: !2624)
!2632 = !DILocation(line: 0, scope: !2568, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 1039, column: 10, scope: !2624)
!2634 = !DILocation(line: 0, scope: !2578, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1021, column: 10, scope: !2568, inlinedAt: !2633)
!2636 = !DILocation(line: 1030, column: 3, scope: !2578, inlinedAt: !2635)
!2637 = !DILocation(line: 1030, column: 26, scope: !2578, inlinedAt: !2635)
!2638 = !DILocation(line: 1030, column: 30, scope: !2578, inlinedAt: !2635)
!2639 = !DILocation(line: 0, scope: !1330, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1031, column: 3, scope: !2578, inlinedAt: !2635)
!2641 = !DILocation(line: 184, column: 6, scope: !1330, inlinedAt: !2640)
!2642 = !DILocation(line: 184, column: 12, scope: !1330, inlinedAt: !2640)
!2643 = !DILocation(line: 185, column: 8, scope: !1344, inlinedAt: !2640)
!2644 = !DILocation(line: 185, column: 19, scope: !1344, inlinedAt: !2640)
!2645 = !DILocation(line: 186, column: 5, scope: !1344, inlinedAt: !2640)
!2646 = !DILocation(line: 187, column: 6, scope: !1330, inlinedAt: !2640)
!2647 = !DILocation(line: 187, column: 17, scope: !1330, inlinedAt: !2640)
!2648 = !DILocation(line: 188, column: 6, scope: !1330, inlinedAt: !2640)
!2649 = !DILocation(line: 188, column: 18, scope: !1330, inlinedAt: !2640)
!2650 = !DILocation(line: 1032, column: 10, scope: !2578, inlinedAt: !2635)
!2651 = !DILocation(line: 1033, column: 1, scope: !2578, inlinedAt: !2635)
!2652 = !DILocation(line: 1039, column: 3, scope: !2624)
!2653 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !52, file: !52, line: 1043, type: !2654, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!47, !6, !6, !6, !91}
!2656 = !{!2657, !2658, !2659, !2660}
!2657 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2653, file: !52, line: 1043, type: !6)
!2658 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2653, file: !52, line: 1043, type: !6)
!2659 = !DILocalVariable(name: "arg", arg: 3, scope: !2653, file: !52, line: 1044, type: !6)
!2660 = !DILocalVariable(name: "argsize", arg: 4, scope: !2653, file: !52, line: 1044, type: !91)
!2661 = !DILocation(line: 0, scope: !2653)
!2662 = !DILocation(line: 0, scope: !2578, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 1046, column: 10, scope: !2653)
!2664 = !DILocation(line: 1030, column: 3, scope: !2578, inlinedAt: !2663)
!2665 = !DILocation(line: 1030, column: 26, scope: !2578, inlinedAt: !2663)
!2666 = !DILocation(line: 1030, column: 30, scope: !2578, inlinedAt: !2663)
!2667 = !DILocation(line: 0, scope: !1330, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 1031, column: 3, scope: !2578, inlinedAt: !2663)
!2669 = !DILocation(line: 184, column: 6, scope: !1330, inlinedAt: !2668)
!2670 = !DILocation(line: 184, column: 12, scope: !1330, inlinedAt: !2668)
!2671 = !DILocation(line: 185, column: 8, scope: !1344, inlinedAt: !2668)
!2672 = !DILocation(line: 185, column: 19, scope: !1344, inlinedAt: !2668)
!2673 = !DILocation(line: 186, column: 5, scope: !1344, inlinedAt: !2668)
!2674 = !DILocation(line: 187, column: 6, scope: !1330, inlinedAt: !2668)
!2675 = !DILocation(line: 187, column: 17, scope: !1330, inlinedAt: !2668)
!2676 = !DILocation(line: 188, column: 6, scope: !1330, inlinedAt: !2668)
!2677 = !DILocation(line: 188, column: 18, scope: !1330, inlinedAt: !2668)
!2678 = !DILocation(line: 1032, column: 10, scope: !2578, inlinedAt: !2663)
!2679 = !DILocation(line: 1033, column: 1, scope: !2578, inlinedAt: !2663)
!2680 = !DILocation(line: 1046, column: 3, scope: !2653)
!2681 = distinct !DISubprogram(name: "quote_n_mem", scope: !52, file: !52, line: 1061, type: !2682, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!6, !23, !6, !91}
!2684 = !{!2685, !2686, !2687}
!2685 = !DILocalVariable(name: "n", arg: 1, scope: !2681, file: !52, line: 1061, type: !23)
!2686 = !DILocalVariable(name: "arg", arg: 2, scope: !2681, file: !52, line: 1061, type: !6)
!2687 = !DILocalVariable(name: "argsize", arg: 3, scope: !2681, file: !52, line: 1061, type: !91)
!2688 = !DILocation(line: 0, scope: !2681)
!2689 = !DILocation(line: 1063, column: 10, scope: !2681)
!2690 = !DILocation(line: 1063, column: 3, scope: !2681)
!2691 = distinct !DISubprogram(name: "quote_mem", scope: !52, file: !52, line: 1067, type: !2692, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!6, !6, !91}
!2694 = !{!2695, !2696}
!2695 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !52, line: 1067, type: !6)
!2696 = !DILocalVariable(name: "argsize", arg: 2, scope: !2691, file: !52, line: 1067, type: !91)
!2697 = !DILocation(line: 0, scope: !2691)
!2698 = !DILocation(line: 0, scope: !2681, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 1069, column: 10, scope: !2691)
!2700 = !DILocation(line: 1063, column: 10, scope: !2681, inlinedAt: !2699)
!2701 = !DILocation(line: 1069, column: 3, scope: !2691)
!2702 = distinct !DISubprogram(name: "quote_n", scope: !52, file: !52, line: 1073, type: !2703, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!6, !23, !6}
!2705 = !{!2706, !2707}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2702, file: !52, line: 1073, type: !23)
!2707 = !DILocalVariable(name: "arg", arg: 2, scope: !2702, file: !52, line: 1073, type: !6)
!2708 = !DILocation(line: 0, scope: !2702)
!2709 = !DILocation(line: 0, scope: !2681, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1075, column: 10, scope: !2702)
!2711 = !DILocation(line: 1063, column: 10, scope: !2681, inlinedAt: !2710)
!2712 = !DILocation(line: 1075, column: 3, scope: !2702)
!2713 = distinct !DISubprogram(name: "quote", scope: !52, file: !52, line: 1079, type: !2714, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !51, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!6, !6}
!2716 = !{!2717}
!2717 = !DILocalVariable(name: "arg", arg: 1, scope: !2713, file: !52, line: 1079, type: !6)
!2718 = !DILocation(line: 0, scope: !2713)
!2719 = !DILocation(line: 0, scope: !2702, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1081, column: 10, scope: !2713)
!2721 = !DILocation(line: 0, scope: !2681, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 1075, column: 10, scope: !2702, inlinedAt: !2720)
!2723 = !DILocation(line: 1063, column: 10, scope: !2681, inlinedAt: !2722)
!2724 = !DILocation(line: 1081, column: 3, scope: !2713)
!2725 = distinct !DISubprogram(name: "version_etc_arn", scope: !188, file: !188, line: 61, type: !2726, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2763)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2728, !6, !6, !6, !2762, !91}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !909, line: 7, baseType: !2730)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 49, size: 1728, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2730, file: !709, line: 51, baseType: !23, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2730, file: !709, line: 54, baseType: !47, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2730, file: !709, line: 55, baseType: !47, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2730, file: !709, line: 56, baseType: !47, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2730, file: !709, line: 57, baseType: !47, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2730, file: !709, line: 58, baseType: !47, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2730, file: !709, line: 59, baseType: !47, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2730, file: !709, line: 60, baseType: !47, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2730, file: !709, line: 61, baseType: !47, size: 64, offset: 512)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2730, file: !709, line: 64, baseType: !47, size: 64, offset: 576)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2730, file: !709, line: 65, baseType: !47, size: 64, offset: 640)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2730, file: !709, line: 66, baseType: !47, size: 64, offset: 704)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2730, file: !709, line: 68, baseType: !724, size: 64, offset: 768)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2730, file: !709, line: 70, baseType: !2746, size: 64, offset: 832)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2730, file: !709, line: 72, baseType: !23, size: 32, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2730, file: !709, line: 73, baseType: !23, size: 32, offset: 928)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2730, file: !709, line: 74, baseType: !730, size: 64, offset: 960)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2730, file: !709, line: 77, baseType: !90, size: 16, offset: 1024)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2730, file: !709, line: 78, baseType: !735, size: 8, offset: 1040)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2730, file: !709, line: 79, baseType: !737, size: 8, offset: 1048)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2730, file: !709, line: 81, baseType: !741, size: 64, offset: 1088)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2730, file: !709, line: 89, baseType: !744, size: 64, offset: 1152)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2730, file: !709, line: 91, baseType: !746, size: 64, offset: 1216)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2730, file: !709, line: 92, baseType: !749, size: 64, offset: 1280)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2730, file: !709, line: 93, baseType: !2746, size: 64, offset: 1344)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2730, file: !709, line: 94, baseType: !46, size: 64, offset: 1408)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2730, file: !709, line: 95, baseType: !91, size: 64, offset: 1472)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2730, file: !709, line: 96, baseType: !23, size: 32, offset: 1536)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2730, file: !709, line: 98, baseType: !756, size: 160, offset: 1568)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769}
!2764 = !DILocalVariable(name: "stream", arg: 1, scope: !2725, file: !188, line: 61, type: !2728)
!2765 = !DILocalVariable(name: "command_name", arg: 2, scope: !2725, file: !188, line: 62, type: !6)
!2766 = !DILocalVariable(name: "package", arg: 3, scope: !2725, file: !188, line: 62, type: !6)
!2767 = !DILocalVariable(name: "version", arg: 4, scope: !2725, file: !188, line: 63, type: !6)
!2768 = !DILocalVariable(name: "authors", arg: 5, scope: !2725, file: !188, line: 64, type: !2762)
!2769 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2725, file: !188, line: 64, type: !91)
!2770 = !DILocation(line: 0, scope: !2725)
!2771 = !DILocation(line: 66, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2725, file: !188, line: 66, column: 7)
!2773 = !DILocation(line: 66, column: 7, scope: !2725)
!2774 = !DILocation(line: 67, column: 5, scope: !2772)
!2775 = !DILocation(line: 69, column: 5, scope: !2772)
!2776 = !DILocation(line: 83, column: 3, scope: !2725)
!2777 = !DILocation(line: 85, column: 3, scope: !2725)
!2778 = !DILocation(line: 88, column: 3, scope: !2725)
!2779 = !DILocation(line: 95, column: 3, scope: !2725)
!2780 = !DILocation(line: 97, column: 3, scope: !2725)
!2781 = !DILocation(line: 105, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2725, file: !188, line: 98, column: 5)
!2783 = !DILocation(line: 106, column: 7, scope: !2782)
!2784 = !DILocation(line: 109, column: 7, scope: !2782)
!2785 = !DILocation(line: 110, column: 7, scope: !2782)
!2786 = !DILocation(line: 113, column: 7, scope: !2782)
!2787 = !DILocation(line: 115, column: 7, scope: !2782)
!2788 = !DILocation(line: 120, column: 7, scope: !2782)
!2789 = !DILocation(line: 122, column: 7, scope: !2782)
!2790 = !DILocation(line: 127, column: 7, scope: !2782)
!2791 = !DILocation(line: 129, column: 7, scope: !2782)
!2792 = !DILocation(line: 134, column: 7, scope: !2782)
!2793 = !DILocation(line: 137, column: 7, scope: !2782)
!2794 = !DILocation(line: 142, column: 7, scope: !2782)
!2795 = !DILocation(line: 145, column: 7, scope: !2782)
!2796 = !DILocation(line: 150, column: 7, scope: !2782)
!2797 = !DILocation(line: 154, column: 7, scope: !2782)
!2798 = !DILocation(line: 159, column: 7, scope: !2782)
!2799 = !DILocation(line: 163, column: 7, scope: !2782)
!2800 = !DILocation(line: 170, column: 7, scope: !2782)
!2801 = !DILocation(line: 174, column: 7, scope: !2782)
!2802 = !DILocation(line: 176, column: 1, scope: !2725)
!2803 = distinct !DISubprogram(name: "version_etc_ar", scope: !188, file: !188, line: 183, type: !2804, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2728, !6, !6, !6, !2762}
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812}
!2807 = !DILocalVariable(name: "stream", arg: 1, scope: !2803, file: !188, line: 183, type: !2728)
!2808 = !DILocalVariable(name: "command_name", arg: 2, scope: !2803, file: !188, line: 184, type: !6)
!2809 = !DILocalVariable(name: "package", arg: 3, scope: !2803, file: !188, line: 184, type: !6)
!2810 = !DILocalVariable(name: "version", arg: 4, scope: !2803, file: !188, line: 185, type: !6)
!2811 = !DILocalVariable(name: "authors", arg: 5, scope: !2803, file: !188, line: 185, type: !2762)
!2812 = !DILocalVariable(name: "n_authors", scope: !2803, file: !188, line: 187, type: !91)
!2813 = !DILocation(line: 0, scope: !2803)
!2814 = !DILocation(line: 189, column: 8, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2803, file: !188, line: 189, column: 3)
!2816 = !DILocation(line: 0, scope: !2815)
!2817 = !DILocation(line: 189, column: 23, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2815, file: !188, line: 189, column: 3)
!2819 = !DILocation(line: 189, column: 3, scope: !2815)
!2820 = !DILocation(line: 189, column: 52, scope: !2818)
!2821 = distinct !{!2821, !2819, !2822, !679}
!2822 = !DILocation(line: 190, column: 5, scope: !2815)
!2823 = !DILocation(line: 191, column: 3, scope: !2803)
!2824 = !DILocation(line: 192, column: 1, scope: !2803)
!2825 = distinct !DISubprogram(name: "version_etc_va", scope: !188, file: !188, line: 199, type: !2826, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2835)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2728, !6, !6, !6, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2830)
!2830 = !{!2831, !2832, !2833, !2834}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2829, file: !188, line: 192, baseType: !56, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2829, file: !188, line: 192, baseType: !56, size: 32, offset: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2829, file: !188, line: 192, baseType: !46, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2829, file: !188, line: 192, baseType: !46, size: 64, offset: 128)
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841, !2842}
!2836 = !DILocalVariable(name: "stream", arg: 1, scope: !2825, file: !188, line: 199, type: !2728)
!2837 = !DILocalVariable(name: "command_name", arg: 2, scope: !2825, file: !188, line: 200, type: !6)
!2838 = !DILocalVariable(name: "package", arg: 3, scope: !2825, file: !188, line: 200, type: !6)
!2839 = !DILocalVariable(name: "version", arg: 4, scope: !2825, file: !188, line: 201, type: !6)
!2840 = !DILocalVariable(name: "authors", arg: 5, scope: !2825, file: !188, line: 201, type: !2828)
!2841 = !DILocalVariable(name: "n_authors", scope: !2825, file: !188, line: 203, type: !91)
!2842 = !DILocalVariable(name: "authtab", scope: !2825, file: !188, line: 204, type: !2843)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !99)
!2844 = !DILocation(line: 0, scope: !2825)
!2845 = !DILocation(line: 204, column: 3, scope: !2825)
!2846 = !DILocation(line: 204, column: 15, scope: !2825)
!2847 = !DILocation(line: 208, column: 35, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !188, line: 206, column: 3)
!2849 = distinct !DILexicalBlock(scope: !2825, file: !188, line: 206, column: 3)
!2850 = !DILocation(line: 208, column: 14, scope: !2848)
!2851 = !DILocation(line: 208, column: 33, scope: !2848)
!2852 = !DILocation(line: 208, column: 67, scope: !2848)
!2853 = !DILocation(line: 206, column: 3, scope: !2849)
!2854 = !DILocation(line: 0, scope: !2849)
!2855 = !DILocation(line: 211, column: 3, scope: !2825)
!2856 = !DILocation(line: 213, column: 1, scope: !2825)
!2857 = distinct !DISubprogram(name: "version_etc", scope: !188, file: !188, line: 230, type: !2858, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !2728, !6, !6, !6, null}
!2860 = !{!2861, !2862, !2863, !2864, !2865}
!2861 = !DILocalVariable(name: "stream", arg: 1, scope: !2857, file: !188, line: 230, type: !2728)
!2862 = !DILocalVariable(name: "command_name", arg: 2, scope: !2857, file: !188, line: 231, type: !6)
!2863 = !DILocalVariable(name: "package", arg: 3, scope: !2857, file: !188, line: 231, type: !6)
!2864 = !DILocalVariable(name: "version", arg: 4, scope: !2857, file: !188, line: 232, type: !6)
!2865 = !DILocalVariable(name: "authors", scope: !2857, file: !188, line: 234, type: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !704, line: 52, baseType: !2867)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1148, line: 32, baseType: !2868)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !188, baseType: !2869)
!2869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2829, size: 192, elements: !738)
!2870 = !DILocation(line: 0, scope: !2857)
!2871 = !DILocation(line: 234, column: 3, scope: !2857)
!2872 = !DILocation(line: 234, column: 11, scope: !2857)
!2873 = !DILocation(line: 236, column: 3, scope: !2857)
!2874 = !DILocation(line: 237, column: 3, scope: !2857)
!2875 = !DILocation(line: 238, column: 3, scope: !2857)
!2876 = !DILocation(line: 239, column: 1, scope: !2857)
!2877 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !188, file: !188, line: 242, type: !946, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !4)
!2878 = !DILocation(line: 244, column: 3, scope: !2877)
!2879 = !DILocation(line: 249, column: 3, scope: !2877)
!2880 = !DILocation(line: 255, column: 3, scope: !2877)
!2881 = !DILocation(line: 260, column: 3, scope: !2877)
!2882 = !DILocation(line: 262, column: 1, scope: !2877)
!2883 = distinct !DISubprogram(name: "xnmalloc", scope: !197, file: !197, line: 99, type: !2884, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!46, !91, !91}
!2886 = !{!2887, !2888}
!2887 = !DILocalVariable(name: "n", arg: 1, scope: !2883, file: !197, line: 99, type: !91)
!2888 = !DILocalVariable(name: "s", arg: 2, scope: !2883, file: !197, line: 99, type: !91)
!2889 = !DILocation(line: 0, scope: !2883)
!2890 = !DILocation(line: 101, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2883, file: !197, line: 101, column: 7)
!2892 = !DILocation(line: 101, column: 7, scope: !2883)
!2893 = !DILocation(line: 102, column: 5, scope: !2891)
!2894 = !DILocation(line: 103, column: 21, scope: !2883)
!2895 = !DILocalVariable(name: "n", arg: 1, scope: !2896, file: !194, line: 39, type: !91)
!2896 = distinct !DISubprogram(name: "xmalloc", scope: !194, file: !194, line: 39, type: !2897, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!46, !91}
!2899 = !{!2895, !2900}
!2900 = !DILocalVariable(name: "p", scope: !2896, file: !194, line: 41, type: !46)
!2901 = !DILocation(line: 0, scope: !2896, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 103, column: 10, scope: !2883)
!2903 = !DILocation(line: 41, column: 13, scope: !2896, inlinedAt: !2902)
!2904 = !DILocation(line: 42, column: 8, scope: !2905, inlinedAt: !2902)
!2905 = distinct !DILexicalBlock(scope: !2896, file: !194, line: 42, column: 7)
!2906 = !DILocation(line: 42, column: 10, scope: !2905, inlinedAt: !2902)
!2907 = !DILocation(line: 43, column: 5, scope: !2905, inlinedAt: !2902)
!2908 = !DILocation(line: 103, column: 3, scope: !2883)
!2909 = !DILocation(line: 0, scope: !2896)
!2910 = !DILocation(line: 41, column: 13, scope: !2896)
!2911 = !DILocation(line: 42, column: 8, scope: !2905)
!2912 = !DILocation(line: 42, column: 10, scope: !2905)
!2913 = !DILocation(line: 43, column: 5, scope: !2905)
!2914 = !DILocation(line: 44, column: 3, scope: !2896)
!2915 = distinct !DISubprogram(name: "xnrealloc", scope: !197, file: !197, line: 112, type: !2916, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!46, !46, !91, !91}
!2918 = !{!2919, !2920, !2921}
!2919 = !DILocalVariable(name: "p", arg: 1, scope: !2915, file: !197, line: 112, type: !46)
!2920 = !DILocalVariable(name: "n", arg: 2, scope: !2915, file: !197, line: 112, type: !91)
!2921 = !DILocalVariable(name: "s", arg: 3, scope: !2915, file: !197, line: 112, type: !91)
!2922 = !DILocation(line: 0, scope: !2915)
!2923 = !DILocation(line: 114, column: 7, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2915, file: !197, line: 114, column: 7)
!2925 = !DILocation(line: 114, column: 7, scope: !2915)
!2926 = !DILocation(line: 115, column: 5, scope: !2924)
!2927 = !DILocation(line: 116, column: 25, scope: !2915)
!2928 = !DILocalVariable(name: "p", arg: 1, scope: !2929, file: !194, line: 51, type: !46)
!2929 = distinct !DISubprogram(name: "xrealloc", scope: !194, file: !194, line: 51, type: !2930, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!46, !46, !91}
!2932 = !{!2928, !2933}
!2933 = !DILocalVariable(name: "n", arg: 2, scope: !2929, file: !194, line: 51, type: !91)
!2934 = !DILocation(line: 0, scope: !2929, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 116, column: 10, scope: !2915)
!2936 = !DILocation(line: 53, column: 8, scope: !2937, inlinedAt: !2935)
!2937 = distinct !DILexicalBlock(scope: !2929, file: !194, line: 53, column: 7)
!2938 = !DILocation(line: 53, column: 10, scope: !2937, inlinedAt: !2935)
!2939 = !DILocation(line: 57, column: 7, scope: !2940, inlinedAt: !2935)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !194, line: 54, column: 5)
!2941 = !DILocation(line: 58, column: 7, scope: !2940, inlinedAt: !2935)
!2942 = !DILocation(line: 61, column: 7, scope: !2929, inlinedAt: !2935)
!2943 = !DILocation(line: 62, column: 8, scope: !2944, inlinedAt: !2935)
!2944 = distinct !DILexicalBlock(scope: !2929, file: !194, line: 62, column: 7)
!2945 = !DILocation(line: 62, column: 10, scope: !2944, inlinedAt: !2935)
!2946 = !DILocation(line: 63, column: 5, scope: !2944, inlinedAt: !2935)
!2947 = !DILocation(line: 116, column: 3, scope: !2915)
!2948 = !DILocation(line: 0, scope: !2929)
!2949 = !DILocation(line: 53, column: 8, scope: !2937)
!2950 = !DILocation(line: 53, column: 10, scope: !2937)
!2951 = !DILocation(line: 57, column: 7, scope: !2940)
!2952 = !DILocation(line: 58, column: 7, scope: !2940)
!2953 = !DILocation(line: 61, column: 7, scope: !2929)
!2954 = !DILocation(line: 62, column: 8, scope: !2944)
!2955 = !DILocation(line: 62, column: 10, scope: !2944)
!2956 = !DILocation(line: 63, column: 5, scope: !2944)
!2957 = !DILocation(line: 65, column: 1, scope: !2929)
!2958 = !DILocation(line: 0, scope: !198)
!2959 = !DILocation(line: 176, column: 14, scope: !198)
!2960 = !DILocation(line: 178, column: 9, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !198, file: !197, line: 178, column: 7)
!2962 = !DILocation(line: 178, column: 7, scope: !198)
!2963 = !DILocation(line: 180, column: 13, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !197, line: 180, column: 11)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !197, line: 179, column: 5)
!2966 = !DILocation(line: 180, column: 11, scope: !2965)
!2967 = !DILocation(line: 188, column: 30, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !197, line: 181, column: 9)
!2969 = !DILocation(line: 189, column: 16, scope: !2968)
!2970 = !DILocation(line: 189, column: 13, scope: !2968)
!2971 = !DILocation(line: 190, column: 9, scope: !2968)
!2972 = !DILocation(line: 191, column: 11, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2965, file: !197, line: 191, column: 11)
!2974 = !DILocation(line: 191, column: 11, scope: !2965)
!2975 = !DILocation(line: 206, column: 7, scope: !198)
!2976 = !DILocation(line: 207, column: 25, scope: !198)
!2977 = !DILocation(line: 0, scope: !2929, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 207, column: 10, scope: !198)
!2979 = !DILocation(line: 53, column: 10, scope: !2937, inlinedAt: !2978)
!2980 = !DILocation(line: 192, column: 9, scope: !2973)
!2981 = !DILocation(line: 200, column: 69, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !197, line: 200, column: 11)
!2983 = distinct !DILexicalBlock(scope: !2961, file: !197, line: 195, column: 5)
!2984 = !DILocation(line: 201, column: 11, scope: !2982)
!2985 = !DILocation(line: 200, column: 11, scope: !2983)
!2986 = !DILocation(line: 202, column: 9, scope: !2982)
!2987 = !DILocation(line: 203, column: 14, scope: !2983)
!2988 = !DILocation(line: 203, column: 18, scope: !2983)
!2989 = !DILocation(line: 203, column: 9, scope: !2983)
!2990 = !DILocation(line: 53, column: 8, scope: !2937, inlinedAt: !2978)
!2991 = !DILocation(line: 57, column: 7, scope: !2940, inlinedAt: !2978)
!2992 = !DILocation(line: 58, column: 7, scope: !2940, inlinedAt: !2978)
!2993 = !DILocation(line: 61, column: 7, scope: !2929, inlinedAt: !2978)
!2994 = !DILocation(line: 62, column: 8, scope: !2944, inlinedAt: !2978)
!2995 = !DILocation(line: 62, column: 10, scope: !2944, inlinedAt: !2978)
!2996 = !DILocation(line: 63, column: 5, scope: !2944, inlinedAt: !2978)
!2997 = !DILocation(line: 207, column: 3, scope: !198)
!2998 = distinct !DISubprogram(name: "xcharalloc", scope: !197, file: !197, line: 216, type: !2137, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !2999)
!2999 = !{!3000}
!3000 = !DILocalVariable(name: "n", arg: 1, scope: !2998, file: !197, line: 216, type: !91)
!3001 = !DILocation(line: 0, scope: !2998)
!3002 = !DILocation(line: 0, scope: !2896, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 218, column: 10, scope: !2998)
!3004 = !DILocation(line: 41, column: 13, scope: !2896, inlinedAt: !3003)
!3005 = !DILocation(line: 42, column: 8, scope: !2905, inlinedAt: !3003)
!3006 = !DILocation(line: 42, column: 10, scope: !2905, inlinedAt: !3003)
!3007 = !DILocation(line: 43, column: 5, scope: !2905, inlinedAt: !3003)
!3008 = !DILocation(line: 218, column: 3, scope: !2998)
!3009 = distinct !DISubprogram(name: "x2realloc", scope: !194, file: !194, line: 74, type: !3010, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!46, !46, !201}
!3012 = !{!3013, !3014}
!3013 = !DILocalVariable(name: "p", arg: 1, scope: !3009, file: !194, line: 74, type: !46)
!3014 = !DILocalVariable(name: "pn", arg: 2, scope: !3009, file: !194, line: 74, type: !201)
!3015 = !DILocation(line: 0, scope: !3009)
!3016 = !DILocation(line: 0, scope: !198, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 76, column: 10, scope: !3009)
!3018 = !DILocation(line: 176, column: 14, scope: !198, inlinedAt: !3017)
!3019 = !DILocation(line: 178, column: 9, scope: !2961, inlinedAt: !3017)
!3020 = !DILocation(line: 178, column: 7, scope: !198, inlinedAt: !3017)
!3021 = !DILocation(line: 180, column: 13, scope: !2964, inlinedAt: !3017)
!3022 = !DILocation(line: 180, column: 11, scope: !2965, inlinedAt: !3017)
!3023 = !DILocation(line: 191, column: 11, scope: !2973, inlinedAt: !3017)
!3024 = !DILocation(line: 191, column: 11, scope: !2965, inlinedAt: !3017)
!3025 = !DILocation(line: 192, column: 9, scope: !2973, inlinedAt: !3017)
!3026 = !DILocation(line: 201, column: 11, scope: !2982, inlinedAt: !3017)
!3027 = !DILocation(line: 200, column: 11, scope: !2983, inlinedAt: !3017)
!3028 = !DILocation(line: 202, column: 9, scope: !2982, inlinedAt: !3017)
!3029 = !DILocation(line: 203, column: 14, scope: !2983, inlinedAt: !3017)
!3030 = !DILocation(line: 203, column: 18, scope: !2983, inlinedAt: !3017)
!3031 = !DILocation(line: 203, column: 9, scope: !2983, inlinedAt: !3017)
!3032 = !DILocation(line: 0, scope: !2929, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 207, column: 10, scope: !198, inlinedAt: !3017)
!3034 = !DILocation(line: 53, column: 10, scope: !2937, inlinedAt: !3033)
!3035 = !DILocation(line: 206, column: 7, scope: !198, inlinedAt: !3017)
!3036 = !DILocation(line: 61, column: 7, scope: !2929, inlinedAt: !3033)
!3037 = !DILocation(line: 62, column: 8, scope: !2944, inlinedAt: !3033)
!3038 = !DILocation(line: 62, column: 10, scope: !2944, inlinedAt: !3033)
!3039 = !DILocation(line: 63, column: 5, scope: !2944, inlinedAt: !3033)
!3040 = !DILocation(line: 76, column: 3, scope: !3009)
!3041 = distinct !DISubprogram(name: "xzalloc", scope: !194, file: !194, line: 84, type: !2897, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3042)
!3042 = !{!3043}
!3043 = !DILocalVariable(name: "n", arg: 1, scope: !3041, file: !194, line: 84, type: !91)
!3044 = !DILocation(line: 0, scope: !3041)
!3045 = !DILocalVariable(name: "n", arg: 1, scope: !3046, file: !194, line: 93, type: !91)
!3046 = distinct !DISubprogram(name: "xcalloc", scope: !194, file: !194, line: 93, type: !2884, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3047)
!3047 = !{!3045, !3048, !3049}
!3048 = !DILocalVariable(name: "s", arg: 2, scope: !3046, file: !194, line: 93, type: !91)
!3049 = !DILocalVariable(name: "p", scope: !3046, file: !194, line: 95, type: !46)
!3050 = !DILocation(line: 0, scope: !3046, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 86, column: 10, scope: !3041)
!3052 = !DILocation(line: 100, column: 7, scope: !3053, inlinedAt: !3051)
!3053 = distinct !DILexicalBlock(scope: !3046, file: !194, line: 100, column: 7)
!3054 = !DILocation(line: 101, column: 7, scope: !3053, inlinedAt: !3051)
!3055 = !DILocation(line: 101, column: 18, scope: !3053, inlinedAt: !3051)
!3056 = !DILocation(line: 101, column: 16, scope: !3053, inlinedAt: !3051)
!3057 = !DILocation(line: 100, column: 7, scope: !3046, inlinedAt: !3051)
!3058 = !DILocation(line: 102, column: 5, scope: !3053, inlinedAt: !3051)
!3059 = !DILocation(line: 86, column: 3, scope: !3041)
!3060 = !DILocation(line: 0, scope: !3046)
!3061 = !DILocation(line: 100, column: 7, scope: !3053)
!3062 = !DILocation(line: 101, column: 7, scope: !3053)
!3063 = !DILocation(line: 101, column: 18, scope: !3053)
!3064 = !DILocation(line: 101, column: 16, scope: !3053)
!3065 = !DILocation(line: 100, column: 7, scope: !3046)
!3066 = !DILocation(line: 102, column: 5, scope: !3053)
!3067 = !DILocation(line: 103, column: 3, scope: !3046)
!3068 = distinct !DISubprogram(name: "xmemdup", scope: !194, file: !194, line: 111, type: !3069, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!46, !1108, !91}
!3071 = !{!3072, !3073}
!3072 = !DILocalVariable(name: "p", arg: 1, scope: !3068, file: !194, line: 111, type: !1108)
!3073 = !DILocalVariable(name: "s", arg: 2, scope: !3068, file: !194, line: 111, type: !91)
!3074 = !DILocation(line: 0, scope: !3068)
!3075 = !DILocation(line: 0, scope: !2896, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 113, column: 18, scope: !3068)
!3077 = !DILocation(line: 41, column: 13, scope: !2896, inlinedAt: !3076)
!3078 = !DILocation(line: 42, column: 8, scope: !2905, inlinedAt: !3076)
!3079 = !DILocation(line: 42, column: 10, scope: !2905, inlinedAt: !3076)
!3080 = !DILocation(line: 43, column: 5, scope: !2905, inlinedAt: !3076)
!3081 = !DILocalVariable(name: "__dest", arg: 1, scope: !3082, file: !1103, line: 26, type: !1106)
!3082 = distinct !DISubprogram(name: "memcpy", scope: !1103, file: !1103, line: 26, type: !1104, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3083)
!3083 = !{!3081, !3084, !3085}
!3084 = !DILocalVariable(name: "__src", arg: 2, scope: !3082, file: !1103, line: 26, type: !1107)
!3085 = !DILocalVariable(name: "__len", arg: 3, scope: !3082, file: !1103, line: 26, type: !91)
!3086 = !DILocation(line: 0, scope: !3082, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 113, column: 10, scope: !3068)
!3088 = !DILocation(line: 29, column: 10, scope: !3082, inlinedAt: !3087)
!3089 = !DILocation(line: 113, column: 3, scope: !3068)
!3090 = distinct !DISubprogram(name: "xstrdup", scope: !194, file: !194, line: 119, type: !938, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3091)
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "string", arg: 1, scope: !3090, file: !194, line: 119, type: !6)
!3093 = !DILocation(line: 0, scope: !3090)
!3094 = !DILocation(line: 121, column: 27, scope: !3090)
!3095 = !DILocation(line: 121, column: 43, scope: !3090)
!3096 = !DILocation(line: 0, scope: !3068, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 121, column: 10, scope: !3090)
!3098 = !DILocation(line: 0, scope: !2896, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 113, column: 18, scope: !3068, inlinedAt: !3097)
!3100 = !DILocation(line: 41, column: 13, scope: !2896, inlinedAt: !3099)
!3101 = !DILocation(line: 42, column: 8, scope: !2905, inlinedAt: !3099)
!3102 = !DILocation(line: 42, column: 10, scope: !2905, inlinedAt: !3099)
!3103 = !DILocation(line: 43, column: 5, scope: !2905, inlinedAt: !3099)
!3104 = !DILocation(line: 0, scope: !3082, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 113, column: 10, scope: !3068, inlinedAt: !3097)
!3106 = !DILocation(line: 29, column: 10, scope: !3082, inlinedAt: !3105)
!3107 = !DILocation(line: 121, column: 3, scope: !3090)
!3108 = distinct !DISubprogram(name: "xalloc_die", scope: !211, file: !211, line: 32, type: !946, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !210, retainedNodes: !4)
!3109 = !DILocation(line: 34, column: 10, scope: !3108)
!3110 = !DILocation(line: 34, column: 33, scope: !3108)
!3111 = !DILocation(line: 34, column: 3, scope: !3108)
!3112 = !DILocation(line: 40, column: 3, scope: !3108)
!3113 = distinct !DISubprogram(name: "rpl_calloc", scope: !213, file: !213, line: 42, type: !2884, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3114)
!3114 = !{!3115, !3116, !3117, !3118}
!3115 = !DILocalVariable(name: "n", arg: 1, scope: !3113, file: !213, line: 42, type: !91)
!3116 = !DILocalVariable(name: "s", arg: 2, scope: !3113, file: !213, line: 42, type: !91)
!3117 = !DILocalVariable(name: "result", scope: !3113, file: !213, line: 44, type: !46)
!3118 = !DILocalVariable(name: "bytes", scope: !3119, file: !213, line: 56, type: !91)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !213, line: 53, column: 5)
!3120 = distinct !DILexicalBlock(scope: !3113, file: !213, line: 47, column: 7)
!3121 = !DILocation(line: 0, scope: !3113)
!3122 = !DILocation(line: 47, column: 9, scope: !3120)
!3123 = !DILocation(line: 47, column: 14, scope: !3120)
!3124 = !DILocation(line: 0, scope: !3119)
!3125 = !DILocation(line: 57, column: 21, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3119, file: !213, line: 57, column: 11)
!3127 = !DILocation(line: 57, column: 11, scope: !3119)
!3128 = !DILocation(line: 59, column: 11, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !213, line: 58, column: 9)
!3130 = !DILocation(line: 59, column: 17, scope: !3129)
!3131 = !DILocation(line: 65, column: 12, scope: !3113)
!3132 = !DILocation(line: 72, column: 3, scope: !3113)
!3133 = !DILocation(line: 73, column: 1, scope: !3113)
!3134 = distinct !DISubprogram(name: "rpl_fcntl", scope: !146, file: !146, line: 202, type: !3135, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!23, !23, !23, null}
!3137 = !{!3138, !3139, !3140, !3150, !3151, !3154, !3156, !3160}
!3138 = !DILocalVariable(name: "fd", arg: 1, scope: !3134, file: !146, line: 202, type: !23)
!3139 = !DILocalVariable(name: "action", arg: 2, scope: !3134, file: !146, line: 202, type: !23)
!3140 = !DILocalVariable(name: "arg", scope: !3134, file: !146, line: 208, type: !3141)
!3141 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1148, line: 14, baseType: !3142)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !146, baseType: !3143)
!3143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3144, size: 192, elements: !738)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3144, file: !146, line: 208, baseType: !56, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3144, file: !146, line: 208, baseType: !56, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3144, file: !146, line: 208, baseType: !46, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3144, file: !146, line: 208, baseType: !46, size: 64, offset: 128)
!3150 = !DILocalVariable(name: "result", scope: !3134, file: !146, line: 209, type: !23)
!3151 = !DILocalVariable(name: "target", scope: !3152, file: !146, line: 215, type: !23)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !146, line: 214, column: 7)
!3153 = distinct !DILexicalBlock(scope: !3134, file: !146, line: 212, column: 5)
!3154 = !DILocalVariable(name: "target", scope: !3155, file: !146, line: 222, type: !23)
!3155 = distinct !DILexicalBlock(scope: !3153, file: !146, line: 221, column: 7)
!3156 = !DILocalVariable(name: "x", scope: !3157, file: !146, line: 423, type: !23)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !146, line: 422, column: 13)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !146, line: 260, column: 11)
!3159 = distinct !DILexicalBlock(scope: !3153, file: !146, line: 257, column: 7)
!3160 = !DILocalVariable(name: "p", scope: !3161, file: !146, line: 431, type: !46)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !146, line: 430, column: 13)
!3162 = !DILocation(line: 0, scope: !3134)
!3163 = !DILocation(line: 208, column: 3, scope: !3134)
!3164 = !DILocation(line: 208, column: 11, scope: !3134)
!3165 = !DILocation(line: 210, column: 3, scope: !3134)
!3166 = !DILocation(line: 211, column: 3, scope: !3134)
!3167 = !DILocation(line: 215, column: 22, scope: !3152)
!3168 = !DILocation(line: 0, scope: !3152)
!3169 = !DILocalVariable(name: "fd", arg: 1, scope: !3170, file: !146, line: 447, type: !23)
!3170 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !146, file: !146, line: 447, type: !147, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !149, retainedNodes: !3171)
!3171 = !{!3169, !3172, !3173}
!3172 = !DILocalVariable(name: "target", arg: 2, scope: !3170, file: !146, line: 447, type: !23)
!3173 = !DILocalVariable(name: "result", scope: !3170, file: !146, line: 449, type: !23)
!3174 = !DILocation(line: 0, scope: !3170, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 216, column: 18, scope: !3152)
!3176 = !DILocation(line: 482, column: 12, scope: !3170, inlinedAt: !3175)
!3177 = !DILocation(line: 222, column: 22, scope: !3155)
!3178 = !DILocation(line: 0, scope: !3155)
!3179 = !DILocation(line: 0, scope: !145, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 223, column: 18, scope: !3155)
!3181 = !DILocation(line: 508, column: 12, scope: !3182, inlinedAt: !3180)
!3182 = distinct !DILexicalBlock(scope: !145, file: !146, line: 508, column: 7)
!3183 = !DILocation(line: 508, column: 9, scope: !3182, inlinedAt: !3180)
!3184 = !DILocation(line: 508, column: 7, scope: !145, inlinedAt: !3180)
!3185 = !DILocation(line: 510, column: 16, scope: !3186, inlinedAt: !3180)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !146, line: 509, column: 5)
!3187 = !DILocation(line: 511, column: 13, scope: !3188, inlinedAt: !3180)
!3188 = distinct !DILexicalBlock(scope: !3186, file: !146, line: 511, column: 11)
!3189 = !DILocation(line: 511, column: 23, scope: !3188, inlinedAt: !3180)
!3190 = !DILocation(line: 511, column: 26, scope: !3188, inlinedAt: !3180)
!3191 = !DILocation(line: 511, column: 32, scope: !3188, inlinedAt: !3180)
!3192 = !DILocation(line: 511, column: 11, scope: !3186, inlinedAt: !3180)
!3193 = !DILocation(line: 513, column: 30, scope: !3194, inlinedAt: !3180)
!3194 = distinct !DILexicalBlock(scope: !3188, file: !146, line: 512, column: 9)
!3195 = !DILocation(line: 529, column: 19, scope: !157, inlinedAt: !3180)
!3196 = !DILocation(line: 0, scope: !3170, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 521, column: 20, scope: !3198, inlinedAt: !3180)
!3198 = distinct !DILexicalBlock(scope: !3188, file: !146, line: 520, column: 9)
!3199 = !DILocation(line: 482, column: 12, scope: !3170, inlinedAt: !3197)
!3200 = !DILocation(line: 522, column: 22, scope: !3201, inlinedAt: !3180)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !146, line: 522, column: 15)
!3202 = !DILocation(line: 522, column: 15, scope: !3198, inlinedAt: !3180)
!3203 = !DILocation(line: 523, column: 32, scope: !3201, inlinedAt: !3180)
!3204 = !DILocation(line: 523, column: 13, scope: !3201, inlinedAt: !3180)
!3205 = !DILocation(line: 0, scope: !3170, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 528, column: 14, scope: !3182, inlinedAt: !3180)
!3207 = !DILocation(line: 482, column: 12, scope: !3170, inlinedAt: !3206)
!3208 = !DILocation(line: 0, scope: !3182, inlinedAt: !3180)
!3209 = !DILocation(line: 529, column: 9, scope: !157, inlinedAt: !3180)
!3210 = !DILocation(line: 531, column: 19, scope: !156, inlinedAt: !3180)
!3211 = !DILocation(line: 0, scope: !156, inlinedAt: !3180)
!3212 = !DILocation(line: 532, column: 17, scope: !160, inlinedAt: !3180)
!3213 = !DILocation(line: 532, column: 21, scope: !160, inlinedAt: !3180)
!3214 = !DILocation(line: 532, column: 54, scope: !160, inlinedAt: !3180)
!3215 = !DILocation(line: 532, column: 24, scope: !160, inlinedAt: !3180)
!3216 = !DILocation(line: 532, column: 68, scope: !160, inlinedAt: !3180)
!3217 = !DILocation(line: 532, column: 11, scope: !156, inlinedAt: !3180)
!3218 = !DILocation(line: 534, column: 29, scope: !159, inlinedAt: !3180)
!3219 = !DILocation(line: 0, scope: !159, inlinedAt: !3180)
!3220 = !DILocation(line: 535, column: 11, scope: !159, inlinedAt: !3180)
!3221 = !DILocation(line: 536, column: 17, scope: !159, inlinedAt: !3180)
!3222 = !DILocation(line: 538, column: 9, scope: !159, inlinedAt: !3180)
!3223 = !DILocation(line: 328, column: 22, scope: !3158)
!3224 = !DILocation(line: 329, column: 13, scope: !3158)
!3225 = !DILocation(line: 423, column: 23, scope: !3157)
!3226 = !DILocation(line: 0, scope: !3157)
!3227 = !DILocation(line: 424, column: 24, scope: !3157)
!3228 = !DILocation(line: 426, column: 13, scope: !3158)
!3229 = !DILocation(line: 431, column: 25, scope: !3161)
!3230 = !DILocation(line: 0, scope: !3161)
!3231 = !DILocation(line: 432, column: 24, scope: !3161)
!3232 = !DILocation(line: 434, column: 13, scope: !3158)
!3233 = !DILocation(line: 0, scope: !3153)
!3234 = !DILocation(line: 442, column: 3, scope: !3134)
!3235 = !DILocation(line: 444, column: 1, scope: !3134)
!3236 = !DILocation(line: 443, column: 3, scope: !3134)
!3237 = !DISubprogram(name: "fcntl", scope: !961, file: !961, line: 176, type: !3135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3238 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !215, file: !215, line: 86, type: !3239, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3253)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!91, !3241, !6, !91, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1419, line: 6, baseType: !3244)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1421, line: 21, baseType: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1421, line: 13, size: 64, elements: !3246)
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3245, file: !1421, line: 15, baseType: !23, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3245, file: !1421, line: 20, baseType: !3249, size: 32, offset: 32)
!3249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3245, file: !1421, line: 16, size: 32, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3249, file: !1421, line: 18, baseType: !56, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3249, file: !1421, line: 19, baseType: !1430, size: 32)
!3253 = !{!3254, !3255, !3256, !3257, !3258, !3259, !3260}
!3254 = !DILocalVariable(name: "pwc", arg: 1, scope: !3238, file: !215, line: 86, type: !3241)
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3238, file: !215, line: 86, type: !6)
!3256 = !DILocalVariable(name: "n", arg: 3, scope: !3238, file: !215, line: 86, type: !91)
!3257 = !DILocalVariable(name: "ps", arg: 4, scope: !3238, file: !215, line: 86, type: !3242)
!3258 = !DILocalVariable(name: "ret", scope: !3238, file: !215, line: 88, type: !91)
!3259 = !DILocalVariable(name: "wc", scope: !3238, file: !215, line: 89, type: !1435)
!3260 = !DILocalVariable(name: "uc", scope: !3261, file: !215, line: 156, type: !1297)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !215, line: 155, column: 5)
!3262 = distinct !DILexicalBlock(scope: !3238, file: !215, line: 154, column: 7)
!3263 = !DILocation(line: 0, scope: !3238)
!3264 = !DILocation(line: 89, column: 3, scope: !3238)
!3265 = !DILocation(line: 105, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3238, file: !215, line: 105, column: 7)
!3267 = !DILocation(line: 105, column: 7, scope: !3238)
!3268 = !DILocation(line: 145, column: 9, scope: !3238)
!3269 = !DILocation(line: 154, column: 19, scope: !3262)
!3270 = !DILocation(line: 154, column: 26, scope: !3262)
!3271 = !DILocation(line: 154, column: 41, scope: !3262)
!3272 = !DILocation(line: 154, column: 7, scope: !3238)
!3273 = !DILocation(line: 156, column: 26, scope: !3261)
!3274 = !DILocation(line: 0, scope: !3261)
!3275 = !DILocation(line: 157, column: 14, scope: !3261)
!3276 = !DILocation(line: 157, column: 12, scope: !3261)
!3277 = !DILocation(line: 163, column: 1, scope: !3238)
!3278 = !DISubprogram(name: "mbrtowc", scope: !2097, file: !2097, line: 296, type: !3279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!93, !37, !6, !93, !3281}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3282 = distinct !DISubprogram(name: "close_stream", scope: !218, file: !218, line: 56, type: !3283, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !3319)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!23, !3285}
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !909, line: 7, baseType: !3287)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 49, size: 1728, elements: !3288)
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3287, file: !709, line: 51, baseType: !23, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3287, file: !709, line: 54, baseType: !47, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3287, file: !709, line: 55, baseType: !47, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3287, file: !709, line: 56, baseType: !47, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3287, file: !709, line: 57, baseType: !47, size: 64, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3287, file: !709, line: 58, baseType: !47, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3287, file: !709, line: 59, baseType: !47, size: 64, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3287, file: !709, line: 60, baseType: !47, size: 64, offset: 448)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3287, file: !709, line: 61, baseType: !47, size: 64, offset: 512)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3287, file: !709, line: 64, baseType: !47, size: 64, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3287, file: !709, line: 65, baseType: !47, size: 64, offset: 640)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3287, file: !709, line: 66, baseType: !47, size: 64, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3287, file: !709, line: 68, baseType: !724, size: 64, offset: 768)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3287, file: !709, line: 70, baseType: !3303, size: 64, offset: 832)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3287, file: !709, line: 72, baseType: !23, size: 32, offset: 896)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3287, file: !709, line: 73, baseType: !23, size: 32, offset: 928)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3287, file: !709, line: 74, baseType: !730, size: 64, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3287, file: !709, line: 77, baseType: !90, size: 16, offset: 1024)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3287, file: !709, line: 78, baseType: !735, size: 8, offset: 1040)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3287, file: !709, line: 79, baseType: !737, size: 8, offset: 1048)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3287, file: !709, line: 81, baseType: !741, size: 64, offset: 1088)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3287, file: !709, line: 89, baseType: !744, size: 64, offset: 1152)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3287, file: !709, line: 91, baseType: !746, size: 64, offset: 1216)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3287, file: !709, line: 92, baseType: !749, size: 64, offset: 1280)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3287, file: !709, line: 93, baseType: !3303, size: 64, offset: 1344)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3287, file: !709, line: 94, baseType: !46, size: 64, offset: 1408)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3287, file: !709, line: 95, baseType: !91, size: 64, offset: 1472)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3287, file: !709, line: 96, baseType: !23, size: 32, offset: 1536)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3287, file: !709, line: 98, baseType: !756, size: 160, offset: 1568)
!3319 = !{!3320, !3321, !3323, !3324}
!3320 = !DILocalVariable(name: "stream", arg: 1, scope: !3282, file: !218, line: 56, type: !3285)
!3321 = !DILocalVariable(name: "some_pending", scope: !3282, file: !218, line: 58, type: !3322)
!3322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!3323 = !DILocalVariable(name: "prev_fail", scope: !3282, file: !218, line: 59, type: !3322)
!3324 = !DILocalVariable(name: "fclose_fail", scope: !3282, file: !218, line: 60, type: !3322)
!3325 = !DILocation(line: 0, scope: !3282)
!3326 = !DILocation(line: 58, column: 30, scope: !3282)
!3327 = !DILocalVariable(name: "__stream", arg: 1, scope: !3328, file: !904, line: 135, type: !3285)
!3328 = distinct !DISubprogram(name: "ferror_unlocked", scope: !904, file: !904, line: 135, type: !3283, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !217, retainedNodes: !3329)
!3329 = !{!3327}
!3330 = !DILocation(line: 0, scope: !3328, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 59, column: 27, scope: !3282)
!3332 = !DILocation(line: 137, column: 10, scope: !3328, inlinedAt: !3331)
!3333 = !DILocation(line: 59, column: 43, scope: !3282)
!3334 = !DILocation(line: 60, column: 29, scope: !3282)
!3335 = !DILocation(line: 60, column: 45, scope: !3282)
!3336 = !DILocation(line: 70, column: 17, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3282, file: !218, line: 70, column: 7)
!3338 = !DILocation(line: 58, column: 50, scope: !3282)
!3339 = !DILocation(line: 70, column: 33, scope: !3337)
!3340 = !DILocation(line: 70, column: 53, scope: !3337)
!3341 = !DILocation(line: 70, column: 59, scope: !3337)
!3342 = !DILocation(line: 70, column: 7, scope: !3282)
!3343 = !DILocation(line: 72, column: 11, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3337, file: !218, line: 71, column: 5)
!3345 = !DILocation(line: 73, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3344, file: !218, line: 72, column: 11)
!3347 = !DILocation(line: 73, column: 15, scope: !3346)
!3348 = !DILocation(line: 78, column: 1, scope: !3282)
!3349 = distinct !DISubprogram(name: "last_component", scope: !220, file: !220, line: 30, type: !938, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3350)
!3350 = !{!3351, !3352, !3353, !3354}
!3351 = !DILocalVariable(name: "name", arg: 1, scope: !3349, file: !220, line: 30, type: !6)
!3352 = !DILocalVariable(name: "base", scope: !3349, file: !220, line: 32, type: !6)
!3353 = !DILocalVariable(name: "p", scope: !3349, file: !220, line: 33, type: !6)
!3354 = !DILocalVariable(name: "saw_slash", scope: !3349, file: !220, line: 34, type: !16)
!3355 = !DILocation(line: 0, scope: !3349)
!3356 = !DILocation(line: 36, column: 3, scope: !3349)
!3357 = !DILocation(line: 36, column: 10, scope: !3349)
!3358 = !DILocation(line: 37, column: 9, scope: !3349)
!3359 = distinct !{!3359, !3356, !3358, !679}
!3360 = !DILocation(line: 39, column: 18, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !220, line: 39, column: 3)
!3362 = distinct !DILexicalBlock(scope: !3349, file: !220, line: 39, column: 3)
!3363 = !DILocation(line: 32, column: 15, scope: !3349)
!3364 = !DILocation(line: 0, scope: !3362)
!3365 = !DILocation(line: 39, column: 3, scope: !3362)
!3366 = !DILocation(line: 43, column: 16, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !220, line: 43, column: 16)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !220, line: 41, column: 11)
!3369 = distinct !DILexicalBlock(scope: !3361, file: !220, line: 40, column: 5)
!3370 = !DILocation(line: 43, column: 16, scope: !3368)
!3371 = !DILocation(line: 39, column: 23, scope: !3361)
!3372 = !DILocation(line: 39, column: 3, scope: !3361)
!3373 = distinct !{!3373, !3365, !3374, !679}
!3374 = !DILocation(line: 48, column: 5, scope: !3362)
!3375 = !DILocation(line: 50, column: 3, scope: !3349)
!3376 = distinct !DISubprogram(name: "base_len", scope: !220, file: !220, line: 58, type: !3377, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!91, !6}
!3379 = !{!3380, !3381, !3382}
!3380 = !DILocalVariable(name: "name", arg: 1, scope: !3376, file: !220, line: 58, type: !6)
!3381 = !DILocalVariable(name: "len", scope: !3376, file: !220, line: 60, type: !91)
!3382 = !DILocalVariable(name: "prefix_len", scope: !3376, file: !220, line: 61, type: !91)
!3383 = !DILocation(line: 0, scope: !3376)
!3384 = !DILocation(line: 63, column: 14, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3376, file: !220, line: 63, column: 3)
!3386 = !DILocation(line: 63, column: 8, scope: !3385)
!3387 = !DILocation(line: 0, scope: !3385)
!3388 = !DILocation(line: 63, column: 32, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !220, line: 63, column: 3)
!3390 = !DILocation(line: 63, column: 38, scope: !3389)
!3391 = !DILocation(line: 63, column: 41, scope: !3389)
!3392 = !DILocation(line: 63, column: 3, scope: !3385)
!3393 = distinct !{!3393, !3392, !3394, !679}
!3394 = !DILocation(line: 64, column: 5, scope: !3385)
!3395 = !DILocation(line: 74, column: 3, scope: !3376)
!3396 = distinct !DISubprogram(name: "hard_locale", scope: !223, file: !223, line: 27, type: !3397, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !222, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!16, !23}
!3399 = !{!3400, !3401}
!3400 = !DILocalVariable(name: "category", arg: 1, scope: !3396, file: !223, line: 27, type: !23)
!3401 = !DILocalVariable(name: "locale", scope: !3396, file: !223, line: 29, type: !3402)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3403)
!3403 = !{!3404}
!3404 = !DISubrange(count: 257)
!3405 = !DILocation(line: 0, scope: !3396)
!3406 = !DILocation(line: 29, column: 3, scope: !3396)
!3407 = !DILocation(line: 29, column: 8, scope: !3396)
!3408 = !DILocation(line: 31, column: 7, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3396, file: !223, line: 31, column: 7)
!3410 = !DILocation(line: 31, column: 7, scope: !3396)
!3411 = !DILocation(line: 34, column: 12, scope: !3396)
!3412 = !DILocation(line: 34, column: 38, scope: !3396)
!3413 = !DILocation(line: 34, column: 41, scope: !3396)
!3414 = !DILocation(line: 34, column: 66, scope: !3396)
!3415 = !DILocation(line: 35, column: 1, scope: !3396)
!3416 = distinct !DISubprogram(name: "locale_charset", scope: !225, file: !225, line: 831, type: !3417, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!6}
!3419 = !{!3420}
!3420 = !DILocalVariable(name: "codeset", scope: !3416, file: !225, line: 833, type: !6)
!3421 = !DILocation(line: 847, column: 13, scope: !3416)
!3422 = !DILocation(line: 0, scope: !3416)
!3423 = !DILocation(line: 911, column: 15, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3416, file: !225, line: 911, column: 7)
!3425 = !DILocation(line: 911, column: 7, scope: !3416)
!3426 = !DILocation(line: 1070, column: 13, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !225, line: 1070, column: 13)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !225, line: 1060, column: 7)
!3429 = distinct !DILexicalBlock(scope: !3416, file: !225, line: 1019, column: 3)
!3430 = !DILocation(line: 1070, column: 24, scope: !3427)
!3431 = !DILocation(line: 1070, column: 13, scope: !3428)
!3432 = !DILocation(line: 1158, column: 3, scope: !3416)
!3433 = !DISubprogram(name: "nl_langinfo", scope: !228, file: !228, line: 661, type: !3434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!47, !23}
!3436 = distinct !DISubprogram(name: "setlocale_null_r", scope: !614, file: !614, line: 269, type: !3437, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !613, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!23, !23, !47, !91}
!3439 = !{!3440, !3441, !3442}
!3440 = !DILocalVariable(name: "category", arg: 1, scope: !3436, file: !614, line: 269, type: !23)
!3441 = !DILocalVariable(name: "buf", arg: 2, scope: !3436, file: !614, line: 269, type: !47)
!3442 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3436, file: !614, line: 269, type: !91)
!3443 = !DILocation(line: 0, scope: !3436)
!3444 = !DILocalVariable(name: "category", arg: 1, scope: !3445, file: !614, line: 91, type: !23)
!3445 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !614, file: !614, line: 91, type: !3437, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !613, retainedNodes: !3446)
!3446 = !{!3444, !3447, !3448, !3449, !3450}
!3447 = !DILocalVariable(name: "buf", arg: 2, scope: !3445, file: !614, line: 91, type: !47)
!3448 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3445, file: !614, line: 91, type: !91)
!3449 = !DILocalVariable(name: "result", scope: !3445, file: !614, line: 140, type: !6)
!3450 = !DILocalVariable(name: "length", scope: !3451, file: !614, line: 154, type: !91)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !614, line: 153, column: 5)
!3452 = distinct !DILexicalBlock(scope: !3445, file: !614, line: 142, column: 7)
!3453 = !DILocation(line: 0, scope: !3445, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 274, column: 10, scope: !3436)
!3455 = !DILocalVariable(name: "category", arg: 1, scope: !3456, file: !614, line: 60, type: !23)
!3456 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !614, file: !614, line: 60, type: !3457, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !613, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!6, !23}
!3459 = !{!3455, !3460}
!3460 = !DILocalVariable(name: "result", scope: !3456, file: !614, line: 62, type: !6)
!3461 = !DILocation(line: 0, scope: !3456, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 140, column: 24, scope: !3445, inlinedAt: !3454)
!3463 = !DILocation(line: 62, column: 24, scope: !3456, inlinedAt: !3462)
!3464 = !DILocation(line: 142, column: 14, scope: !3452, inlinedAt: !3454)
!3465 = !DILocation(line: 142, column: 7, scope: !3445, inlinedAt: !3454)
!3466 = !DILocation(line: 145, column: 19, scope: !3467, inlinedAt: !3454)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !614, line: 145, column: 11)
!3468 = distinct !DILexicalBlock(scope: !3452, file: !614, line: 143, column: 5)
!3469 = !DILocation(line: 145, column: 11, scope: !3468, inlinedAt: !3454)
!3470 = !DILocation(line: 149, column: 16, scope: !3467, inlinedAt: !3454)
!3471 = !DILocation(line: 149, column: 9, scope: !3467, inlinedAt: !3454)
!3472 = !DILocation(line: 154, column: 23, scope: !3451, inlinedAt: !3454)
!3473 = !DILocation(line: 0, scope: !3451, inlinedAt: !3454)
!3474 = !DILocation(line: 155, column: 18, scope: !3475, inlinedAt: !3454)
!3475 = distinct !DILexicalBlock(scope: !3451, file: !614, line: 155, column: 11)
!3476 = !DILocation(line: 155, column: 11, scope: !3451, inlinedAt: !3454)
!3477 = !DILocation(line: 157, column: 39, scope: !3478, inlinedAt: !3454)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !614, line: 156, column: 9)
!3479 = !DILocalVariable(name: "__dest", arg: 1, scope: !3480, file: !1103, line: 26, type: !1106)
!3480 = distinct !DISubprogram(name: "memcpy", scope: !1103, file: !1103, line: 26, type: !1104, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !613, retainedNodes: !3481)
!3481 = !{!3479, !3482, !3483}
!3482 = !DILocalVariable(name: "__src", arg: 2, scope: !3480, file: !1103, line: 26, type: !1107)
!3483 = !DILocalVariable(name: "__len", arg: 3, scope: !3480, file: !1103, line: 26, type: !91)
!3484 = !DILocation(line: 0, scope: !3480, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 157, column: 11, scope: !3478, inlinedAt: !3454)
!3486 = !DILocation(line: 29, column: 10, scope: !3480, inlinedAt: !3485)
!3487 = !DILocation(line: 158, column: 11, scope: !3478, inlinedAt: !3454)
!3488 = !DILocation(line: 162, column: 23, scope: !3489, inlinedAt: !3454)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !614, line: 162, column: 15)
!3490 = distinct !DILexicalBlock(scope: !3475, file: !614, line: 161, column: 9)
!3491 = !DILocation(line: 162, column: 15, scope: !3490, inlinedAt: !3454)
!3492 = !DILocation(line: 167, column: 44, scope: !3493, inlinedAt: !3454)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !614, line: 163, column: 13)
!3494 = !DILocation(line: 0, scope: !3480, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 167, column: 15, scope: !3493, inlinedAt: !3454)
!3496 = !DILocation(line: 29, column: 10, scope: !3480, inlinedAt: !3495)
!3497 = !DILocation(line: 168, column: 15, scope: !3493, inlinedAt: !3454)
!3498 = !DILocation(line: 168, column: 32, scope: !3493, inlinedAt: !3454)
!3499 = !DILocation(line: 169, column: 13, scope: !3493, inlinedAt: !3454)
!3500 = !DILocation(line: 0, scope: !3452, inlinedAt: !3454)
!3501 = !DILocation(line: 274, column: 3, scope: !3436)
!3502 = distinct !DISubprogram(name: "setlocale_null", scope: !614, file: !614, line: 301, type: !3457, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !613, retainedNodes: !3503)
!3503 = !{!3504}
!3504 = !DILocalVariable(name: "category", arg: 1, scope: !3502, file: !614, line: 301, type: !23)
!3505 = !DILocation(line: 0, scope: !3502)
!3506 = !DILocation(line: 0, scope: !3456, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 304, column: 10, scope: !3502)
!3508 = !DILocation(line: 62, column: 24, scope: !3456, inlinedAt: !3507)
!3509 = !DILocation(line: 304, column: 3, scope: !3502)
!3510 = distinct !DISubprogram(name: "rpl_fclose", scope: !616, file: !616, line: 58, type: !3511, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3547)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!23, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !909, line: 7, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 49, size: 1728, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3515, file: !709, line: 51, baseType: !23, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3515, file: !709, line: 54, baseType: !47, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3515, file: !709, line: 55, baseType: !47, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3515, file: !709, line: 56, baseType: !47, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3515, file: !709, line: 57, baseType: !47, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3515, file: !709, line: 58, baseType: !47, size: 64, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3515, file: !709, line: 59, baseType: !47, size: 64, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3515, file: !709, line: 60, baseType: !47, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3515, file: !709, line: 61, baseType: !47, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3515, file: !709, line: 64, baseType: !47, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3515, file: !709, line: 65, baseType: !47, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3515, file: !709, line: 66, baseType: !47, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3515, file: !709, line: 68, baseType: !724, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3515, file: !709, line: 70, baseType: !3531, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3515, file: !709, line: 72, baseType: !23, size: 32, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3515, file: !709, line: 73, baseType: !23, size: 32, offset: 928)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3515, file: !709, line: 74, baseType: !730, size: 64, offset: 960)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3515, file: !709, line: 77, baseType: !90, size: 16, offset: 1024)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3515, file: !709, line: 78, baseType: !735, size: 8, offset: 1040)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3515, file: !709, line: 79, baseType: !737, size: 8, offset: 1048)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3515, file: !709, line: 81, baseType: !741, size: 64, offset: 1088)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3515, file: !709, line: 89, baseType: !744, size: 64, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3515, file: !709, line: 91, baseType: !746, size: 64, offset: 1216)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3515, file: !709, line: 92, baseType: !749, size: 64, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3515, file: !709, line: 93, baseType: !3531, size: 64, offset: 1344)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3515, file: !709, line: 94, baseType: !46, size: 64, offset: 1408)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3515, file: !709, line: 95, baseType: !91, size: 64, offset: 1472)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3515, file: !709, line: 96, baseType: !23, size: 32, offset: 1536)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3515, file: !709, line: 98, baseType: !756, size: 160, offset: 1568)
!3547 = !{!3548, !3549, !3550, !3551}
!3548 = !DILocalVariable(name: "fp", arg: 1, scope: !3510, file: !616, line: 58, type: !3513)
!3549 = !DILocalVariable(name: "saved_errno", scope: !3510, file: !616, line: 60, type: !23)
!3550 = !DILocalVariable(name: "fd", scope: !3510, file: !616, line: 61, type: !23)
!3551 = !DILocalVariable(name: "result", scope: !3510, file: !616, line: 62, type: !23)
!3552 = !DILocation(line: 0, scope: !3510)
!3553 = !DILocation(line: 65, column: 8, scope: !3510)
!3554 = !DILocation(line: 66, column: 10, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3510, file: !616, line: 66, column: 7)
!3556 = !DILocation(line: 66, column: 7, scope: !3510)
!3557 = !DILocation(line: 67, column: 12, scope: !3555)
!3558 = !DILocation(line: 67, column: 5, scope: !3555)
!3559 = !DILocation(line: 72, column: 9, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3510, file: !616, line: 72, column: 7)
!3561 = !DILocation(line: 72, column: 23, scope: !3560)
!3562 = !DILocation(line: 72, column: 33, scope: !3560)
!3563 = !DILocation(line: 72, column: 26, scope: !3560)
!3564 = !DILocation(line: 72, column: 59, scope: !3560)
!3565 = !DILocation(line: 73, column: 7, scope: !3560)
!3566 = !DILocation(line: 73, column: 10, scope: !3560)
!3567 = !DILocation(line: 72, column: 7, scope: !3510)
!3568 = !DILocation(line: 100, column: 12, scope: !3510)
!3569 = !DILocation(line: 105, column: 7, scope: !3510)
!3570 = !DILocation(line: 74, column: 19, scope: !3560)
!3571 = !DILocation(line: 105, column: 19, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3510, file: !616, line: 105, column: 7)
!3573 = !DILocation(line: 107, column: 13, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3572, file: !616, line: 106, column: 5)
!3575 = !DILocation(line: 109, column: 5, scope: !3574)
!3576 = !DILocation(line: 112, column: 1, scope: !3510)
!3577 = !DISubprogram(name: "fileno", scope: !704, file: !704, line: 785, type: !3578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!23, !3531}
!3580 = !DISubprogram(name: "fclose", scope: !704, file: !704, line: 213, type: !3578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3581 = !DISubprogram(name: "lseek", scope: !953, file: !953, line: 334, type: !3582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!732, !23, !732, !23}
!3584 = distinct !DISubprogram(name: "rpl_fflush", scope: !618, file: !618, line: 129, type: !3585, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !617, retainedNodes: !3621)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!23, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !909, line: 7, baseType: !3589)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 49, size: 1728, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3589, file: !709, line: 51, baseType: !23, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3589, file: !709, line: 54, baseType: !47, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3589, file: !709, line: 55, baseType: !47, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3589, file: !709, line: 56, baseType: !47, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3589, file: !709, line: 57, baseType: !47, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3589, file: !709, line: 58, baseType: !47, size: 64, offset: 320)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3589, file: !709, line: 59, baseType: !47, size: 64, offset: 384)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3589, file: !709, line: 60, baseType: !47, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3589, file: !709, line: 61, baseType: !47, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3589, file: !709, line: 64, baseType: !47, size: 64, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3589, file: !709, line: 65, baseType: !47, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3589, file: !709, line: 66, baseType: !47, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3589, file: !709, line: 68, baseType: !724, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3589, file: !709, line: 70, baseType: !3605, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3589, file: !709, line: 72, baseType: !23, size: 32, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3589, file: !709, line: 73, baseType: !23, size: 32, offset: 928)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3589, file: !709, line: 74, baseType: !730, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3589, file: !709, line: 77, baseType: !90, size: 16, offset: 1024)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3589, file: !709, line: 78, baseType: !735, size: 8, offset: 1040)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3589, file: !709, line: 79, baseType: !737, size: 8, offset: 1048)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3589, file: !709, line: 81, baseType: !741, size: 64, offset: 1088)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3589, file: !709, line: 89, baseType: !744, size: 64, offset: 1152)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3589, file: !709, line: 91, baseType: !746, size: 64, offset: 1216)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3589, file: !709, line: 92, baseType: !749, size: 64, offset: 1280)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3589, file: !709, line: 93, baseType: !3605, size: 64, offset: 1344)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3589, file: !709, line: 94, baseType: !46, size: 64, offset: 1408)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3589, file: !709, line: 95, baseType: !91, size: 64, offset: 1472)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3589, file: !709, line: 96, baseType: !23, size: 32, offset: 1536)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3589, file: !709, line: 98, baseType: !756, size: 160, offset: 1568)
!3621 = !{!3622}
!3622 = !DILocalVariable(name: "stream", arg: 1, scope: !3584, file: !618, line: 129, type: !3587)
!3623 = !DILocation(line: 0, scope: !3584)
!3624 = !DILocation(line: 150, column: 14, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3584, file: !618, line: 150, column: 7)
!3626 = !DILocation(line: 150, column: 22, scope: !3625)
!3627 = !DILocation(line: 150, column: 27, scope: !3625)
!3628 = !DILocation(line: 150, column: 7, scope: !3584)
!3629 = !DILocation(line: 151, column: 12, scope: !3625)
!3630 = !DILocation(line: 151, column: 5, scope: !3625)
!3631 = !DILocalVariable(name: "fp", arg: 1, scope: !3632, file: !618, line: 41, type: !3587)
!3632 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !618, file: !618, line: 41, type: !3633, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !617, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !3587}
!3635 = !{!3631}
!3636 = !DILocation(line: 0, scope: !3632, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 156, column: 3, scope: !3584)
!3638 = !DILocation(line: 43, column: 11, scope: !3639, inlinedAt: !3637)
!3639 = distinct !DILexicalBlock(scope: !3632, file: !618, line: 43, column: 7)
!3640 = !DILocation(line: 43, column: 18, scope: !3639, inlinedAt: !3637)
!3641 = !DILocation(line: 43, column: 7, scope: !3632, inlinedAt: !3637)
!3642 = !DILocation(line: 45, column: 5, scope: !3639, inlinedAt: !3637)
!3643 = !DILocation(line: 158, column: 10, scope: !3584)
!3644 = !DILocation(line: 158, column: 3, scope: !3584)
!3645 = !DILocation(line: 235, column: 1, scope: !3584)
!3646 = !DISubprogram(name: "fflush", scope: !704, file: !704, line: 218, type: !3647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!23, !3605}
!3649 = distinct !DISubprogram(name: "rpl_fseeko", scope: !620, file: !620, line: 28, type: !3650, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !3687)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!23, !3652, !3686, !23}
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !909, line: 7, baseType: !3654)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !709, line: 49, size: 1728, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3654, file: !709, line: 51, baseType: !23, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3654, file: !709, line: 54, baseType: !47, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3654, file: !709, line: 55, baseType: !47, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3654, file: !709, line: 56, baseType: !47, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3654, file: !709, line: 57, baseType: !47, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3654, file: !709, line: 58, baseType: !47, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3654, file: !709, line: 59, baseType: !47, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3654, file: !709, line: 60, baseType: !47, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3654, file: !709, line: 61, baseType: !47, size: 64, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3654, file: !709, line: 64, baseType: !47, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3654, file: !709, line: 65, baseType: !47, size: 64, offset: 640)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3654, file: !709, line: 66, baseType: !47, size: 64, offset: 704)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3654, file: !709, line: 68, baseType: !724, size: 64, offset: 768)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3654, file: !709, line: 70, baseType: !3670, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3654, file: !709, line: 72, baseType: !23, size: 32, offset: 896)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3654, file: !709, line: 73, baseType: !23, size: 32, offset: 928)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3654, file: !709, line: 74, baseType: !730, size: 64, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3654, file: !709, line: 77, baseType: !90, size: 16, offset: 1024)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3654, file: !709, line: 78, baseType: !735, size: 8, offset: 1040)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3654, file: !709, line: 79, baseType: !737, size: 8, offset: 1048)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3654, file: !709, line: 81, baseType: !741, size: 64, offset: 1088)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3654, file: !709, line: 89, baseType: !744, size: 64, offset: 1152)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3654, file: !709, line: 91, baseType: !746, size: 64, offset: 1216)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3654, file: !709, line: 92, baseType: !749, size: 64, offset: 1280)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3654, file: !709, line: 93, baseType: !3670, size: 64, offset: 1344)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3654, file: !709, line: 94, baseType: !46, size: 64, offset: 1408)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3654, file: !709, line: 95, baseType: !91, size: 64, offset: 1472)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3654, file: !709, line: 96, baseType: !23, size: 32, offset: 1536)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3654, file: !709, line: 98, baseType: !756, size: 160, offset: 1568)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !704, line: 63, baseType: !730)
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DILocalVariable(name: "fp", arg: 1, scope: !3649, file: !620, line: 28, type: !3652)
!3689 = !DILocalVariable(name: "offset", arg: 2, scope: !3649, file: !620, line: 28, type: !3686)
!3690 = !DILocalVariable(name: "whence", arg: 3, scope: !3649, file: !620, line: 28, type: !23)
!3691 = !DILocalVariable(name: "pos", scope: !3692, file: !620, line: 117, type: !3686)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !620, line: 113, column: 5)
!3693 = distinct !DILexicalBlock(scope: !3649, file: !620, line: 52, column: 7)
!3694 = !DILocation(line: 0, scope: !3649)
!3695 = !DILocation(line: 52, column: 11, scope: !3693)
!3696 = !{!915, !637, i64 16}
!3697 = !DILocation(line: 52, column: 31, scope: !3693)
!3698 = !{!915, !637, i64 8}
!3699 = !DILocation(line: 52, column: 24, scope: !3693)
!3700 = !DILocation(line: 53, column: 7, scope: !3693)
!3701 = !DILocation(line: 53, column: 14, scope: !3693)
!3702 = !{!915, !637, i64 40}
!3703 = !DILocation(line: 53, column: 35, scope: !3693)
!3704 = !{!915, !637, i64 32}
!3705 = !DILocation(line: 53, column: 28, scope: !3693)
!3706 = !DILocation(line: 54, column: 7, scope: !3693)
!3707 = !DILocation(line: 54, column: 14, scope: !3693)
!3708 = !{!915, !637, i64 72}
!3709 = !DILocation(line: 54, column: 28, scope: !3693)
!3710 = !DILocation(line: 52, column: 7, scope: !3649)
!3711 = !DILocation(line: 117, column: 26, scope: !3692)
!3712 = !DILocation(line: 117, column: 19, scope: !3692)
!3713 = !DILocation(line: 0, scope: !3692)
!3714 = !DILocation(line: 118, column: 15, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3692, file: !620, line: 118, column: 11)
!3716 = !DILocation(line: 118, column: 11, scope: !3692)
!3717 = !DILocation(line: 129, column: 11, scope: !3692)
!3718 = !DILocation(line: 129, column: 18, scope: !3692)
!3719 = !DILocation(line: 130, column: 11, scope: !3692)
!3720 = !DILocation(line: 130, column: 19, scope: !3692)
!3721 = !{!915, !916, i64 144}
!3722 = !DILocation(line: 161, column: 7, scope: !3692)
!3723 = !DILocation(line: 163, column: 10, scope: !3649)
!3724 = !DILocation(line: 163, column: 3, scope: !3649)
!3725 = !DILocation(line: 164, column: 1, scope: !3649)
!3726 = !DISubprogram(name: "fseeko", scope: !704, file: !704, line: 712, type: !3727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!23, !3670, !732, !23}
