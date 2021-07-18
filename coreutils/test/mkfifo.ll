; ModuleID = 'coreutils-8.32/src/mkfifo.bc'
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
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"  -m, --mode=MODE    set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.4 = private unnamed_addr constant [207 x i8] c"  -Z                   set the SELinux security context to default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), align 8, !dbg !40
@.str.16 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !46
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !51
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !54
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !60
@.str.54 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 16, !dbg !66
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !97
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !103
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !115
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.70 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.71 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.72 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.73 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !122
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !129
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !117
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !131
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.98 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.99 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.100 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.101 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.102 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !137
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !594 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !598, metadata !DIExpression()), !dbg !599
  %3 = icmp eq i32 %0, 0, !dbg !600
  br i1 %3, label %9, label %4, !dbg !602

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !603, !tbaa !605
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !603
  %7 = load i8*, i8** @program_name, align 8, !dbg !603, !tbaa !605
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !603
  br label %67, !dbg !603

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !609
  %11 = load i8*, i8** @program_name, align 8, !dbg !609, !tbaa !605
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !609
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !611
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !611, !tbaa !605
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !611
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #25, !dbg !612
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !605
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #25, !dbg !612
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !618
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !605
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !618
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !619
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !605
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !619
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !620
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !605
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !620
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #25, !dbg !621
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !605
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !622, metadata !DIExpression()) #25, !dbg !640
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !642
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #25, !dbg !642
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !627, metadata !DIExpression()) #25, !dbg !643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), metadata !636, metadata !DIExpression()) #25, !dbg !640
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !637, metadata !DIExpression()) #25, !dbg !640
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !644
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !637, metadata !DIExpression()) #25, !dbg !640
  br label %33, !dbg !645

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !637, metadata !DIExpression()) #25, !dbg !640
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #26, !dbg !646
  %37 = icmp eq i32 %36, 0, !dbg !646
  br i1 %37, label %43, label %38, !dbg !645

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !647
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !637, metadata !DIExpression()) #25, !dbg !640
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !648
  %41 = load i8*, i8** %40, align 8, !dbg !648, !tbaa !649
  %42 = icmp eq i8* %41, null, !dbg !651
  br i1 %42, label %43, label %33, !dbg !652, !llvm.loop !653

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !655
  %46 = load i8*, i8** %45, align 8, !dbg !655, !tbaa !657
  %47 = icmp eq i8* %46, null, !dbg !658
  %48 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !659
  call void @llvm.dbg.value(metadata i8* %48, metadata !636, metadata !DIExpression()) #25, !dbg !640
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #25, !dbg !660
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #25, !dbg !660
  %51 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !661
  call void @llvm.dbg.value(metadata i8* %51, metadata !639, metadata !DIExpression()) #25, !dbg !640
  %52 = icmp eq i8* %51, null, !dbg !662
  br i1 %52, label %60, label %53, !dbg !664

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #26, !dbg !665
  %55 = icmp eq i32 %54, 0, !dbg !665
  br i1 %55, label %60, label %56, !dbg !666

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #25, !dbg !667
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !667, !tbaa !605
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #25, !dbg !667
  br label %60, !dbg !669

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #25, !dbg !670
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !670
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #25, !dbg !671
  %64 = icmp eq i8* %48, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), !dbg !671
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !671
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #25, !dbg !671
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #25, !dbg !672
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #27, !dbg !673
  unreachable, !dbg !673
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !674 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !678 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !734 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !743, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8** %1, metadata !744, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* null, metadata !749, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 0, metadata !750, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* null, metadata !752, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 0, metadata !753, metadata !DIExpression()), !dbg !764
  %3 = load i8*, i8** %1, align 8, !dbg !765, !tbaa !605
  tail call void @set_program_name(i8* %3) #25, !dbg !766
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !767
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #25, !dbg !768
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #25, !dbg !769
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !770
  br label %8, !dbg !771

8:                                                ; preds = %12, %2
  %9 = phi i8* [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !771

10:                                               ; preds = %19, %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !749, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* null, metadata !752, metadata !DIExpression()), !dbg !764
  %11 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #25, !dbg !772
  call void @llvm.dbg.value(metadata i32 %11, metadata !751, metadata !DIExpression()), !dbg !764
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 109, label %12
    i32 90, label %14
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !771

12:                                               ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !773, !tbaa !605
  call void @llvm.dbg.value(metadata i8* %13, metadata !749, metadata !DIExpression()), !dbg !764
  br label %8, !dbg !776, !llvm.loop !777

14:                                               ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !dbg !779, !tbaa !605
  %16 = icmp eq i8* %15, null, !dbg !779
  br i1 %16, label %19, label %17, !dbg !783

17:                                               ; preds = %14
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i32 5) #25, !dbg !784
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18) #25, !dbg !786
  br label %19, !dbg !787

19:                                               ; preds = %17, %14
  br label %10, !dbg !764, !llvm.loop !777

20:                                               ; preds = %10
  tail call void @usage(i32 0) #28, !dbg !788
  unreachable, !dbg !788

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !789, !tbaa !605
  %23 = load i8*, i8** @Version, align 8, !dbg !789, !tbaa !605
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* null) #25, !dbg !789
  tail call void @exit(i32 0) #27, !dbg !789
  unreachable, !dbg !789

24:                                               ; preds = %10
  tail call void @usage(i32 1) #28, !dbg !790
  unreachable, !dbg !790

25:                                               ; preds = %10
  %26 = load i32, i32* @optind, align 4, !dbg !791, !tbaa !793
  %27 = icmp eq i32 %26, %0, !dbg !795
  br i1 %27, label %28, label %30, !dbg !796

28:                                               ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #25, !dbg !797
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #25, !dbg !799
  tail call void @usage(i32 1) #28, !dbg !800
  unreachable, !dbg !800

30:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 438, metadata !745, metadata !DIExpression()), !dbg !764
  %31 = icmp eq i8* %9, null, !dbg !801
  br i1 %31, label %47, label %32, !dbg !802

32:                                               ; preds = %30
  %33 = tail call %struct.mode_change* @mode_compile(i8* nonnull %9) #25, !dbg !803
  call void @llvm.dbg.value(metadata %struct.mode_change* %33, metadata !760, metadata !DIExpression()), !dbg !804
  %34 = icmp eq %struct.mode_change* %33, null, !dbg !805
  br i1 %34, label %35, label %37, !dbg !807

35:                                               ; preds = %32
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 5) #25, !dbg !808
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %36) #25, !dbg !808
  unreachable, !dbg !808

37:                                               ; preds = %32
  %38 = tail call i32 @umask(i32 0) #25, !dbg !809
  call void @llvm.dbg.value(metadata i32 %38, metadata !757, metadata !DIExpression()), !dbg !804
  %39 = tail call i32 @umask(i32 %38) #25, !dbg !810
  %40 = tail call i32 @mode_adjust(i32 438, i1 zeroext false, i32 %38, %struct.mode_change* nonnull %33, i32* null) #25, !dbg !811
  call void @llvm.dbg.value(metadata i32 %40, metadata !745, metadata !DIExpression()), !dbg !764
  %41 = bitcast %struct.mode_change* %33 to i8*, !dbg !812
  tail call void @free(i8* %41) #25, !dbg !813
  %42 = icmp ult i32 %40, 512, !dbg !814
  br i1 %42, label %43, label %45, !dbg !816

43:                                               ; preds = %37
  %44 = load i32, i32* @optind, align 4, !dbg !817, !tbaa !793
  br label %47, !dbg !816

45:                                               ; preds = %37
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #25, !dbg !820
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %46) #25, !dbg !820
  unreachable, !dbg !820

47:                                               ; preds = %43, %30
  %48 = phi i32 [ %26, %30 ], [ %44, %43 ], !dbg !817
  %49 = phi i32 [ 438, %30 ], [ %40, %43 ], !dbg !764
  call void @llvm.dbg.value(metadata i32 %49, metadata !745, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 0, metadata !750, metadata !DIExpression()), !dbg !764
  %50 = icmp slt i32 %48, %0, !dbg !821
  br i1 %50, label %51, label %90, !dbg !822

51:                                               ; preds = %47, %85
  %52 = phi i32 [ %88, %85 ], [ %48, %47 ]
  %53 = phi i32 [ %86, %85 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !750, metadata !DIExpression()), !dbg !764
  %54 = sext i32 %52 to i64, !dbg !823
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !823
  %56 = load i8*, i8** %55, align 8, !dbg !823, !tbaa !605
  %57 = tail call i32 @mkfifo(i8* %56, i32 %49) #25, !dbg !826
  %58 = icmp eq i32 %57, 0, !dbg !827
  br i1 %58, label %68, label %59, !dbg !828

59:                                               ; preds = %51
  %60 = tail call i32* @__errno_location() #29, !dbg !829
  %61 = load i32, i32* %60, align 4, !dbg !829, !tbaa !793
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 5) #25, !dbg !831
  %63 = load i32, i32* @optind, align 4, !dbg !832, !tbaa !793
  %64 = sext i32 %63 to i64, !dbg !832
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !832
  %66 = load i8*, i8** %65, align 8, !dbg !832, !tbaa !605
  %67 = tail call i8* @quotearg_style(i32 4, i8* %66) #25, !dbg !832
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %61, i8* %62, i8* %67) #25, !dbg !833
  call void @llvm.dbg.value(metadata i32 1, metadata !750, metadata !DIExpression()), !dbg !764
  br label %85, !dbg !834

68:                                               ; preds = %51
  br i1 %31, label %85, label %69, !dbg !835

69:                                               ; preds = %68
  %70 = load i32, i32* @optind, align 4, !dbg !837, !tbaa !793
  %71 = sext i32 %70 to i64, !dbg !838
  %72 = getelementptr inbounds i8*, i8** %1, i64 %71, !dbg !838
  %73 = load i8*, i8** %72, align 8, !dbg !838, !tbaa !605
  %74 = tail call i32 @lchmod(i8* %73, i32 %49) #25, !dbg !839
  %75 = icmp eq i32 %74, 0, !dbg !840
  br i1 %75, label %85, label %76, !dbg !841

76:                                               ; preds = %69
  %77 = tail call i32* @__errno_location() #29, !dbg !842
  %78 = load i32, i32* %77, align 4, !dbg !842, !tbaa !793
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 5) #25, !dbg !844
  %80 = load i32, i32* @optind, align 4, !dbg !845, !tbaa !793
  %81 = sext i32 %80 to i64, !dbg !845
  %82 = getelementptr inbounds i8*, i8** %1, i64 %81, !dbg !845
  %83 = load i8*, i8** %82, align 8, !dbg !845, !tbaa !605
  %84 = tail call i8* @quotearg_style(i32 4, i8* %83) #25, !dbg !845
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %78, i8* %79, i8* %84) #25, !dbg !846
  call void @llvm.dbg.value(metadata i32 1, metadata !750, metadata !DIExpression()), !dbg !764
  br label %85, !dbg !847

85:                                               ; preds = %59, %76, %69, %68
  %86 = phi i32 [ 1, %59 ], [ 1, %76 ], [ %53, %69 ], [ %53, %68 ], !dbg !764
  call void @llvm.dbg.value(metadata i32 %86, metadata !750, metadata !DIExpression()), !dbg !764
  %87 = load i32, i32* @optind, align 4, !dbg !848, !tbaa !793
  %88 = add nsw i32 %87, 1, !dbg !848
  store i32 %88, i32* @optind, align 4, !dbg !848, !tbaa !793
  %89 = icmp slt i32 %88, %0, !dbg !821
  br i1 %89, label %51, label %90, !dbg !822, !llvm.loop !849

90:                                               ; preds = %85, %47
  %91 = phi i32 [ 0, %47 ], [ %86, %85 ], !dbg !764
  ret i32 %91, !dbg !851
}

; Function Attrs: nounwind
declare !dbg !852 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !855 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !858 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !863 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !869 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !873 i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !877 i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !880 i32 @lchmod(i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !881 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !883, metadata !DIExpression()), !dbg !884
  store i8* %0, i8** @file_name, align 8, !dbg !885, !tbaa !605
  ret void, !dbg !886
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !887 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !891, metadata !DIExpression()), !dbg !892
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !893, !tbaa !894
  ret void, !dbg !896
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !897 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !902, !tbaa !605
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !903
  %3 = icmp eq i32 %2, 0, !dbg !904
  br i1 %3, label %22, label %4, !dbg !905

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !906, !tbaa !894, !range !907
  %6 = icmp eq i8 %5, 0, !dbg !906
  br i1 %6, label %11, label %7, !dbg !908

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !909
  %9 = load i32, i32* %8, align 4, !dbg !909, !tbaa !793
  %10 = icmp eq i32 %9, 32, !dbg !910
  br i1 %10, label %22, label %11, !dbg !911

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #25, !dbg !912
  call void @llvm.dbg.value(metadata i8* %12, metadata !899, metadata !DIExpression()), !dbg !913
  %13 = load i8*, i8** @file_name, align 8, !dbg !914, !tbaa !605
  %14 = icmp eq i8* %13, null, !dbg !914
  %15 = tail call i32* @__errno_location() #29, !dbg !916
  %16 = load i32, i32* %15, align 4, !dbg !916, !tbaa !793
  br i1 %14, label %19, label %17, !dbg !917

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !918
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !919
  br label %20, !dbg !919

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #25, !dbg !920
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !921, !tbaa !793
  tail call void @_exit(i32 %21) #27, !dbg !922
  unreachable, !dbg !922

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !923, !tbaa !605
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !925
  %25 = icmp eq i32 %24, 0, !dbg !926
  br i1 %25, label %28, label %26, !dbg !927

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !928, !tbaa !793
  tail call void @_exit(i32 %27) #27, !dbg !929
  unreachable, !dbg !929

28:                                               ; preds = %22
  ret void, !dbg !930
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* %0) local_unnamed_addr #8 !dbg !931 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !943, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 0, metadata !945, metadata !DIExpression()), !dbg !970
  %2 = load i8, i8* %0, align 1, !dbg !971, !tbaa !972
  %3 = and i8 %2, -8, !dbg !973
  %4 = icmp eq i8 %3, 48, !dbg !973
  br i1 %4, label %5, label %39, !dbg !973

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !974
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !976
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !976
  call void @llvm.dbg.value(metadata i8* %8, metadata !946, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 %7, metadata !947, metadata !DIExpression()), !dbg !976
  %9 = shl i32 %7, 3, !dbg !977
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !978
  call void @llvm.dbg.value(metadata i8* %10, metadata !946, metadata !DIExpression()), !dbg !970
  %11 = zext i8 %6 to i32, !dbg !974
  %12 = add i32 %9, -48, !dbg !979
  %13 = add i32 %12, %11, !dbg !980
  call void @llvm.dbg.value(metadata i32 %13, metadata !947, metadata !DIExpression()), !dbg !976
  %14 = icmp ugt i32 %13, 4095, !dbg !981
  br i1 %14, label %149, label %15, !dbg !983

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !984, !tbaa !972
  %17 = and i8 %16, -8, !dbg !985
  %18 = icmp eq i8 %17, 48, !dbg !985
  br i1 %18, label %5, label %19, !dbg !985, !llvm.loop !986

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !989
  br i1 %20, label %21, label %149, !dbg !991

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !950, metadata !DIExpression()), !dbg !976
  %22 = ptrtoint i8* %10 to i64, !dbg !992
  %23 = ptrtoint i8* %0 to i64, !dbg !992
  %24 = sub i64 %22, %23, !dbg !992
  %25 = icmp slt i64 %24, 5, !dbg !993
  %26 = and i32 %13, 3072, !dbg !994
  %27 = or i32 %26, 1023, !dbg !994
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !994
  call void @llvm.dbg.value(metadata i32 %28, metadata !951, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i32 %13, metadata !995, metadata !DIExpression()) #25, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %28, metadata !1000, metadata !DIExpression()) #25, !dbg !1002
  %29 = tail call noalias i8* @xmalloc(i64 32) #25, !dbg !1004
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1001, metadata !DIExpression()) #25, !dbg !1002
  store i8 61, i8* %29, align 4, !dbg !1005, !tbaa !1006
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1008
  store i8 1, i8* %31, align 1, !dbg !1009, !tbaa !1010
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1011
  %33 = bitcast i8* %32 to i32*, !dbg !1011
  store i32 4095, i32* %33, align 4, !dbg !1012, !tbaa !1013
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1014
  %35 = bitcast i8* %34 to i32*, !dbg !1014
  store i32 %13, i32* %35, align 4, !dbg !1015, !tbaa !1016
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1017
  %37 = bitcast i8* %36 to i32*, !dbg !1017
  store i32 %28, i32* %37, align 4, !dbg !1018, !tbaa !1019
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1020
  store i8 0, i8* %38, align 1, !dbg !1021, !tbaa !1010
  br label %149, !dbg !1022

39:                                               ; preds = %1, %44
  %40 = phi i8 [ %48, %44 ], [ %2, %1 ], !dbg !1023
  %41 = phi i8* [ %47, %44 ], [ %0, %1 ], !dbg !1026
  %42 = phi i64 [ %46, %44 ], [ 1, %1 ], !dbg !1027
  call void @llvm.dbg.value(metadata i64 %42, metadata !952, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i8* %41, metadata !946, metadata !DIExpression()), !dbg !970
  switch i8 %40, label %43 [
    i8 0, label %49
    i8 61, label %44
    i8 43, label %44
    i8 45, label %44
  ], !dbg !1028

43:                                               ; preds = %39
  br label %44, !dbg !1029

44:                                               ; preds = %39, %39, %39, %43
  %45 = phi i64 [ 0, %43 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %46 = add i64 %45, %42, !dbg !1030
  call void @llvm.dbg.value(metadata i64 %46, metadata !952, metadata !DIExpression()), !dbg !1027
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %47, metadata !946, metadata !DIExpression()), !dbg !970
  %48 = load i8, i8* %47, align 1, !dbg !1023, !tbaa !972
  br label %39, !dbg !1032, !llvm.loop !1033

49:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %42, metadata !1035, metadata !DIExpression()) #25, !dbg !1041
  call void @llvm.dbg.value(metadata i64 16, metadata !1040, metadata !DIExpression()) #25, !dbg !1041
  %50 = icmp ugt i64 %42, 576460752303423487, !dbg !1043
  br i1 %50, label %51, label %52, !dbg !1045

51:                                               ; preds = %49
  tail call void @xalloc_die() #27, !dbg !1046
  unreachable, !dbg !1046

52:                                               ; preds = %49
  %53 = shl nuw nsw i64 %42, 4, !dbg !1047
  %54 = tail call noalias i8* @xmalloc(i64 %53) #25, !dbg !1048
  %55 = bitcast i8* %54 to %struct.mode_change*, !dbg !1049
  call void @llvm.dbg.value(metadata %struct.mode_change* %55, metadata !944, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %0, metadata !946, metadata !DIExpression()), !dbg !970
  br label %56, !dbg !1050

56:                                               ; preds = %144, %52
  %57 = phi i8* [ %0, %52 ], [ %145, %144 ], !dbg !1051
  %58 = phi i64 [ 0, %52 ], [ %132, %144 ], !dbg !1052
  call void @llvm.dbg.value(metadata i32 undef, metadata !960, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i64 %58, metadata !945, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %57, metadata !946, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 0, metadata !954, metadata !DIExpression()), !dbg !1054
  br label %59, !dbg !1055

59:                                               ; preds = %68, %56
  %60 = phi i8* [ %57, %56 ], [ %71, %68 ], !dbg !1051
  %61 = phi i32 [ 0, %56 ], [ %70, %68 ], !dbg !1054
  call void @llvm.dbg.value(metadata i32 %61, metadata !954, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %60, metadata !946, metadata !DIExpression()), !dbg !970
  %62 = load i8, i8* %60, align 1, !dbg !1056, !tbaa !972
  %63 = sext i8 %62 to i32, !dbg !1056
  switch i32 %63, label %148 [
    i32 117, label %68
    i32 103, label %65
    i32 111, label %66
    i32 97, label %67
    i32 61, label %64
    i32 43, label %64
    i32 45, label %64
  ], !dbg !1059

64:                                               ; preds = %59, %59, %59
  br label %72, !dbg !1060

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !954, metadata !DIExpression()), !dbg !1054
  br label %68, !dbg !1061

66:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !954, metadata !DIExpression()), !dbg !1054
  br label %68, !dbg !1063

67:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 undef, metadata !954, metadata !DIExpression()), !dbg !1054
  br label %68, !dbg !1064

68:                                               ; preds = %59, %65, %66, %67
  %69 = phi i32 [ 1080, %65 ], [ 519, %66 ], [ 4095, %67 ], [ 2496, %59 ]
  %70 = or i32 %61, %69, !dbg !1065
  call void @llvm.dbg.value(metadata i32 %70, metadata !954, metadata !DIExpression()), !dbg !1054
  %71 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1066
  call void @llvm.dbg.value(metadata i8* %71, metadata !946, metadata !DIExpression()), !dbg !970
  br label %59, !dbg !1067, !llvm.loop !1068

72:                                               ; preds = %143, %64
  %73 = phi i8 [ %62, %64 ], [ %142, %143 ], !dbg !1071
  %74 = phi i8* [ %60, %64 ], [ %126, %143 ], !dbg !1051
  %75 = phi i32 [ %61, %64 ], [ %127, %143 ], !dbg !1072
  %76 = phi i64 [ %58, %64 ], [ %132, %143 ], !dbg !970
  call void @llvm.dbg.value(metadata i32 undef, metadata !960, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i64 %76, metadata !945, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 %75, metadata !954, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %74, metadata !946, metadata !DIExpression()), !dbg !970
  %77 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %77, metadata !946, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8 %73, metadata !958, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 0, metadata !961, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8 3, metadata !962, metadata !DIExpression()), !dbg !1053
  %78 = load i8, i8* %77, align 1, !dbg !1074, !tbaa !972
  %79 = sext i8 %78 to i32, !dbg !1074
  switch i32 %79, label %104 [
    i32 48, label %80
    i32 49, label %80
    i32 50, label %80
    i32 51, label %80
    i32 52, label %80
    i32 53, label %80
    i32 54, label %80
    i32 55, label %80
    i32 117, label %98
    i32 103, label %100
    i32 111, label %102
  ], !dbg !1060

80:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  br label %81, !dbg !1075

81:                                               ; preds = %80, %91
  %82 = phi i8 [ %92, %91 ], [ %78, %80 ], !dbg !1076
  %83 = phi i8* [ %86, %91 ], [ %77, %80 ], !dbg !1053
  %84 = phi i32 [ %89, %91 ], [ 0, %80 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %84, metadata !964, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i8* %83, metadata !946, metadata !DIExpression()), !dbg !970
  %85 = shl i32 %84, 3, !dbg !1079
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %86, metadata !946, metadata !DIExpression()), !dbg !970
  %87 = sext i8 %82 to i32, !dbg !1076
  %88 = add i32 %85, -48, !dbg !1081
  %89 = add i32 %88, %87, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %89, metadata !964, metadata !DIExpression()), !dbg !1078
  %90 = icmp ugt i32 %89, 4095, !dbg !1083
  br i1 %90, label %148, label %91, !dbg !1085

91:                                               ; preds = %81
  %92 = load i8, i8* %86, align 1, !dbg !1086, !tbaa !972
  %93 = and i8 %92, -8, !dbg !1087
  %94 = icmp eq i8 %93, 48, !dbg !1087
  br i1 %94, label %81, label %95, !dbg !1087, !llvm.loop !1088

95:                                               ; preds = %91
  %96 = icmp eq i32 %75, 0, !dbg !1090
  br i1 %96, label %97, label %148, !dbg !1092

97:                                               ; preds = %95
  switch i8 %92, label %148 [
    i8 0, label %125
    i8 44, label %125
  ], !dbg !1093

98:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 448, metadata !960, metadata !DIExpression()), !dbg !1053
  %99 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %99, metadata !946, metadata !DIExpression()), !dbg !970
  br label %125, !dbg !1095

100:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 56, metadata !960, metadata !DIExpression()), !dbg !1053
  %101 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %101, metadata !946, metadata !DIExpression()), !dbg !970
  br label %125, !dbg !1097

102:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !960, metadata !DIExpression()), !dbg !1053
  %103 = getelementptr inbounds i8, i8* %74, i64 2, !dbg !1098
  call void @llvm.dbg.value(metadata i8* %103, metadata !946, metadata !DIExpression()), !dbg !970
  br label %125, !dbg !1099

104:                                              ; preds = %72, %120
  %105 = phi i8 [ %124, %120 ], [ %78, %72 ], !dbg !1100
  %106 = phi i8* [ %123, %120 ], [ %77, %72 ], !dbg !1053
  %107 = phi i32 [ %121, %120 ], [ 0, %72 ], !dbg !1103
  %108 = phi i8 [ %122, %120 ], [ 1, %72 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8 %108, metadata !962, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %107, metadata !960, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %106, metadata !946, metadata !DIExpression()), !dbg !970
  %109 = sext i8 %105 to i32, !dbg !1100
  switch i32 %109, label %125 [
    i32 114, label %110
    i32 119, label %112
    i32 120, label %114
    i32 88, label %120
    i32 115, label %116
    i32 116, label %118
  ], !dbg !1105

110:                                              ; preds = %104
  %111 = or i32 %107, 292, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %111, metadata !960, metadata !DIExpression()), !dbg !1053
  br label %120, !dbg !1108

112:                                              ; preds = %104
  %113 = or i32 %107, 146, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %113, metadata !960, metadata !DIExpression()), !dbg !1053
  br label %120, !dbg !1110

114:                                              ; preds = %104
  %115 = or i32 %107, 73, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %115, metadata !960, metadata !DIExpression()), !dbg !1053
  br label %120, !dbg !1112

116:                                              ; preds = %104
  %117 = or i32 %107, 3072, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %117, metadata !960, metadata !DIExpression()), !dbg !1053
  br label %120, !dbg !1114

118:                                              ; preds = %104
  %119 = or i32 %107, 512, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %119, metadata !960, metadata !DIExpression()), !dbg !1053
  br label %120, !dbg !1116

120:                                              ; preds = %104, %110, %112, %114, %116, %118
  %121 = phi i32 [ %119, %118 ], [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %107, %104 ], !dbg !1103
  %122 = phi i8 [ %108, %118 ], [ %108, %116 ], [ %108, %114 ], [ %108, %112 ], [ %108, %110 ], [ 2, %104 ], !dbg !1103
  call void @llvm.dbg.value(metadata i8 %122, metadata !962, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %121, metadata !960, metadata !DIExpression()), !dbg !1053
  %123 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1117
  call void @llvm.dbg.value(metadata i8* %123, metadata !946, metadata !DIExpression()), !dbg !970
  %124 = load i8, i8* %123, align 1, !dbg !1100, !tbaa !972
  br label %104, !dbg !1118, !llvm.loop !1119

125:                                              ; preds = %104, %97, %97, %102, %100, %98
  %126 = phi i8* [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %86, %97 ], [ %86, %97 ], [ %106, %104 ], !dbg !1053
  %127 = phi i32 [ %75, %102 ], [ %75, %100 ], [ %75, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ %75, %104 ], !dbg !1072
  %128 = phi i32 [ 7, %102 ], [ 56, %100 ], [ 448, %98 ], [ %89, %97 ], [ %89, %97 ], [ %107, %104 ]
  %129 = phi i1 [ true, %102 ], [ true, %100 ], [ true, %98 ], [ false, %97 ], [ false, %97 ], [ true, %104 ], !dbg !1122
  %130 = phi i32 [ 0, %102 ], [ 0, %100 ], [ 0, %98 ], [ 4095, %97 ], [ 4095, %97 ], [ 0, %104 ], !dbg !1122
  %131 = phi i8 [ 3, %102 ], [ 3, %100 ], [ 3, %98 ], [ 1, %97 ], [ 1, %97 ], [ %108, %104 ], !dbg !1053
  call void @llvm.dbg.value(metadata i8 %131, metadata !962, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %130, metadata !961, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %128, metadata !960, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i32 %127, metadata !954, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %126, metadata !946, metadata !DIExpression()), !dbg !970
  %132 = add i64 %76, 1, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %132, metadata !945, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata %struct.mode_change* undef, metadata !963, metadata !DIExpression()), !dbg !1053
  %133 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 0, !dbg !1124
  store i8 %73, i8* %133, align 4, !dbg !1125, !tbaa !1006
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 1, !dbg !1126
  store i8 %131, i8* %134, align 1, !dbg !1127, !tbaa !1010
  %135 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 2, !dbg !1128
  store i32 %127, i32* %135, align 4, !dbg !1129, !tbaa !1013
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 3, !dbg !1130
  store i32 %128, i32* %136, align 4, !dbg !1131, !tbaa !1016
  %137 = icmp eq i32 %127, 0, !dbg !1132
  %138 = select i1 %137, i32 -1, i32 %127, !dbg !1132
  %139 = and i32 %138, %128, !dbg !1132
  %140 = select i1 %129, i32 %139, i32 %130, !dbg !1132
  %141 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %76, i32 4, !dbg !1133
  store i32 %140, i32* %141, align 4, !dbg !1134, !tbaa !1019
  call void @llvm.dbg.value(metadata i32 undef, metadata !960, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i64 %76, metadata !945, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 %75, metadata !954, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %86, metadata !946, metadata !DIExpression()), !dbg !970
  %142 = load i8, i8* %126, align 1, !dbg !1135, !tbaa !972
  switch i8 %142, label %148 [
    i8 61, label %143
    i8 43, label %143
    i8 45, label %143
    i8 44, label %144
    i8 0, label %146
  ], !dbg !1136

143:                                              ; preds = %125, %125, %125
  br label %72, !dbg !1053

144:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i32 undef, metadata !960, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i64 %132, metadata !945, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %126, metadata !946, metadata !DIExpression()), !dbg !970
  %145 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !1137
  call void @llvm.dbg.value(metadata i8* %145, metadata !946, metadata !DIExpression()), !dbg !970
  br label %56, !dbg !1138, !llvm.loop !1139

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %55, i64 %132, i32 1, !dbg !1142
  store i8 0, i8* %147, align 1, !dbg !1145, !tbaa !1010
  br label %149, !dbg !1146

148:                                              ; preds = %59, %95, %97, %125, %81
  call void @llvm.dbg.label(metadata !969), !dbg !1147
  tail call void @free(i8* %54) #25, !dbg !1148
  br label %149, !dbg !1149

149:                                              ; preds = %5, %21, %19, %148, %146
  %150 = phi %struct.mode_change* [ null, %148 ], [ %55, %146 ], [ %30, %21 ], [ null, %19 ], [ null, %5 ]
  ret %struct.mode_change* %150, !dbg !1150
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* nocapture readonly %0) local_unnamed_addr #8 !dbg !1151 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1153, metadata !DIExpression()), !dbg !1190
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1191
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #25, !dbg !1191
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1154, metadata !DIExpression()), !dbg !1192
  %4 = call i32 @stat(i8* %0, %struct.stat* nonnull %2) #25, !dbg !1193
  %5 = icmp eq i32 %4, 0, !dbg !1195
  br i1 %5, label %6, label %19, !dbg !1196

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1197
  %8 = load i32, i32* %7, align 8, !dbg !1197, !tbaa !1198
  call void @llvm.dbg.value(metadata i32 %8, metadata !995, metadata !DIExpression()) #25, !dbg !1202
  call void @llvm.dbg.value(metadata i32 4095, metadata !1000, metadata !DIExpression()) #25, !dbg !1202
  %9 = tail call noalias i8* @xmalloc(i64 32) #25, !dbg !1204
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1204
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1001, metadata !DIExpression()) #25, !dbg !1202
  store i8 61, i8* %9, align 4, !dbg !1205, !tbaa !1006
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1206
  store i8 1, i8* %11, align 1, !dbg !1207, !tbaa !1010
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1208
  %13 = bitcast i8* %12 to i32*, !dbg !1208
  store i32 4095, i32* %13, align 4, !dbg !1209, !tbaa !1013
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1210
  %15 = bitcast i8* %14 to i32*, !dbg !1210
  store i32 %8, i32* %15, align 4, !dbg !1211, !tbaa !1016
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1212
  %17 = bitcast i8* %16 to i32*, !dbg !1212
  store i32 4095, i32* %17, align 4, !dbg !1213, !tbaa !1019
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1214
  store i8 0, i8* %18, align 1, !dbg !1215, !tbaa !1010
  br label %19, !dbg !1216

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1190
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #25, !dbg !1217
  ret %struct.mode_change* %20, !dbg !1217
}

; Function Attrs: nofree nounwind
declare !dbg !1218 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @mode_adjust(i32 %0, i1 zeroext %1, i32 %2, %struct.mode_change* nocapture readonly %3, i32* %4) local_unnamed_addr #13 !dbg !1222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1229, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i1 %1, metadata !1230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %2, metadata !1231, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1232, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32* %4, metadata !1233, metadata !DIExpression()), !dbg !1245
  %6 = and i32 %0, 4095, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %6, metadata !1234, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 0, metadata !1235, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1232, metadata !DIExpression()), !dbg !1245
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1247
  %8 = load i8, i8* %7, align 1, !dbg !1247, !tbaa !1010
  %9 = icmp eq i8 %8, 0, !dbg !1248
  br i1 %9, label %81, label %10, !dbg !1249

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1249

14:                                               ; preds = %10, %74
  %15 = phi i8 [ %8, %10 ], [ %79, %74 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %77, %74 ]
  %17 = phi i32 [ %6, %10 ], [ %76, %74 ]
  %18 = phi i32 [ 0, %10 ], [ %75, %74 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1232, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %17, metadata !1234, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %18, metadata !1235, metadata !DIExpression()), !dbg !1245
  %19 = sext i8 %15 to i32, !dbg !1250
  %20 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1251
  %21 = load i32, i32* %20, align 4, !dbg !1251, !tbaa !1013
  call void @llvm.dbg.value(metadata i32 %21, metadata !1236, metadata !DIExpression()), !dbg !1252
  %22 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1253
  %23 = load i32, i32* %22, align 4, !dbg !1253, !tbaa !1019
  %24 = xor i32 %23, -1, !dbg !1254
  %25 = and i32 %11, %24, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %25, metadata !1240, metadata !DIExpression()), !dbg !1252
  %26 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1256
  %27 = load i32, i32* %26, align 4, !dbg !1256, !tbaa !1016
  call void @llvm.dbg.value(metadata i32 %27, metadata !1241, metadata !DIExpression()), !dbg !1252
  switch i32 %19, label %48 [
    i32 2, label %42
    i32 3, label %28
  ], !dbg !1257

28:                                               ; preds = %14
  %29 = and i32 %27, %17, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %29, metadata !1241, metadata !DIExpression()), !dbg !1252
  %30 = and i32 %29, 292, !dbg !1260
  %31 = icmp eq i32 %30, 0, !dbg !1261
  %32 = select i1 %31, i32 0, i32 292, !dbg !1261
  %33 = and i32 %29, 146, !dbg !1262
  %34 = icmp eq i32 %33, 0, !dbg !1263
  %35 = select i1 %34, i32 0, i32 146, !dbg !1263
  %36 = and i32 %29, 73, !dbg !1264
  %37 = icmp eq i32 %36, 0, !dbg !1265
  %38 = select i1 %37, i32 0, i32 73, !dbg !1265
  %39 = or i32 %35, %29, !dbg !1266
  %40 = or i32 %39, %32, !dbg !1267
  %41 = or i32 %40, %38, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %41, metadata !1241, metadata !DIExpression()), !dbg !1252
  br label %48, !dbg !1269

42:                                               ; preds = %14
  %43 = and i32 %17, 73, !dbg !1270
  %44 = or i32 %43, %12, !dbg !1272
  %45 = icmp eq i32 %44, 0, !dbg !1272
  %46 = or i32 %27, 73
  %47 = select i1 %45, i32 %27, i32 %46, !dbg !1273
  br label %48, !dbg !1273

48:                                               ; preds = %42, %14, %28
  %49 = phi i32 [ %27, %14 ], [ %41, %28 ], [ %47, %42 ], !dbg !1252
  call void @llvm.dbg.value(metadata i32 %49, metadata !1241, metadata !DIExpression()), !dbg !1252
  %50 = icmp eq i32 %21, 0, !dbg !1274
  %51 = select i1 %50, i32 %13, i32 %21, !dbg !1274
  %52 = xor i32 %25, -1, !dbg !1275
  %53 = and i32 %51, %52, !dbg !1276
  %54 = and i32 %53, %49, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %54, metadata !1241, metadata !DIExpression()), !dbg !1252
  %55 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1278
  %56 = load i8, i8* %55, align 4, !dbg !1278, !tbaa !1006
  %57 = sext i8 %56 to i32, !dbg !1279
  switch i32 %57, label %74 [
    i32 61, label %58
    i32 43, label %67
    i32 45, label %70
  ], !dbg !1280

58:                                               ; preds = %48
  %59 = xor i32 %21, -1, !dbg !1281
  %60 = select i1 %50, i32 0, i32 %59, !dbg !1281
  %61 = or i32 %60, %25, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %61, metadata !1242, metadata !DIExpression()), !dbg !1283
  %62 = and i32 %61, 4095, !dbg !1284
  %63 = xor i32 %62, 4095, !dbg !1284
  %64 = or i32 %63, %18, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %64, metadata !1235, metadata !DIExpression()), !dbg !1245
  %65 = and i32 %61, %17, !dbg !1286
  %66 = or i32 %54, %65, !dbg !1287
  call void @llvm.dbg.value(metadata i32 %66, metadata !1234, metadata !DIExpression()), !dbg !1245
  br label %74

67:                                               ; preds = %48
  %68 = or i32 %54, %18, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %68, metadata !1235, metadata !DIExpression()), !dbg !1245
  %69 = or i32 %54, %17, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %69, metadata !1234, metadata !DIExpression()), !dbg !1245
  br label %74, !dbg !1290

70:                                               ; preds = %48
  %71 = or i32 %54, %18, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %71, metadata !1235, metadata !DIExpression()), !dbg !1245
  %72 = xor i32 %54, -1, !dbg !1292
  %73 = and i32 %17, %72, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %73, metadata !1234, metadata !DIExpression()), !dbg !1245
  br label %74, !dbg !1294

74:                                               ; preds = %48, %70, %67, %58
  %75 = phi i32 [ %18, %48 ], [ %71, %70 ], [ %68, %67 ], [ %64, %58 ], !dbg !1245
  %76 = phi i32 [ %17, %48 ], [ %73, %70 ], [ %69, %67 ], [ %66, %58 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %76, metadata !1234, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i32 %75, metadata !1235, metadata !DIExpression()), !dbg !1245
  %77 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1295
  call void @llvm.dbg.value(metadata %struct.mode_change* %77, metadata !1232, metadata !DIExpression()), !dbg !1245
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1247
  %79 = load i8, i8* %78, align 1, !dbg !1247, !tbaa !1010
  %80 = icmp eq i8 %79, 0, !dbg !1248
  br i1 %80, label %81, label %14, !dbg !1249, !llvm.loop !1296

81:                                               ; preds = %74, %5
  %82 = phi i32 [ 0, %5 ], [ %75, %74 ], !dbg !1298
  %83 = phi i32 [ %6, %5 ], [ %76, %74 ], !dbg !1299
  %84 = icmp eq i32* %4, null, !dbg !1300
  br i1 %84, label %86, label %85, !dbg !1302

85:                                               ; preds = %81
  store i32 %82, i32* %4, align 4, !dbg !1303, !tbaa !793
  br label %86, !dbg !1304

86:                                               ; preds = %85, %81
  ret i32 %83, !dbg !1305
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1306 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1308, metadata !DIExpression()), !dbg !1311
  %2 = icmp eq i8* %0, null, !dbg !1312
  br i1 %2, label %3, label %6, !dbg !1314

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1315, !tbaa !605
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1317
  tail call void @abort() #27, !dbg !1318
  unreachable, !dbg !1318

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %7, metadata !1309, metadata !DIExpression()), !dbg !1311
  %8 = icmp eq i8* %7, null, !dbg !1320
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1321
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %10, metadata !1310, metadata !DIExpression()), !dbg !1311
  %11 = ptrtoint i8* %10 to i64, !dbg !1322
  %12 = ptrtoint i8* %0 to i64, !dbg !1322
  %13 = sub i64 %11, %12, !dbg !1322
  %14 = icmp sgt i64 %13, 6, !dbg !1324
  br i1 %14, label %15, label %24, !dbg !1325

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1326
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.55, i64 0, i64 0), i64 7) #26, !dbg !1327
  %18 = icmp eq i32 %17, 0, !dbg !1328
  br i1 %18, label %19, label %24, !dbg !1329

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1308, metadata !DIExpression()), !dbg !1311
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i64 3) #26, !dbg !1330
  %21 = icmp eq i32 %20, 0, !dbg !1333
  br i1 %21, label %22, label %24, !dbg !1334

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %23, metadata !1308, metadata !DIExpression()), !dbg !1311
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1337, !tbaa !605
  br label %24, !dbg !1338

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1308, metadata !DIExpression()), !dbg !1311
  store i8* %25, i8** @program_name, align 8, !dbg !1339, !tbaa !605
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1340, !tbaa !605
  ret void, !dbg !1341
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1342 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1347, metadata !DIExpression()), !dbg !1350
  %2 = tail call i32* @__errno_location() #29, !dbg !1351
  %3 = load i32, i32* %2, align 4, !dbg !1351, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %3, metadata !1348, metadata !DIExpression()), !dbg !1350
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1352
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1352
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1352
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !1353
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1353
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1349, metadata !DIExpression()), !dbg !1350
  store i32 %3, i32* %2, align 4, !dbg !1354, !tbaa !793
  ret %struct.quoting_options* %8, !dbg !1355
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1356 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1362, metadata !DIExpression()), !dbg !1363
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1364
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1364
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1365
  %5 = load i32, i32* %4, align 8, !dbg !1365, !tbaa !1366
  ret i32 %5, !dbg !1368
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1369 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1373, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata i32 %1, metadata !1374, metadata !DIExpression()), !dbg !1375
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1376
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1376
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1377
  store i32 %1, i32* %5, align 8, !dbg !1378, !tbaa !1366
  ret void, !dbg !1379
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1380 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1384, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 %1, metadata !1385, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %2, metadata !1386, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 %1, metadata !1387, metadata !DIExpression()), !dbg !1393
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1394
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1394
  %6 = lshr i8 %1, 5, !dbg !1395
  %7 = zext i8 %6 to i64, !dbg !1395
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1396
  call void @llvm.dbg.value(metadata i32* %8, metadata !1389, metadata !DIExpression()), !dbg !1393
  %9 = and i8 %1, 31, !dbg !1397
  %10 = zext i8 %9 to i32, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %10, metadata !1391, metadata !DIExpression()), !dbg !1393
  %11 = load i32, i32* %8, align 4, !dbg !1398, !tbaa !793
  %12 = lshr i32 %11, %10, !dbg !1399
  %13 = and i32 %12, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %13, metadata !1392, metadata !DIExpression()), !dbg !1393
  %14 = and i32 %2, 1, !dbg !1401
  %15 = xor i32 %13, %14, !dbg !1402
  %16 = shl i32 %15, %10, !dbg !1403
  %17 = xor i32 %16, %11, !dbg !1404
  store i32 %17, i32* %8, align 4, !dbg !1404, !tbaa !793
  ret i32 %13, !dbg !1405
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1406 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1410, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i32 %1, metadata !1411, metadata !DIExpression()), !dbg !1413
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1414
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1410, metadata !DIExpression()), !dbg !1413
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1417
  %6 = load i32, i32* %5, align 4, !dbg !1417, !tbaa !1418
  call void @llvm.dbg.value(metadata i32 %6, metadata !1412, metadata !DIExpression()), !dbg !1413
  store i32 %1, i32* %5, align 4, !dbg !1419, !tbaa !1418
  ret i32 %6, !dbg !1420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1421 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1425, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %1, metadata !1426, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %2, metadata !1427, metadata !DIExpression()), !dbg !1428
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1429
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1431
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1425, metadata !DIExpression()), !dbg !1428
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1432
  store i32 10, i32* %6, align 8, !dbg !1433, !tbaa !1366
  %7 = icmp ne i8* %1, null, !dbg !1434
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1436
  br i1 %9, label %11, label %10, !dbg !1436

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1437
  unreachable, !dbg !1437

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1438
  store i8* %1, i8** %12, align 8, !dbg !1439, !tbaa !1440
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1441
  store i8* %2, i8** %13, align 8, !dbg !1442, !tbaa !1443
  ret void, !dbg !1444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1445 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1449, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %1, metadata !1450, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i8* %2, metadata !1451, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %3, metadata !1452, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1453, metadata !DIExpression()), !dbg !1457
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1458
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1458
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1454, metadata !DIExpression()), !dbg !1457
  %8 = tail call i32* @__errno_location() #29, !dbg !1459
  %9 = load i32, i32* %8, align 4, !dbg !1459, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %9, metadata !1455, metadata !DIExpression()), !dbg !1457
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1460
  %11 = load i32, i32* %10, align 8, !dbg !1460, !tbaa !1366
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1461
  %13 = load i32, i32* %12, align 4, !dbg !1461, !tbaa !1418
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1462
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1463
  %16 = load i8*, i8** %15, align 8, !dbg !1463, !tbaa !1440
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1464
  %18 = load i8*, i8** %17, align 8, !dbg !1464, !tbaa !1443
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %19, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i32 %9, i32* %8, align 4, !dbg !1466, !tbaa !793
  ret i64 %19, !dbg !1467
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1468 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1474, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %1, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %2, metadata !1476, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %3, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %4, metadata !1478, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %5, metadata !1479, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32* %6, metadata !1480, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %7, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %8, metadata !1482, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1485, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* null, metadata !1486, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1487, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1544
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1545
  %14 = icmp eq i64 %13, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i1 %14, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1544
  %15 = lshr i32 %5, 1, !dbg !1547
  %16 = trunc i32 %15 to i8, !dbg !1547
  %17 = and i8 %16, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i8 %17, metadata !1490, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1493, metadata !DIExpression()), !dbg !1544
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1548

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1549
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1550
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1551
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1552
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1544
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1553
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1554
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1555
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %38, metadata !1493, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %37, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %36, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %35, metadata !1490, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %34, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %33, metadata !1488, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %32, metadata !1487, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %31, metadata !1486, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %30, metadata !1485, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %29, metadata !1482, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %28, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %27, metadata !1478, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.label(metadata !1538), !dbg !1556
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
  ], !dbg !1557

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1490, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 5, metadata !1478, metadata !DIExpression()), !dbg !1544
  br label %92, !dbg !1558

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1490, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 5, metadata !1478, metadata !DIExpression()), !dbg !1544
  %42 = and i8 %35, 1, !dbg !1560
  %43 = icmp eq i8 %42, 0, !dbg !1560
  br i1 %43, label %44, label %92, !dbg !1558

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1562
  br i1 %45, label %92, label %46, !dbg !1565

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1562, !tbaa !972
  br label %92, !dbg !1562

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 %27), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %48, metadata !1481, metadata !DIExpression()), !dbg !1544
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), i32 %27), !dbg !1570
  call void @llvm.dbg.value(metadata i8* %49, metadata !1482, metadata !DIExpression()), !dbg !1544
  br label %50, !dbg !1571

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1482, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %51, metadata !1481, metadata !DIExpression()), !dbg !1544
  %53 = and i8 %35, 1, !dbg !1572
  %54 = icmp eq i8 %53, 0, !dbg !1572
  br i1 %54, label %55, label %70, !dbg !1574

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1486, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1484, metadata !DIExpression()), !dbg !1544
  %56 = load i8, i8* %51, align 1, !dbg !1575, !tbaa !972
  %57 = icmp eq i8 %56, 0, !dbg !1578
  br i1 %57, label %70, label %58, !dbg !1578

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1486, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %61, metadata !1484, metadata !DIExpression()), !dbg !1544
  %62 = icmp ult i64 %61, %39, !dbg !1579
  br i1 %62, label %63, label %65, !dbg !1582

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1579
  store i8 %59, i8* %64, align 1, !dbg !1579, !tbaa !972
  br label %65, !dbg !1579

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %66, metadata !1484, metadata !DIExpression()), !dbg !1544
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1583
  call void @llvm.dbg.value(metadata i8* %67, metadata !1486, metadata !DIExpression()), !dbg !1544
  %68 = load i8, i8* %67, align 1, !dbg !1575, !tbaa !972
  %69 = icmp eq i8 %68, 0, !dbg !1578
  br i1 %69, label %70, label %58, !dbg !1578, !llvm.loop !1584

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1586
  call void @llvm.dbg.value(metadata i64 %71, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %52, metadata !1486, metadata !DIExpression()), !dbg !1544
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %72, metadata !1487, metadata !DIExpression()), !dbg !1544
  br label %92, !dbg !1588

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1544
  br label %74, !dbg !1589

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %75, metadata !1488, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1490, metadata !DIExpression()), !dbg !1544
  br label %76, !dbg !1590

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1552
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %78, metadata !1490, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %77, metadata !1488, metadata !DIExpression()), !dbg !1544
  %79 = and i8 %78, 1, !dbg !1591
  %80 = icmp eq i8 %79, 0, !dbg !1591
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1593
  br label %82, !dbg !1593

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1544
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %84, metadata !1490, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %83, metadata !1488, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 2, metadata !1478, metadata !DIExpression()), !dbg !1544
  %85 = and i8 %84, 1, !dbg !1594
  %86 = icmp eq i8 %85, 0, !dbg !1594
  br i1 %86, label %87, label %92, !dbg !1596

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1597
  br i1 %88, label %92, label %89, !dbg !1600

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1597, !tbaa !972
  br label %92, !dbg !1597

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1490, metadata !DIExpression()), !dbg !1544
  br label %92, !dbg !1601

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1602
  unreachable, !dbg !1602

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1586
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %40 ], !dbg !1544
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1544
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1544
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %100, metadata !1490, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %99, metadata !1488, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %98, metadata !1487, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %97, metadata !1486, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %96, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %95, metadata !1482, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %94, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %93, metadata !1478, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1483, metadata !DIExpression()), !dbg !1544
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
  br label %121, !dbg !1603

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1604
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1586
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1549
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1553
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1554
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1555
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %128, metadata !1493, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %127, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %126, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %125, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %124, metadata !1485, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %122, metadata !1483, metadata !DIExpression()), !dbg !1544
  %130 = icmp eq i64 %125, -1, !dbg !1605
  br i1 %130, label %131, label %135, !dbg !1606

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1607
  %133 = load i8, i8* %132, align 1, !dbg !1607, !tbaa !972
  %134 = icmp eq i8 %133, 0, !dbg !1608
  br i1 %134, label %587, label %137, !dbg !1609

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1610
  br i1 %136, label %587, label %137, !dbg !1609

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1499, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1500, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1501, metadata !DIExpression()), !dbg !1611
  br i1 %106, label %138, label %153, !dbg !1612

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1614
  %140 = and i1 %107, %130, !dbg !1615
  br i1 %140, label %141, label %143, !dbg !1615

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %142, metadata !1477, metadata !DIExpression()), !dbg !1544
  br label %143, !dbg !1617

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1617
  call void @llvm.dbg.value(metadata i64 %144, metadata !1477, metadata !DIExpression()), !dbg !1544
  %145 = icmp ugt i64 %139, %144, !dbg !1618
  br i1 %145, label %153, label %146, !dbg !1619

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1620
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1621
  %149 = icmp ne i32 %148, 0, !dbg !1622
  %150 = or i1 %149, %109, !dbg !1623
  %151 = xor i1 %149, true, !dbg !1623
  %152 = zext i1 %151 to i8, !dbg !1623
  br i1 %150, label %153, label %646, !dbg !1623

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1611
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1611
  call void @llvm.dbg.value(metadata i8 %156, metadata !1499, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %154, metadata !1477, metadata !DIExpression()), !dbg !1544
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1624
  %158 = load i8, i8* %157, align 1, !dbg !1624, !tbaa !972
  call void @llvm.dbg.value(metadata i8 %158, metadata !1494, metadata !DIExpression()), !dbg !1611
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
  ], !dbg !1625

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1626

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1627

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1500, metadata !DIExpression()), !dbg !1611
  %162 = and i8 %126, 1, !dbg !1631
  %163 = icmp eq i8 %162, 0, !dbg !1631
  %164 = and i1 %110, %163, !dbg !1631
  br i1 %164, label %165, label %181, !dbg !1631

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1633
  br i1 %166, label %167, label %169, !dbg !1637

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1633
  store i8 39, i8* %168, align 1, !dbg !1633, !tbaa !972
  br label %169, !dbg !1633

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %170, metadata !1484, metadata !DIExpression()), !dbg !1544
  %171 = icmp ult i64 %170, %129, !dbg !1638
  br i1 %171, label %172, label %174, !dbg !1641

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1638
  store i8 36, i8* %173, align 1, !dbg !1638, !tbaa !972
  br label %174, !dbg !1638

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %175, metadata !1484, metadata !DIExpression()), !dbg !1544
  %176 = icmp ult i64 %175, %129, !dbg !1642
  br i1 %176, label %177, label %179, !dbg !1645

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1642
  store i8 39, i8* %178, align 1, !dbg !1642, !tbaa !972
  br label %179, !dbg !1642

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %180, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1491, metadata !DIExpression()), !dbg !1544
  br label %181, !dbg !1646

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1544
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %183, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %182, metadata !1484, metadata !DIExpression()), !dbg !1544
  %184 = icmp ult i64 %182, %129, !dbg !1647
  br i1 %184, label %185, label %187, !dbg !1650

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1647
  store i8 92, i8* %186, align 1, !dbg !1647, !tbaa !972
  br label %187, !dbg !1647

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %188, metadata !1484, metadata !DIExpression()), !dbg !1544
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1651
  br i1 %191, label %192, label %473, !dbg !1651

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1653
  %194 = load i8, i8* %193, align 1, !dbg !1653, !tbaa !972
  %195 = add i8 %194, -48, !dbg !1654
  %196 = icmp ult i8 %195, 10, !dbg !1654
  br i1 %196, label %197, label %473, !dbg !1654

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1655
  br i1 %198, label %199, label %201, !dbg !1659

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1655
  store i8 48, i8* %200, align 1, !dbg !1655, !tbaa !972
  br label %201, !dbg !1655

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %202, metadata !1484, metadata !DIExpression()), !dbg !1544
  %203 = icmp ult i64 %202, %129, !dbg !1660
  br i1 %203, label %204, label %206, !dbg !1663

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1660
  store i8 48, i8* %205, align 1, !dbg !1660, !tbaa !972
  br label %206, !dbg !1660

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %207, metadata !1484, metadata !DIExpression()), !dbg !1544
  br label %473, !dbg !1664

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1665

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1666

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1667

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1669
  br i1 %214, label %215, label %473, !dbg !1669

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1671
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1672
  %218 = load i8, i8* %217, align 1, !dbg !1672, !tbaa !972
  %219 = icmp eq i8 %218, 63, !dbg !1673
  br i1 %219, label %220, label %473, !dbg !1674

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1675
  %222 = load i8, i8* %221, align 1, !dbg !1675, !tbaa !972
  %223 = sext i8 %222 to i32, !dbg !1675
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
  ], !dbg !1676

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1677

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 undef, metadata !1483, metadata !DIExpression()), !dbg !1544
  %226 = icmp ult i64 %123, %129, !dbg !1679
  br i1 %226, label %227, label %229, !dbg !1682

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1679
  store i8 63, i8* %228, align 1, !dbg !1679, !tbaa !972
  br label %229, !dbg !1679

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %230, metadata !1484, metadata !DIExpression()), !dbg !1544
  %231 = icmp ult i64 %230, %129, !dbg !1683
  br i1 %231, label %232, label %234, !dbg !1686

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1683
  store i8 34, i8* %233, align 1, !dbg !1683, !tbaa !972
  br label %234, !dbg !1683

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %235, metadata !1484, metadata !DIExpression()), !dbg !1544
  %236 = icmp ult i64 %235, %129, !dbg !1687
  br i1 %236, label %237, label %239, !dbg !1690

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1687
  store i8 34, i8* %238, align 1, !dbg !1687, !tbaa !972
  br label %239, !dbg !1687

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %240, metadata !1484, metadata !DIExpression()), !dbg !1544
  %241 = icmp ult i64 %240, %129, !dbg !1691
  br i1 %241, label %242, label %244, !dbg !1694

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1691
  store i8 63, i8* %243, align 1, !dbg !1691, !tbaa !972
  br label %244, !dbg !1691

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %245, metadata !1484, metadata !DIExpression()), !dbg !1544
  br label %473, !dbg !1695

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1498, metadata !DIExpression()), !dbg !1611
  br label %256, !dbg !1696

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1498, metadata !DIExpression()), !dbg !1611
  br label %256, !dbg !1697

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1498, metadata !DIExpression()), !dbg !1611
  br label %254, !dbg !1698

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1498, metadata !DIExpression()), !dbg !1611
  br label %254, !dbg !1699

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1498, metadata !DIExpression()), !dbg !1611
  br label %256, !dbg !1700

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1498, metadata !DIExpression()), !dbg !1611
  br i1 %110, label %252, label %253, !dbg !1701

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1702

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1705

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1707
  call void @llvm.dbg.value(metadata i8 %255, metadata !1498, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.label(metadata !1539), !dbg !1708
  br i1 %111, label %256, label %631, !dbg !1709

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1707
  call void @llvm.dbg.value(metadata i8 %257, metadata !1498, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.label(metadata !1540), !dbg !1711
  br i1 %102, label %495, label %473, !dbg !1712

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1713

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1714, !tbaa !972
  %261 = icmp eq i8 %260, 0, !dbg !1716
  br i1 %261, label %262, label %473, !dbg !1717

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1718
  br i1 %263, label %264, label %473, !dbg !1720

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1501, metadata !DIExpression()), !dbg !1611
  br label %265, !dbg !1721

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1611
  call void @llvm.dbg.value(metadata i8 %266, metadata !1501, metadata !DIExpression()), !dbg !1611
  br i1 %111, label %473, label %631, !dbg !1722

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1501, metadata !DIExpression()), !dbg !1611
  br i1 %110, label %268, label %473, !dbg !1724

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1725

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1728
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1730
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1730
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %274, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %273, metadata !1485, metadata !DIExpression()), !dbg !1544
  %275 = icmp ult i64 %123, %274, !dbg !1731
  br i1 %275, label %276, label %278, !dbg !1734

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1731
  store i8 39, i8* %277, align 1, !dbg !1731, !tbaa !972
  br label %278, !dbg !1731

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %279, metadata !1484, metadata !DIExpression()), !dbg !1544
  %280 = icmp ult i64 %279, %274, !dbg !1735
  br i1 %280, label %281, label %283, !dbg !1738

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1735
  store i8 92, i8* %282, align 1, !dbg !1735, !tbaa !972
  br label %283, !dbg !1735

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %284, metadata !1484, metadata !DIExpression()), !dbg !1544
  %285 = icmp ult i64 %284, %274, !dbg !1739
  br i1 %285, label %286, label %288, !dbg !1742

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1739
  store i8 39, i8* %287, align 1, !dbg !1739, !tbaa !972
  br label %288, !dbg !1739

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %289, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1491, metadata !DIExpression()), !dbg !1544
  br label %473, !dbg !1743

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1744

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1502, metadata !DIExpression()), !dbg !1745
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !1746
  %293 = load i16*, i16** %292, align 8, !dbg !1746, !tbaa !605
  %294 = zext i8 %158 to i64, !dbg !1746
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1746
  %296 = load i16, i16* %295, align 2, !dbg !1746, !tbaa !1748
  %297 = lshr i16 %296, 14, !dbg !1750
  %298 = trunc i16 %297 to i8, !dbg !1750
  %299 = and i8 %298, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i8 %354, metadata !1505, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %355, metadata !1502, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %306, metadata !1477, metadata !DIExpression()), !dbg !1544
  %300 = icmp eq i8 %299, 0, !dbg !1751
  call void @llvm.dbg.value(metadata i1 %357, metadata !1501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1611
  br label %359, !dbg !1752

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1753
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1506, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8* %23, metadata !1755, metadata !DIExpression()) #25, !dbg !1763
  call void @llvm.dbg.value(metadata i32 0, metadata !1761, metadata !DIExpression()) #25, !dbg !1763
  call void @llvm.dbg.value(metadata i64 8, metadata !1762, metadata !DIExpression()) #25, !dbg !1763
  store i64 0, i64* %10, align 8, !dbg !1765
  call void @llvm.dbg.value(metadata i64 0, metadata !1502, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 1, metadata !1505, metadata !DIExpression()), !dbg !1745
  %302 = icmp eq i64 %154, -1, !dbg !1766
  br i1 %302, label %303, label %305, !dbg !1768

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %304, metadata !1477, metadata !DIExpression()), !dbg !1544
  br label %305, !dbg !1770

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1611
  call void @llvm.dbg.value(metadata i64 %306, metadata !1477, metadata !DIExpression()), !dbg !1544
  br label %307, !dbg !1771

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1772
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1773
  call void @llvm.dbg.value(metadata i8 %309, metadata !1505, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %308, metadata !1502, metadata !DIExpression()), !dbg !1745
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1774
  %310 = add i64 %308, %122, !dbg !1775
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1776
  %312 = sub i64 %306, %310, !dbg !1777
  call void @llvm.dbg.value(metadata i32* %12, metadata !1524, metadata !DIExpression(DW_OP_deref)), !dbg !1778
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %313, metadata !1527, metadata !DIExpression()), !dbg !1778
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1780

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1502, metadata !DIExpression()), !dbg !1745
  %315 = icmp ugt i64 %306, %310, !dbg !1781
  br i1 %315, label %316, label %341, !dbg !1783

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1784
  br label %318, !dbg !1784

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1502, metadata !DIExpression()), !dbg !1745
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1785
  %322 = load i8, i8* %321, align 1, !dbg !1785, !tbaa !972
  %323 = icmp eq i8 %322, 0, !dbg !1783
  br i1 %323, label %341, label %324, !dbg !1784

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1786
  call void @llvm.dbg.value(metadata i64 %325, metadata !1502, metadata !DIExpression()), !dbg !1745
  %326 = add i64 %325, %122, !dbg !1787
  %327 = icmp ult i64 %326, %306, !dbg !1781
  br i1 %327, label %318, label %341, !dbg !1783, !llvm.loop !1788

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1789
  call void @llvm.dbg.value(metadata i64 1, metadata !1528, metadata !DIExpression()), !dbg !1790
  br i1 %330, label %331, label %344, !dbg !1789

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1528, metadata !DIExpression()), !dbg !1790
  %333 = add i64 %332, %310, !dbg !1791
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1794
  %335 = load i8, i8* %334, align 1, !dbg !1794, !tbaa !972
  %336 = sext i8 %335 to i32, !dbg !1794
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1795

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %338, metadata !1528, metadata !DIExpression()), !dbg !1790
  %339 = icmp eq i64 %338, %313, !dbg !1797
  br i1 %339, label %344, label %331, !dbg !1798, !llvm.loop !1799

340:                                              ; preds = %307
  br label %341, !dbg !1801

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1505, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 undef, metadata !1502, metadata !DIExpression()), !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1801
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1802, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %345, metadata !1524, metadata !DIExpression()), !dbg !1778
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !1804
  %347 = icmp eq i32 %346, 0, !dbg !1804
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1805
  call void @llvm.dbg.value(metadata i8 %348, metadata !1505, metadata !DIExpression()), !dbg !1745
  %349 = add i64 %313, %308, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %349, metadata !1502, metadata !DIExpression()), !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1801
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1807
  %351 = icmp eq i32 %350, 0, !dbg !1808
  br i1 %351, label %307, label %353, !dbg !1809, !llvm.loop !1810

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1505, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 undef, metadata !1502, metadata !DIExpression()), !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1801
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1812
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1812
  call void @llvm.dbg.value(metadata i8 %354, metadata !1505, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %355, metadata !1502, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %306, metadata !1477, metadata !DIExpression()), !dbg !1544
  %356 = and i8 %354, 1, !dbg !1751
  %357 = icmp eq i8 %356, 0, !dbg !1751
  call void @llvm.dbg.value(metadata i1 %357, metadata !1501, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1611
  %358 = icmp ugt i64 %355, 1, !dbg !1813
  br i1 %358, label %367, label %359, !dbg !1752

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1814
  br i1 %364, label %367, label %365, !dbg !1814

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %472, metadata !1501, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %441, metadata !1500, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %440, metadata !1499, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %439, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %438, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %371, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %437, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %375, metadata !1483, metadata !DIExpression()), !dbg !1544
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %372, metadata !1535, metadata !DIExpression()), !dbg !1816
  %373 = and i1 %102, %368
  br label %374, !dbg !1817

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1604
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1544
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1553
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1611
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1611
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %380, metadata !1500, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %379, metadata !1499, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %378, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %377, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %376, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %375, metadata !1483, metadata !DIExpression()), !dbg !1544
  br i1 %373, label %381, label %427, !dbg !1819

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1824

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1500, metadata !DIExpression()), !dbg !1611
  %383 = and i8 %377, 1, !dbg !1827
  %384 = icmp eq i8 %383, 0, !dbg !1827
  %385 = and i1 %110, %384, !dbg !1827
  br i1 %385, label %386, label %402, !dbg !1827

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1829
  br i1 %387, label %388, label %390, !dbg !1833

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1829
  store i8 39, i8* %389, align 1, !dbg !1829, !tbaa !972
  br label %390, !dbg !1829

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %391, metadata !1484, metadata !DIExpression()), !dbg !1544
  %392 = icmp ult i64 %391, %129, !dbg !1834
  br i1 %392, label %393, label %395, !dbg !1837

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1834
  store i8 36, i8* %394, align 1, !dbg !1834, !tbaa !972
  br label %395, !dbg !1834

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %396, metadata !1484, metadata !DIExpression()), !dbg !1544
  %397 = icmp ult i64 %396, %129, !dbg !1838
  br i1 %397, label %398, label %400, !dbg !1841

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1838
  store i8 39, i8* %399, align 1, !dbg !1838, !tbaa !972
  br label %400, !dbg !1838

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %401, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1491, metadata !DIExpression()), !dbg !1544
  br label %402, !dbg !1842

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1544
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %404, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %403, metadata !1484, metadata !DIExpression()), !dbg !1544
  %405 = icmp ult i64 %403, %129, !dbg !1843
  br i1 %405, label %406, label %408, !dbg !1846

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1843
  store i8 92, i8* %407, align 1, !dbg !1843, !tbaa !972
  br label %408, !dbg !1843

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %409, metadata !1484, metadata !DIExpression()), !dbg !1544
  %410 = icmp ult i64 %409, %129, !dbg !1847
  br i1 %410, label %411, label %415, !dbg !1850

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1847
  %413 = or i8 %412, 48, !dbg !1847
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1847
  store i8 %413, i8* %414, align 1, !dbg !1847, !tbaa !972
  br label %415, !dbg !1847

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %416, metadata !1484, metadata !DIExpression()), !dbg !1544
  %417 = icmp ult i64 %416, %129, !dbg !1851
  br i1 %417, label %418, label %423, !dbg !1854

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1851
  %420 = and i8 %419, 7, !dbg !1851
  %421 = or i8 %420, 48, !dbg !1851
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1851
  store i8 %421, i8* %422, align 1, !dbg !1851, !tbaa !972
  br label %423, !dbg !1851

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %424, metadata !1484, metadata !DIExpression()), !dbg !1544
  %425 = and i8 %378, 7, !dbg !1855
  %426 = or i8 %425, 48, !dbg !1856
  call void @llvm.dbg.value(metadata i8 %426, metadata !1494, metadata !DIExpression()), !dbg !1611
  br label %436, !dbg !1857

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1858
  %429 = icmp eq i8 %428, 0, !dbg !1858
  br i1 %429, label %436, label %430, !dbg !1860

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1861
  br i1 %431, label %432, label %434, !dbg !1865

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1861
  store i8 92, i8* %433, align 1, !dbg !1861, !tbaa !972
  br label %434, !dbg !1861

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %435, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1499, metadata !DIExpression()), !dbg !1611
  br label %436, !dbg !1866

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1544
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1553
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1611
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1611
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1611
  call void @llvm.dbg.value(metadata i8 %441, metadata !1500, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %440, metadata !1499, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %439, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %438, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %437, metadata !1484, metadata !DIExpression()), !dbg !1544
  %442 = add i64 %375, 1, !dbg !1867
  %443 = icmp ugt i64 %372, %442, !dbg !1869
  br i1 %443, label %444, label %471, !dbg !1870

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1871
  %446 = icmp ne i8 %445, 0, !dbg !1871
  %447 = and i8 %441, 1, !dbg !1871
  %448 = icmp eq i8 %447, 0, !dbg !1871
  %449 = and i1 %446, %448, !dbg !1871
  br i1 %449, label %450, label %461, !dbg !1871

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1874
  br i1 %451, label %452, label %454, !dbg !1878

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1874
  store i8 39, i8* %453, align 1, !dbg !1874, !tbaa !972
  br label %454, !dbg !1874

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1878
  call void @llvm.dbg.value(metadata i64 %455, metadata !1484, metadata !DIExpression()), !dbg !1544
  %456 = icmp ult i64 %455, %129, !dbg !1879
  br i1 %456, label %457, label %459, !dbg !1882

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1879
  store i8 39, i8* %458, align 1, !dbg !1879, !tbaa !972
  br label %459, !dbg !1879

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %460, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1491, metadata !DIExpression()), !dbg !1544
  br label %461, !dbg !1883

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1884
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %463, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %462, metadata !1484, metadata !DIExpression()), !dbg !1544
  %464 = icmp ult i64 %462, %129, !dbg !1885
  br i1 %464, label %465, label %467, !dbg !1888

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1885
  store i8 %439, i8* %466, align 1, !dbg !1885, !tbaa !972
  br label %467, !dbg !1885

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %468, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %442, metadata !1483, metadata !DIExpression()), !dbg !1544
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1889
  %470 = load i8, i8* %469, align 1, !dbg !1889, !tbaa !972
  call void @llvm.dbg.value(metadata i8 %470, metadata !1494, metadata !DIExpression()), !dbg !1611
  br label %374, !dbg !1890, !llvm.loop !1891

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1611
  call void @llvm.dbg.value(metadata i8 %472, metadata !1501, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %441, metadata !1500, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %440, metadata !1499, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %439, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %438, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %371, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %437, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %375, metadata !1483, metadata !DIExpression()), !dbg !1544
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1604
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1544
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1549
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1894
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1544
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1544
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1611
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1611
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1611
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %482, metadata !1501, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %481, metadata !1500, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %156, metadata !1499, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %480, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %479, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %478, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %477, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %476, metadata !1485, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %475, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %474, metadata !1483, metadata !DIExpression()), !dbg !1544
  br i1 %116, label %494, label %484, !dbg !1895

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1897
  %486 = zext i8 %485 to i64, !dbg !1897
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1898
  %488 = load i32, i32* %487, align 4, !dbg !1898, !tbaa !793
  %489 = and i8 %480, 31, !dbg !1899
  %490 = zext i8 %489 to i32, !dbg !1899
  %491 = shl nuw i32 1, %490, !dbg !1900
  %492 = and i32 %488, %491, !dbg !1900
  %493 = icmp eq i32 %492, 0, !dbg !1900
  br i1 %493, label %494, label %495, !dbg !1901

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1902

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1903
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1544
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1549
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1894
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1553
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1554
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1611
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1611
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %503, metadata !1501, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %502, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %501, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %500, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %499, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %498, metadata !1485, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %497, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %496, metadata !1483, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.label(metadata !1541), !dbg !1904
  br i1 %109, label %505, label %635, !dbg !1905

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1500, metadata !DIExpression()), !dbg !1611
  %506 = and i8 %500, 1, !dbg !1907
  %507 = icmp eq i8 %506, 0, !dbg !1907
  %508 = and i1 %110, %507, !dbg !1907
  br i1 %508, label %509, label %525, !dbg !1907

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1909
  br i1 %510, label %511, label %513, !dbg !1913

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1909
  store i8 39, i8* %512, align 1, !dbg !1909, !tbaa !972
  br label %513, !dbg !1909

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %514, metadata !1484, metadata !DIExpression()), !dbg !1544
  %515 = icmp ult i64 %514, %504, !dbg !1914
  br i1 %515, label %516, label %518, !dbg !1917

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1914
  store i8 36, i8* %517, align 1, !dbg !1914, !tbaa !972
  br label %518, !dbg !1914

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %519, metadata !1484, metadata !DIExpression()), !dbg !1544
  %520 = icmp ult i64 %519, %504, !dbg !1918
  br i1 %520, label %521, label %523, !dbg !1921

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1918
  store i8 39, i8* %522, align 1, !dbg !1918, !tbaa !972
  br label %523, !dbg !1918

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %524, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1491, metadata !DIExpression()), !dbg !1544
  br label %525, !dbg !1922

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1611
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %527, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %526, metadata !1484, metadata !DIExpression()), !dbg !1544
  %528 = icmp ult i64 %526, %504, !dbg !1923
  br i1 %528, label %529, label %531, !dbg !1926

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1923
  store i8 92, i8* %530, align 1, !dbg !1923, !tbaa !972
  br label %531, !dbg !1923

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %543, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %542, metadata !1501, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %541, metadata !1500, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %540, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %539, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %538, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %537, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %536, metadata !1485, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %535, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %534, metadata !1483, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.label(metadata !1542), !dbg !1927
  br label %560, !dbg !1928

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1903
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1544
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1549
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1894
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1553
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1554
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1931
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1611
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1611
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %542, metadata !1501, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %541, metadata !1500, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %540, metadata !1494, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %539, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %538, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %537, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %536, metadata !1485, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %535, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %534, metadata !1483, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.label(metadata !1542), !dbg !1927
  %544 = and i8 %538, 1, !dbg !1928
  %545 = icmp ne i8 %544, 0, !dbg !1928
  %546 = and i8 %541, 1, !dbg !1928
  %547 = icmp eq i8 %546, 0, !dbg !1928
  %548 = and i1 %545, %547, !dbg !1928
  br i1 %548, label %549, label %560, !dbg !1928

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1932
  br i1 %550, label %551, label %553, !dbg !1936

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1932
  store i8 39, i8* %552, align 1, !dbg !1932, !tbaa !972
  br label %553, !dbg !1932

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %554, metadata !1484, metadata !DIExpression()), !dbg !1544
  %555 = icmp ult i64 %554, %543, !dbg !1937
  br i1 %555, label %556, label %558, !dbg !1940

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1937
  store i8 39, i8* %557, align 1, !dbg !1937, !tbaa !972
  br label %558, !dbg !1937

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %559, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1491, metadata !DIExpression()), !dbg !1544
  br label %560, !dbg !1941

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1611
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8 %569, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %568, metadata !1484, metadata !DIExpression()), !dbg !1544
  %570 = icmp ult i64 %568, %561, !dbg !1942
  br i1 %570, label %571, label %573, !dbg !1945

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1942
  store i8 %563, i8* %572, align 1, !dbg !1942, !tbaa !972
  br label %573, !dbg !1942

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %574, metadata !1484, metadata !DIExpression()), !dbg !1544
  %575 = icmp eq i8 %562, 0, !dbg !1946
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1948
  call void @llvm.dbg.value(metadata i8 %576, metadata !1493, metadata !DIExpression()), !dbg !1544
  br label %577, !dbg !1949

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1903
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1544
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1549
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1894
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1553
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1544
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1555
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %584, metadata !1493, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %583, metadata !1492, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 %582, metadata !1491, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %581, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %580, metadata !1485, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %579, metadata !1484, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %578, metadata !1483, metadata !DIExpression()), !dbg !1544
  %586 = add i64 %578, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %586, metadata !1483, metadata !DIExpression()), !dbg !1544
  br label %121, !dbg !1951, !llvm.loop !1952

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1954
  %590 = and i1 %110, %589, !dbg !1956
  %591 = xor i1 %590, true, !dbg !1956
  %592 = or i1 %109, %591, !dbg !1956
  br i1 %592, label %593, label %635, !dbg !1956

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1957
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1957
  br i1 %597, label %598, label %607, !dbg !1957

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1959
  %600 = icmp eq i8 %599, 0, !dbg !1959
  br i1 %600, label %603, label %601, !dbg !1962

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1963
  br label %652, !dbg !1964

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1965
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1967
  br i1 %606, label %26, label %607, !dbg !1967

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1968
  %610 = and i1 %609, %608, !dbg !1970
  br i1 %610, label %611, label %626, !dbg !1970

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1486, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1484, metadata !DIExpression()), !dbg !1544
  %612 = load i8, i8* %97, align 1, !dbg !1971, !tbaa !972
  %613 = icmp eq i8 %612, 0, !dbg !1974
  br i1 %613, label %626, label %614, !dbg !1974

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1486, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %617, metadata !1484, metadata !DIExpression()), !dbg !1544
  %618 = icmp ult i64 %617, %129, !dbg !1975
  br i1 %618, label %619, label %621, !dbg !1978

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1975
  store i8 %615, i8* %620, align 1, !dbg !1975, !tbaa !972
  br label %621, !dbg !1975

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %622, metadata !1484, metadata !DIExpression()), !dbg !1544
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1979
  call void @llvm.dbg.value(metadata i8* %623, metadata !1486, metadata !DIExpression()), !dbg !1544
  %624 = load i8, i8* %623, align 1, !dbg !1971, !tbaa !972
  %625 = icmp eq i8 %624, 0, !dbg !1974
  br i1 %625, label %626, label %614, !dbg !1974, !llvm.loop !1980

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1586
  call void @llvm.dbg.value(metadata i64 %627, metadata !1484, metadata !DIExpression()), !dbg !1544
  %628 = icmp ult i64 %627, %129, !dbg !1982
  br i1 %628, label %629, label %652, !dbg !1984

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1985
  store i8 0, i8* %630, align 1, !dbg !1986, !tbaa !972
  br label %652, !dbg !1985

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %637, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.label(metadata !1543), !dbg !1987
  %633 = icmp eq i8 %101, 0, !dbg !1988
  %634 = select i1 %633, i32 2, i32 4, !dbg !1988
  br label %642, !dbg !1988

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1475, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %637, metadata !1477, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.label(metadata !1543), !dbg !1987
  %639 = icmp eq i32 %93, 2, !dbg !1990
  %640 = icmp eq i8 %636, 0, !dbg !1988
  %641 = select i1 %640, i32 2, i32 4, !dbg !1988
  br i1 %639, label %642, label %646, !dbg !1988

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1988

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1478, metadata !DIExpression()), !dbg !1544
  %650 = and i32 %5, -3, !dbg !1991
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1992
  br label %652, !dbg !1993

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1994
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1995 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1999, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %1, metadata !2000, metadata !DIExpression()), !dbg !2003
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !2004
  call void @llvm.dbg.value(metadata i8* %3, metadata !2001, metadata !DIExpression()), !dbg !2003
  %4 = icmp eq i8* %3, %0, !dbg !2005
  br i1 %4, label %5, label %72, !dbg !2007

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !2008
  call void @llvm.dbg.value(metadata i8* %6, metadata !2002, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8* %6, metadata !2009, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* undef, metadata !2015, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 85, metadata !2016, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 84, metadata !2017, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 70, metadata !2018, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 45, metadata !2019, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 56, metadata !2020, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2025
  %7 = load i8, i8* %6, align 1, !dbg !2028, !tbaa !972
  %8 = and i8 %7, -33, !dbg !2028
  %9 = sext i8 %8 to i32, !dbg !2028
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2028

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2030, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8* undef, metadata !2035, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 84, metadata !2036, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 70, metadata !2037, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 45, metadata !2038, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 56, metadata !2039, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2044
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2048
  %12 = load i8, i8* %11, align 1, !dbg !2048, !tbaa !972
  %13 = and i8 %12, -33, !dbg !2048
  %14 = icmp eq i8 %13, 84, !dbg !2048
  br i1 %14, label %15, label %69, !dbg !2048

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2050, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* undef, metadata !2055, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 70, metadata !2056, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 45, metadata !2057, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 56, metadata !2058, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2063
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2067
  %17 = load i8, i8* %16, align 1, !dbg !2067, !tbaa !972
  %18 = and i8 %17, -33, !dbg !2067
  %19 = icmp eq i8 %18, 70, !dbg !2067
  br i1 %19, label %20, label %69, !dbg !2067

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2069, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* undef, metadata !2074, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 45, metadata !2075, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 56, metadata !2076, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !2080, metadata !DIExpression()), !dbg !2081
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2085
  %22 = load i8, i8* %21, align 1, !dbg !2085, !tbaa !972
  %23 = icmp eq i8 %22, 45, !dbg !2085
  br i1 %23, label %24, label %69, !dbg !2087

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2088, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8* undef, metadata !2093, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 56, metadata !2094, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !2096, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !2097, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !2098, metadata !DIExpression()), !dbg !2099
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2103
  %26 = load i8, i8* %25, align 1, !dbg !2103, !tbaa !972
  %27 = icmp eq i8 %26, 56, !dbg !2103
  br i1 %27, label %28, label %69, !dbg !2105

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2106, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8* undef, metadata !2111, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2112, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2116
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2120
  %30 = load i8, i8* %29, align 1, !dbg !2120, !tbaa !972
  %31 = icmp eq i8 %30, 0, !dbg !2120
  br i1 %31, label %32, label %69, !dbg !2122

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2123, !tbaa !972
  %34 = icmp eq i8 %33, 96, !dbg !2124
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.71, i64 0, i64 0), !dbg !2123
  br label %72, !dbg !2125

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2030, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8* undef, metadata !2035, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 66, metadata !2036, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 49, metadata !2037, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 56, metadata !2038, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 48, metadata !2039, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 51, metadata !2040, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 48, metadata !2041, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2126
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2130
  %38 = load i8, i8* %37, align 1, !dbg !2130, !tbaa !972
  %39 = and i8 %38, -33, !dbg !2130
  %40 = icmp eq i8 %39, 66, !dbg !2130
  br i1 %40, label %41, label %69, !dbg !2130

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2050, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8* undef, metadata !2055, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 49, metadata !2056, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 56, metadata !2057, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 48, metadata !2058, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 51, metadata !2059, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 48, metadata !2060, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2131
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2133
  %43 = load i8, i8* %42, align 1, !dbg !2133, !tbaa !972
  %44 = icmp eq i8 %43, 49, !dbg !2133
  br i1 %44, label %45, label %69, !dbg !2134

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2069, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8* undef, metadata !2074, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 56, metadata !2075, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 48, metadata !2076, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 51, metadata !2077, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 48, metadata !2078, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2080, metadata !DIExpression()), !dbg !2135
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2137
  %47 = load i8, i8* %46, align 1, !dbg !2137, !tbaa !972
  %48 = icmp eq i8 %47, 56, !dbg !2137
  br i1 %48, label %49, label %69, !dbg !2138

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2088, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* undef, metadata !2093, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 48, metadata !2094, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 51, metadata !2095, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 48, metadata !2096, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2097, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2098, metadata !DIExpression()), !dbg !2139
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2141
  %51 = load i8, i8* %50, align 1, !dbg !2141, !tbaa !972
  %52 = icmp eq i8 %51, 48, !dbg !2141
  br i1 %52, label %53, label %69, !dbg !2142

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2106, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* undef, metadata !2111, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 51, metadata !2112, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 48, metadata !2113, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2143
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2145
  %55 = load i8, i8* %54, align 1, !dbg !2145, !tbaa !972
  %56 = icmp eq i8 %55, 51, !dbg !2145
  br i1 %56, label %57, label %69, !dbg !2146

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2147, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8* undef, metadata !2152, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 48, metadata !2153, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 0, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 0, metadata !2155, metadata !DIExpression()), !dbg !2156
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2160
  %59 = load i8, i8* %58, align 1, !dbg !2160, !tbaa !972
  %60 = icmp eq i8 %59, 48, !dbg !2160
  br i1 %60, label %61, label %69, !dbg !2162

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2163, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8* undef, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2171
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2175
  %63 = load i8, i8* %62, align 1, !dbg !2175, !tbaa !972
  %64 = icmp eq i8 %63, 0, !dbg !2175
  br i1 %64, label %65, label %69, !dbg !2177

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2178, !tbaa !972
  %67 = icmp eq i8 %66, 96, !dbg !2179
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.73, i64 0, i64 0), !dbg !2178
  br label %72, !dbg !2180

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2181
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), !dbg !2182
  br label %72, !dbg !2183

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2003
  ret i8* %73, !dbg !2184
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2185 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2189 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %1, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2201, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %0, metadata !2203, metadata !DIExpression()) #25, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %1, metadata !2208, metadata !DIExpression()) #25, !dbg !2216
  call void @llvm.dbg.value(metadata i64* null, metadata !2209, metadata !DIExpression()) #25, !dbg !2216
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2210, metadata !DIExpression()) #25, !dbg !2216
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2218
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2211, metadata !DIExpression()) #25, !dbg !2216
  %6 = tail call i32* @__errno_location() #29, !dbg !2219
  %7 = load i32, i32* %6, align 4, !dbg !2219, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %7, metadata !2212, metadata !DIExpression()) #25, !dbg !2216
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2220
  %9 = load i32, i32* %8, align 4, !dbg !2220, !tbaa !1418
  %10 = or i32 %9, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i32 %10, metadata !2213, metadata !DIExpression()) #25, !dbg !2216
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2222
  %12 = load i32, i32* %11, align 8, !dbg !2222, !tbaa !1366
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2223
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2224
  %15 = load i8*, i8** %14, align 8, !dbg !2224, !tbaa !1440
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2225
  %17 = load i8*, i8** %16, align 8, !dbg !2225, !tbaa !1443
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !2226
  %19 = add i64 %18, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %19, metadata !2214, metadata !DIExpression()) #25, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %19, metadata !2228, metadata !DIExpression()) #25, !dbg !2233
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !2235
  call void @llvm.dbg.value(metadata i8* %20, metadata !2215, metadata !DIExpression()) #25, !dbg !2216
  %21 = load i32, i32* %11, align 8, !dbg !2236, !tbaa !1366
  %22 = load i8*, i8** %14, align 8, !dbg !2237, !tbaa !1440
  %23 = load i8*, i8** %16, align 8, !dbg !2238, !tbaa !1443
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !2239
  store i32 %7, i32* %6, align 4, !dbg !2240, !tbaa !793
  ret i8* %20, !dbg !2241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2203, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %1, metadata !2208, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64* %2, metadata !2209, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2210, metadata !DIExpression()), !dbg !2242
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2243
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2243
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2211, metadata !DIExpression()), !dbg !2242
  %7 = tail call i32* @__errno_location() #29, !dbg !2244
  %8 = load i32, i32* %7, align 4, !dbg !2244, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %8, metadata !2212, metadata !DIExpression()), !dbg !2242
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2245
  %10 = load i32, i32* %9, align 4, !dbg !2245, !tbaa !1418
  %11 = icmp eq i64* %2, null, !dbg !2246
  %12 = zext i1 %11 to i32, !dbg !2246
  %13 = or i32 %10, %12, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %13, metadata !2213, metadata !DIExpression()), !dbg !2242
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2248
  %15 = load i32, i32* %14, align 8, !dbg !2248, !tbaa !1366
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2249
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2250
  %18 = load i8*, i8** %17, align 8, !dbg !2250, !tbaa !1440
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2251
  %20 = load i8*, i8** %19, align 8, !dbg !2251, !tbaa !1443
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2252
  %22 = add i64 %21, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %22, metadata !2214, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %22, metadata !2228, metadata !DIExpression()) #25, !dbg !2254
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !2256
  call void @llvm.dbg.value(metadata i8* %23, metadata !2215, metadata !DIExpression()), !dbg !2242
  %24 = load i32, i32* %14, align 8, !dbg !2257, !tbaa !1366
  %25 = load i8*, i8** %17, align 8, !dbg !2258, !tbaa !1440
  %26 = load i8*, i8** %19, align 8, !dbg !2259, !tbaa !1443
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2260
  store i32 %8, i32* %7, align 4, !dbg !2261, !tbaa !793
  br i1 %11, label %29, label %28, !dbg !2262

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2263, !tbaa !2265
  br label %29, !dbg !2266

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2267
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2268 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2272, !tbaa !605
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 1, metadata !2271, metadata !DIExpression()), !dbg !2273
  %2 = load i32, i32* @nslots, align 4, !dbg !2274, !tbaa !793
  %3 = icmp sgt i32 %2, 1, !dbg !2277
  br i1 %3, label %4, label %12, !dbg !2278

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2277
  br label %6, !dbg !2278

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2271, metadata !DIExpression()), !dbg !2273
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2279
  %9 = load i8*, i8** %8, align 8, !dbg !2279, !tbaa !2280
  tail call void @free(i8* %9) #25, !dbg !2282
  %10 = add nuw nsw i64 %7, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %10, metadata !2271, metadata !DIExpression()), !dbg !2273
  %11 = icmp eq i64 %10, %5, !dbg !2277
  br i1 %11, label %12, label %6, !dbg !2278, !llvm.loop !2284

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2286
  %14 = load i8*, i8** %13, align 8, !dbg !2286, !tbaa !2280
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2288
  br i1 %15, label %17, label %16, !dbg !2289

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !2290
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2292, !tbaa !2293
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2294, !tbaa !2280
  br label %17, !dbg !2295

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2296
  br i1 %18, label %21, label %19, !dbg !2298

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2299
  tail call void @free(i8* %20) #25, !dbg !2301
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2302, !tbaa !605
  br label %21, !dbg !2303

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2304, !tbaa !793
  ret void, !dbg !2305
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2306 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i8* %1, metadata !2309, metadata !DIExpression()), !dbg !2310
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2311
  ret i8* %3, !dbg !2312
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2313 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2317, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %1, metadata !2318, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %2, metadata !2319, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2320, metadata !DIExpression()), !dbg !2332
  %5 = tail call i32* @__errno_location() #29, !dbg !2333
  %6 = load i32, i32* %5, align 4, !dbg !2333, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %6, metadata !2321, metadata !DIExpression()), !dbg !2332
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2334, !tbaa !605
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2322, metadata !DIExpression()), !dbg !2332
  %8 = icmp slt i32 %0, 0, !dbg !2335
  br i1 %8, label %9, label %10, !dbg !2337

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2338
  unreachable, !dbg !2338

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2339, !tbaa !793
  %12 = icmp sgt i32 %11, %0, !dbg !2340
  br i1 %12, label %34, label %13, !dbg !2341

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2342
  call void @llvm.dbg.value(metadata i1 %14, metadata !2323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2343
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2326, metadata !DIExpression()), !dbg !2343
  %15 = icmp eq i32 %0, 2147483647, !dbg !2344
  br i1 %15, label %16, label %17, !dbg !2346

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2347
  unreachable, !dbg !2347

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2348
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2348
  %20 = add nuw nsw i32 %0, 1, !dbg !2349
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2350
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !2351
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2322, metadata !DIExpression()), !dbg !2332
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2352, !tbaa !605
  br i1 %14, label %25, label %26, !dbg !2353

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2354, !tbaa.struct !2356
  br label %26, !dbg !2357

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2358, !tbaa !793
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2359
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2360
  %31 = sub nsw i32 %20, %27, !dbg !2361
  %32 = sext i32 %31 to i64, !dbg !2362
  %33 = shl nsw i64 %32, 4, !dbg !2363
  call void @llvm.dbg.value(metadata i8* %30, metadata !1755, metadata !DIExpression()) #25, !dbg !2364
  call void @llvm.dbg.value(metadata i32 0, metadata !1761, metadata !DIExpression()) #25, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %33, metadata !1762, metadata !DIExpression()) #25, !dbg !2364
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2366
  store i32 %20, i32* @nslots, align 4, !dbg !2367, !tbaa !793
  br label %34, !dbg !2368

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2332
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2322, metadata !DIExpression()), !dbg !2332
  %36 = zext i32 %0 to i64, !dbg !2369
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2370
  %38 = load i64, i64* %37, align 8, !dbg !2370, !tbaa !2293
  call void @llvm.dbg.value(metadata i64 %38, metadata !2327, metadata !DIExpression()), !dbg !2371
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2372
  %40 = load i8*, i8** %39, align 8, !dbg !2372, !tbaa !2280
  call void @llvm.dbg.value(metadata i8* %40, metadata !2329, metadata !DIExpression()), !dbg !2371
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2373
  %42 = load i32, i32* %41, align 4, !dbg !2373, !tbaa !1418
  %43 = or i32 %42, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %43, metadata !2330, metadata !DIExpression()), !dbg !2371
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2375
  %45 = load i32, i32* %44, align 8, !dbg !2375, !tbaa !1366
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2376
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2377
  %48 = load i8*, i8** %47, align 8, !dbg !2377, !tbaa !1440
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2378
  %50 = load i8*, i8** %49, align 8, !dbg !2378, !tbaa !1443
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2379
  call void @llvm.dbg.value(metadata i64 %51, metadata !2331, metadata !DIExpression()), !dbg !2371
  %52 = icmp ugt i64 %38, %51, !dbg !2380
  br i1 %52, label %63, label %53, !dbg !2382

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %54, metadata !2327, metadata !DIExpression()), !dbg !2371
  store i64 %54, i64* %37, align 8, !dbg !2385, !tbaa !2293
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2386
  br i1 %55, label %57, label %56, !dbg !2388

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2389
  br label %57, !dbg !2389

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2228, metadata !DIExpression()) #25, !dbg !2390
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2392
  call void @llvm.dbg.value(metadata i8* %58, metadata !2329, metadata !DIExpression()), !dbg !2371
  store i8* %58, i8** %39, align 8, !dbg !2393, !tbaa !2280
  %59 = load i32, i32* %44, align 8, !dbg !2394, !tbaa !1366
  %60 = load i8*, i8** %47, align 8, !dbg !2395, !tbaa !1440
  %61 = load i8*, i8** %49, align 8, !dbg !2396, !tbaa !1443
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2397
  br label %63, !dbg !2398

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2371
  call void @llvm.dbg.value(metadata i8* %64, metadata !2329, metadata !DIExpression()), !dbg !2371
  store i32 %6, i32* %5, align 4, !dbg !2399, !tbaa !793
  ret i8* %64, !dbg !2400
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2401 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2405, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8* %1, metadata !2406, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %2, metadata !2407, metadata !DIExpression()), !dbg !2408
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2409
  ret i8* %4, !dbg !2410
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2413, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()) #25, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %0, metadata !2309, metadata !DIExpression()) #25, !dbg !2415
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2417
  ret i8* %2, !dbg !2418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2419 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i64 %1, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !2405, metadata !DIExpression()) #25, !dbg !2426
  call void @llvm.dbg.value(metadata i8* %0, metadata !2406, metadata !DIExpression()) #25, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %1, metadata !2407, metadata !DIExpression()) #25, !dbg !2426
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2428
  ret i8* %3, !dbg !2429
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2430 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 %1, metadata !2435, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8* %2, metadata !2436, metadata !DIExpression()), !dbg !2438
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2439
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2439
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2437, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %1, metadata !2445, metadata !DIExpression()) #25, !dbg !2451
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2450, metadata !DIExpression()) #25, !dbg !2453
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2453, !alias.scope !2441
  %6 = icmp eq i32 %1, 10, !dbg !2454
  br i1 %6, label %7, label %8, !dbg !2456

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2457, !noalias !2441
  unreachable, !dbg !2457

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2458
  store i32 %1, i32* %9, align 8, !dbg !2459, !tbaa !1366, !alias.scope !2441
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2460
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2461
  ret i8* %10, !dbg !2462
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2463 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2467, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %1, metadata !2468, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %2, metadata !2469, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %3, metadata !2470, metadata !DIExpression()), !dbg !2472
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2473
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2471, metadata !DIExpression()), !dbg !2474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %1, metadata !2445, metadata !DIExpression()) #25, !dbg !2479
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2450, metadata !DIExpression()) #25, !dbg !2481
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2481, !alias.scope !2475
  %7 = icmp eq i32 %1, 10, !dbg !2482
  br i1 %7, label %8, label %9, !dbg !2483

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2484, !noalias !2475
  unreachable, !dbg !2484

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2485
  store i32 %1, i32* %10, align 8, !dbg !2486, !tbaa !1366, !alias.scope !2475
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2488
  ret i8* %11, !dbg !2489
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2490 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8* %1, metadata !2495, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 0, metadata !2434, metadata !DIExpression()) #25, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %0, metadata !2435, metadata !DIExpression()) #25, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %1, metadata !2436, metadata !DIExpression()) #25, !dbg !2497
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2499
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2437, metadata !DIExpression()) #25, !dbg !2500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501) #25, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression()) #25, !dbg !2505
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2450, metadata !DIExpression()) #25, !dbg !2507
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2507, !alias.scope !2501
  %5 = icmp eq i32 %0, 10, !dbg !2508
  br i1 %5, label %6, label %7, !dbg !2509

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2510, !noalias !2501
  unreachable, !dbg !2510

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2511
  store i32 %0, i32* %8, align 8, !dbg !2512, !tbaa !1366, !alias.scope !2501
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2513
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2514
  ret i8* %9, !dbg !2515
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2516 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2520, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8* %1, metadata !2521, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i64 %2, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 0, metadata !2467, metadata !DIExpression()) #25, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %0, metadata !2468, metadata !DIExpression()) #25, !dbg !2524
  call void @llvm.dbg.value(metadata i8* %1, metadata !2469, metadata !DIExpression()) #25, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %2, metadata !2470, metadata !DIExpression()) #25, !dbg !2524
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2526
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2526
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2471, metadata !DIExpression()) #25, !dbg !2527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528) #25, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression()) #25, !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2450, metadata !DIExpression()) #25, !dbg !2534
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2534, !alias.scope !2528
  %6 = icmp eq i32 %0, 10, !dbg !2535
  br i1 %6, label %7, label %8, !dbg !2536

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2537, !noalias !2528
  unreachable, !dbg !2537

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2538
  store i32 %0, i32* %9, align 8, !dbg !2539, !tbaa !1366, !alias.scope !2528
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2540
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2541
  ret i8* %10, !dbg !2542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2543 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2547, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %1, metadata !2548, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 %2, metadata !2549, metadata !DIExpression()), !dbg !2551
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2552
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2552
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2554, !tbaa.struct !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1384, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 %2, metadata !1385, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i32 1, metadata !1386, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 %2, metadata !1387, metadata !DIExpression()), !dbg !2556
  %6 = lshr i8 %2, 5, !dbg !2558
  %7 = zext i8 %6 to i64, !dbg !2558
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2559
  call void @llvm.dbg.value(metadata i32* %8, metadata !1389, metadata !DIExpression()), !dbg !2556
  %9 = and i8 %2, 31, !dbg !2560
  %10 = zext i8 %9 to i32, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %10, metadata !1391, metadata !DIExpression()), !dbg !2556
  %11 = load i32, i32* %8, align 4, !dbg !2561, !tbaa !793
  %12 = lshr i32 %11, %10, !dbg !2562
  %13 = and i32 %12, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %13, metadata !1392, metadata !DIExpression()), !dbg !2556
  %14 = xor i32 %13, 1, !dbg !2564
  %15 = shl i32 %14, %10, !dbg !2565
  %16 = xor i32 %15, %11, !dbg !2566
  store i32 %16, i32* %8, align 4, !dbg !2566, !tbaa !793
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2567
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2568
  ret i8* %17, !dbg !2569
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2570 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 %1, metadata !2575, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %0, metadata !2547, metadata !DIExpression()) #25, !dbg !2577
  call void @llvm.dbg.value(metadata i64 -1, metadata !2548, metadata !DIExpression()) #25, !dbg !2577
  call void @llvm.dbg.value(metadata i8 %1, metadata !2549, metadata !DIExpression()) #25, !dbg !2577
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2579
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2579
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2550, metadata !DIExpression()) #25, !dbg !2580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2581, !tbaa.struct !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1384, metadata !DIExpression()) #25, !dbg !2582
  call void @llvm.dbg.value(metadata i8 %1, metadata !1385, metadata !DIExpression()) #25, !dbg !2582
  call void @llvm.dbg.value(metadata i32 1, metadata !1386, metadata !DIExpression()) #25, !dbg !2582
  call void @llvm.dbg.value(metadata i8 %1, metadata !1387, metadata !DIExpression()) #25, !dbg !2582
  %5 = lshr i8 %1, 5, !dbg !2584
  %6 = zext i8 %5 to i64, !dbg !2584
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2585
  call void @llvm.dbg.value(metadata i32* %7, metadata !1389, metadata !DIExpression()) #25, !dbg !2582
  %8 = and i8 %1, 31, !dbg !2586
  %9 = zext i8 %8 to i32, !dbg !2586
  call void @llvm.dbg.value(metadata i32 %9, metadata !1391, metadata !DIExpression()) #25, !dbg !2582
  %10 = load i32, i32* %7, align 4, !dbg !2587, !tbaa !793
  %11 = lshr i32 %10, %9, !dbg !2588
  %12 = and i32 %11, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %12, metadata !1392, metadata !DIExpression()) #25, !dbg !2582
  %13 = xor i32 %12, 1, !dbg !2590
  %14 = shl i32 %13, %9, !dbg !2591
  %15 = xor i32 %14, %10, !dbg !2592
  store i32 %15, i32* %7, align 4, !dbg !2592, !tbaa !793
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2593
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2594
  ret i8* %16, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2596 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2598, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i8* %0, metadata !2574, metadata !DIExpression()) #25, !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !2575, metadata !DIExpression()) #25, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %0, metadata !2547, metadata !DIExpression()) #25, !dbg !2602
  call void @llvm.dbg.value(metadata i64 -1, metadata !2548, metadata !DIExpression()) #25, !dbg !2602
  call void @llvm.dbg.value(metadata i8 58, metadata !2549, metadata !DIExpression()) #25, !dbg !2602
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2604
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2604
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2550, metadata !DIExpression()) #25, !dbg !2605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2606, !tbaa.struct !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1384, metadata !DIExpression()) #25, !dbg !2607
  call void @llvm.dbg.value(metadata i8 58, metadata !1385, metadata !DIExpression()) #25, !dbg !2607
  call void @llvm.dbg.value(metadata i32 1, metadata !1386, metadata !DIExpression()) #25, !dbg !2607
  call void @llvm.dbg.value(metadata i8 58, metadata !1387, metadata !DIExpression()) #25, !dbg !2607
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2609
  call void @llvm.dbg.value(metadata i32* %4, metadata !1389, metadata !DIExpression()) #25, !dbg !2607
  call void @llvm.dbg.value(metadata i32 26, metadata !1391, metadata !DIExpression()) #25, !dbg !2607
  %5 = load i32, i32* %4, align 4, !dbg !2610, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %5, metadata !1392, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2607
  %6 = or i32 %5, 67108864, !dbg !2611
  store i32 %6, i32* %4, align 4, !dbg !2611, !tbaa !793
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2613
  ret i8* %7, !dbg !2614
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2615 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i64 %1, metadata !2618, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %0, metadata !2547, metadata !DIExpression()) #25, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %1, metadata !2548, metadata !DIExpression()) #25, !dbg !2620
  call void @llvm.dbg.value(metadata i8 58, metadata !2549, metadata !DIExpression()) #25, !dbg !2620
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2622
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2622
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2550, metadata !DIExpression()) #25, !dbg !2623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2624, !tbaa.struct !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1384, metadata !DIExpression()) #25, !dbg !2625
  call void @llvm.dbg.value(metadata i8 58, metadata !1385, metadata !DIExpression()) #25, !dbg !2625
  call void @llvm.dbg.value(metadata i32 1, metadata !1386, metadata !DIExpression()) #25, !dbg !2625
  call void @llvm.dbg.value(metadata i8 58, metadata !1387, metadata !DIExpression()) #25, !dbg !2625
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2627
  call void @llvm.dbg.value(metadata i32* %5, metadata !1389, metadata !DIExpression()) #25, !dbg !2625
  call void @llvm.dbg.value(metadata i32 26, metadata !1391, metadata !DIExpression()) #25, !dbg !2625
  %6 = load i32, i32* %5, align 4, !dbg !2628, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %6, metadata !1392, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2625
  %7 = or i32 %6, 67108864, !dbg !2629
  store i32 %7, i32* %5, align 4, !dbg !2629, !tbaa !793
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2630
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2631
  ret i8* %8, !dbg !2632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2633 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2450, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %1, metadata !2636, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8* %2, metadata !2637, metadata !DIExpression()), !dbg !2641
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2642
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2638, metadata !DIExpression()), !dbg !2643
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2644
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %1, metadata !2445, metadata !DIExpression()) #25, !dbg !2648
  call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2648
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2639, !alias.scope !2645
  %8 = icmp eq i32 %1, 10, !dbg !2649
  br i1 %8, label %9, label %10, !dbg !2650

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2651, !noalias !2645
  unreachable, !dbg !2651

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2648
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2644
  store i32 %1, i32* %11, align 8, !dbg !2644, !tbaa.struct !2555
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2644
  %13 = bitcast i32* %12 to i8*, !dbg !2644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2644, !tbaa.struct !2652
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1384, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 58, metadata !1385, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 1, metadata !1386, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 58, metadata !1387, metadata !DIExpression()), !dbg !2653
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2655
  call void @llvm.dbg.value(metadata i32* %14, metadata !1389, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 26, metadata !1391, metadata !DIExpression()), !dbg !2653
  %15 = load i32, i32* %14, align 4, !dbg !2656, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %15, metadata !1392, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2653
  %16 = or i32 %15, 67108864, !dbg !2657
  store i32 %16, i32* %14, align 4, !dbg !2657, !tbaa !793
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2658
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2659
  ret i8* %17, !dbg !2660
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2661 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2665, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %1, metadata !2666, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %2, metadata !2667, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %3, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 %0, metadata !2670, metadata !DIExpression()) #25, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %1, metadata !2675, metadata !DIExpression()) #25, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %2, metadata !2676, metadata !DIExpression()) #25, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %3, metadata !2677, metadata !DIExpression()) #25, !dbg !2680
  call void @llvm.dbg.value(metadata i64 -1, metadata !2678, metadata !DIExpression()) #25, !dbg !2680
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2682
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2682
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2679, metadata !DIExpression()) #25, !dbg !2683
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2684, !tbaa.struct !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1425, metadata !DIExpression()) #25, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %1, metadata !1426, metadata !DIExpression()) #25, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %2, metadata !1427, metadata !DIExpression()) #25, !dbg !2685
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1425, metadata !DIExpression()) #25, !dbg !2685
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2687
  store i32 10, i32* %7, align 8, !dbg !2688, !tbaa !1366
  %8 = icmp ne i8* %1, null, !dbg !2689
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2690
  br i1 %10, label %12, label %11, !dbg !2690

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2691
  unreachable, !dbg !2691

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2692
  store i8* %1, i8** %13, align 8, !dbg !2693, !tbaa !1440
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2694
  store i8* %2, i8** %14, align 8, !dbg !2695, !tbaa !1443
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !2696
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2697
  ret i8* %15, !dbg !2698
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2671 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2670, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %1, metadata !2675, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %2, metadata !2676, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %3, metadata !2677, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %4, metadata !2678, metadata !DIExpression()), !dbg !2699
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2700
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2700
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2679, metadata !DIExpression()), !dbg !2701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2702, !tbaa.struct !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1425, metadata !DIExpression()) #25, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %1, metadata !1426, metadata !DIExpression()) #25, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %2, metadata !1427, metadata !DIExpression()) #25, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1425, metadata !DIExpression()) #25, !dbg !2703
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2705
  store i32 10, i32* %8, align 8, !dbg !2706, !tbaa !1366
  %9 = icmp ne i8* %1, null, !dbg !2707
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2708
  br i1 %11, label %13, label %12, !dbg !2708

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !2709
  unreachable, !dbg !2709

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2710
  store i8* %1, i8** %14, align 8, !dbg !2711, !tbaa !1440
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2712
  store i8* %2, i8** %15, align 8, !dbg !2713, !tbaa !1443
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2715
  ret i8* %16, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2717 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2721, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %1, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 0, metadata !2665, metadata !DIExpression()) #25, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()) #25, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %1, metadata !2667, metadata !DIExpression()) #25, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %2, metadata !2668, metadata !DIExpression()) #25, !dbg !2725
  call void @llvm.dbg.value(metadata i32 0, metadata !2670, metadata !DIExpression()) #25, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()) #25, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %1, metadata !2676, metadata !DIExpression()) #25, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %2, metadata !2677, metadata !DIExpression()) #25, !dbg !2727
  call void @llvm.dbg.value(metadata i64 -1, metadata !2678, metadata !DIExpression()) #25, !dbg !2727
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2729
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2729
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2679, metadata !DIExpression()) #25, !dbg !2730
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2731, !tbaa.struct !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1425, metadata !DIExpression()) #25, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %0, metadata !1426, metadata !DIExpression()) #25, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %1, metadata !1427, metadata !DIExpression()) #25, !dbg !2732
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1425, metadata !DIExpression()) #25, !dbg !2732
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2734
  store i32 10, i32* %6, align 8, !dbg !2735, !tbaa !1366
  %7 = icmp ne i8* %0, null, !dbg !2736
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2737
  br i1 %9, label %11, label %10, !dbg !2737

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2738
  unreachable, !dbg !2738

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2739
  store i8* %0, i8** %12, align 8, !dbg !2740, !tbaa !1440
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2741
  store i8* %1, i8** %13, align 8, !dbg !2742, !tbaa !1443
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !2743
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2744
  ret i8* %14, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2746 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2750, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2751, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %2, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %3, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2670, metadata !DIExpression()) #25, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %0, metadata !2675, metadata !DIExpression()) #25, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %1, metadata !2676, metadata !DIExpression()) #25, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2677, metadata !DIExpression()) #25, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %3, metadata !2678, metadata !DIExpression()) #25, !dbg !2755
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2757
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2757
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2679, metadata !DIExpression()) #25, !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2759, !tbaa.struct !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1425, metadata !DIExpression()) #25, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %0, metadata !1426, metadata !DIExpression()) #25, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !1427, metadata !DIExpression()) #25, !dbg !2760
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1425, metadata !DIExpression()) #25, !dbg !2760
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2762
  store i32 10, i32* %7, align 8, !dbg !2763, !tbaa !1366
  %8 = icmp ne i8* %0, null, !dbg !2764
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2765
  br i1 %10, label %12, label %11, !dbg !2765

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2766
  unreachable, !dbg !2766

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2767
  store i8* %0, i8** %13, align 8, !dbg !2768, !tbaa !1440
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2769
  store i8* %1, i8** %14, align 8, !dbg !2770, !tbaa !1443
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !2771
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2772
  ret i8* %15, !dbg !2773
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2774 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8* %1, metadata !2779, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %2, metadata !2780, metadata !DIExpression()), !dbg !2781
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2782
  ret i8* %4, !dbg !2783
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2784 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2788, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 %1, metadata !2789, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2778, metadata !DIExpression()) #25, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()) #25, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()) #25, !dbg !2791
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2793
  ret i8* %3, !dbg !2794
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2799, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %1, metadata !2800, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()) #25, !dbg !2802
  call void @llvm.dbg.value(metadata i8* %1, metadata !2779, metadata !DIExpression()) #25, !dbg !2802
  call void @llvm.dbg.value(metadata i64 -1, metadata !2780, metadata !DIExpression()) #25, !dbg !2802
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2804
  ret i8* %3, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2806 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2799, metadata !DIExpression()) #25, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %0, metadata !2800, metadata !DIExpression()) #25, !dbg !2812
  call void @llvm.dbg.value(metadata i32 0, metadata !2778, metadata !DIExpression()) #25, !dbg !2814
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()) #25, !dbg !2814
  call void @llvm.dbg.value(metadata i64 -1, metadata !2780, metadata !DIExpression()) #25, !dbg !2814
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2816
  ret i8* %2, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2818 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2858, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %1, metadata !2859, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %2, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %3, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8** %4, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %5, metadata !2863, metadata !DIExpression()), !dbg !2864
  %7 = icmp eq i8* %1, null, !dbg !2865
  br i1 %7, label %10, label %8, !dbg !2867

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !2868
  br label %12, !dbg !2868

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !2869
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #25, !dbg !2870
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !2870
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2871
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #25, !dbg !2872
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.83, i64 0, i64 0)) #25, !dbg !2872
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2873
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
  ], !dbg !2874

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #25, !dbg !2875
  %21 = load i8*, i8** %4, align 8, !dbg !2875, !tbaa !605
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !2875
  br label %147, !dbg !2877

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #25, !dbg !2878
  %25 = load i8*, i8** %4, align 8, !dbg !2878, !tbaa !605
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2878
  %27 = load i8*, i8** %26, align 8, !dbg !2878, !tbaa !605
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !2878
  br label %147, !dbg !2879

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #25, !dbg !2880
  %31 = load i8*, i8** %4, align 8, !dbg !2880, !tbaa !605
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2880
  %33 = load i8*, i8** %32, align 8, !dbg !2880, !tbaa !605
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2880
  %35 = load i8*, i8** %34, align 8, !dbg !2880, !tbaa !605
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !2880
  br label %147, !dbg !2881

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #25, !dbg !2882
  %39 = load i8*, i8** %4, align 8, !dbg !2882, !tbaa !605
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2882
  %41 = load i8*, i8** %40, align 8, !dbg !2882, !tbaa !605
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2882
  %43 = load i8*, i8** %42, align 8, !dbg !2882, !tbaa !605
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2882
  %45 = load i8*, i8** %44, align 8, !dbg !2882, !tbaa !605
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !2882
  br label %147, !dbg !2883

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #25, !dbg !2884
  %49 = load i8*, i8** %4, align 8, !dbg !2884, !tbaa !605
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2884
  %51 = load i8*, i8** %50, align 8, !dbg !2884, !tbaa !605
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2884
  %53 = load i8*, i8** %52, align 8, !dbg !2884, !tbaa !605
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2884
  %55 = load i8*, i8** %54, align 8, !dbg !2884, !tbaa !605
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2884
  %57 = load i8*, i8** %56, align 8, !dbg !2884, !tbaa !605
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !2884
  br label %147, !dbg !2885

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #25, !dbg !2886
  %61 = load i8*, i8** %4, align 8, !dbg !2886, !tbaa !605
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2886
  %63 = load i8*, i8** %62, align 8, !dbg !2886, !tbaa !605
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2886
  %65 = load i8*, i8** %64, align 8, !dbg !2886, !tbaa !605
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2886
  %67 = load i8*, i8** %66, align 8, !dbg !2886, !tbaa !605
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2886
  %69 = load i8*, i8** %68, align 8, !dbg !2886, !tbaa !605
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2886
  %71 = load i8*, i8** %70, align 8, !dbg !2886, !tbaa !605
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !2886
  br label %147, !dbg !2887

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #25, !dbg !2888
  %75 = load i8*, i8** %4, align 8, !dbg !2888, !tbaa !605
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2888
  %77 = load i8*, i8** %76, align 8, !dbg !2888, !tbaa !605
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2888
  %79 = load i8*, i8** %78, align 8, !dbg !2888, !tbaa !605
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2888
  %81 = load i8*, i8** %80, align 8, !dbg !2888, !tbaa !605
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2888
  %83 = load i8*, i8** %82, align 8, !dbg !2888, !tbaa !605
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2888
  %85 = load i8*, i8** %84, align 8, !dbg !2888, !tbaa !605
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2888
  %87 = load i8*, i8** %86, align 8, !dbg !2888, !tbaa !605
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !2888
  br label %147, !dbg !2889

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #25, !dbg !2890
  %91 = load i8*, i8** %4, align 8, !dbg !2890, !tbaa !605
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2890
  %93 = load i8*, i8** %92, align 8, !dbg !2890, !tbaa !605
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2890
  %95 = load i8*, i8** %94, align 8, !dbg !2890, !tbaa !605
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2890
  %97 = load i8*, i8** %96, align 8, !dbg !2890, !tbaa !605
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2890
  %99 = load i8*, i8** %98, align 8, !dbg !2890, !tbaa !605
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2890
  %101 = load i8*, i8** %100, align 8, !dbg !2890, !tbaa !605
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2890
  %103 = load i8*, i8** %102, align 8, !dbg !2890, !tbaa !605
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2890
  %105 = load i8*, i8** %104, align 8, !dbg !2890, !tbaa !605
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !2890
  br label %147, !dbg !2891

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #25, !dbg !2892
  %109 = load i8*, i8** %4, align 8, !dbg !2892, !tbaa !605
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2892
  %111 = load i8*, i8** %110, align 8, !dbg !2892, !tbaa !605
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2892
  %113 = load i8*, i8** %112, align 8, !dbg !2892, !tbaa !605
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2892
  %115 = load i8*, i8** %114, align 8, !dbg !2892, !tbaa !605
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2892
  %117 = load i8*, i8** %116, align 8, !dbg !2892, !tbaa !605
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2892
  %119 = load i8*, i8** %118, align 8, !dbg !2892, !tbaa !605
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2892
  %121 = load i8*, i8** %120, align 8, !dbg !2892, !tbaa !605
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2892
  %123 = load i8*, i8** %122, align 8, !dbg !2892, !tbaa !605
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2892
  %125 = load i8*, i8** %124, align 8, !dbg !2892, !tbaa !605
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !2892
  br label %147, !dbg !2893

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.93, i64 0, i64 0), i32 5) #25, !dbg !2894
  %129 = load i8*, i8** %4, align 8, !dbg !2894, !tbaa !605
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2894
  %131 = load i8*, i8** %130, align 8, !dbg !2894, !tbaa !605
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2894
  %133 = load i8*, i8** %132, align 8, !dbg !2894, !tbaa !605
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2894
  %135 = load i8*, i8** %134, align 8, !dbg !2894, !tbaa !605
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2894
  %137 = load i8*, i8** %136, align 8, !dbg !2894, !tbaa !605
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2894
  %139 = load i8*, i8** %138, align 8, !dbg !2894, !tbaa !605
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2894
  %141 = load i8*, i8** %140, align 8, !dbg !2894, !tbaa !605
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2894
  %143 = load i8*, i8** %142, align 8, !dbg !2894, !tbaa !605
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2894
  %145 = load i8*, i8** %144, align 8, !dbg !2894, !tbaa !605
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !2894
  br label %147, !dbg !2895

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2896
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2897 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2901, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %1, metadata !2902, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %2, metadata !2903, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %3, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8** %4, metadata !2905, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 0, metadata !2906, metadata !DIExpression()), !dbg !2907
  br label %6, !dbg !2908

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2906, metadata !DIExpression()), !dbg !2907
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2911
  %9 = load i8*, i8** %8, align 8, !dbg !2911, !tbaa !605
  %10 = icmp eq i8* %9, null, !dbg !2913
  %11 = add i64 %7, 1, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %11, metadata !2906, metadata !DIExpression()), !dbg !2907
  br i1 %10, label %12, label %6, !dbg !2913, !llvm.loop !2915

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2917
  ret void, !dbg !2918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2919 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2930, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8* %2, metadata !2932, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8* %3, metadata !2933, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2934, metadata !DIExpression()), !dbg !2938
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2939
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2936, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 0, metadata !2935, metadata !DIExpression()), !dbg !2938
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2935, metadata !DIExpression()), !dbg !2938
  %11 = load i32, i32* %8, align 8, !dbg !2941
  %12 = icmp ult i32 %11, 41, !dbg !2941
  br i1 %12, label %13, label %18, !dbg !2941

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2941
  %15 = zext i32 %11 to i64, !dbg !2941
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2941
  %17 = add nuw nsw i32 %11, 8, !dbg !2941
  store i32 %17, i32* %8, align 8, !dbg !2941
  br label %21, !dbg !2941

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2941
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2941
  store i8* %20, i8** %9, align 8, !dbg !2941
  br label %21, !dbg !2941

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2941
  %25 = load i8*, i8** %24, align 8, !dbg !2941
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2944
  store i8* %25, i8** %26, align 16, !dbg !2945, !tbaa !605
  %27 = icmp eq i8* %25, null, !dbg !2946
  br i1 %27, label %30, label %28, !dbg !2947

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 1, metadata !2935, metadata !DIExpression()), !dbg !2938
  %29 = icmp ult i32 %22, 41, !dbg !2941
  br i1 %29, label %35, label %32, !dbg !2941

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2948
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2950
  ret void, !dbg !2950

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2941
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2941
  store i8* %34, i8** %9, align 8, !dbg !2941
  br label %40, !dbg !2941

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2941
  %37 = zext i32 %22 to i64, !dbg !2941
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2941
  %39 = add nuw nsw i32 %22, 8, !dbg !2941
  store i32 %39, i32* %8, align 8, !dbg !2941
  br label %40, !dbg !2941

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2941
  %44 = load i8*, i8** %43, align 8, !dbg !2941
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2944
  store i8* %44, i8** %45, align 8, !dbg !2945, !tbaa !605
  %46 = icmp eq i8* %44, null, !dbg !2946
  br i1 %46, label %30, label %47, !dbg !2947

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 2, metadata !2935, metadata !DIExpression()), !dbg !2938
  %48 = icmp ult i32 %41, 41, !dbg !2941
  br i1 %48, label %52, label %49, !dbg !2941

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2941
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2941
  store i8* %51, i8** %9, align 8, !dbg !2941
  br label %57, !dbg !2941

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2941
  %54 = zext i32 %41 to i64, !dbg !2941
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2941
  %56 = add nuw nsw i32 %41, 8, !dbg !2941
  store i32 %56, i32* %8, align 8, !dbg !2941
  br label %57, !dbg !2941

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2941
  %61 = load i8*, i8** %60, align 8, !dbg !2941
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2944
  store i8* %61, i8** %62, align 16, !dbg !2945, !tbaa !605
  %63 = icmp eq i8* %61, null, !dbg !2946
  br i1 %63, label %30, label %64, !dbg !2947

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 3, metadata !2935, metadata !DIExpression()), !dbg !2938
  %65 = icmp ult i32 %58, 41, !dbg !2941
  br i1 %65, label %69, label %66, !dbg !2941

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2941
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2941
  store i8* %68, i8** %9, align 8, !dbg !2941
  br label %74, !dbg !2941

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2941
  %71 = zext i32 %58 to i64, !dbg !2941
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2941
  %73 = add nuw nsw i32 %58, 8, !dbg !2941
  store i32 %73, i32* %8, align 8, !dbg !2941
  br label %74, !dbg !2941

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2941
  %78 = load i8*, i8** %77, align 8, !dbg !2941
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2944
  store i8* %78, i8** %79, align 8, !dbg !2945, !tbaa !605
  %80 = icmp eq i8* %78, null, !dbg !2946
  br i1 %80, label %30, label %81, !dbg !2947

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 4, metadata !2935, metadata !DIExpression()), !dbg !2938
  %82 = icmp ult i32 %75, 41, !dbg !2941
  br i1 %82, label %86, label %83, !dbg !2941

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2941
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2941
  store i8* %85, i8** %9, align 8, !dbg !2941
  br label %91, !dbg !2941

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2941
  %88 = zext i32 %75 to i64, !dbg !2941
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2941
  %90 = add nuw nsw i32 %75, 8, !dbg !2941
  store i32 %90, i32* %8, align 8, !dbg !2941
  br label %91, !dbg !2941

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2941
  %95 = load i8*, i8** %94, align 8, !dbg !2941
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2944
  store i8* %95, i8** %96, align 16, !dbg !2945, !tbaa !605
  %97 = icmp eq i8* %95, null, !dbg !2946
  br i1 %97, label %30, label %98, !dbg !2947

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 5, metadata !2935, metadata !DIExpression()), !dbg !2938
  %99 = icmp ult i32 %92, 41, !dbg !2941
  br i1 %99, label %103, label %100, !dbg !2941

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2941
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2941
  store i8* %102, i8** %9, align 8, !dbg !2941
  br label %108, !dbg !2941

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2941
  %105 = zext i32 %92 to i64, !dbg !2941
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2941
  %107 = add nuw nsw i32 %92, 8, !dbg !2941
  store i32 %107, i32* %8, align 8, !dbg !2941
  br label %108, !dbg !2941

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2941
  %111 = load i8*, i8** %110, align 8, !dbg !2941
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2944
  store i8* %111, i8** %112, align 8, !dbg !2945, !tbaa !605
  %113 = icmp eq i8* %111, null, !dbg !2946
  br i1 %113, label %30, label %114, !dbg !2947

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2935, metadata !DIExpression()), !dbg !2938
  %115 = load i8*, i8** %9, align 8, !dbg !2941
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2941
  store i8* %116, i8** %9, align 8, !dbg !2941
  %117 = bitcast i8* %115 to i8**, !dbg !2941
  %118 = load i8*, i8** %117, align 8, !dbg !2941
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2944
  store i8* %118, i8** %119, align 16, !dbg !2945, !tbaa !605
  %120 = icmp eq i8* %118, null, !dbg !2946
  br i1 %120, label %30, label %121, !dbg !2947

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2935, metadata !DIExpression()), !dbg !2938
  %122 = load i8*, i8** %9, align 8, !dbg !2941
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2941
  store i8* %123, i8** %9, align 8, !dbg !2941
  %124 = bitcast i8* %122 to i8**, !dbg !2941
  %125 = load i8*, i8** %124, align 8, !dbg !2941
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2944
  store i8* %125, i8** %126, align 8, !dbg !2945, !tbaa !605
  %127 = icmp eq i8* %125, null, !dbg !2946
  br i1 %127, label %30, label %128, !dbg !2947

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2935, metadata !DIExpression()), !dbg !2938
  %129 = load i8*, i8** %9, align 8, !dbg !2941
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2941
  store i8* %130, i8** %9, align 8, !dbg !2941
  %131 = bitcast i8* %129 to i8**, !dbg !2941
  %132 = load i8*, i8** %131, align 8, !dbg !2941
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2944
  store i8* %132, i8** %133, align 16, !dbg !2945, !tbaa !605
  %134 = icmp eq i8* %132, null, !dbg !2946
  br i1 %134, label %30, label %135, !dbg !2947

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2935, metadata !DIExpression()), !dbg !2938
  %136 = load i8*, i8** %9, align 8, !dbg !2941
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2941
  store i8* %137, i8** %9, align 8, !dbg !2941
  %138 = bitcast i8* %136 to i8**, !dbg !2941
  %139 = load i8*, i8** %138, align 8, !dbg !2941
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2944
  store i8* %139, i8** %140, align 8, !dbg !2945, !tbaa !605
  %141 = icmp eq i8* %139, null, !dbg !2946
  %142 = select i1 %141, i64 9, i64 10, !dbg !2947
  br label %30, !dbg !2947
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2951 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2955, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %1, metadata !2956, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %2, metadata !2957, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %3, metadata !2958, metadata !DIExpression()), !dbg !2965
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2966
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2966
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2959, metadata !DIExpression()), !dbg !2967
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2968
  call void @llvm.va_start(i8* nonnull %6), !dbg !2968
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2969
  call void @llvm.va_end(i8* nonnull %6), !dbg !2970
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2971
  ret void, !dbg !2971
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2972 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2973, !tbaa !605
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2973
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #25, !dbg !2974
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.97, i64 0, i64 0)) #25, !dbg !2974
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.98, i64 0, i64 0), i32 5) #25, !dbg !2975
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.99, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.100, i64 0, i64 0)) #25, !dbg !2975
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.101, i64 0, i64 0), i32 5) #25, !dbg !2976
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.102, i64 0, i64 0)) #25, !dbg !2976
  ret void, !dbg !2977
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !2978 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()), !dbg !2982
  %3 = udiv i64 9223372036854775807, %1, !dbg !2983
  %4 = icmp ult i64 %3, %0, !dbg !2983
  br i1 %4, label %5, label %6, !dbg !2985

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2986
  unreachable, !dbg !2986

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %7, metadata !2988, metadata !DIExpression()) #25, !dbg !2994
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %8, metadata !2993, metadata !DIExpression()) #25, !dbg !2994
  %9 = icmp eq i8* %8, null, !dbg !2997
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2999
  br i1 %11, label %12, label %13, !dbg !2999

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !3000
  unreachable, !dbg !3000

13:                                               ; preds = %6
  ret i8* %8, !dbg !3001
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2989 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2988, metadata !DIExpression()), !dbg !3002
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3003
  call void @llvm.dbg.value(metadata i8* %2, metadata !2993, metadata !DIExpression()), !dbg !3002
  %3 = icmp eq i8* %2, null, !dbg !3004
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3005
  br i1 %5, label %6, label %7, !dbg !3005

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3006
  unreachable, !dbg !3006

7:                                                ; preds = %1
  ret i8* %2, !dbg !3007
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !3008 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3012, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %2, metadata !3014, metadata !DIExpression()), !dbg !3015
  %4 = udiv i64 9223372036854775807, %2, !dbg !3016
  %5 = icmp ult i64 %4, %1, !dbg !3016
  br i1 %5, label %6, label %7, !dbg !3018

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !3019
  unreachable, !dbg !3019

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #25, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %8, metadata !3026, metadata !DIExpression()) #25, !dbg !3027
  %9 = icmp eq i64 %8, 0, !dbg !3029
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3031
  br i1 %11, label %12, label %13, !dbg !3031

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !3032
  br label %19, !dbg !3034

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %14, metadata !3021, metadata !DIExpression()) #25, !dbg !3027
  %15 = icmp eq i8* %14, null, !dbg !3036
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3038
  br i1 %17, label %18, label %19, !dbg !3038

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3039
  unreachable, !dbg !3039

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3027
  ret i8* %20, !dbg !3040
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3022 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3041
  %3 = icmp eq i64 %1, 0, !dbg !3042
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3043
  br i1 %5, label %6, label %7, !dbg !3043

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !3044
  br label %13, !dbg !3045

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %8, metadata !3021, metadata !DIExpression()), !dbg !3041
  %9 = icmp eq i8* %8, null, !dbg !3047
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3048
  br i1 %11, label %12, label %13, !dbg !3048

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3049
  unreachable, !dbg !3049

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3041
  ret i8* %14, !dbg !3050
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !174, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64* %1, metadata !175, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %2, metadata !176, metadata !DIExpression()), !dbg !3051
  %4 = load i64, i64* %1, align 8, !dbg !3052, !tbaa !2265
  call void @llvm.dbg.value(metadata i64 %4, metadata !177, metadata !DIExpression()), !dbg !3051
  %5 = icmp eq i8* %0, null, !dbg !3053
  br i1 %5, label %6, label %20, !dbg !3055

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3056
  br i1 %7, label %8, label %13, !dbg !3059

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %9, metadata !177, metadata !DIExpression()), !dbg !3051
  %10 = icmp ugt i64 %2, 128, !dbg !3062
  %11 = zext i1 %10 to i64, !dbg !3062
  %12 = add nuw nsw i64 %9, %11, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %12, metadata !177, metadata !DIExpression()), !dbg !3051
  br label %13, !dbg !3064

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3051
  call void @llvm.dbg.value(metadata i64 %14, metadata !177, metadata !DIExpression()), !dbg !3051
  %15 = udiv i64 9223372036854775807, %2, !dbg !3065
  %16 = icmp ult i64 %15, %14, !dbg !3065
  br i1 %16, label %19, label %17, !dbg !3067

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !177, metadata !DIExpression()), !dbg !3051
  store i64 %14, i64* %1, align 8, !dbg !3068, !tbaa !2265
  %18 = mul i64 %14, %2, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #25, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %28, metadata !3026, metadata !DIExpression()) #25, !dbg !3070
  br label %31, !dbg !3072

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !3073
  unreachable, !dbg !3073

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3074
  %22 = icmp ugt i64 %21, %4, !dbg !3077
  br i1 %22, label %24, label %23, !dbg !3078

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !3079
  unreachable, !dbg !3079

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3080
  %26 = add nuw i64 %4, 1, !dbg !3081
  %27 = add i64 %26, %25, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %27, metadata !177, metadata !DIExpression()), !dbg !3051
  store i64 %27, i64* %1, align 8, !dbg !3068, !tbaa !2265
  %28 = mul i64 %27, %2, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #25, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %28, metadata !3026, metadata !DIExpression()) #25, !dbg !3070
  %29 = icmp eq i64 %28, 0, !dbg !3083
  br i1 %29, label %30, label %31, !dbg !3072

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !3084
  br label %38, !dbg !3085

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %33, metadata !3021, metadata !DIExpression()) #25, !dbg !3070
  %34 = icmp eq i8* %33, null, !dbg !3087
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3088
  br i1 %36, label %37, label %38, !dbg !3088

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !3089
  unreachable, !dbg !3089

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3070
  ret i8* %39, !dbg !3090
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !3091 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %0, metadata !2988, metadata !DIExpression()) #25, !dbg !3095
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %2, metadata !2993, metadata !DIExpression()) #25, !dbg !3095
  %3 = icmp eq i8* %2, null, !dbg !3098
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3099
  br i1 %5, label %6, label %7, !dbg !3099

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3100
  unreachable, !dbg !3100

7:                                                ; preds = %1
  ret i8* %2, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3102 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64* %1, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %0, metadata !174, metadata !DIExpression()) #25, !dbg !3109
  call void @llvm.dbg.value(metadata i64* %1, metadata !175, metadata !DIExpression()) #25, !dbg !3109
  call void @llvm.dbg.value(metadata i64 1, metadata !176, metadata !DIExpression()) #25, !dbg !3109
  %3 = load i64, i64* %1, align 8, !dbg !3111, !tbaa !2265
  call void @llvm.dbg.value(metadata i64 %3, metadata !177, metadata !DIExpression()) #25, !dbg !3109
  %4 = icmp eq i8* %0, null, !dbg !3112
  br i1 %4, label %5, label %10, !dbg !3113

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3114
  br i1 %6, label %17, label %7, !dbg !3115

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !177, metadata !DIExpression()) #25, !dbg !3109
  %8 = icmp slt i64 %3, 0, !dbg !3116
  br i1 %8, label %9, label %17, !dbg !3117

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3118
  unreachable, !dbg !3118

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3119
  br i1 %11, label %13, label %12, !dbg !3120

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !3121
  unreachable, !dbg !3121

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3122
  %15 = add nuw nsw i64 %3, 1, !dbg !3123
  %16 = add nuw nsw i64 %15, %14, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %16, metadata !177, metadata !DIExpression()) #25, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #25, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %16, metadata !3026, metadata !DIExpression()) #25, !dbg !3125
  br label %17, !dbg !3127

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3128
  store i64 %18, i64* %1, align 8, !dbg !3128, !tbaa !2265
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %19, metadata !3021, metadata !DIExpression()) #25, !dbg !3125
  %20 = icmp eq i8* %19, null, !dbg !3130
  br i1 %20, label %21, label %22, !dbg !3131

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !3132
  unreachable, !dbg !3132

22:                                               ; preds = %17
  ret i8* %19, !dbg !3133
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3134 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %0, metadata !3138, metadata !DIExpression()) #25, !dbg !3143
  call void @llvm.dbg.value(metadata i64 1, metadata !3141, metadata !DIExpression()) #25, !dbg !3143
  %2 = icmp slt i64 %0, 0, !dbg !3145
  br i1 %2, label %6, label %3, !dbg !3147

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %4, metadata !3142, metadata !DIExpression()) #25, !dbg !3143
  %5 = icmp eq i8* %4, null, !dbg !3149
  br i1 %5, label %6, label %7, !dbg !3150

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !3151
  unreachable, !dbg !3151

7:                                                ; preds = %3
  ret i8* %4, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3139 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3138, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %1, metadata !3141, metadata !DIExpression()), !dbg !3153
  %3 = udiv i64 9223372036854775807, %1, !dbg !3154
  %4 = icmp ult i64 %3, %0, !dbg !3154
  br i1 %4, label %8, label %5, !dbg !3155

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !3156
  call void @llvm.dbg.value(metadata i8* %6, metadata !3142, metadata !DIExpression()), !dbg !3153
  %7 = icmp eq i8* %6, null, !dbg !3157
  br i1 %7, label %8, label %9, !dbg !3158

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !3159
  unreachable, !dbg !3159

9:                                                ; preds = %5
  ret i8* %6, !dbg !3160
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %1, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %1, metadata !2988, metadata !DIExpression()) #25, !dbg !3170
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %3, metadata !2993, metadata !DIExpression()) #25, !dbg !3170
  %4 = icmp eq i8* %3, null, !dbg !3173
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3174
  br i1 %6, label %7, label %8, !dbg !3174

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3175
  unreachable, !dbg !3175

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3176, metadata !DIExpression()) #25, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()) #25, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %1, metadata !3184, metadata !DIExpression()) #25, !dbg !3185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !3187
  ret i8* %3, !dbg !3188
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3189 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3191, metadata !DIExpression()), !dbg !3192
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !3193
  %3 = add i64 %2, 1, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()) #25, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %3, metadata !3168, metadata !DIExpression()) #25, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %3, metadata !2988, metadata !DIExpression()) #25, !dbg !3197
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %4, metadata !2993, metadata !DIExpression()) #25, !dbg !3197
  %5 = icmp eq i8* %4, null, !dbg !3200
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3201
  br i1 %7, label %8, label %9, !dbg !3201

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3202
  unreachable, !dbg !3202

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3176, metadata !DIExpression()) #25, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()) #25, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %3, metadata !3184, metadata !DIExpression()) #25, !dbg !3203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !3205
  ret i8* %4, !dbg !3206
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3207 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3208, !tbaa !793
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #25, !dbg !3209
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #25, !dbg !3210
  tail call void @abort() #27, !dbg !3211
  unreachable, !dbg !3211
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3212 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3214, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3220
  %3 = icmp eq i64 %0, 0, !dbg !3221
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3222
  br i1 %5, label %11, label %6, !dbg !3222

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3217, metadata !DIExpression()), !dbg !3223
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3224
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3224
  br i1 %8, label %9, label %11, !dbg !3226

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !3227
  store i32 12, i32* %10, align 4, !dbg !3229, !tbaa !793
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3214, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %12, metadata !3215, metadata !DIExpression()), !dbg !3220
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !3230
  call void @llvm.dbg.value(metadata i8* %14, metadata !3216, metadata !DIExpression()), !dbg !3220
  br label %15, !dbg !3231

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3220
  ret i8* %16, !dbg !3232
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3233 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3249, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8* %1, metadata !3250, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %2, metadata !3251, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3252, metadata !DIExpression()), !dbg !3258
  %6 = bitcast i32* %5 to i8*, !dbg !3259
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3259
  %7 = icmp eq i32* %0, null, !dbg !3260
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3262
  call void @llvm.dbg.value(metadata i32* %8, metadata !3249, metadata !DIExpression()), !dbg !3258
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %9, metadata !3253, metadata !DIExpression()), !dbg !3258
  %10 = icmp ugt i64 %9, -3, !dbg !3264
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3265
  br i1 %12, label %13, label %18, !dbg !3265

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !3266
  br i1 %14, label %18, label %15, !dbg !3267

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3268, !tbaa !972
  call void @llvm.dbg.value(metadata i8 %16, metadata !3255, metadata !DIExpression()), !dbg !3269
  %17 = zext i8 %16 to i32, !dbg !3270
  store i32 %17, i32* %8, align 4, !dbg !3271, !tbaa !793
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3258
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3272
  ret i64 %19, !dbg !3272
}

; Function Attrs: nounwind
declare !dbg !3273 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3277 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3315, metadata !DIExpression()), !dbg !3320
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !3321
  call void @llvm.dbg.value(metadata i1 undef, metadata !3316, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3320
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3322, metadata !DIExpression()), !dbg !3326
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3328
  %4 = load i32, i32* %3, align 8, !dbg !3328, !tbaa !3329
  %5 = and i32 %4, 32, !dbg !3331
  %6 = icmp eq i32 %5, 0, !dbg !3331
  call void @llvm.dbg.value(metadata i1 %6, metadata !3318, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3320
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !3332
  %8 = icmp eq i32 %7, 0, !dbg !3333
  call void @llvm.dbg.value(metadata i1 %8, metadata !3319, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3320
  br i1 %6, label %9, label %19, !dbg !3334

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3336
  call void @llvm.dbg.value(metadata i1 %10, metadata !3316, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3320
  %11 = or i1 %10, %8, !dbg !3337
  %12 = xor i1 %8, true, !dbg !3337
  %13 = sext i1 %12 to i32, !dbg !3337
  br i1 %11, label %22, label %14, !dbg !3337

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !3338
  %16 = load i32, i32* %15, align 4, !dbg !3338, !tbaa !793
  %17 = icmp ne i32 %16, 9, !dbg !3339
  %18 = sext i1 %17 to i32, !dbg !3340
  br label %22, !dbg !3340

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3341

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !3343
  store i32 0, i32* %21, align 4, !dbg !3345, !tbaa !793
  br label %22, !dbg !3343

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3320
  ret i32 %23, !dbg !3346
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3347 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()), !dbg !3356
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3357
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3357
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3352, metadata !DIExpression()), !dbg !3358
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !3359
  %5 = icmp eq i32 %4, 0, !dbg !3359
  br i1 %5, label %6, label %13, !dbg !3361

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3362
  %8 = load i16, i16* %7, align 16, !dbg !3362
  %9 = icmp eq i16 %8, 67, !dbg !3362
  br i1 %9, label %13, label %10, !dbg !3363

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i64 6), !dbg !3364
  %12 = icmp ne i32 %11, 0, !dbg !3365
  br label %13, !dbg !3363

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3356
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3366
  ret i1 %14, !dbg !3366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3367 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %1, metadata !3371, metadata !DIExpression()), !dbg !3373
  %2 = icmp eq i8* %1, null, !dbg !3374
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* %1, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %3, metadata !3371, metadata !DIExpression()), !dbg !3373
  %4 = load i8, i8* %3, align 1, !dbg !3377, !tbaa !972
  %5 = icmp eq i8 %4, 0, !dbg !3381
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i8* %3, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %6, metadata !3371, metadata !DIExpression()), !dbg !3373
  ret i8* %6, !dbg !3383
}

; Function Attrs: nounwind
declare !dbg !3384 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3391, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3392, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %2, metadata !3393, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %0, metadata !3395, metadata !DIExpression()) #25, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %1, metadata !3398, metadata !DIExpression()) #25, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %2, metadata !3399, metadata !DIExpression()) #25, !dbg !3404
  call void @llvm.dbg.value(metadata i32 %0, metadata !3406, metadata !DIExpression()) #25, !dbg !3412
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %4, metadata !3411, metadata !DIExpression()) #25, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %4, metadata !3400, metadata !DIExpression()) #25, !dbg !3404
  %5 = icmp eq i8* %4, null, !dbg !3415
  br i1 %5, label %6, label %9, !dbg !3416

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3417
  br i1 %7, label %19, label %8, !dbg !3420

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3421, !tbaa !972
  br label %19, !dbg !3422

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %10, metadata !3401, metadata !DIExpression()) #25, !dbg !3424
  %11 = icmp ult i64 %10, %2, !dbg !3425
  br i1 %11, label %12, label %14, !dbg !3427

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %1, metadata !3430, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i8* %4, metadata !3433, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %13, metadata !3434, metadata !DIExpression()) #25, !dbg !3435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !3437
  br label %19, !dbg !3438

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3439
  br i1 %15, label %19, label %16, !dbg !3442

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3430, metadata !DIExpression()) #25, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %4, metadata !3433, metadata !DIExpression()) #25, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %17, metadata !3434, metadata !DIExpression()) #25, !dbg !3445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !3447
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3448
  store i8 0, i8* %18, align 1, !dbg !3449, !tbaa !972
  br label %19, !dbg !3450

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3451
  ret i32 %20, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3453 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %0, metadata !3406, metadata !DIExpression()) #25, !dbg !3457
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3459
  call void @llvm.dbg.value(metadata i8* %2, metadata !3411, metadata !DIExpression()) #25, !dbg !3457
  ret i8* %2, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3461 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3499, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 0, metadata !3500, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 0, metadata !3502, metadata !DIExpression()), !dbg !3503
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3504
  call void @llvm.dbg.value(metadata i32 %2, metadata !3501, metadata !DIExpression()), !dbg !3503
  %3 = icmp slt i32 %2, 0, !dbg !3505
  br i1 %3, label %4, label %6, !dbg !3507

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3508
  br label %24, !dbg !3509

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3510
  %8 = icmp eq i32 %7, 0, !dbg !3510
  br i1 %8, label %13, label %9, !dbg !3512

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3513
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3514
  %12 = icmp eq i64 %11, -1, !dbg !3515
  br i1 %12, label %16, label %13, !dbg !3516

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3517
  %15 = icmp eq i32 %14, 0, !dbg !3517
  br i1 %15, label %16, label %18, !dbg !3518

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3500, metadata !DIExpression()), !dbg !3503
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %21, metadata !3502, metadata !DIExpression()), !dbg !3503
  br label %24, !dbg !3520

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3521
  %20 = load i32, i32* %19, align 4, !dbg !3521, !tbaa !793
  call void @llvm.dbg.value(metadata i32 %20, metadata !3500, metadata !DIExpression()), !dbg !3503
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %21, metadata !3502, metadata !DIExpression()), !dbg !3503
  %22 = icmp eq i32 %20, 0, !dbg !3522
  br i1 %22, label %24, label %23, !dbg !3520

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3524, !tbaa !793
  call void @llvm.dbg.value(metadata i32 -1, metadata !3502, metadata !DIExpression()), !dbg !3503
  br label %24, !dbg !3526

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3503
  ret i32 %25, !dbg !3527
}

; Function Attrs: nofree nounwind
declare !dbg !3528 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3531 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3532 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3536 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3574, metadata !DIExpression()), !dbg !3575
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3576
  br i1 %2, label %6, label %3, !dbg !3578

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3579
  %5 = icmp eq i32 %4, 0, !dbg !3579
  br i1 %5, label %6, label %8, !dbg !3580

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3581
  br label %17, !dbg !3582

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3583, metadata !DIExpression()) #25, !dbg !3588
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3590
  %10 = load i32, i32* %9, align 8, !dbg !3590, !tbaa !3329
  %11 = and i32 %10, 256, !dbg !3592
  %12 = icmp eq i32 %11, 0, !dbg !3592
  br i1 %12, label %15, label %13, !dbg !3593

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !3594
  br label %15, !dbg !3594

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3595
  br label %17, !dbg !3596

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3575
  ret i32 %18, !dbg !3597
}

; Function Attrs: nofree nounwind
declare !dbg !3598 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3601 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3640, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %1, metadata !3641, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %2, metadata !3642, metadata !DIExpression()), !dbg !3646
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3647
  %5 = load i8*, i8** %4, align 8, !dbg !3647, !tbaa !3648
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3649
  %7 = load i8*, i8** %6, align 8, !dbg !3649, !tbaa !3650
  %8 = icmp eq i8* %5, %7, !dbg !3651
  br i1 %8, label %9, label %28, !dbg !3652

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3653
  %11 = load i8*, i8** %10, align 8, !dbg !3653, !tbaa !3654
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3655
  %13 = load i8*, i8** %12, align 8, !dbg !3655, !tbaa !3656
  %14 = icmp eq i8* %11, %13, !dbg !3657
  br i1 %14, label %15, label %28, !dbg !3658

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3659
  %17 = load i8*, i8** %16, align 8, !dbg !3659, !tbaa !3660
  %18 = icmp eq i8* %17, null, !dbg !3661
  br i1 %18, label %19, label %28, !dbg !3662

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3663
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !3664
  call void @llvm.dbg.value(metadata i64 %21, metadata !3643, metadata !DIExpression()), !dbg !3665
  %22 = icmp eq i64 %21, -1, !dbg !3666
  br i1 %22, label %30, label %23, !dbg !3668

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3669
  %25 = load i32, i32* %24, align 8, !dbg !3670, !tbaa !3329
  %26 = and i32 %25, -17, !dbg !3670
  store i32 %26, i32* %24, align 8, !dbg !3670, !tbaa !3329
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3671
  store i64 %21, i64* %27, align 8, !dbg !3672, !tbaa !3673
  br label %30, !dbg !3674

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3675
  br label %30, !dbg !3676

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3646
  ret i32 %31, !dbg !3677
}

; Function Attrs: nofree nounwind
declare !dbg !3678 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !145, !42, !48, !56, !147, !62, !68, !157, !139, !164, !181, !183, !185, !187, !189, !191, !580, !582, !584, !586}
!llvm.ident = !{!588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588, !588}
!llvm.module.flags = !{!589, !590, !591, !592, !593}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 38, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mkfifo.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !{!0}
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1280, elements: !38)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !28, line: 50, size: 256, elements: !29)
!28 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!29 = !{!30, !33, !35, !37}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !28, line: 52, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !27, file: !28, line: 55, baseType: !34, size: 32, offset: 64)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !27, file: !28, line: 56, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !27, file: !28, line: 57, baseType: !34, size: 32, offset: 192)
!38 = !{!39}
!39 = !DISubrange(count: 5)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "Version", scope: !42, file: !43, line: 2, type: !31, isLocal: false, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !45, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!44 = !{}
!45 = !{!40}
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "file_name", scope: !48, file: !49, line: 46, type: !31, isLocal: true, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!50 = !{!46, !51}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !48, file: !49, line: 56, type: !53, isLocal: true, isDefinition: true)
!53 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "exit_failure", scope: !56, file: !57, line: 24, type: !59, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !58, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!58 = !{!54}
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "program_name", scope: !62, file: !63, line: 33, type: !31, isLocal: false, isDefinition: true)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !64, globals: !65, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!64 = !{!23, !21}
!65 = !{!60}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !68, file: !69, line: 85, type: !133, isLocal: false, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !91, globals: !96, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!70 = !{!5, !71, !76}
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !72)
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 46, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!79 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!80 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!81 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!82 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!91 = !{!34, !92, !93, !21}
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !{!66, !97, !103, !115, !117, !122, !129, !131}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !68, file: !69, line: 101, type: !99, isLocal: false, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 320, elements: !101)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!101 = !{!102}
!102 = !DISubrange(count: 10)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !68, file: !69, line: 1052, type: !105, isLocal: false, isDefinition: true)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !69, line: 65, size: 448, elements: !106)
!106 = !{!107, !108, !109, !113, !114}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !105, file: !69, line: 68, baseType: !5, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !69, line: 71, baseType: !34, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !105, file: !69, line: 75, baseType: !110, size: 256, offset: 64)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 8)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !105, file: !69, line: 78, baseType: !31, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !105, file: !69, line: 81, baseType: !31, size: 64, offset: 384)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !68, file: !69, line: 116, type: !105, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "slot0", scope: !68, file: !69, line: 842, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 256)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "slotvec", scope: !68, file: !69, line: 845, type: !124, isLocal: true, isDefinition: true)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !69, line: 834, size: 128, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !125, file: !69, line: 836, baseType: !93, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !125, file: !69, line: 837, baseType: !21, size: 64, offset: 64)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "nslots", scope: !68, file: !69, line: 843, type: !34, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "slotvec0", scope: !68, file: !69, line: 844, type: !125, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 704, elements: !135)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!135 = !{!136}
!136 = !DISubrange(count: 11)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !139, file: !140, line: 26, type: !142, isLocal: false, isDefinition: true)
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !141, splitDebugInlining: false, nameTableKind: None)
!140 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!141 = !{!137}
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 376, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 47)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "src/selinux.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !156, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!149 = !{!150}
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 78, baseType: !7, size: 32, elements: !151)
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "MODE_DONE", value: 0, isUnsigned: true)
!153 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1, isUnsigned: true)
!154 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2, isUnsigned: true)
!155 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3, isUnsigned: true)
!156 = !{!93}
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !159, retainedTypes: !163, splitDebugInlining: false, nameTableKind: None)
!158 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!159 = !{!160}
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 40, baseType: !7, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!163 = !{!23}
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !180, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !{!167}
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !169, file: !168, line: 186, baseType: !7, size: 32, elements: !178)
!168 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = distinct !DISubprogram(name: "x2nrealloc", scope: !168, file: !168, line: 174, type: !170, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !173)
!170 = !DISubroutineType(types: !171)
!171 = !{!23, !23, !172, !93}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!173 = !{!174, !175, !176, !177}
!174 = !DILocalVariable(name: "p", arg: 1, scope: !169, file: !168, line: 174, type: !23)
!175 = !DILocalVariable(name: "pn", arg: 2, scope: !169, file: !168, line: 174, type: !172)
!176 = !DILocalVariable(name: "s", arg: 3, scope: !169, file: !168, line: 174, type: !93)
!177 = !DILocalVariable(name: "n", scope: !169, file: !168, line: 176, type: !93)
!178 = !{!179}
!179 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!180 = !{!93, !21, !23}
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, splitDebugInlining: false, nameTableKind: None)
!182 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !163, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !156, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !193, retainedTypes: !163, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = !{!194}
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !195, line: 41, baseType: !7, size: 32, elements: !196)
!195 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!197 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!198 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!199 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!200 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!201 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!202 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!203 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!204 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!205 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!206 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!207 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!208 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!209 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!210 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!216 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!217 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!228 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!229 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!235 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!236 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!237 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!238 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!239 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!240 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!241 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!242 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!243 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!244 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!245 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!246 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!305 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!313 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!314 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!392 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!465 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!466 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!467 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!468 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!469 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!470 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!471 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!473 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!474 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!475 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!476 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!477 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!478 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!479 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!482 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!483 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!484 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!486 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!512 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!513 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!514 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!515 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!516 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!521 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!522 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!523 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!524 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !163, splitDebugInlining: false, nameTableKind: None)
!581 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, splitDebugInlining: false, nameTableKind: None)
!583 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !163, splitDebugInlining: false, nameTableKind: None)
!585 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!586 = distinct !DICompileUnit(language: DW_LANG_C99, file: !587, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !163, splitDebugInlining: false, nameTableKind: None)
!587 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!588 = !{!"clang version 12.0.1"}
!589 = !{i32 7, !"Dwarf Version", i32 4}
!590 = !{i32 2, !"Debug Info Version", i32 3}
!591 = !{i32 1, !"wchar_size", i32 4}
!592 = !{i32 7, !"PIC Level", i32 2}
!593 = !{i32 7, !"PIE Level", i32 2}
!594 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !595, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !34}
!597 = !{!598}
!598 = !DILocalVariable(name: "status", arg: 1, scope: !594, file: !3, line: 48, type: !34)
!599 = !DILocation(line: 0, scope: !594)
!600 = !DILocation(line: 50, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !594, file: !3, line: 50, column: 7)
!602 = !DILocation(line: 50, column: 7, scope: !594)
!603 = !DILocation(line: 51, column: 5, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !3, line: 51, column: 5)
!605 = !{!606, !606, i64 0}
!606 = !{!"any pointer", !607, i64 0}
!607 = !{!"omnipotent char", !608, i64 0}
!608 = !{!"Simple C/C++ TBAA"}
!609 = !DILocation(line: 54, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !601, file: !3, line: 53, column: 5)
!611 = !DILocation(line: 55, column: 7, scope: !610)
!612 = !DILocation(line: 590, column: 3, scope: !613, inlinedAt: !617)
!613 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !614, file: !614, line: 588, type: !615, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!614 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!615 = !DISubroutineType(types: !616)
!616 = !{null}
!617 = distinct !DILocation(line: 59, column: 7, scope: !610)
!618 = !DILocation(line: 61, column: 7, scope: !610)
!619 = !DILocation(line: 64, column: 7, scope: !610)
!620 = !DILocation(line: 69, column: 7, scope: !610)
!621 = !DILocation(line: 70, column: 7, scope: !610)
!622 = !DILocalVariable(name: "program", arg: 1, scope: !623, file: !614, line: 634, type: !31)
!623 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !614, file: !614, line: 634, type: !624, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !31}
!626 = !{!622, !627, !636, !637, !639}
!627 = !DILocalVariable(name: "infomap", scope: !623, file: !614, line: 636, type: !628)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 896, elements: !634)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !623, file: !614, line: 636, size: 128, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !630, file: !614, line: 636, baseType: !31, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !614, line: 636, baseType: !31, size: 64, offset: 64)
!634 = !{!635}
!635 = !DISubrange(count: 7)
!636 = !DILocalVariable(name: "node", scope: !623, file: !614, line: 646, type: !31)
!637 = !DILocalVariable(name: "map_prog", scope: !623, file: !614, line: 647, type: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!639 = !DILocalVariable(name: "lc_messages", scope: !623, file: !614, line: 659, type: !31)
!640 = !DILocation(line: 0, scope: !623, inlinedAt: !641)
!641 = distinct !DILocation(line: 71, column: 7, scope: !610)
!642 = !DILocation(line: 636, column: 3, scope: !623, inlinedAt: !641)
!643 = !DILocation(line: 636, column: 67, scope: !623, inlinedAt: !641)
!644 = !DILocation(line: 647, column: 36, scope: !623, inlinedAt: !641)
!645 = !DILocation(line: 649, column: 3, scope: !623, inlinedAt: !641)
!646 = !DILocation(line: 649, column: 33, scope: !623, inlinedAt: !641)
!647 = !DILocation(line: 650, column: 13, scope: !623, inlinedAt: !641)
!648 = !DILocation(line: 649, column: 20, scope: !623, inlinedAt: !641)
!649 = !{!650, !606, i64 0}
!650 = !{!"infomap", !606, i64 0, !606, i64 8}
!651 = !DILocation(line: 649, column: 10, scope: !623, inlinedAt: !641)
!652 = !DILocation(line: 649, column: 28, scope: !623, inlinedAt: !641)
!653 = distinct !{!653, !645, !647, !654}
!654 = !{!"llvm.loop.mustprogress"}
!655 = !DILocation(line: 652, column: 17, scope: !656, inlinedAt: !641)
!656 = distinct !DILexicalBlock(scope: !623, file: !614, line: 652, column: 7)
!657 = !{!650, !606, i64 8}
!658 = !DILocation(line: 652, column: 7, scope: !656, inlinedAt: !641)
!659 = !DILocation(line: 652, column: 7, scope: !623, inlinedAt: !641)
!660 = !DILocation(line: 655, column: 3, scope: !623, inlinedAt: !641)
!661 = !DILocation(line: 659, column: 29, scope: !623, inlinedAt: !641)
!662 = !DILocation(line: 660, column: 7, scope: !663, inlinedAt: !641)
!663 = distinct !DILexicalBlock(scope: !623, file: !614, line: 660, column: 7)
!664 = !DILocation(line: 660, column: 19, scope: !663, inlinedAt: !641)
!665 = !DILocation(line: 660, column: 22, scope: !663, inlinedAt: !641)
!666 = !DILocation(line: 660, column: 7, scope: !623, inlinedAt: !641)
!667 = !DILocation(line: 666, column: 7, scope: !668, inlinedAt: !641)
!668 = distinct !DILexicalBlock(scope: !663, file: !614, line: 661, column: 5)
!669 = !DILocation(line: 668, column: 5, scope: !668, inlinedAt: !641)
!670 = !DILocation(line: 669, column: 3, scope: !623, inlinedAt: !641)
!671 = !DILocation(line: 671, column: 3, scope: !623, inlinedAt: !641)
!672 = !DILocation(line: 673, column: 1, scope: !623, inlinedAt: !641)
!673 = !DILocation(line: 73, column: 3, scope: !594)
!674 = !DISubprogram(name: "dcgettext", scope: !675, file: !675, line: 51, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!675 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!676 = !DISubroutineType(types: !677)
!677 = !{!21, !31, !31, !34}
!678 = !DISubprogram(name: "fputs_unlocked", scope: !679, file: !679, line: 667, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!679 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!680 = !DISubroutineType(types: !681)
!681 = !{!34, !31, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !684, line: 49, size: 1728, elements: !685)
!684 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !701, !702, !703, !704, !708, !709, !711, !715, !718, !720, !723, !726, !727, !728, !729, !730}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !683, file: !684, line: 51, baseType: !34, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !683, file: !684, line: 54, baseType: !21, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !683, file: !684, line: 55, baseType: !21, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !683, file: !684, line: 56, baseType: !21, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !683, file: !684, line: 57, baseType: !21, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !683, file: !684, line: 58, baseType: !21, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !683, file: !684, line: 59, baseType: !21, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !683, file: !684, line: 60, baseType: !21, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !683, file: !684, line: 61, baseType: !21, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !683, file: !684, line: 64, baseType: !21, size: 64, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !683, file: !684, line: 65, baseType: !21, size: 64, offset: 640)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !683, file: !684, line: 66, baseType: !21, size: 64, offset: 704)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !683, file: !684, line: 68, baseType: !699, size: 64, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !684, line: 36, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !683, file: !684, line: 70, baseType: !682, size: 64, offset: 832)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !683, file: !684, line: 72, baseType: !34, size: 32, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !683, file: !684, line: 73, baseType: !34, size: 32, offset: 928)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !683, file: !684, line: 74, baseType: !705, size: 64, offset: 960)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !706, line: 152, baseType: !707)
!706 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!707 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !683, file: !684, line: 77, baseType: !92, size: 16, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !683, file: !684, line: 78, baseType: !710, size: 8, offset: 1040)
!710 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !683, file: !684, line: 79, baseType: !712, size: 8, offset: 1048)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 1)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !683, file: !684, line: 81, baseType: !716, size: 64, offset: 1088)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !684, line: 43, baseType: null)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !683, file: !684, line: 89, baseType: !719, size: 64, offset: 1152)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !706, line: 153, baseType: !707)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !683, file: !684, line: 91, baseType: !721, size: 64, offset: 1216)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !684, line: 37, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !683, file: !684, line: 92, baseType: !724, size: 64, offset: 1280)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !684, line: 38, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !683, file: !684, line: 93, baseType: !682, size: 64, offset: 1344)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !683, file: !684, line: 94, baseType: !23, size: 64, offset: 1408)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !683, file: !684, line: 95, baseType: !93, size: 64, offset: 1472)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !683, file: !684, line: 96, baseType: !34, size: 32, offset: 1536)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !683, file: !684, line: 98, baseType: !731, size: 160, offset: 1568)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 20)
!734 = !DISubprogram(name: "setlocale", scope: !735, file: !735, line: 122, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!735 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!736 = !DISubroutineType(types: !737)
!737 = !{!21, !34, !31}
!738 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 77, type: !739, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!739 = !DISubroutineType(types: !740)
!740 = !{!34, !34, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!742 = !{!743, !744, !745, !749, !750, !751, !752, !753, !754, !757, !760}
!743 = !DILocalVariable(name: "argc", arg: 1, scope: !738, file: !3, line: 77, type: !34)
!744 = !DILocalVariable(name: "argv", arg: 2, scope: !738, file: !3, line: 77, type: !741)
!745 = !DILocalVariable(name: "newmode", scope: !738, file: !3, line: 79, type: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !747, line: 69, baseType: !748)
!747 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !706, line: 150, baseType: !7)
!749 = !DILocalVariable(name: "specified_mode", scope: !738, file: !3, line: 80, type: !31)
!750 = !DILocalVariable(name: "exit_status", scope: !738, file: !3, line: 81, type: !34)
!751 = !DILocalVariable(name: "optc", scope: !738, file: !3, line: 82, type: !34)
!752 = !DILocalVariable(name: "scontext", scope: !738, file: !3, line: 83, type: !31)
!753 = !DILocalVariable(name: "set_security_context", scope: !738, file: !3, line: 84, type: !53)
!754 = !DILocalVariable(name: "ret", scope: !755, file: !3, line: 136, type: !34)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 135, column: 5)
!756 = distinct !DILexicalBlock(scope: !738, file: !3, line: 134, column: 7)
!757 = !DILocalVariable(name: "umask_value", scope: !758, file: !3, line: 151, type: !746)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 150, column: 5)
!759 = distinct !DILexicalBlock(scope: !738, file: !3, line: 149, column: 7)
!760 = !DILocalVariable(name: "change", scope: !758, file: !3, line: 152, type: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !763, line: 25, flags: DIFlagFwdDecl)
!763 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!764 = !DILocation(line: 0, scope: !738)
!765 = !DILocation(line: 87, column: 21, scope: !738)
!766 = !DILocation(line: 87, column: 3, scope: !738)
!767 = !DILocation(line: 88, column: 3, scope: !738)
!768 = !DILocation(line: 89, column: 3, scope: !738)
!769 = !DILocation(line: 90, column: 3, scope: !738)
!770 = !DILocation(line: 92, column: 3, scope: !738)
!771 = !DILocation(line: 94, column: 3, scope: !738)
!772 = !DILocation(line: 94, column: 18, scope: !738)
!773 = !DILocation(line: 99, column: 28, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 97, column: 9)
!775 = distinct !DILexicalBlock(scope: !738, file: !3, line: 95, column: 5)
!776 = !DILocation(line: 100, column: 11, scope: !774)
!777 = distinct !{!777, !771, !778, !654}
!778 = !DILocation(line: 126, column: 5, scope: !738)
!779 = !DILocation(line: 114, column: 20, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 114, column: 20)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 107, column: 20)
!782 = distinct !DILexicalBlock(scope: !774, file: !3, line: 102, column: 15)
!783 = !DILocation(line: 114, column: 20, scope: !781)
!784 = !DILocation(line: 117, column: 22, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !3, line: 115, column: 13)
!786 = !DILocation(line: 116, column: 15, scope: !785)
!787 = !DILocation(line: 119, column: 13, scope: !785)
!788 = !DILocation(line: 121, column: 9, scope: !774)
!789 = !DILocation(line: 122, column: 9, scope: !774)
!790 = !DILocation(line: 124, column: 11, scope: !774)
!791 = !DILocation(line: 128, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !738, file: !3, line: 128, column: 7)
!793 = !{!794, !794, i64 0}
!794 = !{!"int", !607, i64 0}
!795 = !DILocation(line: 128, column: 14, scope: !792)
!796 = !DILocation(line: 128, column: 7, scope: !738)
!797 = !DILocation(line: 130, column: 20, scope: !798)
!798 = distinct !DILexicalBlock(scope: !792, file: !3, line: 129, column: 5)
!799 = !DILocation(line: 130, column: 7, scope: !798)
!800 = !DILocation(line: 131, column: 7, scope: !798)
!801 = !DILocation(line: 149, column: 7, scope: !759)
!802 = !DILocation(line: 149, column: 7, scope: !738)
!803 = !DILocation(line: 152, column: 36, scope: !758)
!804 = !DILocation(line: 0, scope: !758)
!805 = !DILocation(line: 153, column: 12, scope: !806)
!806 = distinct !DILexicalBlock(scope: !758, file: !3, line: 153, column: 11)
!807 = !DILocation(line: 153, column: 11, scope: !758)
!808 = !DILocation(line: 154, column: 9, scope: !806)
!809 = !DILocation(line: 155, column: 21, scope: !758)
!810 = !DILocation(line: 156, column: 7, scope: !758)
!811 = !DILocation(line: 157, column: 17, scope: !758)
!812 = !DILocation(line: 158, column: 13, scope: !758)
!813 = !DILocation(line: 158, column: 7, scope: !758)
!814 = !DILocation(line: 159, column: 19, scope: !815)
!815 = distinct !DILexicalBlock(scope: !758, file: !3, line: 159, column: 11)
!816 = !DILocation(line: 159, column: 11, scope: !758)
!817 = !DILocation(line: 164, column: 10, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 164, column: 3)
!819 = distinct !DILexicalBlock(scope: !738, file: !3, line: 164, column: 3)
!820 = !DILocation(line: 160, column: 9, scope: !815)
!821 = !DILocation(line: 164, column: 17, scope: !818)
!822 = !DILocation(line: 164, column: 3, scope: !819)
!823 = !DILocation(line: 168, column: 19, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 168, column: 11)
!825 = distinct !DILexicalBlock(scope: !818, file: !3, line: 165, column: 5)
!826 = !DILocation(line: 168, column: 11, scope: !824)
!827 = !DILocation(line: 168, column: 42, scope: !824)
!828 = !DILocation(line: 168, column: 11, scope: !825)
!829 = !DILocation(line: 170, column: 21, scope: !830)
!830 = distinct !DILexicalBlock(scope: !824, file: !3, line: 169, column: 9)
!831 = !DILocation(line: 170, column: 28, scope: !830)
!832 = !DILocation(line: 170, column: 56, scope: !830)
!833 = !DILocation(line: 170, column: 11, scope: !830)
!834 = !DILocation(line: 172, column: 9, scope: !830)
!835 = !DILocation(line: 173, column: 31, scope: !836)
!836 = distinct !DILexicalBlock(scope: !824, file: !3, line: 173, column: 16)
!837 = !DILocation(line: 173, column: 47, scope: !836)
!838 = !DILocation(line: 173, column: 42, scope: !836)
!839 = !DILocation(line: 173, column: 34, scope: !836)
!840 = !DILocation(line: 173, column: 65, scope: !836)
!841 = !DILocation(line: 173, column: 16, scope: !824)
!842 = !DILocation(line: 175, column: 21, scope: !843)
!843 = distinct !DILexicalBlock(scope: !836, file: !3, line: 174, column: 9)
!844 = !DILocation(line: 175, column: 28, scope: !843)
!845 = !DILocation(line: 176, column: 18, scope: !843)
!846 = !DILocation(line: 175, column: 11, scope: !843)
!847 = !DILocation(line: 178, column: 9, scope: !843)
!848 = !DILocation(line: 164, column: 25, scope: !818)
!849 = distinct !{!849, !822, !850, !654}
!850 = !DILocation(line: 179, column: 5, scope: !819)
!851 = !DILocation(line: 181, column: 3, scope: !738)
!852 = !DISubprogram(name: "bindtextdomain", scope: !675, file: !675, line: 86, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!853 = !DISubroutineType(types: !854)
!854 = !{!21, !31, !31}
!855 = !DISubprogram(name: "textdomain", scope: !675, file: !675, line: 82, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!856 = !DISubroutineType(types: !857)
!857 = !{!21, !31}
!858 = !DISubprogram(name: "atexit", scope: !859, file: !859, line: 595, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!859 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!860 = !DISubroutineType(types: !861)
!861 = !{!34, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!863 = !DISubprogram(name: "getopt_long", scope: !28, file: !28, line: 66, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!864 = !DISubroutineType(types: !865)
!865 = !{!34, !34, !866, !31, !868, !36}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!869 = !DISubprogram(name: "error", scope: !870, file: !870, line: 52, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!870 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!871 = !DISubroutineType(types: !872)
!872 = !{null, !34, !34, !31, null}
!873 = !DISubprogram(name: "umask", scope: !874, file: !874, line: 308, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!874 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!875 = !DISubroutineType(types: !876)
!876 = !{!7, !7}
!877 = !DISubprogram(name: "mkfifo", scope: !874, file: !874, line: 346, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!878 = !DISubroutineType(types: !879)
!879 = !{!34, !31, !7}
!880 = !DISubprogram(name: "lchmod", scope: !874, file: !874, line: 287, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!881 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !49, file: !49, line: 51, type: !624, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !882)
!882 = !{!883}
!883 = !DILocalVariable(name: "file", arg: 1, scope: !881, file: !49, line: 51, type: !31)
!884 = !DILocation(line: 0, scope: !881)
!885 = !DILocation(line: 53, column: 13, scope: !881)
!886 = !DILocation(line: 54, column: 1, scope: !881)
!887 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !49, file: !49, line: 88, type: !888, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !53}
!890 = !{!891}
!891 = !DILocalVariable(name: "ignore", arg: 1, scope: !887, file: !49, line: 88, type: !53)
!892 = !DILocation(line: 0, scope: !887)
!893 = !DILocation(line: 90, column: 16, scope: !887)
!894 = !{!895, !895, i64 0}
!895 = !{!"_Bool", !607, i64 0}
!896 = !DILocation(line: 91, column: 1, scope: !887)
!897 = distinct !DISubprogram(name: "close_stdout", scope: !49, file: !49, line: 117, type: !615, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !48, retainedNodes: !898)
!898 = !{!899}
!899 = !DILocalVariable(name: "write_error", scope: !900, file: !49, line: 122, type: !31)
!900 = distinct !DILexicalBlock(scope: !901, file: !49, line: 121, column: 5)
!901 = distinct !DILexicalBlock(scope: !897, file: !49, line: 119, column: 7)
!902 = !DILocation(line: 119, column: 21, scope: !901)
!903 = !DILocation(line: 119, column: 7, scope: !901)
!904 = !DILocation(line: 119, column: 29, scope: !901)
!905 = !DILocation(line: 120, column: 7, scope: !901)
!906 = !DILocation(line: 120, column: 12, scope: !901)
!907 = !{i8 0, i8 2}
!908 = !DILocation(line: 120, column: 25, scope: !901)
!909 = !DILocation(line: 120, column: 28, scope: !901)
!910 = !DILocation(line: 120, column: 34, scope: !901)
!911 = !DILocation(line: 119, column: 7, scope: !897)
!912 = !DILocation(line: 122, column: 33, scope: !900)
!913 = !DILocation(line: 0, scope: !900)
!914 = !DILocation(line: 123, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !900, file: !49, line: 123, column: 11)
!916 = !DILocation(line: 0, scope: !915)
!917 = !DILocation(line: 123, column: 11, scope: !900)
!918 = !DILocation(line: 124, column: 36, scope: !915)
!919 = !DILocation(line: 124, column: 9, scope: !915)
!920 = !DILocation(line: 127, column: 9, scope: !915)
!921 = !DILocation(line: 129, column: 14, scope: !900)
!922 = !DILocation(line: 129, column: 7, scope: !900)
!923 = !DILocation(line: 134, column: 42, scope: !924)
!924 = distinct !DILexicalBlock(scope: !897, file: !49, line: 134, column: 7)
!925 = !DILocation(line: 134, column: 28, scope: !924)
!926 = !DILocation(line: 134, column: 50, scope: !924)
!927 = !DILocation(line: 134, column: 7, scope: !897)
!928 = !DILocation(line: 135, column: 12, scope: !924)
!929 = !DILocation(line: 135, column: 5, scope: !924)
!930 = !DILocation(line: 136, column: 1, scope: !897)
!931 = distinct !DISubprogram(name: "mode_compile", scope: !148, file: !148, line: 134, type: !932, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !942)
!932 = !DISubroutineType(types: !933)
!933 = !{!934, !31}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !148, line: 98, size: 128, elements: !936)
!936 = !{!937, !938, !939, !940, !941}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !935, file: !148, line: 100, baseType: !22, size: 8)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !935, file: !148, line: 101, baseType: !22, size: 8, offset: 8)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !935, file: !148, line: 102, baseType: !746, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !935, file: !148, line: 103, baseType: !746, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !935, file: !148, line: 104, baseType: !746, size: 32, offset: 96)
!942 = !{!943, !944, !945, !946, !947, !950, !951, !952, !954, !958, !960, !961, !962, !963, !964, !967, !968, !969}
!943 = !DILocalVariable(name: "mode_string", arg: 1, scope: !931, file: !148, line: 134, type: !31)
!944 = !DILocalVariable(name: "mc", scope: !931, file: !148, line: 137, type: !934)
!945 = !DILocalVariable(name: "used", scope: !931, file: !148, line: 138, type: !93)
!946 = !DILocalVariable(name: "p", scope: !931, file: !148, line: 139, type: !31)
!947 = !DILocalVariable(name: "octal_mode", scope: !948, file: !148, line: 143, type: !7)
!948 = distinct !DILexicalBlock(scope: !949, file: !148, line: 142, column: 5)
!949 = distinct !DILexicalBlock(scope: !931, file: !148, line: 141, column: 7)
!950 = !DILocalVariable(name: "mode", scope: !948, file: !148, line: 144, type: !746)
!951 = !DILocalVariable(name: "mentioned", scope: !948, file: !148, line: 145, type: !746)
!952 = !DILocalVariable(name: "needed", scope: !953, file: !148, line: 168, type: !93)
!953 = distinct !DILexicalBlock(scope: !931, file: !148, line: 167, column: 3)
!954 = !DILocalVariable(name: "affected", scope: !955, file: !148, line: 179, type: !746)
!955 = distinct !DILexicalBlock(scope: !956, file: !148, line: 177, column: 5)
!956 = distinct !DILexicalBlock(scope: !957, file: !148, line: 176, column: 3)
!957 = distinct !DILexicalBlock(scope: !931, file: !148, line: 176, column: 3)
!958 = !DILocalVariable(name: "op", scope: !959, file: !148, line: 206, type: !22)
!959 = distinct !DILexicalBlock(scope: !955, file: !148, line: 205, column: 9)
!960 = !DILocalVariable(name: "value", scope: !959, file: !148, line: 207, type: !746)
!961 = !DILocalVariable(name: "mentioned", scope: !959, file: !148, line: 208, type: !746)
!962 = !DILocalVariable(name: "flag", scope: !959, file: !148, line: 209, type: !22)
!963 = !DILocalVariable(name: "change", scope: !959, file: !148, line: 210, type: !934)
!964 = !DILocalVariable(name: "octal_mode", scope: !965, file: !148, line: 217, type: !7)
!965 = distinct !DILexicalBlock(scope: !966, file: !148, line: 216, column: 15)
!966 = distinct !DILexicalBlock(scope: !959, file: !148, line: 213, column: 13)
!967 = !DILabel(scope: !955, name: "no_more_affected", file: !148, line: 202)
!968 = !DILabel(scope: !966, name: "no_more_values", file: !148, line: 284)
!969 = !DILabel(scope: !931, name: "invalid", file: !148, line: 307)
!970 = !DILocation(line: 0, scope: !931)
!971 = !DILocation(line: 141, column: 14, scope: !949)
!972 = !{!607, !607, i64 0}
!973 = !DILocation(line: 141, column: 27, scope: !949)
!974 = !DILocation(line: 150, column: 41, scope: !975)
!975 = distinct !DILexicalBlock(scope: !948, file: !148, line: 149, column: 9)
!976 = !DILocation(line: 0, scope: !948)
!977 = !DILocation(line: 150, column: 26, scope: !975)
!978 = !DILocation(line: 150, column: 43, scope: !975)
!979 = !DILocation(line: 150, column: 39, scope: !975)
!980 = !DILocation(line: 150, column: 46, scope: !975)
!981 = !DILocation(line: 151, column: 20, scope: !982)
!982 = distinct !DILexicalBlock(scope: !975, file: !148, line: 151, column: 15)
!983 = !DILocation(line: 151, column: 15, scope: !975)
!984 = !DILocation(line: 154, column: 21, scope: !948)
!985 = !DILocation(line: 154, column: 24, scope: !948)
!986 = distinct !{!986, !987, !988, !654}
!987 = !DILocation(line: 148, column: 7, scope: !948)
!988 = !DILocation(line: 154, column: 35, scope: !948)
!989 = !DILocation(line: 156, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !948, file: !148, line: 156, column: 11)
!991 = !DILocation(line: 156, column: 11, scope: !948)
!992 = !DILocation(line: 160, column: 22, scope: !948)
!993 = !DILocation(line: 160, column: 36, scope: !948)
!994 = !DILocation(line: 160, column: 20, scope: !948)
!995 = !DILocalVariable(name: "new_mode", arg: 1, scope: !996, file: !148, line: 112, type: !746)
!996 = distinct !DISubprogram(name: "make_node_op_equals", scope: !148, file: !148, line: 112, type: !997, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{!934, !746, !746}
!999 = !{!995, !1000, !1001}
!1000 = !DILocalVariable(name: "mentioned", arg: 2, scope: !996, file: !148, line: 112, type: !746)
!1001 = !DILocalVariable(name: "p", scope: !996, file: !148, line: 114, type: !934)
!1002 = !DILocation(line: 0, scope: !996, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 163, column: 14, scope: !948)
!1004 = !DILocation(line: 114, column: 27, scope: !996, inlinedAt: !1003)
!1005 = !DILocation(line: 115, column: 9, scope: !996, inlinedAt: !1003)
!1006 = !{!1007, !607, i64 0}
!1007 = !{!"mode_change", !607, i64 0, !607, i64 1, !794, i64 4, !794, i64 8, !794, i64 12}
!1008 = !DILocation(line: 116, column: 6, scope: !996, inlinedAt: !1003)
!1009 = !DILocation(line: 116, column: 11, scope: !996, inlinedAt: !1003)
!1010 = !{!1007, !607, i64 1}
!1011 = !DILocation(line: 117, column: 6, scope: !996, inlinedAt: !1003)
!1012 = !DILocation(line: 117, column: 15, scope: !996, inlinedAt: !1003)
!1013 = !{!1007, !794, i64 4}
!1014 = !DILocation(line: 118, column: 6, scope: !996, inlinedAt: !1003)
!1015 = !DILocation(line: 118, column: 12, scope: !996, inlinedAt: !1003)
!1016 = !{!1007, !794, i64 8}
!1017 = !DILocation(line: 119, column: 6, scope: !996, inlinedAt: !1003)
!1018 = !DILocation(line: 119, column: 16, scope: !996, inlinedAt: !1003)
!1019 = !{!1007, !794, i64 12}
!1020 = !DILocation(line: 120, column: 8, scope: !996, inlinedAt: !1003)
!1021 = !DILocation(line: 120, column: 13, scope: !996, inlinedAt: !1003)
!1022 = !DILocation(line: 163, column: 7, scope: !948)
!1023 = !DILocation(line: 169, column: 27, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !148, line: 169, column: 5)
!1025 = distinct !DILexicalBlock(scope: !953, file: !148, line: 169, column: 5)
!1026 = !DILocation(line: 0, scope: !1025)
!1027 = !DILocation(line: 0, scope: !953)
!1028 = !DILocation(line: 169, column: 5, scope: !1025)
!1029 = !DILocation(line: 170, column: 41, scope: !1024)
!1030 = !DILocation(line: 170, column: 14, scope: !1024)
!1031 = !DILocation(line: 169, column: 32, scope: !1024)
!1032 = !DILocation(line: 169, column: 5, scope: !1024)
!1033 = distinct !{!1033, !1028, !1034, !654}
!1034 = !DILocation(line: 170, column: 53, scope: !1025)
!1035 = !DILocalVariable(name: "n", arg: 1, scope: !1036, file: !168, line: 99, type: !93)
!1036 = distinct !DISubprogram(name: "xnmalloc", scope: !168, file: !168, line: 99, type: !1037, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!23, !93, !93}
!1039 = !{!1035, !1040}
!1040 = !DILocalVariable(name: "s", arg: 2, scope: !1036, file: !168, line: 99, type: !93)
!1041 = !DILocation(line: 0, scope: !1036, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 171, column: 10, scope: !953)
!1043 = !DILocation(line: 101, column: 7, scope: !1044, inlinedAt: !1042)
!1044 = distinct !DILexicalBlock(scope: !1036, file: !168, line: 101, column: 7)
!1045 = !DILocation(line: 101, column: 7, scope: !1036, inlinedAt: !1042)
!1046 = !DILocation(line: 102, column: 5, scope: !1044, inlinedAt: !1042)
!1047 = !DILocation(line: 103, column: 21, scope: !1036, inlinedAt: !1042)
!1048 = !DILocation(line: 103, column: 10, scope: !1036, inlinedAt: !1042)
!1049 = !DILocation(line: 171, column: 10, scope: !953)
!1050 = !DILocation(line: 176, column: 8, scope: !957)
!1051 = !DILocation(line: 0, scope: !957)
!1052 = !DILocation(line: 138, column: 10, scope: !931)
!1053 = !DILocation(line: 0, scope: !959)
!1054 = !DILocation(line: 0, scope: !955)
!1055 = !DILocation(line: 182, column: 7, scope: !955)
!1056 = !DILocation(line: 183, column: 17, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !148, line: 182, column: 7)
!1058 = distinct !DILexicalBlock(scope: !955, file: !148, line: 182, column: 7)
!1059 = !DILocation(line: 183, column: 9, scope: !1057)
!1060 = !DILocation(line: 212, column: 11, scope: !959)
!1061 = !DILocation(line: 192, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !148, line: 184, column: 11)
!1063 = !DILocation(line: 195, column: 13, scope: !1062)
!1064 = !DILocation(line: 198, column: 13, scope: !1062)
!1065 = !DILocation(line: 0, scope: !1062)
!1066 = !DILocation(line: 182, column: 16, scope: !1057)
!1067 = !DILocation(line: 182, column: 7, scope: !1057)
!1068 = distinct !{!1068, !1069, !1070}
!1069 = !DILocation(line: 182, column: 7, scope: !1058)
!1070 = !DILocation(line: 201, column: 11, scope: !1058)
!1071 = !DILocation(line: 206, column: 21, scope: !959)
!1072 = !DILocation(line: 179, column: 14, scope: !955)
!1073 = !DILocation(line: 206, column: 23, scope: !959)
!1074 = !DILocation(line: 212, column: 19, scope: !959)
!1075 = !DILocation(line: 219, column: 17, scope: !965)
!1076 = !DILocation(line: 221, column: 51, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !965, file: !148, line: 220, column: 19)
!1078 = !DILocation(line: 0, scope: !965)
!1079 = !DILocation(line: 221, column: 36, scope: !1077)
!1080 = !DILocation(line: 221, column: 53, scope: !1077)
!1081 = !DILocation(line: 221, column: 49, scope: !1077)
!1082 = !DILocation(line: 221, column: 56, scope: !1077)
!1083 = !DILocation(line: 222, column: 30, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1077, file: !148, line: 222, column: 25)
!1085 = !DILocation(line: 222, column: 25, scope: !1077)
!1086 = !DILocation(line: 225, column: 31, scope: !965)
!1087 = !DILocation(line: 225, column: 34, scope: !965)
!1088 = distinct !{!1088, !1075, !1089, !654}
!1089 = !DILocation(line: 225, column: 45, scope: !965)
!1090 = !DILocation(line: 227, column: 21, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !965, file: !148, line: 227, column: 21)
!1092 = !DILocation(line: 227, column: 30, scope: !1091)
!1093 = !DILocation(line: 227, column: 37, scope: !1091)
!1094 = !DILocation(line: 239, column: 16, scope: !966)
!1095 = !DILocation(line: 240, column: 15, scope: !966)
!1096 = !DILocation(line: 245, column: 16, scope: !966)
!1097 = !DILocation(line: 246, column: 15, scope: !966)
!1098 = !DILocation(line: 251, column: 16, scope: !966)
!1099 = !DILocation(line: 252, column: 15, scope: !966)
!1100 = !DILocation(line: 259, column: 25, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !148, line: 258, column: 15)
!1102 = distinct !DILexicalBlock(scope: !966, file: !148, line: 258, column: 15)
!1103 = !DILocation(line: 0, scope: !966)
!1104 = !DILocation(line: 256, column: 20, scope: !966)
!1105 = !DILocation(line: 259, column: 17, scope: !1101)
!1106 = !DILocation(line: 262, column: 27, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !148, line: 260, column: 19)
!1108 = !DILocation(line: 263, column: 21, scope: !1107)
!1109 = !DILocation(line: 265, column: 27, scope: !1107)
!1110 = !DILocation(line: 266, column: 21, scope: !1107)
!1111 = !DILocation(line: 268, column: 27, scope: !1107)
!1112 = !DILocation(line: 269, column: 21, scope: !1107)
!1113 = !DILocation(line: 275, column: 27, scope: !1107)
!1114 = !DILocation(line: 276, column: 21, scope: !1107)
!1115 = !DILocation(line: 279, column: 27, scope: !1107)
!1116 = !DILocation(line: 280, column: 21, scope: !1107)
!1117 = !DILocation(line: 258, column: 24, scope: !1101)
!1118 = !DILocation(line: 258, column: 15, scope: !1101)
!1119 = distinct !{!1119, !1120, !1121}
!1120 = !DILocation(line: 258, column: 15, scope: !1102)
!1121 = !DILocation(line: 283, column: 19, scope: !1102)
!1122 = !DILocation(line: 208, column: 18, scope: !959)
!1123 = !DILocation(line: 287, column: 28, scope: !959)
!1124 = !DILocation(line: 288, column: 19, scope: !959)
!1125 = !DILocation(line: 288, column: 22, scope: !959)
!1126 = !DILocation(line: 289, column: 19, scope: !959)
!1127 = !DILocation(line: 289, column: 24, scope: !959)
!1128 = !DILocation(line: 290, column: 19, scope: !959)
!1129 = !DILocation(line: 290, column: 28, scope: !959)
!1130 = !DILocation(line: 291, column: 19, scope: !959)
!1131 = !DILocation(line: 291, column: 25, scope: !959)
!1132 = !DILocation(line: 293, column: 14, scope: !959)
!1133 = !DILocation(line: 292, column: 19, scope: !959)
!1134 = !DILocation(line: 292, column: 29, scope: !959)
!1135 = !DILocation(line: 295, column: 14, scope: !955)
!1136 = !DILocation(line: 295, column: 24, scope: !955)
!1137 = !DILocation(line: 176, column: 28, scope: !956)
!1138 = !DILocation(line: 176, column: 3, scope: !956)
!1139 = distinct !{!1139, !1140, !1141}
!1140 = !DILocation(line: 176, column: 3, scope: !957)
!1141 = !DILocation(line: 299, column: 5, scope: !957)
!1142 = !DILocation(line: 303, column: 16, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !148, line: 302, column: 5)
!1144 = distinct !DILexicalBlock(scope: !931, file: !148, line: 301, column: 7)
!1145 = !DILocation(line: 303, column: 21, scope: !1143)
!1146 = !DILocation(line: 304, column: 7, scope: !1143)
!1147 = !DILocation(line: 307, column: 1, scope: !931)
!1148 = !DILocation(line: 308, column: 3, scope: !931)
!1149 = !DILocation(line: 309, column: 3, scope: !931)
!1150 = !DILocation(line: 310, column: 1, scope: !931)
!1151 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !148, file: !148, line: 316, type: !932, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1152)
!1152 = !{!1153, !1154}
!1153 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1151, file: !148, line: 316, type: !31)
!1154 = !DILocalVariable(name: "ref_stats", scope: !1151, file: !148, line: 318, type: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1156, line: 26, size: 1152, elements: !1157)
!1156 = !DIFile(filename: "/usr/include/bits/struct_stat.h", directory: "")
!1157 = !{!1158, !1160, !1162, !1164, !1165, !1167, !1169, !1170, !1171, !1172, !1174, !1176, !1184, !1185, !1186}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1155, file: !1156, line: 28, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !706, line: 145, baseType: !95)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1155, file: !1156, line: 33, baseType: !1161, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !706, line: 148, baseType: !95)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1155, file: !1156, line: 41, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !706, line: 151, baseType: !95)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1155, file: !1156, line: 42, baseType: !748, size: 32, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1155, file: !1156, line: 44, baseType: !1166, size: 32, offset: 224)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !706, line: 146, baseType: !7)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1155, file: !1156, line: 45, baseType: !1168, size: 32, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !706, line: 147, baseType: !7)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1155, file: !1156, line: 47, baseType: !34, size: 32, offset: 288)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1155, file: !1156, line: 49, baseType: !1159, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1155, file: !1156, line: 54, baseType: !705, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1155, file: !1156, line: 58, baseType: !1173, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !706, line: 175, baseType: !707)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1155, file: !1156, line: 60, baseType: !1175, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !706, line: 180, baseType: !707)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1155, file: !1156, line: 71, baseType: !1177, size: 128, offset: 576)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1178, line: 10, size: 128, elements: !1179)
!1178 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1179 = !{!1180, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1177, file: !1178, line: 12, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !706, line: 160, baseType: !707)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1177, file: !1178, line: 16, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !706, line: 197, baseType: !707)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1155, file: !1156, line: 72, baseType: !1177, size: 128, offset: 704)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1155, file: !1156, line: 73, baseType: !1177, size: 128, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1155, file: !1156, line: 86, baseType: !1187, size: 192, offset: 960)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 192, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 3)
!1190 = !DILocation(line: 0, scope: !1151)
!1191 = !DILocation(line: 318, column: 3, scope: !1151)
!1192 = !DILocation(line: 318, column: 15, scope: !1151)
!1193 = !DILocation(line: 320, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1151, file: !148, line: 320, column: 7)
!1195 = !DILocation(line: 320, column: 35, scope: !1194)
!1196 = !DILocation(line: 320, column: 7, scope: !1151)
!1197 = !DILocation(line: 322, column: 41, scope: !1151)
!1198 = !{!1199, !794, i64 24}
!1199 = !{!"stat", !1200, i64 0, !1200, i64 8, !1200, i64 16, !794, i64 24, !794, i64 28, !794, i64 32, !794, i64 36, !1200, i64 40, !1200, i64 48, !1200, i64 56, !1200, i64 64, !1201, i64 72, !1201, i64 88, !1201, i64 104, !607, i64 120}
!1200 = !{!"long", !607, i64 0}
!1201 = !{!"timespec", !1200, i64 0, !1200, i64 8}
!1202 = !DILocation(line: 0, scope: !996, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 322, column: 10, scope: !1151)
!1204 = !DILocation(line: 114, column: 27, scope: !996, inlinedAt: !1203)
!1205 = !DILocation(line: 115, column: 9, scope: !996, inlinedAt: !1203)
!1206 = !DILocation(line: 116, column: 6, scope: !996, inlinedAt: !1203)
!1207 = !DILocation(line: 116, column: 11, scope: !996, inlinedAt: !1203)
!1208 = !DILocation(line: 117, column: 6, scope: !996, inlinedAt: !1203)
!1209 = !DILocation(line: 117, column: 15, scope: !996, inlinedAt: !1203)
!1210 = !DILocation(line: 118, column: 6, scope: !996, inlinedAt: !1203)
!1211 = !DILocation(line: 118, column: 12, scope: !996, inlinedAt: !1203)
!1212 = !DILocation(line: 119, column: 6, scope: !996, inlinedAt: !1203)
!1213 = !DILocation(line: 119, column: 16, scope: !996, inlinedAt: !1203)
!1214 = !DILocation(line: 120, column: 8, scope: !996, inlinedAt: !1203)
!1215 = !DILocation(line: 120, column: 13, scope: !996, inlinedAt: !1203)
!1216 = !DILocation(line: 322, column: 3, scope: !1151)
!1217 = !DILocation(line: 323, column: 1, scope: !1151)
!1218 = !DISubprogram(name: "stat", scope: !874, file: !874, line: 205, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!34, !31, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1222 = distinct !DISubprogram(name: "mode_adjust", scope: !148, file: !148, line: 339, type: !1223, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1228)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!746, !746, !53, !746, !1225, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1240, !1241, !1242}
!1229 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1222, file: !148, line: 339, type: !746)
!1230 = !DILocalVariable(name: "dir", arg: 2, scope: !1222, file: !148, line: 339, type: !53)
!1231 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1222, file: !148, line: 339, type: !746)
!1232 = !DILocalVariable(name: "changes", arg: 4, scope: !1222, file: !148, line: 340, type: !1225)
!1233 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1222, file: !148, line: 340, type: !1227)
!1234 = !DILocalVariable(name: "newmode", scope: !1222, file: !148, line: 343, type: !746)
!1235 = !DILocalVariable(name: "mode_bits", scope: !1222, file: !148, line: 346, type: !746)
!1236 = !DILocalVariable(name: "affected", scope: !1237, file: !148, line: 350, type: !746)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !148, line: 349, column: 5)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !148, line: 348, column: 3)
!1239 = distinct !DILexicalBlock(scope: !1222, file: !148, line: 348, column: 3)
!1240 = !DILocalVariable(name: "omit_change", scope: !1237, file: !148, line: 351, type: !746)
!1241 = !DILocalVariable(name: "value", scope: !1237, file: !148, line: 353, type: !746)
!1242 = !DILocalVariable(name: "preserved", scope: !1243, file: !148, line: 393, type: !746)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !148, line: 392, column: 11)
!1244 = distinct !DILexicalBlock(scope: !1237, file: !148, line: 387, column: 9)
!1245 = !DILocation(line: 0, scope: !1222)
!1246 = !DILocation(line: 343, column: 28, scope: !1222)
!1247 = !DILocation(line: 348, column: 19, scope: !1238)
!1248 = !DILocation(line: 348, column: 24, scope: !1238)
!1249 = !DILocation(line: 348, column: 3, scope: !1239)
!1250 = !DILocation(line: 348, column: 10, scope: !1238)
!1251 = !DILocation(line: 350, column: 34, scope: !1237)
!1252 = !DILocation(line: 0, scope: !1237)
!1253 = !DILocation(line: 352, column: 52, scope: !1237)
!1254 = !DILocation(line: 352, column: 41, scope: !1237)
!1255 = !DILocation(line: 352, column: 39, scope: !1237)
!1256 = !DILocation(line: 353, column: 31, scope: !1237)
!1257 = !DILocation(line: 355, column: 7, scope: !1237)
!1258 = !DILocation(line: 362, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1237, file: !148, line: 356, column: 9)
!1260 = !DILocation(line: 365, column: 28, scope: !1259)
!1261 = !DILocation(line: 365, column: 22, scope: !1259)
!1262 = !DILocation(line: 367, column: 30, scope: !1259)
!1263 = !DILocation(line: 367, column: 24, scope: !1259)
!1264 = !DILocation(line: 369, column: 30, scope: !1259)
!1265 = !DILocation(line: 369, column: 24, scope: !1259)
!1266 = !DILocation(line: 367, column: 21, scope: !1259)
!1267 = !DILocation(line: 369, column: 21, scope: !1259)
!1268 = !DILocation(line: 365, column: 17, scope: !1259)
!1269 = !DILocation(line: 371, column: 11, scope: !1259)
!1270 = !DILocation(line: 376, column: 24, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1259, file: !148, line: 376, column: 15)
!1272 = !DILocation(line: 376, column: 57, scope: !1271)
!1273 = !DILocation(line: 376, column: 15, scope: !1259)
!1274 = !DILocation(line: 384, column: 17, scope: !1237)
!1275 = !DILocation(line: 384, column: 55, scope: !1237)
!1276 = !DILocation(line: 384, column: 53, scope: !1237)
!1277 = !DILocation(line: 384, column: 13, scope: !1237)
!1278 = !DILocation(line: 386, column: 24, scope: !1237)
!1279 = !DILocation(line: 386, column: 15, scope: !1237)
!1280 = !DILocation(line: 386, column: 7, scope: !1237)
!1281 = !DILocation(line: 393, column: 33, scope: !1243)
!1282 = !DILocation(line: 393, column: 59, scope: !1243)
!1283 = !DILocation(line: 0, scope: !1243)
!1284 = !DILocation(line: 394, column: 42, scope: !1243)
!1285 = !DILocation(line: 394, column: 23, scope: !1243)
!1286 = !DILocation(line: 395, column: 32, scope: !1243)
!1287 = !DILocation(line: 395, column: 45, scope: !1243)
!1288 = !DILocation(line: 400, column: 21, scope: !1244)
!1289 = !DILocation(line: 401, column: 19, scope: !1244)
!1290 = !DILocation(line: 402, column: 11, scope: !1244)
!1291 = !DILocation(line: 405, column: 21, scope: !1244)
!1292 = !DILocation(line: 406, column: 22, scope: !1244)
!1293 = !DILocation(line: 406, column: 19, scope: !1244)
!1294 = !DILocation(line: 407, column: 11, scope: !1244)
!1295 = !DILocation(line: 348, column: 45, scope: !1238)
!1296 = distinct !{!1296, !1249, !1297, !654}
!1297 = !DILocation(line: 409, column: 5, scope: !1239)
!1298 = !DILocation(line: 346, column: 10, scope: !1222)
!1299 = !DILocation(line: 343, column: 10, scope: !1222)
!1300 = !DILocation(line: 411, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1222, file: !148, line: 411, column: 7)
!1302 = !DILocation(line: 411, column: 7, scope: !1222)
!1303 = !DILocation(line: 412, column: 17, scope: !1301)
!1304 = !DILocation(line: 412, column: 5, scope: !1301)
!1305 = !DILocation(line: 413, column: 3, scope: !1222)
!1306 = distinct !DISubprogram(name: "set_program_name", scope: !63, file: !63, line: 39, type: !624, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !1307)
!1307 = !{!1308, !1309, !1310}
!1308 = !DILocalVariable(name: "argv0", arg: 1, scope: !1306, file: !63, line: 39, type: !31)
!1309 = !DILocalVariable(name: "slash", scope: !1306, file: !63, line: 46, type: !31)
!1310 = !DILocalVariable(name: "base", scope: !1306, file: !63, line: 47, type: !31)
!1311 = !DILocation(line: 0, scope: !1306)
!1312 = !DILocation(line: 51, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1306, file: !63, line: 51, column: 7)
!1314 = !DILocation(line: 51, column: 7, scope: !1306)
!1315 = !DILocation(line: 55, column: 14, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !63, line: 52, column: 5)
!1317 = !DILocation(line: 54, column: 7, scope: !1316)
!1318 = !DILocation(line: 56, column: 7, scope: !1316)
!1319 = !DILocation(line: 59, column: 11, scope: !1306)
!1320 = !DILocation(line: 60, column: 17, scope: !1306)
!1321 = !DILocation(line: 60, column: 11, scope: !1306)
!1322 = !DILocation(line: 61, column: 12, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1306, file: !63, line: 61, column: 7)
!1324 = !DILocation(line: 61, column: 20, scope: !1323)
!1325 = !DILocation(line: 61, column: 25, scope: !1323)
!1326 = !DILocation(line: 61, column: 42, scope: !1323)
!1327 = !DILocation(line: 61, column: 28, scope: !1323)
!1328 = !DILocation(line: 61, column: 61, scope: !1323)
!1329 = !DILocation(line: 61, column: 7, scope: !1306)
!1330 = !DILocation(line: 64, column: 11, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !63, line: 64, column: 11)
!1332 = distinct !DILexicalBlock(scope: !1323, file: !63, line: 62, column: 5)
!1333 = !DILocation(line: 64, column: 36, scope: !1331)
!1334 = !DILocation(line: 64, column: 11, scope: !1332)
!1335 = !DILocation(line: 66, column: 24, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !63, line: 65, column: 9)
!1337 = !DILocation(line: 70, column: 41, scope: !1336)
!1338 = !DILocation(line: 72, column: 9, scope: !1336)
!1339 = !DILocation(line: 84, column: 16, scope: !1306)
!1340 = !DILocation(line: 90, column: 27, scope: !1306)
!1341 = !DILocation(line: 92, column: 1, scope: !1306)
!1342 = distinct !DISubprogram(name: "clone_quoting_options", scope: !69, file: !69, line: 122, type: !1343, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1346)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1345, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1346 = !{!1347, !1348, !1349}
!1347 = !DILocalVariable(name: "o", arg: 1, scope: !1342, file: !69, line: 122, type: !1345)
!1348 = !DILocalVariable(name: "e", scope: !1342, file: !69, line: 124, type: !34)
!1349 = !DILocalVariable(name: "p", scope: !1342, file: !69, line: 125, type: !1345)
!1350 = !DILocation(line: 0, scope: !1342)
!1351 = !DILocation(line: 124, column: 11, scope: !1342)
!1352 = !DILocation(line: 125, column: 40, scope: !1342)
!1353 = !DILocation(line: 125, column: 31, scope: !1342)
!1354 = !DILocation(line: 127, column: 9, scope: !1342)
!1355 = !DILocation(line: 128, column: 3, scope: !1342)
!1356 = distinct !DISubprogram(name: "get_quoting_style", scope: !69, file: !69, line: 133, type: !1357, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1361)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!5, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!1361 = !{!1362}
!1362 = !DILocalVariable(name: "o", arg: 1, scope: !1356, file: !69, line: 133, type: !1359)
!1363 = !DILocation(line: 0, scope: !1356)
!1364 = !DILocation(line: 135, column: 11, scope: !1356)
!1365 = !DILocation(line: 135, column: 46, scope: !1356)
!1366 = !{!1367, !607, i64 0}
!1367 = !{!"quoting_options", !607, i64 0, !794, i64 4, !607, i64 8, !606, i64 40, !606, i64 48}
!1368 = !DILocation(line: 135, column: 3, scope: !1356)
!1369 = distinct !DISubprogram(name: "set_quoting_style", scope: !69, file: !69, line: 141, type: !1370, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1372)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1345, !5}
!1372 = !{!1373, !1374}
!1373 = !DILocalVariable(name: "o", arg: 1, scope: !1369, file: !69, line: 141, type: !1345)
!1374 = !DILocalVariable(name: "s", arg: 2, scope: !1369, file: !69, line: 141, type: !5)
!1375 = !DILocation(line: 0, scope: !1369)
!1376 = !DILocation(line: 143, column: 4, scope: !1369)
!1377 = !DILocation(line: 143, column: 39, scope: !1369)
!1378 = !DILocation(line: 143, column: 45, scope: !1369)
!1379 = !DILocation(line: 144, column: 1, scope: !1369)
!1380 = distinct !DISubprogram(name: "set_char_quoting", scope: !69, file: !69, line: 152, type: !1381, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!34, !1345, !22, !34}
!1383 = !{!1384, !1385, !1386, !1387, !1389, !1391, !1392}
!1384 = !DILocalVariable(name: "o", arg: 1, scope: !1380, file: !69, line: 152, type: !1345)
!1385 = !DILocalVariable(name: "c", arg: 2, scope: !1380, file: !69, line: 152, type: !22)
!1386 = !DILocalVariable(name: "i", arg: 3, scope: !1380, file: !69, line: 152, type: !34)
!1387 = !DILocalVariable(name: "uc", scope: !1380, file: !69, line: 154, type: !1388)
!1388 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1389 = !DILocalVariable(name: "p", scope: !1380, file: !69, line: 155, type: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1391 = !DILocalVariable(name: "shift", scope: !1380, file: !69, line: 157, type: !34)
!1392 = !DILocalVariable(name: "r", scope: !1380, file: !69, line: 158, type: !34)
!1393 = !DILocation(line: 0, scope: !1380)
!1394 = !DILocation(line: 156, column: 6, scope: !1380)
!1395 = !DILocation(line: 156, column: 62, scope: !1380)
!1396 = !DILocation(line: 156, column: 57, scope: !1380)
!1397 = !DILocation(line: 157, column: 15, scope: !1380)
!1398 = !DILocation(line: 158, column: 12, scope: !1380)
!1399 = !DILocation(line: 158, column: 15, scope: !1380)
!1400 = !DILocation(line: 158, column: 25, scope: !1380)
!1401 = !DILocation(line: 159, column: 13, scope: !1380)
!1402 = !DILocation(line: 159, column: 18, scope: !1380)
!1403 = !DILocation(line: 159, column: 23, scope: !1380)
!1404 = !DILocation(line: 159, column: 6, scope: !1380)
!1405 = !DILocation(line: 160, column: 3, scope: !1380)
!1406 = distinct !DISubprogram(name: "set_quoting_flags", scope: !69, file: !69, line: 168, type: !1407, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!34, !1345, !34}
!1409 = !{!1410, !1411, !1412}
!1410 = !DILocalVariable(name: "o", arg: 1, scope: !1406, file: !69, line: 168, type: !1345)
!1411 = !DILocalVariable(name: "i", arg: 2, scope: !1406, file: !69, line: 168, type: !34)
!1412 = !DILocalVariable(name: "r", scope: !1406, file: !69, line: 170, type: !34)
!1413 = !DILocation(line: 0, scope: !1406)
!1414 = !DILocation(line: 171, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !69, line: 171, column: 7)
!1416 = !DILocation(line: 171, column: 7, scope: !1406)
!1417 = !DILocation(line: 173, column: 10, scope: !1406)
!1418 = !{!1367, !794, i64 4}
!1419 = !DILocation(line: 174, column: 12, scope: !1406)
!1420 = !DILocation(line: 175, column: 3, scope: !1406)
!1421 = distinct !DISubprogram(name: "set_custom_quoting", scope: !69, file: !69, line: 179, type: !1422, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1424)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !1345, !31, !31}
!1424 = !{!1425, !1426, !1427}
!1425 = !DILocalVariable(name: "o", arg: 1, scope: !1421, file: !69, line: 179, type: !1345)
!1426 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1421, file: !69, line: 180, type: !31)
!1427 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1421, file: !69, line: 180, type: !31)
!1428 = !DILocation(line: 0, scope: !1421)
!1429 = !DILocation(line: 182, column: 8, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1421, file: !69, line: 182, column: 7)
!1431 = !DILocation(line: 182, column: 7, scope: !1421)
!1432 = !DILocation(line: 184, column: 6, scope: !1421)
!1433 = !DILocation(line: 184, column: 12, scope: !1421)
!1434 = !DILocation(line: 185, column: 8, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1421, file: !69, line: 185, column: 7)
!1436 = !DILocation(line: 185, column: 19, scope: !1435)
!1437 = !DILocation(line: 186, column: 5, scope: !1435)
!1438 = !DILocation(line: 187, column: 6, scope: !1421)
!1439 = !DILocation(line: 187, column: 17, scope: !1421)
!1440 = !{!1367, !606, i64 40}
!1441 = !DILocation(line: 188, column: 6, scope: !1421)
!1442 = !DILocation(line: 188, column: 18, scope: !1421)
!1443 = !{!1367, !606, i64 48}
!1444 = !DILocation(line: 189, column: 1, scope: !1421)
!1445 = distinct !DISubprogram(name: "quotearg_buffer", scope: !69, file: !69, line: 784, type: !1446, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!93, !21, !93, !31, !93, !1359}
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456}
!1449 = !DILocalVariable(name: "buffer", arg: 1, scope: !1445, file: !69, line: 784, type: !21)
!1450 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1445, file: !69, line: 784, type: !93)
!1451 = !DILocalVariable(name: "arg", arg: 3, scope: !1445, file: !69, line: 785, type: !31)
!1452 = !DILocalVariable(name: "argsize", arg: 4, scope: !1445, file: !69, line: 785, type: !93)
!1453 = !DILocalVariable(name: "o", arg: 5, scope: !1445, file: !69, line: 786, type: !1359)
!1454 = !DILocalVariable(name: "p", scope: !1445, file: !69, line: 788, type: !1359)
!1455 = !DILocalVariable(name: "e", scope: !1445, file: !69, line: 789, type: !34)
!1456 = !DILocalVariable(name: "r", scope: !1445, file: !69, line: 790, type: !93)
!1457 = !DILocation(line: 0, scope: !1445)
!1458 = !DILocation(line: 788, column: 37, scope: !1445)
!1459 = !DILocation(line: 789, column: 11, scope: !1445)
!1460 = !DILocation(line: 791, column: 43, scope: !1445)
!1461 = !DILocation(line: 791, column: 53, scope: !1445)
!1462 = !DILocation(line: 791, column: 60, scope: !1445)
!1463 = !DILocation(line: 792, column: 43, scope: !1445)
!1464 = !DILocation(line: 792, column: 58, scope: !1445)
!1465 = !DILocation(line: 790, column: 14, scope: !1445)
!1466 = !DILocation(line: 793, column: 9, scope: !1445)
!1467 = !DILocation(line: 794, column: 3, scope: !1445)
!1468 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !69, file: !69, line: 256, type: !1469, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1473)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!93, !21, !93, !31, !93, !5, !34, !1471, !31, !31}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1498, !1499, !1500, !1501, !1502, !1505, !1506, !1524, !1527, !1528, !1535, !1538, !1539, !1540, !1541, !1542, !1543}
!1474 = !DILocalVariable(name: "buffer", arg: 1, scope: !1468, file: !69, line: 256, type: !21)
!1475 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1468, file: !69, line: 256, type: !93)
!1476 = !DILocalVariable(name: "arg", arg: 3, scope: !1468, file: !69, line: 257, type: !31)
!1477 = !DILocalVariable(name: "argsize", arg: 4, scope: !1468, file: !69, line: 257, type: !93)
!1478 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1468, file: !69, line: 258, type: !5)
!1479 = !DILocalVariable(name: "flags", arg: 6, scope: !1468, file: !69, line: 258, type: !34)
!1480 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1468, file: !69, line: 259, type: !1471)
!1481 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1468, file: !69, line: 260, type: !31)
!1482 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1468, file: !69, line: 261, type: !31)
!1483 = !DILocalVariable(name: "i", scope: !1468, file: !69, line: 263, type: !93)
!1484 = !DILocalVariable(name: "len", scope: !1468, file: !69, line: 264, type: !93)
!1485 = !DILocalVariable(name: "orig_buffersize", scope: !1468, file: !69, line: 265, type: !93)
!1486 = !DILocalVariable(name: "quote_string", scope: !1468, file: !69, line: 266, type: !31)
!1487 = !DILocalVariable(name: "quote_string_len", scope: !1468, file: !69, line: 267, type: !93)
!1488 = !DILocalVariable(name: "backslash_escapes", scope: !1468, file: !69, line: 268, type: !53)
!1489 = !DILocalVariable(name: "unibyte_locale", scope: !1468, file: !69, line: 269, type: !53)
!1490 = !DILocalVariable(name: "elide_outer_quotes", scope: !1468, file: !69, line: 270, type: !53)
!1491 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1468, file: !69, line: 271, type: !53)
!1492 = !DILocalVariable(name: "encountered_single_quote", scope: !1468, file: !69, line: 272, type: !53)
!1493 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1468, file: !69, line: 273, type: !53)
!1494 = !DILocalVariable(name: "c", scope: !1495, file: !69, line: 402, type: !1388)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !69, line: 401, column: 5)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !69, line: 400, column: 3)
!1497 = distinct !DILexicalBlock(scope: !1468, file: !69, line: 400, column: 3)
!1498 = !DILocalVariable(name: "esc", scope: !1495, file: !69, line: 403, type: !1388)
!1499 = !DILocalVariable(name: "is_right_quote", scope: !1495, file: !69, line: 404, type: !53)
!1500 = !DILocalVariable(name: "escaping", scope: !1495, file: !69, line: 405, type: !53)
!1501 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1495, file: !69, line: 406, type: !53)
!1502 = !DILocalVariable(name: "m", scope: !1503, file: !69, line: 610, type: !93)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 608, column: 11)
!1504 = distinct !DILexicalBlock(scope: !1495, file: !69, line: 426, column: 9)
!1505 = !DILocalVariable(name: "printable", scope: !1503, file: !69, line: 612, type: !53)
!1506 = !DILocalVariable(name: "mbstate", scope: !1507, file: !69, line: 621, type: !1509)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !69, line: 620, column: 15)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !69, line: 614, column: 17)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1510, line: 6, baseType: !1511)
!1510 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1512, line: 21, baseType: !1513)
!1512 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1512, line: 13, size: 64, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1513, file: !1512, line: 15, baseType: !34, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1513, file: !1512, line: 20, baseType: !1517, size: 32, offset: 32)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1513, file: !1512, line: 16, size: 32, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1517, file: !1512, line: 18, baseType: !7, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1517, file: !1512, line: 19, baseType: !1521, size: 32)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1522)
!1522 = !{!1523}
!1523 = !DISubrange(count: 4)
!1524 = !DILocalVariable(name: "w", scope: !1525, file: !69, line: 631, type: !1526)
!1525 = distinct !DILexicalBlock(scope: !1507, file: !69, line: 630, column: 19)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 74, baseType: !34)
!1527 = !DILocalVariable(name: "bytes", scope: !1525, file: !69, line: 632, type: !93)
!1528 = !DILocalVariable(name: "j", scope: !1529, file: !69, line: 657, type: !93)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !69, line: 656, column: 27)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !69, line: 654, column: 29)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !69, line: 649, column: 23)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !69, line: 641, column: 30)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !69, line: 636, column: 30)
!1534 = distinct !DILexicalBlock(scope: !1525, file: !69, line: 634, column: 25)
!1535 = !DILocalVariable(name: "ilim", scope: !1536, file: !69, line: 684, type: !93)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !69, line: 681, column: 15)
!1537 = distinct !DILexicalBlock(scope: !1503, file: !69, line: 680, column: 17)
!1538 = !DILabel(scope: !1468, name: "process_input", file: !69, line: 314)
!1539 = !DILabel(scope: !1504, name: "c_and_shell_escape", file: !69, line: 512)
!1540 = !DILabel(scope: !1504, name: "c_escape", file: !69, line: 517)
!1541 = !DILabel(scope: !1495, name: "store_escape", file: !69, line: 719)
!1542 = !DILabel(scope: !1495, name: "store_c", file: !69, line: 722)
!1543 = !DILabel(scope: !1468, name: "force_outer_quoting_style", file: !69, line: 763)
!1544 = !DILocation(line: 0, scope: !1468)
!1545 = !DILocation(line: 269, column: 25, scope: !1468)
!1546 = !DILocation(line: 269, column: 36, scope: !1468)
!1547 = !DILocation(line: 270, column: 8, scope: !1468)
!1548 = !DILocation(line: 273, column: 3, scope: !1468)
!1549 = !DILocation(line: 265, column: 10, scope: !1468)
!1550 = !DILocation(line: 266, column: 15, scope: !1468)
!1551 = !DILocation(line: 267, column: 10, scope: !1468)
!1552 = !DILocation(line: 268, column: 8, scope: !1468)
!1553 = !DILocation(line: 271, column: 8, scope: !1468)
!1554 = !DILocation(line: 272, column: 8, scope: !1468)
!1555 = !DILocation(line: 273, column: 8, scope: !1468)
!1556 = !DILocation(line: 314, column: 2, scope: !1468)
!1557 = !DILocation(line: 316, column: 3, scope: !1468)
!1558 = !DILocation(line: 323, column: 11, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1468, file: !69, line: 317, column: 5)
!1560 = !DILocation(line: 323, column: 12, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1559, file: !69, line: 323, column: 11)
!1562 = !DILocation(line: 324, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !69, line: 324, column: 9)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !69, line: 324, column: 9)
!1565 = !DILocation(line: 324, column: 9, scope: !1564)
!1566 = !DILocation(line: 362, column: 26, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !69, line: 340, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !69, line: 339, column: 13)
!1569 = distinct !DILexicalBlock(scope: !1559, file: !69, line: 338, column: 7)
!1570 = !DILocation(line: 363, column: 27, scope: !1567)
!1571 = !DILocation(line: 364, column: 11, scope: !1567)
!1572 = !DILocation(line: 365, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !69, line: 365, column: 13)
!1574 = !DILocation(line: 365, column: 13, scope: !1569)
!1575 = !DILocation(line: 366, column: 43, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !69, line: 366, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !69, line: 366, column: 11)
!1578 = !DILocation(line: 366, column: 11, scope: !1577)
!1579 = !DILocation(line: 367, column: 13, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !69, line: 367, column: 13)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !69, line: 367, column: 13)
!1582 = !DILocation(line: 367, column: 13, scope: !1581)
!1583 = !DILocation(line: 366, column: 70, scope: !1576)
!1584 = distinct !{!1584, !1578, !1585, !654}
!1585 = !DILocation(line: 367, column: 13, scope: !1577)
!1586 = !DILocation(line: 264, column: 10, scope: !1468)
!1587 = !DILocation(line: 370, column: 28, scope: !1569)
!1588 = !DILocation(line: 372, column: 7, scope: !1559)
!1589 = !DILocation(line: 376, column: 7, scope: !1559)
!1590 = !DILocation(line: 379, column: 7, scope: !1559)
!1591 = !DILocation(line: 381, column: 12, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1559, file: !69, line: 381, column: 11)
!1593 = !DILocation(line: 381, column: 11, scope: !1559)
!1594 = !DILocation(line: 386, column: 12, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1559, file: !69, line: 386, column: 11)
!1596 = !DILocation(line: 386, column: 11, scope: !1559)
!1597 = !DILocation(line: 387, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !69, line: 387, column: 9)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !69, line: 387, column: 9)
!1600 = !DILocation(line: 387, column: 9, scope: !1599)
!1601 = !DILocation(line: 394, column: 7, scope: !1559)
!1602 = !DILocation(line: 397, column: 7, scope: !1559)
!1603 = !DILocation(line: 400, column: 8, scope: !1497)
!1604 = !DILocation(line: 0, scope: !1497)
!1605 = !DILocation(line: 400, column: 27, scope: !1496)
!1606 = !DILocation(line: 400, column: 19, scope: !1496)
!1607 = !DILocation(line: 400, column: 41, scope: !1496)
!1608 = !DILocation(line: 400, column: 48, scope: !1496)
!1609 = !DILocation(line: 400, column: 3, scope: !1497)
!1610 = !DILocation(line: 400, column: 60, scope: !1496)
!1611 = !DILocation(line: 0, scope: !1495)
!1612 = !DILocation(line: 409, column: 11, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1495, file: !69, line: 408, column: 11)
!1614 = !DILocation(line: 411, column: 17, scope: !1613)
!1615 = !DILocation(line: 412, column: 39, scope: !1613)
!1616 = !DILocation(line: 416, column: 32, scope: !1613)
!1617 = !DILocation(line: 412, column: 19, scope: !1613)
!1618 = !DILocation(line: 412, column: 15, scope: !1613)
!1619 = !DILocation(line: 417, column: 11, scope: !1613)
!1620 = !DILocation(line: 417, column: 26, scope: !1613)
!1621 = !DILocation(line: 417, column: 14, scope: !1613)
!1622 = !DILocation(line: 417, column: 63, scope: !1613)
!1623 = !DILocation(line: 408, column: 11, scope: !1495)
!1624 = !DILocation(line: 424, column: 11, scope: !1495)
!1625 = !DILocation(line: 425, column: 7, scope: !1495)
!1626 = !DILocation(line: 428, column: 15, scope: !1504)
!1627 = !DILocation(line: 430, column: 15, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !69, line: 430, column: 15)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !69, line: 429, column: 13)
!1630 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 428, column: 15)
!1631 = !DILocation(line: 430, column: 15, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !69, line: 430, column: 15)
!1633 = !DILocation(line: 430, column: 15, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !69, line: 430, column: 15)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !69, line: 430, column: 15)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !69, line: 430, column: 15)
!1637 = !DILocation(line: 430, column: 15, scope: !1635)
!1638 = !DILocation(line: 430, column: 15, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !69, line: 430, column: 15)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !69, line: 430, column: 15)
!1641 = !DILocation(line: 430, column: 15, scope: !1640)
!1642 = !DILocation(line: 430, column: 15, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !69, line: 430, column: 15)
!1644 = distinct !DILexicalBlock(scope: !1636, file: !69, line: 430, column: 15)
!1645 = !DILocation(line: 430, column: 15, scope: !1644)
!1646 = !DILocation(line: 430, column: 15, scope: !1636)
!1647 = !DILocation(line: 430, column: 15, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !69, line: 430, column: 15)
!1649 = distinct !DILexicalBlock(scope: !1628, file: !69, line: 430, column: 15)
!1650 = !DILocation(line: 430, column: 15, scope: !1649)
!1651 = !DILocation(line: 438, column: 19, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1629, file: !69, line: 437, column: 19)
!1653 = !DILocation(line: 438, column: 48, scope: !1652)
!1654 = !DILocation(line: 438, column: 59, scope: !1652)
!1655 = !DILocation(line: 440, column: 19, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !69, line: 440, column: 19)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !69, line: 440, column: 19)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !69, line: 439, column: 17)
!1659 = !DILocation(line: 440, column: 19, scope: !1657)
!1660 = !DILocation(line: 441, column: 19, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !69, line: 441, column: 19)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !69, line: 441, column: 19)
!1663 = !DILocation(line: 441, column: 19, scope: !1662)
!1664 = !DILocation(line: 442, column: 17, scope: !1658)
!1665 = !DILocation(line: 449, column: 20, scope: !1630)
!1666 = !DILocation(line: 454, column: 11, scope: !1504)
!1667 = !DILocation(line: 457, column: 19, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 455, column: 13)
!1669 = !DILocation(line: 463, column: 19, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1668, file: !69, line: 462, column: 19)
!1671 = !DILocation(line: 463, column: 47, scope: !1670)
!1672 = !DILocation(line: 463, column: 41, scope: !1670)
!1673 = !DILocation(line: 463, column: 52, scope: !1670)
!1674 = !DILocation(line: 462, column: 19, scope: !1668)
!1675 = !DILocation(line: 464, column: 25, scope: !1670)
!1676 = !DILocation(line: 464, column: 17, scope: !1670)
!1677 = !DILocation(line: 471, column: 25, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1670, file: !69, line: 465, column: 19)
!1679 = !DILocation(line: 475, column: 21, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !69, line: 475, column: 21)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !69, line: 475, column: 21)
!1682 = !DILocation(line: 475, column: 21, scope: !1681)
!1683 = !DILocation(line: 476, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !69, line: 476, column: 21)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !69, line: 476, column: 21)
!1686 = !DILocation(line: 476, column: 21, scope: !1685)
!1687 = !DILocation(line: 477, column: 21, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !69, line: 477, column: 21)
!1689 = distinct !DILexicalBlock(scope: !1678, file: !69, line: 477, column: 21)
!1690 = !DILocation(line: 477, column: 21, scope: !1689)
!1691 = !DILocation(line: 478, column: 21, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !69, line: 478, column: 21)
!1693 = distinct !DILexicalBlock(scope: !1678, file: !69, line: 478, column: 21)
!1694 = !DILocation(line: 478, column: 21, scope: !1693)
!1695 = !DILocation(line: 479, column: 21, scope: !1678)
!1696 = !DILocation(line: 492, column: 31, scope: !1504)
!1697 = !DILocation(line: 493, column: 31, scope: !1504)
!1698 = !DILocation(line: 495, column: 31, scope: !1504)
!1699 = !DILocation(line: 496, column: 31, scope: !1504)
!1700 = !DILocation(line: 497, column: 31, scope: !1504)
!1701 = !DILocation(line: 500, column: 15, scope: !1504)
!1702 = !DILocation(line: 502, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !69, line: 501, column: 13)
!1704 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 500, column: 15)
!1705 = !DILocation(line: 509, column: 33, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 509, column: 15)
!1707 = !DILocation(line: 0, scope: !1504)
!1708 = !DILocation(line: 512, column: 9, scope: !1504)
!1709 = !DILocation(line: 514, column: 15, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 513, column: 15)
!1711 = !DILocation(line: 517, column: 9, scope: !1504)
!1712 = !DILocation(line: 518, column: 15, scope: !1504)
!1713 = !DILocation(line: 526, column: 15, scope: !1504)
!1714 = !DILocation(line: 526, column: 40, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 526, column: 15)
!1716 = !DILocation(line: 526, column: 47, scope: !1715)
!1717 = !DILocation(line: 526, column: 18, scope: !1715)
!1718 = !DILocation(line: 530, column: 17, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 530, column: 15)
!1720 = !DILocation(line: 530, column: 15, scope: !1504)
!1721 = !DILocation(line: 535, column: 11, scope: !1504)
!1722 = !DILocation(line: 549, column: 15, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 548, column: 15)
!1724 = !DILocation(line: 556, column: 15, scope: !1504)
!1725 = !DILocation(line: 558, column: 19, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !69, line: 557, column: 13)
!1727 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 556, column: 15)
!1728 = !DILocation(line: 561, column: 19, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !69, line: 561, column: 19)
!1730 = !DILocation(line: 561, column: 30, scope: !1729)
!1731 = !DILocation(line: 570, column: 15, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !69, line: 570, column: 15)
!1733 = distinct !DILexicalBlock(scope: !1726, file: !69, line: 570, column: 15)
!1734 = !DILocation(line: 570, column: 15, scope: !1733)
!1735 = !DILocation(line: 571, column: 15, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !69, line: 571, column: 15)
!1737 = distinct !DILexicalBlock(scope: !1726, file: !69, line: 571, column: 15)
!1738 = !DILocation(line: 571, column: 15, scope: !1737)
!1739 = !DILocation(line: 572, column: 15, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !69, line: 572, column: 15)
!1741 = distinct !DILexicalBlock(scope: !1726, file: !69, line: 572, column: 15)
!1742 = !DILocation(line: 572, column: 15, scope: !1741)
!1743 = !DILocation(line: 574, column: 13, scope: !1726)
!1744 = !DILocation(line: 614, column: 17, scope: !1503)
!1745 = !DILocation(line: 0, scope: !1503)
!1746 = !DILocation(line: 617, column: 29, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1508, file: !69, line: 615, column: 15)
!1748 = !{!1749, !1749, i64 0}
!1749 = !{!"short", !607, i64 0}
!1750 = !DILocation(line: 617, column: 27, scope: !1747)
!1751 = !DILocation(line: 678, column: 40, scope: !1503)
!1752 = !DILocation(line: 680, column: 23, scope: !1537)
!1753 = !DILocation(line: 621, column: 17, scope: !1507)
!1754 = !DILocation(line: 621, column: 27, scope: !1507)
!1755 = !DILocalVariable(name: "__dest", arg: 1, scope: !1756, file: !1757, line: 57, type: !23)
!1756 = distinct !DISubprogram(name: "memset", scope: !1757, file: !1757, line: 57, type: !1758, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1760)
!1757 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!23, !23, !34, !93}
!1760 = !{!1755, !1761, !1762}
!1761 = !DILocalVariable(name: "__ch", arg: 2, scope: !1756, file: !1757, line: 57, type: !34)
!1762 = !DILocalVariable(name: "__len", arg: 3, scope: !1756, file: !1757, line: 57, type: !93)
!1763 = !DILocation(line: 0, scope: !1756, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 622, column: 17, scope: !1507)
!1765 = !DILocation(line: 59, column: 10, scope: !1756, inlinedAt: !1764)
!1766 = !DILocation(line: 626, column: 29, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1507, file: !69, line: 626, column: 21)
!1768 = !DILocation(line: 626, column: 21, scope: !1507)
!1769 = !DILocation(line: 627, column: 29, scope: !1767)
!1770 = !DILocation(line: 627, column: 19, scope: !1767)
!1771 = !DILocation(line: 629, column: 17, scope: !1507)
!1772 = !DILocation(line: 624, column: 19, scope: !1507)
!1773 = !DILocation(line: 625, column: 27, scope: !1507)
!1774 = !DILocation(line: 631, column: 21, scope: !1525)
!1775 = !DILocation(line: 632, column: 56, scope: !1525)
!1776 = !DILocation(line: 632, column: 50, scope: !1525)
!1777 = !DILocation(line: 633, column: 53, scope: !1525)
!1778 = !DILocation(line: 0, scope: !1525)
!1779 = !DILocation(line: 632, column: 36, scope: !1525)
!1780 = !DILocation(line: 634, column: 25, scope: !1525)
!1781 = !DILocation(line: 644, column: 38, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1532, file: !69, line: 642, column: 23)
!1783 = !DILocation(line: 644, column: 48, scope: !1782)
!1784 = !DILocation(line: 644, column: 25, scope: !1782)
!1785 = !DILocation(line: 644, column: 51, scope: !1782)
!1786 = !DILocation(line: 645, column: 28, scope: !1782)
!1787 = !DILocation(line: 644, column: 34, scope: !1782)
!1788 = distinct !{!1788, !1784, !1786, !654}
!1789 = !DILocation(line: 655, column: 29, scope: !1530)
!1790 = !DILocation(line: 0, scope: !1529)
!1791 = !DILocation(line: 659, column: 49, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !69, line: 658, column: 29)
!1793 = distinct !DILexicalBlock(scope: !1529, file: !69, line: 658, column: 29)
!1794 = !DILocation(line: 659, column: 39, scope: !1792)
!1795 = !DILocation(line: 659, column: 31, scope: !1792)
!1796 = !DILocation(line: 658, column: 53, scope: !1792)
!1797 = !DILocation(line: 658, column: 43, scope: !1792)
!1798 = !DILocation(line: 658, column: 29, scope: !1793)
!1799 = distinct !{!1799, !1798, !1800, !654}
!1800 = !DILocation(line: 667, column: 33, scope: !1793)
!1801 = !DILocation(line: 674, column: 19, scope: !1507)
!1802 = !DILocation(line: 670, column: 41, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1531, file: !69, line: 670, column: 29)
!1804 = !DILocation(line: 670, column: 31, scope: !1803)
!1805 = !DILocation(line: 670, column: 29, scope: !1531)
!1806 = !DILocation(line: 672, column: 27, scope: !1531)
!1807 = !DILocation(line: 675, column: 26, scope: !1507)
!1808 = !DILocation(line: 675, column: 24, scope: !1507)
!1809 = !DILocation(line: 674, column: 19, scope: !1525)
!1810 = distinct !{!1810, !1771, !1811, !654}
!1811 = !DILocation(line: 675, column: 44, scope: !1507)
!1812 = !DILocation(line: 676, column: 15, scope: !1508)
!1813 = !DILocation(line: 680, column: 19, scope: !1537)
!1814 = !DILocation(line: 680, column: 45, scope: !1537)
!1815 = !DILocation(line: 684, column: 33, scope: !1536)
!1816 = !DILocation(line: 0, scope: !1536)
!1817 = !DILocation(line: 686, column: 17, scope: !1536)
!1818 = !DILocation(line: 405, column: 12, scope: !1495)
!1819 = !DILocation(line: 688, column: 43, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !69, line: 688, column: 25)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !69, line: 687, column: 19)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !69, line: 686, column: 17)
!1823 = distinct !DILexicalBlock(scope: !1536, file: !69, line: 686, column: 17)
!1824 = !DILocation(line: 690, column: 25, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !69, line: 690, column: 25)
!1826 = distinct !DILexicalBlock(scope: !1820, file: !69, line: 689, column: 23)
!1827 = !DILocation(line: 690, column: 25, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1825, file: !69, line: 690, column: 25)
!1829 = !DILocation(line: 690, column: 25, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !69, line: 690, column: 25)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !69, line: 690, column: 25)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !69, line: 690, column: 25)
!1833 = !DILocation(line: 690, column: 25, scope: !1831)
!1834 = !DILocation(line: 690, column: 25, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !69, line: 690, column: 25)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !69, line: 690, column: 25)
!1837 = !DILocation(line: 690, column: 25, scope: !1836)
!1838 = !DILocation(line: 690, column: 25, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !69, line: 690, column: 25)
!1840 = distinct !DILexicalBlock(scope: !1832, file: !69, line: 690, column: 25)
!1841 = !DILocation(line: 690, column: 25, scope: !1840)
!1842 = !DILocation(line: 690, column: 25, scope: !1832)
!1843 = !DILocation(line: 690, column: 25, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !69, line: 690, column: 25)
!1845 = distinct !DILexicalBlock(scope: !1825, file: !69, line: 690, column: 25)
!1846 = !DILocation(line: 690, column: 25, scope: !1845)
!1847 = !DILocation(line: 691, column: 25, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !69, line: 691, column: 25)
!1849 = distinct !DILexicalBlock(scope: !1826, file: !69, line: 691, column: 25)
!1850 = !DILocation(line: 691, column: 25, scope: !1849)
!1851 = !DILocation(line: 692, column: 25, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !69, line: 692, column: 25)
!1853 = distinct !DILexicalBlock(scope: !1826, file: !69, line: 692, column: 25)
!1854 = !DILocation(line: 692, column: 25, scope: !1853)
!1855 = !DILocation(line: 693, column: 38, scope: !1826)
!1856 = !DILocation(line: 693, column: 33, scope: !1826)
!1857 = !DILocation(line: 694, column: 23, scope: !1826)
!1858 = !DILocation(line: 695, column: 30, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1820, file: !69, line: 695, column: 30)
!1860 = !DILocation(line: 695, column: 30, scope: !1820)
!1861 = !DILocation(line: 697, column: 25, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !69, line: 697, column: 25)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !69, line: 697, column: 25)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !69, line: 696, column: 23)
!1865 = !DILocation(line: 697, column: 25, scope: !1863)
!1866 = !DILocation(line: 699, column: 23, scope: !1864)
!1867 = !DILocation(line: 700, column: 35, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1821, file: !69, line: 700, column: 25)
!1869 = !DILocation(line: 700, column: 30, scope: !1868)
!1870 = !DILocation(line: 700, column: 25, scope: !1821)
!1871 = !DILocation(line: 702, column: 21, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !69, line: 702, column: 21)
!1873 = distinct !DILexicalBlock(scope: !1821, file: !69, line: 702, column: 21)
!1874 = !DILocation(line: 702, column: 21, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !69, line: 702, column: 21)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !69, line: 702, column: 21)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !69, line: 702, column: 21)
!1878 = !DILocation(line: 702, column: 21, scope: !1876)
!1879 = !DILocation(line: 702, column: 21, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !69, line: 702, column: 21)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !69, line: 702, column: 21)
!1882 = !DILocation(line: 702, column: 21, scope: !1881)
!1883 = !DILocation(line: 702, column: 21, scope: !1877)
!1884 = !DILocation(line: 0, scope: !1821)
!1885 = !DILocation(line: 703, column: 21, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !69, line: 703, column: 21)
!1887 = distinct !DILexicalBlock(scope: !1821, file: !69, line: 703, column: 21)
!1888 = !DILocation(line: 703, column: 21, scope: !1887)
!1889 = !DILocation(line: 704, column: 25, scope: !1821)
!1890 = !DILocation(line: 686, column: 17, scope: !1822)
!1891 = distinct !{!1891, !1892, !1893}
!1892 = !DILocation(line: 686, column: 17, scope: !1823)
!1893 = !DILocation(line: 705, column: 19, scope: !1823)
!1894 = !DILocation(line: 416, column: 30, scope: !1613)
!1895 = !DILocation(line: 712, column: 34, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1495, file: !69, line: 712, column: 11)
!1897 = !DILocation(line: 715, column: 35, scope: !1896)
!1898 = !DILocation(line: 715, column: 17, scope: !1896)
!1899 = !DILocation(line: 715, column: 47, scope: !1896)
!1900 = !DILocation(line: 715, column: 65, scope: !1896)
!1901 = !DILocation(line: 716, column: 11, scope: !1896)
!1902 = !DILocation(line: 712, column: 11, scope: !1495)
!1903 = !DILocation(line: 400, column: 10, scope: !1497)
!1904 = !DILocation(line: 719, column: 5, scope: !1495)
!1905 = !DILocation(line: 720, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1495, file: !69, line: 720, column: 7)
!1907 = !DILocation(line: 720, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1906, file: !69, line: 720, column: 7)
!1909 = !DILocation(line: 720, column: 7, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !69, line: 720, column: 7)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !69, line: 720, column: 7)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !69, line: 720, column: 7)
!1913 = !DILocation(line: 720, column: 7, scope: !1911)
!1914 = !DILocation(line: 720, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !69, line: 720, column: 7)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !69, line: 720, column: 7)
!1917 = !DILocation(line: 720, column: 7, scope: !1916)
!1918 = !DILocation(line: 720, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !69, line: 720, column: 7)
!1920 = distinct !DILexicalBlock(scope: !1912, file: !69, line: 720, column: 7)
!1921 = !DILocation(line: 720, column: 7, scope: !1920)
!1922 = !DILocation(line: 720, column: 7, scope: !1912)
!1923 = !DILocation(line: 720, column: 7, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !69, line: 720, column: 7)
!1925 = distinct !DILexicalBlock(scope: !1906, file: !69, line: 720, column: 7)
!1926 = !DILocation(line: 720, column: 7, scope: !1925)
!1927 = !DILocation(line: 722, column: 5, scope: !1495)
!1928 = !DILocation(line: 723, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !69, line: 723, column: 7)
!1930 = distinct !DILexicalBlock(scope: !1495, file: !69, line: 723, column: 7)
!1931 = !DILocation(line: 424, column: 9, scope: !1495)
!1932 = !DILocation(line: 723, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !69, line: 723, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !69, line: 723, column: 7)
!1935 = distinct !DILexicalBlock(scope: !1929, file: !69, line: 723, column: 7)
!1936 = !DILocation(line: 723, column: 7, scope: !1934)
!1937 = !DILocation(line: 723, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !69, line: 723, column: 7)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !69, line: 723, column: 7)
!1940 = !DILocation(line: 723, column: 7, scope: !1939)
!1941 = !DILocation(line: 723, column: 7, scope: !1935)
!1942 = !DILocation(line: 724, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !69, line: 724, column: 7)
!1944 = distinct !DILexicalBlock(scope: !1495, file: !69, line: 724, column: 7)
!1945 = !DILocation(line: 724, column: 7, scope: !1944)
!1946 = !DILocation(line: 726, column: 13, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1495, file: !69, line: 726, column: 11)
!1948 = !DILocation(line: 726, column: 11, scope: !1495)
!1949 = !DILocation(line: 728, column: 5, scope: !1496)
!1950 = !DILocation(line: 400, column: 75, scope: !1496)
!1951 = !DILocation(line: 400, column: 3, scope: !1496)
!1952 = distinct !{!1952, !1609, !1953, !654}
!1953 = !DILocation(line: 728, column: 5, scope: !1497)
!1954 = !DILocation(line: 730, column: 11, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1468, file: !69, line: 730, column: 7)
!1956 = !DILocation(line: 730, column: 16, scope: !1955)
!1957 = !DILocation(line: 738, column: 51, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1468, file: !69, line: 738, column: 7)
!1959 = !DILocation(line: 741, column: 11, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !69, line: 741, column: 11)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !69, line: 740, column: 5)
!1962 = !DILocation(line: 741, column: 11, scope: !1961)
!1963 = !DILocation(line: 742, column: 16, scope: !1960)
!1964 = !DILocation(line: 742, column: 9, scope: !1960)
!1965 = !DILocation(line: 746, column: 18, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !69, line: 746, column: 16)
!1967 = !DILocation(line: 746, column: 29, scope: !1966)
!1968 = !DILocation(line: 755, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1468, file: !69, line: 755, column: 7)
!1970 = !DILocation(line: 755, column: 20, scope: !1969)
!1971 = !DILocation(line: 756, column: 12, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !69, line: 756, column: 5)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !69, line: 756, column: 5)
!1974 = !DILocation(line: 756, column: 5, scope: !1973)
!1975 = !DILocation(line: 757, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !69, line: 757, column: 7)
!1977 = distinct !DILexicalBlock(scope: !1972, file: !69, line: 757, column: 7)
!1978 = !DILocation(line: 757, column: 7, scope: !1977)
!1979 = !DILocation(line: 756, column: 39, scope: !1972)
!1980 = distinct !{!1980, !1974, !1981, !654}
!1981 = !DILocation(line: 757, column: 7, scope: !1973)
!1982 = !DILocation(line: 759, column: 11, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1468, file: !69, line: 759, column: 7)
!1984 = !DILocation(line: 759, column: 7, scope: !1468)
!1985 = !DILocation(line: 760, column: 5, scope: !1983)
!1986 = !DILocation(line: 760, column: 17, scope: !1983)
!1987 = !DILocation(line: 763, column: 2, scope: !1468)
!1988 = !DILocation(line: 766, column: 51, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1468, file: !69, line: 766, column: 7)
!1990 = !DILocation(line: 766, column: 21, scope: !1989)
!1991 = !DILocation(line: 770, column: 42, scope: !1468)
!1992 = !DILocation(line: 768, column: 10, scope: !1468)
!1993 = !DILocation(line: 768, column: 3, scope: !1468)
!1994 = !DILocation(line: 772, column: 1, scope: !1468)
!1995 = distinct !DISubprogram(name: "gettext_quote", scope: !69, file: !69, line: 207, type: !1996, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!31, !31, !5}
!1998 = !{!1999, !2000, !2001, !2002}
!1999 = !DILocalVariable(name: "msgid", arg: 1, scope: !1995, file: !69, line: 207, type: !31)
!2000 = !DILocalVariable(name: "s", arg: 2, scope: !1995, file: !69, line: 207, type: !5)
!2001 = !DILocalVariable(name: "translation", scope: !1995, file: !69, line: 209, type: !31)
!2002 = !DILocalVariable(name: "locale_code", scope: !1995, file: !69, line: 210, type: !31)
!2003 = !DILocation(line: 0, scope: !1995)
!2004 = !DILocation(line: 209, column: 29, scope: !1995)
!2005 = !DILocation(line: 212, column: 19, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1995, file: !69, line: 212, column: 7)
!2007 = !DILocation(line: 212, column: 7, scope: !1995)
!2008 = !DILocation(line: 233, column: 17, scope: !1995)
!2009 = !DILocalVariable(name: "s1", arg: 1, scope: !2010, file: !2011, line: 160, type: !31)
!2010 = distinct !DISubprogram(name: "strcaseeq0", scope: !2011, file: !2011, line: 160, type: !2012, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2014)
!2011 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!34, !31, !31, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!2014 = !{!2009, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024}
!2015 = !DILocalVariable(name: "s2", arg: 2, scope: !2010, file: !2011, line: 160, type: !31)
!2016 = !DILocalVariable(name: "s20", arg: 3, scope: !2010, file: !2011, line: 160, type: !22)
!2017 = !DILocalVariable(name: "s21", arg: 4, scope: !2010, file: !2011, line: 160, type: !22)
!2018 = !DILocalVariable(name: "s22", arg: 5, scope: !2010, file: !2011, line: 160, type: !22)
!2019 = !DILocalVariable(name: "s23", arg: 6, scope: !2010, file: !2011, line: 160, type: !22)
!2020 = !DILocalVariable(name: "s24", arg: 7, scope: !2010, file: !2011, line: 160, type: !22)
!2021 = !DILocalVariable(name: "s25", arg: 8, scope: !2010, file: !2011, line: 160, type: !22)
!2022 = !DILocalVariable(name: "s26", arg: 9, scope: !2010, file: !2011, line: 160, type: !22)
!2023 = !DILocalVariable(name: "s27", arg: 10, scope: !2010, file: !2011, line: 160, type: !22)
!2024 = !DILocalVariable(name: "s28", arg: 11, scope: !2010, file: !2011, line: 160, type: !22)
!2025 = !DILocation(line: 0, scope: !2010, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 234, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1995, file: !69, line: 234, column: 7)
!2028 = !DILocation(line: 162, column: 7, scope: !2029, inlinedAt: !2026)
!2029 = distinct !DILexicalBlock(scope: !2010, file: !2011, line: 162, column: 7)
!2030 = !DILocalVariable(name: "s1", arg: 1, scope: !2031, file: !2011, line: 146, type: !31)
!2031 = distinct !DISubprogram(name: "strcaseeq1", scope: !2011, file: !2011, line: 146, type: !2032, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!34, !31, !31, !22, !22, !22, !22, !22, !22, !22, !22}
!2034 = !{!2030, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2035 = !DILocalVariable(name: "s2", arg: 2, scope: !2031, file: !2011, line: 146, type: !31)
!2036 = !DILocalVariable(name: "s21", arg: 3, scope: !2031, file: !2011, line: 146, type: !22)
!2037 = !DILocalVariable(name: "s22", arg: 4, scope: !2031, file: !2011, line: 146, type: !22)
!2038 = !DILocalVariable(name: "s23", arg: 5, scope: !2031, file: !2011, line: 146, type: !22)
!2039 = !DILocalVariable(name: "s24", arg: 6, scope: !2031, file: !2011, line: 146, type: !22)
!2040 = !DILocalVariable(name: "s25", arg: 7, scope: !2031, file: !2011, line: 146, type: !22)
!2041 = !DILocalVariable(name: "s26", arg: 8, scope: !2031, file: !2011, line: 146, type: !22)
!2042 = !DILocalVariable(name: "s27", arg: 9, scope: !2031, file: !2011, line: 146, type: !22)
!2043 = !DILocalVariable(name: "s28", arg: 10, scope: !2031, file: !2011, line: 146, type: !22)
!2044 = !DILocation(line: 0, scope: !2031, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 167, column: 16, scope: !2046, inlinedAt: !2026)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !2011, line: 164, column: 11)
!2047 = distinct !DILexicalBlock(scope: !2029, file: !2011, line: 163, column: 5)
!2048 = !DILocation(line: 148, column: 7, scope: !2049, inlinedAt: !2045)
!2049 = distinct !DILexicalBlock(scope: !2031, file: !2011, line: 148, column: 7)
!2050 = !DILocalVariable(name: "s1", arg: 1, scope: !2051, file: !2011, line: 132, type: !31)
!2051 = distinct !DISubprogram(name: "strcaseeq2", scope: !2011, file: !2011, line: 132, type: !2052, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2054)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!34, !31, !31, !22, !22, !22, !22, !22, !22, !22}
!2054 = !{!2050, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062}
!2055 = !DILocalVariable(name: "s2", arg: 2, scope: !2051, file: !2011, line: 132, type: !31)
!2056 = !DILocalVariable(name: "s22", arg: 3, scope: !2051, file: !2011, line: 132, type: !22)
!2057 = !DILocalVariable(name: "s23", arg: 4, scope: !2051, file: !2011, line: 132, type: !22)
!2058 = !DILocalVariable(name: "s24", arg: 5, scope: !2051, file: !2011, line: 132, type: !22)
!2059 = !DILocalVariable(name: "s25", arg: 6, scope: !2051, file: !2011, line: 132, type: !22)
!2060 = !DILocalVariable(name: "s26", arg: 7, scope: !2051, file: !2011, line: 132, type: !22)
!2061 = !DILocalVariable(name: "s27", arg: 8, scope: !2051, file: !2011, line: 132, type: !22)
!2062 = !DILocalVariable(name: "s28", arg: 9, scope: !2051, file: !2011, line: 132, type: !22)
!2063 = !DILocation(line: 0, scope: !2051, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 153, column: 16, scope: !2065, inlinedAt: !2045)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !2011, line: 150, column: 11)
!2066 = distinct !DILexicalBlock(scope: !2049, file: !2011, line: 149, column: 5)
!2067 = !DILocation(line: 134, column: 7, scope: !2068, inlinedAt: !2064)
!2068 = distinct !DILexicalBlock(scope: !2051, file: !2011, line: 134, column: 7)
!2069 = !DILocalVariable(name: "s1", arg: 1, scope: !2070, file: !2011, line: 118, type: !31)
!2070 = distinct !DISubprogram(name: "strcaseeq3", scope: !2011, file: !2011, line: 118, type: !2071, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!34, !31, !31, !22, !22, !22, !22, !22, !22}
!2073 = !{!2069, !2074, !2075, !2076, !2077, !2078, !2079, !2080}
!2074 = !DILocalVariable(name: "s2", arg: 2, scope: !2070, file: !2011, line: 118, type: !31)
!2075 = !DILocalVariable(name: "s23", arg: 3, scope: !2070, file: !2011, line: 118, type: !22)
!2076 = !DILocalVariable(name: "s24", arg: 4, scope: !2070, file: !2011, line: 118, type: !22)
!2077 = !DILocalVariable(name: "s25", arg: 5, scope: !2070, file: !2011, line: 118, type: !22)
!2078 = !DILocalVariable(name: "s26", arg: 6, scope: !2070, file: !2011, line: 118, type: !22)
!2079 = !DILocalVariable(name: "s27", arg: 7, scope: !2070, file: !2011, line: 118, type: !22)
!2080 = !DILocalVariable(name: "s28", arg: 8, scope: !2070, file: !2011, line: 118, type: !22)
!2081 = !DILocation(line: 0, scope: !2070, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 139, column: 16, scope: !2083, inlinedAt: !2064)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !2011, line: 136, column: 11)
!2084 = distinct !DILexicalBlock(scope: !2068, file: !2011, line: 135, column: 5)
!2085 = !DILocation(line: 120, column: 7, scope: !2086, inlinedAt: !2082)
!2086 = distinct !DILexicalBlock(scope: !2070, file: !2011, line: 120, column: 7)
!2087 = !DILocation(line: 120, column: 7, scope: !2070, inlinedAt: !2082)
!2088 = !DILocalVariable(name: "s1", arg: 1, scope: !2089, file: !2011, line: 104, type: !31)
!2089 = distinct !DISubprogram(name: "strcaseeq4", scope: !2011, file: !2011, line: 104, type: !2090, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!34, !31, !31, !22, !22, !22, !22, !22}
!2092 = !{!2088, !2093, !2094, !2095, !2096, !2097, !2098}
!2093 = !DILocalVariable(name: "s2", arg: 2, scope: !2089, file: !2011, line: 104, type: !31)
!2094 = !DILocalVariable(name: "s24", arg: 3, scope: !2089, file: !2011, line: 104, type: !22)
!2095 = !DILocalVariable(name: "s25", arg: 4, scope: !2089, file: !2011, line: 104, type: !22)
!2096 = !DILocalVariable(name: "s26", arg: 5, scope: !2089, file: !2011, line: 104, type: !22)
!2097 = !DILocalVariable(name: "s27", arg: 6, scope: !2089, file: !2011, line: 104, type: !22)
!2098 = !DILocalVariable(name: "s28", arg: 7, scope: !2089, file: !2011, line: 104, type: !22)
!2099 = !DILocation(line: 0, scope: !2089, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 125, column: 16, scope: !2101, inlinedAt: !2082)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !2011, line: 122, column: 11)
!2102 = distinct !DILexicalBlock(scope: !2086, file: !2011, line: 121, column: 5)
!2103 = !DILocation(line: 106, column: 7, scope: !2104, inlinedAt: !2100)
!2104 = distinct !DILexicalBlock(scope: !2089, file: !2011, line: 106, column: 7)
!2105 = !DILocation(line: 106, column: 7, scope: !2089, inlinedAt: !2100)
!2106 = !DILocalVariable(name: "s1", arg: 1, scope: !2107, file: !2011, line: 90, type: !31)
!2107 = distinct !DISubprogram(name: "strcaseeq5", scope: !2011, file: !2011, line: 90, type: !2108, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!34, !31, !31, !22, !22, !22, !22}
!2110 = !{!2106, !2111, !2112, !2113, !2114, !2115}
!2111 = !DILocalVariable(name: "s2", arg: 2, scope: !2107, file: !2011, line: 90, type: !31)
!2112 = !DILocalVariable(name: "s25", arg: 3, scope: !2107, file: !2011, line: 90, type: !22)
!2113 = !DILocalVariable(name: "s26", arg: 4, scope: !2107, file: !2011, line: 90, type: !22)
!2114 = !DILocalVariable(name: "s27", arg: 5, scope: !2107, file: !2011, line: 90, type: !22)
!2115 = !DILocalVariable(name: "s28", arg: 6, scope: !2107, file: !2011, line: 90, type: !22)
!2116 = !DILocation(line: 0, scope: !2107, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 111, column: 16, scope: !2118, inlinedAt: !2100)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !2011, line: 108, column: 11)
!2119 = distinct !DILexicalBlock(scope: !2104, file: !2011, line: 107, column: 5)
!2120 = !DILocation(line: 92, column: 7, scope: !2121, inlinedAt: !2117)
!2121 = distinct !DILexicalBlock(scope: !2107, file: !2011, line: 92, column: 7)
!2122 = !DILocation(line: 92, column: 7, scope: !2107, inlinedAt: !2117)
!2123 = !DILocation(line: 235, column: 12, scope: !2027)
!2124 = !DILocation(line: 235, column: 21, scope: !2027)
!2125 = !DILocation(line: 235, column: 5, scope: !2027)
!2126 = !DILocation(line: 0, scope: !2031, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 167, column: 16, scope: !2046, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 236, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1995, file: !69, line: 236, column: 7)
!2130 = !DILocation(line: 148, column: 7, scope: !2049, inlinedAt: !2127)
!2131 = !DILocation(line: 0, scope: !2051, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 153, column: 16, scope: !2065, inlinedAt: !2127)
!2133 = !DILocation(line: 134, column: 7, scope: !2068, inlinedAt: !2132)
!2134 = !DILocation(line: 134, column: 7, scope: !2051, inlinedAt: !2132)
!2135 = !DILocation(line: 0, scope: !2070, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 139, column: 16, scope: !2083, inlinedAt: !2132)
!2137 = !DILocation(line: 120, column: 7, scope: !2086, inlinedAt: !2136)
!2138 = !DILocation(line: 120, column: 7, scope: !2070, inlinedAt: !2136)
!2139 = !DILocation(line: 0, scope: !2089, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 125, column: 16, scope: !2101, inlinedAt: !2136)
!2141 = !DILocation(line: 106, column: 7, scope: !2104, inlinedAt: !2140)
!2142 = !DILocation(line: 106, column: 7, scope: !2089, inlinedAt: !2140)
!2143 = !DILocation(line: 0, scope: !2107, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 111, column: 16, scope: !2118, inlinedAt: !2140)
!2145 = !DILocation(line: 92, column: 7, scope: !2121, inlinedAt: !2144)
!2146 = !DILocation(line: 92, column: 7, scope: !2107, inlinedAt: !2144)
!2147 = !DILocalVariable(name: "s1", arg: 1, scope: !2148, file: !2011, line: 76, type: !31)
!2148 = distinct !DISubprogram(name: "strcaseeq6", scope: !2011, file: !2011, line: 76, type: !2149, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!34, !31, !31, !22, !22, !22}
!2151 = !{!2147, !2152, !2153, !2154, !2155}
!2152 = !DILocalVariable(name: "s2", arg: 2, scope: !2148, file: !2011, line: 76, type: !31)
!2153 = !DILocalVariable(name: "s26", arg: 3, scope: !2148, file: !2011, line: 76, type: !22)
!2154 = !DILocalVariable(name: "s27", arg: 4, scope: !2148, file: !2011, line: 76, type: !22)
!2155 = !DILocalVariable(name: "s28", arg: 5, scope: !2148, file: !2011, line: 76, type: !22)
!2156 = !DILocation(line: 0, scope: !2148, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 97, column: 16, scope: !2158, inlinedAt: !2144)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !2011, line: 94, column: 11)
!2159 = distinct !DILexicalBlock(scope: !2121, file: !2011, line: 93, column: 5)
!2160 = !DILocation(line: 78, column: 7, scope: !2161, inlinedAt: !2157)
!2161 = distinct !DILexicalBlock(scope: !2148, file: !2011, line: 78, column: 7)
!2162 = !DILocation(line: 78, column: 7, scope: !2148, inlinedAt: !2157)
!2163 = !DILocalVariable(name: "s1", arg: 1, scope: !2164, file: !2011, line: 62, type: !31)
!2164 = distinct !DISubprogram(name: "strcaseeq7", scope: !2011, file: !2011, line: 62, type: !2165, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!34, !31, !31, !22, !22}
!2167 = !{!2163, !2168, !2169, !2170}
!2168 = !DILocalVariable(name: "s2", arg: 2, scope: !2164, file: !2011, line: 62, type: !31)
!2169 = !DILocalVariable(name: "s27", arg: 3, scope: !2164, file: !2011, line: 62, type: !22)
!2170 = !DILocalVariable(name: "s28", arg: 4, scope: !2164, file: !2011, line: 62, type: !22)
!2171 = !DILocation(line: 0, scope: !2164, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 83, column: 16, scope: !2173, inlinedAt: !2157)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !2011, line: 80, column: 11)
!2174 = distinct !DILexicalBlock(scope: !2161, file: !2011, line: 79, column: 5)
!2175 = !DILocation(line: 64, column: 7, scope: !2176, inlinedAt: !2172)
!2176 = distinct !DILexicalBlock(scope: !2164, file: !2011, line: 64, column: 7)
!2177 = !DILocation(line: 236, column: 7, scope: !1995)
!2178 = !DILocation(line: 237, column: 12, scope: !2129)
!2179 = !DILocation(line: 237, column: 21, scope: !2129)
!2180 = !DILocation(line: 237, column: 5, scope: !2129)
!2181 = !DILocation(line: 239, column: 13, scope: !1995)
!2182 = !DILocation(line: 239, column: 11, scope: !1995)
!2183 = !DILocation(line: 239, column: 3, scope: !1995)
!2184 = !DILocation(line: 240, column: 1, scope: !1995)
!2185 = !DISubprogram(name: "iswprint", scope: !2186, file: !2186, line: 120, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!2186 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!34, !7}
!2189 = !DISubprogram(name: "mbsinit", scope: !2190, file: !2190, line: 292, type: !2191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!2190 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!34, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!2195 = distinct !DISubprogram(name: "quotearg_alloc", scope: !69, file: !69, line: 799, type: !2196, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!21, !31, !93, !1359}
!2198 = !{!2199, !2200, !2201}
!2199 = !DILocalVariable(name: "arg", arg: 1, scope: !2195, file: !69, line: 799, type: !31)
!2200 = !DILocalVariable(name: "argsize", arg: 2, scope: !2195, file: !69, line: 799, type: !93)
!2201 = !DILocalVariable(name: "o", arg: 3, scope: !2195, file: !69, line: 800, type: !1359)
!2202 = !DILocation(line: 0, scope: !2195)
!2203 = !DILocalVariable(name: "arg", arg: 1, scope: !2204, file: !69, line: 812, type: !31)
!2204 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !69, file: !69, line: 812, type: !2205, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!21, !31, !93, !172, !1359}
!2207 = !{!2203, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215}
!2208 = !DILocalVariable(name: "argsize", arg: 2, scope: !2204, file: !69, line: 812, type: !93)
!2209 = !DILocalVariable(name: "size", arg: 3, scope: !2204, file: !69, line: 812, type: !172)
!2210 = !DILocalVariable(name: "o", arg: 4, scope: !2204, file: !69, line: 813, type: !1359)
!2211 = !DILocalVariable(name: "p", scope: !2204, file: !69, line: 815, type: !1359)
!2212 = !DILocalVariable(name: "e", scope: !2204, file: !69, line: 816, type: !34)
!2213 = !DILocalVariable(name: "flags", scope: !2204, file: !69, line: 818, type: !34)
!2214 = !DILocalVariable(name: "bufsize", scope: !2204, file: !69, line: 819, type: !93)
!2215 = !DILocalVariable(name: "buf", scope: !2204, file: !69, line: 823, type: !21)
!2216 = !DILocation(line: 0, scope: !2204, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 802, column: 10, scope: !2195)
!2218 = !DILocation(line: 815, column: 37, scope: !2204, inlinedAt: !2217)
!2219 = !DILocation(line: 816, column: 11, scope: !2204, inlinedAt: !2217)
!2220 = !DILocation(line: 818, column: 18, scope: !2204, inlinedAt: !2217)
!2221 = !DILocation(line: 818, column: 24, scope: !2204, inlinedAt: !2217)
!2222 = !DILocation(line: 819, column: 69, scope: !2204, inlinedAt: !2217)
!2223 = !DILocation(line: 820, column: 53, scope: !2204, inlinedAt: !2217)
!2224 = !DILocation(line: 821, column: 49, scope: !2204, inlinedAt: !2217)
!2225 = !DILocation(line: 822, column: 49, scope: !2204, inlinedAt: !2217)
!2226 = !DILocation(line: 819, column: 20, scope: !2204, inlinedAt: !2217)
!2227 = !DILocation(line: 822, column: 62, scope: !2204, inlinedAt: !2217)
!2228 = !DILocalVariable(name: "n", arg: 1, scope: !2229, file: !168, line: 216, type: !93)
!2229 = distinct !DISubprogram(name: "xcharalloc", scope: !168, file: !168, line: 216, type: !2230, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!21, !93}
!2232 = !{!2228}
!2233 = !DILocation(line: 0, scope: !2229, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 823, column: 15, scope: !2204, inlinedAt: !2217)
!2235 = !DILocation(line: 218, column: 10, scope: !2229, inlinedAt: !2234)
!2236 = !DILocation(line: 824, column: 60, scope: !2204, inlinedAt: !2217)
!2237 = !DILocation(line: 826, column: 32, scope: !2204, inlinedAt: !2217)
!2238 = !DILocation(line: 826, column: 47, scope: !2204, inlinedAt: !2217)
!2239 = !DILocation(line: 824, column: 3, scope: !2204, inlinedAt: !2217)
!2240 = !DILocation(line: 827, column: 9, scope: !2204, inlinedAt: !2217)
!2241 = !DILocation(line: 802, column: 3, scope: !2195)
!2242 = !DILocation(line: 0, scope: !2204)
!2243 = !DILocation(line: 815, column: 37, scope: !2204)
!2244 = !DILocation(line: 816, column: 11, scope: !2204)
!2245 = !DILocation(line: 818, column: 18, scope: !2204)
!2246 = !DILocation(line: 818, column: 27, scope: !2204)
!2247 = !DILocation(line: 818, column: 24, scope: !2204)
!2248 = !DILocation(line: 819, column: 69, scope: !2204)
!2249 = !DILocation(line: 820, column: 53, scope: !2204)
!2250 = !DILocation(line: 821, column: 49, scope: !2204)
!2251 = !DILocation(line: 822, column: 49, scope: !2204)
!2252 = !DILocation(line: 819, column: 20, scope: !2204)
!2253 = !DILocation(line: 822, column: 62, scope: !2204)
!2254 = !DILocation(line: 0, scope: !2229, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 823, column: 15, scope: !2204)
!2256 = !DILocation(line: 218, column: 10, scope: !2229, inlinedAt: !2255)
!2257 = !DILocation(line: 824, column: 60, scope: !2204)
!2258 = !DILocation(line: 826, column: 32, scope: !2204)
!2259 = !DILocation(line: 826, column: 47, scope: !2204)
!2260 = !DILocation(line: 824, column: 3, scope: !2204)
!2261 = !DILocation(line: 827, column: 9, scope: !2204)
!2262 = !DILocation(line: 828, column: 7, scope: !2204)
!2263 = !DILocation(line: 829, column: 11, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2204, file: !69, line: 828, column: 7)
!2265 = !{!1200, !1200, i64 0}
!2266 = !DILocation(line: 829, column: 5, scope: !2264)
!2267 = !DILocation(line: 830, column: 3, scope: !2204)
!2268 = distinct !DISubprogram(name: "quotearg_free", scope: !69, file: !69, line: 848, type: !615, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2269)
!2269 = !{!2270, !2271}
!2270 = !DILocalVariable(name: "sv", scope: !2268, file: !69, line: 850, type: !124)
!2271 = !DILocalVariable(name: "i", scope: !2268, file: !69, line: 851, type: !34)
!2272 = !DILocation(line: 850, column: 24, scope: !2268)
!2273 = !DILocation(line: 0, scope: !2268)
!2274 = !DILocation(line: 852, column: 19, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !69, line: 852, column: 3)
!2276 = distinct !DILexicalBlock(scope: !2268, file: !69, line: 852, column: 3)
!2277 = !DILocation(line: 852, column: 17, scope: !2275)
!2278 = !DILocation(line: 852, column: 3, scope: !2276)
!2279 = !DILocation(line: 853, column: 17, scope: !2275)
!2280 = !{!2281, !606, i64 8}
!2281 = !{!"slotvec", !1200, i64 0, !606, i64 8}
!2282 = !DILocation(line: 853, column: 5, scope: !2275)
!2283 = !DILocation(line: 852, column: 28, scope: !2275)
!2284 = distinct !{!2284, !2278, !2285, !654}
!2285 = !DILocation(line: 853, column: 20, scope: !2276)
!2286 = !DILocation(line: 854, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2268, file: !69, line: 854, column: 7)
!2288 = !DILocation(line: 854, column: 17, scope: !2287)
!2289 = !DILocation(line: 854, column: 7, scope: !2268)
!2290 = !DILocation(line: 856, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !69, line: 855, column: 5)
!2292 = !DILocation(line: 857, column: 21, scope: !2291)
!2293 = !{!2281, !1200, i64 0}
!2294 = !DILocation(line: 858, column: 20, scope: !2291)
!2295 = !DILocation(line: 859, column: 5, scope: !2291)
!2296 = !DILocation(line: 860, column: 10, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2268, file: !69, line: 860, column: 7)
!2298 = !DILocation(line: 860, column: 7, scope: !2268)
!2299 = !DILocation(line: 862, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !69, line: 861, column: 5)
!2301 = !DILocation(line: 862, column: 7, scope: !2300)
!2302 = !DILocation(line: 863, column: 15, scope: !2300)
!2303 = !DILocation(line: 864, column: 5, scope: !2300)
!2304 = !DILocation(line: 865, column: 10, scope: !2268)
!2305 = !DILocation(line: 866, column: 1, scope: !2268)
!2306 = distinct !DISubprogram(name: "quotearg_n", scope: !69, file: !69, line: 931, type: !736, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2307)
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "n", arg: 1, scope: !2306, file: !69, line: 931, type: !34)
!2309 = !DILocalVariable(name: "arg", arg: 2, scope: !2306, file: !69, line: 931, type: !31)
!2310 = !DILocation(line: 0, scope: !2306)
!2311 = !DILocation(line: 933, column: 10, scope: !2306)
!2312 = !DILocation(line: 933, column: 3, scope: !2306)
!2313 = distinct !DISubprogram(name: "quotearg_n_options", scope: !69, file: !69, line: 877, type: !2314, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!21, !34, !31, !93, !1359}
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2326, !2327, !2329, !2330, !2331}
!2317 = !DILocalVariable(name: "n", arg: 1, scope: !2313, file: !69, line: 877, type: !34)
!2318 = !DILocalVariable(name: "arg", arg: 2, scope: !2313, file: !69, line: 877, type: !31)
!2319 = !DILocalVariable(name: "argsize", arg: 3, scope: !2313, file: !69, line: 877, type: !93)
!2320 = !DILocalVariable(name: "options", arg: 4, scope: !2313, file: !69, line: 878, type: !1359)
!2321 = !DILocalVariable(name: "e", scope: !2313, file: !69, line: 880, type: !34)
!2322 = !DILocalVariable(name: "sv", scope: !2313, file: !69, line: 882, type: !124)
!2323 = !DILocalVariable(name: "preallocated", scope: !2324, file: !69, line: 889, type: !53)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !69, line: 888, column: 5)
!2325 = distinct !DILexicalBlock(scope: !2313, file: !69, line: 887, column: 7)
!2326 = !DILocalVariable(name: "nmax", scope: !2324, file: !69, line: 890, type: !34)
!2327 = !DILocalVariable(name: "size", scope: !2328, file: !69, line: 903, type: !93)
!2328 = distinct !DILexicalBlock(scope: !2313, file: !69, line: 902, column: 3)
!2329 = !DILocalVariable(name: "val", scope: !2328, file: !69, line: 904, type: !21)
!2330 = !DILocalVariable(name: "flags", scope: !2328, file: !69, line: 906, type: !34)
!2331 = !DILocalVariable(name: "qsize", scope: !2328, file: !69, line: 907, type: !93)
!2332 = !DILocation(line: 0, scope: !2313)
!2333 = !DILocation(line: 880, column: 11, scope: !2313)
!2334 = !DILocation(line: 882, column: 24, scope: !2313)
!2335 = !DILocation(line: 884, column: 9, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2313, file: !69, line: 884, column: 7)
!2337 = !DILocation(line: 884, column: 7, scope: !2313)
!2338 = !DILocation(line: 885, column: 5, scope: !2336)
!2339 = !DILocation(line: 887, column: 7, scope: !2325)
!2340 = !DILocation(line: 887, column: 14, scope: !2325)
!2341 = !DILocation(line: 887, column: 7, scope: !2313)
!2342 = !DILocation(line: 889, column: 31, scope: !2324)
!2343 = !DILocation(line: 0, scope: !2324)
!2344 = !DILocation(line: 892, column: 16, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2324, file: !69, line: 892, column: 11)
!2346 = !DILocation(line: 892, column: 11, scope: !2324)
!2347 = !DILocation(line: 893, column: 9, scope: !2345)
!2348 = !DILocation(line: 895, column: 32, scope: !2324)
!2349 = !DILocation(line: 895, column: 61, scope: !2324)
!2350 = !DILocation(line: 895, column: 66, scope: !2324)
!2351 = !DILocation(line: 895, column: 22, scope: !2324)
!2352 = !DILocation(line: 895, column: 15, scope: !2324)
!2353 = !DILocation(line: 896, column: 11, scope: !2324)
!2354 = !DILocation(line: 897, column: 15, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2324, file: !69, line: 896, column: 11)
!2356 = !{i64 0, i64 8, !2265, i64 8, i64 8, !605}
!2357 = !DILocation(line: 897, column: 9, scope: !2355)
!2358 = !DILocation(line: 898, column: 20, scope: !2324)
!2359 = !DILocation(line: 898, column: 18, scope: !2324)
!2360 = !DILocation(line: 898, column: 15, scope: !2324)
!2361 = !DILocation(line: 898, column: 38, scope: !2324)
!2362 = !DILocation(line: 898, column: 31, scope: !2324)
!2363 = !DILocation(line: 898, column: 48, scope: !2324)
!2364 = !DILocation(line: 0, scope: !1756, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 898, column: 7, scope: !2324)
!2366 = !DILocation(line: 59, column: 10, scope: !1756, inlinedAt: !2365)
!2367 = !DILocation(line: 899, column: 14, scope: !2324)
!2368 = !DILocation(line: 900, column: 5, scope: !2324)
!2369 = !DILocation(line: 903, column: 19, scope: !2328)
!2370 = !DILocation(line: 903, column: 25, scope: !2328)
!2371 = !DILocation(line: 0, scope: !2328)
!2372 = !DILocation(line: 904, column: 23, scope: !2328)
!2373 = !DILocation(line: 906, column: 26, scope: !2328)
!2374 = !DILocation(line: 906, column: 32, scope: !2328)
!2375 = !DILocation(line: 908, column: 55, scope: !2328)
!2376 = !DILocation(line: 909, column: 46, scope: !2328)
!2377 = !DILocation(line: 910, column: 55, scope: !2328)
!2378 = !DILocation(line: 911, column: 55, scope: !2328)
!2379 = !DILocation(line: 907, column: 20, scope: !2328)
!2380 = !DILocation(line: 913, column: 14, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2328, file: !69, line: 913, column: 9)
!2382 = !DILocation(line: 913, column: 9, scope: !2328)
!2383 = !DILocation(line: 915, column: 35, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !69, line: 914, column: 7)
!2385 = !DILocation(line: 915, column: 20, scope: !2384)
!2386 = !DILocation(line: 916, column: 17, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !69, line: 916, column: 13)
!2388 = !DILocation(line: 916, column: 13, scope: !2384)
!2389 = !DILocation(line: 917, column: 11, scope: !2387)
!2390 = !DILocation(line: 0, scope: !2229, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 918, column: 27, scope: !2384)
!2392 = !DILocation(line: 218, column: 10, scope: !2229, inlinedAt: !2391)
!2393 = !DILocation(line: 918, column: 19, scope: !2384)
!2394 = !DILocation(line: 919, column: 69, scope: !2384)
!2395 = !DILocation(line: 921, column: 44, scope: !2384)
!2396 = !DILocation(line: 922, column: 44, scope: !2384)
!2397 = !DILocation(line: 919, column: 9, scope: !2384)
!2398 = !DILocation(line: 923, column: 7, scope: !2384)
!2399 = !DILocation(line: 925, column: 11, scope: !2328)
!2400 = !DILocation(line: 926, column: 5, scope: !2328)
!2401 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !69, file: !69, line: 937, type: !2402, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!21, !34, !31, !93}
!2404 = !{!2405, !2406, !2407}
!2405 = !DILocalVariable(name: "n", arg: 1, scope: !2401, file: !69, line: 937, type: !34)
!2406 = !DILocalVariable(name: "arg", arg: 2, scope: !2401, file: !69, line: 937, type: !31)
!2407 = !DILocalVariable(name: "argsize", arg: 3, scope: !2401, file: !69, line: 937, type: !93)
!2408 = !DILocation(line: 0, scope: !2401)
!2409 = !DILocation(line: 939, column: 10, scope: !2401)
!2410 = !DILocation(line: 939, column: 3, scope: !2401)
!2411 = distinct !DISubprogram(name: "quotearg", scope: !69, file: !69, line: 943, type: !856, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2412)
!2412 = !{!2413}
!2413 = !DILocalVariable(name: "arg", arg: 1, scope: !2411, file: !69, line: 943, type: !31)
!2414 = !DILocation(line: 0, scope: !2411)
!2415 = !DILocation(line: 0, scope: !2306, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 945, column: 10, scope: !2411)
!2417 = !DILocation(line: 933, column: 10, scope: !2306, inlinedAt: !2416)
!2418 = !DILocation(line: 945, column: 3, scope: !2411)
!2419 = distinct !DISubprogram(name: "quotearg_mem", scope: !69, file: !69, line: 949, type: !2420, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!21, !31, !93}
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "arg", arg: 1, scope: !2419, file: !69, line: 949, type: !31)
!2424 = !DILocalVariable(name: "argsize", arg: 2, scope: !2419, file: !69, line: 949, type: !93)
!2425 = !DILocation(line: 0, scope: !2419)
!2426 = !DILocation(line: 0, scope: !2401, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 951, column: 10, scope: !2419)
!2428 = !DILocation(line: 939, column: 10, scope: !2401, inlinedAt: !2427)
!2429 = !DILocation(line: 951, column: 3, scope: !2419)
!2430 = distinct !DISubprogram(name: "quotearg_n_style", scope: !69, file: !69, line: 955, type: !2431, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!21, !34, !5, !31}
!2433 = !{!2434, !2435, !2436, !2437}
!2434 = !DILocalVariable(name: "n", arg: 1, scope: !2430, file: !69, line: 955, type: !34)
!2435 = !DILocalVariable(name: "s", arg: 2, scope: !2430, file: !69, line: 955, type: !5)
!2436 = !DILocalVariable(name: "arg", arg: 3, scope: !2430, file: !69, line: 955, type: !31)
!2437 = !DILocalVariable(name: "o", scope: !2430, file: !69, line: 957, type: !1360)
!2438 = !DILocation(line: 0, scope: !2430)
!2439 = !DILocation(line: 957, column: 3, scope: !2430)
!2440 = !DILocation(line: 957, column: 32, scope: !2430)
!2441 = !{!2442}
!2442 = distinct !{!2442, !2443, !"quoting_options_from_style: argument 0"}
!2443 = distinct !{!2443, !"quoting_options_from_style"}
!2444 = !DILocation(line: 957, column: 36, scope: !2430)
!2445 = !DILocalVariable(name: "style", arg: 1, scope: !2446, file: !69, line: 193, type: !5)
!2446 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !69, file: !69, line: 193, type: !2447, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!105, !5}
!2449 = !{!2445, !2450}
!2450 = !DILocalVariable(name: "o", scope: !2446, file: !69, line: 195, type: !105)
!2451 = !DILocation(line: 0, scope: !2446, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 957, column: 36, scope: !2430)
!2453 = !DILocation(line: 195, column: 26, scope: !2446, inlinedAt: !2452)
!2454 = !DILocation(line: 196, column: 13, scope: !2455, inlinedAt: !2452)
!2455 = distinct !DILexicalBlock(scope: !2446, file: !69, line: 196, column: 7)
!2456 = !DILocation(line: 196, column: 7, scope: !2446, inlinedAt: !2452)
!2457 = !DILocation(line: 197, column: 5, scope: !2455, inlinedAt: !2452)
!2458 = !DILocation(line: 198, column: 5, scope: !2446, inlinedAt: !2452)
!2459 = !DILocation(line: 198, column: 11, scope: !2446, inlinedAt: !2452)
!2460 = !DILocation(line: 958, column: 10, scope: !2430)
!2461 = !DILocation(line: 959, column: 1, scope: !2430)
!2462 = !DILocation(line: 958, column: 3, scope: !2430)
!2463 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !69, file: !69, line: 962, type: !2464, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!21, !34, !5, !31, !93}
!2466 = !{!2467, !2468, !2469, !2470, !2471}
!2467 = !DILocalVariable(name: "n", arg: 1, scope: !2463, file: !69, line: 962, type: !34)
!2468 = !DILocalVariable(name: "s", arg: 2, scope: !2463, file: !69, line: 962, type: !5)
!2469 = !DILocalVariable(name: "arg", arg: 3, scope: !2463, file: !69, line: 963, type: !31)
!2470 = !DILocalVariable(name: "argsize", arg: 4, scope: !2463, file: !69, line: 963, type: !93)
!2471 = !DILocalVariable(name: "o", scope: !2463, file: !69, line: 965, type: !1360)
!2472 = !DILocation(line: 0, scope: !2463)
!2473 = !DILocation(line: 965, column: 3, scope: !2463)
!2474 = !DILocation(line: 965, column: 32, scope: !2463)
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"quoting_options_from_style: argument 0"}
!2477 = distinct !{!2477, !"quoting_options_from_style"}
!2478 = !DILocation(line: 965, column: 36, scope: !2463)
!2479 = !DILocation(line: 0, scope: !2446, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 965, column: 36, scope: !2463)
!2481 = !DILocation(line: 195, column: 26, scope: !2446, inlinedAt: !2480)
!2482 = !DILocation(line: 196, column: 13, scope: !2455, inlinedAt: !2480)
!2483 = !DILocation(line: 196, column: 7, scope: !2446, inlinedAt: !2480)
!2484 = !DILocation(line: 197, column: 5, scope: !2455, inlinedAt: !2480)
!2485 = !DILocation(line: 198, column: 5, scope: !2446, inlinedAt: !2480)
!2486 = !DILocation(line: 198, column: 11, scope: !2446, inlinedAt: !2480)
!2487 = !DILocation(line: 966, column: 10, scope: !2463)
!2488 = !DILocation(line: 967, column: 1, scope: !2463)
!2489 = !DILocation(line: 966, column: 3, scope: !2463)
!2490 = distinct !DISubprogram(name: "quotearg_style", scope: !69, file: !69, line: 970, type: !2491, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!21, !5, !31}
!2493 = !{!2494, !2495}
!2494 = !DILocalVariable(name: "s", arg: 1, scope: !2490, file: !69, line: 970, type: !5)
!2495 = !DILocalVariable(name: "arg", arg: 2, scope: !2490, file: !69, line: 970, type: !31)
!2496 = !DILocation(line: 0, scope: !2490)
!2497 = !DILocation(line: 0, scope: !2430, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 972, column: 10, scope: !2490)
!2499 = !DILocation(line: 957, column: 3, scope: !2430, inlinedAt: !2498)
!2500 = !DILocation(line: 957, column: 32, scope: !2430, inlinedAt: !2498)
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"quoting_options_from_style: argument 0"}
!2503 = distinct !{!2503, !"quoting_options_from_style"}
!2504 = !DILocation(line: 957, column: 36, scope: !2430, inlinedAt: !2498)
!2505 = !DILocation(line: 0, scope: !2446, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 957, column: 36, scope: !2430, inlinedAt: !2498)
!2507 = !DILocation(line: 195, column: 26, scope: !2446, inlinedAt: !2506)
!2508 = !DILocation(line: 196, column: 13, scope: !2455, inlinedAt: !2506)
!2509 = !DILocation(line: 196, column: 7, scope: !2446, inlinedAt: !2506)
!2510 = !DILocation(line: 197, column: 5, scope: !2455, inlinedAt: !2506)
!2511 = !DILocation(line: 198, column: 5, scope: !2446, inlinedAt: !2506)
!2512 = !DILocation(line: 198, column: 11, scope: !2446, inlinedAt: !2506)
!2513 = !DILocation(line: 958, column: 10, scope: !2430, inlinedAt: !2498)
!2514 = !DILocation(line: 959, column: 1, scope: !2430, inlinedAt: !2498)
!2515 = !DILocation(line: 972, column: 3, scope: !2490)
!2516 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !69, file: !69, line: 976, type: !2517, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!21, !5, !31, !93}
!2519 = !{!2520, !2521, !2522}
!2520 = !DILocalVariable(name: "s", arg: 1, scope: !2516, file: !69, line: 976, type: !5)
!2521 = !DILocalVariable(name: "arg", arg: 2, scope: !2516, file: !69, line: 976, type: !31)
!2522 = !DILocalVariable(name: "argsize", arg: 3, scope: !2516, file: !69, line: 976, type: !93)
!2523 = !DILocation(line: 0, scope: !2516)
!2524 = !DILocation(line: 0, scope: !2463, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 978, column: 10, scope: !2516)
!2526 = !DILocation(line: 965, column: 3, scope: !2463, inlinedAt: !2525)
!2527 = !DILocation(line: 965, column: 32, scope: !2463, inlinedAt: !2525)
!2528 = !{!2529}
!2529 = distinct !{!2529, !2530, !"quoting_options_from_style: argument 0"}
!2530 = distinct !{!2530, !"quoting_options_from_style"}
!2531 = !DILocation(line: 965, column: 36, scope: !2463, inlinedAt: !2525)
!2532 = !DILocation(line: 0, scope: !2446, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 965, column: 36, scope: !2463, inlinedAt: !2525)
!2534 = !DILocation(line: 195, column: 26, scope: !2446, inlinedAt: !2533)
!2535 = !DILocation(line: 196, column: 13, scope: !2455, inlinedAt: !2533)
!2536 = !DILocation(line: 196, column: 7, scope: !2446, inlinedAt: !2533)
!2537 = !DILocation(line: 197, column: 5, scope: !2455, inlinedAt: !2533)
!2538 = !DILocation(line: 198, column: 5, scope: !2446, inlinedAt: !2533)
!2539 = !DILocation(line: 198, column: 11, scope: !2446, inlinedAt: !2533)
!2540 = !DILocation(line: 966, column: 10, scope: !2463, inlinedAt: !2525)
!2541 = !DILocation(line: 967, column: 1, scope: !2463, inlinedAt: !2525)
!2542 = !DILocation(line: 978, column: 3, scope: !2516)
!2543 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !69, file: !69, line: 982, type: !2544, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!21, !31, !93, !22}
!2546 = !{!2547, !2548, !2549, !2550}
!2547 = !DILocalVariable(name: "arg", arg: 1, scope: !2543, file: !69, line: 982, type: !31)
!2548 = !DILocalVariable(name: "argsize", arg: 2, scope: !2543, file: !69, line: 982, type: !93)
!2549 = !DILocalVariable(name: "ch", arg: 3, scope: !2543, file: !69, line: 982, type: !22)
!2550 = !DILocalVariable(name: "options", scope: !2543, file: !69, line: 984, type: !105)
!2551 = !DILocation(line: 0, scope: !2543)
!2552 = !DILocation(line: 984, column: 3, scope: !2543)
!2553 = !DILocation(line: 984, column: 26, scope: !2543)
!2554 = !DILocation(line: 985, column: 13, scope: !2543)
!2555 = !{i64 0, i64 4, !972, i64 4, i64 4, !793, i64 8, i64 32, !972, i64 40, i64 8, !605, i64 48, i64 8, !605}
!2556 = !DILocation(line: 0, scope: !1380, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 986, column: 3, scope: !2543)
!2558 = !DILocation(line: 156, column: 62, scope: !1380, inlinedAt: !2557)
!2559 = !DILocation(line: 156, column: 57, scope: !1380, inlinedAt: !2557)
!2560 = !DILocation(line: 157, column: 15, scope: !1380, inlinedAt: !2557)
!2561 = !DILocation(line: 158, column: 12, scope: !1380, inlinedAt: !2557)
!2562 = !DILocation(line: 158, column: 15, scope: !1380, inlinedAt: !2557)
!2563 = !DILocation(line: 158, column: 25, scope: !1380, inlinedAt: !2557)
!2564 = !DILocation(line: 159, column: 18, scope: !1380, inlinedAt: !2557)
!2565 = !DILocation(line: 159, column: 23, scope: !1380, inlinedAt: !2557)
!2566 = !DILocation(line: 159, column: 6, scope: !1380, inlinedAt: !2557)
!2567 = !DILocation(line: 987, column: 10, scope: !2543)
!2568 = !DILocation(line: 988, column: 1, scope: !2543)
!2569 = !DILocation(line: 987, column: 3, scope: !2543)
!2570 = distinct !DISubprogram(name: "quotearg_char", scope: !69, file: !69, line: 991, type: !2571, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!21, !31, !22}
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "arg", arg: 1, scope: !2570, file: !69, line: 991, type: !31)
!2575 = !DILocalVariable(name: "ch", arg: 2, scope: !2570, file: !69, line: 991, type: !22)
!2576 = !DILocation(line: 0, scope: !2570)
!2577 = !DILocation(line: 0, scope: !2543, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 993, column: 10, scope: !2570)
!2579 = !DILocation(line: 984, column: 3, scope: !2543, inlinedAt: !2578)
!2580 = !DILocation(line: 984, column: 26, scope: !2543, inlinedAt: !2578)
!2581 = !DILocation(line: 985, column: 13, scope: !2543, inlinedAt: !2578)
!2582 = !DILocation(line: 0, scope: !1380, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 986, column: 3, scope: !2543, inlinedAt: !2578)
!2584 = !DILocation(line: 156, column: 62, scope: !1380, inlinedAt: !2583)
!2585 = !DILocation(line: 156, column: 57, scope: !1380, inlinedAt: !2583)
!2586 = !DILocation(line: 157, column: 15, scope: !1380, inlinedAt: !2583)
!2587 = !DILocation(line: 158, column: 12, scope: !1380, inlinedAt: !2583)
!2588 = !DILocation(line: 158, column: 15, scope: !1380, inlinedAt: !2583)
!2589 = !DILocation(line: 158, column: 25, scope: !1380, inlinedAt: !2583)
!2590 = !DILocation(line: 159, column: 18, scope: !1380, inlinedAt: !2583)
!2591 = !DILocation(line: 159, column: 23, scope: !1380, inlinedAt: !2583)
!2592 = !DILocation(line: 159, column: 6, scope: !1380, inlinedAt: !2583)
!2593 = !DILocation(line: 987, column: 10, scope: !2543, inlinedAt: !2578)
!2594 = !DILocation(line: 988, column: 1, scope: !2543, inlinedAt: !2578)
!2595 = !DILocation(line: 993, column: 3, scope: !2570)
!2596 = distinct !DISubprogram(name: "quotearg_colon", scope: !69, file: !69, line: 997, type: !856, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2597)
!2597 = !{!2598}
!2598 = !DILocalVariable(name: "arg", arg: 1, scope: !2596, file: !69, line: 997, type: !31)
!2599 = !DILocation(line: 0, scope: !2596)
!2600 = !DILocation(line: 0, scope: !2570, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 999, column: 10, scope: !2596)
!2602 = !DILocation(line: 0, scope: !2543, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 993, column: 10, scope: !2570, inlinedAt: !2601)
!2604 = !DILocation(line: 984, column: 3, scope: !2543, inlinedAt: !2603)
!2605 = !DILocation(line: 984, column: 26, scope: !2543, inlinedAt: !2603)
!2606 = !DILocation(line: 985, column: 13, scope: !2543, inlinedAt: !2603)
!2607 = !DILocation(line: 0, scope: !1380, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 986, column: 3, scope: !2543, inlinedAt: !2603)
!2609 = !DILocation(line: 156, column: 57, scope: !1380, inlinedAt: !2608)
!2610 = !DILocation(line: 158, column: 12, scope: !1380, inlinedAt: !2608)
!2611 = !DILocation(line: 159, column: 6, scope: !1380, inlinedAt: !2608)
!2612 = !DILocation(line: 987, column: 10, scope: !2543, inlinedAt: !2603)
!2613 = !DILocation(line: 988, column: 1, scope: !2543, inlinedAt: !2603)
!2614 = !DILocation(line: 999, column: 3, scope: !2596)
!2615 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !69, file: !69, line: 1003, type: !2420, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2616)
!2616 = !{!2617, !2618}
!2617 = !DILocalVariable(name: "arg", arg: 1, scope: !2615, file: !69, line: 1003, type: !31)
!2618 = !DILocalVariable(name: "argsize", arg: 2, scope: !2615, file: !69, line: 1003, type: !93)
!2619 = !DILocation(line: 0, scope: !2615)
!2620 = !DILocation(line: 0, scope: !2543, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1005, column: 10, scope: !2615)
!2622 = !DILocation(line: 984, column: 3, scope: !2543, inlinedAt: !2621)
!2623 = !DILocation(line: 984, column: 26, scope: !2543, inlinedAt: !2621)
!2624 = !DILocation(line: 985, column: 13, scope: !2543, inlinedAt: !2621)
!2625 = !DILocation(line: 0, scope: !1380, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 986, column: 3, scope: !2543, inlinedAt: !2621)
!2627 = !DILocation(line: 156, column: 57, scope: !1380, inlinedAt: !2626)
!2628 = !DILocation(line: 158, column: 12, scope: !1380, inlinedAt: !2626)
!2629 = !DILocation(line: 159, column: 6, scope: !1380, inlinedAt: !2626)
!2630 = !DILocation(line: 987, column: 10, scope: !2543, inlinedAt: !2621)
!2631 = !DILocation(line: 988, column: 1, scope: !2543, inlinedAt: !2621)
!2632 = !DILocation(line: 1005, column: 3, scope: !2615)
!2633 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !69, file: !69, line: 1009, type: !2431, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2634)
!2634 = !{!2635, !2636, !2637, !2638}
!2635 = !DILocalVariable(name: "n", arg: 1, scope: !2633, file: !69, line: 1009, type: !34)
!2636 = !DILocalVariable(name: "s", arg: 2, scope: !2633, file: !69, line: 1009, type: !5)
!2637 = !DILocalVariable(name: "arg", arg: 3, scope: !2633, file: !69, line: 1009, type: !31)
!2638 = !DILocalVariable(name: "options", scope: !2633, file: !69, line: 1011, type: !105)
!2639 = !DILocation(line: 195, column: 26, scope: !2446, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 1012, column: 13, scope: !2633)
!2641 = !DILocation(line: 0, scope: !2633)
!2642 = !DILocation(line: 1011, column: 3, scope: !2633)
!2643 = !DILocation(line: 1011, column: 26, scope: !2633)
!2644 = !DILocation(line: 1012, column: 13, scope: !2633)
!2645 = !{!2646}
!2646 = distinct !{!2646, !2647, !"quoting_options_from_style: argument 0"}
!2647 = distinct !{!2647, !"quoting_options_from_style"}
!2648 = !DILocation(line: 0, scope: !2446, inlinedAt: !2640)
!2649 = !DILocation(line: 196, column: 13, scope: !2455, inlinedAt: !2640)
!2650 = !DILocation(line: 196, column: 7, scope: !2446, inlinedAt: !2640)
!2651 = !DILocation(line: 197, column: 5, scope: !2455, inlinedAt: !2640)
!2652 = !{i64 0, i64 4, !793, i64 4, i64 32, !972, i64 36, i64 8, !605, i64 44, i64 8, !605}
!2653 = !DILocation(line: 0, scope: !1380, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1013, column: 3, scope: !2633)
!2655 = !DILocation(line: 156, column: 57, scope: !1380, inlinedAt: !2654)
!2656 = !DILocation(line: 158, column: 12, scope: !1380, inlinedAt: !2654)
!2657 = !DILocation(line: 159, column: 6, scope: !1380, inlinedAt: !2654)
!2658 = !DILocation(line: 1014, column: 10, scope: !2633)
!2659 = !DILocation(line: 1015, column: 1, scope: !2633)
!2660 = !DILocation(line: 1014, column: 3, scope: !2633)
!2661 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !69, file: !69, line: 1018, type: !2662, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!21, !34, !31, !31, !31}
!2664 = !{!2665, !2666, !2667, !2668}
!2665 = !DILocalVariable(name: "n", arg: 1, scope: !2661, file: !69, line: 1018, type: !34)
!2666 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2661, file: !69, line: 1018, type: !31)
!2667 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2661, file: !69, line: 1019, type: !31)
!2668 = !DILocalVariable(name: "arg", arg: 4, scope: !2661, file: !69, line: 1019, type: !31)
!2669 = !DILocation(line: 0, scope: !2661)
!2670 = !DILocalVariable(name: "n", arg: 1, scope: !2671, file: !69, line: 1026, type: !34)
!2671 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !69, file: !69, line: 1026, type: !2672, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!21, !34, !31, !31, !31, !93}
!2674 = !{!2670, !2675, !2676, !2677, !2678, !2679}
!2675 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2671, file: !69, line: 1026, type: !31)
!2676 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2671, file: !69, line: 1027, type: !31)
!2677 = !DILocalVariable(name: "arg", arg: 4, scope: !2671, file: !69, line: 1028, type: !31)
!2678 = !DILocalVariable(name: "argsize", arg: 5, scope: !2671, file: !69, line: 1028, type: !93)
!2679 = !DILocalVariable(name: "o", scope: !2671, file: !69, line: 1030, type: !105)
!2680 = !DILocation(line: 0, scope: !2671, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1021, column: 10, scope: !2661)
!2682 = !DILocation(line: 1030, column: 3, scope: !2671, inlinedAt: !2681)
!2683 = !DILocation(line: 1030, column: 26, scope: !2671, inlinedAt: !2681)
!2684 = !DILocation(line: 1030, column: 30, scope: !2671, inlinedAt: !2681)
!2685 = !DILocation(line: 0, scope: !1421, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1031, column: 3, scope: !2671, inlinedAt: !2681)
!2687 = !DILocation(line: 184, column: 6, scope: !1421, inlinedAt: !2686)
!2688 = !DILocation(line: 184, column: 12, scope: !1421, inlinedAt: !2686)
!2689 = !DILocation(line: 185, column: 8, scope: !1435, inlinedAt: !2686)
!2690 = !DILocation(line: 185, column: 19, scope: !1435, inlinedAt: !2686)
!2691 = !DILocation(line: 186, column: 5, scope: !1435, inlinedAt: !2686)
!2692 = !DILocation(line: 187, column: 6, scope: !1421, inlinedAt: !2686)
!2693 = !DILocation(line: 187, column: 17, scope: !1421, inlinedAt: !2686)
!2694 = !DILocation(line: 188, column: 6, scope: !1421, inlinedAt: !2686)
!2695 = !DILocation(line: 188, column: 18, scope: !1421, inlinedAt: !2686)
!2696 = !DILocation(line: 1032, column: 10, scope: !2671, inlinedAt: !2681)
!2697 = !DILocation(line: 1033, column: 1, scope: !2671, inlinedAt: !2681)
!2698 = !DILocation(line: 1021, column: 3, scope: !2661)
!2699 = !DILocation(line: 0, scope: !2671)
!2700 = !DILocation(line: 1030, column: 3, scope: !2671)
!2701 = !DILocation(line: 1030, column: 26, scope: !2671)
!2702 = !DILocation(line: 1030, column: 30, scope: !2671)
!2703 = !DILocation(line: 0, scope: !1421, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1031, column: 3, scope: !2671)
!2705 = !DILocation(line: 184, column: 6, scope: !1421, inlinedAt: !2704)
!2706 = !DILocation(line: 184, column: 12, scope: !1421, inlinedAt: !2704)
!2707 = !DILocation(line: 185, column: 8, scope: !1435, inlinedAt: !2704)
!2708 = !DILocation(line: 185, column: 19, scope: !1435, inlinedAt: !2704)
!2709 = !DILocation(line: 186, column: 5, scope: !1435, inlinedAt: !2704)
!2710 = !DILocation(line: 187, column: 6, scope: !1421, inlinedAt: !2704)
!2711 = !DILocation(line: 187, column: 17, scope: !1421, inlinedAt: !2704)
!2712 = !DILocation(line: 188, column: 6, scope: !1421, inlinedAt: !2704)
!2713 = !DILocation(line: 188, column: 18, scope: !1421, inlinedAt: !2704)
!2714 = !DILocation(line: 1032, column: 10, scope: !2671)
!2715 = !DILocation(line: 1033, column: 1, scope: !2671)
!2716 = !DILocation(line: 1032, column: 3, scope: !2671)
!2717 = distinct !DISubprogram(name: "quotearg_custom", scope: !69, file: !69, line: 1036, type: !2718, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!21, !31, !31, !31}
!2720 = !{!2721, !2722, !2723}
!2721 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2717, file: !69, line: 1036, type: !31)
!2722 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2717, file: !69, line: 1036, type: !31)
!2723 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !69, line: 1037, type: !31)
!2724 = !DILocation(line: 0, scope: !2717)
!2725 = !DILocation(line: 0, scope: !2661, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 1039, column: 10, scope: !2717)
!2727 = !DILocation(line: 0, scope: !2671, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1021, column: 10, scope: !2661, inlinedAt: !2726)
!2729 = !DILocation(line: 1030, column: 3, scope: !2671, inlinedAt: !2728)
!2730 = !DILocation(line: 1030, column: 26, scope: !2671, inlinedAt: !2728)
!2731 = !DILocation(line: 1030, column: 30, scope: !2671, inlinedAt: !2728)
!2732 = !DILocation(line: 0, scope: !1421, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1031, column: 3, scope: !2671, inlinedAt: !2728)
!2734 = !DILocation(line: 184, column: 6, scope: !1421, inlinedAt: !2733)
!2735 = !DILocation(line: 184, column: 12, scope: !1421, inlinedAt: !2733)
!2736 = !DILocation(line: 185, column: 8, scope: !1435, inlinedAt: !2733)
!2737 = !DILocation(line: 185, column: 19, scope: !1435, inlinedAt: !2733)
!2738 = !DILocation(line: 186, column: 5, scope: !1435, inlinedAt: !2733)
!2739 = !DILocation(line: 187, column: 6, scope: !1421, inlinedAt: !2733)
!2740 = !DILocation(line: 187, column: 17, scope: !1421, inlinedAt: !2733)
!2741 = !DILocation(line: 188, column: 6, scope: !1421, inlinedAt: !2733)
!2742 = !DILocation(line: 188, column: 18, scope: !1421, inlinedAt: !2733)
!2743 = !DILocation(line: 1032, column: 10, scope: !2671, inlinedAt: !2728)
!2744 = !DILocation(line: 1033, column: 1, scope: !2671, inlinedAt: !2728)
!2745 = !DILocation(line: 1039, column: 3, scope: !2717)
!2746 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !69, file: !69, line: 1043, type: !2747, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!21, !31, !31, !31, !93}
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2746, file: !69, line: 1043, type: !31)
!2751 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2746, file: !69, line: 1043, type: !31)
!2752 = !DILocalVariable(name: "arg", arg: 3, scope: !2746, file: !69, line: 1044, type: !31)
!2753 = !DILocalVariable(name: "argsize", arg: 4, scope: !2746, file: !69, line: 1044, type: !93)
!2754 = !DILocation(line: 0, scope: !2746)
!2755 = !DILocation(line: 0, scope: !2671, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 1046, column: 10, scope: !2746)
!2757 = !DILocation(line: 1030, column: 3, scope: !2671, inlinedAt: !2756)
!2758 = !DILocation(line: 1030, column: 26, scope: !2671, inlinedAt: !2756)
!2759 = !DILocation(line: 1030, column: 30, scope: !2671, inlinedAt: !2756)
!2760 = !DILocation(line: 0, scope: !1421, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1031, column: 3, scope: !2671, inlinedAt: !2756)
!2762 = !DILocation(line: 184, column: 6, scope: !1421, inlinedAt: !2761)
!2763 = !DILocation(line: 184, column: 12, scope: !1421, inlinedAt: !2761)
!2764 = !DILocation(line: 185, column: 8, scope: !1435, inlinedAt: !2761)
!2765 = !DILocation(line: 185, column: 19, scope: !1435, inlinedAt: !2761)
!2766 = !DILocation(line: 186, column: 5, scope: !1435, inlinedAt: !2761)
!2767 = !DILocation(line: 187, column: 6, scope: !1421, inlinedAt: !2761)
!2768 = !DILocation(line: 187, column: 17, scope: !1421, inlinedAt: !2761)
!2769 = !DILocation(line: 188, column: 6, scope: !1421, inlinedAt: !2761)
!2770 = !DILocation(line: 188, column: 18, scope: !1421, inlinedAt: !2761)
!2771 = !DILocation(line: 1032, column: 10, scope: !2671, inlinedAt: !2756)
!2772 = !DILocation(line: 1033, column: 1, scope: !2671, inlinedAt: !2756)
!2773 = !DILocation(line: 1046, column: 3, scope: !2746)
!2774 = distinct !DISubprogram(name: "quote_n_mem", scope: !69, file: !69, line: 1061, type: !2775, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!31, !34, !31, !93}
!2777 = !{!2778, !2779, !2780}
!2778 = !DILocalVariable(name: "n", arg: 1, scope: !2774, file: !69, line: 1061, type: !34)
!2779 = !DILocalVariable(name: "arg", arg: 2, scope: !2774, file: !69, line: 1061, type: !31)
!2780 = !DILocalVariable(name: "argsize", arg: 3, scope: !2774, file: !69, line: 1061, type: !93)
!2781 = !DILocation(line: 0, scope: !2774)
!2782 = !DILocation(line: 1063, column: 10, scope: !2774)
!2783 = !DILocation(line: 1063, column: 3, scope: !2774)
!2784 = distinct !DISubprogram(name: "quote_mem", scope: !69, file: !69, line: 1067, type: !2785, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!31, !31, !93}
!2787 = !{!2788, !2789}
!2788 = !DILocalVariable(name: "arg", arg: 1, scope: !2784, file: !69, line: 1067, type: !31)
!2789 = !DILocalVariable(name: "argsize", arg: 2, scope: !2784, file: !69, line: 1067, type: !93)
!2790 = !DILocation(line: 0, scope: !2784)
!2791 = !DILocation(line: 0, scope: !2774, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 1069, column: 10, scope: !2784)
!2793 = !DILocation(line: 1063, column: 10, scope: !2774, inlinedAt: !2792)
!2794 = !DILocation(line: 1069, column: 3, scope: !2784)
!2795 = distinct !DISubprogram(name: "quote_n", scope: !69, file: !69, line: 1073, type: !2796, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!31, !34, !31}
!2798 = !{!2799, !2800}
!2799 = !DILocalVariable(name: "n", arg: 1, scope: !2795, file: !69, line: 1073, type: !34)
!2800 = !DILocalVariable(name: "arg", arg: 2, scope: !2795, file: !69, line: 1073, type: !31)
!2801 = !DILocation(line: 0, scope: !2795)
!2802 = !DILocation(line: 0, scope: !2774, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1075, column: 10, scope: !2795)
!2804 = !DILocation(line: 1063, column: 10, scope: !2774, inlinedAt: !2803)
!2805 = !DILocation(line: 1075, column: 3, scope: !2795)
!2806 = distinct !DISubprogram(name: "quote", scope: !69, file: !69, line: 1079, type: !2807, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!31, !31}
!2809 = !{!2810}
!2810 = !DILocalVariable(name: "arg", arg: 1, scope: !2806, file: !69, line: 1079, type: !31)
!2811 = !DILocation(line: 0, scope: !2806)
!2812 = !DILocation(line: 0, scope: !2795, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1081, column: 10, scope: !2806)
!2814 = !DILocation(line: 0, scope: !2774, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 1075, column: 10, scope: !2795, inlinedAt: !2813)
!2816 = !DILocation(line: 1063, column: 10, scope: !2774, inlinedAt: !2815)
!2817 = !DILocation(line: 1081, column: 3, scope: !2806)
!2818 = distinct !DISubprogram(name: "version_etc_arn", scope: !158, file: !158, line: 61, type: !2819, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2857)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2821, !31, !31, !31, !2856, !93}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2823, line: 7, baseType: !2824)
!2823 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !684, line: 49, size: 1728, elements: !2825)
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2824, file: !684, line: 51, baseType: !34, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2824, file: !684, line: 54, baseType: !21, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2824, file: !684, line: 55, baseType: !21, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2824, file: !684, line: 56, baseType: !21, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2824, file: !684, line: 57, baseType: !21, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2824, file: !684, line: 58, baseType: !21, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2824, file: !684, line: 59, baseType: !21, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2824, file: !684, line: 60, baseType: !21, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2824, file: !684, line: 61, baseType: !21, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2824, file: !684, line: 64, baseType: !21, size: 64, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2824, file: !684, line: 65, baseType: !21, size: 64, offset: 640)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2824, file: !684, line: 66, baseType: !21, size: 64, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2824, file: !684, line: 68, baseType: !699, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2824, file: !684, line: 70, baseType: !2840, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2824, file: !684, line: 72, baseType: !34, size: 32, offset: 896)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2824, file: !684, line: 73, baseType: !34, size: 32, offset: 928)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2824, file: !684, line: 74, baseType: !705, size: 64, offset: 960)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2824, file: !684, line: 77, baseType: !92, size: 16, offset: 1024)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2824, file: !684, line: 78, baseType: !710, size: 8, offset: 1040)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2824, file: !684, line: 79, baseType: !712, size: 8, offset: 1048)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2824, file: !684, line: 81, baseType: !716, size: 64, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2824, file: !684, line: 89, baseType: !719, size: 64, offset: 1152)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2824, file: !684, line: 91, baseType: !721, size: 64, offset: 1216)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2824, file: !684, line: 92, baseType: !724, size: 64, offset: 1280)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2824, file: !684, line: 93, baseType: !2840, size: 64, offset: 1344)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2824, file: !684, line: 94, baseType: !23, size: 64, offset: 1408)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2824, file: !684, line: 95, baseType: !93, size: 64, offset: 1472)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2824, file: !684, line: 96, baseType: !34, size: 32, offset: 1536)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2824, file: !684, line: 98, baseType: !731, size: 160, offset: 1568)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863}
!2858 = !DILocalVariable(name: "stream", arg: 1, scope: !2818, file: !158, line: 61, type: !2821)
!2859 = !DILocalVariable(name: "command_name", arg: 2, scope: !2818, file: !158, line: 62, type: !31)
!2860 = !DILocalVariable(name: "package", arg: 3, scope: !2818, file: !158, line: 62, type: !31)
!2861 = !DILocalVariable(name: "version", arg: 4, scope: !2818, file: !158, line: 63, type: !31)
!2862 = !DILocalVariable(name: "authors", arg: 5, scope: !2818, file: !158, line: 64, type: !2856)
!2863 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2818, file: !158, line: 64, type: !93)
!2864 = !DILocation(line: 0, scope: !2818)
!2865 = !DILocation(line: 66, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2818, file: !158, line: 66, column: 7)
!2867 = !DILocation(line: 66, column: 7, scope: !2818)
!2868 = !DILocation(line: 67, column: 5, scope: !2866)
!2869 = !DILocation(line: 69, column: 5, scope: !2866)
!2870 = !DILocation(line: 83, column: 3, scope: !2818)
!2871 = !DILocation(line: 85, column: 3, scope: !2818)
!2872 = !DILocation(line: 88, column: 3, scope: !2818)
!2873 = !DILocation(line: 95, column: 3, scope: !2818)
!2874 = !DILocation(line: 97, column: 3, scope: !2818)
!2875 = !DILocation(line: 105, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2818, file: !158, line: 98, column: 5)
!2877 = !DILocation(line: 106, column: 7, scope: !2876)
!2878 = !DILocation(line: 109, column: 7, scope: !2876)
!2879 = !DILocation(line: 110, column: 7, scope: !2876)
!2880 = !DILocation(line: 113, column: 7, scope: !2876)
!2881 = !DILocation(line: 115, column: 7, scope: !2876)
!2882 = !DILocation(line: 120, column: 7, scope: !2876)
!2883 = !DILocation(line: 122, column: 7, scope: !2876)
!2884 = !DILocation(line: 127, column: 7, scope: !2876)
!2885 = !DILocation(line: 129, column: 7, scope: !2876)
!2886 = !DILocation(line: 134, column: 7, scope: !2876)
!2887 = !DILocation(line: 137, column: 7, scope: !2876)
!2888 = !DILocation(line: 142, column: 7, scope: !2876)
!2889 = !DILocation(line: 145, column: 7, scope: !2876)
!2890 = !DILocation(line: 150, column: 7, scope: !2876)
!2891 = !DILocation(line: 154, column: 7, scope: !2876)
!2892 = !DILocation(line: 159, column: 7, scope: !2876)
!2893 = !DILocation(line: 163, column: 7, scope: !2876)
!2894 = !DILocation(line: 170, column: 7, scope: !2876)
!2895 = !DILocation(line: 174, column: 7, scope: !2876)
!2896 = !DILocation(line: 176, column: 1, scope: !2818)
!2897 = distinct !DISubprogram(name: "version_etc_ar", scope: !158, file: !158, line: 183, type: !2898, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2821, !31, !31, !31, !2856}
!2900 = !{!2901, !2902, !2903, !2904, !2905, !2906}
!2901 = !DILocalVariable(name: "stream", arg: 1, scope: !2897, file: !158, line: 183, type: !2821)
!2902 = !DILocalVariable(name: "command_name", arg: 2, scope: !2897, file: !158, line: 184, type: !31)
!2903 = !DILocalVariable(name: "package", arg: 3, scope: !2897, file: !158, line: 184, type: !31)
!2904 = !DILocalVariable(name: "version", arg: 4, scope: !2897, file: !158, line: 185, type: !31)
!2905 = !DILocalVariable(name: "authors", arg: 5, scope: !2897, file: !158, line: 185, type: !2856)
!2906 = !DILocalVariable(name: "n_authors", scope: !2897, file: !158, line: 187, type: !93)
!2907 = !DILocation(line: 0, scope: !2897)
!2908 = !DILocation(line: 189, column: 8, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2897, file: !158, line: 189, column: 3)
!2910 = !DILocation(line: 0, scope: !2909)
!2911 = !DILocation(line: 189, column: 23, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !158, line: 189, column: 3)
!2913 = !DILocation(line: 189, column: 3, scope: !2909)
!2914 = !DILocation(line: 189, column: 52, scope: !2912)
!2915 = distinct !{!2915, !2913, !2916, !654}
!2916 = !DILocation(line: 190, column: 5, scope: !2909)
!2917 = !DILocation(line: 191, column: 3, scope: !2897)
!2918 = !DILocation(line: 192, column: 1, scope: !2897)
!2919 = distinct !DISubprogram(name: "version_etc_va", scope: !158, file: !158, line: 199, type: !2920, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2929)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2821, !31, !31, !31, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2924)
!2924 = !{!2925, !2926, !2927, !2928}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2923, file: !158, line: 192, baseType: !7, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2923, file: !158, line: 192, baseType: !7, size: 32, offset: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2923, file: !158, line: 192, baseType: !23, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2923, file: !158, line: 192, baseType: !23, size: 64, offset: 128)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2930 = !DILocalVariable(name: "stream", arg: 1, scope: !2919, file: !158, line: 199, type: !2821)
!2931 = !DILocalVariable(name: "command_name", arg: 2, scope: !2919, file: !158, line: 200, type: !31)
!2932 = !DILocalVariable(name: "package", arg: 3, scope: !2919, file: !158, line: 200, type: !31)
!2933 = !DILocalVariable(name: "version", arg: 4, scope: !2919, file: !158, line: 201, type: !31)
!2934 = !DILocalVariable(name: "authors", arg: 5, scope: !2919, file: !158, line: 201, type: !2922)
!2935 = !DILocalVariable(name: "n_authors", scope: !2919, file: !158, line: 203, type: !93)
!2936 = !DILocalVariable(name: "authtab", scope: !2919, file: !158, line: 204, type: !2937)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 640, elements: !101)
!2938 = !DILocation(line: 0, scope: !2919)
!2939 = !DILocation(line: 204, column: 3, scope: !2919)
!2940 = !DILocation(line: 204, column: 15, scope: !2919)
!2941 = !DILocation(line: 208, column: 35, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !158, line: 206, column: 3)
!2943 = distinct !DILexicalBlock(scope: !2919, file: !158, line: 206, column: 3)
!2944 = !DILocation(line: 208, column: 14, scope: !2942)
!2945 = !DILocation(line: 208, column: 33, scope: !2942)
!2946 = !DILocation(line: 208, column: 67, scope: !2942)
!2947 = !DILocation(line: 206, column: 3, scope: !2943)
!2948 = !DILocation(line: 0, scope: !2943)
!2949 = !DILocation(line: 211, column: 3, scope: !2919)
!2950 = !DILocation(line: 213, column: 1, scope: !2919)
!2951 = distinct !DISubprogram(name: "version_etc", scope: !158, file: !158, line: 230, type: !2952, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2821, !31, !31, !31, null}
!2954 = !{!2955, !2956, !2957, !2958, !2959}
!2955 = !DILocalVariable(name: "stream", arg: 1, scope: !2951, file: !158, line: 230, type: !2821)
!2956 = !DILocalVariable(name: "command_name", arg: 2, scope: !2951, file: !158, line: 231, type: !31)
!2957 = !DILocalVariable(name: "package", arg: 3, scope: !2951, file: !158, line: 231, type: !31)
!2958 = !DILocalVariable(name: "version", arg: 4, scope: !2951, file: !158, line: 232, type: !31)
!2959 = !DILocalVariable(name: "authors", scope: !2951, file: !158, line: 234, type: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !679, line: 52, baseType: !2961)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2962, line: 32, baseType: !2963)
!2962 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !158, baseType: !2964)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2923, size: 192, elements: !713)
!2965 = !DILocation(line: 0, scope: !2951)
!2966 = !DILocation(line: 234, column: 3, scope: !2951)
!2967 = !DILocation(line: 234, column: 11, scope: !2951)
!2968 = !DILocation(line: 236, column: 3, scope: !2951)
!2969 = !DILocation(line: 237, column: 3, scope: !2951)
!2970 = !DILocation(line: 238, column: 3, scope: !2951)
!2971 = !DILocation(line: 239, column: 1, scope: !2951)
!2972 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !158, file: !158, line: 242, type: !615, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !44)
!2973 = !DILocation(line: 244, column: 3, scope: !2972)
!2974 = !DILocation(line: 249, column: 3, scope: !2972)
!2975 = !DILocation(line: 255, column: 3, scope: !2972)
!2976 = !DILocation(line: 260, column: 3, scope: !2972)
!2977 = !DILocation(line: 262, column: 1, scope: !2972)
!2978 = distinct !DISubprogram(name: "xnmalloc", scope: !168, file: !168, line: 99, type: !1037, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2979)
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "n", arg: 1, scope: !2978, file: !168, line: 99, type: !93)
!2981 = !DILocalVariable(name: "s", arg: 2, scope: !2978, file: !168, line: 99, type: !93)
!2982 = !DILocation(line: 0, scope: !2978)
!2983 = !DILocation(line: 101, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2978, file: !168, line: 101, column: 7)
!2985 = !DILocation(line: 101, column: 7, scope: !2978)
!2986 = !DILocation(line: 102, column: 5, scope: !2984)
!2987 = !DILocation(line: 103, column: 21, scope: !2978)
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2989, file: !165, line: 39, type: !93)
!2989 = distinct !DISubprogram(name: "xmalloc", scope: !165, file: !165, line: 39, type: !2990, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!23, !93}
!2992 = !{!2988, !2993}
!2993 = !DILocalVariable(name: "p", scope: !2989, file: !165, line: 41, type: !23)
!2994 = !DILocation(line: 0, scope: !2989, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 103, column: 10, scope: !2978)
!2996 = !DILocation(line: 41, column: 13, scope: !2989, inlinedAt: !2995)
!2997 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !2995)
!2998 = distinct !DILexicalBlock(scope: !2989, file: !165, line: 42, column: 7)
!2999 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !2995)
!3000 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !2995)
!3001 = !DILocation(line: 103, column: 3, scope: !2978)
!3002 = !DILocation(line: 0, scope: !2989)
!3003 = !DILocation(line: 41, column: 13, scope: !2989)
!3004 = !DILocation(line: 42, column: 8, scope: !2998)
!3005 = !DILocation(line: 42, column: 10, scope: !2998)
!3006 = !DILocation(line: 43, column: 5, scope: !2998)
!3007 = !DILocation(line: 44, column: 3, scope: !2989)
!3008 = distinct !DISubprogram(name: "xnrealloc", scope: !168, file: !168, line: 112, type: !3009, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!23, !23, !93, !93}
!3011 = !{!3012, !3013, !3014}
!3012 = !DILocalVariable(name: "p", arg: 1, scope: !3008, file: !168, line: 112, type: !23)
!3013 = !DILocalVariable(name: "n", arg: 2, scope: !3008, file: !168, line: 112, type: !93)
!3014 = !DILocalVariable(name: "s", arg: 3, scope: !3008, file: !168, line: 112, type: !93)
!3015 = !DILocation(line: 0, scope: !3008)
!3016 = !DILocation(line: 114, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3008, file: !168, line: 114, column: 7)
!3018 = !DILocation(line: 114, column: 7, scope: !3008)
!3019 = !DILocation(line: 115, column: 5, scope: !3017)
!3020 = !DILocation(line: 116, column: 25, scope: !3008)
!3021 = !DILocalVariable(name: "p", arg: 1, scope: !3022, file: !165, line: 51, type: !23)
!3022 = distinct !DISubprogram(name: "xrealloc", scope: !165, file: !165, line: 51, type: !3023, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!23, !23, !93}
!3025 = !{!3021, !3026}
!3026 = !DILocalVariable(name: "n", arg: 2, scope: !3022, file: !165, line: 51, type: !93)
!3027 = !DILocation(line: 0, scope: !3022, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 116, column: 10, scope: !3008)
!3029 = !DILocation(line: 53, column: 8, scope: !3030, inlinedAt: !3028)
!3030 = distinct !DILexicalBlock(scope: !3022, file: !165, line: 53, column: 7)
!3031 = !DILocation(line: 53, column: 10, scope: !3030, inlinedAt: !3028)
!3032 = !DILocation(line: 57, column: 7, scope: !3033, inlinedAt: !3028)
!3033 = distinct !DILexicalBlock(scope: !3030, file: !165, line: 54, column: 5)
!3034 = !DILocation(line: 58, column: 7, scope: !3033, inlinedAt: !3028)
!3035 = !DILocation(line: 61, column: 7, scope: !3022, inlinedAt: !3028)
!3036 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3028)
!3037 = distinct !DILexicalBlock(scope: !3022, file: !165, line: 62, column: 7)
!3038 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3028)
!3039 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3028)
!3040 = !DILocation(line: 116, column: 3, scope: !3008)
!3041 = !DILocation(line: 0, scope: !3022)
!3042 = !DILocation(line: 53, column: 8, scope: !3030)
!3043 = !DILocation(line: 53, column: 10, scope: !3030)
!3044 = !DILocation(line: 57, column: 7, scope: !3033)
!3045 = !DILocation(line: 58, column: 7, scope: !3033)
!3046 = !DILocation(line: 61, column: 7, scope: !3022)
!3047 = !DILocation(line: 62, column: 8, scope: !3037)
!3048 = !DILocation(line: 62, column: 10, scope: !3037)
!3049 = !DILocation(line: 63, column: 5, scope: !3037)
!3050 = !DILocation(line: 65, column: 1, scope: !3022)
!3051 = !DILocation(line: 0, scope: !169)
!3052 = !DILocation(line: 176, column: 14, scope: !169)
!3053 = !DILocation(line: 178, column: 9, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !169, file: !168, line: 178, column: 7)
!3055 = !DILocation(line: 178, column: 7, scope: !169)
!3056 = !DILocation(line: 180, column: 13, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !168, line: 180, column: 11)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !168, line: 179, column: 5)
!3059 = !DILocation(line: 180, column: 11, scope: !3058)
!3060 = !DILocation(line: 188, column: 30, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !168, line: 181, column: 9)
!3062 = !DILocation(line: 189, column: 16, scope: !3061)
!3063 = !DILocation(line: 189, column: 13, scope: !3061)
!3064 = !DILocation(line: 190, column: 9, scope: !3061)
!3065 = !DILocation(line: 191, column: 11, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3058, file: !168, line: 191, column: 11)
!3067 = !DILocation(line: 191, column: 11, scope: !3058)
!3068 = !DILocation(line: 206, column: 7, scope: !169)
!3069 = !DILocation(line: 207, column: 25, scope: !169)
!3070 = !DILocation(line: 0, scope: !3022, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 207, column: 10, scope: !169)
!3072 = !DILocation(line: 53, column: 10, scope: !3030, inlinedAt: !3071)
!3073 = !DILocation(line: 192, column: 9, scope: !3066)
!3074 = !DILocation(line: 200, column: 69, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !168, line: 200, column: 11)
!3076 = distinct !DILexicalBlock(scope: !3054, file: !168, line: 195, column: 5)
!3077 = !DILocation(line: 201, column: 11, scope: !3075)
!3078 = !DILocation(line: 200, column: 11, scope: !3076)
!3079 = !DILocation(line: 202, column: 9, scope: !3075)
!3080 = !DILocation(line: 203, column: 14, scope: !3076)
!3081 = !DILocation(line: 203, column: 18, scope: !3076)
!3082 = !DILocation(line: 203, column: 9, scope: !3076)
!3083 = !DILocation(line: 53, column: 8, scope: !3030, inlinedAt: !3071)
!3084 = !DILocation(line: 57, column: 7, scope: !3033, inlinedAt: !3071)
!3085 = !DILocation(line: 58, column: 7, scope: !3033, inlinedAt: !3071)
!3086 = !DILocation(line: 61, column: 7, scope: !3022, inlinedAt: !3071)
!3087 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3071)
!3088 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3071)
!3089 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3071)
!3090 = !DILocation(line: 207, column: 3, scope: !169)
!3091 = distinct !DISubprogram(name: "xcharalloc", scope: !168, file: !168, line: 216, type: !2230, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3092)
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "n", arg: 1, scope: !3091, file: !168, line: 216, type: !93)
!3094 = !DILocation(line: 0, scope: !3091)
!3095 = !DILocation(line: 0, scope: !2989, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 218, column: 10, scope: !3091)
!3097 = !DILocation(line: 41, column: 13, scope: !2989, inlinedAt: !3096)
!3098 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !3096)
!3099 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !3096)
!3100 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !3096)
!3101 = !DILocation(line: 218, column: 3, scope: !3091)
!3102 = distinct !DISubprogram(name: "x2realloc", scope: !165, file: !165, line: 74, type: !3103, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!23, !23, !172}
!3105 = !{!3106, !3107}
!3106 = !DILocalVariable(name: "p", arg: 1, scope: !3102, file: !165, line: 74, type: !23)
!3107 = !DILocalVariable(name: "pn", arg: 2, scope: !3102, file: !165, line: 74, type: !172)
!3108 = !DILocation(line: 0, scope: !3102)
!3109 = !DILocation(line: 0, scope: !169, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 76, column: 10, scope: !3102)
!3111 = !DILocation(line: 176, column: 14, scope: !169, inlinedAt: !3110)
!3112 = !DILocation(line: 178, column: 9, scope: !3054, inlinedAt: !3110)
!3113 = !DILocation(line: 178, column: 7, scope: !169, inlinedAt: !3110)
!3114 = !DILocation(line: 180, column: 13, scope: !3057, inlinedAt: !3110)
!3115 = !DILocation(line: 180, column: 11, scope: !3058, inlinedAt: !3110)
!3116 = !DILocation(line: 191, column: 11, scope: !3066, inlinedAt: !3110)
!3117 = !DILocation(line: 191, column: 11, scope: !3058, inlinedAt: !3110)
!3118 = !DILocation(line: 192, column: 9, scope: !3066, inlinedAt: !3110)
!3119 = !DILocation(line: 201, column: 11, scope: !3075, inlinedAt: !3110)
!3120 = !DILocation(line: 200, column: 11, scope: !3076, inlinedAt: !3110)
!3121 = !DILocation(line: 202, column: 9, scope: !3075, inlinedAt: !3110)
!3122 = !DILocation(line: 203, column: 14, scope: !3076, inlinedAt: !3110)
!3123 = !DILocation(line: 203, column: 18, scope: !3076, inlinedAt: !3110)
!3124 = !DILocation(line: 203, column: 9, scope: !3076, inlinedAt: !3110)
!3125 = !DILocation(line: 0, scope: !3022, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 207, column: 10, scope: !169, inlinedAt: !3110)
!3127 = !DILocation(line: 53, column: 10, scope: !3030, inlinedAt: !3126)
!3128 = !DILocation(line: 206, column: 7, scope: !169, inlinedAt: !3110)
!3129 = !DILocation(line: 61, column: 7, scope: !3022, inlinedAt: !3126)
!3130 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3126)
!3131 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3126)
!3132 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3126)
!3133 = !DILocation(line: 76, column: 3, scope: !3102)
!3134 = distinct !DISubprogram(name: "xzalloc", scope: !165, file: !165, line: 84, type: !2990, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3135)
!3135 = !{!3136}
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3134, file: !165, line: 84, type: !93)
!3137 = !DILocation(line: 0, scope: !3134)
!3138 = !DILocalVariable(name: "n", arg: 1, scope: !3139, file: !165, line: 93, type: !93)
!3139 = distinct !DISubprogram(name: "xcalloc", scope: !165, file: !165, line: 93, type: !1037, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3140)
!3140 = !{!3138, !3141, !3142}
!3141 = !DILocalVariable(name: "s", arg: 2, scope: !3139, file: !165, line: 93, type: !93)
!3142 = !DILocalVariable(name: "p", scope: !3139, file: !165, line: 95, type: !23)
!3143 = !DILocation(line: 0, scope: !3139, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 86, column: 10, scope: !3134)
!3145 = !DILocation(line: 100, column: 7, scope: !3146, inlinedAt: !3144)
!3146 = distinct !DILexicalBlock(scope: !3139, file: !165, line: 100, column: 7)
!3147 = !DILocation(line: 101, column: 7, scope: !3146, inlinedAt: !3144)
!3148 = !DILocation(line: 101, column: 18, scope: !3146, inlinedAt: !3144)
!3149 = !DILocation(line: 101, column: 16, scope: !3146, inlinedAt: !3144)
!3150 = !DILocation(line: 100, column: 7, scope: !3139, inlinedAt: !3144)
!3151 = !DILocation(line: 102, column: 5, scope: !3146, inlinedAt: !3144)
!3152 = !DILocation(line: 86, column: 3, scope: !3134)
!3153 = !DILocation(line: 0, scope: !3139)
!3154 = !DILocation(line: 100, column: 7, scope: !3146)
!3155 = !DILocation(line: 101, column: 7, scope: !3146)
!3156 = !DILocation(line: 101, column: 18, scope: !3146)
!3157 = !DILocation(line: 101, column: 16, scope: !3146)
!3158 = !DILocation(line: 100, column: 7, scope: !3139)
!3159 = !DILocation(line: 102, column: 5, scope: !3146)
!3160 = !DILocation(line: 103, column: 3, scope: !3139)
!3161 = distinct !DISubprogram(name: "xmemdup", scope: !165, file: !165, line: 111, type: !3162, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3166)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!23, !3164, !93}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3166 = !{!3167, !3168}
!3167 = !DILocalVariable(name: "p", arg: 1, scope: !3161, file: !165, line: 111, type: !3164)
!3168 = !DILocalVariable(name: "s", arg: 2, scope: !3161, file: !165, line: 111, type: !93)
!3169 = !DILocation(line: 0, scope: !3161)
!3170 = !DILocation(line: 0, scope: !2989, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 113, column: 18, scope: !3161)
!3172 = !DILocation(line: 41, column: 13, scope: !2989, inlinedAt: !3171)
!3173 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !3171)
!3174 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !3171)
!3175 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !3171)
!3176 = !DILocalVariable(name: "__dest", arg: 1, scope: !3177, file: !1757, line: 26, type: !3180)
!3177 = distinct !DISubprogram(name: "memcpy", scope: !1757, file: !1757, line: 26, type: !3178, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3182)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!23, !3180, !3181, !93}
!3180 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!3181 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3164)
!3182 = !{!3176, !3183, !3184}
!3183 = !DILocalVariable(name: "__src", arg: 2, scope: !3177, file: !1757, line: 26, type: !3181)
!3184 = !DILocalVariable(name: "__len", arg: 3, scope: !3177, file: !1757, line: 26, type: !93)
!3185 = !DILocation(line: 0, scope: !3177, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 113, column: 10, scope: !3161)
!3187 = !DILocation(line: 29, column: 10, scope: !3177, inlinedAt: !3186)
!3188 = !DILocation(line: 113, column: 3, scope: !3161)
!3189 = distinct !DISubprogram(name: "xstrdup", scope: !165, file: !165, line: 119, type: !856, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3190)
!3190 = !{!3191}
!3191 = !DILocalVariable(name: "string", arg: 1, scope: !3189, file: !165, line: 119, type: !31)
!3192 = !DILocation(line: 0, scope: !3189)
!3193 = !DILocation(line: 121, column: 27, scope: !3189)
!3194 = !DILocation(line: 121, column: 43, scope: !3189)
!3195 = !DILocation(line: 0, scope: !3161, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 121, column: 10, scope: !3189)
!3197 = !DILocation(line: 0, scope: !2989, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 113, column: 18, scope: !3161, inlinedAt: !3196)
!3199 = !DILocation(line: 41, column: 13, scope: !2989, inlinedAt: !3198)
!3200 = !DILocation(line: 42, column: 8, scope: !2998, inlinedAt: !3198)
!3201 = !DILocation(line: 42, column: 10, scope: !2998, inlinedAt: !3198)
!3202 = !DILocation(line: 43, column: 5, scope: !2998, inlinedAt: !3198)
!3203 = !DILocation(line: 0, scope: !3177, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 113, column: 10, scope: !3161, inlinedAt: !3196)
!3205 = !DILocation(line: 29, column: 10, scope: !3177, inlinedAt: !3204)
!3206 = !DILocation(line: 121, column: 3, scope: !3189)
!3207 = distinct !DISubprogram(name: "xalloc_die", scope: !182, file: !182, line: 32, type: !615, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !181, retainedNodes: !44)
!3208 = !DILocation(line: 34, column: 10, scope: !3207)
!3209 = !DILocation(line: 34, column: 33, scope: !3207)
!3210 = !DILocation(line: 34, column: 3, scope: !3207)
!3211 = !DILocation(line: 40, column: 3, scope: !3207)
!3212 = distinct !DISubprogram(name: "rpl_calloc", scope: !184, file: !184, line: 42, type: !1037, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3213)
!3213 = !{!3214, !3215, !3216, !3217}
!3214 = !DILocalVariable(name: "n", arg: 1, scope: !3212, file: !184, line: 42, type: !93)
!3215 = !DILocalVariable(name: "s", arg: 2, scope: !3212, file: !184, line: 42, type: !93)
!3216 = !DILocalVariable(name: "result", scope: !3212, file: !184, line: 44, type: !23)
!3217 = !DILocalVariable(name: "bytes", scope: !3218, file: !184, line: 56, type: !93)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !184, line: 53, column: 5)
!3219 = distinct !DILexicalBlock(scope: !3212, file: !184, line: 47, column: 7)
!3220 = !DILocation(line: 0, scope: !3212)
!3221 = !DILocation(line: 47, column: 9, scope: !3219)
!3222 = !DILocation(line: 47, column: 14, scope: !3219)
!3223 = !DILocation(line: 0, scope: !3218)
!3224 = !DILocation(line: 57, column: 21, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3218, file: !184, line: 57, column: 11)
!3226 = !DILocation(line: 57, column: 11, scope: !3218)
!3227 = !DILocation(line: 59, column: 11, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3225, file: !184, line: 58, column: 9)
!3229 = !DILocation(line: 59, column: 17, scope: !3228)
!3230 = !DILocation(line: 65, column: 12, scope: !3212)
!3231 = !DILocation(line: 72, column: 3, scope: !3212)
!3232 = !DILocation(line: 73, column: 1, scope: !3212)
!3233 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !186, file: !186, line: 86, type: !3234, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !3248)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!93, !3236, !31, !93, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1510, line: 6, baseType: !3239)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1512, line: 21, baseType: !3240)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1512, line: 13, size: 64, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3240, file: !1512, line: 15, baseType: !34, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3240, file: !1512, line: 20, baseType: !3244, size: 32, offset: 32)
!3244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3240, file: !1512, line: 16, size: 32, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3244, file: !1512, line: 18, baseType: !7, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3244, file: !1512, line: 19, baseType: !1521, size: 32)
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255}
!3249 = !DILocalVariable(name: "pwc", arg: 1, scope: !3233, file: !186, line: 86, type: !3236)
!3250 = !DILocalVariable(name: "s", arg: 2, scope: !3233, file: !186, line: 86, type: !31)
!3251 = !DILocalVariable(name: "n", arg: 3, scope: !3233, file: !186, line: 86, type: !93)
!3252 = !DILocalVariable(name: "ps", arg: 4, scope: !3233, file: !186, line: 86, type: !3237)
!3253 = !DILocalVariable(name: "ret", scope: !3233, file: !186, line: 88, type: !93)
!3254 = !DILocalVariable(name: "wc", scope: !3233, file: !186, line: 89, type: !1526)
!3255 = !DILocalVariable(name: "uc", scope: !3256, file: !186, line: 156, type: !1388)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !186, line: 155, column: 5)
!3257 = distinct !DILexicalBlock(scope: !3233, file: !186, line: 154, column: 7)
!3258 = !DILocation(line: 0, scope: !3233)
!3259 = !DILocation(line: 89, column: 3, scope: !3233)
!3260 = !DILocation(line: 105, column: 9, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3233, file: !186, line: 105, column: 7)
!3262 = !DILocation(line: 105, column: 7, scope: !3233)
!3263 = !DILocation(line: 145, column: 9, scope: !3233)
!3264 = !DILocation(line: 154, column: 19, scope: !3257)
!3265 = !DILocation(line: 154, column: 26, scope: !3257)
!3266 = !DILocation(line: 154, column: 41, scope: !3257)
!3267 = !DILocation(line: 154, column: 7, scope: !3233)
!3268 = !DILocation(line: 156, column: 26, scope: !3256)
!3269 = !DILocation(line: 0, scope: !3256)
!3270 = !DILocation(line: 157, column: 14, scope: !3256)
!3271 = !DILocation(line: 157, column: 12, scope: !3256)
!3272 = !DILocation(line: 163, column: 1, scope: !3233)
!3273 = !DISubprogram(name: "mbrtowc", scope: !2190, file: !2190, line: 296, type: !3274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!95, !36, !31, !95, !3276}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3277 = distinct !DISubprogram(name: "close_stream", scope: !188, file: !188, line: 56, type: !3278, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3314)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!34, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2823, line: 7, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !684, line: 49, size: 1728, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3282, file: !684, line: 51, baseType: !34, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3282, file: !684, line: 54, baseType: !21, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3282, file: !684, line: 55, baseType: !21, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3282, file: !684, line: 56, baseType: !21, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3282, file: !684, line: 57, baseType: !21, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3282, file: !684, line: 58, baseType: !21, size: 64, offset: 320)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3282, file: !684, line: 59, baseType: !21, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3282, file: !684, line: 60, baseType: !21, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3282, file: !684, line: 61, baseType: !21, size: 64, offset: 512)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3282, file: !684, line: 64, baseType: !21, size: 64, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3282, file: !684, line: 65, baseType: !21, size: 64, offset: 640)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3282, file: !684, line: 66, baseType: !21, size: 64, offset: 704)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3282, file: !684, line: 68, baseType: !699, size: 64, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3282, file: !684, line: 70, baseType: !3298, size: 64, offset: 832)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3282, file: !684, line: 72, baseType: !34, size: 32, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3282, file: !684, line: 73, baseType: !34, size: 32, offset: 928)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3282, file: !684, line: 74, baseType: !705, size: 64, offset: 960)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3282, file: !684, line: 77, baseType: !92, size: 16, offset: 1024)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3282, file: !684, line: 78, baseType: !710, size: 8, offset: 1040)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3282, file: !684, line: 79, baseType: !712, size: 8, offset: 1048)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3282, file: !684, line: 81, baseType: !716, size: 64, offset: 1088)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3282, file: !684, line: 89, baseType: !719, size: 64, offset: 1152)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3282, file: !684, line: 91, baseType: !721, size: 64, offset: 1216)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3282, file: !684, line: 92, baseType: !724, size: 64, offset: 1280)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3282, file: !684, line: 93, baseType: !3298, size: 64, offset: 1344)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3282, file: !684, line: 94, baseType: !23, size: 64, offset: 1408)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3282, file: !684, line: 95, baseType: !93, size: 64, offset: 1472)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3282, file: !684, line: 96, baseType: !34, size: 32, offset: 1536)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3282, file: !684, line: 98, baseType: !731, size: 160, offset: 1568)
!3314 = !{!3315, !3316, !3318, !3319}
!3315 = !DILocalVariable(name: "stream", arg: 1, scope: !3277, file: !188, line: 56, type: !3280)
!3316 = !DILocalVariable(name: "some_pending", scope: !3277, file: !188, line: 58, type: !3317)
!3317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3318 = !DILocalVariable(name: "prev_fail", scope: !3277, file: !188, line: 59, type: !3317)
!3319 = !DILocalVariable(name: "fclose_fail", scope: !3277, file: !188, line: 60, type: !3317)
!3320 = !DILocation(line: 0, scope: !3277)
!3321 = !DILocation(line: 58, column: 30, scope: !3277)
!3322 = !DILocalVariable(name: "__stream", arg: 1, scope: !3323, file: !3324, line: 135, type: !3280)
!3323 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3324, file: !3324, line: 135, type: !3278, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !187, retainedNodes: !3325)
!3324 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3325 = !{!3322}
!3326 = !DILocation(line: 0, scope: !3323, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 59, column: 27, scope: !3277)
!3328 = !DILocation(line: 137, column: 10, scope: !3323, inlinedAt: !3327)
!3329 = !{!3330, !794, i64 0}
!3330 = !{!"_IO_FILE", !794, i64 0, !606, i64 8, !606, i64 16, !606, i64 24, !606, i64 32, !606, i64 40, !606, i64 48, !606, i64 56, !606, i64 64, !606, i64 72, !606, i64 80, !606, i64 88, !606, i64 96, !606, i64 104, !794, i64 112, !794, i64 116, !1200, i64 120, !1749, i64 128, !607, i64 130, !607, i64 131, !606, i64 136, !1200, i64 144, !606, i64 152, !606, i64 160, !606, i64 168, !606, i64 176, !1200, i64 184, !794, i64 192, !607, i64 196}
!3331 = !DILocation(line: 59, column: 43, scope: !3277)
!3332 = !DILocation(line: 60, column: 29, scope: !3277)
!3333 = !DILocation(line: 60, column: 45, scope: !3277)
!3334 = !DILocation(line: 70, column: 17, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3277, file: !188, line: 70, column: 7)
!3336 = !DILocation(line: 58, column: 50, scope: !3277)
!3337 = !DILocation(line: 70, column: 33, scope: !3335)
!3338 = !DILocation(line: 70, column: 53, scope: !3335)
!3339 = !DILocation(line: 70, column: 59, scope: !3335)
!3340 = !DILocation(line: 70, column: 7, scope: !3277)
!3341 = !DILocation(line: 72, column: 11, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3335, file: !188, line: 71, column: 5)
!3343 = !DILocation(line: 73, column: 9, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3342, file: !188, line: 72, column: 11)
!3345 = !DILocation(line: 73, column: 15, scope: !3344)
!3346 = !DILocation(line: 78, column: 1, scope: !3277)
!3347 = distinct !DISubprogram(name: "hard_locale", scope: !190, file: !190, line: 27, type: !3348, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!53, !34}
!3350 = !{!3351, !3352}
!3351 = !DILocalVariable(name: "category", arg: 1, scope: !3347, file: !190, line: 27, type: !34)
!3352 = !DILocalVariable(name: "locale", scope: !3347, file: !190, line: 29, type: !3353)
!3353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2056, elements: !3354)
!3354 = !{!3355}
!3355 = !DISubrange(count: 257)
!3356 = !DILocation(line: 0, scope: !3347)
!3357 = !DILocation(line: 29, column: 3, scope: !3347)
!3358 = !DILocation(line: 29, column: 8, scope: !3347)
!3359 = !DILocation(line: 31, column: 7, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3347, file: !190, line: 31, column: 7)
!3361 = !DILocation(line: 31, column: 7, scope: !3347)
!3362 = !DILocation(line: 34, column: 12, scope: !3347)
!3363 = !DILocation(line: 34, column: 38, scope: !3347)
!3364 = !DILocation(line: 34, column: 41, scope: !3347)
!3365 = !DILocation(line: 34, column: 66, scope: !3347)
!3366 = !DILocation(line: 35, column: 1, scope: !3347)
!3367 = distinct !DISubprogram(name: "locale_charset", scope: !192, file: !192, line: 831, type: !3368, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!31}
!3370 = !{!3371}
!3371 = !DILocalVariable(name: "codeset", scope: !3367, file: !192, line: 833, type: !31)
!3372 = !DILocation(line: 847, column: 13, scope: !3367)
!3373 = !DILocation(line: 0, scope: !3367)
!3374 = !DILocation(line: 911, column: 15, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3367, file: !192, line: 911, column: 7)
!3376 = !DILocation(line: 911, column: 7, scope: !3367)
!3377 = !DILocation(line: 1070, column: 13, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !192, line: 1070, column: 13)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !192, line: 1060, column: 7)
!3380 = distinct !DILexicalBlock(scope: !3367, file: !192, line: 1019, column: 3)
!3381 = !DILocation(line: 1070, column: 24, scope: !3378)
!3382 = !DILocation(line: 1070, column: 13, scope: !3379)
!3383 = !DILocation(line: 1158, column: 3, scope: !3367)
!3384 = !DISubprogram(name: "nl_langinfo", scope: !195, file: !195, line: 661, type: !3385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!21, !34}
!3387 = distinct !DISubprogram(name: "setlocale_null_r", scope: !581, file: !581, line: 269, type: !3388, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!34, !34, !21, !93}
!3390 = !{!3391, !3392, !3393}
!3391 = !DILocalVariable(name: "category", arg: 1, scope: !3387, file: !581, line: 269, type: !34)
!3392 = !DILocalVariable(name: "buf", arg: 2, scope: !3387, file: !581, line: 269, type: !21)
!3393 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3387, file: !581, line: 269, type: !93)
!3394 = !DILocation(line: 0, scope: !3387)
!3395 = !DILocalVariable(name: "category", arg: 1, scope: !3396, file: !581, line: 91, type: !34)
!3396 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !581, file: !581, line: 91, type: !3388, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3397)
!3397 = !{!3395, !3398, !3399, !3400, !3401}
!3398 = !DILocalVariable(name: "buf", arg: 2, scope: !3396, file: !581, line: 91, type: !21)
!3399 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3396, file: !581, line: 91, type: !93)
!3400 = !DILocalVariable(name: "result", scope: !3396, file: !581, line: 140, type: !31)
!3401 = !DILocalVariable(name: "length", scope: !3402, file: !581, line: 154, type: !93)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !581, line: 153, column: 5)
!3403 = distinct !DILexicalBlock(scope: !3396, file: !581, line: 142, column: 7)
!3404 = !DILocation(line: 0, scope: !3396, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 274, column: 10, scope: !3387)
!3406 = !DILocalVariable(name: "category", arg: 1, scope: !3407, file: !581, line: 60, type: !34)
!3407 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !581, file: !581, line: 60, type: !3408, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!31, !34}
!3410 = !{!3406, !3411}
!3411 = !DILocalVariable(name: "result", scope: !3407, file: !581, line: 62, type: !31)
!3412 = !DILocation(line: 0, scope: !3407, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 140, column: 24, scope: !3396, inlinedAt: !3405)
!3414 = !DILocation(line: 62, column: 24, scope: !3407, inlinedAt: !3413)
!3415 = !DILocation(line: 142, column: 14, scope: !3403, inlinedAt: !3405)
!3416 = !DILocation(line: 142, column: 7, scope: !3396, inlinedAt: !3405)
!3417 = !DILocation(line: 145, column: 19, scope: !3418, inlinedAt: !3405)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !581, line: 145, column: 11)
!3419 = distinct !DILexicalBlock(scope: !3403, file: !581, line: 143, column: 5)
!3420 = !DILocation(line: 145, column: 11, scope: !3419, inlinedAt: !3405)
!3421 = !DILocation(line: 149, column: 16, scope: !3418, inlinedAt: !3405)
!3422 = !DILocation(line: 149, column: 9, scope: !3418, inlinedAt: !3405)
!3423 = !DILocation(line: 154, column: 23, scope: !3402, inlinedAt: !3405)
!3424 = !DILocation(line: 0, scope: !3402, inlinedAt: !3405)
!3425 = !DILocation(line: 155, column: 18, scope: !3426, inlinedAt: !3405)
!3426 = distinct !DILexicalBlock(scope: !3402, file: !581, line: 155, column: 11)
!3427 = !DILocation(line: 155, column: 11, scope: !3402, inlinedAt: !3405)
!3428 = !DILocation(line: 157, column: 39, scope: !3429, inlinedAt: !3405)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !581, line: 156, column: 9)
!3430 = !DILocalVariable(name: "__dest", arg: 1, scope: !3431, file: !1757, line: 26, type: !3180)
!3431 = distinct !DISubprogram(name: "memcpy", scope: !1757, file: !1757, line: 26, type: !3178, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3432)
!3432 = !{!3430, !3433, !3434}
!3433 = !DILocalVariable(name: "__src", arg: 2, scope: !3431, file: !1757, line: 26, type: !3181)
!3434 = !DILocalVariable(name: "__len", arg: 3, scope: !3431, file: !1757, line: 26, type: !93)
!3435 = !DILocation(line: 0, scope: !3431, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 157, column: 11, scope: !3429, inlinedAt: !3405)
!3437 = !DILocation(line: 29, column: 10, scope: !3431, inlinedAt: !3436)
!3438 = !DILocation(line: 158, column: 11, scope: !3429, inlinedAt: !3405)
!3439 = !DILocation(line: 162, column: 23, scope: !3440, inlinedAt: !3405)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !581, line: 162, column: 15)
!3441 = distinct !DILexicalBlock(scope: !3426, file: !581, line: 161, column: 9)
!3442 = !DILocation(line: 162, column: 15, scope: !3441, inlinedAt: !3405)
!3443 = !DILocation(line: 167, column: 44, scope: !3444, inlinedAt: !3405)
!3444 = distinct !DILexicalBlock(scope: !3440, file: !581, line: 163, column: 13)
!3445 = !DILocation(line: 0, scope: !3431, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 167, column: 15, scope: !3444, inlinedAt: !3405)
!3447 = !DILocation(line: 29, column: 10, scope: !3431, inlinedAt: !3446)
!3448 = !DILocation(line: 168, column: 15, scope: !3444, inlinedAt: !3405)
!3449 = !DILocation(line: 168, column: 32, scope: !3444, inlinedAt: !3405)
!3450 = !DILocation(line: 169, column: 13, scope: !3444, inlinedAt: !3405)
!3451 = !DILocation(line: 0, scope: !3403, inlinedAt: !3405)
!3452 = !DILocation(line: 274, column: 3, scope: !3387)
!3453 = distinct !DISubprogram(name: "setlocale_null", scope: !581, file: !581, line: 301, type: !3408, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3454)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "category", arg: 1, scope: !3453, file: !581, line: 301, type: !34)
!3456 = !DILocation(line: 0, scope: !3453)
!3457 = !DILocation(line: 0, scope: !3407, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 304, column: 10, scope: !3453)
!3459 = !DILocation(line: 62, column: 24, scope: !3407, inlinedAt: !3458)
!3460 = !DILocation(line: 304, column: 3, scope: !3453)
!3461 = distinct !DISubprogram(name: "rpl_fclose", scope: !583, file: !583, line: 58, type: !3462, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !582, retainedNodes: !3498)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!34, !3464}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2823, line: 7, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !684, line: 49, size: 1728, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3466, file: !684, line: 51, baseType: !34, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3466, file: !684, line: 54, baseType: !21, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3466, file: !684, line: 55, baseType: !21, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3466, file: !684, line: 56, baseType: !21, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3466, file: !684, line: 57, baseType: !21, size: 64, offset: 256)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3466, file: !684, line: 58, baseType: !21, size: 64, offset: 320)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3466, file: !684, line: 59, baseType: !21, size: 64, offset: 384)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3466, file: !684, line: 60, baseType: !21, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3466, file: !684, line: 61, baseType: !21, size: 64, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3466, file: !684, line: 64, baseType: !21, size: 64, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3466, file: !684, line: 65, baseType: !21, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3466, file: !684, line: 66, baseType: !21, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3466, file: !684, line: 68, baseType: !699, size: 64, offset: 768)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3466, file: !684, line: 70, baseType: !3482, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3466, file: !684, line: 72, baseType: !34, size: 32, offset: 896)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3466, file: !684, line: 73, baseType: !34, size: 32, offset: 928)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3466, file: !684, line: 74, baseType: !705, size: 64, offset: 960)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3466, file: !684, line: 77, baseType: !92, size: 16, offset: 1024)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3466, file: !684, line: 78, baseType: !710, size: 8, offset: 1040)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3466, file: !684, line: 79, baseType: !712, size: 8, offset: 1048)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3466, file: !684, line: 81, baseType: !716, size: 64, offset: 1088)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3466, file: !684, line: 89, baseType: !719, size: 64, offset: 1152)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3466, file: !684, line: 91, baseType: !721, size: 64, offset: 1216)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3466, file: !684, line: 92, baseType: !724, size: 64, offset: 1280)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3466, file: !684, line: 93, baseType: !3482, size: 64, offset: 1344)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3466, file: !684, line: 94, baseType: !23, size: 64, offset: 1408)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3466, file: !684, line: 95, baseType: !93, size: 64, offset: 1472)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3466, file: !684, line: 96, baseType: !34, size: 32, offset: 1536)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3466, file: !684, line: 98, baseType: !731, size: 160, offset: 1568)
!3498 = !{!3499, !3500, !3501, !3502}
!3499 = !DILocalVariable(name: "fp", arg: 1, scope: !3461, file: !583, line: 58, type: !3464)
!3500 = !DILocalVariable(name: "saved_errno", scope: !3461, file: !583, line: 60, type: !34)
!3501 = !DILocalVariable(name: "fd", scope: !3461, file: !583, line: 61, type: !34)
!3502 = !DILocalVariable(name: "result", scope: !3461, file: !583, line: 62, type: !34)
!3503 = !DILocation(line: 0, scope: !3461)
!3504 = !DILocation(line: 65, column: 8, scope: !3461)
!3505 = !DILocation(line: 66, column: 10, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3461, file: !583, line: 66, column: 7)
!3507 = !DILocation(line: 66, column: 7, scope: !3461)
!3508 = !DILocation(line: 67, column: 12, scope: !3506)
!3509 = !DILocation(line: 67, column: 5, scope: !3506)
!3510 = !DILocation(line: 72, column: 9, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3461, file: !583, line: 72, column: 7)
!3512 = !DILocation(line: 72, column: 23, scope: !3511)
!3513 = !DILocation(line: 72, column: 33, scope: !3511)
!3514 = !DILocation(line: 72, column: 26, scope: !3511)
!3515 = !DILocation(line: 72, column: 59, scope: !3511)
!3516 = !DILocation(line: 73, column: 7, scope: !3511)
!3517 = !DILocation(line: 73, column: 10, scope: !3511)
!3518 = !DILocation(line: 72, column: 7, scope: !3461)
!3519 = !DILocation(line: 100, column: 12, scope: !3461)
!3520 = !DILocation(line: 105, column: 7, scope: !3461)
!3521 = !DILocation(line: 74, column: 19, scope: !3511)
!3522 = !DILocation(line: 105, column: 19, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3461, file: !583, line: 105, column: 7)
!3524 = !DILocation(line: 107, column: 13, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3523, file: !583, line: 106, column: 5)
!3526 = !DILocation(line: 109, column: 5, scope: !3525)
!3527 = !DILocation(line: 112, column: 1, scope: !3461)
!3528 = !DISubprogram(name: "fileno", scope: !679, file: !679, line: 785, type: !3529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!34, !3482}
!3531 = !DISubprogram(name: "fclose", scope: !679, file: !679, line: 213, type: !3529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!3532 = !DISubprogram(name: "lseek", scope: !3533, file: !3533, line: 334, type: !3534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!3533 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!707, !34, !707, !34}
!3536 = distinct !DISubprogram(name: "rpl_fflush", scope: !585, file: !585, line: 129, type: !3537, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3573)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!34, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2823, line: 7, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !684, line: 49, size: 1728, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3541, file: !684, line: 51, baseType: !34, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3541, file: !684, line: 54, baseType: !21, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3541, file: !684, line: 55, baseType: !21, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3541, file: !684, line: 56, baseType: !21, size: 64, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3541, file: !684, line: 57, baseType: !21, size: 64, offset: 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3541, file: !684, line: 58, baseType: !21, size: 64, offset: 320)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3541, file: !684, line: 59, baseType: !21, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3541, file: !684, line: 60, baseType: !21, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3541, file: !684, line: 61, baseType: !21, size: 64, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3541, file: !684, line: 64, baseType: !21, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3541, file: !684, line: 65, baseType: !21, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3541, file: !684, line: 66, baseType: !21, size: 64, offset: 704)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3541, file: !684, line: 68, baseType: !699, size: 64, offset: 768)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3541, file: !684, line: 70, baseType: !3557, size: 64, offset: 832)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3541, file: !684, line: 72, baseType: !34, size: 32, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3541, file: !684, line: 73, baseType: !34, size: 32, offset: 928)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3541, file: !684, line: 74, baseType: !705, size: 64, offset: 960)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3541, file: !684, line: 77, baseType: !92, size: 16, offset: 1024)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3541, file: !684, line: 78, baseType: !710, size: 8, offset: 1040)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3541, file: !684, line: 79, baseType: !712, size: 8, offset: 1048)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3541, file: !684, line: 81, baseType: !716, size: 64, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3541, file: !684, line: 89, baseType: !719, size: 64, offset: 1152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3541, file: !684, line: 91, baseType: !721, size: 64, offset: 1216)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3541, file: !684, line: 92, baseType: !724, size: 64, offset: 1280)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3541, file: !684, line: 93, baseType: !3557, size: 64, offset: 1344)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3541, file: !684, line: 94, baseType: !23, size: 64, offset: 1408)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3541, file: !684, line: 95, baseType: !93, size: 64, offset: 1472)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3541, file: !684, line: 96, baseType: !34, size: 32, offset: 1536)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3541, file: !684, line: 98, baseType: !731, size: 160, offset: 1568)
!3573 = !{!3574}
!3574 = !DILocalVariable(name: "stream", arg: 1, scope: !3536, file: !585, line: 129, type: !3539)
!3575 = !DILocation(line: 0, scope: !3536)
!3576 = !DILocation(line: 150, column: 14, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3536, file: !585, line: 150, column: 7)
!3578 = !DILocation(line: 150, column: 22, scope: !3577)
!3579 = !DILocation(line: 150, column: 27, scope: !3577)
!3580 = !DILocation(line: 150, column: 7, scope: !3536)
!3581 = !DILocation(line: 151, column: 12, scope: !3577)
!3582 = !DILocation(line: 151, column: 5, scope: !3577)
!3583 = !DILocalVariable(name: "fp", arg: 1, scope: !3584, file: !585, line: 41, type: !3539)
!3584 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !585, file: !585, line: 41, type: !3585, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3539}
!3587 = !{!3583}
!3588 = !DILocation(line: 0, scope: !3584, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 156, column: 3, scope: !3536)
!3590 = !DILocation(line: 43, column: 11, scope: !3591, inlinedAt: !3589)
!3591 = distinct !DILexicalBlock(scope: !3584, file: !585, line: 43, column: 7)
!3592 = !DILocation(line: 43, column: 18, scope: !3591, inlinedAt: !3589)
!3593 = !DILocation(line: 43, column: 7, scope: !3584, inlinedAt: !3589)
!3594 = !DILocation(line: 45, column: 5, scope: !3591, inlinedAt: !3589)
!3595 = !DILocation(line: 158, column: 10, scope: !3536)
!3596 = !DILocation(line: 158, column: 3, scope: !3536)
!3597 = !DILocation(line: 235, column: 1, scope: !3536)
!3598 = !DISubprogram(name: "fflush", scope: !679, file: !679, line: 218, type: !3599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!34, !3557}
!3601 = distinct !DISubprogram(name: "rpl_fseeko", scope: !587, file: !587, line: 28, type: !3602, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !586, retainedNodes: !3639)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!34, !3604, !3638, !34}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2823, line: 7, baseType: !3606)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !684, line: 49, size: 1728, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3606, file: !684, line: 51, baseType: !34, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3606, file: !684, line: 54, baseType: !21, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3606, file: !684, line: 55, baseType: !21, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3606, file: !684, line: 56, baseType: !21, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3606, file: !684, line: 57, baseType: !21, size: 64, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3606, file: !684, line: 58, baseType: !21, size: 64, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3606, file: !684, line: 59, baseType: !21, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3606, file: !684, line: 60, baseType: !21, size: 64, offset: 448)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3606, file: !684, line: 61, baseType: !21, size: 64, offset: 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3606, file: !684, line: 64, baseType: !21, size: 64, offset: 576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3606, file: !684, line: 65, baseType: !21, size: 64, offset: 640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3606, file: !684, line: 66, baseType: !21, size: 64, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3606, file: !684, line: 68, baseType: !699, size: 64, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3606, file: !684, line: 70, baseType: !3622, size: 64, offset: 832)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3606, file: !684, line: 72, baseType: !34, size: 32, offset: 896)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3606, file: !684, line: 73, baseType: !34, size: 32, offset: 928)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3606, file: !684, line: 74, baseType: !705, size: 64, offset: 960)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3606, file: !684, line: 77, baseType: !92, size: 16, offset: 1024)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3606, file: !684, line: 78, baseType: !710, size: 8, offset: 1040)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3606, file: !684, line: 79, baseType: !712, size: 8, offset: 1048)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3606, file: !684, line: 81, baseType: !716, size: 64, offset: 1088)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3606, file: !684, line: 89, baseType: !719, size: 64, offset: 1152)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3606, file: !684, line: 91, baseType: !721, size: 64, offset: 1216)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3606, file: !684, line: 92, baseType: !724, size: 64, offset: 1280)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3606, file: !684, line: 93, baseType: !3622, size: 64, offset: 1344)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3606, file: !684, line: 94, baseType: !23, size: 64, offset: 1408)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3606, file: !684, line: 95, baseType: !93, size: 64, offset: 1472)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3606, file: !684, line: 96, baseType: !34, size: 32, offset: 1536)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3606, file: !684, line: 98, baseType: !731, size: 160, offset: 1568)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !679, line: 63, baseType: !705)
!3639 = !{!3640, !3641, !3642, !3643}
!3640 = !DILocalVariable(name: "fp", arg: 1, scope: !3601, file: !587, line: 28, type: !3604)
!3641 = !DILocalVariable(name: "offset", arg: 2, scope: !3601, file: !587, line: 28, type: !3638)
!3642 = !DILocalVariable(name: "whence", arg: 3, scope: !3601, file: !587, line: 28, type: !34)
!3643 = !DILocalVariable(name: "pos", scope: !3644, file: !587, line: 117, type: !3638)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !587, line: 113, column: 5)
!3645 = distinct !DILexicalBlock(scope: !3601, file: !587, line: 52, column: 7)
!3646 = !DILocation(line: 0, scope: !3601)
!3647 = !DILocation(line: 52, column: 11, scope: !3645)
!3648 = !{!3330, !606, i64 16}
!3649 = !DILocation(line: 52, column: 31, scope: !3645)
!3650 = !{!3330, !606, i64 8}
!3651 = !DILocation(line: 52, column: 24, scope: !3645)
!3652 = !DILocation(line: 53, column: 7, scope: !3645)
!3653 = !DILocation(line: 53, column: 14, scope: !3645)
!3654 = !{!3330, !606, i64 40}
!3655 = !DILocation(line: 53, column: 35, scope: !3645)
!3656 = !{!3330, !606, i64 32}
!3657 = !DILocation(line: 53, column: 28, scope: !3645)
!3658 = !DILocation(line: 54, column: 7, scope: !3645)
!3659 = !DILocation(line: 54, column: 14, scope: !3645)
!3660 = !{!3330, !606, i64 72}
!3661 = !DILocation(line: 54, column: 28, scope: !3645)
!3662 = !DILocation(line: 52, column: 7, scope: !3601)
!3663 = !DILocation(line: 117, column: 26, scope: !3644)
!3664 = !DILocation(line: 117, column: 19, scope: !3644)
!3665 = !DILocation(line: 0, scope: !3644)
!3666 = !DILocation(line: 118, column: 15, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3644, file: !587, line: 118, column: 11)
!3668 = !DILocation(line: 118, column: 11, scope: !3644)
!3669 = !DILocation(line: 129, column: 11, scope: !3644)
!3670 = !DILocation(line: 129, column: 18, scope: !3644)
!3671 = !DILocation(line: 130, column: 11, scope: !3644)
!3672 = !DILocation(line: 130, column: 19, scope: !3644)
!3673 = !{!3330, !1200, i64 144}
!3674 = !DILocation(line: 161, column: 7, scope: !3644)
!3675 = !DILocation(line: 163, column: 10, scope: !3601)
!3676 = !DILocation(line: 163, column: 3, scope: !3601)
!3677 = !DILocation(line: 164, column: 1, scope: !3601)
!3678 = !DISubprogram(name: "fseeko", scope: !679, file: !679, line: 712, type: !3679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !44)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!34, !3622, !707, !34}
