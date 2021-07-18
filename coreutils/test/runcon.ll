; ModuleID = 'coreutils-8.32/src/runcon.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"Usage: %s CONTEXT COMMAND [args]\0A  or:  %s [ -c ] [-u USER] [-r ROLE] [-t TYPE] [-l RANGE] COMMAND [args]\0A\00", align 1
@.str.2 = private unnamed_addr constant [126 x i8] c"Run a program in a different SELinux security context.\0AWith neither CONTEXT nor COMMAND, print the current security context.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [267 x i8] c"  CONTEXT            Complete security context\0A  -c, --compute      compute process transition context before modifying\0A  -t, --type=TYPE    type (for same role as parent)\0A  -u, --user=USER    user identity\0A  -r, --role=ROLE    role\0A  -l, --range=RANGE  levelrange\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"runcon\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"+r:t:u:l:c\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [15 x i8] c"multiple roles\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"multiple types\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"multiple users\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"multiple levelranges\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Russell Coker\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"failed to get current context\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"you must specify -c, -t, -u, -l, -r, or context\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"no command specified\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s may be used only on a SELinux kernel\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"compute\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), align 8, !dbg !26
@.str.44 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !31
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !36
@.str.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !39
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !45
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !51
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !97
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !103
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !113
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !120
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !127
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !115
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !129
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !135
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !581 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !585, metadata !DIExpression()), !dbg !586
  %3 = icmp eq i32 %0, 0, !dbg !587
  br i1 %3, label %9, label %4, !dbg !589

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !590, !tbaa !592
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !590
  %7 = load i8*, i8** @program_name, align 8, !dbg !590, !tbaa !592
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !590
  br label %64, !dbg !590

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !596
  %11 = load i8*, i8** @program_name, align 8, !dbg !596, !tbaa !592
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #24, !dbg !596
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !598
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !598, !tbaa !592
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !598
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #24, !dbg !599
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !599, !tbaa !592
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #24, !dbg !599
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !605
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !592
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !605
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !606
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !606, !tbaa !592
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !606
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #24, !dbg !607
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !607, !tbaa !592
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !607
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), metadata !608, metadata !DIExpression()) #24, !dbg !626
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !628
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #24, !dbg !628
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !613, metadata !DIExpression()) #24, !dbg !629
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), metadata !622, metadata !DIExpression()) #24, !dbg !626
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !623, metadata !DIExpression()) #24, !dbg !626
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !630
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !623, metadata !DIExpression()) #24, !dbg !626
  br label %30, !dbg !631

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !623, metadata !DIExpression()) #24, !dbg !626
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %31) #25, !dbg !632
  %34 = icmp eq i32 %33, 0, !dbg !632
  br i1 %34, label %40, label %35, !dbg !631

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !633
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !623, metadata !DIExpression()) #24, !dbg !626
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !634
  %38 = load i8*, i8** %37, align 8, !dbg !634, !tbaa !635
  %39 = icmp eq i8* %38, null, !dbg !637
  br i1 %39, label %40, label %30, !dbg !638, !llvm.loop !639

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !641
  %43 = load i8*, i8** %42, align 8, !dbg !641, !tbaa !643
  %44 = icmp eq i8* %43, null, !dbg !644
  %45 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %43, !dbg !645
  call void @llvm.dbg.value(metadata i8* %45, metadata !622, metadata !DIExpression()) #24, !dbg !626
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #24, !dbg !646
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #24, !dbg !646
  %48 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !647
  call void @llvm.dbg.value(metadata i8* %48, metadata !625, metadata !DIExpression()) #24, !dbg !626
  %49 = icmp eq i8* %48, null, !dbg !648
  br i1 %49, label %57, label %50, !dbg !650

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #25, !dbg !651
  %52 = icmp eq i32 %51, 0, !dbg !651
  br i1 %52, label %57, label %53, !dbg !652

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #24, !dbg !653
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !592
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #24, !dbg !653
  br label %57, !dbg !655

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #24, !dbg !656
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !656
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #24, !dbg !657
  %61 = icmp eq i8* %45, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), !dbg !657
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !657
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #24, !dbg !657
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #24, !dbg !658
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #26, !dbg !659
  unreachable, !dbg !659
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !660 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !664 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !720 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !724 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !729, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8** %1, metadata !730, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* null, metadata !731, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* null, metadata !732, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* null, metadata !733, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* null, metadata !734, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* null, metadata !735, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* null, metadata !736, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* null, metadata !737, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* null, metadata !738, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8 0, metadata !739, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata i32* undef, metadata !740, metadata !DIExpression()), !dbg !747
  %4 = load i8*, i8** %1, align 8, !dbg !748, !tbaa !592
  tail call void @set_program_name(i8* %4) #24, !dbg !749
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !750
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #24, !dbg !751
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !752
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !753
  %9 = bitcast i32* %3 to i8*
  br label %10, !dbg !754

10:                                               ; preds = %46, %2
  %11 = phi i8* [ null, %2 ], [ %47, %46 ], !dbg !755
  %12 = phi i8* [ null, %2 ], [ %48, %46 ], !dbg !756
  %13 = phi i8* [ null, %2 ], [ %49, %46 ], !dbg !757
  %14 = phi i8 [ 0, %2 ], [ %50, %46 ], !dbg !758
  %15 = phi i8* [ null, %2 ], [ %51, %46 ], !dbg !759
  call void @llvm.dbg.value(metadata i8* %15, metadata !731, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8 %14, metadata !739, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %13, metadata !732, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %12, metadata !733, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %11, metadata !734, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #24, !dbg !760
  call void @llvm.dbg.value(metadata i32 0, metadata !743, metadata !DIExpression()), !dbg !761
  store i32 0, i32* %3, align 4, !dbg !762, !tbaa !763
  call void @llvm.dbg.value(metadata i32* %3, metadata !743, metadata !DIExpression(DW_OP_deref)), !dbg !761
  %16 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %3) #24, !dbg !765
  call void @llvm.dbg.value(metadata i32 %16, metadata !745, metadata !DIExpression()), !dbg !761
  switch i32 %16, label %45 [
    i32 -1, label %52
    i32 114, label %17
    i32 116, label %23
    i32 117, label %29
    i32 108, label %35
    i32 99, label %46
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !766

17:                                               ; preds = %10
  %18 = icmp eq i8* %15, null, !dbg !767
  br i1 %18, label %21, label %19, !dbg !770

19:                                               ; preds = %17
  %20 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 5) #24, !dbg !771
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %20) #24, !dbg !771
  unreachable, !dbg !771

21:                                               ; preds = %17
  %22 = load i8*, i8** @optarg, align 8, !dbg !772, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %22, metadata !731, metadata !DIExpression()), !dbg !746
  br label %46, !dbg !773

23:                                               ; preds = %10
  %24 = icmp eq i8* %11, null, !dbg !774
  br i1 %24, label %27, label %25, !dbg !776

25:                                               ; preds = %23
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #24, !dbg !777
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #24, !dbg !777
  unreachable, !dbg !777

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8, !dbg !778, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %28, metadata !734, metadata !DIExpression()), !dbg !746
  br label %46, !dbg !779

29:                                               ; preds = %10
  %30 = icmp eq i8* %12, null, !dbg !780
  br i1 %30, label %33, label %31, !dbg !782

31:                                               ; preds = %29
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 5) #24, !dbg !783
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %32) #24, !dbg !783
  unreachable, !dbg !783

33:                                               ; preds = %29
  %34 = load i8*, i8** @optarg, align 8, !dbg !784, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %34, metadata !733, metadata !DIExpression()), !dbg !746
  br label %46, !dbg !785

35:                                               ; preds = %10
  %36 = icmp eq i8* %13, null, !dbg !786
  br i1 %36, label %39, label %37, !dbg !788

37:                                               ; preds = %35
  %38 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 5) #24, !dbg !789
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %38) #24, !dbg !789
  unreachable, !dbg !789

39:                                               ; preds = %35
  %40 = load i8*, i8** @optarg, align 8, !dbg !790, !tbaa !592
  call void @llvm.dbg.value(metadata i8* %40, metadata !732, metadata !DIExpression()), !dbg !746
  br label %46, !dbg !791

41:                                               ; preds = %10
  call void @usage(i32 0) #27, !dbg !792
  unreachable, !dbg !792

42:                                               ; preds = %10
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !793, !tbaa !592
  %44 = load i8*, i8** @Version, align 8, !dbg !793, !tbaa !592
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* null) #24, !dbg !793
  call void @exit(i32 0) #26, !dbg !793
  unreachable, !dbg !793

45:                                               ; preds = %10
  call void @usage(i32 1) #27, !dbg !794
  unreachable, !dbg !794

46:                                               ; preds = %10, %21, %27, %33, %39
  %47 = phi i8* [ %11, %39 ], [ %11, %33 ], [ %28, %27 ], [ %11, %21 ], [ %11, %10 ], !dbg !755
  %48 = phi i8* [ %12, %39 ], [ %34, %33 ], [ %12, %27 ], [ %12, %21 ], [ %12, %10 ], !dbg !756
  %49 = phi i8* [ %40, %39 ], [ %13, %33 ], [ %13, %27 ], [ %13, %21 ], [ %13, %10 ], !dbg !757
  %50 = phi i8 [ %14, %39 ], [ %14, %33 ], [ %14, %27 ], [ %14, %21 ], [ 1, %10 ], !dbg !746
  %51 = phi i8* [ %15, %39 ], [ %15, %33 ], [ %15, %27 ], [ %22, %21 ], [ %15, %10 ], !dbg !759
  call void @llvm.dbg.value(metadata i8* %51, metadata !731, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8 %50, metadata !739, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %49, metadata !732, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %48, metadata !733, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %47, metadata !734, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #24, !dbg !795
  br label %10

52:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %51, metadata !731, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8 %50, metadata !739, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %49, metadata !732, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %48, metadata !733, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8* %47, metadata !734, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #24, !dbg !795
  %53 = load i32, i32* @optind, align 4, !dbg !796, !tbaa !763
  %54 = icmp eq i32 %53, %0, !dbg !798
  br i1 %54, label %55, label %58, !dbg !799

55:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8** undef, metadata !800, metadata !DIExpression()) #24, !dbg !808
  %56 = tail call i32* @__errno_location() #28, !dbg !812
  store i32 95, i32* %56, align 4, !dbg !813, !tbaa !763
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 5) #24, !dbg !814
  call void (i32, i32, i8*, ...) @error(i32 1, i32 95, i8* %57) #24, !dbg !814
  unreachable, !dbg !814

58:                                               ; preds = %52
  %59 = icmp ne i8* %12, null, !dbg !815
  %60 = icmp ne i8* %15, null
  %61 = or i1 %59, %60, !dbg !817
  %62 = icmp ne i8* %11, null
  %63 = or i1 %62, %61, !dbg !817
  %64 = icmp ne i8* %13, null
  %65 = or i1 %64, %63, !dbg !817
  %66 = and i8 %14, 1
  %67 = icmp ne i8 %66, 0
  %68 = or i1 %67, %65, !dbg !817
  br i1 %68, label %75, label %69, !dbg !817

69:                                               ; preds = %58
  %70 = icmp slt i32 %53, %0, !dbg !818
  br i1 %70, label %73, label %71, !dbg !821

71:                                               ; preds = %69
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 5) #24, !dbg !822
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #24, !dbg !824
  call void @usage(i32 1) #27, !dbg !825
  unreachable, !dbg !825

73:                                               ; preds = %69
  %74 = add nsw i32 %53, 1, !dbg !826
  store i32 %74, i32* @optind, align 4, !dbg !826, !tbaa !763
  call void @llvm.dbg.value(metadata i8* undef, metadata !735, metadata !DIExpression()), !dbg !746
  br label %75, !dbg !827

75:                                               ; preds = %73, %58
  %76 = phi i32 [ %74, %73 ], [ %53, %58 ], !dbg !828
  %77 = icmp slt i32 %76, %0, !dbg !830
  br i1 %77, label %80, label %78, !dbg !831

78:                                               ; preds = %75
  %79 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 5) #24, !dbg !832
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79) #24, !dbg !834
  call void @usage(i32 1) #27, !dbg !835
  unreachable, !dbg !835

80:                                               ; preds = %75
  %81 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 5) #24, !dbg !836
  %82 = load i8*, i8** @program_name, align 8, !dbg !836, !tbaa !592
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %81, i8* %82) #24, !dbg !836
  unreachable, !dbg !836
}

; Function Attrs: nounwind
declare !dbg !838 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !841 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !844 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !849 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !855 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !859 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !861, metadata !DIExpression()), !dbg !862
  store i8* %0, i8** @file_name, align 8, !dbg !863, !tbaa !592
  ret void, !dbg !864
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !865 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !869, metadata !DIExpression()), !dbg !870
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !871, !tbaa !872
  ret void, !dbg !874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !875 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !880, !tbaa !592
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !881
  %3 = icmp eq i32 %2, 0, !dbg !882
  br i1 %3, label %22, label %4, !dbg !883

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !884, !tbaa !872, !range !885
  %6 = icmp eq i8 %5, 0, !dbg !884
  br i1 %6, label %11, label %7, !dbg !886

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !887
  %9 = load i32, i32* %8, align 4, !dbg !887, !tbaa !763
  %10 = icmp eq i32 %9, 32, !dbg !888
  br i1 %10, label %22, label %11, !dbg !889

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 5) #24, !dbg !890
  call void @llvm.dbg.value(metadata i8* %12, metadata !877, metadata !DIExpression()), !dbg !891
  %13 = load i8*, i8** @file_name, align 8, !dbg !892, !tbaa !592
  %14 = icmp eq i8* %13, null, !dbg !892
  %15 = tail call i32* @__errno_location() #28, !dbg !894
  %16 = load i32, i32* %15, align 4, !dbg !894, !tbaa !763
  br i1 %14, label %19, label %17, !dbg !895

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !896
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !897
  br label %20, !dbg !897

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.49, i64 0, i64 0), i8* %12) #24, !dbg !898
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !899, !tbaa !763
  tail call void @_exit(i32 %21) #26, !dbg !900
  unreachable, !dbg !900

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !901, !tbaa !592
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !903
  %25 = icmp eq i32 %24, 0, !dbg !904
  br i1 %25, label %28, label %26, !dbg !905

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !906, !tbaa !763
  tail call void @_exit(i32 %27) #26, !dbg !907
  unreachable, !dbg !907

28:                                               ; preds = %22
  ret void, !dbg !908
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !909 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !911, metadata !DIExpression()), !dbg !914
  %2 = icmp eq i8* %0, null, !dbg !915
  br i1 %2, label %3, label %6, !dbg !917

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !918, !tbaa !592
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !920
  tail call void @abort() #26, !dbg !921
  unreachable, !dbg !921

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !922
  call void @llvm.dbg.value(metadata i8* %7, metadata !912, metadata !DIExpression()), !dbg !914
  %8 = icmp eq i8* %7, null, !dbg !923
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !924
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !924
  call void @llvm.dbg.value(metadata i8* %10, metadata !913, metadata !DIExpression()), !dbg !914
  %11 = ptrtoint i8* %10 to i64, !dbg !925
  %12 = ptrtoint i8* %0 to i64, !dbg !925
  %13 = sub i64 %11, %12, !dbg !925
  %14 = icmp sgt i64 %13, 6, !dbg !927
  br i1 %14, label %15, label %24, !dbg !928

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !929
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #25, !dbg !930
  %18 = icmp eq i32 %17, 0, !dbg !931
  br i1 %18, label %19, label %24, !dbg !932

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !911, metadata !DIExpression()), !dbg !914
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #25, !dbg !933
  %21 = icmp eq i32 %20, 0, !dbg !936
  br i1 %21, label %22, label %24, !dbg !937

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !938
  call void @llvm.dbg.value(metadata i8* %23, metadata !911, metadata !DIExpression()), !dbg !914
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !940, !tbaa !592
  br label %24, !dbg !941

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !911, metadata !DIExpression()), !dbg !914
  store i8* %25, i8** @program_name, align 8, !dbg !942, !tbaa !592
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !943, !tbaa !592
  ret void, !dbg !944
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !945 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !950, metadata !DIExpression()), !dbg !953
  %2 = tail call i32* @__errno_location() #28, !dbg !954
  %3 = load i32, i32* %2, align 4, !dbg !954, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %3, metadata !951, metadata !DIExpression()), !dbg !953
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !955
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !955
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !955
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !956
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !956
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !952, metadata !DIExpression()), !dbg !953
  store i32 %3, i32* %2, align 4, !dbg !957, !tbaa !763
  ret %struct.quoting_options* %8, !dbg !958
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !959 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !965, metadata !DIExpression()), !dbg !966
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !967
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !967
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !968
  %5 = load i32, i32* %4, align 8, !dbg !968, !tbaa !969
  ret i32 %5, !dbg !971
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !972 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !976, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i32 %1, metadata !977, metadata !DIExpression()), !dbg !978
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !979
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !979
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !980
  store i32 %1, i32* %5, align 8, !dbg !981, !tbaa !969
  ret void, !dbg !982
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !983 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !987, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i8 %1, metadata !988, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i32 %2, metadata !989, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i8 %1, metadata !990, metadata !DIExpression()), !dbg !995
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !996
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !996
  %6 = lshr i8 %1, 5, !dbg !997
  %7 = zext i8 %6 to i64, !dbg !997
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !998
  call void @llvm.dbg.value(metadata i32* %8, metadata !991, metadata !DIExpression()), !dbg !995
  %9 = and i8 %1, 31, !dbg !999
  %10 = zext i8 %9 to i32, !dbg !999
  call void @llvm.dbg.value(metadata i32 %10, metadata !993, metadata !DIExpression()), !dbg !995
  %11 = load i32, i32* %8, align 4, !dbg !1000, !tbaa !763
  %12 = lshr i32 %11, %10, !dbg !1001
  %13 = and i32 %12, 1, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %13, metadata !994, metadata !DIExpression()), !dbg !995
  %14 = and i32 %2, 1, !dbg !1003
  %15 = xor i32 %13, %14, !dbg !1004
  %16 = shl i32 %15, %10, !dbg !1005
  %17 = xor i32 %16, %11, !dbg !1006
  store i32 %17, i32* %8, align 4, !dbg !1006, !tbaa !763
  ret i32 %13, !dbg !1007
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1008 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1012, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i32 %1, metadata !1013, metadata !DIExpression()), !dbg !1015
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1016
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1018
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1012, metadata !DIExpression()), !dbg !1015
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1019
  %6 = load i32, i32* %5, align 4, !dbg !1019, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 %6, metadata !1014, metadata !DIExpression()), !dbg !1015
  store i32 %1, i32* %5, align 4, !dbg !1021, !tbaa !1020
  ret i32 %6, !dbg !1022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1023 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1027, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i8* %1, metadata !1028, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i8* %2, metadata !1029, metadata !DIExpression()), !dbg !1030
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1031
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1033
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()), !dbg !1030
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1034
  store i32 10, i32* %6, align 8, !dbg !1035, !tbaa !969
  %7 = icmp ne i8* %1, null, !dbg !1036
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1038
  br i1 %9, label %11, label %10, !dbg !1038

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1039
  unreachable, !dbg !1039

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1040
  store i8* %1, i8** %12, align 8, !dbg !1041, !tbaa !1042
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1043
  store i8* %2, i8** %13, align 8, !dbg !1044, !tbaa !1045
  ret void, !dbg !1046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1051, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %1, metadata !1052, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %2, metadata !1053, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %3, metadata !1054, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1055, metadata !DIExpression()), !dbg !1059
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1060
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1060
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1056, metadata !DIExpression()), !dbg !1059
  %8 = tail call i32* @__errno_location() #28, !dbg !1061
  %9 = load i32, i32* %8, align 4, !dbg !1061, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %9, metadata !1057, metadata !DIExpression()), !dbg !1059
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1062
  %11 = load i32, i32* %10, align 8, !dbg !1062, !tbaa !969
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1063
  %13 = load i32, i32* %12, align 4, !dbg !1063, !tbaa !1020
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1064
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1065
  %16 = load i8*, i8** %15, align 8, !dbg !1065, !tbaa !1042
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1066
  %18 = load i8*, i8** %17, align 8, !dbg !1066, !tbaa !1045
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1067
  call void @llvm.dbg.value(metadata i64 %19, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i32 %9, i32* %8, align 4, !dbg !1068, !tbaa !763
  ret i64 %19, !dbg !1069
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1070 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1076, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %1, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %2, metadata !1078, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %3, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %4, metadata !1080, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %5, metadata !1081, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32* %6, metadata !1082, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %7, metadata !1083, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %8, metadata !1084, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 0, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 0, metadata !1087, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* null, metadata !1088, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 0, metadata !1089, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1090, metadata !DIExpression()), !dbg !1146
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1147
  %14 = icmp eq i64 %13, 1, !dbg !1148
  call void @llvm.dbg.value(metadata i1 %14, metadata !1091, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1146
  %15 = lshr i32 %5, 1, !dbg !1149
  %16 = trunc i32 %15 to i8, !dbg !1149
  %17 = and i8 %16, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i8 %17, metadata !1092, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 1, metadata !1095, metadata !DIExpression()), !dbg !1146
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1150

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1151
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1152
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1153
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1154
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1146
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1155
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1156
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1157
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %38, metadata !1095, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %37, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %36, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %35, metadata !1092, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %34, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %33, metadata !1090, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %32, metadata !1089, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %31, metadata !1088, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %30, metadata !1087, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 0, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %29, metadata !1084, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %28, metadata !1083, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %27, metadata !1080, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.label(metadata !1140), !dbg !1158
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
  ], !dbg !1159

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1092, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 5, metadata !1080, metadata !DIExpression()), !dbg !1146
  br label %92, !dbg !1160

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1092, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 5, metadata !1080, metadata !DIExpression()), !dbg !1146
  %42 = and i8 %35, 1, !dbg !1162
  %43 = icmp eq i8 %42, 0, !dbg !1162
  br i1 %43, label %44, label %92, !dbg !1160

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1164
  br i1 %45, label %92, label %46, !dbg !1167

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1164, !tbaa !1168
  br label %92, !dbg !1164

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %27), !dbg !1169
  call void @llvm.dbg.value(metadata i8* %48, metadata !1083, metadata !DIExpression()), !dbg !1146
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %27), !dbg !1173
  call void @llvm.dbg.value(metadata i8* %49, metadata !1084, metadata !DIExpression()), !dbg !1146
  br label %50, !dbg !1174

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1084, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %51, metadata !1083, metadata !DIExpression()), !dbg !1146
  %53 = and i8 %35, 1, !dbg !1175
  %54 = icmp eq i8 %53, 0, !dbg !1175
  br i1 %54, label %55, label %70, !dbg !1177

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1088, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 0, metadata !1086, metadata !DIExpression()), !dbg !1146
  %56 = load i8, i8* %51, align 1, !dbg !1178, !tbaa !1168
  %57 = icmp eq i8 %56, 0, !dbg !1181
  br i1 %57, label %70, label %58, !dbg !1181

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1088, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %61, metadata !1086, metadata !DIExpression()), !dbg !1146
  %62 = icmp ult i64 %61, %39, !dbg !1182
  br i1 %62, label %63, label %65, !dbg !1185

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1182
  store i8 %59, i8* %64, align 1, !dbg !1182, !tbaa !1168
  br label %65, !dbg !1182

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %66, metadata !1086, metadata !DIExpression()), !dbg !1146
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %67, metadata !1088, metadata !DIExpression()), !dbg !1146
  %68 = load i8, i8* %67, align 1, !dbg !1178, !tbaa !1168
  %69 = icmp eq i8 %68, 0, !dbg !1181
  br i1 %69, label %70, label %58, !dbg !1181, !llvm.loop !1187

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1189
  call void @llvm.dbg.value(metadata i64 %71, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 1, metadata !1090, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %52, metadata !1088, metadata !DIExpression()), !dbg !1146
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %72, metadata !1089, metadata !DIExpression()), !dbg !1146
  br label %92, !dbg !1191

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1090, metadata !DIExpression()), !dbg !1146
  br label %74, !dbg !1192

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %75, metadata !1090, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 1, metadata !1092, metadata !DIExpression()), !dbg !1146
  br label %76, !dbg !1193

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1154
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %78, metadata !1092, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %77, metadata !1090, metadata !DIExpression()), !dbg !1146
  %79 = and i8 %78, 1, !dbg !1194
  %80 = icmp eq i8 %79, 0, !dbg !1194
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1196
  br label %82, !dbg !1196

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1146
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1149
  call void @llvm.dbg.value(metadata i8 %84, metadata !1092, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %83, metadata !1090, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 2, metadata !1080, metadata !DIExpression()), !dbg !1146
  %85 = and i8 %84, 1, !dbg !1197
  %86 = icmp eq i8 %85, 0, !dbg !1197
  br i1 %86, label %87, label %92, !dbg !1199

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1200
  br i1 %88, label %92, label %89, !dbg !1203

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1200, !tbaa !1168
  br label %92, !dbg !1200

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1092, metadata !DIExpression()), !dbg !1146
  br label %92, !dbg !1204

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1205
  unreachable, !dbg !1205

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1189
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %40 ], !dbg !1146
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1146
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1146
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %100, metadata !1092, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %99, metadata !1090, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %98, metadata !1089, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %97, metadata !1088, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %96, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %95, metadata !1084, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %94, metadata !1083, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %93, metadata !1080, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 0, metadata !1085, metadata !DIExpression()), !dbg !1146
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
  br label %121, !dbg !1206

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1207
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1189
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1151
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1155
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1156
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1157
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %128, metadata !1095, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %127, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %126, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %125, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %124, metadata !1087, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %123, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %122, metadata !1085, metadata !DIExpression()), !dbg !1146
  %130 = icmp eq i64 %125, -1, !dbg !1208
  br i1 %130, label %131, label %135, !dbg !1209

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1210
  %133 = load i8, i8* %132, align 1, !dbg !1210, !tbaa !1168
  %134 = icmp eq i8 %133, 0, !dbg !1211
  br i1 %134, label %587, label %137, !dbg !1212

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1213
  br i1 %136, label %587, label %137, !dbg !1212

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 0, metadata !1102, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1214
  br i1 %106, label %138, label %153, !dbg !1215

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1217
  %140 = and i1 %107, %130, !dbg !1218
  br i1 %140, label %141, label %143, !dbg !1218

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %142, metadata !1079, metadata !DIExpression()), !dbg !1146
  br label %143, !dbg !1220

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1220
  call void @llvm.dbg.value(metadata i64 %144, metadata !1079, metadata !DIExpression()), !dbg !1146
  %145 = icmp ugt i64 %139, %144, !dbg !1221
  br i1 %145, label %153, label %146, !dbg !1222

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1223
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1224
  %149 = icmp ne i32 %148, 0, !dbg !1225
  %150 = or i1 %149, %109, !dbg !1226
  %151 = xor i1 %149, true, !dbg !1226
  %152 = zext i1 %151 to i8, !dbg !1226
  br i1 %150, label %153, label %646, !dbg !1226

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1214
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1214
  call void @llvm.dbg.value(metadata i8 %156, metadata !1101, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %154, metadata !1079, metadata !DIExpression()), !dbg !1146
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1227
  %158 = load i8, i8* %157, align 1, !dbg !1227, !tbaa !1168
  call void @llvm.dbg.value(metadata i8 %158, metadata !1096, metadata !DIExpression()), !dbg !1214
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
  ], !dbg !1228

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1229

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1230

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1214
  %162 = and i8 %126, 1, !dbg !1234
  %163 = icmp eq i8 %162, 0, !dbg !1234
  %164 = and i1 %110, %163, !dbg !1234
  br i1 %164, label %165, label %181, !dbg !1234

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1236
  br i1 %166, label %167, label %169, !dbg !1240

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1236
  store i8 39, i8* %168, align 1, !dbg !1236, !tbaa !1168
  br label %169, !dbg !1236

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %170, metadata !1086, metadata !DIExpression()), !dbg !1146
  %171 = icmp ult i64 %170, %129, !dbg !1241
  br i1 %171, label %172, label %174, !dbg !1244

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1241
  store i8 36, i8* %173, align 1, !dbg !1241, !tbaa !1168
  br label %174, !dbg !1241

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %175, metadata !1086, metadata !DIExpression()), !dbg !1146
  %176 = icmp ult i64 %175, %129, !dbg !1245
  br i1 %176, label %177, label %179, !dbg !1248

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1245
  store i8 39, i8* %178, align 1, !dbg !1245, !tbaa !1168
  br label %179, !dbg !1245

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %180, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 1, metadata !1093, metadata !DIExpression()), !dbg !1146
  br label %181, !dbg !1249

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1146
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %183, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %182, metadata !1086, metadata !DIExpression()), !dbg !1146
  %184 = icmp ult i64 %182, %129, !dbg !1250
  br i1 %184, label %185, label %187, !dbg !1253

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1250
  store i8 92, i8* %186, align 1, !dbg !1250, !tbaa !1168
  br label %187, !dbg !1250

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %188, metadata !1086, metadata !DIExpression()), !dbg !1146
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1254
  br i1 %191, label %192, label %473, !dbg !1254

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1256
  %194 = load i8, i8* %193, align 1, !dbg !1256, !tbaa !1168
  %195 = add i8 %194, -48, !dbg !1257
  %196 = icmp ult i8 %195, 10, !dbg !1257
  br i1 %196, label %197, label %473, !dbg !1257

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1258
  br i1 %198, label %199, label %201, !dbg !1262

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1258
  store i8 48, i8* %200, align 1, !dbg !1258, !tbaa !1168
  br label %201, !dbg !1258

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %202, metadata !1086, metadata !DIExpression()), !dbg !1146
  %203 = icmp ult i64 %202, %129, !dbg !1263
  br i1 %203, label %204, label %206, !dbg !1266

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1263
  store i8 48, i8* %205, align 1, !dbg !1263, !tbaa !1168
  br label %206, !dbg !1263

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1266
  call void @llvm.dbg.value(metadata i64 %207, metadata !1086, metadata !DIExpression()), !dbg !1146
  br label %473, !dbg !1267

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1268

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1269

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1270

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1272
  br i1 %214, label %215, label %473, !dbg !1272

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1274
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1275
  %218 = load i8, i8* %217, align 1, !dbg !1275, !tbaa !1168
  %219 = icmp eq i8 %218, 63, !dbg !1276
  br i1 %219, label %220, label %473, !dbg !1277

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1278
  %222 = load i8, i8* %221, align 1, !dbg !1278, !tbaa !1168
  %223 = sext i8 %222 to i32, !dbg !1278
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
  ], !dbg !1279

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1280

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 undef, metadata !1085, metadata !DIExpression()), !dbg !1146
  %226 = icmp ult i64 %123, %129, !dbg !1282
  br i1 %226, label %227, label %229, !dbg !1285

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1282
  store i8 63, i8* %228, align 1, !dbg !1282, !tbaa !1168
  br label %229, !dbg !1282

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %230, metadata !1086, metadata !DIExpression()), !dbg !1146
  %231 = icmp ult i64 %230, %129, !dbg !1286
  br i1 %231, label %232, label %234, !dbg !1289

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1286
  store i8 34, i8* %233, align 1, !dbg !1286, !tbaa !1168
  br label %234, !dbg !1286

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %235, metadata !1086, metadata !DIExpression()), !dbg !1146
  %236 = icmp ult i64 %235, %129, !dbg !1290
  br i1 %236, label %237, label %239, !dbg !1293

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1290
  store i8 34, i8* %238, align 1, !dbg !1290, !tbaa !1168
  br label %239, !dbg !1290

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %240, metadata !1086, metadata !DIExpression()), !dbg !1146
  %241 = icmp ult i64 %240, %129, !dbg !1294
  br i1 %241, label %242, label %244, !dbg !1297

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1294
  store i8 63, i8* %243, align 1, !dbg !1294, !tbaa !1168
  br label %244, !dbg !1294

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %245, metadata !1086, metadata !DIExpression()), !dbg !1146
  br label %473, !dbg !1298

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1100, metadata !DIExpression()), !dbg !1214
  br label %256, !dbg !1299

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1100, metadata !DIExpression()), !dbg !1214
  br label %256, !dbg !1300

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1100, metadata !DIExpression()), !dbg !1214
  br label %254, !dbg !1301

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1100, metadata !DIExpression()), !dbg !1214
  br label %254, !dbg !1302

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1100, metadata !DIExpression()), !dbg !1214
  br label %256, !dbg !1303

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1100, metadata !DIExpression()), !dbg !1214
  br i1 %110, label %252, label %253, !dbg !1304

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1305

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1308

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1310
  call void @llvm.dbg.value(metadata i8 %255, metadata !1100, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.label(metadata !1141), !dbg !1311
  br i1 %111, label %256, label %631, !dbg !1312

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1310
  call void @llvm.dbg.value(metadata i8 %257, metadata !1100, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.label(metadata !1142), !dbg !1314
  br i1 %102, label %495, label %473, !dbg !1315

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1316

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1317, !tbaa !1168
  %261 = icmp eq i8 %260, 0, !dbg !1319
  br i1 %261, label %262, label %473, !dbg !1320

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1321
  br i1 %263, label %264, label %473, !dbg !1323

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1214
  br label %265, !dbg !1324

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1214
  call void @llvm.dbg.value(metadata i8 %266, metadata !1103, metadata !DIExpression()), !dbg !1214
  br i1 %111, label %473, label %631, !dbg !1325

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 1, metadata !1103, metadata !DIExpression()), !dbg !1214
  br i1 %110, label %268, label %473, !dbg !1327

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1328

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1331
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1333
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1333
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %274, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %273, metadata !1087, metadata !DIExpression()), !dbg !1146
  %275 = icmp ult i64 %123, %274, !dbg !1334
  br i1 %275, label %276, label %278, !dbg !1337

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1334
  store i8 39, i8* %277, align 1, !dbg !1334, !tbaa !1168
  br label %278, !dbg !1334

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %279, metadata !1086, metadata !DIExpression()), !dbg !1146
  %280 = icmp ult i64 %279, %274, !dbg !1338
  br i1 %280, label %281, label %283, !dbg !1341

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1338
  store i8 92, i8* %282, align 1, !dbg !1338, !tbaa !1168
  br label %283, !dbg !1338

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %284, metadata !1086, metadata !DIExpression()), !dbg !1146
  %285 = icmp ult i64 %284, %274, !dbg !1342
  br i1 %285, label %286, label %288, !dbg !1345

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1342
  store i8 39, i8* %287, align 1, !dbg !1342, !tbaa !1168
  br label %288, !dbg !1342

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %289, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1146
  br label %473, !dbg !1346

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1347

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1104, metadata !DIExpression()), !dbg !1348
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1349
  %293 = load i16*, i16** %292, align 8, !dbg !1349, !tbaa !592
  %294 = zext i8 %158 to i64, !dbg !1349
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1349
  %296 = load i16, i16* %295, align 2, !dbg !1349, !tbaa !1351
  %297 = lshr i16 %296, 14, !dbg !1353
  %298 = trunc i16 %297 to i8, !dbg !1353
  %299 = and i8 %298, 1, !dbg !1353
  call void @llvm.dbg.value(metadata i8 %354, metadata !1107, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %355, metadata !1104, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %306, metadata !1079, metadata !DIExpression()), !dbg !1146
  %300 = icmp eq i8 %299, 0, !dbg !1354
  call void @llvm.dbg.value(metadata i1 %357, metadata !1103, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1214
  br label %359, !dbg !1355

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1356
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1108, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8* %23, metadata !1358, metadata !DIExpression()) #24, !dbg !1366
  call void @llvm.dbg.value(metadata i32 0, metadata !1364, metadata !DIExpression()) #24, !dbg !1366
  call void @llvm.dbg.value(metadata i64 8, metadata !1365, metadata !DIExpression()) #24, !dbg !1366
  store i64 0, i64* %10, align 8, !dbg !1368
  call void @llvm.dbg.value(metadata i64 0, metadata !1104, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i8 1, metadata !1107, metadata !DIExpression()), !dbg !1348
  %302 = icmp eq i64 %154, -1, !dbg !1369
  br i1 %302, label %303, label %305, !dbg !1371

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %304, metadata !1079, metadata !DIExpression()), !dbg !1146
  br label %305, !dbg !1373

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1214
  call void @llvm.dbg.value(metadata i64 %306, metadata !1079, metadata !DIExpression()), !dbg !1146
  br label %307, !dbg !1374

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1375
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1376
  call void @llvm.dbg.value(metadata i8 %309, metadata !1107, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %308, metadata !1104, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1377
  %310 = add i64 %308, %122, !dbg !1378
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1379
  %312 = sub i64 %306, %310, !dbg !1380
  call void @llvm.dbg.value(metadata i32* %12, metadata !1126, metadata !DIExpression(DW_OP_deref)), !dbg !1381
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1382
  call void @llvm.dbg.value(metadata i64 %313, metadata !1129, metadata !DIExpression()), !dbg !1381
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1383

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1104, metadata !DIExpression()), !dbg !1348
  %315 = icmp ugt i64 %306, %310, !dbg !1384
  br i1 %315, label %316, label %341, !dbg !1386

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1387
  br label %318, !dbg !1387

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1104, metadata !DIExpression()), !dbg !1348
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1388
  %322 = load i8, i8* %321, align 1, !dbg !1388, !tbaa !1168
  %323 = icmp eq i8 %322, 0, !dbg !1386
  br i1 %323, label %341, label %324, !dbg !1387

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %325, metadata !1104, metadata !DIExpression()), !dbg !1348
  %326 = add i64 %325, %122, !dbg !1390
  %327 = icmp ult i64 %326, %306, !dbg !1384
  br i1 %327, label %318, label %341, !dbg !1386, !llvm.loop !1391

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1392
  call void @llvm.dbg.value(metadata i64 1, metadata !1130, metadata !DIExpression()), !dbg !1393
  br i1 %330, label %331, label %344, !dbg !1392

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1130, metadata !DIExpression()), !dbg !1393
  %333 = add i64 %332, %310, !dbg !1394
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1397
  %335 = load i8, i8* %334, align 1, !dbg !1397, !tbaa !1168
  %336 = sext i8 %335 to i32, !dbg !1397
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1398

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %338, metadata !1130, metadata !DIExpression()), !dbg !1393
  %339 = icmp eq i64 %338, %313, !dbg !1400
  br i1 %339, label %344, label %331, !dbg !1401, !llvm.loop !1402

340:                                              ; preds = %307
  br label %341, !dbg !1404

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1107, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 undef, metadata !1104, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1404
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1405, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %345, metadata !1126, metadata !DIExpression()), !dbg !1381
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1407
  %347 = icmp eq i32 %346, 0, !dbg !1407
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1408
  call void @llvm.dbg.value(metadata i8 %348, metadata !1107, metadata !DIExpression()), !dbg !1348
  %349 = add i64 %313, %308, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %349, metadata !1104, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1404
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1410
  %351 = icmp eq i32 %350, 0, !dbg !1411
  br i1 %351, label %307, label %353, !dbg !1412, !llvm.loop !1413

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1107, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 undef, metadata !1104, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1404
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1415
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1415
  call void @llvm.dbg.value(metadata i8 %354, metadata !1107, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %355, metadata !1104, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %306, metadata !1079, metadata !DIExpression()), !dbg !1146
  %356 = and i8 %354, 1, !dbg !1354
  %357 = icmp eq i8 %356, 0, !dbg !1354
  call void @llvm.dbg.value(metadata i1 %357, metadata !1103, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1214
  %358 = icmp ugt i64 %355, 1, !dbg !1416
  br i1 %358, label %367, label %359, !dbg !1355

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1417
  br i1 %364, label %367, label %365, !dbg !1417

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1214
  call void @llvm.dbg.value(metadata i8 %472, metadata !1103, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %441, metadata !1102, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %440, metadata !1101, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %439, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %438, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %371, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %437, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %375, metadata !1085, metadata !DIExpression()), !dbg !1146
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %372, metadata !1137, metadata !DIExpression()), !dbg !1419
  %373 = and i1 %102, %368
  br label %374, !dbg !1420

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1207
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1146
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1155
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1214
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1214
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1421
  call void @llvm.dbg.value(metadata i8 %380, metadata !1102, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %379, metadata !1101, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %378, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %377, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %376, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %375, metadata !1085, metadata !DIExpression()), !dbg !1146
  br i1 %373, label %381, label %427, !dbg !1422

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1427

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1214
  %383 = and i8 %377, 1, !dbg !1430
  %384 = icmp eq i8 %383, 0, !dbg !1430
  %385 = and i1 %110, %384, !dbg !1430
  br i1 %385, label %386, label %402, !dbg !1430

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1432
  br i1 %387, label %388, label %390, !dbg !1436

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1432
  store i8 39, i8* %389, align 1, !dbg !1432, !tbaa !1168
  br label %390, !dbg !1432

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %391, metadata !1086, metadata !DIExpression()), !dbg !1146
  %392 = icmp ult i64 %391, %129, !dbg !1437
  br i1 %392, label %393, label %395, !dbg !1440

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1437
  store i8 36, i8* %394, align 1, !dbg !1437, !tbaa !1168
  br label %395, !dbg !1437

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %396, metadata !1086, metadata !DIExpression()), !dbg !1146
  %397 = icmp ult i64 %396, %129, !dbg !1441
  br i1 %397, label %398, label %400, !dbg !1444

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1441
  store i8 39, i8* %399, align 1, !dbg !1441, !tbaa !1168
  br label %400, !dbg !1441

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %401, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 1, metadata !1093, metadata !DIExpression()), !dbg !1146
  br label %402, !dbg !1445

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1146
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %404, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %403, metadata !1086, metadata !DIExpression()), !dbg !1146
  %405 = icmp ult i64 %403, %129, !dbg !1446
  br i1 %405, label %406, label %408, !dbg !1449

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1446
  store i8 92, i8* %407, align 1, !dbg !1446, !tbaa !1168
  br label %408, !dbg !1446

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %409, metadata !1086, metadata !DIExpression()), !dbg !1146
  %410 = icmp ult i64 %409, %129, !dbg !1450
  br i1 %410, label %411, label %415, !dbg !1453

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1450
  %413 = or i8 %412, 48, !dbg !1450
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1450
  store i8 %413, i8* %414, align 1, !dbg !1450, !tbaa !1168
  br label %415, !dbg !1450

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %416, metadata !1086, metadata !DIExpression()), !dbg !1146
  %417 = icmp ult i64 %416, %129, !dbg !1454
  br i1 %417, label %418, label %423, !dbg !1457

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1454
  %420 = and i8 %419, 7, !dbg !1454
  %421 = or i8 %420, 48, !dbg !1454
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1454
  store i8 %421, i8* %422, align 1, !dbg !1454, !tbaa !1168
  br label %423, !dbg !1454

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %424, metadata !1086, metadata !DIExpression()), !dbg !1146
  %425 = and i8 %378, 7, !dbg !1458
  %426 = or i8 %425, 48, !dbg !1459
  call void @llvm.dbg.value(metadata i8 %426, metadata !1096, metadata !DIExpression()), !dbg !1214
  br label %436, !dbg !1460

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1461
  %429 = icmp eq i8 %428, 0, !dbg !1461
  br i1 %429, label %436, label %430, !dbg !1463

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1464
  br i1 %431, label %432, label %434, !dbg !1468

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1464
  store i8 92, i8* %433, align 1, !dbg !1464, !tbaa !1168
  br label %434, !dbg !1464

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %435, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1101, metadata !DIExpression()), !dbg !1214
  br label %436, !dbg !1469

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1146
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1155
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1214
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1214
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1214
  call void @llvm.dbg.value(metadata i8 %441, metadata !1102, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %440, metadata !1101, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %439, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %438, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %437, metadata !1086, metadata !DIExpression()), !dbg !1146
  %442 = add i64 %375, 1, !dbg !1470
  %443 = icmp ugt i64 %372, %442, !dbg !1472
  br i1 %443, label %444, label %471, !dbg !1473

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1474
  %446 = icmp ne i8 %445, 0, !dbg !1474
  %447 = and i8 %441, 1, !dbg !1474
  %448 = icmp eq i8 %447, 0, !dbg !1474
  %449 = and i1 %446, %448, !dbg !1474
  br i1 %449, label %450, label %461, !dbg !1474

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1477
  br i1 %451, label %452, label %454, !dbg !1481

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1477
  store i8 39, i8* %453, align 1, !dbg !1477, !tbaa !1168
  br label %454, !dbg !1477

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %455, metadata !1086, metadata !DIExpression()), !dbg !1146
  %456 = icmp ult i64 %455, %129, !dbg !1482
  br i1 %456, label %457, label %459, !dbg !1485

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1482
  store i8 39, i8* %458, align 1, !dbg !1482, !tbaa !1168
  br label %459, !dbg !1482

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %460, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1146
  br label %461, !dbg !1486

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1487
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %463, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %462, metadata !1086, metadata !DIExpression()), !dbg !1146
  %464 = icmp ult i64 %462, %129, !dbg !1488
  br i1 %464, label %465, label %467, !dbg !1491

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1488
  store i8 %439, i8* %466, align 1, !dbg !1488, !tbaa !1168
  br label %467, !dbg !1488

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %468, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %442, metadata !1085, metadata !DIExpression()), !dbg !1146
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1492
  %470 = load i8, i8* %469, align 1, !dbg !1492, !tbaa !1168
  call void @llvm.dbg.value(metadata i8 %470, metadata !1096, metadata !DIExpression()), !dbg !1214
  br label %374, !dbg !1493, !llvm.loop !1494

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1214
  call void @llvm.dbg.value(metadata i8 %472, metadata !1103, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %441, metadata !1102, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %440, metadata !1101, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %439, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %438, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %371, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %437, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %375, metadata !1085, metadata !DIExpression()), !dbg !1146
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1207
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1146
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1151
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1497
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1146
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1146
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1214
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1214
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1214
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %482, metadata !1103, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %481, metadata !1102, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %156, metadata !1101, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %480, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %479, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %478, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %477, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %476, metadata !1087, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %475, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %474, metadata !1085, metadata !DIExpression()), !dbg !1146
  br i1 %116, label %494, label %484, !dbg !1498

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1500
  %486 = zext i8 %485 to i64, !dbg !1500
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1501
  %488 = load i32, i32* %487, align 4, !dbg !1501, !tbaa !763
  %489 = and i8 %480, 31, !dbg !1502
  %490 = zext i8 %489 to i32, !dbg !1502
  %491 = shl nuw i32 1, %490, !dbg !1503
  %492 = and i32 %488, %491, !dbg !1503
  %493 = icmp eq i32 %492, 0, !dbg !1503
  br i1 %493, label %494, label %495, !dbg !1504

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1505

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1506
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1146
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1151
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1497
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1155
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1156
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1214
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1214
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %503, metadata !1103, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %502, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %501, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %500, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %499, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %498, metadata !1087, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %497, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %496, metadata !1085, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.label(metadata !1143), !dbg !1507
  br i1 %109, label %505, label %635, !dbg !1508

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1102, metadata !DIExpression()), !dbg !1214
  %506 = and i8 %500, 1, !dbg !1510
  %507 = icmp eq i8 %506, 0, !dbg !1510
  %508 = and i1 %110, %507, !dbg !1510
  br i1 %508, label %509, label %525, !dbg !1510

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1512
  br i1 %510, label %511, label %513, !dbg !1516

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1512
  store i8 39, i8* %512, align 1, !dbg !1512, !tbaa !1168
  br label %513, !dbg !1512

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %514, metadata !1086, metadata !DIExpression()), !dbg !1146
  %515 = icmp ult i64 %514, %504, !dbg !1517
  br i1 %515, label %516, label %518, !dbg !1520

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1517
  store i8 36, i8* %517, align 1, !dbg !1517, !tbaa !1168
  br label %518, !dbg !1517

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %519, metadata !1086, metadata !DIExpression()), !dbg !1146
  %520 = icmp ult i64 %519, %504, !dbg !1521
  br i1 %520, label %521, label %523, !dbg !1524

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1521
  store i8 39, i8* %522, align 1, !dbg !1521, !tbaa !1168
  br label %523, !dbg !1521

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %524, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 1, metadata !1093, metadata !DIExpression()), !dbg !1146
  br label %525, !dbg !1525

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1214
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %527, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %526, metadata !1086, metadata !DIExpression()), !dbg !1146
  %528 = icmp ult i64 %526, %504, !dbg !1526
  br i1 %528, label %529, label %531, !dbg !1529

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1526
  store i8 92, i8* %530, align 1, !dbg !1526, !tbaa !1168
  br label %531, !dbg !1526

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %543, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %542, metadata !1103, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %541, metadata !1102, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %540, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %539, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %538, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %537, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %536, metadata !1087, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %535, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %534, metadata !1085, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.label(metadata !1144), !dbg !1530
  br label %560, !dbg !1531

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1506
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1146
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1151
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1497
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1155
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1156
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1534
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1214
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1214
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %542, metadata !1103, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %541, metadata !1102, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %540, metadata !1096, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %539, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %538, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %537, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %536, metadata !1087, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %535, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %534, metadata !1085, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.label(metadata !1144), !dbg !1530
  %544 = and i8 %538, 1, !dbg !1531
  %545 = icmp ne i8 %544, 0, !dbg !1531
  %546 = and i8 %541, 1, !dbg !1531
  %547 = icmp eq i8 %546, 0, !dbg !1531
  %548 = and i1 %545, %547, !dbg !1531
  br i1 %548, label %549, label %560, !dbg !1531

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1535
  br i1 %550, label %551, label %553, !dbg !1539

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1535
  store i8 39, i8* %552, align 1, !dbg !1535, !tbaa !1168
  br label %553, !dbg !1535

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %554, metadata !1086, metadata !DIExpression()), !dbg !1146
  %555 = icmp ult i64 %554, %543, !dbg !1540
  br i1 %555, label %556, label %558, !dbg !1543

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1540
  store i8 39, i8* %557, align 1, !dbg !1540, !tbaa !1168
  br label %558, !dbg !1540

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %559, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1093, metadata !DIExpression()), !dbg !1146
  br label %560, !dbg !1544

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1214
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1146
  call void @llvm.dbg.value(metadata i8 %569, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %568, metadata !1086, metadata !DIExpression()), !dbg !1146
  %570 = icmp ult i64 %568, %561, !dbg !1545
  br i1 %570, label %571, label %573, !dbg !1548

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1545
  store i8 %563, i8* %572, align 1, !dbg !1545, !tbaa !1168
  br label %573, !dbg !1545

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %574, metadata !1086, metadata !DIExpression()), !dbg !1146
  %575 = icmp eq i8 %562, 0, !dbg !1549
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1551
  call void @llvm.dbg.value(metadata i8 %576, metadata !1095, metadata !DIExpression()), !dbg !1146
  br label %577, !dbg !1552

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1506
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1146
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1151
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1497
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1155
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1146
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1157
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %584, metadata !1095, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %583, metadata !1094, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %582, metadata !1093, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %581, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %580, metadata !1087, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %579, metadata !1086, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %578, metadata !1085, metadata !DIExpression()), !dbg !1146
  %586 = add i64 %578, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %586, metadata !1085, metadata !DIExpression()), !dbg !1146
  br label %121, !dbg !1554, !llvm.loop !1555

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1557
  %590 = and i1 %110, %589, !dbg !1559
  %591 = xor i1 %590, true, !dbg !1559
  %592 = or i1 %109, %591, !dbg !1559
  br i1 %592, label %593, label %635, !dbg !1559

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1560
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1560
  br i1 %597, label %598, label %607, !dbg !1560

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1562
  %600 = icmp eq i8 %599, 0, !dbg !1562
  br i1 %600, label %603, label %601, !dbg !1565

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1566
  br label %652, !dbg !1567

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1568
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1570
  br i1 %606, label %26, label %607, !dbg !1570

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1571
  %610 = and i1 %609, %608, !dbg !1573
  br i1 %610, label %611, label %626, !dbg !1573

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1088, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %123, metadata !1086, metadata !DIExpression()), !dbg !1146
  %612 = load i8, i8* %97, align 1, !dbg !1574, !tbaa !1168
  %613 = icmp eq i8 %612, 0, !dbg !1577
  br i1 %613, label %626, label %614, !dbg !1577

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1088, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %617, metadata !1086, metadata !DIExpression()), !dbg !1146
  %618 = icmp ult i64 %617, %129, !dbg !1578
  br i1 %618, label %619, label %621, !dbg !1581

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1578
  store i8 %615, i8* %620, align 1, !dbg !1578, !tbaa !1168
  br label %621, !dbg !1578

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %622, metadata !1086, metadata !DIExpression()), !dbg !1146
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1582
  call void @llvm.dbg.value(metadata i8* %623, metadata !1088, metadata !DIExpression()), !dbg !1146
  %624 = load i8, i8* %623, align 1, !dbg !1574, !tbaa !1168
  %625 = icmp eq i8 %624, 0, !dbg !1577
  br i1 %625, label %626, label %614, !dbg !1577, !llvm.loop !1583

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1189
  call void @llvm.dbg.value(metadata i64 %627, metadata !1086, metadata !DIExpression()), !dbg !1146
  %628 = icmp ult i64 %627, %129, !dbg !1585
  br i1 %628, label %629, label %652, !dbg !1587

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1588
  store i8 0, i8* %630, align 1, !dbg !1589, !tbaa !1168
  br label %652, !dbg !1588

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %637, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.label(metadata !1145), !dbg !1590
  %633 = icmp eq i8 %101, 0, !dbg !1591
  %634 = select i1 %633, i32 2, i32 4, !dbg !1591
  br label %642, !dbg !1591

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1077, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %637, metadata !1079, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.label(metadata !1145), !dbg !1590
  %639 = icmp eq i32 %93, 2, !dbg !1593
  %640 = icmp eq i8 %636, 0, !dbg !1591
  %641 = select i1 %640, i32 2, i32 4, !dbg !1591
  br i1 %639, label %642, label %646, !dbg !1591

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1591

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1080, metadata !DIExpression()), !dbg !1146
  %650 = and i32 %5, -3, !dbg !1594
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1595
  br label %652, !dbg !1596

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1597
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1598 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1602, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %1, metadata !1603, metadata !DIExpression()), !dbg !1606
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1607
  call void @llvm.dbg.value(metadata i8* %3, metadata !1604, metadata !DIExpression()), !dbg !1606
  %4 = icmp eq i8* %3, %0, !dbg !1608
  br i1 %4, label %5, label %72, !dbg !1610

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %6, metadata !1605, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8* %6, metadata !1612, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* undef, metadata !1618, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 85, metadata !1619, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 84, metadata !1620, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 70, metadata !1621, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 45, metadata !1622, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 56, metadata !1623, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 0, metadata !1626, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1628
  %7 = load i8, i8* %6, align 1, !dbg !1631, !tbaa !1168
  %8 = and i8 %7, -33, !dbg !1631
  %9 = sext i8 %8 to i32, !dbg !1631
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1631

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1633, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* undef, metadata !1638, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 84, metadata !1639, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 70, metadata !1640, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 45, metadata !1641, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 56, metadata !1642, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1647
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1651
  %12 = load i8, i8* %11, align 1, !dbg !1651, !tbaa !1168
  %13 = and i8 %12, -33, !dbg !1651
  %14 = icmp eq i8 %13, 84, !dbg !1651
  br i1 %14, label %15, label %69, !dbg !1651

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1653, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8* undef, metadata !1658, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 70, metadata !1659, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 45, metadata !1660, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 56, metadata !1661, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1663, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1664, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1666
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1670
  %17 = load i8, i8* %16, align 1, !dbg !1670, !tbaa !1168
  %18 = and i8 %17, -33, !dbg !1670
  %19 = icmp eq i8 %18, 70, !dbg !1670
  br i1 %19, label %20, label %69, !dbg !1670

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1672, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8* undef, metadata !1677, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 45, metadata !1678, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 56, metadata !1679, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1681, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1682, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1683, metadata !DIExpression()), !dbg !1684
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1688
  %22 = load i8, i8* %21, align 1, !dbg !1688, !tbaa !1168
  %23 = icmp eq i8 %22, 45, !dbg !1688
  br i1 %23, label %24, label %69, !dbg !1690

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1691, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* undef, metadata !1696, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 56, metadata !1697, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 0, metadata !1698, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 0, metadata !1699, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 0, metadata !1700, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1702
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1706
  %26 = load i8, i8* %25, align 1, !dbg !1706, !tbaa !1168
  %27 = icmp eq i8 %26, 56, !dbg !1706
  br i1 %27, label %28, label %69, !dbg !1708

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1709, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8* undef, metadata !1714, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1719
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1723
  %30 = load i8, i8* %29, align 1, !dbg !1723, !tbaa !1168
  %31 = icmp eq i8 %30, 0, !dbg !1723
  br i1 %31, label %32, label %69, !dbg !1725

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1726, !tbaa !1168
  %34 = icmp eq i8 %33, 96, !dbg !1727
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !1726
  br label %72, !dbg !1728

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1633, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* undef, metadata !1638, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 66, metadata !1639, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 49, metadata !1640, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 56, metadata !1641, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 48, metadata !1642, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 51, metadata !1643, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 48, metadata !1644, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1729
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1733
  %38 = load i8, i8* %37, align 1, !dbg !1733, !tbaa !1168
  %39 = and i8 %38, -33, !dbg !1733
  %40 = icmp eq i8 %39, 66, !dbg !1733
  br i1 %40, label %41, label %69, !dbg !1733

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1653, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8* undef, metadata !1658, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 49, metadata !1659, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 56, metadata !1660, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 48, metadata !1661, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 51, metadata !1662, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 48, metadata !1663, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1664, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1734
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1736
  %43 = load i8, i8* %42, align 1, !dbg !1736, !tbaa !1168
  %44 = icmp eq i8 %43, 49, !dbg !1736
  br i1 %44, label %45, label %69, !dbg !1737

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1672, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8* undef, metadata !1677, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 56, metadata !1678, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 48, metadata !1679, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 51, metadata !1680, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 48, metadata !1681, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 0, metadata !1682, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 0, metadata !1683, metadata !DIExpression()), !dbg !1738
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1740
  %47 = load i8, i8* %46, align 1, !dbg !1740, !tbaa !1168
  %48 = icmp eq i8 %47, 56, !dbg !1740
  br i1 %48, label %49, label %69, !dbg !1741

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1691, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8* undef, metadata !1696, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 48, metadata !1697, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 51, metadata !1698, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 48, metadata !1699, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 0, metadata !1700, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1742
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1744
  %51 = load i8, i8* %50, align 1, !dbg !1744, !tbaa !1168
  %52 = icmp eq i8 %51, 48, !dbg !1744
  br i1 %52, label %53, label %69, !dbg !1745

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1709, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* undef, metadata !1714, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 51, metadata !1715, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 48, metadata !1716, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1746
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1748
  %55 = load i8, i8* %54, align 1, !dbg !1748, !tbaa !1168
  %56 = icmp eq i8 %55, 51, !dbg !1748
  br i1 %56, label %57, label %69, !dbg !1749

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1750, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8* undef, metadata !1755, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 48, metadata !1756, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1759
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1763
  %59 = load i8, i8* %58, align 1, !dbg !1763, !tbaa !1168
  %60 = icmp eq i8 %59, 48, !dbg !1763
  br i1 %60, label %61, label %69, !dbg !1765

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1766, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* undef, metadata !1771, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 0, metadata !1773, metadata !DIExpression()), !dbg !1774
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1778
  %63 = load i8, i8* %62, align 1, !dbg !1778, !tbaa !1168
  %64 = icmp eq i8 %63, 0, !dbg !1778
  br i1 %64, label %65, label %69, !dbg !1780

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1781, !tbaa !1168
  %67 = icmp eq i8 %66, 96, !dbg !1782
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !1781
  br label %72, !dbg !1783

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1784
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !1785
  br label %72, !dbg !1786

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1606
  ret i8* %73, !dbg !1787
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1788 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1792 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1798 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1802, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %1, metadata !1803, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1804, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %0, metadata !1806, metadata !DIExpression()) #24, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %1, metadata !1811, metadata !DIExpression()) #24, !dbg !1819
  call void @llvm.dbg.value(metadata i64* null, metadata !1812, metadata !DIExpression()) #24, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1813, metadata !DIExpression()) #24, !dbg !1819
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1821
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1821
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1814, metadata !DIExpression()) #24, !dbg !1819
  %6 = tail call i32* @__errno_location() #28, !dbg !1822
  %7 = load i32, i32* %6, align 4, !dbg !1822, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %7, metadata !1815, metadata !DIExpression()) #24, !dbg !1819
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1823
  %9 = load i32, i32* %8, align 4, !dbg !1823, !tbaa !1020
  %10 = or i32 %9, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %10, metadata !1816, metadata !DIExpression()) #24, !dbg !1819
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1825
  %12 = load i32, i32* %11, align 8, !dbg !1825, !tbaa !969
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1826
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1827
  %15 = load i8*, i8** %14, align 8, !dbg !1827, !tbaa !1042
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1828
  %17 = load i8*, i8** %16, align 8, !dbg !1828, !tbaa !1045
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1829
  %19 = add i64 %18, 1, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %19, metadata !1817, metadata !DIExpression()) #24, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %19, metadata !1831, metadata !DIExpression()) #24, !dbg !1836
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1838
  call void @llvm.dbg.value(metadata i8* %20, metadata !1818, metadata !DIExpression()) #24, !dbg !1819
  %21 = load i32, i32* %11, align 8, !dbg !1839, !tbaa !969
  %22 = load i8*, i8** %14, align 8, !dbg !1840, !tbaa !1042
  %23 = load i8*, i8** %16, align 8, !dbg !1841, !tbaa !1045
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1842
  store i32 %7, i32* %6, align 4, !dbg !1843, !tbaa !763
  ret i8* %20, !dbg !1844
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1807 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1806, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %1, metadata !1811, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64* %2, metadata !1812, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1813, metadata !DIExpression()), !dbg !1845
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1846
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1814, metadata !DIExpression()), !dbg !1845
  %7 = tail call i32* @__errno_location() #28, !dbg !1847
  %8 = load i32, i32* %7, align 4, !dbg !1847, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %8, metadata !1815, metadata !DIExpression()), !dbg !1845
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1848
  %10 = load i32, i32* %9, align 4, !dbg !1848, !tbaa !1020
  %11 = icmp eq i64* %2, null, !dbg !1849
  %12 = zext i1 %11 to i32, !dbg !1849
  %13 = or i32 %10, %12, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %13, metadata !1816, metadata !DIExpression()), !dbg !1845
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1851
  %15 = load i32, i32* %14, align 8, !dbg !1851, !tbaa !969
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1852
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1853
  %18 = load i8*, i8** %17, align 8, !dbg !1853, !tbaa !1042
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1854
  %20 = load i8*, i8** %19, align 8, !dbg !1854, !tbaa !1045
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !1855
  %22 = add i64 %21, 1, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %22, metadata !1817, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %22, metadata !1831, metadata !DIExpression()) #24, !dbg !1857
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !1859
  call void @llvm.dbg.value(metadata i8* %23, metadata !1818, metadata !DIExpression()), !dbg !1845
  %24 = load i32, i32* %14, align 8, !dbg !1860, !tbaa !969
  %25 = load i8*, i8** %17, align 8, !dbg !1861, !tbaa !1042
  %26 = load i8*, i8** %19, align 8, !dbg !1862, !tbaa !1045
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !1863
  store i32 %8, i32* %7, align 4, !dbg !1864, !tbaa !763
  br i1 %11, label %29, label %28, !dbg !1865

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1866, !tbaa !1868
  br label %29, !dbg !1870

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1871
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !1872 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1876, !tbaa !592
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1874, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i32 1, metadata !1875, metadata !DIExpression()), !dbg !1877
  %2 = load i32, i32* @nslots, align 4, !dbg !1878, !tbaa !763
  %3 = icmp sgt i32 %2, 1, !dbg !1881
  br i1 %3, label %4, label %12, !dbg !1882

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1881
  br label %6, !dbg !1882

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1875, metadata !DIExpression()), !dbg !1877
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !1883
  %9 = load i8*, i8** %8, align 8, !dbg !1883, !tbaa !1884
  tail call void @free(i8* %9) #24, !dbg !1886
  %10 = add nuw nsw i64 %7, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %10, metadata !1875, metadata !DIExpression()), !dbg !1877
  %11 = icmp eq i64 %10, %5, !dbg !1881
  br i1 %11, label %12, label %6, !dbg !1882, !llvm.loop !1888

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1890
  %14 = load i8*, i8** %13, align 8, !dbg !1890, !tbaa !1884
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1892
  br i1 %15, label %17, label %16, !dbg !1893

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !1894
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1896, !tbaa !1897
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1898, !tbaa !1884
  br label %17, !dbg !1899

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1900
  br i1 %18, label %21, label %19, !dbg !1902

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1903
  tail call void @free(i8* %20) #24, !dbg !1905
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1906, !tbaa !592
  br label %21, !dbg !1907

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1908, !tbaa !763
  ret void, !dbg !1909
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !1910 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1912, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8* %1, metadata !1913, metadata !DIExpression()), !dbg !1914
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1915
  ret i8* %3, !dbg !1916
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !1917 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1921, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %1, metadata !1922, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %2, metadata !1923, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1924, metadata !DIExpression()), !dbg !1936
  %5 = tail call i32* @__errno_location() #28, !dbg !1937
  %6 = load i32, i32* %5, align 4, !dbg !1937, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %6, metadata !1925, metadata !DIExpression()), !dbg !1936
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1938, !tbaa !592
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1926, metadata !DIExpression()), !dbg !1936
  %8 = icmp slt i32 %0, 0, !dbg !1939
  br i1 %8, label %9, label %10, !dbg !1941

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !1942
  unreachable, !dbg !1942

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !1943, !tbaa !763
  %12 = icmp sgt i32 %11, %0, !dbg !1944
  br i1 %12, label %34, label %13, !dbg !1945

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !1946
  call void @llvm.dbg.value(metadata i1 %14, metadata !1927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1947
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !1930, metadata !DIExpression()), !dbg !1947
  %15 = icmp eq i32 %0, 2147483647, !dbg !1948
  br i1 %15, label %16, label %17, !dbg !1950

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !1951
  unreachable, !dbg !1951

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !1952
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !1952
  %20 = add nuw nsw i32 %0, 1, !dbg !1953
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !1954
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !1955
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !1955
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1926, metadata !DIExpression()), !dbg !1936
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !1956, !tbaa !592
  br i1 %14, label %25, label %26, !dbg !1957

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !1958, !tbaa.struct !1960
  br label %26, !dbg !1961

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !1962, !tbaa !763
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !1963
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !1964
  %31 = sub nsw i32 %20, %27, !dbg !1965
  %32 = sext i32 %31 to i64, !dbg !1966
  %33 = shl nsw i64 %32, 4, !dbg !1967
  call void @llvm.dbg.value(metadata i8* %30, metadata !1358, metadata !DIExpression()) #24, !dbg !1968
  call void @llvm.dbg.value(metadata i32 0, metadata !1364, metadata !DIExpression()) #24, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %33, metadata !1365, metadata !DIExpression()) #24, !dbg !1968
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !1970
  store i32 %20, i32* @nslots, align 4, !dbg !1971, !tbaa !763
  br label %34, !dbg !1972

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !1936
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1926, metadata !DIExpression()), !dbg !1936
  %36 = zext i32 %0 to i64, !dbg !1973
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !1974
  %38 = load i64, i64* %37, align 8, !dbg !1974, !tbaa !1897
  call void @llvm.dbg.value(metadata i64 %38, metadata !1931, metadata !DIExpression()), !dbg !1975
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !1976
  %40 = load i8*, i8** %39, align 8, !dbg !1976, !tbaa !1884
  call void @llvm.dbg.value(metadata i8* %40, metadata !1933, metadata !DIExpression()), !dbg !1975
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !1977
  %42 = load i32, i32* %41, align 4, !dbg !1977, !tbaa !1020
  %43 = or i32 %42, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %43, metadata !1934, metadata !DIExpression()), !dbg !1975
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1979
  %45 = load i32, i32* %44, align 8, !dbg !1979, !tbaa !969
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !1980
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !1981
  %48 = load i8*, i8** %47, align 8, !dbg !1981, !tbaa !1042
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !1982
  %50 = load i8*, i8** %49, align 8, !dbg !1982, !tbaa !1045
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !1983
  call void @llvm.dbg.value(metadata i64 %51, metadata !1935, metadata !DIExpression()), !dbg !1975
  %52 = icmp ugt i64 %38, %51, !dbg !1984
  br i1 %52, label %63, label %53, !dbg !1986

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %54, metadata !1931, metadata !DIExpression()), !dbg !1975
  store i64 %54, i64* %37, align 8, !dbg !1989, !tbaa !1897
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1990
  br i1 %55, label %57, label %56, !dbg !1992

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !1993
  br label %57, !dbg !1993

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1831, metadata !DIExpression()) #24, !dbg !1994
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !1996
  call void @llvm.dbg.value(metadata i8* %58, metadata !1933, metadata !DIExpression()), !dbg !1975
  store i8* %58, i8** %39, align 8, !dbg !1997, !tbaa !1884
  %59 = load i32, i32* %44, align 8, !dbg !1998, !tbaa !969
  %60 = load i8*, i8** %47, align 8, !dbg !1999, !tbaa !1042
  %61 = load i8*, i8** %49, align 8, !dbg !2000, !tbaa !1045
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2001
  br label %63, !dbg !2002

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !1975
  call void @llvm.dbg.value(metadata i8* %64, metadata !1933, metadata !DIExpression()), !dbg !1975
  store i32 %6, i32* %5, align 4, !dbg !2003, !tbaa !763
  ret i8* %64, !dbg !2004
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2009, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8* %1, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %2, metadata !2011, metadata !DIExpression()), !dbg !2012
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2013
  ret i8* %4, !dbg !2014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2017, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 0, metadata !1912, metadata !DIExpression()) #24, !dbg !2019
  call void @llvm.dbg.value(metadata i8* %0, metadata !1913, metadata !DIExpression()) #24, !dbg !2019
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2021
  ret i8* %2, !dbg !2022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %1, metadata !2028, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 0, metadata !2009, metadata !DIExpression()) #24, !dbg !2030
  call void @llvm.dbg.value(metadata i8* %0, metadata !2010, metadata !DIExpression()) #24, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %1, metadata !2011, metadata !DIExpression()) #24, !dbg !2030
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2032
  ret i8* %3, !dbg !2033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2034 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2038, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i32 %1, metadata !2039, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8* %2, metadata !2040, metadata !DIExpression()), !dbg !2042
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2043
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2043
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2041, metadata !DIExpression()), !dbg !2044
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2045), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %1, metadata !2049, metadata !DIExpression()) #24, !dbg !2055
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2054, metadata !DIExpression()) #24, !dbg !2057
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2057, !alias.scope !2045
  %6 = icmp eq i32 %1, 10, !dbg !2058
  br i1 %6, label %7, label %8, !dbg !2060

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2061, !noalias !2045
  unreachable, !dbg !2061

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2062
  store i32 %1, i32* %9, align 8, !dbg !2063, !tbaa !969, !alias.scope !2045
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2064
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2065
  ret i8* %10, !dbg !2066
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2067 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2071, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %1, metadata !2072, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %2, metadata !2073, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i64 %3, metadata !2074, metadata !DIExpression()), !dbg !2076
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2077
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2077
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2075, metadata !DIExpression()), !dbg !2078
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2079), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %1, metadata !2049, metadata !DIExpression()) #24, !dbg !2083
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2054, metadata !DIExpression()) #24, !dbg !2085
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2085, !alias.scope !2079
  %7 = icmp eq i32 %1, 10, !dbg !2086
  br i1 %7, label %8, label %9, !dbg !2087

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2088, !noalias !2079
  unreachable, !dbg !2088

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2089
  store i32 %1, i32* %10, align 8, !dbg !2090, !tbaa !969, !alias.scope !2079
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2091
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2092
  ret i8* %11, !dbg !2093
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2094 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2098, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8* %1, metadata !2099, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()) #24, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %0, metadata !2039, metadata !DIExpression()) #24, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %1, metadata !2040, metadata !DIExpression()) #24, !dbg !2101
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2103
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2103
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2041, metadata !DIExpression()) #24, !dbg !2104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2105) #24, !dbg !2108
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()) #24, !dbg !2109
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2054, metadata !DIExpression()) #24, !dbg !2111
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2111, !alias.scope !2105
  %5 = icmp eq i32 %0, 10, !dbg !2112
  br i1 %5, label %6, label %7, !dbg !2113

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2114, !noalias !2105
  unreachable, !dbg !2114

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2115
  store i32 %0, i32* %8, align 8, !dbg !2116, !tbaa !969, !alias.scope !2105
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2117
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2118
  ret i8* %9, !dbg !2119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2120 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8* %1, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i64 %2, metadata !2126, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32 0, metadata !2071, metadata !DIExpression()) #24, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %0, metadata !2072, metadata !DIExpression()) #24, !dbg !2128
  call void @llvm.dbg.value(metadata i8* %1, metadata !2073, metadata !DIExpression()) #24, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %2, metadata !2074, metadata !DIExpression()) #24, !dbg !2128
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2130
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2130
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2075, metadata !DIExpression()) #24, !dbg !2131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132) #24, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()) #24, !dbg !2136
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2054, metadata !DIExpression()) #24, !dbg !2138
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2138, !alias.scope !2132
  %6 = icmp eq i32 %0, 10, !dbg !2139
  br i1 %6, label %7, label %8, !dbg !2140

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2141, !noalias !2132
  unreachable, !dbg !2141

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2142
  store i32 %0, i32* %9, align 8, !dbg !2143, !tbaa !969, !alias.scope !2132
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2145
  ret i8* %10, !dbg !2146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2147 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %1, metadata !2152, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i8 %2, metadata !2153, metadata !DIExpression()), !dbg !2155
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2156
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2156
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2154, metadata !DIExpression()), !dbg !2157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2158, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !987, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %2, metadata !988, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 1, metadata !989, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %2, metadata !990, metadata !DIExpression()), !dbg !2160
  %6 = lshr i8 %2, 5, !dbg !2162
  %7 = zext i8 %6 to i64, !dbg !2162
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2163
  call void @llvm.dbg.value(metadata i32* %8, metadata !991, metadata !DIExpression()), !dbg !2160
  %9 = and i8 %2, 31, !dbg !2164
  %10 = zext i8 %9 to i32, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %10, metadata !993, metadata !DIExpression()), !dbg !2160
  %11 = load i32, i32* %8, align 4, !dbg !2165, !tbaa !763
  %12 = lshr i32 %11, %10, !dbg !2166
  %13 = and i32 %12, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %13, metadata !994, metadata !DIExpression()), !dbg !2160
  %14 = xor i32 %13, 1, !dbg !2168
  %15 = shl i32 %14, %10, !dbg !2169
  %16 = xor i32 %15, %11, !dbg !2170
  store i32 %16, i32* %8, align 4, !dbg !2170, !tbaa !763
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2171
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2172
  ret i8* %17, !dbg !2173
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2174 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %1, metadata !2179, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()) #24, !dbg !2181
  call void @llvm.dbg.value(metadata i64 -1, metadata !2152, metadata !DIExpression()) #24, !dbg !2181
  call void @llvm.dbg.value(metadata i8 %1, metadata !2153, metadata !DIExpression()) #24, !dbg !2181
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2183
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2154, metadata !DIExpression()) #24, !dbg !2184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2185, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !987, metadata !DIExpression()) #24, !dbg !2186
  call void @llvm.dbg.value(metadata i8 %1, metadata !988, metadata !DIExpression()) #24, !dbg !2186
  call void @llvm.dbg.value(metadata i32 1, metadata !989, metadata !DIExpression()) #24, !dbg !2186
  call void @llvm.dbg.value(metadata i8 %1, metadata !990, metadata !DIExpression()) #24, !dbg !2186
  %5 = lshr i8 %1, 5, !dbg !2188
  %6 = zext i8 %5 to i64, !dbg !2188
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2189
  call void @llvm.dbg.value(metadata i32* %7, metadata !991, metadata !DIExpression()) #24, !dbg !2186
  %8 = and i8 %1, 31, !dbg !2190
  %9 = zext i8 %8 to i32, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %9, metadata !993, metadata !DIExpression()) #24, !dbg !2186
  %10 = load i32, i32* %7, align 4, !dbg !2191, !tbaa !763
  %11 = lshr i32 %10, %9, !dbg !2192
  %12 = and i32 %11, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %12, metadata !994, metadata !DIExpression()) #24, !dbg !2186
  %13 = xor i32 %12, 1, !dbg !2194
  %14 = shl i32 %13, %9, !dbg !2195
  %15 = xor i32 %14, %10, !dbg !2196
  store i32 %15, i32* %7, align 4, !dbg !2196, !tbaa !763
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2198
  ret i8* %16, !dbg !2199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2200 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2202, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8* %0, metadata !2178, metadata !DIExpression()) #24, !dbg !2204
  call void @llvm.dbg.value(metadata i8 58, metadata !2179, metadata !DIExpression()) #24, !dbg !2204
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()) #24, !dbg !2206
  call void @llvm.dbg.value(metadata i64 -1, metadata !2152, metadata !DIExpression()) #24, !dbg !2206
  call void @llvm.dbg.value(metadata i8 58, metadata !2153, metadata !DIExpression()) #24, !dbg !2206
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2208
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2208
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2154, metadata !DIExpression()) #24, !dbg !2209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2210, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !987, metadata !DIExpression()) #24, !dbg !2211
  call void @llvm.dbg.value(metadata i8 58, metadata !988, metadata !DIExpression()) #24, !dbg !2211
  call void @llvm.dbg.value(metadata i32 1, metadata !989, metadata !DIExpression()) #24, !dbg !2211
  call void @llvm.dbg.value(metadata i8 58, metadata !990, metadata !DIExpression()) #24, !dbg !2211
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2213
  call void @llvm.dbg.value(metadata i32* %4, metadata !991, metadata !DIExpression()) #24, !dbg !2211
  call void @llvm.dbg.value(metadata i32 26, metadata !993, metadata !DIExpression()) #24, !dbg !2211
  %5 = load i32, i32* %4, align 4, !dbg !2214, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %5, metadata !994, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2211
  %6 = or i32 %5, 67108864, !dbg !2215
  store i32 %6, i32* %4, align 4, !dbg !2215, !tbaa !763
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2217
  ret i8* %7, !dbg !2218
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2219 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %1, metadata !2222, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %1, metadata !2152, metadata !DIExpression()) #24, !dbg !2224
  call void @llvm.dbg.value(metadata i8 58, metadata !2153, metadata !DIExpression()) #24, !dbg !2224
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2226
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2226
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2154, metadata !DIExpression()) #24, !dbg !2227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2228, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !987, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i8 58, metadata !988, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i32 1, metadata !989, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i8 58, metadata !990, metadata !DIExpression()) #24, !dbg !2229
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2231
  call void @llvm.dbg.value(metadata i32* %5, metadata !991, metadata !DIExpression()) #24, !dbg !2229
  call void @llvm.dbg.value(metadata i32 26, metadata !993, metadata !DIExpression()) #24, !dbg !2229
  %6 = load i32, i32* %5, align 4, !dbg !2232, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %6, metadata !994, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2229
  %7 = or i32 %6, 67108864, !dbg !2233
  store i32 %7, i32* %5, align 4, !dbg !2233, !tbaa !763
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2234
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2235
  ret i8* %8, !dbg !2236
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2237 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2054, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2243
  call void @llvm.dbg.value(metadata i32 %0, metadata !2239, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %1, metadata !2240, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %2, metadata !2241, metadata !DIExpression()), !dbg !2245
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2246
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2246
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2242, metadata !DIExpression()), !dbg !2247
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %1, metadata !2049, metadata !DIExpression()) #24, !dbg !2252
  call void @llvm.dbg.value(metadata i32 0, metadata !2054, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2252
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2243, !alias.scope !2249
  %8 = icmp eq i32 %1, 10, !dbg !2253
  br i1 %8, label %9, label %10, !dbg !2254

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2255, !noalias !2249
  unreachable, !dbg !2255

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2054, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2252
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2248
  store i32 %1, i32* %11, align 8, !dbg !2248, !tbaa.struct !2159
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2248
  %13 = bitcast i32* %12 to i8*, !dbg !2248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2248, !tbaa.struct !2256
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !987, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8 58, metadata !988, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 1, metadata !989, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8 58, metadata !990, metadata !DIExpression()), !dbg !2257
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2259
  call void @llvm.dbg.value(metadata i32* %14, metadata !991, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 26, metadata !993, metadata !DIExpression()), !dbg !2257
  %15 = load i32, i32* %14, align 4, !dbg !2260, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %15, metadata !994, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2257
  %16 = or i32 %15, 67108864, !dbg !2261
  store i32 %16, i32* %14, align 4, !dbg !2261, !tbaa !763
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2262
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2263
  ret i8* %17, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2265 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* %1, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* %2, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* %3, metadata !2272, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()) #24, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %1, metadata !2279, metadata !DIExpression()) #24, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %2, metadata !2280, metadata !DIExpression()) #24, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %3, metadata !2281, metadata !DIExpression()) #24, !dbg !2284
  call void @llvm.dbg.value(metadata i64 -1, metadata !2282, metadata !DIExpression()) #24, !dbg !2284
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2286
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2286
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2283, metadata !DIExpression()) #24, !dbg !2287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2288, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()) #24, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %1, metadata !1028, metadata !DIExpression()) #24, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %2, metadata !1029, metadata !DIExpression()) #24, !dbg !2289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()) #24, !dbg !2289
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2291
  store i32 10, i32* %7, align 8, !dbg !2292, !tbaa !969
  %8 = icmp ne i8* %1, null, !dbg !2293
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2294
  br i1 %10, label %12, label %11, !dbg !2294

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2295
  unreachable, !dbg !2295

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2296
  store i8* %1, i8** %13, align 8, !dbg !2297, !tbaa !1042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2298
  store i8* %2, i8** %14, align 8, !dbg !2299, !tbaa !1045
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2300
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2301
  ret i8* %15, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2275 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %1, metadata !2279, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %2, metadata !2280, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %3, metadata !2281, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %4, metadata !2282, metadata !DIExpression()), !dbg !2303
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2304
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2283, metadata !DIExpression()), !dbg !2305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2306, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1027, metadata !DIExpression()) #24, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %1, metadata !1028, metadata !DIExpression()) #24, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %2, metadata !1029, metadata !DIExpression()) #24, !dbg !2307
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1027, metadata !DIExpression()) #24, !dbg !2307
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2309
  store i32 10, i32* %8, align 8, !dbg !2310, !tbaa !969
  %9 = icmp ne i8* %1, null, !dbg !2311
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2312
  br i1 %11, label %13, label %12, !dbg !2312

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2313
  unreachable, !dbg !2313

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2314
  store i8* %1, i8** %14, align 8, !dbg !2315, !tbaa !1042
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2316
  store i8* %2, i8** %15, align 8, !dbg !2317, !tbaa !1045
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2318
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2319
  ret i8* %16, !dbg !2320
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2321 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %1, metadata !2326, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %2, metadata !2327, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 0, metadata !2269, metadata !DIExpression()) #24, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %0, metadata !2270, metadata !DIExpression()) #24, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %1, metadata !2271, metadata !DIExpression()) #24, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %2, metadata !2272, metadata !DIExpression()) #24, !dbg !2329
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()) #24, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %0, metadata !2279, metadata !DIExpression()) #24, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %1, metadata !2280, metadata !DIExpression()) #24, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %2, metadata !2281, metadata !DIExpression()) #24, !dbg !2331
  call void @llvm.dbg.value(metadata i64 -1, metadata !2282, metadata !DIExpression()) #24, !dbg !2331
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2333
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2333
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2283, metadata !DIExpression()) #24, !dbg !2334
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2335, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1027, metadata !DIExpression()) #24, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %0, metadata !1028, metadata !DIExpression()) #24, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %1, metadata !1029, metadata !DIExpression()) #24, !dbg !2336
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1027, metadata !DIExpression()) #24, !dbg !2336
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2338
  store i32 10, i32* %6, align 8, !dbg !2339, !tbaa !969
  %7 = icmp ne i8* %0, null, !dbg !2340
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2341
  br i1 %9, label %11, label %10, !dbg !2341

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2342
  unreachable, !dbg !2342

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2343
  store i8* %0, i8** %12, align 8, !dbg !2344, !tbaa !1042
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2345
  store i8* %1, i8** %13, align 8, !dbg !2346, !tbaa !1045
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2347
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2348
  ret i8* %14, !dbg !2349
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2350 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2354, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %1, metadata !2355, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %2, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %3, metadata !2357, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()) #24, !dbg !2359
  call void @llvm.dbg.value(metadata i8* %0, metadata !2279, metadata !DIExpression()) #24, !dbg !2359
  call void @llvm.dbg.value(metadata i8* %1, metadata !2280, metadata !DIExpression()) #24, !dbg !2359
  call void @llvm.dbg.value(metadata i8* %2, metadata !2281, metadata !DIExpression()) #24, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %3, metadata !2282, metadata !DIExpression()) #24, !dbg !2359
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2361
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2283, metadata !DIExpression()) #24, !dbg !2362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2363, !tbaa.struct !2159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()) #24, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %0, metadata !1028, metadata !DIExpression()) #24, !dbg !2364
  call void @llvm.dbg.value(metadata i8* %1, metadata !1029, metadata !DIExpression()) #24, !dbg !2364
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1027, metadata !DIExpression()) #24, !dbg !2364
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2366
  store i32 10, i32* %7, align 8, !dbg !2367, !tbaa !969
  %8 = icmp ne i8* %0, null, !dbg !2368
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2369
  br i1 %10, label %12, label %11, !dbg !2369

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2370
  unreachable, !dbg !2370

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2371
  store i8* %0, i8** %13, align 8, !dbg !2372, !tbaa !1042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2373
  store i8* %1, i8** %14, align 8, !dbg !2374, !tbaa !1045
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2375
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2376
  ret i8* %15, !dbg !2377
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2378 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2382, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8* %1, metadata !2383, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %2, metadata !2384, metadata !DIExpression()), !dbg !2385
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2386
  ret i8* %4, !dbg !2387
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2388 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %1, metadata !2393, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2382, metadata !DIExpression()) #24, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %0, metadata !2383, metadata !DIExpression()) #24, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %1, metadata !2384, metadata !DIExpression()) #24, !dbg !2395
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2397
  ret i8* %3, !dbg !2398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2399 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8* %1, metadata !2404, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %0, metadata !2382, metadata !DIExpression()) #24, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %1, metadata !2383, metadata !DIExpression()) #24, !dbg !2406
  call void @llvm.dbg.value(metadata i64 -1, metadata !2384, metadata !DIExpression()) #24, !dbg !2406
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2408
  ret i8* %3, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression()) #24, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %0, metadata !2404, metadata !DIExpression()) #24, !dbg !2416
  call void @llvm.dbg.value(metadata i32 0, metadata !2382, metadata !DIExpression()) #24, !dbg !2418
  call void @llvm.dbg.value(metadata i8* %0, metadata !2383, metadata !DIExpression()) #24, !dbg !2418
  call void @llvm.dbg.value(metadata i64 -1, metadata !2384, metadata !DIExpression()) #24, !dbg !2418
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2420
  ret i8* %2, !dbg !2421
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2422 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2462, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8* %1, metadata !2463, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8* %2, metadata !2464, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8* %3, metadata !2465, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8** %4, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %5, metadata !2467, metadata !DIExpression()), !dbg !2468
  %7 = icmp eq i8* %1, null, !dbg !2469
  br i1 %7, label %10, label %8, !dbg !2471

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2472
  br label %12, !dbg !2472

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2473
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #24, !dbg !2474
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2474
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2475
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #24, !dbg !2476
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.83, i64 0, i64 0)) #24, !dbg !2476
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2477
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
  ], !dbg !2478

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #24, !dbg !2479
  %21 = load i8*, i8** %4, align 8, !dbg !2479, !tbaa !592
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2479
  br label %147, !dbg !2481

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #24, !dbg !2482
  %25 = load i8*, i8** %4, align 8, !dbg !2482, !tbaa !592
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2482
  %27 = load i8*, i8** %26, align 8, !dbg !2482, !tbaa !592
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2482
  br label %147, !dbg !2483

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #24, !dbg !2484
  %31 = load i8*, i8** %4, align 8, !dbg !2484, !tbaa !592
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2484
  %33 = load i8*, i8** %32, align 8, !dbg !2484, !tbaa !592
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2484
  %35 = load i8*, i8** %34, align 8, !dbg !2484, !tbaa !592
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2484
  br label %147, !dbg !2485

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #24, !dbg !2486
  %39 = load i8*, i8** %4, align 8, !dbg !2486, !tbaa !592
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2486
  %41 = load i8*, i8** %40, align 8, !dbg !2486, !tbaa !592
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2486
  %43 = load i8*, i8** %42, align 8, !dbg !2486, !tbaa !592
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2486
  %45 = load i8*, i8** %44, align 8, !dbg !2486, !tbaa !592
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2486
  br label %147, !dbg !2487

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #24, !dbg !2488
  %49 = load i8*, i8** %4, align 8, !dbg !2488, !tbaa !592
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2488
  %51 = load i8*, i8** %50, align 8, !dbg !2488, !tbaa !592
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2488
  %53 = load i8*, i8** %52, align 8, !dbg !2488, !tbaa !592
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2488
  %55 = load i8*, i8** %54, align 8, !dbg !2488, !tbaa !592
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2488
  %57 = load i8*, i8** %56, align 8, !dbg !2488, !tbaa !592
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2488
  br label %147, !dbg !2489

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #24, !dbg !2490
  %61 = load i8*, i8** %4, align 8, !dbg !2490, !tbaa !592
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2490
  %63 = load i8*, i8** %62, align 8, !dbg !2490, !tbaa !592
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2490
  %65 = load i8*, i8** %64, align 8, !dbg !2490, !tbaa !592
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2490
  %67 = load i8*, i8** %66, align 8, !dbg !2490, !tbaa !592
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2490
  %69 = load i8*, i8** %68, align 8, !dbg !2490, !tbaa !592
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2490
  %71 = load i8*, i8** %70, align 8, !dbg !2490, !tbaa !592
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2490
  br label %147, !dbg !2491

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #24, !dbg !2492
  %75 = load i8*, i8** %4, align 8, !dbg !2492, !tbaa !592
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2492
  %77 = load i8*, i8** %76, align 8, !dbg !2492, !tbaa !592
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2492
  %79 = load i8*, i8** %78, align 8, !dbg !2492, !tbaa !592
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2492
  %81 = load i8*, i8** %80, align 8, !dbg !2492, !tbaa !592
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2492
  %83 = load i8*, i8** %82, align 8, !dbg !2492, !tbaa !592
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2492
  %85 = load i8*, i8** %84, align 8, !dbg !2492, !tbaa !592
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2492
  %87 = load i8*, i8** %86, align 8, !dbg !2492, !tbaa !592
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2492
  br label %147, !dbg !2493

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #24, !dbg !2494
  %91 = load i8*, i8** %4, align 8, !dbg !2494, !tbaa !592
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2494
  %93 = load i8*, i8** %92, align 8, !dbg !2494, !tbaa !592
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2494
  %95 = load i8*, i8** %94, align 8, !dbg !2494, !tbaa !592
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2494
  %97 = load i8*, i8** %96, align 8, !dbg !2494, !tbaa !592
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2494
  %99 = load i8*, i8** %98, align 8, !dbg !2494, !tbaa !592
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2494
  %101 = load i8*, i8** %100, align 8, !dbg !2494, !tbaa !592
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2494
  %103 = load i8*, i8** %102, align 8, !dbg !2494, !tbaa !592
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2494
  %105 = load i8*, i8** %104, align 8, !dbg !2494, !tbaa !592
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2494
  br label %147, !dbg !2495

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #24, !dbg !2496
  %109 = load i8*, i8** %4, align 8, !dbg !2496, !tbaa !592
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2496
  %111 = load i8*, i8** %110, align 8, !dbg !2496, !tbaa !592
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2496
  %113 = load i8*, i8** %112, align 8, !dbg !2496, !tbaa !592
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2496
  %115 = load i8*, i8** %114, align 8, !dbg !2496, !tbaa !592
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2496
  %117 = load i8*, i8** %116, align 8, !dbg !2496, !tbaa !592
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2496
  %119 = load i8*, i8** %118, align 8, !dbg !2496, !tbaa !592
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2496
  %121 = load i8*, i8** %120, align 8, !dbg !2496, !tbaa !592
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2496
  %123 = load i8*, i8** %122, align 8, !dbg !2496, !tbaa !592
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2496
  %125 = load i8*, i8** %124, align 8, !dbg !2496, !tbaa !592
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2496
  br label %147, !dbg !2497

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.93, i64 0, i64 0), i32 5) #24, !dbg !2498
  %129 = load i8*, i8** %4, align 8, !dbg !2498, !tbaa !592
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2498
  %131 = load i8*, i8** %130, align 8, !dbg !2498, !tbaa !592
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2498
  %133 = load i8*, i8** %132, align 8, !dbg !2498, !tbaa !592
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2498
  %135 = load i8*, i8** %134, align 8, !dbg !2498, !tbaa !592
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2498
  %137 = load i8*, i8** %136, align 8, !dbg !2498, !tbaa !592
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2498
  %139 = load i8*, i8** %138, align 8, !dbg !2498, !tbaa !592
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2498
  %141 = load i8*, i8** %140, align 8, !dbg !2498, !tbaa !592
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2498
  %143 = load i8*, i8** %142, align 8, !dbg !2498, !tbaa !592
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2498
  %145 = load i8*, i8** %144, align 8, !dbg !2498, !tbaa !592
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2498
  br label %147, !dbg !2499

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2501 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2505, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %1, metadata !2506, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %2, metadata !2507, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %3, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8** %4, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 0, metadata !2510, metadata !DIExpression()), !dbg !2511
  br label %6, !dbg !2512

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2514
  call void @llvm.dbg.value(metadata i64 %7, metadata !2510, metadata !DIExpression()), !dbg !2511
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2515
  %9 = load i8*, i8** %8, align 8, !dbg !2515, !tbaa !592
  %10 = icmp eq i8* %9, null, !dbg !2517
  %11 = add i64 %7, 1, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %11, metadata !2510, metadata !DIExpression()), !dbg !2511
  br i1 %10, label %12, label %6, !dbg !2517, !llvm.loop !2519

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2521
  ret void, !dbg !2522
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2523 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2534, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %1, metadata !2535, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %2, metadata !2536, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %3, metadata !2537, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2538, metadata !DIExpression()), !dbg !2542
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2543
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2543
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2540, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 0, metadata !2539, metadata !DIExpression()), !dbg !2542
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2539, metadata !DIExpression()), !dbg !2542
  %11 = load i32, i32* %8, align 8, !dbg !2545
  %12 = icmp ult i32 %11, 41, !dbg !2545
  br i1 %12, label %13, label %18, !dbg !2545

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2545
  %15 = zext i32 %11 to i64, !dbg !2545
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2545
  %17 = add nuw nsw i32 %11, 8, !dbg !2545
  store i32 %17, i32* %8, align 8, !dbg !2545
  br label %21, !dbg !2545

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2545
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2545
  store i8* %20, i8** %9, align 8, !dbg !2545
  br label %21, !dbg !2545

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2545
  %25 = load i8*, i8** %24, align 8, !dbg !2545
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2548
  store i8* %25, i8** %26, align 16, !dbg !2549, !tbaa !592
  %27 = icmp eq i8* %25, null, !dbg !2550
  br i1 %27, label %30, label %28, !dbg !2551

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 1, metadata !2539, metadata !DIExpression()), !dbg !2542
  %29 = icmp ult i32 %22, 41, !dbg !2545
  br i1 %29, label %35, label %32, !dbg !2545

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2552
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2553
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2554
  ret void, !dbg !2554

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2545
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2545
  store i8* %34, i8** %9, align 8, !dbg !2545
  br label %40, !dbg !2545

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2545
  %37 = zext i32 %22 to i64, !dbg !2545
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2545
  %39 = add nuw nsw i32 %22, 8, !dbg !2545
  store i32 %39, i32* %8, align 8, !dbg !2545
  br label %40, !dbg !2545

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2545
  %44 = load i8*, i8** %43, align 8, !dbg !2545
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2548
  store i8* %44, i8** %45, align 8, !dbg !2549, !tbaa !592
  %46 = icmp eq i8* %44, null, !dbg !2550
  br i1 %46, label %30, label %47, !dbg !2551

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 2, metadata !2539, metadata !DIExpression()), !dbg !2542
  %48 = icmp ult i32 %41, 41, !dbg !2545
  br i1 %48, label %52, label %49, !dbg !2545

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2545
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2545
  store i8* %51, i8** %9, align 8, !dbg !2545
  br label %57, !dbg !2545

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2545
  %54 = zext i32 %41 to i64, !dbg !2545
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2545
  %56 = add nuw nsw i32 %41, 8, !dbg !2545
  store i32 %56, i32* %8, align 8, !dbg !2545
  br label %57, !dbg !2545

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2545
  %61 = load i8*, i8** %60, align 8, !dbg !2545
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2548
  store i8* %61, i8** %62, align 16, !dbg !2549, !tbaa !592
  %63 = icmp eq i8* %61, null, !dbg !2550
  br i1 %63, label %30, label %64, !dbg !2551

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 3, metadata !2539, metadata !DIExpression()), !dbg !2542
  %65 = icmp ult i32 %58, 41, !dbg !2545
  br i1 %65, label %69, label %66, !dbg !2545

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2545
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2545
  store i8* %68, i8** %9, align 8, !dbg !2545
  br label %74, !dbg !2545

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2545
  %71 = zext i32 %58 to i64, !dbg !2545
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2545
  %73 = add nuw nsw i32 %58, 8, !dbg !2545
  store i32 %73, i32* %8, align 8, !dbg !2545
  br label %74, !dbg !2545

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2545
  %78 = load i8*, i8** %77, align 8, !dbg !2545
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2548
  store i8* %78, i8** %79, align 8, !dbg !2549, !tbaa !592
  %80 = icmp eq i8* %78, null, !dbg !2550
  br i1 %80, label %30, label %81, !dbg !2551

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 4, metadata !2539, metadata !DIExpression()), !dbg !2542
  %82 = icmp ult i32 %75, 41, !dbg !2545
  br i1 %82, label %86, label %83, !dbg !2545

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2545
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2545
  store i8* %85, i8** %9, align 8, !dbg !2545
  br label %91, !dbg !2545

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2545
  %88 = zext i32 %75 to i64, !dbg !2545
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2545
  %90 = add nuw nsw i32 %75, 8, !dbg !2545
  store i32 %90, i32* %8, align 8, !dbg !2545
  br label %91, !dbg !2545

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2545
  %95 = load i8*, i8** %94, align 8, !dbg !2545
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2548
  store i8* %95, i8** %96, align 16, !dbg !2549, !tbaa !592
  %97 = icmp eq i8* %95, null, !dbg !2550
  br i1 %97, label %30, label %98, !dbg !2551

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 5, metadata !2539, metadata !DIExpression()), !dbg !2542
  %99 = icmp ult i32 %92, 41, !dbg !2545
  br i1 %99, label %103, label %100, !dbg !2545

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2545
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2545
  store i8* %102, i8** %9, align 8, !dbg !2545
  br label %108, !dbg !2545

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2545
  %105 = zext i32 %92 to i64, !dbg !2545
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2545
  %107 = add nuw nsw i32 %92, 8, !dbg !2545
  store i32 %107, i32* %8, align 8, !dbg !2545
  br label %108, !dbg !2545

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2545
  %111 = load i8*, i8** %110, align 8, !dbg !2545
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2548
  store i8* %111, i8** %112, align 8, !dbg !2549, !tbaa !592
  %113 = icmp eq i8* %111, null, !dbg !2550
  br i1 %113, label %30, label %114, !dbg !2551

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2539, metadata !DIExpression()), !dbg !2542
  %115 = load i8*, i8** %9, align 8, !dbg !2545
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2545
  store i8* %116, i8** %9, align 8, !dbg !2545
  %117 = bitcast i8* %115 to i8**, !dbg !2545
  %118 = load i8*, i8** %117, align 8, !dbg !2545
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2548
  store i8* %118, i8** %119, align 16, !dbg !2549, !tbaa !592
  %120 = icmp eq i8* %118, null, !dbg !2550
  br i1 %120, label %30, label %121, !dbg !2551

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2539, metadata !DIExpression()), !dbg !2542
  %122 = load i8*, i8** %9, align 8, !dbg !2545
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2545
  store i8* %123, i8** %9, align 8, !dbg !2545
  %124 = bitcast i8* %122 to i8**, !dbg !2545
  %125 = load i8*, i8** %124, align 8, !dbg !2545
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2548
  store i8* %125, i8** %126, align 8, !dbg !2549, !tbaa !592
  %127 = icmp eq i8* %125, null, !dbg !2550
  br i1 %127, label %30, label %128, !dbg !2551

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2539, metadata !DIExpression()), !dbg !2542
  %129 = load i8*, i8** %9, align 8, !dbg !2545
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2545
  store i8* %130, i8** %9, align 8, !dbg !2545
  %131 = bitcast i8* %129 to i8**, !dbg !2545
  %132 = load i8*, i8** %131, align 8, !dbg !2545
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2548
  store i8* %132, i8** %133, align 16, !dbg !2549, !tbaa !592
  %134 = icmp eq i8* %132, null, !dbg !2550
  br i1 %134, label %30, label %135, !dbg !2551

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2539, metadata !DIExpression()), !dbg !2542
  %136 = load i8*, i8** %9, align 8, !dbg !2545
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2545
  store i8* %137, i8** %9, align 8, !dbg !2545
  %138 = bitcast i8* %136 to i8**, !dbg !2545
  %139 = load i8*, i8** %138, align 8, !dbg !2545
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2548
  store i8* %139, i8** %140, align 8, !dbg !2549, !tbaa !592
  %141 = icmp eq i8* %139, null, !dbg !2550
  %142 = select i1 %141, i64 9, i64 10, !dbg !2551
  br label %30, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2555 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2559, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %3, metadata !2562, metadata !DIExpression()), !dbg !2569
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2570
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2570
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2563, metadata !DIExpression()), !dbg !2571
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2572
  call void @llvm.va_start(i8* nonnull %6), !dbg !2572
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2573
  call void @llvm.va_end(i8* nonnull %6), !dbg !2574
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2575
  ret void, !dbg !2575
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2576 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2577, !tbaa !592
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2577
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #24, !dbg !2578
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.97, i64 0, i64 0)) #24, !dbg !2578
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.98, i64 0, i64 0), i32 5) #24, !dbg !2579
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.99, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.100, i64 0, i64 0)) #24, !dbg !2579
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.101, i64 0, i64 0), i32 5) #24, !dbg !2580
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.102, i64 0, i64 0)) #24, !dbg !2580
  ret void, !dbg !2581
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2582 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %1, metadata !2587, metadata !DIExpression()), !dbg !2588
  %3 = udiv i64 9223372036854775807, %1, !dbg !2589
  %4 = icmp ult i64 %3, %0, !dbg !2589
  br i1 %4, label %5, label %6, !dbg !2591

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2592
  unreachable, !dbg !2592

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %7, metadata !2594, metadata !DIExpression()) #24, !dbg !2600
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2602
  call void @llvm.dbg.value(metadata i8* %8, metadata !2599, metadata !DIExpression()) #24, !dbg !2600
  %9 = icmp eq i8* %8, null, !dbg !2603
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2605
  br i1 %11, label %12, label %13, !dbg !2605

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2606
  unreachable, !dbg !2606

13:                                               ; preds = %6
  ret i8* %8, !dbg !2607
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2595 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2594, metadata !DIExpression()), !dbg !2608
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %2, metadata !2599, metadata !DIExpression()), !dbg !2608
  %3 = icmp eq i8* %2, null, !dbg !2610
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2611
  br i1 %5, label %6, label %7, !dbg !2611

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2612
  unreachable, !dbg !2612

7:                                                ; preds = %1
  ret i8* %2, !dbg !2613
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 %1, metadata !2619, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 %2, metadata !2620, metadata !DIExpression()), !dbg !2621
  %4 = udiv i64 9223372036854775807, %2, !dbg !2622
  %5 = icmp ult i64 %4, %1, !dbg !2622
  br i1 %5, label %6, label %7, !dbg !2624

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2625
  unreachable, !dbg !2625

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %0, metadata !2627, metadata !DIExpression()) #24, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %8, metadata !2632, metadata !DIExpression()) #24, !dbg !2633
  %9 = icmp eq i64 %8, 0, !dbg !2635
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2637
  br i1 %11, label %12, label %13, !dbg !2637

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2638
  br label %19, !dbg !2640

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %14, metadata !2627, metadata !DIExpression()) #24, !dbg !2633
  %15 = icmp eq i8* %14, null, !dbg !2642
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2644
  br i1 %17, label %18, label %19, !dbg !2644

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2645
  unreachable, !dbg !2645

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2633
  ret i8* %20, !dbg !2646
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2628 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2627, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i64 %1, metadata !2632, metadata !DIExpression()), !dbg !2647
  %3 = icmp eq i64 %1, 0, !dbg !2648
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2649
  br i1 %5, label %6, label %7, !dbg !2649

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2650
  br label %13, !dbg !2651

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %8, metadata !2627, metadata !DIExpression()), !dbg !2647
  %9 = icmp eq i8* %8, null, !dbg !2653
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2654
  br i1 %11, label %12, label %13, !dbg !2654

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2655
  unreachable, !dbg !2655

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2647
  ret i8* %14, !dbg !2656
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !155 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !160, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i64* %1, metadata !161, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i64 %2, metadata !162, metadata !DIExpression()), !dbg !2657
  %4 = load i64, i64* %1, align 8, !dbg !2658, !tbaa !1868
  call void @llvm.dbg.value(metadata i64 %4, metadata !163, metadata !DIExpression()), !dbg !2657
  %5 = icmp eq i8* %0, null, !dbg !2659
  br i1 %5, label %6, label %20, !dbg !2661

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2662
  br i1 %7, label %8, label %13, !dbg !2665

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %9, metadata !163, metadata !DIExpression()), !dbg !2657
  %10 = icmp ugt i64 %2, 128, !dbg !2668
  %11 = zext i1 %10 to i64, !dbg !2668
  %12 = add nuw nsw i64 %9, %11, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %12, metadata !163, metadata !DIExpression()), !dbg !2657
  br label %13, !dbg !2670

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2657
  call void @llvm.dbg.value(metadata i64 %14, metadata !163, metadata !DIExpression()), !dbg !2657
  %15 = udiv i64 9223372036854775807, %2, !dbg !2671
  %16 = icmp ult i64 %15, %14, !dbg !2671
  br i1 %16, label %19, label %17, !dbg !2673

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !163, metadata !DIExpression()), !dbg !2657
  store i64 %14, i64* %1, align 8, !dbg !2674, !tbaa !1868
  %18 = mul i64 %14, %2, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2627, metadata !DIExpression()) #24, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %28, metadata !2632, metadata !DIExpression()) #24, !dbg !2676
  br label %31, !dbg !2678

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2679
  unreachable, !dbg !2679

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2680
  %22 = icmp ugt i64 %21, %4, !dbg !2683
  br i1 %22, label %24, label %23, !dbg !2684

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2685
  unreachable, !dbg !2685

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2686
  %26 = add nuw i64 %4, 1, !dbg !2687
  %27 = add i64 %26, %25, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %27, metadata !163, metadata !DIExpression()), !dbg !2657
  store i64 %27, i64* %1, align 8, !dbg !2674, !tbaa !1868
  %28 = mul i64 %27, %2, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %0, metadata !2627, metadata !DIExpression()) #24, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %28, metadata !2632, metadata !DIExpression()) #24, !dbg !2676
  %29 = icmp eq i64 %28, 0, !dbg !2689
  br i1 %29, label %30, label %31, !dbg !2678

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2690
  br label %38, !dbg !2691

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %33, metadata !2627, metadata !DIExpression()) #24, !dbg !2676
  %34 = icmp eq i8* %33, null, !dbg !2693
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2694
  br i1 %36, label %37, label %38, !dbg !2694

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2695
  unreachable, !dbg !2695

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2676
  ret i8* %39, !dbg !2696
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2697 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2699, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %0, metadata !2594, metadata !DIExpression()) #24, !dbg !2701
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %2, metadata !2599, metadata !DIExpression()) #24, !dbg !2701
  %3 = icmp eq i8* %2, null, !dbg !2704
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2705
  br i1 %5, label %6, label %7, !dbg !2705

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2706
  unreachable, !dbg !2706

7:                                                ; preds = %1
  ret i8* %2, !dbg !2707
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2708 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64* %1, metadata !2713, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8* %0, metadata !160, metadata !DIExpression()) #24, !dbg !2715
  call void @llvm.dbg.value(metadata i64* %1, metadata !161, metadata !DIExpression()) #24, !dbg !2715
  call void @llvm.dbg.value(metadata i64 1, metadata !162, metadata !DIExpression()) #24, !dbg !2715
  %3 = load i64, i64* %1, align 8, !dbg !2717, !tbaa !1868
  call void @llvm.dbg.value(metadata i64 %3, metadata !163, metadata !DIExpression()) #24, !dbg !2715
  %4 = icmp eq i8* %0, null, !dbg !2718
  br i1 %4, label %5, label %10, !dbg !2719

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2720
  br i1 %6, label %17, label %7, !dbg !2721

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !163, metadata !DIExpression()) #24, !dbg !2715
  %8 = icmp slt i64 %3, 0, !dbg !2722
  br i1 %8, label %9, label %17, !dbg !2723

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2724
  unreachable, !dbg !2724

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2725
  br i1 %11, label %13, label %12, !dbg !2726

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2727
  unreachable, !dbg !2727

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2728
  %15 = add nuw nsw i64 %3, 1, !dbg !2729
  %16 = add nuw nsw i64 %15, %14, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %16, metadata !163, metadata !DIExpression()) #24, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %0, metadata !2627, metadata !DIExpression()) #24, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %16, metadata !2632, metadata !DIExpression()) #24, !dbg !2731
  br label %17, !dbg !2733

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2734
  store i64 %18, i64* %1, align 8, !dbg !2734, !tbaa !1868
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %19, metadata !2627, metadata !DIExpression()) #24, !dbg !2731
  %20 = icmp eq i8* %19, null, !dbg !2736
  br i1 %20, label %21, label %22, !dbg !2737

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !2738
  unreachable, !dbg !2738

22:                                               ; preds = %17
  ret i8* %19, !dbg !2739
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2740 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2742, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %0, metadata !2744, metadata !DIExpression()) #24, !dbg !2749
  call void @llvm.dbg.value(metadata i64 1, metadata !2747, metadata !DIExpression()) #24, !dbg !2749
  %2 = icmp slt i64 %0, 0, !dbg !2751
  br i1 %2, label %6, label %3, !dbg !2753

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %4, metadata !2748, metadata !DIExpression()) #24, !dbg !2749
  %5 = icmp eq i8* %4, null, !dbg !2755
  br i1 %5, label %6, label %7, !dbg !2756

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !2757
  unreachable, !dbg !2757

7:                                                ; preds = %3
  ret i8* %4, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2745 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2744, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %1, metadata !2747, metadata !DIExpression()), !dbg !2759
  %3 = udiv i64 9223372036854775807, %1, !dbg !2760
  %4 = icmp ult i64 %3, %0, !dbg !2760
  br i1 %4, label %8, label %5, !dbg !2761

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2762
  call void @llvm.dbg.value(metadata i8* %6, metadata !2748, metadata !DIExpression()), !dbg !2759
  %7 = icmp eq i8* %6, null, !dbg !2763
  br i1 %7, label %8, label %9, !dbg !2764

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !2765
  unreachable, !dbg !2765

9:                                                ; preds = %5
  ret i8* %6, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2767 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %1, metadata !2774, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %1, metadata !2594, metadata !DIExpression()) #24, !dbg !2776
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %3, metadata !2599, metadata !DIExpression()) #24, !dbg !2776
  %4 = icmp eq i8* %3, null, !dbg !2779
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2780
  br i1 %6, label %7, label %8, !dbg !2780

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2781
  unreachable, !dbg !2781

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2782, metadata !DIExpression()) #24, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %0, metadata !2789, metadata !DIExpression()) #24, !dbg !2791
  call void @llvm.dbg.value(metadata i64 %1, metadata !2790, metadata !DIExpression()) #24, !dbg !2791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2793
  ret i8* %3, !dbg !2794
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2795 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2797, metadata !DIExpression()), !dbg !2798
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !2799
  %3 = add i64 %2, 1, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()) #24, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %3, metadata !2774, metadata !DIExpression()) #24, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %3, metadata !2594, metadata !DIExpression()) #24, !dbg !2803
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2805
  call void @llvm.dbg.value(metadata i8* %4, metadata !2599, metadata !DIExpression()) #24, !dbg !2803
  %5 = icmp eq i8* %4, null, !dbg !2806
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2807
  br i1 %7, label %8, label %9, !dbg !2807

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2808
  unreachable, !dbg !2808

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2782, metadata !DIExpression()) #24, !dbg !2809
  call void @llvm.dbg.value(metadata i8* %0, metadata !2789, metadata !DIExpression()) #24, !dbg !2809
  call void @llvm.dbg.value(metadata i64 %3, metadata !2790, metadata !DIExpression()) #24, !dbg !2809
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2811
  ret i8* %4, !dbg !2812
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2813 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2814, !tbaa !763
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #24, !dbg !2815
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #24, !dbg !2816
  tail call void @abort() #26, !dbg !2817
  unreachable, !dbg !2817
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2818 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2820, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %1, metadata !2821, metadata !DIExpression()), !dbg !2826
  %3 = icmp eq i64 %0, 0, !dbg !2827
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2828
  br i1 %5, label %11, label %6, !dbg !2828

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2823, metadata !DIExpression()), !dbg !2829
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2830
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2830
  br i1 %8, label %9, label %11, !dbg !2832

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !2833
  store i32 12, i32* %10, align 4, !dbg !2835, !tbaa !763
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2820, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %12, metadata !2821, metadata !DIExpression()), !dbg !2826
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %14, metadata !2822, metadata !DIExpression()), !dbg !2826
  br label %15, !dbg !2837

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2826
  ret i8* %16, !dbg !2838
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2839 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !2855, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %1, metadata !2856, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %2, metadata !2857, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !2858, metadata !DIExpression()), !dbg !2864
  %6 = bitcast i32* %5 to i8*, !dbg !2865
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2865
  %7 = icmp eq i32* %0, null, !dbg !2866
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !2868
  call void @llvm.dbg.value(metadata i32* %8, metadata !2855, metadata !DIExpression()), !dbg !2864
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !2869
  call void @llvm.dbg.value(metadata i64 %9, metadata !2859, metadata !DIExpression()), !dbg !2864
  %10 = icmp ugt i64 %9, -3, !dbg !2870
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !2871
  br i1 %12, label %13, label %18, !dbg !2871

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !2872
  br i1 %14, label %18, label %15, !dbg !2873

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !2874, !tbaa !1168
  call void @llvm.dbg.value(metadata i8 %16, metadata !2861, metadata !DIExpression()), !dbg !2875
  %17 = zext i8 %16 to i32, !dbg !2876
  store i32 %17, i32* %8, align 4, !dbg !2877, !tbaa !763
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !2864
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !2878
  ret i64 %19, !dbg !2878
}

; Function Attrs: nounwind
declare !dbg !2879 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !2883 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2921, metadata !DIExpression()), !dbg !2926
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !2927
  call void @llvm.dbg.value(metadata i1 undef, metadata !2922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2928, metadata !DIExpression()), !dbg !2932
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2934
  %4 = load i32, i32* %3, align 8, !dbg !2934, !tbaa !2935
  %5 = and i32 %4, 32, !dbg !2937
  %6 = icmp eq i32 %5, 0, !dbg !2937
  call void @llvm.dbg.value(metadata i1 %6, metadata !2924, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2926
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !2938
  %8 = icmp eq i32 %7, 0, !dbg !2939
  call void @llvm.dbg.value(metadata i1 %8, metadata !2925, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2926
  br i1 %6, label %9, label %19, !dbg !2940

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !2942
  call void @llvm.dbg.value(metadata i1 %10, metadata !2922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2926
  %11 = or i1 %10, %8, !dbg !2943
  %12 = xor i1 %8, true, !dbg !2943
  %13 = sext i1 %12 to i32, !dbg !2943
  br i1 %11, label %22, label %14, !dbg !2943

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !2944
  %16 = load i32, i32* %15, align 4, !dbg !2944, !tbaa !763
  %17 = icmp ne i32 %16, 9, !dbg !2945
  %18 = sext i1 %17 to i32, !dbg !2946
  br label %22, !dbg !2946

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !2947

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !2949
  store i32 0, i32* %21, align 4, !dbg !2951, !tbaa !763
  br label %22, !dbg !2949

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !2926
  ret i32 %23, !dbg !2952
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !2953 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2957, metadata !DIExpression()), !dbg !2962
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2963
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !2958, metadata !DIExpression()), !dbg !2964
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !2965
  %5 = icmp eq i32 %4, 0, !dbg !2965
  br i1 %5, label %6, label %13, !dbg !2967

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !2968
  %8 = load i16, i16* %7, align 16, !dbg !2968
  %9 = icmp eq i16 %8, 67, !dbg !2968
  br i1 %9, label %13, label %10, !dbg !2969

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i64 6), !dbg !2970
  %12 = icmp ne i32 %11, 0, !dbg !2971
  br label %13, !dbg !2969

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !2962
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !2972
  ret i1 %14, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !2973 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %1, metadata !2977, metadata !DIExpression()), !dbg !2979
  %2 = icmp eq i8* %1, null, !dbg !2980
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* %1, !dbg !2982
  call void @llvm.dbg.value(metadata i8* %3, metadata !2977, metadata !DIExpression()), !dbg !2979
  %4 = load i8, i8* %3, align 1, !dbg !2983, !tbaa !1168
  %5 = icmp eq i8 %4, 0, !dbg !2987
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i8* %3, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %6, metadata !2977, metadata !DIExpression()), !dbg !2979
  ret i8* %6, !dbg !2989
}

; Function Attrs: nounwind
declare !dbg !2990 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !2993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8* %1, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %2, metadata !2999, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 %0, metadata !3001, metadata !DIExpression()) #24, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %1, metadata !3004, metadata !DIExpression()) #24, !dbg !3010
  call void @llvm.dbg.value(metadata i64 %2, metadata !3005, metadata !DIExpression()) #24, !dbg !3010
  call void @llvm.dbg.value(metadata i32 %0, metadata !3012, metadata !DIExpression()) #24, !dbg !3018
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %4, metadata !3017, metadata !DIExpression()) #24, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %4, metadata !3006, metadata !DIExpression()) #24, !dbg !3010
  %5 = icmp eq i8* %4, null, !dbg !3021
  br i1 %5, label %6, label %9, !dbg !3022

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3023
  br i1 %7, label %19, label %8, !dbg !3026

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3027, !tbaa !1168
  br label %19, !dbg !3028

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %10, metadata !3007, metadata !DIExpression()) #24, !dbg !3030
  %11 = icmp ult i64 %10, %2, !dbg !3031
  br i1 %11, label %12, label %14, !dbg !3033

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %1, metadata !3036, metadata !DIExpression()) #24, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %4, metadata !3039, metadata !DIExpression()) #24, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %13, metadata !3040, metadata !DIExpression()) #24, !dbg !3041
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3043
  br label %19, !dbg !3044

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3045
  br i1 %15, label %19, label %16, !dbg !3048

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %1, metadata !3036, metadata !DIExpression()) #24, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %4, metadata !3039, metadata !DIExpression()) #24, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %17, metadata !3040, metadata !DIExpression()) #24, !dbg !3051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3053
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3054
  store i8 0, i8* %18, align 1, !dbg !3055, !tbaa !1168
  br label %19, !dbg !3056

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3057
  ret i32 %20, !dbg !3058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3059 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i32 %0, metadata !3012, metadata !DIExpression()) #24, !dbg !3063
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %2, metadata !3017, metadata !DIExpression()) #24, !dbg !3063
  ret i8* %2, !dbg !3066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3067 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3105, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !3106, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !3108, metadata !DIExpression()), !dbg !3109
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3110
  call void @llvm.dbg.value(metadata i32 %2, metadata !3107, metadata !DIExpression()), !dbg !3109
  %3 = icmp slt i32 %2, 0, !dbg !3111
  br i1 %3, label %4, label %6, !dbg !3113

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3114
  br label %24, !dbg !3115

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3116
  %8 = icmp eq i32 %7, 0, !dbg !3116
  br i1 %8, label %13, label %9, !dbg !3118

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3119
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3120
  %12 = icmp eq i64 %11, -1, !dbg !3121
  br i1 %12, label %16, label %13, !dbg !3122

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3123
  %15 = icmp eq i32 %14, 0, !dbg !3123
  br i1 %15, label %16, label %18, !dbg !3124

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3106, metadata !DIExpression()), !dbg !3109
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3125
  call void @llvm.dbg.value(metadata i32 %21, metadata !3108, metadata !DIExpression()), !dbg !3109
  br label %24, !dbg !3126

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3127
  %20 = load i32, i32* %19, align 4, !dbg !3127, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %20, metadata !3106, metadata !DIExpression()), !dbg !3109
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3125
  call void @llvm.dbg.value(metadata i32 %21, metadata !3108, metadata !DIExpression()), !dbg !3109
  %22 = icmp eq i32 %20, 0, !dbg !3128
  br i1 %22, label %24, label %23, !dbg !3126

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3130, !tbaa !763
  call void @llvm.dbg.value(metadata i32 -1, metadata !3108, metadata !DIExpression()), !dbg !3109
  br label %24, !dbg !3132

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3109
  ret i32 %25, !dbg !3133
}

; Function Attrs: nofree nounwind
declare !dbg !3134 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3137 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3138 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3142 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3180, metadata !DIExpression()), !dbg !3181
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3182
  br i1 %2, label %6, label %3, !dbg !3184

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3185
  %5 = icmp eq i32 %4, 0, !dbg !3185
  br i1 %5, label %6, label %8, !dbg !3186

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3187
  br label %17, !dbg !3188

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3189, metadata !DIExpression()) #24, !dbg !3194
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3196
  %10 = load i32, i32* %9, align 8, !dbg !3196, !tbaa !2935
  %11 = and i32 %10, 256, !dbg !3198
  %12 = icmp eq i32 %11, 0, !dbg !3198
  br i1 %12, label %15, label %13, !dbg !3199

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3200
  br label %15, !dbg !3200

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3201
  br label %17, !dbg !3202

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3181
  ret i32 %18, !dbg !3203
}

; Function Attrs: nofree nounwind
declare !dbg !3204 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3207 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3246, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 %2, metadata !3248, metadata !DIExpression()), !dbg !3252
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3253
  %5 = load i8*, i8** %4, align 8, !dbg !3253, !tbaa !3254
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3255
  %7 = load i8*, i8** %6, align 8, !dbg !3255, !tbaa !3256
  %8 = icmp eq i8* %5, %7, !dbg !3257
  br i1 %8, label %9, label %28, !dbg !3258

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3259
  %11 = load i8*, i8** %10, align 8, !dbg !3259, !tbaa !3260
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3261
  %13 = load i8*, i8** %12, align 8, !dbg !3261, !tbaa !3262
  %14 = icmp eq i8* %11, %13, !dbg !3263
  br i1 %14, label %15, label %28, !dbg !3264

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3265
  %17 = load i8*, i8** %16, align 8, !dbg !3265, !tbaa !3266
  %18 = icmp eq i8* %17, null, !dbg !3267
  br i1 %18, label %19, label %28, !dbg !3268

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3269
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %21, metadata !3249, metadata !DIExpression()), !dbg !3271
  %22 = icmp eq i64 %21, -1, !dbg !3272
  br i1 %22, label %30, label %23, !dbg !3274

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3275
  %25 = load i32, i32* %24, align 8, !dbg !3276, !tbaa !2935
  %26 = and i32 %25, -17, !dbg !3276
  store i32 %26, i32* %24, align 8, !dbg !3276, !tbaa !2935
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3277
  store i64 %21, i64* %27, align 8, !dbg !3278, !tbaa !3279
  br label %30, !dbg !3280

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3281
  br label %30, !dbg !3282

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3252
  ret i32 %31, !dbg !3283
}

; Function Attrs: nofree nounwind
declare !dbg !3284 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #19 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #20 = { nofree nosync nounwind willreturn }
attributes #21 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind readnone willreturn }
attributes #29 = { cold }

!llvm.dbg.cu = !{!2, !28, !33, !41, !47, !53, !143, !137, !150, !167, !169, !171, !174, !176, !178, !567, !569, !571, !573}
!llvm.ident = !{!575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575, !575}
!llvm.module.flags = !{!576, !577, !578, !579, !580}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/runcon.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !24)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!15 = !{!16, !19, !21, !23}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 52, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !13, file: !14, line: 55, baseType: !20, size: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !14, line: 56, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !13, file: !14, line: 57, baseType: !20, size: 32, offset: 192)
!24 = !{!25}
!25 = !DISubrange(count: 8)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "Version", scope: !28, file: !29, line: 2, type: !17, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !30, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!30 = !{!26}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "file_name", scope: !33, file: !34, line: 46, type: !17, isLocal: true, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !35, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!35 = !{!31, !36}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !33, file: !34, line: 56, type: !38, isLocal: true, isDefinition: true)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "exit_failure", scope: !41, file: !42, line: 24, type: !44, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !43, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!43 = !{!39}
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "program_name", scope: !47, file: !48, line: 33, type: !17, isLocal: false, isDefinition: true)
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !49, globals: !50, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!49 = !{!8, !6}
!50 = !{!45}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !53, file: !54, line: 85, type: !131, isLocal: false, isDefinition: true)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !91, globals: !96, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!55 = !{!56, !71, !76}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !57, line: 32, baseType: !58, size: 32, elements: !59)
!57 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!60 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!64 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!65 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!66 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!67 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!68 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!69 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!70 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !57, line: 242, baseType: !58, size: 32, elements: !72)
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 46, baseType: !58, size: 32, elements: !78)
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
!91 = !{!20, !92, !93, !6}
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !{!51, !97, !103, !113, !115, !120, !127, !129}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !53, file: !54, line: 101, type: !99, isLocal: false, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 320, elements: !101)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!101 = !{!102}
!102 = !DISubrange(count: 10)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !53, file: !54, line: 1052, type: !105, isLocal: false, isDefinition: true)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !54, line: 65, size: 448, elements: !106)
!106 = !{!107, !108, !109, !111, !112}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !105, file: !54, line: 68, baseType: !56, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !54, line: 71, baseType: !20, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !105, file: !54, line: 75, baseType: !110, size: 256, offset: 64)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !24)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !105, file: !54, line: 78, baseType: !17, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !105, file: !54, line: 81, baseType: !17, size: 64, offset: 384)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !53, file: !54, line: 116, type: !105, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "slot0", scope: !53, file: !54, line: 842, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 256)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "slotvec", scope: !53, file: !54, line: 845, type: !122, isLocal: true, isDefinition: true)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !54, line: 834, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !54, line: 836, baseType: !93, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !123, file: !54, line: 837, baseType: !6, size: 64, offset: 64)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "nslots", scope: !53, file: !54, line: 843, type: !20, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "slotvec0", scope: !53, file: !54, line: 844, type: !123, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 704, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!133 = !{!134}
!134 = !DISubrange(count: 11)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !137, file: !138, line: 26, type: !140, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !139, splitDebugInlining: false, nameTableKind: None)
!138 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!139 = !{!135}
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 47)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!146}
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 40, baseType: !58, size: 32, elements: !147)
!147 = !{!148}
!148 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!149 = !{!8}
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!152 = !{!153}
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !155, file: !154, line: 186, baseType: !58, size: 32, elements: !164)
!154 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!155 = distinct !DISubprogram(name: "x2nrealloc", scope: !154, file: !154, line: 174, type: !156, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !159)
!156 = !DISubroutineType(types: !157)
!157 = !{!8, !8, !158, !93}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!159 = !{!160, !161, !162, !163}
!160 = !DILocalVariable(name: "p", arg: 1, scope: !155, file: !154, line: 174, type: !8)
!161 = !DILocalVariable(name: "pn", arg: 2, scope: !155, file: !154, line: 174, type: !158)
!162 = !DILocalVariable(name: "s", arg: 3, scope: !155, file: !154, line: 174, type: !93)
!163 = !DILocalVariable(name: "n", scope: !155, file: !154, line: 176, type: !93)
!164 = !{!165}
!165 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!166 = !{!93, !6, !8}
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!168 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !173, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !{!93}
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = distinct !DICompileUnit(language: DW_LANG_C99, file: !177, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!177 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!181}
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 41, baseType: !58, size: 32, elements: !183)
!182 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!184 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!185 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!186 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!187 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!188 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!189 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!190 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!191 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!192 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!193 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!194 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!195 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!196 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!197 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!198 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!199 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!200 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!201 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!202 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!203 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!204 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!205 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!206 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!207 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!208 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!210 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!211 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!212 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!213 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!214 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!215 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!216 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!217 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!218 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!219 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!220 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!222 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!223 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!224 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!225 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!226 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!227 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!228 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!229 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!230 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!231 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!232 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!233 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!234 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!235 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!236 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!237 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!292 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!295 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!296 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!297 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!298 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!299 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!300 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!301 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!302 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!303 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!304 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!305 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!379 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!452 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!453 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!454 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!455 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!456 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!457 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!458 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!459 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!460 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!461 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!462 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!463 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!464 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!465 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!466 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!468 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!469 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!470 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!471 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!472 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!473 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!499 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!500 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!501 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!502 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!503 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!508 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!509 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!510 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!511 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!568 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!570 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!571 = distinct !DICompileUnit(language: DW_LANG_C99, file: !572, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!572 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !{!"clang version 12.0.1"}
!576 = !{i32 7, !"Dwarf Version", i32 4}
!577 = !{i32 2, !"Debug Info Version", i32 3}
!578 = !{i32 1, !"wchar_size", i32 4}
!579 = !{i32 7, !"PIC Level", i32 2}
!580 = !{i32 7, !"PIE Level", i32 2}
!581 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !582, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !20}
!584 = !{!585}
!585 = !DILocalVariable(name: "status", arg: 1, scope: !581, file: !3, line: 72, type: !20)
!586 = !DILocation(line: 0, scope: !581)
!587 = !DILocation(line: 74, column: 14, scope: !588)
!588 = distinct !DILexicalBlock(scope: !581, file: !3, line: 74, column: 7)
!589 = !DILocation(line: 74, column: 7, scope: !581)
!590 = !DILocation(line: 75, column: 5, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !3, line: 75, column: 5)
!592 = !{!593, !593, i64 0}
!593 = !{!"any pointer", !594, i64 0}
!594 = !{!"omnipotent char", !595, i64 0}
!595 = !{!"Simple C/C++ TBAA"}
!596 = !DILocation(line: 78, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !588, file: !3, line: 77, column: 5)
!598 = !DILocation(line: 82, column: 7, scope: !597)
!599 = !DILocation(line: 590, column: 3, scope: !600, inlinedAt: !604)
!600 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !601, file: !601, line: 588, type: !602, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!601 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!602 = !DISubroutineType(types: !603)
!603 = !{null}
!604 = distinct !DILocation(line: 87, column: 7, scope: !597)
!605 = !DILocation(line: 89, column: 7, scope: !597)
!606 = !DILocation(line: 98, column: 7, scope: !597)
!607 = !DILocation(line: 99, column: 7, scope: !597)
!608 = !DILocalVariable(name: "program", arg: 1, scope: !609, file: !601, line: 634, type: !17)
!609 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !601, file: !601, line: 634, type: !610, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !17}
!612 = !{!608, !613, !622, !623, !625}
!613 = !DILocalVariable(name: "infomap", scope: !609, file: !601, line: 636, type: !614)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 896, elements: !620)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !609, file: !601, line: 636, size: 128, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !616, file: !601, line: 636, baseType: !17, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !601, line: 636, baseType: !17, size: 64, offset: 64)
!620 = !{!621}
!621 = !DISubrange(count: 7)
!622 = !DILocalVariable(name: "node", scope: !609, file: !601, line: 646, type: !17)
!623 = !DILocalVariable(name: "map_prog", scope: !609, file: !601, line: 647, type: !624)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!625 = !DILocalVariable(name: "lc_messages", scope: !609, file: !601, line: 659, type: !17)
!626 = !DILocation(line: 0, scope: !609, inlinedAt: !627)
!627 = distinct !DILocation(line: 100, column: 7, scope: !597)
!628 = !DILocation(line: 636, column: 3, scope: !609, inlinedAt: !627)
!629 = !DILocation(line: 636, column: 67, scope: !609, inlinedAt: !627)
!630 = !DILocation(line: 647, column: 36, scope: !609, inlinedAt: !627)
!631 = !DILocation(line: 649, column: 3, scope: !609, inlinedAt: !627)
!632 = !DILocation(line: 649, column: 33, scope: !609, inlinedAt: !627)
!633 = !DILocation(line: 650, column: 13, scope: !609, inlinedAt: !627)
!634 = !DILocation(line: 649, column: 20, scope: !609, inlinedAt: !627)
!635 = !{!636, !593, i64 0}
!636 = !{!"infomap", !593, i64 0, !593, i64 8}
!637 = !DILocation(line: 649, column: 10, scope: !609, inlinedAt: !627)
!638 = !DILocation(line: 649, column: 28, scope: !609, inlinedAt: !627)
!639 = distinct !{!639, !631, !633, !640}
!640 = !{!"llvm.loop.mustprogress"}
!641 = !DILocation(line: 652, column: 17, scope: !642, inlinedAt: !627)
!642 = distinct !DILexicalBlock(scope: !609, file: !601, line: 652, column: 7)
!643 = !{!636, !593, i64 8}
!644 = !DILocation(line: 652, column: 7, scope: !642, inlinedAt: !627)
!645 = !DILocation(line: 652, column: 7, scope: !609, inlinedAt: !627)
!646 = !DILocation(line: 655, column: 3, scope: !609, inlinedAt: !627)
!647 = !DILocation(line: 659, column: 29, scope: !609, inlinedAt: !627)
!648 = !DILocation(line: 660, column: 7, scope: !649, inlinedAt: !627)
!649 = distinct !DILexicalBlock(scope: !609, file: !601, line: 660, column: 7)
!650 = !DILocation(line: 660, column: 19, scope: !649, inlinedAt: !627)
!651 = !DILocation(line: 660, column: 22, scope: !649, inlinedAt: !627)
!652 = !DILocation(line: 660, column: 7, scope: !609, inlinedAt: !627)
!653 = !DILocation(line: 666, column: 7, scope: !654, inlinedAt: !627)
!654 = distinct !DILexicalBlock(scope: !649, file: !601, line: 661, column: 5)
!655 = !DILocation(line: 668, column: 5, scope: !654, inlinedAt: !627)
!656 = !DILocation(line: 669, column: 3, scope: !609, inlinedAt: !627)
!657 = !DILocation(line: 671, column: 3, scope: !609, inlinedAt: !627)
!658 = !DILocation(line: 673, column: 1, scope: !609, inlinedAt: !627)
!659 = !DILocation(line: 102, column: 3, scope: !581)
!660 = !DISubprogram(name: "dcgettext", scope: !661, file: !661, line: 51, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!661 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!662 = !DISubroutineType(types: !663)
!663 = !{!6, !17, !17, !20}
!664 = !DISubprogram(name: "fputs_unlocked", scope: !665, file: !665, line: 667, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!665 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!666 = !DISubroutineType(types: !667)
!667 = !{!20, !17, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !671)
!670 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !687, !688, !689, !690, !694, !695, !697, !701, !704, !706, !709, !712, !713, !714, !715, !716}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !669, file: !670, line: 51, baseType: !20, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !669, file: !670, line: 54, baseType: !6, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !669, file: !670, line: 55, baseType: !6, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !669, file: !670, line: 56, baseType: !6, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !669, file: !670, line: 57, baseType: !6, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !669, file: !670, line: 58, baseType: !6, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !669, file: !670, line: 59, baseType: !6, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !669, file: !670, line: 60, baseType: !6, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !669, file: !670, line: 61, baseType: !6, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !669, file: !670, line: 64, baseType: !6, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !669, file: !670, line: 65, baseType: !6, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !669, file: !670, line: 66, baseType: !6, size: 64, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !669, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !670, line: 36, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !669, file: !670, line: 70, baseType: !668, size: 64, offset: 832)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !669, file: !670, line: 72, baseType: !20, size: 32, offset: 896)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !669, file: !670, line: 73, baseType: !20, size: 32, offset: 928)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !669, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !692, line: 152, baseType: !693)
!692 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!693 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !669, file: !670, line: 77, baseType: !92, size: 16, offset: 1024)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !669, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!696 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !669, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !699)
!699 = !{!700}
!700 = !DISubrange(count: 1)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !669, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !670, line: 43, baseType: null)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !669, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !692, line: 153, baseType: !693)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !669, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !670, line: 37, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !669, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !670, line: 38, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !669, file: !670, line: 93, baseType: !668, size: 64, offset: 1344)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !669, file: !670, line: 94, baseType: !8, size: 64, offset: 1408)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !669, file: !670, line: 95, baseType: !93, size: 64, offset: 1472)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !669, file: !670, line: 96, baseType: !20, size: 32, offset: 1536)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !669, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 20)
!720 = !DISubprogram(name: "setlocale", scope: !721, file: !721, line: 122, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!721 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!722 = !DISubroutineType(types: !723)
!723 = !{!6, !20, !17}
!724 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 106, type: !725, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !728)
!725 = !DISubroutineType(types: !726)
!726 = !{!20, !20, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !743, !745}
!729 = !DILocalVariable(name: "argc", arg: 1, scope: !724, file: !3, line: 106, type: !20)
!730 = !DILocalVariable(name: "argv", arg: 2, scope: !724, file: !3, line: 106, type: !727)
!731 = !DILocalVariable(name: "role", scope: !724, file: !3, line: 108, type: !6)
!732 = !DILocalVariable(name: "range", scope: !724, file: !3, line: 109, type: !6)
!733 = !DILocalVariable(name: "user", scope: !724, file: !3, line: 110, type: !6)
!734 = !DILocalVariable(name: "type", scope: !724, file: !3, line: 111, type: !6)
!735 = !DILocalVariable(name: "context", scope: !724, file: !3, line: 112, type: !6)
!736 = !DILocalVariable(name: "cur_context", scope: !724, file: !3, line: 113, type: !6)
!737 = !DILocalVariable(name: "file_context", scope: !724, file: !3, line: 114, type: !6)
!738 = !DILocalVariable(name: "new_context", scope: !724, file: !3, line: 115, type: !6)
!739 = !DILocalVariable(name: "compute_trans", scope: !724, file: !3, line: 116, type: !38)
!740 = !DILocalVariable(name: "con", scope: !724, file: !3, line: 118, type: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !742, line: 53, baseType: !20)
!742 = !DIFile(filename: "./lib/selinux/context.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!743 = !DILocalVariable(name: "option_index", scope: !744, file: !3, line: 130, type: !20)
!744 = distinct !DILexicalBlock(scope: !724, file: !3, line: 129, column: 5)
!745 = !DILocalVariable(name: "c", scope: !744, file: !3, line: 131, type: !20)
!746 = !DILocation(line: 0, scope: !724)
!747 = !DILocation(line: 118, column: 13, scope: !724)
!748 = !DILocation(line: 121, column: 21, scope: !724)
!749 = !DILocation(line: 121, column: 3, scope: !724)
!750 = !DILocation(line: 122, column: 3, scope: !724)
!751 = !DILocation(line: 123, column: 3, scope: !724)
!752 = !DILocation(line: 124, column: 3, scope: !724)
!753 = !DILocation(line: 126, column: 3, scope: !724)
!754 = !DILocation(line: 128, column: 3, scope: !724)
!755 = !DILocation(line: 111, column: 9, scope: !724)
!756 = !DILocation(line: 110, column: 9, scope: !724)
!757 = !DILocation(line: 109, column: 9, scope: !724)
!758 = !DILocation(line: 116, column: 8, scope: !724)
!759 = !DILocation(line: 108, column: 9, scope: !724)
!760 = !DILocation(line: 130, column: 7, scope: !744)
!761 = !DILocation(line: 0, scope: !744)
!762 = !DILocation(line: 130, column: 11, scope: !744)
!763 = !{!764, !764, i64 0}
!764 = !{!"int", !594, i64 0}
!765 = !DILocation(line: 131, column: 15, scope: !744)
!766 = !DILocation(line: 133, column: 11, scope: !744)
!767 = !DILocation(line: 138, column: 15, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 138, column: 15)
!769 = distinct !DILexicalBlock(scope: !744, file: !3, line: 136, column: 9)
!770 = !DILocation(line: 138, column: 15, scope: !769)
!771 = !DILocation(line: 139, column: 13, scope: !768)
!772 = !DILocation(line: 140, column: 18, scope: !769)
!773 = !DILocation(line: 141, column: 11, scope: !769)
!774 = !DILocation(line: 143, column: 15, scope: !775)
!775 = distinct !DILexicalBlock(scope: !769, file: !3, line: 143, column: 15)
!776 = !DILocation(line: 143, column: 15, scope: !769)
!777 = !DILocation(line: 144, column: 13, scope: !775)
!778 = !DILocation(line: 145, column: 18, scope: !769)
!779 = !DILocation(line: 146, column: 11, scope: !769)
!780 = !DILocation(line: 148, column: 15, scope: !781)
!781 = distinct !DILexicalBlock(scope: !769, file: !3, line: 148, column: 15)
!782 = !DILocation(line: 148, column: 15, scope: !769)
!783 = !DILocation(line: 149, column: 13, scope: !781)
!784 = !DILocation(line: 150, column: 18, scope: !769)
!785 = !DILocation(line: 151, column: 11, scope: !769)
!786 = !DILocation(line: 153, column: 15, scope: !787)
!787 = distinct !DILexicalBlock(scope: !769, file: !3, line: 153, column: 15)
!788 = !DILocation(line: 153, column: 15, scope: !769)
!789 = !DILocation(line: 154, column: 13, scope: !787)
!790 = !DILocation(line: 155, column: 19, scope: !769)
!791 = !DILocation(line: 156, column: 11, scope: !769)
!792 = !DILocation(line: 161, column: 9, scope: !769)
!793 = !DILocation(line: 162, column: 9, scope: !769)
!794 = !DILocation(line: 164, column: 11, scope: !769)
!795 = !DILocation(line: 167, column: 5, scope: !724)
!796 = !DILocation(line: 169, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !724, file: !3, line: 169, column: 7)
!798 = !DILocation(line: 169, column: 21, scope: !797)
!799 = !DILocation(line: 169, column: 7, scope: !724)
!800 = !DILocalVariable(name: "con", arg: 1, scope: !801, file: !802, line: 87, type: !805)
!801 = distinct !DISubprogram(name: "getcon", scope: !802, file: !802, line: 87, type: !803, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!802 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!803 = !DISubroutineType(types: !804)
!804 = !{!20, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_context_t", file: !802, line: 83, baseType: !6)
!807 = !{!800}
!808 = !DILocation(line: 0, scope: !801, inlinedAt: !809)
!809 = distinct !DILocation(line: 171, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 171, column: 11)
!811 = distinct !DILexicalBlock(scope: !797, file: !3, line: 170, column: 5)
!812 = !DILocation(line: 88, column: 5, scope: !801, inlinedAt: !809)
!813 = !DILocation(line: 88, column: 11, scope: !801, inlinedAt: !809)
!814 = !DILocation(line: 172, column: 9, scope: !810)
!815 = !DILocation(line: 178, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !724, file: !3, line: 178, column: 7)
!817 = !DILocation(line: 178, column: 14, scope: !816)
!818 = !DILocation(line: 180, column: 18, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 180, column: 11)
!820 = distinct !DILexicalBlock(scope: !816, file: !3, line: 179, column: 5)
!821 = !DILocation(line: 180, column: 11, scope: !820)
!822 = !DILocation(line: 182, column: 24, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 181, column: 9)
!824 = !DILocation(line: 182, column: 11, scope: !823)
!825 = !DILocation(line: 183, column: 11, scope: !823)
!826 = !DILocation(line: 185, column: 28, scope: !820)
!827 = !DILocation(line: 186, column: 5, scope: !820)
!828 = !DILocation(line: 188, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !724, file: !3, line: 188, column: 7)
!830 = !DILocation(line: 188, column: 14, scope: !829)
!831 = !DILocation(line: 188, column: 7, scope: !724)
!832 = !DILocation(line: 190, column: 20, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 189, column: 5)
!834 = !DILocation(line: 190, column: 7, scope: !833)
!835 = !DILocation(line: 191, column: 7, scope: !833)
!836 = !DILocation(line: 195, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !724, file: !3, line: 194, column: 7)
!838 = !DISubprogram(name: "bindtextdomain", scope: !661, file: !661, line: 86, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!839 = !DISubroutineType(types: !840)
!840 = !{!6, !17, !17}
!841 = !DISubprogram(name: "textdomain", scope: !661, file: !661, line: 82, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!842 = !DISubroutineType(types: !843)
!843 = !{!6, !17}
!844 = !DISubprogram(name: "atexit", scope: !845, file: !845, line: 595, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!845 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!846 = !DISubroutineType(types: !847)
!847 = !{!20, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!849 = !DISubprogram(name: "getopt_long", scope: !14, file: !14, line: 66, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!850 = !DISubroutineType(types: !851)
!851 = !{!20, !20, !852, !17, !854, !22}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!855 = !DISubprogram(name: "error", scope: !856, file: !856, line: 52, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!856 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!857 = !DISubroutineType(types: !858)
!858 = !{null, !20, !20, !17, null}
!859 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !34, file: !34, line: 51, type: !610, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !860)
!860 = !{!861}
!861 = !DILocalVariable(name: "file", arg: 1, scope: !859, file: !34, line: 51, type: !17)
!862 = !DILocation(line: 0, scope: !859)
!863 = !DILocation(line: 53, column: 13, scope: !859)
!864 = !DILocation(line: 54, column: 1, scope: !859)
!865 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !34, file: !34, line: 88, type: !866, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !38}
!868 = !{!869}
!869 = !DILocalVariable(name: "ignore", arg: 1, scope: !865, file: !34, line: 88, type: !38)
!870 = !DILocation(line: 0, scope: !865)
!871 = !DILocation(line: 90, column: 16, scope: !865)
!872 = !{!873, !873, i64 0}
!873 = !{!"_Bool", !594, i64 0}
!874 = !DILocation(line: 91, column: 1, scope: !865)
!875 = distinct !DISubprogram(name: "close_stdout", scope: !34, file: !34, line: 117, type: !602, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !876)
!876 = !{!877}
!877 = !DILocalVariable(name: "write_error", scope: !878, file: !34, line: 122, type: !17)
!878 = distinct !DILexicalBlock(scope: !879, file: !34, line: 121, column: 5)
!879 = distinct !DILexicalBlock(scope: !875, file: !34, line: 119, column: 7)
!880 = !DILocation(line: 119, column: 21, scope: !879)
!881 = !DILocation(line: 119, column: 7, scope: !879)
!882 = !DILocation(line: 119, column: 29, scope: !879)
!883 = !DILocation(line: 120, column: 7, scope: !879)
!884 = !DILocation(line: 120, column: 12, scope: !879)
!885 = !{i8 0, i8 2}
!886 = !DILocation(line: 120, column: 25, scope: !879)
!887 = !DILocation(line: 120, column: 28, scope: !879)
!888 = !DILocation(line: 120, column: 34, scope: !879)
!889 = !DILocation(line: 119, column: 7, scope: !875)
!890 = !DILocation(line: 122, column: 33, scope: !878)
!891 = !DILocation(line: 0, scope: !878)
!892 = !DILocation(line: 123, column: 11, scope: !893)
!893 = distinct !DILexicalBlock(scope: !878, file: !34, line: 123, column: 11)
!894 = !DILocation(line: 0, scope: !893)
!895 = !DILocation(line: 123, column: 11, scope: !878)
!896 = !DILocation(line: 124, column: 36, scope: !893)
!897 = !DILocation(line: 124, column: 9, scope: !893)
!898 = !DILocation(line: 127, column: 9, scope: !893)
!899 = !DILocation(line: 129, column: 14, scope: !878)
!900 = !DILocation(line: 129, column: 7, scope: !878)
!901 = !DILocation(line: 134, column: 42, scope: !902)
!902 = distinct !DILexicalBlock(scope: !875, file: !34, line: 134, column: 7)
!903 = !DILocation(line: 134, column: 28, scope: !902)
!904 = !DILocation(line: 134, column: 50, scope: !902)
!905 = !DILocation(line: 134, column: 7, scope: !875)
!906 = !DILocation(line: 135, column: 12, scope: !902)
!907 = !DILocation(line: 135, column: 5, scope: !902)
!908 = !DILocation(line: 136, column: 1, scope: !875)
!909 = distinct !DISubprogram(name: "set_program_name", scope: !48, file: !48, line: 39, type: !610, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !910)
!910 = !{!911, !912, !913}
!911 = !DILocalVariable(name: "argv0", arg: 1, scope: !909, file: !48, line: 39, type: !17)
!912 = !DILocalVariable(name: "slash", scope: !909, file: !48, line: 46, type: !17)
!913 = !DILocalVariable(name: "base", scope: !909, file: !48, line: 47, type: !17)
!914 = !DILocation(line: 0, scope: !909)
!915 = !DILocation(line: 51, column: 13, scope: !916)
!916 = distinct !DILexicalBlock(scope: !909, file: !48, line: 51, column: 7)
!917 = !DILocation(line: 51, column: 7, scope: !909)
!918 = !DILocation(line: 55, column: 14, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !48, line: 52, column: 5)
!920 = !DILocation(line: 54, column: 7, scope: !919)
!921 = !DILocation(line: 56, column: 7, scope: !919)
!922 = !DILocation(line: 59, column: 11, scope: !909)
!923 = !DILocation(line: 60, column: 17, scope: !909)
!924 = !DILocation(line: 60, column: 11, scope: !909)
!925 = !DILocation(line: 61, column: 12, scope: !926)
!926 = distinct !DILexicalBlock(scope: !909, file: !48, line: 61, column: 7)
!927 = !DILocation(line: 61, column: 20, scope: !926)
!928 = !DILocation(line: 61, column: 25, scope: !926)
!929 = !DILocation(line: 61, column: 42, scope: !926)
!930 = !DILocation(line: 61, column: 28, scope: !926)
!931 = !DILocation(line: 61, column: 61, scope: !926)
!932 = !DILocation(line: 61, column: 7, scope: !909)
!933 = !DILocation(line: 64, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !48, line: 64, column: 11)
!935 = distinct !DILexicalBlock(scope: !926, file: !48, line: 62, column: 5)
!936 = !DILocation(line: 64, column: 36, scope: !934)
!937 = !DILocation(line: 64, column: 11, scope: !935)
!938 = !DILocation(line: 66, column: 24, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !48, line: 65, column: 9)
!940 = !DILocation(line: 70, column: 41, scope: !939)
!941 = !DILocation(line: 72, column: 9, scope: !939)
!942 = !DILocation(line: 84, column: 16, scope: !909)
!943 = !DILocation(line: 90, column: 27, scope: !909)
!944 = !DILocation(line: 92, column: 1, scope: !909)
!945 = distinct !DISubprogram(name: "clone_quoting_options", scope: !54, file: !54, line: 122, type: !946, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !949)
!946 = !DISubroutineType(types: !947)
!947 = !{!948, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!949 = !{!950, !951, !952}
!950 = !DILocalVariable(name: "o", arg: 1, scope: !945, file: !54, line: 122, type: !948)
!951 = !DILocalVariable(name: "e", scope: !945, file: !54, line: 124, type: !20)
!952 = !DILocalVariable(name: "p", scope: !945, file: !54, line: 125, type: !948)
!953 = !DILocation(line: 0, scope: !945)
!954 = !DILocation(line: 124, column: 11, scope: !945)
!955 = !DILocation(line: 125, column: 40, scope: !945)
!956 = !DILocation(line: 125, column: 31, scope: !945)
!957 = !DILocation(line: 127, column: 9, scope: !945)
!958 = !DILocation(line: 128, column: 3, scope: !945)
!959 = distinct !DISubprogram(name: "get_quoting_style", scope: !54, file: !54, line: 133, type: !960, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !964)
!960 = !DISubroutineType(types: !961)
!961 = !{!56, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!964 = !{!965}
!965 = !DILocalVariable(name: "o", arg: 1, scope: !959, file: !54, line: 133, type: !962)
!966 = !DILocation(line: 0, scope: !959)
!967 = !DILocation(line: 135, column: 11, scope: !959)
!968 = !DILocation(line: 135, column: 46, scope: !959)
!969 = !{!970, !594, i64 0}
!970 = !{!"quoting_options", !594, i64 0, !764, i64 4, !594, i64 8, !593, i64 40, !593, i64 48}
!971 = !DILocation(line: 135, column: 3, scope: !959)
!972 = distinct !DISubprogram(name: "set_quoting_style", scope: !54, file: !54, line: 141, type: !973, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !948, !56}
!975 = !{!976, !977}
!976 = !DILocalVariable(name: "o", arg: 1, scope: !972, file: !54, line: 141, type: !948)
!977 = !DILocalVariable(name: "s", arg: 2, scope: !972, file: !54, line: 141, type: !56)
!978 = !DILocation(line: 0, scope: !972)
!979 = !DILocation(line: 143, column: 4, scope: !972)
!980 = !DILocation(line: 143, column: 39, scope: !972)
!981 = !DILocation(line: 143, column: 45, scope: !972)
!982 = !DILocation(line: 144, column: 1, scope: !972)
!983 = distinct !DISubprogram(name: "set_char_quoting", scope: !54, file: !54, line: 152, type: !984, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !986)
!984 = !DISubroutineType(types: !985)
!985 = !{!20, !948, !7, !20}
!986 = !{!987, !988, !989, !990, !991, !993, !994}
!987 = !DILocalVariable(name: "o", arg: 1, scope: !983, file: !54, line: 152, type: !948)
!988 = !DILocalVariable(name: "c", arg: 2, scope: !983, file: !54, line: 152, type: !7)
!989 = !DILocalVariable(name: "i", arg: 3, scope: !983, file: !54, line: 152, type: !20)
!990 = !DILocalVariable(name: "uc", scope: !983, file: !54, line: 154, type: !9)
!991 = !DILocalVariable(name: "p", scope: !983, file: !54, line: 155, type: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!993 = !DILocalVariable(name: "shift", scope: !983, file: !54, line: 157, type: !20)
!994 = !DILocalVariable(name: "r", scope: !983, file: !54, line: 158, type: !20)
!995 = !DILocation(line: 0, scope: !983)
!996 = !DILocation(line: 156, column: 6, scope: !983)
!997 = !DILocation(line: 156, column: 62, scope: !983)
!998 = !DILocation(line: 156, column: 57, scope: !983)
!999 = !DILocation(line: 157, column: 15, scope: !983)
!1000 = !DILocation(line: 158, column: 12, scope: !983)
!1001 = !DILocation(line: 158, column: 15, scope: !983)
!1002 = !DILocation(line: 158, column: 25, scope: !983)
!1003 = !DILocation(line: 159, column: 13, scope: !983)
!1004 = !DILocation(line: 159, column: 18, scope: !983)
!1005 = !DILocation(line: 159, column: 23, scope: !983)
!1006 = !DILocation(line: 159, column: 6, scope: !983)
!1007 = !DILocation(line: 160, column: 3, scope: !983)
!1008 = distinct !DISubprogram(name: "set_quoting_flags", scope: !54, file: !54, line: 168, type: !1009, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!20, !948, !20}
!1011 = !{!1012, !1013, !1014}
!1012 = !DILocalVariable(name: "o", arg: 1, scope: !1008, file: !54, line: 168, type: !948)
!1013 = !DILocalVariable(name: "i", arg: 2, scope: !1008, file: !54, line: 168, type: !20)
!1014 = !DILocalVariable(name: "r", scope: !1008, file: !54, line: 170, type: !20)
!1015 = !DILocation(line: 0, scope: !1008)
!1016 = !DILocation(line: 171, column: 8, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1008, file: !54, line: 171, column: 7)
!1018 = !DILocation(line: 171, column: 7, scope: !1008)
!1019 = !DILocation(line: 173, column: 10, scope: !1008)
!1020 = !{!970, !764, i64 4}
!1021 = !DILocation(line: 174, column: 12, scope: !1008)
!1022 = !DILocation(line: 175, column: 3, scope: !1008)
!1023 = distinct !DISubprogram(name: "set_custom_quoting", scope: !54, file: !54, line: 179, type: !1024, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !948, !17, !17}
!1026 = !{!1027, !1028, !1029}
!1027 = !DILocalVariable(name: "o", arg: 1, scope: !1023, file: !54, line: 179, type: !948)
!1028 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1023, file: !54, line: 180, type: !17)
!1029 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1023, file: !54, line: 180, type: !17)
!1030 = !DILocation(line: 0, scope: !1023)
!1031 = !DILocation(line: 182, column: 8, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1023, file: !54, line: 182, column: 7)
!1033 = !DILocation(line: 182, column: 7, scope: !1023)
!1034 = !DILocation(line: 184, column: 6, scope: !1023)
!1035 = !DILocation(line: 184, column: 12, scope: !1023)
!1036 = !DILocation(line: 185, column: 8, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1023, file: !54, line: 185, column: 7)
!1038 = !DILocation(line: 185, column: 19, scope: !1037)
!1039 = !DILocation(line: 186, column: 5, scope: !1037)
!1040 = !DILocation(line: 187, column: 6, scope: !1023)
!1041 = !DILocation(line: 187, column: 17, scope: !1023)
!1042 = !{!970, !593, i64 40}
!1043 = !DILocation(line: 188, column: 6, scope: !1023)
!1044 = !DILocation(line: 188, column: 18, scope: !1023)
!1045 = !{!970, !593, i64 48}
!1046 = !DILocation(line: 189, column: 1, scope: !1023)
!1047 = distinct !DISubprogram(name: "quotearg_buffer", scope: !54, file: !54, line: 784, type: !1048, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!93, !6, !93, !17, !93, !962}
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1051 = !DILocalVariable(name: "buffer", arg: 1, scope: !1047, file: !54, line: 784, type: !6)
!1052 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1047, file: !54, line: 784, type: !93)
!1053 = !DILocalVariable(name: "arg", arg: 3, scope: !1047, file: !54, line: 785, type: !17)
!1054 = !DILocalVariable(name: "argsize", arg: 4, scope: !1047, file: !54, line: 785, type: !93)
!1055 = !DILocalVariable(name: "o", arg: 5, scope: !1047, file: !54, line: 786, type: !962)
!1056 = !DILocalVariable(name: "p", scope: !1047, file: !54, line: 788, type: !962)
!1057 = !DILocalVariable(name: "e", scope: !1047, file: !54, line: 789, type: !20)
!1058 = !DILocalVariable(name: "r", scope: !1047, file: !54, line: 790, type: !93)
!1059 = !DILocation(line: 0, scope: !1047)
!1060 = !DILocation(line: 788, column: 37, scope: !1047)
!1061 = !DILocation(line: 789, column: 11, scope: !1047)
!1062 = !DILocation(line: 791, column: 43, scope: !1047)
!1063 = !DILocation(line: 791, column: 53, scope: !1047)
!1064 = !DILocation(line: 791, column: 60, scope: !1047)
!1065 = !DILocation(line: 792, column: 43, scope: !1047)
!1066 = !DILocation(line: 792, column: 58, scope: !1047)
!1067 = !DILocation(line: 790, column: 14, scope: !1047)
!1068 = !DILocation(line: 793, column: 9, scope: !1047)
!1069 = !DILocation(line: 794, column: 3, scope: !1047)
!1070 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !54, file: !54, line: 256, type: !1071, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1075)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!93, !6, !93, !17, !93, !56, !20, !1073, !17, !17}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1100, !1101, !1102, !1103, !1104, !1107, !1108, !1126, !1129, !1130, !1137, !1140, !1141, !1142, !1143, !1144, !1145}
!1076 = !DILocalVariable(name: "buffer", arg: 1, scope: !1070, file: !54, line: 256, type: !6)
!1077 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1070, file: !54, line: 256, type: !93)
!1078 = !DILocalVariable(name: "arg", arg: 3, scope: !1070, file: !54, line: 257, type: !17)
!1079 = !DILocalVariable(name: "argsize", arg: 4, scope: !1070, file: !54, line: 257, type: !93)
!1080 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1070, file: !54, line: 258, type: !56)
!1081 = !DILocalVariable(name: "flags", arg: 6, scope: !1070, file: !54, line: 258, type: !20)
!1082 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1070, file: !54, line: 259, type: !1073)
!1083 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1070, file: !54, line: 260, type: !17)
!1084 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1070, file: !54, line: 261, type: !17)
!1085 = !DILocalVariable(name: "i", scope: !1070, file: !54, line: 263, type: !93)
!1086 = !DILocalVariable(name: "len", scope: !1070, file: !54, line: 264, type: !93)
!1087 = !DILocalVariable(name: "orig_buffersize", scope: !1070, file: !54, line: 265, type: !93)
!1088 = !DILocalVariable(name: "quote_string", scope: !1070, file: !54, line: 266, type: !17)
!1089 = !DILocalVariable(name: "quote_string_len", scope: !1070, file: !54, line: 267, type: !93)
!1090 = !DILocalVariable(name: "backslash_escapes", scope: !1070, file: !54, line: 268, type: !38)
!1091 = !DILocalVariable(name: "unibyte_locale", scope: !1070, file: !54, line: 269, type: !38)
!1092 = !DILocalVariable(name: "elide_outer_quotes", scope: !1070, file: !54, line: 270, type: !38)
!1093 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1070, file: !54, line: 271, type: !38)
!1094 = !DILocalVariable(name: "encountered_single_quote", scope: !1070, file: !54, line: 272, type: !38)
!1095 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1070, file: !54, line: 273, type: !38)
!1096 = !DILocalVariable(name: "c", scope: !1097, file: !54, line: 402, type: !9)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !54, line: 401, column: 5)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !54, line: 400, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1070, file: !54, line: 400, column: 3)
!1100 = !DILocalVariable(name: "esc", scope: !1097, file: !54, line: 403, type: !9)
!1101 = !DILocalVariable(name: "is_right_quote", scope: !1097, file: !54, line: 404, type: !38)
!1102 = !DILocalVariable(name: "escaping", scope: !1097, file: !54, line: 405, type: !38)
!1103 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1097, file: !54, line: 406, type: !38)
!1104 = !DILocalVariable(name: "m", scope: !1105, file: !54, line: 610, type: !93)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 608, column: 11)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !54, line: 426, column: 9)
!1107 = !DILocalVariable(name: "printable", scope: !1105, file: !54, line: 612, type: !38)
!1108 = !DILocalVariable(name: "mbstate", scope: !1109, file: !54, line: 621, type: !1111)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !54, line: 620, column: 15)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !54, line: 614, column: 17)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1112, line: 6, baseType: !1113)
!1112 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1114, line: 21, baseType: !1115)
!1114 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 13, size: 64, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1115, file: !1114, line: 15, baseType: !20, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1115, file: !1114, line: 20, baseType: !1119, size: 32, offset: 32)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !1114, line: 16, size: 32, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1119, file: !1114, line: 18, baseType: !58, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1119, file: !1114, line: 19, baseType: !1123, size: 32)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 4)
!1126 = !DILocalVariable(name: "w", scope: !1127, file: !54, line: 631, type: !1128)
!1127 = distinct !DILexicalBlock(scope: !1109, file: !54, line: 630, column: 19)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 74, baseType: !20)
!1129 = !DILocalVariable(name: "bytes", scope: !1127, file: !54, line: 632, type: !93)
!1130 = !DILocalVariable(name: "j", scope: !1131, file: !54, line: 657, type: !93)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !54, line: 656, column: 27)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !54, line: 654, column: 29)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !54, line: 649, column: 23)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !54, line: 641, column: 30)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !54, line: 636, column: 30)
!1136 = distinct !DILexicalBlock(scope: !1127, file: !54, line: 634, column: 25)
!1137 = !DILocalVariable(name: "ilim", scope: !1138, file: !54, line: 684, type: !93)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !54, line: 681, column: 15)
!1139 = distinct !DILexicalBlock(scope: !1105, file: !54, line: 680, column: 17)
!1140 = !DILabel(scope: !1070, name: "process_input", file: !54, line: 314)
!1141 = !DILabel(scope: !1106, name: "c_and_shell_escape", file: !54, line: 512)
!1142 = !DILabel(scope: !1106, name: "c_escape", file: !54, line: 517)
!1143 = !DILabel(scope: !1097, name: "store_escape", file: !54, line: 719)
!1144 = !DILabel(scope: !1097, name: "store_c", file: !54, line: 722)
!1145 = !DILabel(scope: !1070, name: "force_outer_quoting_style", file: !54, line: 763)
!1146 = !DILocation(line: 0, scope: !1070)
!1147 = !DILocation(line: 269, column: 25, scope: !1070)
!1148 = !DILocation(line: 269, column: 36, scope: !1070)
!1149 = !DILocation(line: 270, column: 8, scope: !1070)
!1150 = !DILocation(line: 273, column: 3, scope: !1070)
!1151 = !DILocation(line: 265, column: 10, scope: !1070)
!1152 = !DILocation(line: 266, column: 15, scope: !1070)
!1153 = !DILocation(line: 267, column: 10, scope: !1070)
!1154 = !DILocation(line: 268, column: 8, scope: !1070)
!1155 = !DILocation(line: 271, column: 8, scope: !1070)
!1156 = !DILocation(line: 272, column: 8, scope: !1070)
!1157 = !DILocation(line: 273, column: 8, scope: !1070)
!1158 = !DILocation(line: 314, column: 2, scope: !1070)
!1159 = !DILocation(line: 316, column: 3, scope: !1070)
!1160 = !DILocation(line: 323, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1070, file: !54, line: 317, column: 5)
!1162 = !DILocation(line: 323, column: 12, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1161, file: !54, line: 323, column: 11)
!1164 = !DILocation(line: 324, column: 9, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !54, line: 324, column: 9)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !54, line: 324, column: 9)
!1167 = !DILocation(line: 324, column: 9, scope: !1166)
!1168 = !{!594, !594, i64 0}
!1169 = !DILocation(line: 362, column: 26, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !54, line: 340, column: 11)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !54, line: 339, column: 13)
!1172 = distinct !DILexicalBlock(scope: !1161, file: !54, line: 338, column: 7)
!1173 = !DILocation(line: 363, column: 27, scope: !1170)
!1174 = !DILocation(line: 364, column: 11, scope: !1170)
!1175 = !DILocation(line: 365, column: 14, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !54, line: 365, column: 13)
!1177 = !DILocation(line: 365, column: 13, scope: !1172)
!1178 = !DILocation(line: 366, column: 43, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !54, line: 366, column: 11)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !54, line: 366, column: 11)
!1181 = !DILocation(line: 366, column: 11, scope: !1180)
!1182 = !DILocation(line: 367, column: 13, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !54, line: 367, column: 13)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !54, line: 367, column: 13)
!1185 = !DILocation(line: 367, column: 13, scope: !1184)
!1186 = !DILocation(line: 366, column: 70, scope: !1179)
!1187 = distinct !{!1187, !1181, !1188, !640}
!1188 = !DILocation(line: 367, column: 13, scope: !1180)
!1189 = !DILocation(line: 264, column: 10, scope: !1070)
!1190 = !DILocation(line: 370, column: 28, scope: !1172)
!1191 = !DILocation(line: 372, column: 7, scope: !1161)
!1192 = !DILocation(line: 376, column: 7, scope: !1161)
!1193 = !DILocation(line: 379, column: 7, scope: !1161)
!1194 = !DILocation(line: 381, column: 12, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1161, file: !54, line: 381, column: 11)
!1196 = !DILocation(line: 381, column: 11, scope: !1161)
!1197 = !DILocation(line: 386, column: 12, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1161, file: !54, line: 386, column: 11)
!1199 = !DILocation(line: 386, column: 11, scope: !1161)
!1200 = !DILocation(line: 387, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !54, line: 387, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !54, line: 387, column: 9)
!1203 = !DILocation(line: 387, column: 9, scope: !1202)
!1204 = !DILocation(line: 394, column: 7, scope: !1161)
!1205 = !DILocation(line: 397, column: 7, scope: !1161)
!1206 = !DILocation(line: 400, column: 8, scope: !1099)
!1207 = !DILocation(line: 0, scope: !1099)
!1208 = !DILocation(line: 400, column: 27, scope: !1098)
!1209 = !DILocation(line: 400, column: 19, scope: !1098)
!1210 = !DILocation(line: 400, column: 41, scope: !1098)
!1211 = !DILocation(line: 400, column: 48, scope: !1098)
!1212 = !DILocation(line: 400, column: 3, scope: !1099)
!1213 = !DILocation(line: 400, column: 60, scope: !1098)
!1214 = !DILocation(line: 0, scope: !1097)
!1215 = !DILocation(line: 409, column: 11, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1097, file: !54, line: 408, column: 11)
!1217 = !DILocation(line: 411, column: 17, scope: !1216)
!1218 = !DILocation(line: 412, column: 39, scope: !1216)
!1219 = !DILocation(line: 416, column: 32, scope: !1216)
!1220 = !DILocation(line: 412, column: 19, scope: !1216)
!1221 = !DILocation(line: 412, column: 15, scope: !1216)
!1222 = !DILocation(line: 417, column: 11, scope: !1216)
!1223 = !DILocation(line: 417, column: 26, scope: !1216)
!1224 = !DILocation(line: 417, column: 14, scope: !1216)
!1225 = !DILocation(line: 417, column: 63, scope: !1216)
!1226 = !DILocation(line: 408, column: 11, scope: !1097)
!1227 = !DILocation(line: 424, column: 11, scope: !1097)
!1228 = !DILocation(line: 425, column: 7, scope: !1097)
!1229 = !DILocation(line: 428, column: 15, scope: !1106)
!1230 = !DILocation(line: 430, column: 15, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !54, line: 430, column: 15)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !54, line: 429, column: 13)
!1233 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 428, column: 15)
!1234 = !DILocation(line: 430, column: 15, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !54, line: 430, column: 15)
!1236 = !DILocation(line: 430, column: 15, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !54, line: 430, column: 15)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !54, line: 430, column: 15)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !54, line: 430, column: 15)
!1240 = !DILocation(line: 430, column: 15, scope: !1238)
!1241 = !DILocation(line: 430, column: 15, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !54, line: 430, column: 15)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !54, line: 430, column: 15)
!1244 = !DILocation(line: 430, column: 15, scope: !1243)
!1245 = !DILocation(line: 430, column: 15, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !54, line: 430, column: 15)
!1247 = distinct !DILexicalBlock(scope: !1239, file: !54, line: 430, column: 15)
!1248 = !DILocation(line: 430, column: 15, scope: !1247)
!1249 = !DILocation(line: 430, column: 15, scope: !1239)
!1250 = !DILocation(line: 430, column: 15, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !54, line: 430, column: 15)
!1252 = distinct !DILexicalBlock(scope: !1231, file: !54, line: 430, column: 15)
!1253 = !DILocation(line: 430, column: 15, scope: !1252)
!1254 = !DILocation(line: 438, column: 19, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1232, file: !54, line: 437, column: 19)
!1256 = !DILocation(line: 438, column: 48, scope: !1255)
!1257 = !DILocation(line: 438, column: 59, scope: !1255)
!1258 = !DILocation(line: 440, column: 19, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !54, line: 440, column: 19)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !54, line: 440, column: 19)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !54, line: 439, column: 17)
!1262 = !DILocation(line: 440, column: 19, scope: !1260)
!1263 = !DILocation(line: 441, column: 19, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !54, line: 441, column: 19)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !54, line: 441, column: 19)
!1266 = !DILocation(line: 441, column: 19, scope: !1265)
!1267 = !DILocation(line: 442, column: 17, scope: !1261)
!1268 = !DILocation(line: 449, column: 20, scope: !1233)
!1269 = !DILocation(line: 454, column: 11, scope: !1106)
!1270 = !DILocation(line: 457, column: 19, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 455, column: 13)
!1272 = !DILocation(line: 463, column: 19, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1271, file: !54, line: 462, column: 19)
!1274 = !DILocation(line: 463, column: 47, scope: !1273)
!1275 = !DILocation(line: 463, column: 41, scope: !1273)
!1276 = !DILocation(line: 463, column: 52, scope: !1273)
!1277 = !DILocation(line: 462, column: 19, scope: !1271)
!1278 = !DILocation(line: 464, column: 25, scope: !1273)
!1279 = !DILocation(line: 464, column: 17, scope: !1273)
!1280 = !DILocation(line: 471, column: 25, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1273, file: !54, line: 465, column: 19)
!1282 = !DILocation(line: 475, column: 21, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !54, line: 475, column: 21)
!1284 = distinct !DILexicalBlock(scope: !1281, file: !54, line: 475, column: 21)
!1285 = !DILocation(line: 475, column: 21, scope: !1284)
!1286 = !DILocation(line: 476, column: 21, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !54, line: 476, column: 21)
!1288 = distinct !DILexicalBlock(scope: !1281, file: !54, line: 476, column: 21)
!1289 = !DILocation(line: 476, column: 21, scope: !1288)
!1290 = !DILocation(line: 477, column: 21, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !54, line: 477, column: 21)
!1292 = distinct !DILexicalBlock(scope: !1281, file: !54, line: 477, column: 21)
!1293 = !DILocation(line: 477, column: 21, scope: !1292)
!1294 = !DILocation(line: 478, column: 21, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !54, line: 478, column: 21)
!1296 = distinct !DILexicalBlock(scope: !1281, file: !54, line: 478, column: 21)
!1297 = !DILocation(line: 478, column: 21, scope: !1296)
!1298 = !DILocation(line: 479, column: 21, scope: !1281)
!1299 = !DILocation(line: 492, column: 31, scope: !1106)
!1300 = !DILocation(line: 493, column: 31, scope: !1106)
!1301 = !DILocation(line: 495, column: 31, scope: !1106)
!1302 = !DILocation(line: 496, column: 31, scope: !1106)
!1303 = !DILocation(line: 497, column: 31, scope: !1106)
!1304 = !DILocation(line: 500, column: 15, scope: !1106)
!1305 = !DILocation(line: 502, column: 19, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !54, line: 501, column: 13)
!1307 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 500, column: 15)
!1308 = !DILocation(line: 509, column: 33, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 509, column: 15)
!1310 = !DILocation(line: 0, scope: !1106)
!1311 = !DILocation(line: 512, column: 9, scope: !1106)
!1312 = !DILocation(line: 514, column: 15, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 513, column: 15)
!1314 = !DILocation(line: 517, column: 9, scope: !1106)
!1315 = !DILocation(line: 518, column: 15, scope: !1106)
!1316 = !DILocation(line: 526, column: 15, scope: !1106)
!1317 = !DILocation(line: 526, column: 40, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 526, column: 15)
!1319 = !DILocation(line: 526, column: 47, scope: !1318)
!1320 = !DILocation(line: 526, column: 18, scope: !1318)
!1321 = !DILocation(line: 530, column: 17, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 530, column: 15)
!1323 = !DILocation(line: 530, column: 15, scope: !1106)
!1324 = !DILocation(line: 535, column: 11, scope: !1106)
!1325 = !DILocation(line: 549, column: 15, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 548, column: 15)
!1327 = !DILocation(line: 556, column: 15, scope: !1106)
!1328 = !DILocation(line: 558, column: 19, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !54, line: 557, column: 13)
!1330 = distinct !DILexicalBlock(scope: !1106, file: !54, line: 556, column: 15)
!1331 = !DILocation(line: 561, column: 19, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !54, line: 561, column: 19)
!1333 = !DILocation(line: 561, column: 30, scope: !1332)
!1334 = !DILocation(line: 570, column: 15, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !54, line: 570, column: 15)
!1336 = distinct !DILexicalBlock(scope: !1329, file: !54, line: 570, column: 15)
!1337 = !DILocation(line: 570, column: 15, scope: !1336)
!1338 = !DILocation(line: 571, column: 15, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !54, line: 571, column: 15)
!1340 = distinct !DILexicalBlock(scope: !1329, file: !54, line: 571, column: 15)
!1341 = !DILocation(line: 571, column: 15, scope: !1340)
!1342 = !DILocation(line: 572, column: 15, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !54, line: 572, column: 15)
!1344 = distinct !DILexicalBlock(scope: !1329, file: !54, line: 572, column: 15)
!1345 = !DILocation(line: 572, column: 15, scope: !1344)
!1346 = !DILocation(line: 574, column: 13, scope: !1329)
!1347 = !DILocation(line: 614, column: 17, scope: !1105)
!1348 = !DILocation(line: 0, scope: !1105)
!1349 = !DILocation(line: 617, column: 29, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1110, file: !54, line: 615, column: 15)
!1351 = !{!1352, !1352, i64 0}
!1352 = !{!"short", !594, i64 0}
!1353 = !DILocation(line: 617, column: 27, scope: !1350)
!1354 = !DILocation(line: 678, column: 40, scope: !1105)
!1355 = !DILocation(line: 680, column: 23, scope: !1139)
!1356 = !DILocation(line: 621, column: 17, scope: !1109)
!1357 = !DILocation(line: 621, column: 27, scope: !1109)
!1358 = !DILocalVariable(name: "__dest", arg: 1, scope: !1359, file: !1360, line: 57, type: !8)
!1359 = distinct !DISubprogram(name: "memset", scope: !1360, file: !1360, line: 57, type: !1361, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1363)
!1360 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!8, !8, !20, !93}
!1363 = !{!1358, !1364, !1365}
!1364 = !DILocalVariable(name: "__ch", arg: 2, scope: !1359, file: !1360, line: 57, type: !20)
!1365 = !DILocalVariable(name: "__len", arg: 3, scope: !1359, file: !1360, line: 57, type: !93)
!1366 = !DILocation(line: 0, scope: !1359, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 622, column: 17, scope: !1109)
!1368 = !DILocation(line: 59, column: 10, scope: !1359, inlinedAt: !1367)
!1369 = !DILocation(line: 626, column: 29, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1109, file: !54, line: 626, column: 21)
!1371 = !DILocation(line: 626, column: 21, scope: !1109)
!1372 = !DILocation(line: 627, column: 29, scope: !1370)
!1373 = !DILocation(line: 627, column: 19, scope: !1370)
!1374 = !DILocation(line: 629, column: 17, scope: !1109)
!1375 = !DILocation(line: 624, column: 19, scope: !1109)
!1376 = !DILocation(line: 625, column: 27, scope: !1109)
!1377 = !DILocation(line: 631, column: 21, scope: !1127)
!1378 = !DILocation(line: 632, column: 56, scope: !1127)
!1379 = !DILocation(line: 632, column: 50, scope: !1127)
!1380 = !DILocation(line: 633, column: 53, scope: !1127)
!1381 = !DILocation(line: 0, scope: !1127)
!1382 = !DILocation(line: 632, column: 36, scope: !1127)
!1383 = !DILocation(line: 634, column: 25, scope: !1127)
!1384 = !DILocation(line: 644, column: 38, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1134, file: !54, line: 642, column: 23)
!1386 = !DILocation(line: 644, column: 48, scope: !1385)
!1387 = !DILocation(line: 644, column: 25, scope: !1385)
!1388 = !DILocation(line: 644, column: 51, scope: !1385)
!1389 = !DILocation(line: 645, column: 28, scope: !1385)
!1390 = !DILocation(line: 644, column: 34, scope: !1385)
!1391 = distinct !{!1391, !1387, !1389, !640}
!1392 = !DILocation(line: 655, column: 29, scope: !1132)
!1393 = !DILocation(line: 0, scope: !1131)
!1394 = !DILocation(line: 659, column: 49, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !54, line: 658, column: 29)
!1396 = distinct !DILexicalBlock(scope: !1131, file: !54, line: 658, column: 29)
!1397 = !DILocation(line: 659, column: 39, scope: !1395)
!1398 = !DILocation(line: 659, column: 31, scope: !1395)
!1399 = !DILocation(line: 658, column: 53, scope: !1395)
!1400 = !DILocation(line: 658, column: 43, scope: !1395)
!1401 = !DILocation(line: 658, column: 29, scope: !1396)
!1402 = distinct !{!1402, !1401, !1403, !640}
!1403 = !DILocation(line: 667, column: 33, scope: !1396)
!1404 = !DILocation(line: 674, column: 19, scope: !1109)
!1405 = !DILocation(line: 670, column: 41, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1133, file: !54, line: 670, column: 29)
!1407 = !DILocation(line: 670, column: 31, scope: !1406)
!1408 = !DILocation(line: 670, column: 29, scope: !1133)
!1409 = !DILocation(line: 672, column: 27, scope: !1133)
!1410 = !DILocation(line: 675, column: 26, scope: !1109)
!1411 = !DILocation(line: 675, column: 24, scope: !1109)
!1412 = !DILocation(line: 674, column: 19, scope: !1127)
!1413 = distinct !{!1413, !1374, !1414, !640}
!1414 = !DILocation(line: 675, column: 44, scope: !1109)
!1415 = !DILocation(line: 676, column: 15, scope: !1110)
!1416 = !DILocation(line: 680, column: 19, scope: !1139)
!1417 = !DILocation(line: 680, column: 45, scope: !1139)
!1418 = !DILocation(line: 684, column: 33, scope: !1138)
!1419 = !DILocation(line: 0, scope: !1138)
!1420 = !DILocation(line: 686, column: 17, scope: !1138)
!1421 = !DILocation(line: 405, column: 12, scope: !1097)
!1422 = !DILocation(line: 688, column: 43, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !54, line: 688, column: 25)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !54, line: 687, column: 19)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !54, line: 686, column: 17)
!1426 = distinct !DILexicalBlock(scope: !1138, file: !54, line: 686, column: 17)
!1427 = !DILocation(line: 690, column: 25, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !54, line: 690, column: 25)
!1429 = distinct !DILexicalBlock(scope: !1423, file: !54, line: 689, column: 23)
!1430 = !DILocation(line: 690, column: 25, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !54, line: 690, column: 25)
!1432 = !DILocation(line: 690, column: 25, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !54, line: 690, column: 25)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !54, line: 690, column: 25)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !54, line: 690, column: 25)
!1436 = !DILocation(line: 690, column: 25, scope: !1434)
!1437 = !DILocation(line: 690, column: 25, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !54, line: 690, column: 25)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !54, line: 690, column: 25)
!1440 = !DILocation(line: 690, column: 25, scope: !1439)
!1441 = !DILocation(line: 690, column: 25, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !54, line: 690, column: 25)
!1443 = distinct !DILexicalBlock(scope: !1435, file: !54, line: 690, column: 25)
!1444 = !DILocation(line: 690, column: 25, scope: !1443)
!1445 = !DILocation(line: 690, column: 25, scope: !1435)
!1446 = !DILocation(line: 690, column: 25, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !54, line: 690, column: 25)
!1448 = distinct !DILexicalBlock(scope: !1428, file: !54, line: 690, column: 25)
!1449 = !DILocation(line: 690, column: 25, scope: !1448)
!1450 = !DILocation(line: 691, column: 25, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !54, line: 691, column: 25)
!1452 = distinct !DILexicalBlock(scope: !1429, file: !54, line: 691, column: 25)
!1453 = !DILocation(line: 691, column: 25, scope: !1452)
!1454 = !DILocation(line: 692, column: 25, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !54, line: 692, column: 25)
!1456 = distinct !DILexicalBlock(scope: !1429, file: !54, line: 692, column: 25)
!1457 = !DILocation(line: 692, column: 25, scope: !1456)
!1458 = !DILocation(line: 693, column: 38, scope: !1429)
!1459 = !DILocation(line: 693, column: 33, scope: !1429)
!1460 = !DILocation(line: 694, column: 23, scope: !1429)
!1461 = !DILocation(line: 695, column: 30, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1423, file: !54, line: 695, column: 30)
!1463 = !DILocation(line: 695, column: 30, scope: !1423)
!1464 = !DILocation(line: 697, column: 25, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !54, line: 697, column: 25)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !54, line: 697, column: 25)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !54, line: 696, column: 23)
!1468 = !DILocation(line: 697, column: 25, scope: !1466)
!1469 = !DILocation(line: 699, column: 23, scope: !1467)
!1470 = !DILocation(line: 700, column: 35, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1424, file: !54, line: 700, column: 25)
!1472 = !DILocation(line: 700, column: 30, scope: !1471)
!1473 = !DILocation(line: 700, column: 25, scope: !1424)
!1474 = !DILocation(line: 702, column: 21, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !54, line: 702, column: 21)
!1476 = distinct !DILexicalBlock(scope: !1424, file: !54, line: 702, column: 21)
!1477 = !DILocation(line: 702, column: 21, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !54, line: 702, column: 21)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !54, line: 702, column: 21)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !54, line: 702, column: 21)
!1481 = !DILocation(line: 702, column: 21, scope: !1479)
!1482 = !DILocation(line: 702, column: 21, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !54, line: 702, column: 21)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !54, line: 702, column: 21)
!1485 = !DILocation(line: 702, column: 21, scope: !1484)
!1486 = !DILocation(line: 702, column: 21, scope: !1480)
!1487 = !DILocation(line: 0, scope: !1424)
!1488 = !DILocation(line: 703, column: 21, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !54, line: 703, column: 21)
!1490 = distinct !DILexicalBlock(scope: !1424, file: !54, line: 703, column: 21)
!1491 = !DILocation(line: 703, column: 21, scope: !1490)
!1492 = !DILocation(line: 704, column: 25, scope: !1424)
!1493 = !DILocation(line: 686, column: 17, scope: !1425)
!1494 = distinct !{!1494, !1495, !1496}
!1495 = !DILocation(line: 686, column: 17, scope: !1426)
!1496 = !DILocation(line: 705, column: 19, scope: !1426)
!1497 = !DILocation(line: 416, column: 30, scope: !1216)
!1498 = !DILocation(line: 712, column: 34, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1097, file: !54, line: 712, column: 11)
!1500 = !DILocation(line: 715, column: 35, scope: !1499)
!1501 = !DILocation(line: 715, column: 17, scope: !1499)
!1502 = !DILocation(line: 715, column: 47, scope: !1499)
!1503 = !DILocation(line: 715, column: 65, scope: !1499)
!1504 = !DILocation(line: 716, column: 11, scope: !1499)
!1505 = !DILocation(line: 712, column: 11, scope: !1097)
!1506 = !DILocation(line: 400, column: 10, scope: !1099)
!1507 = !DILocation(line: 719, column: 5, scope: !1097)
!1508 = !DILocation(line: 720, column: 7, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1097, file: !54, line: 720, column: 7)
!1510 = !DILocation(line: 720, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1509, file: !54, line: 720, column: 7)
!1512 = !DILocation(line: 720, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !54, line: 720, column: 7)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !54, line: 720, column: 7)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !54, line: 720, column: 7)
!1516 = !DILocation(line: 720, column: 7, scope: !1514)
!1517 = !DILocation(line: 720, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !54, line: 720, column: 7)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !54, line: 720, column: 7)
!1520 = !DILocation(line: 720, column: 7, scope: !1519)
!1521 = !DILocation(line: 720, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !54, line: 720, column: 7)
!1523 = distinct !DILexicalBlock(scope: !1515, file: !54, line: 720, column: 7)
!1524 = !DILocation(line: 720, column: 7, scope: !1523)
!1525 = !DILocation(line: 720, column: 7, scope: !1515)
!1526 = !DILocation(line: 720, column: 7, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !54, line: 720, column: 7)
!1528 = distinct !DILexicalBlock(scope: !1509, file: !54, line: 720, column: 7)
!1529 = !DILocation(line: 720, column: 7, scope: !1528)
!1530 = !DILocation(line: 722, column: 5, scope: !1097)
!1531 = !DILocation(line: 723, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !54, line: 723, column: 7)
!1533 = distinct !DILexicalBlock(scope: !1097, file: !54, line: 723, column: 7)
!1534 = !DILocation(line: 424, column: 9, scope: !1097)
!1535 = !DILocation(line: 723, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !54, line: 723, column: 7)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !54, line: 723, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1532, file: !54, line: 723, column: 7)
!1539 = !DILocation(line: 723, column: 7, scope: !1537)
!1540 = !DILocation(line: 723, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !54, line: 723, column: 7)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !54, line: 723, column: 7)
!1543 = !DILocation(line: 723, column: 7, scope: !1542)
!1544 = !DILocation(line: 723, column: 7, scope: !1538)
!1545 = !DILocation(line: 724, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !54, line: 724, column: 7)
!1547 = distinct !DILexicalBlock(scope: !1097, file: !54, line: 724, column: 7)
!1548 = !DILocation(line: 724, column: 7, scope: !1547)
!1549 = !DILocation(line: 726, column: 13, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1097, file: !54, line: 726, column: 11)
!1551 = !DILocation(line: 726, column: 11, scope: !1097)
!1552 = !DILocation(line: 728, column: 5, scope: !1098)
!1553 = !DILocation(line: 400, column: 75, scope: !1098)
!1554 = !DILocation(line: 400, column: 3, scope: !1098)
!1555 = distinct !{!1555, !1212, !1556, !640}
!1556 = !DILocation(line: 728, column: 5, scope: !1099)
!1557 = !DILocation(line: 730, column: 11, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1070, file: !54, line: 730, column: 7)
!1559 = !DILocation(line: 730, column: 16, scope: !1558)
!1560 = !DILocation(line: 738, column: 51, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1070, file: !54, line: 738, column: 7)
!1562 = !DILocation(line: 741, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !54, line: 741, column: 11)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !54, line: 740, column: 5)
!1565 = !DILocation(line: 741, column: 11, scope: !1564)
!1566 = !DILocation(line: 742, column: 16, scope: !1563)
!1567 = !DILocation(line: 742, column: 9, scope: !1563)
!1568 = !DILocation(line: 746, column: 18, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1563, file: !54, line: 746, column: 16)
!1570 = !DILocation(line: 746, column: 29, scope: !1569)
!1571 = !DILocation(line: 755, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1070, file: !54, line: 755, column: 7)
!1573 = !DILocation(line: 755, column: 20, scope: !1572)
!1574 = !DILocation(line: 756, column: 12, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !54, line: 756, column: 5)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !54, line: 756, column: 5)
!1577 = !DILocation(line: 756, column: 5, scope: !1576)
!1578 = !DILocation(line: 757, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !54, line: 757, column: 7)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !54, line: 757, column: 7)
!1581 = !DILocation(line: 757, column: 7, scope: !1580)
!1582 = !DILocation(line: 756, column: 39, scope: !1575)
!1583 = distinct !{!1583, !1577, !1584, !640}
!1584 = !DILocation(line: 757, column: 7, scope: !1576)
!1585 = !DILocation(line: 759, column: 11, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1070, file: !54, line: 759, column: 7)
!1587 = !DILocation(line: 759, column: 7, scope: !1070)
!1588 = !DILocation(line: 760, column: 5, scope: !1586)
!1589 = !DILocation(line: 760, column: 17, scope: !1586)
!1590 = !DILocation(line: 763, column: 2, scope: !1070)
!1591 = !DILocation(line: 766, column: 51, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1070, file: !54, line: 766, column: 7)
!1593 = !DILocation(line: 766, column: 21, scope: !1592)
!1594 = !DILocation(line: 770, column: 42, scope: !1070)
!1595 = !DILocation(line: 768, column: 10, scope: !1070)
!1596 = !DILocation(line: 768, column: 3, scope: !1070)
!1597 = !DILocation(line: 772, column: 1, scope: !1070)
!1598 = distinct !DISubprogram(name: "gettext_quote", scope: !54, file: !54, line: 207, type: !1599, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1601)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!17, !17, !56}
!1601 = !{!1602, !1603, !1604, !1605}
!1602 = !DILocalVariable(name: "msgid", arg: 1, scope: !1598, file: !54, line: 207, type: !17)
!1603 = !DILocalVariable(name: "s", arg: 2, scope: !1598, file: !54, line: 207, type: !56)
!1604 = !DILocalVariable(name: "translation", scope: !1598, file: !54, line: 209, type: !17)
!1605 = !DILocalVariable(name: "locale_code", scope: !1598, file: !54, line: 210, type: !17)
!1606 = !DILocation(line: 0, scope: !1598)
!1607 = !DILocation(line: 209, column: 29, scope: !1598)
!1608 = !DILocation(line: 212, column: 19, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1598, file: !54, line: 212, column: 7)
!1610 = !DILocation(line: 212, column: 7, scope: !1598)
!1611 = !DILocation(line: 233, column: 17, scope: !1598)
!1612 = !DILocalVariable(name: "s1", arg: 1, scope: !1613, file: !1614, line: 160, type: !17)
!1613 = distinct !DISubprogram(name: "strcaseeq0", scope: !1614, file: !1614, line: 160, type: !1615, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1617)
!1614 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1617 = !{!1612, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1618 = !DILocalVariable(name: "s2", arg: 2, scope: !1613, file: !1614, line: 160, type: !17)
!1619 = !DILocalVariable(name: "s20", arg: 3, scope: !1613, file: !1614, line: 160, type: !7)
!1620 = !DILocalVariable(name: "s21", arg: 4, scope: !1613, file: !1614, line: 160, type: !7)
!1621 = !DILocalVariable(name: "s22", arg: 5, scope: !1613, file: !1614, line: 160, type: !7)
!1622 = !DILocalVariable(name: "s23", arg: 6, scope: !1613, file: !1614, line: 160, type: !7)
!1623 = !DILocalVariable(name: "s24", arg: 7, scope: !1613, file: !1614, line: 160, type: !7)
!1624 = !DILocalVariable(name: "s25", arg: 8, scope: !1613, file: !1614, line: 160, type: !7)
!1625 = !DILocalVariable(name: "s26", arg: 9, scope: !1613, file: !1614, line: 160, type: !7)
!1626 = !DILocalVariable(name: "s27", arg: 10, scope: !1613, file: !1614, line: 160, type: !7)
!1627 = !DILocalVariable(name: "s28", arg: 11, scope: !1613, file: !1614, line: 160, type: !7)
!1628 = !DILocation(line: 0, scope: !1613, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 234, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1598, file: !54, line: 234, column: 7)
!1631 = !DILocation(line: 162, column: 7, scope: !1632, inlinedAt: !1629)
!1632 = distinct !DILexicalBlock(scope: !1613, file: !1614, line: 162, column: 7)
!1633 = !DILocalVariable(name: "s1", arg: 1, scope: !1634, file: !1614, line: 146, type: !17)
!1634 = distinct !DISubprogram(name: "strcaseeq1", scope: !1614, file: !1614, line: 146, type: !1635, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1637 = !{!1633, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646}
!1638 = !DILocalVariable(name: "s2", arg: 2, scope: !1634, file: !1614, line: 146, type: !17)
!1639 = !DILocalVariable(name: "s21", arg: 3, scope: !1634, file: !1614, line: 146, type: !7)
!1640 = !DILocalVariable(name: "s22", arg: 4, scope: !1634, file: !1614, line: 146, type: !7)
!1641 = !DILocalVariable(name: "s23", arg: 5, scope: !1634, file: !1614, line: 146, type: !7)
!1642 = !DILocalVariable(name: "s24", arg: 6, scope: !1634, file: !1614, line: 146, type: !7)
!1643 = !DILocalVariable(name: "s25", arg: 7, scope: !1634, file: !1614, line: 146, type: !7)
!1644 = !DILocalVariable(name: "s26", arg: 8, scope: !1634, file: !1614, line: 146, type: !7)
!1645 = !DILocalVariable(name: "s27", arg: 9, scope: !1634, file: !1614, line: 146, type: !7)
!1646 = !DILocalVariable(name: "s28", arg: 10, scope: !1634, file: !1614, line: 146, type: !7)
!1647 = !DILocation(line: 0, scope: !1634, inlinedAt: !1648)
!1648 = distinct !DILocation(line: 167, column: 16, scope: !1649, inlinedAt: !1629)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !1614, line: 164, column: 11)
!1650 = distinct !DILexicalBlock(scope: !1632, file: !1614, line: 163, column: 5)
!1651 = !DILocation(line: 148, column: 7, scope: !1652, inlinedAt: !1648)
!1652 = distinct !DILexicalBlock(scope: !1634, file: !1614, line: 148, column: 7)
!1653 = !DILocalVariable(name: "s1", arg: 1, scope: !1654, file: !1614, line: 132, type: !17)
!1654 = distinct !DISubprogram(name: "strcaseeq2", scope: !1614, file: !1614, line: 132, type: !1655, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1657 = !{!1653, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1658 = !DILocalVariable(name: "s2", arg: 2, scope: !1654, file: !1614, line: 132, type: !17)
!1659 = !DILocalVariable(name: "s22", arg: 3, scope: !1654, file: !1614, line: 132, type: !7)
!1660 = !DILocalVariable(name: "s23", arg: 4, scope: !1654, file: !1614, line: 132, type: !7)
!1661 = !DILocalVariable(name: "s24", arg: 5, scope: !1654, file: !1614, line: 132, type: !7)
!1662 = !DILocalVariable(name: "s25", arg: 6, scope: !1654, file: !1614, line: 132, type: !7)
!1663 = !DILocalVariable(name: "s26", arg: 7, scope: !1654, file: !1614, line: 132, type: !7)
!1664 = !DILocalVariable(name: "s27", arg: 8, scope: !1654, file: !1614, line: 132, type: !7)
!1665 = !DILocalVariable(name: "s28", arg: 9, scope: !1654, file: !1614, line: 132, type: !7)
!1666 = !DILocation(line: 0, scope: !1654, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 153, column: 16, scope: !1668, inlinedAt: !1648)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !1614, line: 150, column: 11)
!1669 = distinct !DILexicalBlock(scope: !1652, file: !1614, line: 149, column: 5)
!1670 = !DILocation(line: 134, column: 7, scope: !1671, inlinedAt: !1667)
!1671 = distinct !DILexicalBlock(scope: !1654, file: !1614, line: 134, column: 7)
!1672 = !DILocalVariable(name: "s1", arg: 1, scope: !1673, file: !1614, line: 118, type: !17)
!1673 = distinct !DISubprogram(name: "strcaseeq3", scope: !1614, file: !1614, line: 118, type: !1674, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7}
!1676 = !{!1672, !1677, !1678, !1679, !1680, !1681, !1682, !1683}
!1677 = !DILocalVariable(name: "s2", arg: 2, scope: !1673, file: !1614, line: 118, type: !17)
!1678 = !DILocalVariable(name: "s23", arg: 3, scope: !1673, file: !1614, line: 118, type: !7)
!1679 = !DILocalVariable(name: "s24", arg: 4, scope: !1673, file: !1614, line: 118, type: !7)
!1680 = !DILocalVariable(name: "s25", arg: 5, scope: !1673, file: !1614, line: 118, type: !7)
!1681 = !DILocalVariable(name: "s26", arg: 6, scope: !1673, file: !1614, line: 118, type: !7)
!1682 = !DILocalVariable(name: "s27", arg: 7, scope: !1673, file: !1614, line: 118, type: !7)
!1683 = !DILocalVariable(name: "s28", arg: 8, scope: !1673, file: !1614, line: 118, type: !7)
!1684 = !DILocation(line: 0, scope: !1673, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 139, column: 16, scope: !1686, inlinedAt: !1667)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !1614, line: 136, column: 11)
!1687 = distinct !DILexicalBlock(scope: !1671, file: !1614, line: 135, column: 5)
!1688 = !DILocation(line: 120, column: 7, scope: !1689, inlinedAt: !1685)
!1689 = distinct !DILexicalBlock(scope: !1673, file: !1614, line: 120, column: 7)
!1690 = !DILocation(line: 120, column: 7, scope: !1673, inlinedAt: !1685)
!1691 = !DILocalVariable(name: "s1", arg: 1, scope: !1692, file: !1614, line: 104, type: !17)
!1692 = distinct !DISubprogram(name: "strcaseeq4", scope: !1614, file: !1614, line: 104, type: !1693, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!20, !17, !17, !7, !7, !7, !7, !7}
!1695 = !{!1691, !1696, !1697, !1698, !1699, !1700, !1701}
!1696 = !DILocalVariable(name: "s2", arg: 2, scope: !1692, file: !1614, line: 104, type: !17)
!1697 = !DILocalVariable(name: "s24", arg: 3, scope: !1692, file: !1614, line: 104, type: !7)
!1698 = !DILocalVariable(name: "s25", arg: 4, scope: !1692, file: !1614, line: 104, type: !7)
!1699 = !DILocalVariable(name: "s26", arg: 5, scope: !1692, file: !1614, line: 104, type: !7)
!1700 = !DILocalVariable(name: "s27", arg: 6, scope: !1692, file: !1614, line: 104, type: !7)
!1701 = !DILocalVariable(name: "s28", arg: 7, scope: !1692, file: !1614, line: 104, type: !7)
!1702 = !DILocation(line: 0, scope: !1692, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 125, column: 16, scope: !1704, inlinedAt: !1685)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !1614, line: 122, column: 11)
!1705 = distinct !DILexicalBlock(scope: !1689, file: !1614, line: 121, column: 5)
!1706 = !DILocation(line: 106, column: 7, scope: !1707, inlinedAt: !1703)
!1707 = distinct !DILexicalBlock(scope: !1692, file: !1614, line: 106, column: 7)
!1708 = !DILocation(line: 106, column: 7, scope: !1692, inlinedAt: !1703)
!1709 = !DILocalVariable(name: "s1", arg: 1, scope: !1710, file: !1614, line: 90, type: !17)
!1710 = distinct !DISubprogram(name: "strcaseeq5", scope: !1614, file: !1614, line: 90, type: !1711, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!20, !17, !17, !7, !7, !7, !7}
!1713 = !{!1709, !1714, !1715, !1716, !1717, !1718}
!1714 = !DILocalVariable(name: "s2", arg: 2, scope: !1710, file: !1614, line: 90, type: !17)
!1715 = !DILocalVariable(name: "s25", arg: 3, scope: !1710, file: !1614, line: 90, type: !7)
!1716 = !DILocalVariable(name: "s26", arg: 4, scope: !1710, file: !1614, line: 90, type: !7)
!1717 = !DILocalVariable(name: "s27", arg: 5, scope: !1710, file: !1614, line: 90, type: !7)
!1718 = !DILocalVariable(name: "s28", arg: 6, scope: !1710, file: !1614, line: 90, type: !7)
!1719 = !DILocation(line: 0, scope: !1710, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 111, column: 16, scope: !1721, inlinedAt: !1703)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !1614, line: 108, column: 11)
!1722 = distinct !DILexicalBlock(scope: !1707, file: !1614, line: 107, column: 5)
!1723 = !DILocation(line: 92, column: 7, scope: !1724, inlinedAt: !1720)
!1724 = distinct !DILexicalBlock(scope: !1710, file: !1614, line: 92, column: 7)
!1725 = !DILocation(line: 92, column: 7, scope: !1710, inlinedAt: !1720)
!1726 = !DILocation(line: 235, column: 12, scope: !1630)
!1727 = !DILocation(line: 235, column: 21, scope: !1630)
!1728 = !DILocation(line: 235, column: 5, scope: !1630)
!1729 = !DILocation(line: 0, scope: !1634, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 167, column: 16, scope: !1649, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 236, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1598, file: !54, line: 236, column: 7)
!1733 = !DILocation(line: 148, column: 7, scope: !1652, inlinedAt: !1730)
!1734 = !DILocation(line: 0, scope: !1654, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 153, column: 16, scope: !1668, inlinedAt: !1730)
!1736 = !DILocation(line: 134, column: 7, scope: !1671, inlinedAt: !1735)
!1737 = !DILocation(line: 134, column: 7, scope: !1654, inlinedAt: !1735)
!1738 = !DILocation(line: 0, scope: !1673, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 139, column: 16, scope: !1686, inlinedAt: !1735)
!1740 = !DILocation(line: 120, column: 7, scope: !1689, inlinedAt: !1739)
!1741 = !DILocation(line: 120, column: 7, scope: !1673, inlinedAt: !1739)
!1742 = !DILocation(line: 0, scope: !1692, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 125, column: 16, scope: !1704, inlinedAt: !1739)
!1744 = !DILocation(line: 106, column: 7, scope: !1707, inlinedAt: !1743)
!1745 = !DILocation(line: 106, column: 7, scope: !1692, inlinedAt: !1743)
!1746 = !DILocation(line: 0, scope: !1710, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 111, column: 16, scope: !1721, inlinedAt: !1743)
!1748 = !DILocation(line: 92, column: 7, scope: !1724, inlinedAt: !1747)
!1749 = !DILocation(line: 92, column: 7, scope: !1710, inlinedAt: !1747)
!1750 = !DILocalVariable(name: "s1", arg: 1, scope: !1751, file: !1614, line: 76, type: !17)
!1751 = distinct !DISubprogram(name: "strcaseeq6", scope: !1614, file: !1614, line: 76, type: !1752, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!20, !17, !17, !7, !7, !7}
!1754 = !{!1750, !1755, !1756, !1757, !1758}
!1755 = !DILocalVariable(name: "s2", arg: 2, scope: !1751, file: !1614, line: 76, type: !17)
!1756 = !DILocalVariable(name: "s26", arg: 3, scope: !1751, file: !1614, line: 76, type: !7)
!1757 = !DILocalVariable(name: "s27", arg: 4, scope: !1751, file: !1614, line: 76, type: !7)
!1758 = !DILocalVariable(name: "s28", arg: 5, scope: !1751, file: !1614, line: 76, type: !7)
!1759 = !DILocation(line: 0, scope: !1751, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 97, column: 16, scope: !1761, inlinedAt: !1747)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !1614, line: 94, column: 11)
!1762 = distinct !DILexicalBlock(scope: !1724, file: !1614, line: 93, column: 5)
!1763 = !DILocation(line: 78, column: 7, scope: !1764, inlinedAt: !1760)
!1764 = distinct !DILexicalBlock(scope: !1751, file: !1614, line: 78, column: 7)
!1765 = !DILocation(line: 78, column: 7, scope: !1751, inlinedAt: !1760)
!1766 = !DILocalVariable(name: "s1", arg: 1, scope: !1767, file: !1614, line: 62, type: !17)
!1767 = distinct !DISubprogram(name: "strcaseeq7", scope: !1614, file: !1614, line: 62, type: !1768, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!20, !17, !17, !7, !7}
!1770 = !{!1766, !1771, !1772, !1773}
!1771 = !DILocalVariable(name: "s2", arg: 2, scope: !1767, file: !1614, line: 62, type: !17)
!1772 = !DILocalVariable(name: "s27", arg: 3, scope: !1767, file: !1614, line: 62, type: !7)
!1773 = !DILocalVariable(name: "s28", arg: 4, scope: !1767, file: !1614, line: 62, type: !7)
!1774 = !DILocation(line: 0, scope: !1767, inlinedAt: !1775)
!1775 = distinct !DILocation(line: 83, column: 16, scope: !1776, inlinedAt: !1760)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !1614, line: 80, column: 11)
!1777 = distinct !DILexicalBlock(scope: !1764, file: !1614, line: 79, column: 5)
!1778 = !DILocation(line: 64, column: 7, scope: !1779, inlinedAt: !1775)
!1779 = distinct !DILexicalBlock(scope: !1767, file: !1614, line: 64, column: 7)
!1780 = !DILocation(line: 236, column: 7, scope: !1598)
!1781 = !DILocation(line: 237, column: 12, scope: !1732)
!1782 = !DILocation(line: 237, column: 21, scope: !1732)
!1783 = !DILocation(line: 237, column: 5, scope: !1732)
!1784 = !DILocation(line: 239, column: 13, scope: !1598)
!1785 = !DILocation(line: 239, column: 11, scope: !1598)
!1786 = !DILocation(line: 239, column: 3, scope: !1598)
!1787 = !DILocation(line: 240, column: 1, scope: !1598)
!1788 = !DISubprogram(name: "iswprint", scope: !1789, file: !1789, line: 120, type: !1790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1789 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!20, !58}
!1792 = !DISubprogram(name: "mbsinit", scope: !1793, file: !1793, line: 292, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1793 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!20, !1796}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1798 = distinct !DISubprogram(name: "quotearg_alloc", scope: !54, file: !54, line: 799, type: !1799, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!6, !17, !93, !962}
!1801 = !{!1802, !1803, !1804}
!1802 = !DILocalVariable(name: "arg", arg: 1, scope: !1798, file: !54, line: 799, type: !17)
!1803 = !DILocalVariable(name: "argsize", arg: 2, scope: !1798, file: !54, line: 799, type: !93)
!1804 = !DILocalVariable(name: "o", arg: 3, scope: !1798, file: !54, line: 800, type: !962)
!1805 = !DILocation(line: 0, scope: !1798)
!1806 = !DILocalVariable(name: "arg", arg: 1, scope: !1807, file: !54, line: 812, type: !17)
!1807 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !54, file: !54, line: 812, type: !1808, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!6, !17, !93, !158, !962}
!1810 = !{!1806, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1811 = !DILocalVariable(name: "argsize", arg: 2, scope: !1807, file: !54, line: 812, type: !93)
!1812 = !DILocalVariable(name: "size", arg: 3, scope: !1807, file: !54, line: 812, type: !158)
!1813 = !DILocalVariable(name: "o", arg: 4, scope: !1807, file: !54, line: 813, type: !962)
!1814 = !DILocalVariable(name: "p", scope: !1807, file: !54, line: 815, type: !962)
!1815 = !DILocalVariable(name: "e", scope: !1807, file: !54, line: 816, type: !20)
!1816 = !DILocalVariable(name: "flags", scope: !1807, file: !54, line: 818, type: !20)
!1817 = !DILocalVariable(name: "bufsize", scope: !1807, file: !54, line: 819, type: !93)
!1818 = !DILocalVariable(name: "buf", scope: !1807, file: !54, line: 823, type: !6)
!1819 = !DILocation(line: 0, scope: !1807, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 802, column: 10, scope: !1798)
!1821 = !DILocation(line: 815, column: 37, scope: !1807, inlinedAt: !1820)
!1822 = !DILocation(line: 816, column: 11, scope: !1807, inlinedAt: !1820)
!1823 = !DILocation(line: 818, column: 18, scope: !1807, inlinedAt: !1820)
!1824 = !DILocation(line: 818, column: 24, scope: !1807, inlinedAt: !1820)
!1825 = !DILocation(line: 819, column: 69, scope: !1807, inlinedAt: !1820)
!1826 = !DILocation(line: 820, column: 53, scope: !1807, inlinedAt: !1820)
!1827 = !DILocation(line: 821, column: 49, scope: !1807, inlinedAt: !1820)
!1828 = !DILocation(line: 822, column: 49, scope: !1807, inlinedAt: !1820)
!1829 = !DILocation(line: 819, column: 20, scope: !1807, inlinedAt: !1820)
!1830 = !DILocation(line: 822, column: 62, scope: !1807, inlinedAt: !1820)
!1831 = !DILocalVariable(name: "n", arg: 1, scope: !1832, file: !154, line: 216, type: !93)
!1832 = distinct !DISubprogram(name: "xcharalloc", scope: !154, file: !154, line: 216, type: !1833, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!6, !93}
!1835 = !{!1831}
!1836 = !DILocation(line: 0, scope: !1832, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 823, column: 15, scope: !1807, inlinedAt: !1820)
!1838 = !DILocation(line: 218, column: 10, scope: !1832, inlinedAt: !1837)
!1839 = !DILocation(line: 824, column: 60, scope: !1807, inlinedAt: !1820)
!1840 = !DILocation(line: 826, column: 32, scope: !1807, inlinedAt: !1820)
!1841 = !DILocation(line: 826, column: 47, scope: !1807, inlinedAt: !1820)
!1842 = !DILocation(line: 824, column: 3, scope: !1807, inlinedAt: !1820)
!1843 = !DILocation(line: 827, column: 9, scope: !1807, inlinedAt: !1820)
!1844 = !DILocation(line: 802, column: 3, scope: !1798)
!1845 = !DILocation(line: 0, scope: !1807)
!1846 = !DILocation(line: 815, column: 37, scope: !1807)
!1847 = !DILocation(line: 816, column: 11, scope: !1807)
!1848 = !DILocation(line: 818, column: 18, scope: !1807)
!1849 = !DILocation(line: 818, column: 27, scope: !1807)
!1850 = !DILocation(line: 818, column: 24, scope: !1807)
!1851 = !DILocation(line: 819, column: 69, scope: !1807)
!1852 = !DILocation(line: 820, column: 53, scope: !1807)
!1853 = !DILocation(line: 821, column: 49, scope: !1807)
!1854 = !DILocation(line: 822, column: 49, scope: !1807)
!1855 = !DILocation(line: 819, column: 20, scope: !1807)
!1856 = !DILocation(line: 822, column: 62, scope: !1807)
!1857 = !DILocation(line: 0, scope: !1832, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 823, column: 15, scope: !1807)
!1859 = !DILocation(line: 218, column: 10, scope: !1832, inlinedAt: !1858)
!1860 = !DILocation(line: 824, column: 60, scope: !1807)
!1861 = !DILocation(line: 826, column: 32, scope: !1807)
!1862 = !DILocation(line: 826, column: 47, scope: !1807)
!1863 = !DILocation(line: 824, column: 3, scope: !1807)
!1864 = !DILocation(line: 827, column: 9, scope: !1807)
!1865 = !DILocation(line: 828, column: 7, scope: !1807)
!1866 = !DILocation(line: 829, column: 11, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1807, file: !54, line: 828, column: 7)
!1868 = !{!1869, !1869, i64 0}
!1869 = !{!"long", !594, i64 0}
!1870 = !DILocation(line: 829, column: 5, scope: !1867)
!1871 = !DILocation(line: 830, column: 3, scope: !1807)
!1872 = distinct !DISubprogram(name: "quotearg_free", scope: !54, file: !54, line: 848, type: !602, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1873)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "sv", scope: !1872, file: !54, line: 850, type: !122)
!1875 = !DILocalVariable(name: "i", scope: !1872, file: !54, line: 851, type: !20)
!1876 = !DILocation(line: 850, column: 24, scope: !1872)
!1877 = !DILocation(line: 0, scope: !1872)
!1878 = !DILocation(line: 852, column: 19, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !54, line: 852, column: 3)
!1880 = distinct !DILexicalBlock(scope: !1872, file: !54, line: 852, column: 3)
!1881 = !DILocation(line: 852, column: 17, scope: !1879)
!1882 = !DILocation(line: 852, column: 3, scope: !1880)
!1883 = !DILocation(line: 853, column: 17, scope: !1879)
!1884 = !{!1885, !593, i64 8}
!1885 = !{!"slotvec", !1869, i64 0, !593, i64 8}
!1886 = !DILocation(line: 853, column: 5, scope: !1879)
!1887 = !DILocation(line: 852, column: 28, scope: !1879)
!1888 = distinct !{!1888, !1882, !1889, !640}
!1889 = !DILocation(line: 853, column: 20, scope: !1880)
!1890 = !DILocation(line: 854, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1872, file: !54, line: 854, column: 7)
!1892 = !DILocation(line: 854, column: 17, scope: !1891)
!1893 = !DILocation(line: 854, column: 7, scope: !1872)
!1894 = !DILocation(line: 856, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !54, line: 855, column: 5)
!1896 = !DILocation(line: 857, column: 21, scope: !1895)
!1897 = !{!1885, !1869, i64 0}
!1898 = !DILocation(line: 858, column: 20, scope: !1895)
!1899 = !DILocation(line: 859, column: 5, scope: !1895)
!1900 = !DILocation(line: 860, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1872, file: !54, line: 860, column: 7)
!1902 = !DILocation(line: 860, column: 7, scope: !1872)
!1903 = !DILocation(line: 862, column: 13, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !54, line: 861, column: 5)
!1905 = !DILocation(line: 862, column: 7, scope: !1904)
!1906 = !DILocation(line: 863, column: 15, scope: !1904)
!1907 = !DILocation(line: 864, column: 5, scope: !1904)
!1908 = !DILocation(line: 865, column: 10, scope: !1872)
!1909 = !DILocation(line: 866, column: 1, scope: !1872)
!1910 = distinct !DISubprogram(name: "quotearg_n", scope: !54, file: !54, line: 931, type: !722, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1911)
!1911 = !{!1912, !1913}
!1912 = !DILocalVariable(name: "n", arg: 1, scope: !1910, file: !54, line: 931, type: !20)
!1913 = !DILocalVariable(name: "arg", arg: 2, scope: !1910, file: !54, line: 931, type: !17)
!1914 = !DILocation(line: 0, scope: !1910)
!1915 = !DILocation(line: 933, column: 10, scope: !1910)
!1916 = !DILocation(line: 933, column: 3, scope: !1910)
!1917 = distinct !DISubprogram(name: "quotearg_n_options", scope: !54, file: !54, line: 877, type: !1918, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!6, !20, !17, !93, !962}
!1920 = !{!1921, !1922, !1923, !1924, !1925, !1926, !1927, !1930, !1931, !1933, !1934, !1935}
!1921 = !DILocalVariable(name: "n", arg: 1, scope: !1917, file: !54, line: 877, type: !20)
!1922 = !DILocalVariable(name: "arg", arg: 2, scope: !1917, file: !54, line: 877, type: !17)
!1923 = !DILocalVariable(name: "argsize", arg: 3, scope: !1917, file: !54, line: 877, type: !93)
!1924 = !DILocalVariable(name: "options", arg: 4, scope: !1917, file: !54, line: 878, type: !962)
!1925 = !DILocalVariable(name: "e", scope: !1917, file: !54, line: 880, type: !20)
!1926 = !DILocalVariable(name: "sv", scope: !1917, file: !54, line: 882, type: !122)
!1927 = !DILocalVariable(name: "preallocated", scope: !1928, file: !54, line: 889, type: !38)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !54, line: 888, column: 5)
!1929 = distinct !DILexicalBlock(scope: !1917, file: !54, line: 887, column: 7)
!1930 = !DILocalVariable(name: "nmax", scope: !1928, file: !54, line: 890, type: !20)
!1931 = !DILocalVariable(name: "size", scope: !1932, file: !54, line: 903, type: !93)
!1932 = distinct !DILexicalBlock(scope: !1917, file: !54, line: 902, column: 3)
!1933 = !DILocalVariable(name: "val", scope: !1932, file: !54, line: 904, type: !6)
!1934 = !DILocalVariable(name: "flags", scope: !1932, file: !54, line: 906, type: !20)
!1935 = !DILocalVariable(name: "qsize", scope: !1932, file: !54, line: 907, type: !93)
!1936 = !DILocation(line: 0, scope: !1917)
!1937 = !DILocation(line: 880, column: 11, scope: !1917)
!1938 = !DILocation(line: 882, column: 24, scope: !1917)
!1939 = !DILocation(line: 884, column: 9, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1917, file: !54, line: 884, column: 7)
!1941 = !DILocation(line: 884, column: 7, scope: !1917)
!1942 = !DILocation(line: 885, column: 5, scope: !1940)
!1943 = !DILocation(line: 887, column: 7, scope: !1929)
!1944 = !DILocation(line: 887, column: 14, scope: !1929)
!1945 = !DILocation(line: 887, column: 7, scope: !1917)
!1946 = !DILocation(line: 889, column: 31, scope: !1928)
!1947 = !DILocation(line: 0, scope: !1928)
!1948 = !DILocation(line: 892, column: 16, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1928, file: !54, line: 892, column: 11)
!1950 = !DILocation(line: 892, column: 11, scope: !1928)
!1951 = !DILocation(line: 893, column: 9, scope: !1949)
!1952 = !DILocation(line: 895, column: 32, scope: !1928)
!1953 = !DILocation(line: 895, column: 61, scope: !1928)
!1954 = !DILocation(line: 895, column: 66, scope: !1928)
!1955 = !DILocation(line: 895, column: 22, scope: !1928)
!1956 = !DILocation(line: 895, column: 15, scope: !1928)
!1957 = !DILocation(line: 896, column: 11, scope: !1928)
!1958 = !DILocation(line: 897, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1928, file: !54, line: 896, column: 11)
!1960 = !{i64 0, i64 8, !1868, i64 8, i64 8, !592}
!1961 = !DILocation(line: 897, column: 9, scope: !1959)
!1962 = !DILocation(line: 898, column: 20, scope: !1928)
!1963 = !DILocation(line: 898, column: 18, scope: !1928)
!1964 = !DILocation(line: 898, column: 15, scope: !1928)
!1965 = !DILocation(line: 898, column: 38, scope: !1928)
!1966 = !DILocation(line: 898, column: 31, scope: !1928)
!1967 = !DILocation(line: 898, column: 48, scope: !1928)
!1968 = !DILocation(line: 0, scope: !1359, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 898, column: 7, scope: !1928)
!1970 = !DILocation(line: 59, column: 10, scope: !1359, inlinedAt: !1969)
!1971 = !DILocation(line: 899, column: 14, scope: !1928)
!1972 = !DILocation(line: 900, column: 5, scope: !1928)
!1973 = !DILocation(line: 903, column: 19, scope: !1932)
!1974 = !DILocation(line: 903, column: 25, scope: !1932)
!1975 = !DILocation(line: 0, scope: !1932)
!1976 = !DILocation(line: 904, column: 23, scope: !1932)
!1977 = !DILocation(line: 906, column: 26, scope: !1932)
!1978 = !DILocation(line: 906, column: 32, scope: !1932)
!1979 = !DILocation(line: 908, column: 55, scope: !1932)
!1980 = !DILocation(line: 909, column: 46, scope: !1932)
!1981 = !DILocation(line: 910, column: 55, scope: !1932)
!1982 = !DILocation(line: 911, column: 55, scope: !1932)
!1983 = !DILocation(line: 907, column: 20, scope: !1932)
!1984 = !DILocation(line: 913, column: 14, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1932, file: !54, line: 913, column: 9)
!1986 = !DILocation(line: 913, column: 9, scope: !1932)
!1987 = !DILocation(line: 915, column: 35, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !54, line: 914, column: 7)
!1989 = !DILocation(line: 915, column: 20, scope: !1988)
!1990 = !DILocation(line: 916, column: 17, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !54, line: 916, column: 13)
!1992 = !DILocation(line: 916, column: 13, scope: !1988)
!1993 = !DILocation(line: 917, column: 11, scope: !1991)
!1994 = !DILocation(line: 0, scope: !1832, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 918, column: 27, scope: !1988)
!1996 = !DILocation(line: 218, column: 10, scope: !1832, inlinedAt: !1995)
!1997 = !DILocation(line: 918, column: 19, scope: !1988)
!1998 = !DILocation(line: 919, column: 69, scope: !1988)
!1999 = !DILocation(line: 921, column: 44, scope: !1988)
!2000 = !DILocation(line: 922, column: 44, scope: !1988)
!2001 = !DILocation(line: 919, column: 9, scope: !1988)
!2002 = !DILocation(line: 923, column: 7, scope: !1988)
!2003 = !DILocation(line: 925, column: 11, scope: !1932)
!2004 = !DILocation(line: 926, column: 5, scope: !1932)
!2005 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !54, file: !54, line: 937, type: !2006, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!6, !20, !17, !93}
!2008 = !{!2009, !2010, !2011}
!2009 = !DILocalVariable(name: "n", arg: 1, scope: !2005, file: !54, line: 937, type: !20)
!2010 = !DILocalVariable(name: "arg", arg: 2, scope: !2005, file: !54, line: 937, type: !17)
!2011 = !DILocalVariable(name: "argsize", arg: 3, scope: !2005, file: !54, line: 937, type: !93)
!2012 = !DILocation(line: 0, scope: !2005)
!2013 = !DILocation(line: 939, column: 10, scope: !2005)
!2014 = !DILocation(line: 939, column: 3, scope: !2005)
!2015 = distinct !DISubprogram(name: "quotearg", scope: !54, file: !54, line: 943, type: !842, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2016)
!2016 = !{!2017}
!2017 = !DILocalVariable(name: "arg", arg: 1, scope: !2015, file: !54, line: 943, type: !17)
!2018 = !DILocation(line: 0, scope: !2015)
!2019 = !DILocation(line: 0, scope: !1910, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 945, column: 10, scope: !2015)
!2021 = !DILocation(line: 933, column: 10, scope: !1910, inlinedAt: !2020)
!2022 = !DILocation(line: 945, column: 3, scope: !2015)
!2023 = distinct !DISubprogram(name: "quotearg_mem", scope: !54, file: !54, line: 949, type: !2024, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!6, !17, !93}
!2026 = !{!2027, !2028}
!2027 = !DILocalVariable(name: "arg", arg: 1, scope: !2023, file: !54, line: 949, type: !17)
!2028 = !DILocalVariable(name: "argsize", arg: 2, scope: !2023, file: !54, line: 949, type: !93)
!2029 = !DILocation(line: 0, scope: !2023)
!2030 = !DILocation(line: 0, scope: !2005, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 951, column: 10, scope: !2023)
!2032 = !DILocation(line: 939, column: 10, scope: !2005, inlinedAt: !2031)
!2033 = !DILocation(line: 951, column: 3, scope: !2023)
!2034 = distinct !DISubprogram(name: "quotearg_n_style", scope: !54, file: !54, line: 955, type: !2035, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!6, !20, !56, !17}
!2037 = !{!2038, !2039, !2040, !2041}
!2038 = !DILocalVariable(name: "n", arg: 1, scope: !2034, file: !54, line: 955, type: !20)
!2039 = !DILocalVariable(name: "s", arg: 2, scope: !2034, file: !54, line: 955, type: !56)
!2040 = !DILocalVariable(name: "arg", arg: 3, scope: !2034, file: !54, line: 955, type: !17)
!2041 = !DILocalVariable(name: "o", scope: !2034, file: !54, line: 957, type: !963)
!2042 = !DILocation(line: 0, scope: !2034)
!2043 = !DILocation(line: 957, column: 3, scope: !2034)
!2044 = !DILocation(line: 957, column: 32, scope: !2034)
!2045 = !{!2046}
!2046 = distinct !{!2046, !2047, !"quoting_options_from_style: argument 0"}
!2047 = distinct !{!2047, !"quoting_options_from_style"}
!2048 = !DILocation(line: 957, column: 36, scope: !2034)
!2049 = !DILocalVariable(name: "style", arg: 1, scope: !2050, file: !54, line: 193, type: !56)
!2050 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !54, file: !54, line: 193, type: !2051, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!105, !56}
!2053 = !{!2049, !2054}
!2054 = !DILocalVariable(name: "o", scope: !2050, file: !54, line: 195, type: !105)
!2055 = !DILocation(line: 0, scope: !2050, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 957, column: 36, scope: !2034)
!2057 = !DILocation(line: 195, column: 26, scope: !2050, inlinedAt: !2056)
!2058 = !DILocation(line: 196, column: 13, scope: !2059, inlinedAt: !2056)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !54, line: 196, column: 7)
!2060 = !DILocation(line: 196, column: 7, scope: !2050, inlinedAt: !2056)
!2061 = !DILocation(line: 197, column: 5, scope: !2059, inlinedAt: !2056)
!2062 = !DILocation(line: 198, column: 5, scope: !2050, inlinedAt: !2056)
!2063 = !DILocation(line: 198, column: 11, scope: !2050, inlinedAt: !2056)
!2064 = !DILocation(line: 958, column: 10, scope: !2034)
!2065 = !DILocation(line: 959, column: 1, scope: !2034)
!2066 = !DILocation(line: 958, column: 3, scope: !2034)
!2067 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !54, file: !54, line: 962, type: !2068, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!6, !20, !56, !17, !93}
!2070 = !{!2071, !2072, !2073, !2074, !2075}
!2071 = !DILocalVariable(name: "n", arg: 1, scope: !2067, file: !54, line: 962, type: !20)
!2072 = !DILocalVariable(name: "s", arg: 2, scope: !2067, file: !54, line: 962, type: !56)
!2073 = !DILocalVariable(name: "arg", arg: 3, scope: !2067, file: !54, line: 963, type: !17)
!2074 = !DILocalVariable(name: "argsize", arg: 4, scope: !2067, file: !54, line: 963, type: !93)
!2075 = !DILocalVariable(name: "o", scope: !2067, file: !54, line: 965, type: !963)
!2076 = !DILocation(line: 0, scope: !2067)
!2077 = !DILocation(line: 965, column: 3, scope: !2067)
!2078 = !DILocation(line: 965, column: 32, scope: !2067)
!2079 = !{!2080}
!2080 = distinct !{!2080, !2081, !"quoting_options_from_style: argument 0"}
!2081 = distinct !{!2081, !"quoting_options_from_style"}
!2082 = !DILocation(line: 965, column: 36, scope: !2067)
!2083 = !DILocation(line: 0, scope: !2050, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 965, column: 36, scope: !2067)
!2085 = !DILocation(line: 195, column: 26, scope: !2050, inlinedAt: !2084)
!2086 = !DILocation(line: 196, column: 13, scope: !2059, inlinedAt: !2084)
!2087 = !DILocation(line: 196, column: 7, scope: !2050, inlinedAt: !2084)
!2088 = !DILocation(line: 197, column: 5, scope: !2059, inlinedAt: !2084)
!2089 = !DILocation(line: 198, column: 5, scope: !2050, inlinedAt: !2084)
!2090 = !DILocation(line: 198, column: 11, scope: !2050, inlinedAt: !2084)
!2091 = !DILocation(line: 966, column: 10, scope: !2067)
!2092 = !DILocation(line: 967, column: 1, scope: !2067)
!2093 = !DILocation(line: 966, column: 3, scope: !2067)
!2094 = distinct !DISubprogram(name: "quotearg_style", scope: !54, file: !54, line: 970, type: !2095, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!6, !56, !17}
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "s", arg: 1, scope: !2094, file: !54, line: 970, type: !56)
!2099 = !DILocalVariable(name: "arg", arg: 2, scope: !2094, file: !54, line: 970, type: !17)
!2100 = !DILocation(line: 0, scope: !2094)
!2101 = !DILocation(line: 0, scope: !2034, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 972, column: 10, scope: !2094)
!2103 = !DILocation(line: 957, column: 3, scope: !2034, inlinedAt: !2102)
!2104 = !DILocation(line: 957, column: 32, scope: !2034, inlinedAt: !2102)
!2105 = !{!2106}
!2106 = distinct !{!2106, !2107, !"quoting_options_from_style: argument 0"}
!2107 = distinct !{!2107, !"quoting_options_from_style"}
!2108 = !DILocation(line: 957, column: 36, scope: !2034, inlinedAt: !2102)
!2109 = !DILocation(line: 0, scope: !2050, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 957, column: 36, scope: !2034, inlinedAt: !2102)
!2111 = !DILocation(line: 195, column: 26, scope: !2050, inlinedAt: !2110)
!2112 = !DILocation(line: 196, column: 13, scope: !2059, inlinedAt: !2110)
!2113 = !DILocation(line: 196, column: 7, scope: !2050, inlinedAt: !2110)
!2114 = !DILocation(line: 197, column: 5, scope: !2059, inlinedAt: !2110)
!2115 = !DILocation(line: 198, column: 5, scope: !2050, inlinedAt: !2110)
!2116 = !DILocation(line: 198, column: 11, scope: !2050, inlinedAt: !2110)
!2117 = !DILocation(line: 958, column: 10, scope: !2034, inlinedAt: !2102)
!2118 = !DILocation(line: 959, column: 1, scope: !2034, inlinedAt: !2102)
!2119 = !DILocation(line: 972, column: 3, scope: !2094)
!2120 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !54, file: !54, line: 976, type: !2121, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!6, !56, !17, !93}
!2123 = !{!2124, !2125, !2126}
!2124 = !DILocalVariable(name: "s", arg: 1, scope: !2120, file: !54, line: 976, type: !56)
!2125 = !DILocalVariable(name: "arg", arg: 2, scope: !2120, file: !54, line: 976, type: !17)
!2126 = !DILocalVariable(name: "argsize", arg: 3, scope: !2120, file: !54, line: 976, type: !93)
!2127 = !DILocation(line: 0, scope: !2120)
!2128 = !DILocation(line: 0, scope: !2067, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 978, column: 10, scope: !2120)
!2130 = !DILocation(line: 965, column: 3, scope: !2067, inlinedAt: !2129)
!2131 = !DILocation(line: 965, column: 32, scope: !2067, inlinedAt: !2129)
!2132 = !{!2133}
!2133 = distinct !{!2133, !2134, !"quoting_options_from_style: argument 0"}
!2134 = distinct !{!2134, !"quoting_options_from_style"}
!2135 = !DILocation(line: 965, column: 36, scope: !2067, inlinedAt: !2129)
!2136 = !DILocation(line: 0, scope: !2050, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 965, column: 36, scope: !2067, inlinedAt: !2129)
!2138 = !DILocation(line: 195, column: 26, scope: !2050, inlinedAt: !2137)
!2139 = !DILocation(line: 196, column: 13, scope: !2059, inlinedAt: !2137)
!2140 = !DILocation(line: 196, column: 7, scope: !2050, inlinedAt: !2137)
!2141 = !DILocation(line: 197, column: 5, scope: !2059, inlinedAt: !2137)
!2142 = !DILocation(line: 198, column: 5, scope: !2050, inlinedAt: !2137)
!2143 = !DILocation(line: 198, column: 11, scope: !2050, inlinedAt: !2137)
!2144 = !DILocation(line: 966, column: 10, scope: !2067, inlinedAt: !2129)
!2145 = !DILocation(line: 967, column: 1, scope: !2067, inlinedAt: !2129)
!2146 = !DILocation(line: 978, column: 3, scope: !2120)
!2147 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !54, file: !54, line: 982, type: !2148, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!6, !17, !93, !7}
!2150 = !{!2151, !2152, !2153, !2154}
!2151 = !DILocalVariable(name: "arg", arg: 1, scope: !2147, file: !54, line: 982, type: !17)
!2152 = !DILocalVariable(name: "argsize", arg: 2, scope: !2147, file: !54, line: 982, type: !93)
!2153 = !DILocalVariable(name: "ch", arg: 3, scope: !2147, file: !54, line: 982, type: !7)
!2154 = !DILocalVariable(name: "options", scope: !2147, file: !54, line: 984, type: !105)
!2155 = !DILocation(line: 0, scope: !2147)
!2156 = !DILocation(line: 984, column: 3, scope: !2147)
!2157 = !DILocation(line: 984, column: 26, scope: !2147)
!2158 = !DILocation(line: 985, column: 13, scope: !2147)
!2159 = !{i64 0, i64 4, !1168, i64 4, i64 4, !763, i64 8, i64 32, !1168, i64 40, i64 8, !592, i64 48, i64 8, !592}
!2160 = !DILocation(line: 0, scope: !983, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 986, column: 3, scope: !2147)
!2162 = !DILocation(line: 156, column: 62, scope: !983, inlinedAt: !2161)
!2163 = !DILocation(line: 156, column: 57, scope: !983, inlinedAt: !2161)
!2164 = !DILocation(line: 157, column: 15, scope: !983, inlinedAt: !2161)
!2165 = !DILocation(line: 158, column: 12, scope: !983, inlinedAt: !2161)
!2166 = !DILocation(line: 158, column: 15, scope: !983, inlinedAt: !2161)
!2167 = !DILocation(line: 158, column: 25, scope: !983, inlinedAt: !2161)
!2168 = !DILocation(line: 159, column: 18, scope: !983, inlinedAt: !2161)
!2169 = !DILocation(line: 159, column: 23, scope: !983, inlinedAt: !2161)
!2170 = !DILocation(line: 159, column: 6, scope: !983, inlinedAt: !2161)
!2171 = !DILocation(line: 987, column: 10, scope: !2147)
!2172 = !DILocation(line: 988, column: 1, scope: !2147)
!2173 = !DILocation(line: 987, column: 3, scope: !2147)
!2174 = distinct !DISubprogram(name: "quotearg_char", scope: !54, file: !54, line: 991, type: !2175, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!6, !17, !7}
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "arg", arg: 1, scope: !2174, file: !54, line: 991, type: !17)
!2179 = !DILocalVariable(name: "ch", arg: 2, scope: !2174, file: !54, line: 991, type: !7)
!2180 = !DILocation(line: 0, scope: !2174)
!2181 = !DILocation(line: 0, scope: !2147, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 993, column: 10, scope: !2174)
!2183 = !DILocation(line: 984, column: 3, scope: !2147, inlinedAt: !2182)
!2184 = !DILocation(line: 984, column: 26, scope: !2147, inlinedAt: !2182)
!2185 = !DILocation(line: 985, column: 13, scope: !2147, inlinedAt: !2182)
!2186 = !DILocation(line: 0, scope: !983, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 986, column: 3, scope: !2147, inlinedAt: !2182)
!2188 = !DILocation(line: 156, column: 62, scope: !983, inlinedAt: !2187)
!2189 = !DILocation(line: 156, column: 57, scope: !983, inlinedAt: !2187)
!2190 = !DILocation(line: 157, column: 15, scope: !983, inlinedAt: !2187)
!2191 = !DILocation(line: 158, column: 12, scope: !983, inlinedAt: !2187)
!2192 = !DILocation(line: 158, column: 15, scope: !983, inlinedAt: !2187)
!2193 = !DILocation(line: 158, column: 25, scope: !983, inlinedAt: !2187)
!2194 = !DILocation(line: 159, column: 18, scope: !983, inlinedAt: !2187)
!2195 = !DILocation(line: 159, column: 23, scope: !983, inlinedAt: !2187)
!2196 = !DILocation(line: 159, column: 6, scope: !983, inlinedAt: !2187)
!2197 = !DILocation(line: 987, column: 10, scope: !2147, inlinedAt: !2182)
!2198 = !DILocation(line: 988, column: 1, scope: !2147, inlinedAt: !2182)
!2199 = !DILocation(line: 993, column: 3, scope: !2174)
!2200 = distinct !DISubprogram(name: "quotearg_colon", scope: !54, file: !54, line: 997, type: !842, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2201)
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "arg", arg: 1, scope: !2200, file: !54, line: 997, type: !17)
!2203 = !DILocation(line: 0, scope: !2200)
!2204 = !DILocation(line: 0, scope: !2174, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 999, column: 10, scope: !2200)
!2206 = !DILocation(line: 0, scope: !2147, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 993, column: 10, scope: !2174, inlinedAt: !2205)
!2208 = !DILocation(line: 984, column: 3, scope: !2147, inlinedAt: !2207)
!2209 = !DILocation(line: 984, column: 26, scope: !2147, inlinedAt: !2207)
!2210 = !DILocation(line: 985, column: 13, scope: !2147, inlinedAt: !2207)
!2211 = !DILocation(line: 0, scope: !983, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 986, column: 3, scope: !2147, inlinedAt: !2207)
!2213 = !DILocation(line: 156, column: 57, scope: !983, inlinedAt: !2212)
!2214 = !DILocation(line: 158, column: 12, scope: !983, inlinedAt: !2212)
!2215 = !DILocation(line: 159, column: 6, scope: !983, inlinedAt: !2212)
!2216 = !DILocation(line: 987, column: 10, scope: !2147, inlinedAt: !2207)
!2217 = !DILocation(line: 988, column: 1, scope: !2147, inlinedAt: !2207)
!2218 = !DILocation(line: 999, column: 3, scope: !2200)
!2219 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !54, file: !54, line: 1003, type: !2024, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2220)
!2220 = !{!2221, !2222}
!2221 = !DILocalVariable(name: "arg", arg: 1, scope: !2219, file: !54, line: 1003, type: !17)
!2222 = !DILocalVariable(name: "argsize", arg: 2, scope: !2219, file: !54, line: 1003, type: !93)
!2223 = !DILocation(line: 0, scope: !2219)
!2224 = !DILocation(line: 0, scope: !2147, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 1005, column: 10, scope: !2219)
!2226 = !DILocation(line: 984, column: 3, scope: !2147, inlinedAt: !2225)
!2227 = !DILocation(line: 984, column: 26, scope: !2147, inlinedAt: !2225)
!2228 = !DILocation(line: 985, column: 13, scope: !2147, inlinedAt: !2225)
!2229 = !DILocation(line: 0, scope: !983, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 986, column: 3, scope: !2147, inlinedAt: !2225)
!2231 = !DILocation(line: 156, column: 57, scope: !983, inlinedAt: !2230)
!2232 = !DILocation(line: 158, column: 12, scope: !983, inlinedAt: !2230)
!2233 = !DILocation(line: 159, column: 6, scope: !983, inlinedAt: !2230)
!2234 = !DILocation(line: 987, column: 10, scope: !2147, inlinedAt: !2225)
!2235 = !DILocation(line: 988, column: 1, scope: !2147, inlinedAt: !2225)
!2236 = !DILocation(line: 1005, column: 3, scope: !2219)
!2237 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !54, file: !54, line: 1009, type: !2035, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2238)
!2238 = !{!2239, !2240, !2241, !2242}
!2239 = !DILocalVariable(name: "n", arg: 1, scope: !2237, file: !54, line: 1009, type: !20)
!2240 = !DILocalVariable(name: "s", arg: 2, scope: !2237, file: !54, line: 1009, type: !56)
!2241 = !DILocalVariable(name: "arg", arg: 3, scope: !2237, file: !54, line: 1009, type: !17)
!2242 = !DILocalVariable(name: "options", scope: !2237, file: !54, line: 1011, type: !105)
!2243 = !DILocation(line: 195, column: 26, scope: !2050, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 1012, column: 13, scope: !2237)
!2245 = !DILocation(line: 0, scope: !2237)
!2246 = !DILocation(line: 1011, column: 3, scope: !2237)
!2247 = !DILocation(line: 1011, column: 26, scope: !2237)
!2248 = !DILocation(line: 1012, column: 13, scope: !2237)
!2249 = !{!2250}
!2250 = distinct !{!2250, !2251, !"quoting_options_from_style: argument 0"}
!2251 = distinct !{!2251, !"quoting_options_from_style"}
!2252 = !DILocation(line: 0, scope: !2050, inlinedAt: !2244)
!2253 = !DILocation(line: 196, column: 13, scope: !2059, inlinedAt: !2244)
!2254 = !DILocation(line: 196, column: 7, scope: !2050, inlinedAt: !2244)
!2255 = !DILocation(line: 197, column: 5, scope: !2059, inlinedAt: !2244)
!2256 = !{i64 0, i64 4, !763, i64 4, i64 32, !1168, i64 36, i64 8, !592, i64 44, i64 8, !592}
!2257 = !DILocation(line: 0, scope: !983, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 1013, column: 3, scope: !2237)
!2259 = !DILocation(line: 156, column: 57, scope: !983, inlinedAt: !2258)
!2260 = !DILocation(line: 158, column: 12, scope: !983, inlinedAt: !2258)
!2261 = !DILocation(line: 159, column: 6, scope: !983, inlinedAt: !2258)
!2262 = !DILocation(line: 1014, column: 10, scope: !2237)
!2263 = !DILocation(line: 1015, column: 1, scope: !2237)
!2264 = !DILocation(line: 1014, column: 3, scope: !2237)
!2265 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !54, file: !54, line: 1018, type: !2266, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!6, !20, !17, !17, !17}
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "n", arg: 1, scope: !2265, file: !54, line: 1018, type: !20)
!2270 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2265, file: !54, line: 1018, type: !17)
!2271 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2265, file: !54, line: 1019, type: !17)
!2272 = !DILocalVariable(name: "arg", arg: 4, scope: !2265, file: !54, line: 1019, type: !17)
!2273 = !DILocation(line: 0, scope: !2265)
!2274 = !DILocalVariable(name: "n", arg: 1, scope: !2275, file: !54, line: 1026, type: !20)
!2275 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !54, file: !54, line: 1026, type: !2276, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!6, !20, !17, !17, !17, !93}
!2278 = !{!2274, !2279, !2280, !2281, !2282, !2283}
!2279 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2275, file: !54, line: 1026, type: !17)
!2280 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2275, file: !54, line: 1027, type: !17)
!2281 = !DILocalVariable(name: "arg", arg: 4, scope: !2275, file: !54, line: 1028, type: !17)
!2282 = !DILocalVariable(name: "argsize", arg: 5, scope: !2275, file: !54, line: 1028, type: !93)
!2283 = !DILocalVariable(name: "o", scope: !2275, file: !54, line: 1030, type: !105)
!2284 = !DILocation(line: 0, scope: !2275, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 1021, column: 10, scope: !2265)
!2286 = !DILocation(line: 1030, column: 3, scope: !2275, inlinedAt: !2285)
!2287 = !DILocation(line: 1030, column: 26, scope: !2275, inlinedAt: !2285)
!2288 = !DILocation(line: 1030, column: 30, scope: !2275, inlinedAt: !2285)
!2289 = !DILocation(line: 0, scope: !1023, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 1031, column: 3, scope: !2275, inlinedAt: !2285)
!2291 = !DILocation(line: 184, column: 6, scope: !1023, inlinedAt: !2290)
!2292 = !DILocation(line: 184, column: 12, scope: !1023, inlinedAt: !2290)
!2293 = !DILocation(line: 185, column: 8, scope: !1037, inlinedAt: !2290)
!2294 = !DILocation(line: 185, column: 19, scope: !1037, inlinedAt: !2290)
!2295 = !DILocation(line: 186, column: 5, scope: !1037, inlinedAt: !2290)
!2296 = !DILocation(line: 187, column: 6, scope: !1023, inlinedAt: !2290)
!2297 = !DILocation(line: 187, column: 17, scope: !1023, inlinedAt: !2290)
!2298 = !DILocation(line: 188, column: 6, scope: !1023, inlinedAt: !2290)
!2299 = !DILocation(line: 188, column: 18, scope: !1023, inlinedAt: !2290)
!2300 = !DILocation(line: 1032, column: 10, scope: !2275, inlinedAt: !2285)
!2301 = !DILocation(line: 1033, column: 1, scope: !2275, inlinedAt: !2285)
!2302 = !DILocation(line: 1021, column: 3, scope: !2265)
!2303 = !DILocation(line: 0, scope: !2275)
!2304 = !DILocation(line: 1030, column: 3, scope: !2275)
!2305 = !DILocation(line: 1030, column: 26, scope: !2275)
!2306 = !DILocation(line: 1030, column: 30, scope: !2275)
!2307 = !DILocation(line: 0, scope: !1023, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 1031, column: 3, scope: !2275)
!2309 = !DILocation(line: 184, column: 6, scope: !1023, inlinedAt: !2308)
!2310 = !DILocation(line: 184, column: 12, scope: !1023, inlinedAt: !2308)
!2311 = !DILocation(line: 185, column: 8, scope: !1037, inlinedAt: !2308)
!2312 = !DILocation(line: 185, column: 19, scope: !1037, inlinedAt: !2308)
!2313 = !DILocation(line: 186, column: 5, scope: !1037, inlinedAt: !2308)
!2314 = !DILocation(line: 187, column: 6, scope: !1023, inlinedAt: !2308)
!2315 = !DILocation(line: 187, column: 17, scope: !1023, inlinedAt: !2308)
!2316 = !DILocation(line: 188, column: 6, scope: !1023, inlinedAt: !2308)
!2317 = !DILocation(line: 188, column: 18, scope: !1023, inlinedAt: !2308)
!2318 = !DILocation(line: 1032, column: 10, scope: !2275)
!2319 = !DILocation(line: 1033, column: 1, scope: !2275)
!2320 = !DILocation(line: 1032, column: 3, scope: !2275)
!2321 = distinct !DISubprogram(name: "quotearg_custom", scope: !54, file: !54, line: 1036, type: !2322, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!6, !17, !17, !17}
!2324 = !{!2325, !2326, !2327}
!2325 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2321, file: !54, line: 1036, type: !17)
!2326 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2321, file: !54, line: 1036, type: !17)
!2327 = !DILocalVariable(name: "arg", arg: 3, scope: !2321, file: !54, line: 1037, type: !17)
!2328 = !DILocation(line: 0, scope: !2321)
!2329 = !DILocation(line: 0, scope: !2265, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 1039, column: 10, scope: !2321)
!2331 = !DILocation(line: 0, scope: !2275, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 1021, column: 10, scope: !2265, inlinedAt: !2330)
!2333 = !DILocation(line: 1030, column: 3, scope: !2275, inlinedAt: !2332)
!2334 = !DILocation(line: 1030, column: 26, scope: !2275, inlinedAt: !2332)
!2335 = !DILocation(line: 1030, column: 30, scope: !2275, inlinedAt: !2332)
!2336 = !DILocation(line: 0, scope: !1023, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 1031, column: 3, scope: !2275, inlinedAt: !2332)
!2338 = !DILocation(line: 184, column: 6, scope: !1023, inlinedAt: !2337)
!2339 = !DILocation(line: 184, column: 12, scope: !1023, inlinedAt: !2337)
!2340 = !DILocation(line: 185, column: 8, scope: !1037, inlinedAt: !2337)
!2341 = !DILocation(line: 185, column: 19, scope: !1037, inlinedAt: !2337)
!2342 = !DILocation(line: 186, column: 5, scope: !1037, inlinedAt: !2337)
!2343 = !DILocation(line: 187, column: 6, scope: !1023, inlinedAt: !2337)
!2344 = !DILocation(line: 187, column: 17, scope: !1023, inlinedAt: !2337)
!2345 = !DILocation(line: 188, column: 6, scope: !1023, inlinedAt: !2337)
!2346 = !DILocation(line: 188, column: 18, scope: !1023, inlinedAt: !2337)
!2347 = !DILocation(line: 1032, column: 10, scope: !2275, inlinedAt: !2332)
!2348 = !DILocation(line: 1033, column: 1, scope: !2275, inlinedAt: !2332)
!2349 = !DILocation(line: 1039, column: 3, scope: !2321)
!2350 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !54, file: !54, line: 1043, type: !2351, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!6, !17, !17, !17, !93}
!2353 = !{!2354, !2355, !2356, !2357}
!2354 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2350, file: !54, line: 1043, type: !17)
!2355 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2350, file: !54, line: 1043, type: !17)
!2356 = !DILocalVariable(name: "arg", arg: 3, scope: !2350, file: !54, line: 1044, type: !17)
!2357 = !DILocalVariable(name: "argsize", arg: 4, scope: !2350, file: !54, line: 1044, type: !93)
!2358 = !DILocation(line: 0, scope: !2350)
!2359 = !DILocation(line: 0, scope: !2275, inlinedAt: !2360)
!2360 = distinct !DILocation(line: 1046, column: 10, scope: !2350)
!2361 = !DILocation(line: 1030, column: 3, scope: !2275, inlinedAt: !2360)
!2362 = !DILocation(line: 1030, column: 26, scope: !2275, inlinedAt: !2360)
!2363 = !DILocation(line: 1030, column: 30, scope: !2275, inlinedAt: !2360)
!2364 = !DILocation(line: 0, scope: !1023, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1031, column: 3, scope: !2275, inlinedAt: !2360)
!2366 = !DILocation(line: 184, column: 6, scope: !1023, inlinedAt: !2365)
!2367 = !DILocation(line: 184, column: 12, scope: !1023, inlinedAt: !2365)
!2368 = !DILocation(line: 185, column: 8, scope: !1037, inlinedAt: !2365)
!2369 = !DILocation(line: 185, column: 19, scope: !1037, inlinedAt: !2365)
!2370 = !DILocation(line: 186, column: 5, scope: !1037, inlinedAt: !2365)
!2371 = !DILocation(line: 187, column: 6, scope: !1023, inlinedAt: !2365)
!2372 = !DILocation(line: 187, column: 17, scope: !1023, inlinedAt: !2365)
!2373 = !DILocation(line: 188, column: 6, scope: !1023, inlinedAt: !2365)
!2374 = !DILocation(line: 188, column: 18, scope: !1023, inlinedAt: !2365)
!2375 = !DILocation(line: 1032, column: 10, scope: !2275, inlinedAt: !2360)
!2376 = !DILocation(line: 1033, column: 1, scope: !2275, inlinedAt: !2360)
!2377 = !DILocation(line: 1046, column: 3, scope: !2350)
!2378 = distinct !DISubprogram(name: "quote_n_mem", scope: !54, file: !54, line: 1061, type: !2379, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!17, !20, !17, !93}
!2381 = !{!2382, !2383, !2384}
!2382 = !DILocalVariable(name: "n", arg: 1, scope: !2378, file: !54, line: 1061, type: !20)
!2383 = !DILocalVariable(name: "arg", arg: 2, scope: !2378, file: !54, line: 1061, type: !17)
!2384 = !DILocalVariable(name: "argsize", arg: 3, scope: !2378, file: !54, line: 1061, type: !93)
!2385 = !DILocation(line: 0, scope: !2378)
!2386 = !DILocation(line: 1063, column: 10, scope: !2378)
!2387 = !DILocation(line: 1063, column: 3, scope: !2378)
!2388 = distinct !DISubprogram(name: "quote_mem", scope: !54, file: !54, line: 1067, type: !2389, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!17, !17, !93}
!2391 = !{!2392, !2393}
!2392 = !DILocalVariable(name: "arg", arg: 1, scope: !2388, file: !54, line: 1067, type: !17)
!2393 = !DILocalVariable(name: "argsize", arg: 2, scope: !2388, file: !54, line: 1067, type: !93)
!2394 = !DILocation(line: 0, scope: !2388)
!2395 = !DILocation(line: 0, scope: !2378, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 1069, column: 10, scope: !2388)
!2397 = !DILocation(line: 1063, column: 10, scope: !2378, inlinedAt: !2396)
!2398 = !DILocation(line: 1069, column: 3, scope: !2388)
!2399 = distinct !DISubprogram(name: "quote_n", scope: !54, file: !54, line: 1073, type: !2400, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!17, !20, !17}
!2402 = !{!2403, !2404}
!2403 = !DILocalVariable(name: "n", arg: 1, scope: !2399, file: !54, line: 1073, type: !20)
!2404 = !DILocalVariable(name: "arg", arg: 2, scope: !2399, file: !54, line: 1073, type: !17)
!2405 = !DILocation(line: 0, scope: !2399)
!2406 = !DILocation(line: 0, scope: !2378, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1075, column: 10, scope: !2399)
!2408 = !DILocation(line: 1063, column: 10, scope: !2378, inlinedAt: !2407)
!2409 = !DILocation(line: 1075, column: 3, scope: !2399)
!2410 = distinct !DISubprogram(name: "quote", scope: !54, file: !54, line: 1079, type: !2411, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!17, !17}
!2413 = !{!2414}
!2414 = !DILocalVariable(name: "arg", arg: 1, scope: !2410, file: !54, line: 1079, type: !17)
!2415 = !DILocation(line: 0, scope: !2410)
!2416 = !DILocation(line: 0, scope: !2399, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 1081, column: 10, scope: !2410)
!2418 = !DILocation(line: 0, scope: !2378, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 1075, column: 10, scope: !2399, inlinedAt: !2417)
!2420 = !DILocation(line: 1063, column: 10, scope: !2378, inlinedAt: !2419)
!2421 = !DILocation(line: 1081, column: 3, scope: !2410)
!2422 = distinct !DISubprogram(name: "version_etc_arn", scope: !144, file: !144, line: 61, type: !2423, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2461)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !2425, !17, !17, !17, !2460, !93}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !2428)
!2427 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2428, file: !670, line: 51, baseType: !20, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2428, file: !670, line: 54, baseType: !6, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2428, file: !670, line: 55, baseType: !6, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2428, file: !670, line: 56, baseType: !6, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2428, file: !670, line: 57, baseType: !6, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2428, file: !670, line: 58, baseType: !6, size: 64, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2428, file: !670, line: 59, baseType: !6, size: 64, offset: 384)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2428, file: !670, line: 60, baseType: !6, size: 64, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2428, file: !670, line: 61, baseType: !6, size: 64, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2428, file: !670, line: 64, baseType: !6, size: 64, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2428, file: !670, line: 65, baseType: !6, size: 64, offset: 640)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2428, file: !670, line: 66, baseType: !6, size: 64, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2428, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2428, file: !670, line: 70, baseType: !2444, size: 64, offset: 832)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2428, file: !670, line: 72, baseType: !20, size: 32, offset: 896)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2428, file: !670, line: 73, baseType: !20, size: 32, offset: 928)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2428, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2428, file: !670, line: 77, baseType: !92, size: 16, offset: 1024)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2428, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2428, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2428, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2428, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2428, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2428, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2428, file: !670, line: 93, baseType: !2444, size: 64, offset: 1344)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2428, file: !670, line: 94, baseType: !8, size: 64, offset: 1408)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2428, file: !670, line: 95, baseType: !93, size: 64, offset: 1472)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2428, file: !670, line: 96, baseType: !20, size: 32, offset: 1536)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2428, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2467}
!2462 = !DILocalVariable(name: "stream", arg: 1, scope: !2422, file: !144, line: 61, type: !2425)
!2463 = !DILocalVariable(name: "command_name", arg: 2, scope: !2422, file: !144, line: 62, type: !17)
!2464 = !DILocalVariable(name: "package", arg: 3, scope: !2422, file: !144, line: 62, type: !17)
!2465 = !DILocalVariable(name: "version", arg: 4, scope: !2422, file: !144, line: 63, type: !17)
!2466 = !DILocalVariable(name: "authors", arg: 5, scope: !2422, file: !144, line: 64, type: !2460)
!2467 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2422, file: !144, line: 64, type: !93)
!2468 = !DILocation(line: 0, scope: !2422)
!2469 = !DILocation(line: 66, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2422, file: !144, line: 66, column: 7)
!2471 = !DILocation(line: 66, column: 7, scope: !2422)
!2472 = !DILocation(line: 67, column: 5, scope: !2470)
!2473 = !DILocation(line: 69, column: 5, scope: !2470)
!2474 = !DILocation(line: 83, column: 3, scope: !2422)
!2475 = !DILocation(line: 85, column: 3, scope: !2422)
!2476 = !DILocation(line: 88, column: 3, scope: !2422)
!2477 = !DILocation(line: 95, column: 3, scope: !2422)
!2478 = !DILocation(line: 97, column: 3, scope: !2422)
!2479 = !DILocation(line: 105, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2422, file: !144, line: 98, column: 5)
!2481 = !DILocation(line: 106, column: 7, scope: !2480)
!2482 = !DILocation(line: 109, column: 7, scope: !2480)
!2483 = !DILocation(line: 110, column: 7, scope: !2480)
!2484 = !DILocation(line: 113, column: 7, scope: !2480)
!2485 = !DILocation(line: 115, column: 7, scope: !2480)
!2486 = !DILocation(line: 120, column: 7, scope: !2480)
!2487 = !DILocation(line: 122, column: 7, scope: !2480)
!2488 = !DILocation(line: 127, column: 7, scope: !2480)
!2489 = !DILocation(line: 129, column: 7, scope: !2480)
!2490 = !DILocation(line: 134, column: 7, scope: !2480)
!2491 = !DILocation(line: 137, column: 7, scope: !2480)
!2492 = !DILocation(line: 142, column: 7, scope: !2480)
!2493 = !DILocation(line: 145, column: 7, scope: !2480)
!2494 = !DILocation(line: 150, column: 7, scope: !2480)
!2495 = !DILocation(line: 154, column: 7, scope: !2480)
!2496 = !DILocation(line: 159, column: 7, scope: !2480)
!2497 = !DILocation(line: 163, column: 7, scope: !2480)
!2498 = !DILocation(line: 170, column: 7, scope: !2480)
!2499 = !DILocation(line: 174, column: 7, scope: !2480)
!2500 = !DILocation(line: 176, column: 1, scope: !2422)
!2501 = distinct !DISubprogram(name: "version_etc_ar", scope: !144, file: !144, line: 183, type: !2502, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !2425, !17, !17, !17, !2460}
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510}
!2505 = !DILocalVariable(name: "stream", arg: 1, scope: !2501, file: !144, line: 183, type: !2425)
!2506 = !DILocalVariable(name: "command_name", arg: 2, scope: !2501, file: !144, line: 184, type: !17)
!2507 = !DILocalVariable(name: "package", arg: 3, scope: !2501, file: !144, line: 184, type: !17)
!2508 = !DILocalVariable(name: "version", arg: 4, scope: !2501, file: !144, line: 185, type: !17)
!2509 = !DILocalVariable(name: "authors", arg: 5, scope: !2501, file: !144, line: 185, type: !2460)
!2510 = !DILocalVariable(name: "n_authors", scope: !2501, file: !144, line: 187, type: !93)
!2511 = !DILocation(line: 0, scope: !2501)
!2512 = !DILocation(line: 189, column: 8, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2501, file: !144, line: 189, column: 3)
!2514 = !DILocation(line: 0, scope: !2513)
!2515 = !DILocation(line: 189, column: 23, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !144, line: 189, column: 3)
!2517 = !DILocation(line: 189, column: 3, scope: !2513)
!2518 = !DILocation(line: 189, column: 52, scope: !2516)
!2519 = distinct !{!2519, !2517, !2520, !640}
!2520 = !DILocation(line: 190, column: 5, scope: !2513)
!2521 = !DILocation(line: 191, column: 3, scope: !2501)
!2522 = !DILocation(line: 192, column: 1, scope: !2501)
!2523 = distinct !DISubprogram(name: "version_etc_va", scope: !144, file: !144, line: 199, type: !2524, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2533)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2425, !17, !17, !17, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2527, file: !144, line: 192, baseType: !58, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2527, file: !144, line: 192, baseType: !58, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2527, file: !144, line: 192, baseType: !8, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2527, file: !144, line: 192, baseType: !8, size: 64, offset: 128)
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2534 = !DILocalVariable(name: "stream", arg: 1, scope: !2523, file: !144, line: 199, type: !2425)
!2535 = !DILocalVariable(name: "command_name", arg: 2, scope: !2523, file: !144, line: 200, type: !17)
!2536 = !DILocalVariable(name: "package", arg: 3, scope: !2523, file: !144, line: 200, type: !17)
!2537 = !DILocalVariable(name: "version", arg: 4, scope: !2523, file: !144, line: 201, type: !17)
!2538 = !DILocalVariable(name: "authors", arg: 5, scope: !2523, file: !144, line: 201, type: !2526)
!2539 = !DILocalVariable(name: "n_authors", scope: !2523, file: !144, line: 203, type: !93)
!2540 = !DILocalVariable(name: "authtab", scope: !2523, file: !144, line: 204, type: !2541)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !101)
!2542 = !DILocation(line: 0, scope: !2523)
!2543 = !DILocation(line: 204, column: 3, scope: !2523)
!2544 = !DILocation(line: 204, column: 15, scope: !2523)
!2545 = !DILocation(line: 208, column: 35, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !144, line: 206, column: 3)
!2547 = distinct !DILexicalBlock(scope: !2523, file: !144, line: 206, column: 3)
!2548 = !DILocation(line: 208, column: 14, scope: !2546)
!2549 = !DILocation(line: 208, column: 33, scope: !2546)
!2550 = !DILocation(line: 208, column: 67, scope: !2546)
!2551 = !DILocation(line: 206, column: 3, scope: !2547)
!2552 = !DILocation(line: 0, scope: !2547)
!2553 = !DILocation(line: 211, column: 3, scope: !2523)
!2554 = !DILocation(line: 213, column: 1, scope: !2523)
!2555 = distinct !DISubprogram(name: "version_etc", scope: !144, file: !144, line: 230, type: !2556, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2425, !17, !17, !17, null}
!2558 = !{!2559, !2560, !2561, !2562, !2563}
!2559 = !DILocalVariable(name: "stream", arg: 1, scope: !2555, file: !144, line: 230, type: !2425)
!2560 = !DILocalVariable(name: "command_name", arg: 2, scope: !2555, file: !144, line: 231, type: !17)
!2561 = !DILocalVariable(name: "package", arg: 3, scope: !2555, file: !144, line: 231, type: !17)
!2562 = !DILocalVariable(name: "version", arg: 4, scope: !2555, file: !144, line: 232, type: !17)
!2563 = !DILocalVariable(name: "authors", scope: !2555, file: !144, line: 234, type: !2564)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !665, line: 52, baseType: !2565)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2566, line: 32, baseType: !2567)
!2566 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !144, baseType: !2568)
!2568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2527, size: 192, elements: !699)
!2569 = !DILocation(line: 0, scope: !2555)
!2570 = !DILocation(line: 234, column: 3, scope: !2555)
!2571 = !DILocation(line: 234, column: 11, scope: !2555)
!2572 = !DILocation(line: 236, column: 3, scope: !2555)
!2573 = !DILocation(line: 237, column: 3, scope: !2555)
!2574 = !DILocation(line: 238, column: 3, scope: !2555)
!2575 = !DILocation(line: 239, column: 1, scope: !2555)
!2576 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !144, file: !144, line: 242, type: !602, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !143, retainedNodes: !4)
!2577 = !DILocation(line: 244, column: 3, scope: !2576)
!2578 = !DILocation(line: 249, column: 3, scope: !2576)
!2579 = !DILocation(line: 255, column: 3, scope: !2576)
!2580 = !DILocation(line: 260, column: 3, scope: !2576)
!2581 = !DILocation(line: 262, column: 1, scope: !2576)
!2582 = distinct !DISubprogram(name: "xnmalloc", scope: !154, file: !154, line: 99, type: !2583, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!8, !93, !93}
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !154, line: 99, type: !93)
!2587 = !DILocalVariable(name: "s", arg: 2, scope: !2582, file: !154, line: 99, type: !93)
!2588 = !DILocation(line: 0, scope: !2582)
!2589 = !DILocation(line: 101, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2582, file: !154, line: 101, column: 7)
!2591 = !DILocation(line: 101, column: 7, scope: !2582)
!2592 = !DILocation(line: 102, column: 5, scope: !2590)
!2593 = !DILocation(line: 103, column: 21, scope: !2582)
!2594 = !DILocalVariable(name: "n", arg: 1, scope: !2595, file: !151, line: 39, type: !93)
!2595 = distinct !DISubprogram(name: "xmalloc", scope: !151, file: !151, line: 39, type: !2596, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!8, !93}
!2598 = !{!2594, !2599}
!2599 = !DILocalVariable(name: "p", scope: !2595, file: !151, line: 41, type: !8)
!2600 = !DILocation(line: 0, scope: !2595, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 103, column: 10, scope: !2582)
!2602 = !DILocation(line: 41, column: 13, scope: !2595, inlinedAt: !2601)
!2603 = !DILocation(line: 42, column: 8, scope: !2604, inlinedAt: !2601)
!2604 = distinct !DILexicalBlock(scope: !2595, file: !151, line: 42, column: 7)
!2605 = !DILocation(line: 42, column: 10, scope: !2604, inlinedAt: !2601)
!2606 = !DILocation(line: 43, column: 5, scope: !2604, inlinedAt: !2601)
!2607 = !DILocation(line: 103, column: 3, scope: !2582)
!2608 = !DILocation(line: 0, scope: !2595)
!2609 = !DILocation(line: 41, column: 13, scope: !2595)
!2610 = !DILocation(line: 42, column: 8, scope: !2604)
!2611 = !DILocation(line: 42, column: 10, scope: !2604)
!2612 = !DILocation(line: 43, column: 5, scope: !2604)
!2613 = !DILocation(line: 44, column: 3, scope: !2595)
!2614 = distinct !DISubprogram(name: "xnrealloc", scope: !154, file: !154, line: 112, type: !2615, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!8, !8, !93, !93}
!2617 = !{!2618, !2619, !2620}
!2618 = !DILocalVariable(name: "p", arg: 1, scope: !2614, file: !154, line: 112, type: !8)
!2619 = !DILocalVariable(name: "n", arg: 2, scope: !2614, file: !154, line: 112, type: !93)
!2620 = !DILocalVariable(name: "s", arg: 3, scope: !2614, file: !154, line: 112, type: !93)
!2621 = !DILocation(line: 0, scope: !2614)
!2622 = !DILocation(line: 114, column: 7, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2614, file: !154, line: 114, column: 7)
!2624 = !DILocation(line: 114, column: 7, scope: !2614)
!2625 = !DILocation(line: 115, column: 5, scope: !2623)
!2626 = !DILocation(line: 116, column: 25, scope: !2614)
!2627 = !DILocalVariable(name: "p", arg: 1, scope: !2628, file: !151, line: 51, type: !8)
!2628 = distinct !DISubprogram(name: "xrealloc", scope: !151, file: !151, line: 51, type: !2629, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!8, !8, !93}
!2631 = !{!2627, !2632}
!2632 = !DILocalVariable(name: "n", arg: 2, scope: !2628, file: !151, line: 51, type: !93)
!2633 = !DILocation(line: 0, scope: !2628, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 116, column: 10, scope: !2614)
!2635 = !DILocation(line: 53, column: 8, scope: !2636, inlinedAt: !2634)
!2636 = distinct !DILexicalBlock(scope: !2628, file: !151, line: 53, column: 7)
!2637 = !DILocation(line: 53, column: 10, scope: !2636, inlinedAt: !2634)
!2638 = !DILocation(line: 57, column: 7, scope: !2639, inlinedAt: !2634)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !151, line: 54, column: 5)
!2640 = !DILocation(line: 58, column: 7, scope: !2639, inlinedAt: !2634)
!2641 = !DILocation(line: 61, column: 7, scope: !2628, inlinedAt: !2634)
!2642 = !DILocation(line: 62, column: 8, scope: !2643, inlinedAt: !2634)
!2643 = distinct !DILexicalBlock(scope: !2628, file: !151, line: 62, column: 7)
!2644 = !DILocation(line: 62, column: 10, scope: !2643, inlinedAt: !2634)
!2645 = !DILocation(line: 63, column: 5, scope: !2643, inlinedAt: !2634)
!2646 = !DILocation(line: 116, column: 3, scope: !2614)
!2647 = !DILocation(line: 0, scope: !2628)
!2648 = !DILocation(line: 53, column: 8, scope: !2636)
!2649 = !DILocation(line: 53, column: 10, scope: !2636)
!2650 = !DILocation(line: 57, column: 7, scope: !2639)
!2651 = !DILocation(line: 58, column: 7, scope: !2639)
!2652 = !DILocation(line: 61, column: 7, scope: !2628)
!2653 = !DILocation(line: 62, column: 8, scope: !2643)
!2654 = !DILocation(line: 62, column: 10, scope: !2643)
!2655 = !DILocation(line: 63, column: 5, scope: !2643)
!2656 = !DILocation(line: 65, column: 1, scope: !2628)
!2657 = !DILocation(line: 0, scope: !155)
!2658 = !DILocation(line: 176, column: 14, scope: !155)
!2659 = !DILocation(line: 178, column: 9, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !155, file: !154, line: 178, column: 7)
!2661 = !DILocation(line: 178, column: 7, scope: !155)
!2662 = !DILocation(line: 180, column: 13, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !154, line: 180, column: 11)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !154, line: 179, column: 5)
!2665 = !DILocation(line: 180, column: 11, scope: !2664)
!2666 = !DILocation(line: 188, column: 30, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !154, line: 181, column: 9)
!2668 = !DILocation(line: 189, column: 16, scope: !2667)
!2669 = !DILocation(line: 189, column: 13, scope: !2667)
!2670 = !DILocation(line: 190, column: 9, scope: !2667)
!2671 = !DILocation(line: 191, column: 11, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2664, file: !154, line: 191, column: 11)
!2673 = !DILocation(line: 191, column: 11, scope: !2664)
!2674 = !DILocation(line: 206, column: 7, scope: !155)
!2675 = !DILocation(line: 207, column: 25, scope: !155)
!2676 = !DILocation(line: 0, scope: !2628, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 207, column: 10, scope: !155)
!2678 = !DILocation(line: 53, column: 10, scope: !2636, inlinedAt: !2677)
!2679 = !DILocation(line: 192, column: 9, scope: !2672)
!2680 = !DILocation(line: 200, column: 69, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !154, line: 200, column: 11)
!2682 = distinct !DILexicalBlock(scope: !2660, file: !154, line: 195, column: 5)
!2683 = !DILocation(line: 201, column: 11, scope: !2681)
!2684 = !DILocation(line: 200, column: 11, scope: !2682)
!2685 = !DILocation(line: 202, column: 9, scope: !2681)
!2686 = !DILocation(line: 203, column: 14, scope: !2682)
!2687 = !DILocation(line: 203, column: 18, scope: !2682)
!2688 = !DILocation(line: 203, column: 9, scope: !2682)
!2689 = !DILocation(line: 53, column: 8, scope: !2636, inlinedAt: !2677)
!2690 = !DILocation(line: 57, column: 7, scope: !2639, inlinedAt: !2677)
!2691 = !DILocation(line: 58, column: 7, scope: !2639, inlinedAt: !2677)
!2692 = !DILocation(line: 61, column: 7, scope: !2628, inlinedAt: !2677)
!2693 = !DILocation(line: 62, column: 8, scope: !2643, inlinedAt: !2677)
!2694 = !DILocation(line: 62, column: 10, scope: !2643, inlinedAt: !2677)
!2695 = !DILocation(line: 63, column: 5, scope: !2643, inlinedAt: !2677)
!2696 = !DILocation(line: 207, column: 3, scope: !155)
!2697 = distinct !DISubprogram(name: "xcharalloc", scope: !154, file: !154, line: 216, type: !1833, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2698)
!2698 = !{!2699}
!2699 = !DILocalVariable(name: "n", arg: 1, scope: !2697, file: !154, line: 216, type: !93)
!2700 = !DILocation(line: 0, scope: !2697)
!2701 = !DILocation(line: 0, scope: !2595, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 218, column: 10, scope: !2697)
!2703 = !DILocation(line: 41, column: 13, scope: !2595, inlinedAt: !2702)
!2704 = !DILocation(line: 42, column: 8, scope: !2604, inlinedAt: !2702)
!2705 = !DILocation(line: 42, column: 10, scope: !2604, inlinedAt: !2702)
!2706 = !DILocation(line: 43, column: 5, scope: !2604, inlinedAt: !2702)
!2707 = !DILocation(line: 218, column: 3, scope: !2697)
!2708 = distinct !DISubprogram(name: "x2realloc", scope: !151, file: !151, line: 74, type: !2709, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2711)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!8, !8, !158}
!2711 = !{!2712, !2713}
!2712 = !DILocalVariable(name: "p", arg: 1, scope: !2708, file: !151, line: 74, type: !8)
!2713 = !DILocalVariable(name: "pn", arg: 2, scope: !2708, file: !151, line: 74, type: !158)
!2714 = !DILocation(line: 0, scope: !2708)
!2715 = !DILocation(line: 0, scope: !155, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 76, column: 10, scope: !2708)
!2717 = !DILocation(line: 176, column: 14, scope: !155, inlinedAt: !2716)
!2718 = !DILocation(line: 178, column: 9, scope: !2660, inlinedAt: !2716)
!2719 = !DILocation(line: 178, column: 7, scope: !155, inlinedAt: !2716)
!2720 = !DILocation(line: 180, column: 13, scope: !2663, inlinedAt: !2716)
!2721 = !DILocation(line: 180, column: 11, scope: !2664, inlinedAt: !2716)
!2722 = !DILocation(line: 191, column: 11, scope: !2672, inlinedAt: !2716)
!2723 = !DILocation(line: 191, column: 11, scope: !2664, inlinedAt: !2716)
!2724 = !DILocation(line: 192, column: 9, scope: !2672, inlinedAt: !2716)
!2725 = !DILocation(line: 201, column: 11, scope: !2681, inlinedAt: !2716)
!2726 = !DILocation(line: 200, column: 11, scope: !2682, inlinedAt: !2716)
!2727 = !DILocation(line: 202, column: 9, scope: !2681, inlinedAt: !2716)
!2728 = !DILocation(line: 203, column: 14, scope: !2682, inlinedAt: !2716)
!2729 = !DILocation(line: 203, column: 18, scope: !2682, inlinedAt: !2716)
!2730 = !DILocation(line: 203, column: 9, scope: !2682, inlinedAt: !2716)
!2731 = !DILocation(line: 0, scope: !2628, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 207, column: 10, scope: !155, inlinedAt: !2716)
!2733 = !DILocation(line: 53, column: 10, scope: !2636, inlinedAt: !2732)
!2734 = !DILocation(line: 206, column: 7, scope: !155, inlinedAt: !2716)
!2735 = !DILocation(line: 61, column: 7, scope: !2628, inlinedAt: !2732)
!2736 = !DILocation(line: 62, column: 8, scope: !2643, inlinedAt: !2732)
!2737 = !DILocation(line: 62, column: 10, scope: !2643, inlinedAt: !2732)
!2738 = !DILocation(line: 63, column: 5, scope: !2643, inlinedAt: !2732)
!2739 = !DILocation(line: 76, column: 3, scope: !2708)
!2740 = distinct !DISubprogram(name: "xzalloc", scope: !151, file: !151, line: 84, type: !2596, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2741)
!2741 = !{!2742}
!2742 = !DILocalVariable(name: "n", arg: 1, scope: !2740, file: !151, line: 84, type: !93)
!2743 = !DILocation(line: 0, scope: !2740)
!2744 = !DILocalVariable(name: "n", arg: 1, scope: !2745, file: !151, line: 93, type: !93)
!2745 = distinct !DISubprogram(name: "xcalloc", scope: !151, file: !151, line: 93, type: !2583, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2746)
!2746 = !{!2744, !2747, !2748}
!2747 = !DILocalVariable(name: "s", arg: 2, scope: !2745, file: !151, line: 93, type: !93)
!2748 = !DILocalVariable(name: "p", scope: !2745, file: !151, line: 95, type: !8)
!2749 = !DILocation(line: 0, scope: !2745, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 86, column: 10, scope: !2740)
!2751 = !DILocation(line: 100, column: 7, scope: !2752, inlinedAt: !2750)
!2752 = distinct !DILexicalBlock(scope: !2745, file: !151, line: 100, column: 7)
!2753 = !DILocation(line: 101, column: 7, scope: !2752, inlinedAt: !2750)
!2754 = !DILocation(line: 101, column: 18, scope: !2752, inlinedAt: !2750)
!2755 = !DILocation(line: 101, column: 16, scope: !2752, inlinedAt: !2750)
!2756 = !DILocation(line: 100, column: 7, scope: !2745, inlinedAt: !2750)
!2757 = !DILocation(line: 102, column: 5, scope: !2752, inlinedAt: !2750)
!2758 = !DILocation(line: 86, column: 3, scope: !2740)
!2759 = !DILocation(line: 0, scope: !2745)
!2760 = !DILocation(line: 100, column: 7, scope: !2752)
!2761 = !DILocation(line: 101, column: 7, scope: !2752)
!2762 = !DILocation(line: 101, column: 18, scope: !2752)
!2763 = !DILocation(line: 101, column: 16, scope: !2752)
!2764 = !DILocation(line: 100, column: 7, scope: !2745)
!2765 = !DILocation(line: 102, column: 5, scope: !2752)
!2766 = !DILocation(line: 103, column: 3, scope: !2745)
!2767 = distinct !DISubprogram(name: "xmemdup", scope: !151, file: !151, line: 111, type: !2768, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2772)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!8, !2770, !93}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "p", arg: 1, scope: !2767, file: !151, line: 111, type: !2770)
!2774 = !DILocalVariable(name: "s", arg: 2, scope: !2767, file: !151, line: 111, type: !93)
!2775 = !DILocation(line: 0, scope: !2767)
!2776 = !DILocation(line: 0, scope: !2595, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 113, column: 18, scope: !2767)
!2778 = !DILocation(line: 41, column: 13, scope: !2595, inlinedAt: !2777)
!2779 = !DILocation(line: 42, column: 8, scope: !2604, inlinedAt: !2777)
!2780 = !DILocation(line: 42, column: 10, scope: !2604, inlinedAt: !2777)
!2781 = !DILocation(line: 43, column: 5, scope: !2604, inlinedAt: !2777)
!2782 = !DILocalVariable(name: "__dest", arg: 1, scope: !2783, file: !1360, line: 26, type: !2786)
!2783 = distinct !DISubprogram(name: "memcpy", scope: !1360, file: !1360, line: 26, type: !2784, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2788)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!8, !2786, !2787, !93}
!2786 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!2787 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2770)
!2788 = !{!2782, !2789, !2790}
!2789 = !DILocalVariable(name: "__src", arg: 2, scope: !2783, file: !1360, line: 26, type: !2787)
!2790 = !DILocalVariable(name: "__len", arg: 3, scope: !2783, file: !1360, line: 26, type: !93)
!2791 = !DILocation(line: 0, scope: !2783, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 113, column: 10, scope: !2767)
!2793 = !DILocation(line: 29, column: 10, scope: !2783, inlinedAt: !2792)
!2794 = !DILocation(line: 113, column: 3, scope: !2767)
!2795 = distinct !DISubprogram(name: "xstrdup", scope: !151, file: !151, line: 119, type: !842, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2796)
!2796 = !{!2797}
!2797 = !DILocalVariable(name: "string", arg: 1, scope: !2795, file: !151, line: 119, type: !17)
!2798 = !DILocation(line: 0, scope: !2795)
!2799 = !DILocation(line: 121, column: 27, scope: !2795)
!2800 = !DILocation(line: 121, column: 43, scope: !2795)
!2801 = !DILocation(line: 0, scope: !2767, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 121, column: 10, scope: !2795)
!2803 = !DILocation(line: 0, scope: !2595, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 113, column: 18, scope: !2767, inlinedAt: !2802)
!2805 = !DILocation(line: 41, column: 13, scope: !2595, inlinedAt: !2804)
!2806 = !DILocation(line: 42, column: 8, scope: !2604, inlinedAt: !2804)
!2807 = !DILocation(line: 42, column: 10, scope: !2604, inlinedAt: !2804)
!2808 = !DILocation(line: 43, column: 5, scope: !2604, inlinedAt: !2804)
!2809 = !DILocation(line: 0, scope: !2783, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 113, column: 10, scope: !2767, inlinedAt: !2802)
!2811 = !DILocation(line: 29, column: 10, scope: !2783, inlinedAt: !2810)
!2812 = !DILocation(line: 121, column: 3, scope: !2795)
!2813 = distinct !DISubprogram(name: "xalloc_die", scope: !168, file: !168, line: 32, type: !602, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !4)
!2814 = !DILocation(line: 34, column: 10, scope: !2813)
!2815 = !DILocation(line: 34, column: 33, scope: !2813)
!2816 = !DILocation(line: 34, column: 3, scope: !2813)
!2817 = !DILocation(line: 40, column: 3, scope: !2813)
!2818 = distinct !DISubprogram(name: "rpl_calloc", scope: !170, file: !170, line: 42, type: !2583, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !2819)
!2819 = !{!2820, !2821, !2822, !2823}
!2820 = !DILocalVariable(name: "n", arg: 1, scope: !2818, file: !170, line: 42, type: !93)
!2821 = !DILocalVariable(name: "s", arg: 2, scope: !2818, file: !170, line: 42, type: !93)
!2822 = !DILocalVariable(name: "result", scope: !2818, file: !170, line: 44, type: !8)
!2823 = !DILocalVariable(name: "bytes", scope: !2824, file: !170, line: 56, type: !93)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !170, line: 53, column: 5)
!2825 = distinct !DILexicalBlock(scope: !2818, file: !170, line: 47, column: 7)
!2826 = !DILocation(line: 0, scope: !2818)
!2827 = !DILocation(line: 47, column: 9, scope: !2825)
!2828 = !DILocation(line: 47, column: 14, scope: !2825)
!2829 = !DILocation(line: 0, scope: !2824)
!2830 = !DILocation(line: 57, column: 21, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2824, file: !170, line: 57, column: 11)
!2832 = !DILocation(line: 57, column: 11, scope: !2824)
!2833 = !DILocation(line: 59, column: 11, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !170, line: 58, column: 9)
!2835 = !DILocation(line: 59, column: 17, scope: !2834)
!2836 = !DILocation(line: 65, column: 12, scope: !2818)
!2837 = !DILocation(line: 72, column: 3, scope: !2818)
!2838 = !DILocation(line: 73, column: 1, scope: !2818)
!2839 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !172, file: !172, line: 86, type: !2840, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2854)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!93, !2842, !17, !93, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1112, line: 6, baseType: !2845)
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1114, line: 21, baseType: !2846)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1114, line: 13, size: 64, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2846, file: !1114, line: 15, baseType: !20, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2846, file: !1114, line: 20, baseType: !2850, size: 32, offset: 32)
!2850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2846, file: !1114, line: 16, size: 32, elements: !2851)
!2851 = !{!2852, !2853}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2850, file: !1114, line: 18, baseType: !58, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2850, file: !1114, line: 19, baseType: !1123, size: 32)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860, !2861}
!2855 = !DILocalVariable(name: "pwc", arg: 1, scope: !2839, file: !172, line: 86, type: !2842)
!2856 = !DILocalVariable(name: "s", arg: 2, scope: !2839, file: !172, line: 86, type: !17)
!2857 = !DILocalVariable(name: "n", arg: 3, scope: !2839, file: !172, line: 86, type: !93)
!2858 = !DILocalVariable(name: "ps", arg: 4, scope: !2839, file: !172, line: 86, type: !2843)
!2859 = !DILocalVariable(name: "ret", scope: !2839, file: !172, line: 88, type: !93)
!2860 = !DILocalVariable(name: "wc", scope: !2839, file: !172, line: 89, type: !1128)
!2861 = !DILocalVariable(name: "uc", scope: !2862, file: !172, line: 156, type: !9)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !172, line: 155, column: 5)
!2863 = distinct !DILexicalBlock(scope: !2839, file: !172, line: 154, column: 7)
!2864 = !DILocation(line: 0, scope: !2839)
!2865 = !DILocation(line: 89, column: 3, scope: !2839)
!2866 = !DILocation(line: 105, column: 9, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2839, file: !172, line: 105, column: 7)
!2868 = !DILocation(line: 105, column: 7, scope: !2839)
!2869 = !DILocation(line: 145, column: 9, scope: !2839)
!2870 = !DILocation(line: 154, column: 19, scope: !2863)
!2871 = !DILocation(line: 154, column: 26, scope: !2863)
!2872 = !DILocation(line: 154, column: 41, scope: !2863)
!2873 = !DILocation(line: 154, column: 7, scope: !2839)
!2874 = !DILocation(line: 156, column: 26, scope: !2862)
!2875 = !DILocation(line: 0, scope: !2862)
!2876 = !DILocation(line: 157, column: 14, scope: !2862)
!2877 = !DILocation(line: 157, column: 12, scope: !2862)
!2878 = !DILocation(line: 163, column: 1, scope: !2839)
!2879 = !DISubprogram(name: "mbrtowc", scope: !1793, file: !1793, line: 296, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!95, !22, !17, !95, !2882}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2883 = distinct !DISubprogram(name: "close_stream", scope: !175, file: !175, line: 56, type: !2884, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2920)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!20, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !2888)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2888, file: !670, line: 51, baseType: !20, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2888, file: !670, line: 54, baseType: !6, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2888, file: !670, line: 55, baseType: !6, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2888, file: !670, line: 56, baseType: !6, size: 64, offset: 192)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2888, file: !670, line: 57, baseType: !6, size: 64, offset: 256)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2888, file: !670, line: 58, baseType: !6, size: 64, offset: 320)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2888, file: !670, line: 59, baseType: !6, size: 64, offset: 384)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2888, file: !670, line: 60, baseType: !6, size: 64, offset: 448)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2888, file: !670, line: 61, baseType: !6, size: 64, offset: 512)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2888, file: !670, line: 64, baseType: !6, size: 64, offset: 576)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2888, file: !670, line: 65, baseType: !6, size: 64, offset: 640)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2888, file: !670, line: 66, baseType: !6, size: 64, offset: 704)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2888, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2888, file: !670, line: 70, baseType: !2904, size: 64, offset: 832)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2888, file: !670, line: 72, baseType: !20, size: 32, offset: 896)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2888, file: !670, line: 73, baseType: !20, size: 32, offset: 928)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2888, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2888, file: !670, line: 77, baseType: !92, size: 16, offset: 1024)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2888, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2888, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2888, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2888, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2888, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2888, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2888, file: !670, line: 93, baseType: !2904, size: 64, offset: 1344)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2888, file: !670, line: 94, baseType: !8, size: 64, offset: 1408)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2888, file: !670, line: 95, baseType: !93, size: 64, offset: 1472)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2888, file: !670, line: 96, baseType: !20, size: 32, offset: 1536)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2888, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!2920 = !{!2921, !2922, !2924, !2925}
!2921 = !DILocalVariable(name: "stream", arg: 1, scope: !2883, file: !175, line: 56, type: !2886)
!2922 = !DILocalVariable(name: "some_pending", scope: !2883, file: !175, line: 58, type: !2923)
!2923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!2924 = !DILocalVariable(name: "prev_fail", scope: !2883, file: !175, line: 59, type: !2923)
!2925 = !DILocalVariable(name: "fclose_fail", scope: !2883, file: !175, line: 60, type: !2923)
!2926 = !DILocation(line: 0, scope: !2883)
!2927 = !DILocation(line: 58, column: 30, scope: !2883)
!2928 = !DILocalVariable(name: "__stream", arg: 1, scope: !2929, file: !2930, line: 135, type: !2886)
!2929 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2930, file: !2930, line: 135, type: !2884, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !174, retainedNodes: !2931)
!2930 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!2931 = !{!2928}
!2932 = !DILocation(line: 0, scope: !2929, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 59, column: 27, scope: !2883)
!2934 = !DILocation(line: 137, column: 10, scope: !2929, inlinedAt: !2933)
!2935 = !{!2936, !764, i64 0}
!2936 = !{!"_IO_FILE", !764, i64 0, !593, i64 8, !593, i64 16, !593, i64 24, !593, i64 32, !593, i64 40, !593, i64 48, !593, i64 56, !593, i64 64, !593, i64 72, !593, i64 80, !593, i64 88, !593, i64 96, !593, i64 104, !764, i64 112, !764, i64 116, !1869, i64 120, !1352, i64 128, !594, i64 130, !594, i64 131, !593, i64 136, !1869, i64 144, !593, i64 152, !593, i64 160, !593, i64 168, !593, i64 176, !1869, i64 184, !764, i64 192, !594, i64 196}
!2937 = !DILocation(line: 59, column: 43, scope: !2883)
!2938 = !DILocation(line: 60, column: 29, scope: !2883)
!2939 = !DILocation(line: 60, column: 45, scope: !2883)
!2940 = !DILocation(line: 70, column: 17, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2883, file: !175, line: 70, column: 7)
!2942 = !DILocation(line: 58, column: 50, scope: !2883)
!2943 = !DILocation(line: 70, column: 33, scope: !2941)
!2944 = !DILocation(line: 70, column: 53, scope: !2941)
!2945 = !DILocation(line: 70, column: 59, scope: !2941)
!2946 = !DILocation(line: 70, column: 7, scope: !2883)
!2947 = !DILocation(line: 72, column: 11, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2941, file: !175, line: 71, column: 5)
!2949 = !DILocation(line: 73, column: 9, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2948, file: !175, line: 72, column: 11)
!2951 = !DILocation(line: 73, column: 15, scope: !2950)
!2952 = !DILocation(line: 78, column: 1, scope: !2883)
!2953 = distinct !DISubprogram(name: "hard_locale", scope: !177, file: !177, line: 27, type: !2954, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !176, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!38, !20}
!2956 = !{!2957, !2958}
!2957 = !DILocalVariable(name: "category", arg: 1, scope: !2953, file: !177, line: 27, type: !20)
!2958 = !DILocalVariable(name: "locale", scope: !2953, file: !177, line: 29, type: !2959)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2056, elements: !2960)
!2960 = !{!2961}
!2961 = !DISubrange(count: 257)
!2962 = !DILocation(line: 0, scope: !2953)
!2963 = !DILocation(line: 29, column: 3, scope: !2953)
!2964 = !DILocation(line: 29, column: 8, scope: !2953)
!2965 = !DILocation(line: 31, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2953, file: !177, line: 31, column: 7)
!2967 = !DILocation(line: 31, column: 7, scope: !2953)
!2968 = !DILocation(line: 34, column: 12, scope: !2953)
!2969 = !DILocation(line: 34, column: 38, scope: !2953)
!2970 = !DILocation(line: 34, column: 41, scope: !2953)
!2971 = !DILocation(line: 34, column: 66, scope: !2953)
!2972 = !DILocation(line: 35, column: 1, scope: !2953)
!2973 = distinct !DISubprogram(name: "locale_charset", scope: !179, file: !179, line: 831, type: !2974, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!17}
!2976 = !{!2977}
!2977 = !DILocalVariable(name: "codeset", scope: !2973, file: !179, line: 833, type: !17)
!2978 = !DILocation(line: 847, column: 13, scope: !2973)
!2979 = !DILocation(line: 0, scope: !2973)
!2980 = !DILocation(line: 911, column: 15, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2973, file: !179, line: 911, column: 7)
!2982 = !DILocation(line: 911, column: 7, scope: !2973)
!2983 = !DILocation(line: 1070, column: 13, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !179, line: 1070, column: 13)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !179, line: 1060, column: 7)
!2986 = distinct !DILexicalBlock(scope: !2973, file: !179, line: 1019, column: 3)
!2987 = !DILocation(line: 1070, column: 24, scope: !2984)
!2988 = !DILocation(line: 1070, column: 13, scope: !2985)
!2989 = !DILocation(line: 1158, column: 3, scope: !2973)
!2990 = !DISubprogram(name: "nl_langinfo", scope: !182, file: !182, line: 661, type: !2991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!6, !20}
!2993 = distinct !DISubprogram(name: "setlocale_null_r", scope: !568, file: !568, line: 269, type: !2994, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!20, !20, !6, !93}
!2996 = !{!2997, !2998, !2999}
!2997 = !DILocalVariable(name: "category", arg: 1, scope: !2993, file: !568, line: 269, type: !20)
!2998 = !DILocalVariable(name: "buf", arg: 2, scope: !2993, file: !568, line: 269, type: !6)
!2999 = !DILocalVariable(name: "bufsize", arg: 3, scope: !2993, file: !568, line: 269, type: !93)
!3000 = !DILocation(line: 0, scope: !2993)
!3001 = !DILocalVariable(name: "category", arg: 1, scope: !3002, file: !568, line: 91, type: !20)
!3002 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !568, file: !568, line: 91, type: !2994, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3003)
!3003 = !{!3001, !3004, !3005, !3006, !3007}
!3004 = !DILocalVariable(name: "buf", arg: 2, scope: !3002, file: !568, line: 91, type: !6)
!3005 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3002, file: !568, line: 91, type: !93)
!3006 = !DILocalVariable(name: "result", scope: !3002, file: !568, line: 140, type: !17)
!3007 = !DILocalVariable(name: "length", scope: !3008, file: !568, line: 154, type: !93)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !568, line: 153, column: 5)
!3009 = distinct !DILexicalBlock(scope: !3002, file: !568, line: 142, column: 7)
!3010 = !DILocation(line: 0, scope: !3002, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 274, column: 10, scope: !2993)
!3012 = !DILocalVariable(name: "category", arg: 1, scope: !3013, file: !568, line: 60, type: !20)
!3013 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !568, file: !568, line: 60, type: !3014, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!17, !20}
!3016 = !{!3012, !3017}
!3017 = !DILocalVariable(name: "result", scope: !3013, file: !568, line: 62, type: !17)
!3018 = !DILocation(line: 0, scope: !3013, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 140, column: 24, scope: !3002, inlinedAt: !3011)
!3020 = !DILocation(line: 62, column: 24, scope: !3013, inlinedAt: !3019)
!3021 = !DILocation(line: 142, column: 14, scope: !3009, inlinedAt: !3011)
!3022 = !DILocation(line: 142, column: 7, scope: !3002, inlinedAt: !3011)
!3023 = !DILocation(line: 145, column: 19, scope: !3024, inlinedAt: !3011)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !568, line: 145, column: 11)
!3025 = distinct !DILexicalBlock(scope: !3009, file: !568, line: 143, column: 5)
!3026 = !DILocation(line: 145, column: 11, scope: !3025, inlinedAt: !3011)
!3027 = !DILocation(line: 149, column: 16, scope: !3024, inlinedAt: !3011)
!3028 = !DILocation(line: 149, column: 9, scope: !3024, inlinedAt: !3011)
!3029 = !DILocation(line: 154, column: 23, scope: !3008, inlinedAt: !3011)
!3030 = !DILocation(line: 0, scope: !3008, inlinedAt: !3011)
!3031 = !DILocation(line: 155, column: 18, scope: !3032, inlinedAt: !3011)
!3032 = distinct !DILexicalBlock(scope: !3008, file: !568, line: 155, column: 11)
!3033 = !DILocation(line: 155, column: 11, scope: !3008, inlinedAt: !3011)
!3034 = !DILocation(line: 157, column: 39, scope: !3035, inlinedAt: !3011)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !568, line: 156, column: 9)
!3036 = !DILocalVariable(name: "__dest", arg: 1, scope: !3037, file: !1360, line: 26, type: !2786)
!3037 = distinct !DISubprogram(name: "memcpy", scope: !1360, file: !1360, line: 26, type: !2784, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3038)
!3038 = !{!3036, !3039, !3040}
!3039 = !DILocalVariable(name: "__src", arg: 2, scope: !3037, file: !1360, line: 26, type: !2787)
!3040 = !DILocalVariable(name: "__len", arg: 3, scope: !3037, file: !1360, line: 26, type: !93)
!3041 = !DILocation(line: 0, scope: !3037, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 157, column: 11, scope: !3035, inlinedAt: !3011)
!3043 = !DILocation(line: 29, column: 10, scope: !3037, inlinedAt: !3042)
!3044 = !DILocation(line: 158, column: 11, scope: !3035, inlinedAt: !3011)
!3045 = !DILocation(line: 162, column: 23, scope: !3046, inlinedAt: !3011)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !568, line: 162, column: 15)
!3047 = distinct !DILexicalBlock(scope: !3032, file: !568, line: 161, column: 9)
!3048 = !DILocation(line: 162, column: 15, scope: !3047, inlinedAt: !3011)
!3049 = !DILocation(line: 167, column: 44, scope: !3050, inlinedAt: !3011)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !568, line: 163, column: 13)
!3051 = !DILocation(line: 0, scope: !3037, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 167, column: 15, scope: !3050, inlinedAt: !3011)
!3053 = !DILocation(line: 29, column: 10, scope: !3037, inlinedAt: !3052)
!3054 = !DILocation(line: 168, column: 15, scope: !3050, inlinedAt: !3011)
!3055 = !DILocation(line: 168, column: 32, scope: !3050, inlinedAt: !3011)
!3056 = !DILocation(line: 169, column: 13, scope: !3050, inlinedAt: !3011)
!3057 = !DILocation(line: 0, scope: !3009, inlinedAt: !3011)
!3058 = !DILocation(line: 274, column: 3, scope: !2993)
!3059 = distinct !DISubprogram(name: "setlocale_null", scope: !568, file: !568, line: 301, type: !3014, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3060)
!3060 = !{!3061}
!3061 = !DILocalVariable(name: "category", arg: 1, scope: !3059, file: !568, line: 301, type: !20)
!3062 = !DILocation(line: 0, scope: !3059)
!3063 = !DILocation(line: 0, scope: !3013, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 304, column: 10, scope: !3059)
!3065 = !DILocation(line: 62, column: 24, scope: !3013, inlinedAt: !3064)
!3066 = !DILocation(line: 304, column: 3, scope: !3059)
!3067 = distinct !DISubprogram(name: "rpl_fclose", scope: !570, file: !570, line: 58, type: !3068, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !3104)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!20, !3070}
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !3072)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !3073)
!3073 = !{!3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3072, file: !670, line: 51, baseType: !20, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3072, file: !670, line: 54, baseType: !6, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3072, file: !670, line: 55, baseType: !6, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3072, file: !670, line: 56, baseType: !6, size: 64, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3072, file: !670, line: 57, baseType: !6, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3072, file: !670, line: 58, baseType: !6, size: 64, offset: 320)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3072, file: !670, line: 59, baseType: !6, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3072, file: !670, line: 60, baseType: !6, size: 64, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3072, file: !670, line: 61, baseType: !6, size: 64, offset: 512)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3072, file: !670, line: 64, baseType: !6, size: 64, offset: 576)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3072, file: !670, line: 65, baseType: !6, size: 64, offset: 640)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3072, file: !670, line: 66, baseType: !6, size: 64, offset: 704)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3072, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3072, file: !670, line: 70, baseType: !3088, size: 64, offset: 832)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3072, file: !670, line: 72, baseType: !20, size: 32, offset: 896)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3072, file: !670, line: 73, baseType: !20, size: 32, offset: 928)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3072, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3072, file: !670, line: 77, baseType: !92, size: 16, offset: 1024)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3072, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3072, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3072, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3072, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3072, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3072, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3072, file: !670, line: 93, baseType: !3088, size: 64, offset: 1344)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3072, file: !670, line: 94, baseType: !8, size: 64, offset: 1408)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3072, file: !670, line: 95, baseType: !93, size: 64, offset: 1472)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3072, file: !670, line: 96, baseType: !20, size: 32, offset: 1536)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3072, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!3104 = !{!3105, !3106, !3107, !3108}
!3105 = !DILocalVariable(name: "fp", arg: 1, scope: !3067, file: !570, line: 58, type: !3070)
!3106 = !DILocalVariable(name: "saved_errno", scope: !3067, file: !570, line: 60, type: !20)
!3107 = !DILocalVariable(name: "fd", scope: !3067, file: !570, line: 61, type: !20)
!3108 = !DILocalVariable(name: "result", scope: !3067, file: !570, line: 62, type: !20)
!3109 = !DILocation(line: 0, scope: !3067)
!3110 = !DILocation(line: 65, column: 8, scope: !3067)
!3111 = !DILocation(line: 66, column: 10, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3067, file: !570, line: 66, column: 7)
!3113 = !DILocation(line: 66, column: 7, scope: !3067)
!3114 = !DILocation(line: 67, column: 12, scope: !3112)
!3115 = !DILocation(line: 67, column: 5, scope: !3112)
!3116 = !DILocation(line: 72, column: 9, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3067, file: !570, line: 72, column: 7)
!3118 = !DILocation(line: 72, column: 23, scope: !3117)
!3119 = !DILocation(line: 72, column: 33, scope: !3117)
!3120 = !DILocation(line: 72, column: 26, scope: !3117)
!3121 = !DILocation(line: 72, column: 59, scope: !3117)
!3122 = !DILocation(line: 73, column: 7, scope: !3117)
!3123 = !DILocation(line: 73, column: 10, scope: !3117)
!3124 = !DILocation(line: 72, column: 7, scope: !3067)
!3125 = !DILocation(line: 100, column: 12, scope: !3067)
!3126 = !DILocation(line: 105, column: 7, scope: !3067)
!3127 = !DILocation(line: 74, column: 19, scope: !3117)
!3128 = !DILocation(line: 105, column: 19, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3067, file: !570, line: 105, column: 7)
!3130 = !DILocation(line: 107, column: 13, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3129, file: !570, line: 106, column: 5)
!3132 = !DILocation(line: 109, column: 5, scope: !3131)
!3133 = !DILocation(line: 112, column: 1, scope: !3067)
!3134 = !DISubprogram(name: "fileno", scope: !665, file: !665, line: 785, type: !3135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!20, !3088}
!3137 = !DISubprogram(name: "fclose", scope: !665, file: !665, line: 213, type: !3135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3138 = !DISubprogram(name: "lseek", scope: !3139, file: !3139, line: 334, type: !3140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3139 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!693, !20, !693, !20}
!3142 = distinct !DISubprogram(name: "rpl_fflush", scope: !572, file: !572, line: 129, type: !3143, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3179)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!20, !3145}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !3147)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !3148)
!3148 = !{!3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3147, file: !670, line: 51, baseType: !20, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3147, file: !670, line: 54, baseType: !6, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3147, file: !670, line: 55, baseType: !6, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3147, file: !670, line: 56, baseType: !6, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3147, file: !670, line: 57, baseType: !6, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3147, file: !670, line: 58, baseType: !6, size: 64, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3147, file: !670, line: 59, baseType: !6, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3147, file: !670, line: 60, baseType: !6, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3147, file: !670, line: 61, baseType: !6, size: 64, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3147, file: !670, line: 64, baseType: !6, size: 64, offset: 576)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3147, file: !670, line: 65, baseType: !6, size: 64, offset: 640)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3147, file: !670, line: 66, baseType: !6, size: 64, offset: 704)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3147, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3147, file: !670, line: 70, baseType: !3163, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3147, file: !670, line: 72, baseType: !20, size: 32, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3147, file: !670, line: 73, baseType: !20, size: 32, offset: 928)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3147, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3147, file: !670, line: 77, baseType: !92, size: 16, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3147, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3147, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3147, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3147, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3147, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3147, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3147, file: !670, line: 93, baseType: !3163, size: 64, offset: 1344)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3147, file: !670, line: 94, baseType: !8, size: 64, offset: 1408)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3147, file: !670, line: 95, baseType: !93, size: 64, offset: 1472)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3147, file: !670, line: 96, baseType: !20, size: 32, offset: 1536)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3147, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "stream", arg: 1, scope: !3142, file: !572, line: 129, type: !3145)
!3181 = !DILocation(line: 0, scope: !3142)
!3182 = !DILocation(line: 150, column: 14, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3142, file: !572, line: 150, column: 7)
!3184 = !DILocation(line: 150, column: 22, scope: !3183)
!3185 = !DILocation(line: 150, column: 27, scope: !3183)
!3186 = !DILocation(line: 150, column: 7, scope: !3142)
!3187 = !DILocation(line: 151, column: 12, scope: !3183)
!3188 = !DILocation(line: 151, column: 5, scope: !3183)
!3189 = !DILocalVariable(name: "fp", arg: 1, scope: !3190, file: !572, line: 41, type: !3145)
!3190 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !572, file: !572, line: 41, type: !3191, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !571, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !3145}
!3193 = !{!3189}
!3194 = !DILocation(line: 0, scope: !3190, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 156, column: 3, scope: !3142)
!3196 = !DILocation(line: 43, column: 11, scope: !3197, inlinedAt: !3195)
!3197 = distinct !DILexicalBlock(scope: !3190, file: !572, line: 43, column: 7)
!3198 = !DILocation(line: 43, column: 18, scope: !3197, inlinedAt: !3195)
!3199 = !DILocation(line: 43, column: 7, scope: !3190, inlinedAt: !3195)
!3200 = !DILocation(line: 45, column: 5, scope: !3197, inlinedAt: !3195)
!3201 = !DILocation(line: 158, column: 10, scope: !3142)
!3202 = !DILocation(line: 158, column: 3, scope: !3142)
!3203 = !DILocation(line: 235, column: 1, scope: !3142)
!3204 = !DISubprogram(name: "fflush", scope: !665, file: !665, line: 218, type: !3205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!20, !3163}
!3207 = distinct !DISubprogram(name: "rpl_fseeko", scope: !574, file: !574, line: 28, type: !3208, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3245)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!20, !3210, !3244, !20}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2427, line: 7, baseType: !3212)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !670, line: 49, size: 1728, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3212, file: !670, line: 51, baseType: !20, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3212, file: !670, line: 54, baseType: !6, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3212, file: !670, line: 55, baseType: !6, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3212, file: !670, line: 56, baseType: !6, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3212, file: !670, line: 57, baseType: !6, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3212, file: !670, line: 58, baseType: !6, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3212, file: !670, line: 59, baseType: !6, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3212, file: !670, line: 60, baseType: !6, size: 64, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3212, file: !670, line: 61, baseType: !6, size: 64, offset: 512)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3212, file: !670, line: 64, baseType: !6, size: 64, offset: 576)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3212, file: !670, line: 65, baseType: !6, size: 64, offset: 640)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3212, file: !670, line: 66, baseType: !6, size: 64, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3212, file: !670, line: 68, baseType: !685, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3212, file: !670, line: 70, baseType: !3228, size: 64, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3212, file: !670, line: 72, baseType: !20, size: 32, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3212, file: !670, line: 73, baseType: !20, size: 32, offset: 928)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3212, file: !670, line: 74, baseType: !691, size: 64, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3212, file: !670, line: 77, baseType: !92, size: 16, offset: 1024)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3212, file: !670, line: 78, baseType: !696, size: 8, offset: 1040)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3212, file: !670, line: 79, baseType: !698, size: 8, offset: 1048)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3212, file: !670, line: 81, baseType: !702, size: 64, offset: 1088)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3212, file: !670, line: 89, baseType: !705, size: 64, offset: 1152)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3212, file: !670, line: 91, baseType: !707, size: 64, offset: 1216)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3212, file: !670, line: 92, baseType: !710, size: 64, offset: 1280)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3212, file: !670, line: 93, baseType: !3228, size: 64, offset: 1344)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3212, file: !670, line: 94, baseType: !8, size: 64, offset: 1408)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3212, file: !670, line: 95, baseType: !93, size: 64, offset: 1472)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3212, file: !670, line: 96, baseType: !20, size: 32, offset: 1536)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3212, file: !670, line: 98, baseType: !717, size: 160, offset: 1568)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !665, line: 63, baseType: !691)
!3245 = !{!3246, !3247, !3248, !3249}
!3246 = !DILocalVariable(name: "fp", arg: 1, scope: !3207, file: !574, line: 28, type: !3210)
!3247 = !DILocalVariable(name: "offset", arg: 2, scope: !3207, file: !574, line: 28, type: !3244)
!3248 = !DILocalVariable(name: "whence", arg: 3, scope: !3207, file: !574, line: 28, type: !20)
!3249 = !DILocalVariable(name: "pos", scope: !3250, file: !574, line: 117, type: !3244)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !574, line: 113, column: 5)
!3251 = distinct !DILexicalBlock(scope: !3207, file: !574, line: 52, column: 7)
!3252 = !DILocation(line: 0, scope: !3207)
!3253 = !DILocation(line: 52, column: 11, scope: !3251)
!3254 = !{!2936, !593, i64 16}
!3255 = !DILocation(line: 52, column: 31, scope: !3251)
!3256 = !{!2936, !593, i64 8}
!3257 = !DILocation(line: 52, column: 24, scope: !3251)
!3258 = !DILocation(line: 53, column: 7, scope: !3251)
!3259 = !DILocation(line: 53, column: 14, scope: !3251)
!3260 = !{!2936, !593, i64 40}
!3261 = !DILocation(line: 53, column: 35, scope: !3251)
!3262 = !{!2936, !593, i64 32}
!3263 = !DILocation(line: 53, column: 28, scope: !3251)
!3264 = !DILocation(line: 54, column: 7, scope: !3251)
!3265 = !DILocation(line: 54, column: 14, scope: !3251)
!3266 = !{!2936, !593, i64 72}
!3267 = !DILocation(line: 54, column: 28, scope: !3251)
!3268 = !DILocation(line: 52, column: 7, scope: !3207)
!3269 = !DILocation(line: 117, column: 26, scope: !3250)
!3270 = !DILocation(line: 117, column: 19, scope: !3250)
!3271 = !DILocation(line: 0, scope: !3250)
!3272 = !DILocation(line: 118, column: 15, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3250, file: !574, line: 118, column: 11)
!3274 = !DILocation(line: 118, column: 11, scope: !3250)
!3275 = !DILocation(line: 129, column: 11, scope: !3250)
!3276 = !DILocation(line: 129, column: 18, scope: !3250)
!3277 = !DILocation(line: 130, column: 11, scope: !3250)
!3278 = !DILocation(line: 130, column: 19, scope: !3250)
!3279 = !{!2936, !1869, i64 144}
!3280 = !DILocation(line: 161, column: 7, scope: !3250)
!3281 = !DILocation(line: 163, column: 10, scope: !3207)
!3282 = !DILocation(line: 163, column: 3, scope: !3207)
!3283 = !DILocation(line: 164, column: 1, scope: !3207)
!3284 = !DISubprogram(name: "fseeko", scope: !665, file: !665, line: 712, type: !3285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!20, !3228, !693, !20}
