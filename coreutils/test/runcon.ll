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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), align 8, !dbg !125
@.str.44 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !130
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !174
@.str.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !177
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !183
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !224
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !333
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !339
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !341
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !348
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !355
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !343
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !357
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !363
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1033 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1038, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i32 %0, metadata !1037, metadata !DIExpression()), !dbg !1059
  %3 = icmp eq i32 %0, 0, !dbg !1060
  br i1 %3, label %9, label %4, !dbg !1061

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1062, !tbaa !1064
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1062
  %7 = load i8*, i8** @program_name, align 8, !dbg !1062, !tbaa !1064
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1062
  br label %64, !dbg !1062

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1068
  %11 = load i8*, i8** @program_name, align 8, !dbg !1068, !tbaa !1064
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #18, !dbg !1068
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1069
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1069, !tbaa !1064
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1069
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #18, !dbg !1070
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1070, !tbaa !1064
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1070
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1073
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1073, !tbaa !1064
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1073
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1074
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1074, !tbaa !1064
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1074
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1075
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1075, !tbaa !1064
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1075
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), metadata !1042, metadata !DIExpression()) #18, !dbg !1076
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1077
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #18, !dbg !1077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1055
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), metadata !1043, metadata !DIExpression()) #18, !dbg !1076
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1044, metadata !DIExpression()) #18, !dbg !1076
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1078
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1044, metadata !DIExpression()) #18, !dbg !1076
  br label %30, !dbg !1079

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1044, metadata !DIExpression()) #18, !dbg !1076
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %31) #21, !dbg !1080
  %34 = icmp eq i32 %33, 0, !dbg !1080
  br i1 %34, label %40, label %35, !dbg !1079

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !1044, metadata !DIExpression()) #18, !dbg !1076
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !1082
  %38 = load i8*, i8** %37, align 8, !dbg !1082, !tbaa !1083
  %39 = icmp eq i8* %38, null, !dbg !1085
  br i1 %39, label %40, label %30, !dbg !1086, !llvm.loop !1087

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1044, metadata !DIExpression()) #18, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1044, metadata !DIExpression()) #18, !dbg !1076
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !1088
  %43 = load i8*, i8** %42, align 8, !dbg !1088, !tbaa !1090
  %44 = icmp eq i8* %43, null, !dbg !1091
  %45 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %43, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %45, metadata !1043, metadata !DIExpression()) #18, !dbg !1076
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #18, !dbg !1093
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #18, !dbg !1093
  %48 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %48, metadata !1051, metadata !DIExpression()) #18, !dbg !1076
  %49 = icmp eq i8* %48, null, !dbg !1095
  br i1 %49, label %57, label %50, !dbg !1097

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #21, !dbg !1098
  %52 = icmp eq i32 %51, 0, !dbg !1098
  br i1 %52, label %57, label %53, !dbg !1099

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1100
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1100, !tbaa !1064
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #18, !dbg !1100
  br label %57, !dbg !1102

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #18, !dbg !1103
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1103
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #18, !dbg !1104
  %61 = icmp eq i8* %45, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), !dbg !1104
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1104
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #18, !dbg !1104
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #18, !dbg !1105
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #22, !dbg !1106
  unreachable, !dbg !1106
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !6 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !15 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !80 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1107 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1112, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8** %1, metadata !1113, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !1118, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !1119, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !1120, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* null, metadata !1121, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 0, metadata !1122, metadata !DIExpression()), !dbg !1129
  %4 = load i8*, i8** %1, align 8, !dbg !1130, !tbaa !1064
  tail call void @set_program_name(i8* %4) #18, !dbg !1131
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1132
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1133
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1134
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1135
  %9 = bitcast i32* %3 to i8*, !dbg !1136
  br label %10, !dbg !1137

10:                                               ; preds = %46, %2
  %11 = phi i8* [ null, %2 ], [ %47, %46 ], !dbg !1138
  %12 = phi i8* [ null, %2 ], [ %48, %46 ], !dbg !1139
  %13 = phi i8* [ null, %2 ], [ %49, %46 ], !dbg !1140
  %14 = phi i8 [ 0, %2 ], [ %50, %46 ], !dbg !1141
  %15 = phi i8* [ null, %2 ], [ %51, %46 ], !dbg !1142
  call void @llvm.dbg.value(metadata i8* %15, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %14, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %13, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %12, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %11, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #18, !dbg !1143
  call void @llvm.dbg.value(metadata i32 0, metadata !1126, metadata !DIExpression()), !dbg !1136
  store i32 0, i32* %3, align 4, !dbg !1144, !tbaa !1145
  call void @llvm.dbg.value(metadata i32* %3, metadata !1126, metadata !DIExpression(DW_OP_deref)), !dbg !1136
  %16 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %3) #18, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %16, metadata !1128, metadata !DIExpression()), !dbg !1136
  switch i32 %16, label %45 [
    i32 -1, label %52
    i32 114, label %17
    i32 116, label %23
    i32 117, label %29
    i32 108, label %35
    i32 99, label %46
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !1148

17:                                               ; preds = %10
  %18 = icmp eq i8* %15, null, !dbg !1149
  br i1 %18, label %21, label %19, !dbg !1152

19:                                               ; preds = %17
  %20 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 5) #18, !dbg !1153
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %20) #18, !dbg !1153
  unreachable, !dbg !1153

21:                                               ; preds = %17
  %22 = load i8*, i8** @optarg, align 8, !dbg !1154, !tbaa !1064
  call void @llvm.dbg.value(metadata i8* %22, metadata !1114, metadata !DIExpression()), !dbg !1129
  br label %46, !dbg !1155

23:                                               ; preds = %10
  %24 = icmp eq i8* %11, null, !dbg !1156
  br i1 %24, label %27, label %25, !dbg !1158

25:                                               ; preds = %23
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1159
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #18, !dbg !1159
  unreachable, !dbg !1159

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8, !dbg !1160, !tbaa !1064
  call void @llvm.dbg.value(metadata i8* %28, metadata !1117, metadata !DIExpression()), !dbg !1129
  br label %46, !dbg !1161

29:                                               ; preds = %10
  %30 = icmp eq i8* %12, null, !dbg !1162
  br i1 %30, label %33, label %31, !dbg !1164

31:                                               ; preds = %29
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 5) #18, !dbg !1165
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %32) #18, !dbg !1165
  unreachable, !dbg !1165

33:                                               ; preds = %29
  %34 = load i8*, i8** @optarg, align 8, !dbg !1166, !tbaa !1064
  call void @llvm.dbg.value(metadata i8* %34, metadata !1116, metadata !DIExpression()), !dbg !1129
  br label %46, !dbg !1167

35:                                               ; preds = %10
  %36 = icmp eq i8* %13, null, !dbg !1168
  br i1 %36, label %39, label %37, !dbg !1170

37:                                               ; preds = %35
  %38 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 5) #18, !dbg !1171
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %38) #18, !dbg !1171
  unreachable, !dbg !1171

39:                                               ; preds = %35
  %40 = load i8*, i8** @optarg, align 8, !dbg !1172, !tbaa !1064
  call void @llvm.dbg.value(metadata i8* %40, metadata !1115, metadata !DIExpression()), !dbg !1129
  br label %46, !dbg !1173

41:                                               ; preds = %10
  call void @usage(i32 0) #23, !dbg !1174
  unreachable, !dbg !1174

42:                                               ; preds = %10
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1175, !tbaa !1064
  %44 = load i8*, i8** @Version, align 8, !dbg !1175, !tbaa !1064
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* null) #18, !dbg !1175
  call void @exit(i32 0) #22, !dbg !1175
  unreachable, !dbg !1175

45:                                               ; preds = %10
  call void @usage(i32 1) #23, !dbg !1176
  unreachable, !dbg !1176

46:                                               ; preds = %21, %27, %33, %39, %10
  %47 = phi i8* [ %11, %39 ], [ %11, %33 ], [ %28, %27 ], [ %11, %21 ], [ %11, %10 ], !dbg !1129
  %48 = phi i8* [ %12, %39 ], [ %34, %33 ], [ %12, %27 ], [ %12, %21 ], [ %12, %10 ], !dbg !1129
  %49 = phi i8* [ %40, %39 ], [ %13, %33 ], [ %13, %27 ], [ %13, %21 ], [ %13, %10 ], !dbg !1129
  %50 = phi i8 [ %14, %39 ], [ %14, %33 ], [ %14, %27 ], [ %14, %21 ], [ 1, %10 ], !dbg !1129
  %51 = phi i8* [ %15, %39 ], [ %15, %33 ], [ %15, %27 ], [ %22, %21 ], [ %15, %10 ], !dbg !1129
  call void @llvm.dbg.value(metadata i8* %51, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %50, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %49, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %48, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %47, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %51, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %50, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %49, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %48, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %47, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #18, !dbg !1177
  br label %10

52:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %11, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %12, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %13, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %14, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %15, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %11, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %12, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %13, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %14, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %15, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %11, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %12, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %13, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %14, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %15, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %11, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %12, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %13, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %14, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %15, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %11, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %12, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %13, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %14, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %15, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %11, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %12, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %13, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %14, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %15, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %51, metadata !1114, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8 %50, metadata !1122, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %49, metadata !1115, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %48, metadata !1116, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %47, metadata !1117, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #18, !dbg !1177
  %53 = load i32, i32* @optind, align 4, !dbg !1178, !tbaa !1145
  %54 = icmp eq i32 %53, %0, !dbg !1180
  br i1 %54, label %55, label %58, !dbg !1181

55:                                               ; preds = %52
  %56 = tail call i32* @__errno_location() #24, !dbg !1182
  store i32 95, i32* %56, align 4, !dbg !1194, !tbaa !1145
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 5) #18, !dbg !1195
  call void (i32, i32, i8*, ...) @error(i32 1, i32 95, i8* %57) #18, !dbg !1195
  unreachable, !dbg !1195

58:                                               ; preds = %52
  %59 = icmp ne i8* %12, null, !dbg !1196
  %60 = icmp ne i8* %15, null, !dbg !1198
  %61 = or i1 %59, %60, !dbg !1199
  %62 = icmp ne i8* %11, null, !dbg !1200
  %63 = or i1 %62, %61, !dbg !1199
  %64 = icmp ne i8* %13, null, !dbg !1201
  %65 = or i1 %64, %63, !dbg !1199
  %66 = xor i1 %65, true, !dbg !1199
  %67 = and i8 %14, 1, !dbg !1202
  %68 = icmp eq i8 %67, 0, !dbg !1202
  %69 = and i1 %68, %66, !dbg !1199
  br i1 %69, label %70, label %76, !dbg !1199

70:                                               ; preds = %58
  %71 = icmp slt i32 %53, %0, !dbg !1203
  br i1 %71, label %74, label %72, !dbg !1206

72:                                               ; preds = %70
  %73 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 5) #18, !dbg !1207
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %73) #18, !dbg !1209
  call void @usage(i32 1) #23, !dbg !1210
  unreachable, !dbg !1210

74:                                               ; preds = %70
  %75 = add nsw i32 %53, 1, !dbg !1211
  store i32 %75, i32* @optind, align 4, !dbg !1211, !tbaa !1145
  call void @llvm.dbg.value(metadata i8* undef, metadata !1118, metadata !DIExpression()), !dbg !1129
  br label %76, !dbg !1212

76:                                               ; preds = %58, %74
  %77 = phi i32 [ %53, %58 ], [ %75, %74 ], !dbg !1213
  %78 = icmp slt i32 %77, %0, !dbg !1215
  br i1 %78, label %81, label %79, !dbg !1216

79:                                               ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 5) #18, !dbg !1217
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #18, !dbg !1219
  call void @usage(i32 1) #23, !dbg !1220
  unreachable, !dbg !1220

81:                                               ; preds = %76
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 5) #18, !dbg !1221
  %83 = load i8*, i8** @program_name, align 8, !dbg !1221, !tbaa !1064
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %82, i8* %83) #18, !dbg !1221
  unreachable, !dbg !1221
}

; Function Attrs: nounwind
declare !dbg !84 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !87 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !90 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !97 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !112 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1223 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1225, metadata !DIExpression()), !dbg !1226
  store i8* %0, i8** @file_name, align 8, !dbg !1227, !tbaa !1064
  ret void, !dbg !1228
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1229 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1233, metadata !DIExpression()), !dbg !1234
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1235, !tbaa !1236
  ret void, !dbg !1238
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1239 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1244, !tbaa !1064
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1245
  %3 = icmp eq i32 %2, 0, !dbg !1246
  br i1 %3, label %22, label %4, !dbg !1247

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1248, !tbaa !1236, !range !1249
  %6 = icmp eq i8 %5, 0, !dbg !1248
  br i1 %6, label %11, label %7, !dbg !1250

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1251
  %9 = load i32, i32* %8, align 4, !dbg !1251, !tbaa !1145
  %10 = icmp eq i32 %9, 32, !dbg !1252
  br i1 %10, label %22, label %11, !dbg !1253

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 5) #18, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %12, metadata !1241, metadata !DIExpression()), !dbg !1255
  %13 = load i8*, i8** @file_name, align 8, !dbg !1256, !tbaa !1064
  %14 = icmp eq i8* %13, null, !dbg !1256
  %15 = tail call i32* @__errno_location() #24, !dbg !1258
  %16 = load i32, i32* %15, align 4, !dbg !1258, !tbaa !1145
  br i1 %14, label %19, label %17, !dbg !1259

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1260
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1261
  br label %20, !dbg !1261

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.49, i64 0, i64 0), i8* %12) #18, !dbg !1262
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1263, !tbaa !1145
  tail call void @_exit(i32 %21) #22, !dbg !1264
  unreachable, !dbg !1264

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1265, !tbaa !1064
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1267
  %25 = icmp eq i32 %24, 0, !dbg !1268
  br i1 %25, label %28, label %26, !dbg !1269

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1270, !tbaa !1145
  tail call void @_exit(i32 %27) #22, !dbg !1271
  unreachable, !dbg !1271

28:                                               ; preds = %22
  ret void, !dbg !1272
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1273 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1275, metadata !DIExpression()), !dbg !1278
  %2 = icmp eq i8* %0, null, !dbg !1279
  br i1 %2, label %3, label %6, !dbg !1281

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1282, !tbaa !1064
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1284
  tail call void @abort() #22, !dbg !1285
  unreachable, !dbg !1285

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1286
  call void @llvm.dbg.value(metadata i8* %7, metadata !1276, metadata !DIExpression()), !dbg !1278
  %8 = icmp eq i8* %7, null, !dbg !1287
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1288
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1288
  call void @llvm.dbg.value(metadata i8* %10, metadata !1277, metadata !DIExpression()), !dbg !1278
  %11 = ptrtoint i8* %10 to i64, !dbg !1289
  %12 = ptrtoint i8* %0 to i64, !dbg !1289
  %13 = sub i64 %11, %12, !dbg !1289
  %14 = icmp sgt i64 %13, 6, !dbg !1291
  br i1 %14, label %15, label %24, !dbg !1292

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1293
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #21, !dbg !1294
  %18 = icmp eq i32 %17, 0, !dbg !1295
  br i1 %18, label %19, label %24, !dbg !1296

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1275, metadata !DIExpression()), !dbg !1278
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #21, !dbg !1297
  %21 = icmp eq i32 %20, 0, !dbg !1300
  br i1 %21, label %22, label %24, !dbg !1301

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1302
  call void @llvm.dbg.value(metadata i8* %23, metadata !1275, metadata !DIExpression()), !dbg !1278
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1304, !tbaa !1064
  br label %24, !dbg !1305

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1275, metadata !DIExpression()), !dbg !1278
  store i8* %25, i8** @program_name, align 8, !dbg !1306, !tbaa !1064
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1307, !tbaa !1064
  ret void, !dbg !1308
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1309 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1314, metadata !DIExpression()), !dbg !1317
  %2 = tail call i32* @__errno_location() #24, !dbg !1318
  %3 = load i32, i32* %2, align 4, !dbg !1318, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %3, metadata !1315, metadata !DIExpression()), !dbg !1317
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1319
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1319
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1319
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1320
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1320
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i32 %3, i32* %2, align 4, !dbg !1321, !tbaa !1145
  ret %struct.quoting_options* %8, !dbg !1322
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1323 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1327, metadata !DIExpression()), !dbg !1328
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1329
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1329
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1330
  %5 = load i32, i32* %4, align 8, !dbg !1330, !tbaa !1331
  ret i32 %5, !dbg !1333
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1334 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1338, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %1, metadata !1339, metadata !DIExpression()), !dbg !1340
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1341
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1341
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1342
  store i32 %1, i32* %5, align 8, !dbg !1343, !tbaa !1331
  ret void, !dbg !1344
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1345 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1349, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %1, metadata !1350, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 %2, metadata !1351, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 %1, metadata !1352, metadata !DIExpression()), !dbg !1357
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1358
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1358
  %6 = lshr i8 %1, 5, !dbg !1359
  %7 = zext i8 %6 to i64, !dbg !1359
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1360
  call void @llvm.dbg.value(metadata i32* %8, metadata !1353, metadata !DIExpression()), !dbg !1357
  %9 = and i8 %1, 31, !dbg !1361
  %10 = zext i8 %9 to i32, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %10, metadata !1355, metadata !DIExpression()), !dbg !1357
  %11 = load i32, i32* %8, align 4, !dbg !1362, !tbaa !1145
  %12 = lshr i32 %11, %10, !dbg !1363
  %13 = and i32 %12, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i32 %13, metadata !1356, metadata !DIExpression()), !dbg !1357
  %14 = and i32 %2, 1, !dbg !1365
  %15 = xor i32 %13, %14, !dbg !1366
  %16 = shl i32 %15, %10, !dbg !1367
  %17 = xor i32 %16, %11, !dbg !1368
  store i32 %17, i32* %8, align 4, !dbg !1368, !tbaa !1145
  ret i32 %13, !dbg !1369
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1370 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i32 %1, metadata !1375, metadata !DIExpression()), !dbg !1377
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1378
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1380
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1374, metadata !DIExpression()), !dbg !1377
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1381
  %6 = load i32, i32* %5, align 4, !dbg !1381, !tbaa !1382
  call void @llvm.dbg.value(metadata i32 %6, metadata !1376, metadata !DIExpression()), !dbg !1377
  store i32 %1, i32* %5, align 4, !dbg !1383, !tbaa !1382
  ret i32 %6, !dbg !1384
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1385 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1389, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %1, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %2, metadata !1391, metadata !DIExpression()), !dbg !1392
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1393
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1389, metadata !DIExpression()), !dbg !1392
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1396
  store i32 10, i32* %6, align 8, !dbg !1397, !tbaa !1331
  %7 = icmp ne i8* %1, null, !dbg !1398
  %8 = icmp ne i8* %2, null, !dbg !1400
  %9 = and i1 %7, %8, !dbg !1401
  br i1 %9, label %11, label %10, !dbg !1401

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1402
  unreachable, !dbg !1402

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1403
  store i8* %1, i8** %12, align 8, !dbg !1404, !tbaa !1405
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1406
  store i8* %2, i8** %13, align 8, !dbg !1407, !tbaa !1408
  ret void, !dbg !1409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1414, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %1, metadata !1415, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8* %2, metadata !1416, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %3, metadata !1417, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1418, metadata !DIExpression()), !dbg !1422
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1423
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1423
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1419, metadata !DIExpression()), !dbg !1422
  %8 = tail call i32* @__errno_location() #24, !dbg !1424
  %9 = load i32, i32* %8, align 4, !dbg !1424, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %9, metadata !1420, metadata !DIExpression()), !dbg !1422
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1425
  %11 = load i32, i32* %10, align 8, !dbg !1425, !tbaa !1331
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1426
  %13 = load i32, i32* %12, align 4, !dbg !1426, !tbaa !1382
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1427
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1428
  %16 = load i8*, i8** %15, align 8, !dbg !1428, !tbaa !1405
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1429
  %18 = load i8*, i8** %17, align 8, !dbg !1429, !tbaa !1408
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %19, metadata !1421, metadata !DIExpression()), !dbg !1422
  store i32 %9, i32* %8, align 4, !dbg !1431, !tbaa !1145
  ret i64 %19, !dbg !1432
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1433 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1439, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %1, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %2, metadata !1441, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %3, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %4, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %5, metadata !1444, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32* %6, metadata !1445, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %7, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %8, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* null, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1452, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 0, metadata !1453, metadata !DIExpression()), !dbg !1497
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1498
  %14 = icmp eq i64 %13, 1, !dbg !1499
  call void @llvm.dbg.value(metadata i1 %14, metadata !1454, metadata !DIExpression()), !dbg !1497
  %15 = lshr i32 %5, 1, !dbg !1500
  %16 = trunc i32 %15 to i8, !dbg !1500
  %17 = and i8 %16, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i8 %17, metadata !1455, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 0, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 0, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1458, metadata !DIExpression()), !dbg !1497
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1501
  %19 = and i32 %5, 4, !dbg !1503
  %20 = icmp eq i32 %19, 0, !dbg !1503
  %21 = and i32 %5, 1, !dbg !1506
  %22 = icmp eq i32 %21, 0, !dbg !1506
  %23 = bitcast i64* %10 to i8*, !dbg !1509
  %24 = bitcast i32* %12 to i8*, !dbg !1510
  %25 = icmp eq i32* %6, null, !dbg !1511
  br label %26, !dbg !1513

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1514
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1515
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1516
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1517
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1497
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1518
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1519
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1520
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %38, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %37, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %36, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %35, metadata !1455, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %34, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %33, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %32, metadata !1452, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %31, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %30, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %29, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %28, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %27, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.label(metadata !1491), !dbg !1521
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
  ], !dbg !1522

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1455, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %35, metadata !1455, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 5, metadata !1443, metadata !DIExpression()), !dbg !1497
  br label %92, !dbg !1523

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1455, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 5, metadata !1443, metadata !DIExpression()), !dbg !1497
  %42 = and i8 %35, 1, !dbg !1525
  %43 = icmp eq i8 %42, 0, !dbg !1525
  br i1 %43, label %44, label %92, !dbg !1523

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1527
  br i1 %45, label %92, label %46, !dbg !1530

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1527, !tbaa !1531
  br label %92, !dbg !1527

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %27), !dbg !1532
  call void @llvm.dbg.value(metadata i8* %48, metadata !1446, metadata !DIExpression()), !dbg !1497
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %27), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %49, metadata !1447, metadata !DIExpression()), !dbg !1497
  br label %50, !dbg !1537

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %51, metadata !1446, metadata !DIExpression()), !dbg !1497
  %53 = and i8 %35, 1, !dbg !1538
  %54 = icmp eq i8 %53, 0, !dbg !1538
  br i1 %54, label %55, label %70, !dbg !1540

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1449, metadata !DIExpression()), !dbg !1497
  %56 = load i8, i8* %51, align 1, !dbg !1541, !tbaa !1531
  %57 = icmp eq i8 %56, 0, !dbg !1544
  br i1 %57, label %70, label %58, !dbg !1544

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %61, metadata !1449, metadata !DIExpression()), !dbg !1497
  %62 = icmp ult i64 %61, %39, !dbg !1545
  br i1 %62, label %63, label %65, !dbg !1548

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1545
  store i8 %59, i8* %64, align 1, !dbg !1545, !tbaa !1531
  br label %65, !dbg !1545

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %66, metadata !1449, metadata !DIExpression()), !dbg !1497
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %67, metadata !1451, metadata !DIExpression()), !dbg !1497
  %68 = load i8, i8* %67, align 1, !dbg !1541, !tbaa !1531
  %69 = icmp eq i8 %68, 0, !dbg !1544
  br i1 %69, label %70, label %58, !dbg !1544, !llvm.loop !1550

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1552
  call void @llvm.dbg.value(metadata i64 %71, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %52, metadata !1451, metadata !DIExpression()), !dbg !1497
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %72, metadata !1452, metadata !DIExpression()), !dbg !1497
  br label %92, !dbg !1554

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1453, metadata !DIExpression()), !dbg !1497
  br label %74, !dbg !1555

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %75, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1455, metadata !DIExpression()), !dbg !1497
  br label %76, !dbg !1556

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1517
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %78, metadata !1455, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %77, metadata !1453, metadata !DIExpression()), !dbg !1497
  %79 = and i8 %78, 1, !dbg !1557
  %80 = icmp eq i8 %79, 0, !dbg !1557
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1559
  br label %82, !dbg !1559

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1497
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1500
  call void @llvm.dbg.value(metadata i8 %84, metadata !1455, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %83, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  %85 = and i8 %84, 1, !dbg !1560
  %86 = icmp eq i8 %85, 0, !dbg !1560
  br i1 %86, label %87, label %92, !dbg !1562

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1563
  br i1 %88, label %92, label %89, !dbg !1566

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1563, !tbaa !1531
  br label %92, !dbg !1563

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1455, metadata !DIExpression()), !dbg !1497
  br label %92, !dbg !1567

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1568
  unreachable, !dbg !1568

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1552
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %40 ], !dbg !1497
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1497
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1497
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %100, metadata !1455, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %98, metadata !1452, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %96, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %93, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1448, metadata !DIExpression()), !dbg !1497
  %101 = and i8 %99, 1, !dbg !1569
  %102 = icmp ne i8 %101, 0, !dbg !1569
  %103 = icmp ne i32 %93, 2, !dbg !1569
  %104 = and i1 %103, %102, !dbg !1569
  %105 = icmp ne i64 %98, 0, !dbg !1569
  %106 = and i1 %105, %104, !dbg !1569
  %107 = icmp ugt i64 %98, 1, !dbg !1569
  %108 = and i8 %100, 1, !dbg !1571
  %109 = icmp eq i8 %108, 0, !dbg !1571
  %110 = icmp eq i32 %93, 2, !dbg !1574
  %111 = or i1 %103, %109, !dbg !1576
  %112 = icmp ne i8 %108, 0, !dbg !1578
  %113 = and i1 %110, %112, !dbg !1578
  %114 = xor i1 %102, true, !dbg !1579
  %115 = xor i1 %104, true, !dbg !1511
  %116 = and i1 %109, %115, !dbg !1511
  %117 = or i1 %25, %116, !dbg !1511
  %118 = and i8 %99, %100, !dbg !1580
  %119 = and i8 %118, 1, !dbg !1580
  %120 = icmp ne i8 %119, 0, !dbg !1580
  %121 = and i1 %120, %105, !dbg !1580
  br label %122, !dbg !1582

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1583
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1552
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1514
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1518
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1519
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1520
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %126, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %123, metadata !1448, metadata !DIExpression()), !dbg !1497
  %131 = icmp eq i64 %126, -1, !dbg !1584
  br i1 %131, label %132, label %136, !dbg !1585

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1586
  %134 = load i8, i8* %133, align 1, !dbg !1586, !tbaa !1531
  %135 = icmp eq i8 %134, 0, !dbg !1587
  br i1 %135, label %581, label %138, !dbg !1588

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1589
  br i1 %137, label %581, label %138, !dbg !1588

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1464, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 0, metadata !1465, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 0, metadata !1466, metadata !DIExpression()), !dbg !1590
  br i1 %106, label %139, label %154, !dbg !1591

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1592
  %141 = and i1 %107, %131, !dbg !1593
  br i1 %141, label %142, label %144, !dbg !1593

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %143, metadata !1442, metadata !DIExpression()), !dbg !1497
  br label %144, !dbg !1595

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1442, metadata !DIExpression()), !dbg !1497
  %146 = icmp ugt i64 %140, %145, !dbg !1596
  br i1 %146, label %154, label %147, !dbg !1597

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1598
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1599
  %150 = icmp ne i32 %149, 0, !dbg !1600
  %151 = or i1 %150, %109, !dbg !1601
  %152 = xor i1 %150, true, !dbg !1601
  %153 = zext i1 %152 to i8, !dbg !1601
  br i1 %151, label %154, label %639, !dbg !1601

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %156, metadata !1464, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %155, metadata !1442, metadata !DIExpression()), !dbg !1497
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1602
  %158 = load i8, i8* %157, align 1, !dbg !1602, !tbaa !1531
  call void @llvm.dbg.value(metadata i8 %158, metadata !1459, metadata !DIExpression()), !dbg !1590
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
  ], !dbg !1603

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1604

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1605

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1465, metadata !DIExpression()), !dbg !1590
  %162 = and i8 %127, 1, !dbg !1608
  %163 = icmp eq i8 %162, 0, !dbg !1608
  %164 = and i1 %110, %163, !dbg !1608
  br i1 %164, label %165, label %181, !dbg !1608

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1610
  br i1 %166, label %167, label %169, !dbg !1614

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1610
  store i8 39, i8* %168, align 1, !dbg !1610, !tbaa !1531
  br label %169, !dbg !1610

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %170, metadata !1449, metadata !DIExpression()), !dbg !1497
  %171 = icmp ult i64 %170, %130, !dbg !1615
  br i1 %171, label %172, label %174, !dbg !1618

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1615
  store i8 36, i8* %173, align 1, !dbg !1615, !tbaa !1531
  br label %174, !dbg !1615

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %175, metadata !1449, metadata !DIExpression()), !dbg !1497
  %176 = icmp ult i64 %175, %130, !dbg !1619
  br i1 %176, label %177, label %179, !dbg !1622

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1619
  store i8 39, i8* %178, align 1, !dbg !1619, !tbaa !1531
  br label %179, !dbg !1619

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %180, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1456, metadata !DIExpression()), !dbg !1497
  br label %181, !dbg !1623

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1497
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %183, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %182, metadata !1449, metadata !DIExpression()), !dbg !1497
  %184 = icmp ult i64 %182, %130, !dbg !1624
  br i1 %184, label %185, label %187, !dbg !1627

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1624
  store i8 92, i8* %186, align 1, !dbg !1624, !tbaa !1531
  br label %187, !dbg !1624

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %188, metadata !1449, metadata !DIExpression()), !dbg !1497
  br i1 %103, label %189, label %463, !dbg !1628

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1630
  %191 = icmp ult i64 %190, %155, !dbg !1631
  br i1 %191, label %192, label %463, !dbg !1632

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1633
  %194 = load i8, i8* %193, align 1, !dbg !1633, !tbaa !1531
  %195 = add i8 %194, -48, !dbg !1634
  %196 = icmp ult i8 %195, 10, !dbg !1634
  br i1 %196, label %197, label %463, !dbg !1634

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1635
  br i1 %198, label %199, label %201, !dbg !1639

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1635
  store i8 48, i8* %200, align 1, !dbg !1635, !tbaa !1531
  br label %201, !dbg !1635

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %202, metadata !1449, metadata !DIExpression()), !dbg !1497
  %203 = icmp ult i64 %202, %130, !dbg !1640
  br i1 %203, label %204, label %206, !dbg !1643

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1640
  store i8 48, i8* %205, align 1, !dbg !1640, !tbaa !1531
  br label %206, !dbg !1640

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %207, metadata !1449, metadata !DIExpression()), !dbg !1497
  br label %463, !dbg !1644

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1645

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1646

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1647

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1648

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1649
  %214 = icmp ult i64 %213, %155, !dbg !1650
  br i1 %214, label %215, label %463, !dbg !1651

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1652
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1653
  %218 = load i8, i8* %217, align 1, !dbg !1653, !tbaa !1531
  %219 = icmp eq i8 %218, 63, !dbg !1654
  br i1 %219, label %220, label %463, !dbg !1655

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1656
  %222 = load i8, i8* %221, align 1, !dbg !1656, !tbaa !1531
  %223 = sext i8 %222 to i32, !dbg !1656
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
  ], !dbg !1657

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1658

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1459, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %213, metadata !1448, metadata !DIExpression()), !dbg !1497
  %226 = icmp ult i64 %124, %130, !dbg !1660
  br i1 %226, label %227, label %229, !dbg !1663

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1660
  store i8 63, i8* %228, align 1, !dbg !1660, !tbaa !1531
  br label %229, !dbg !1660

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %230, metadata !1449, metadata !DIExpression()), !dbg !1497
  %231 = icmp ult i64 %230, %130, !dbg !1664
  br i1 %231, label %232, label %234, !dbg !1667

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1664
  store i8 34, i8* %233, align 1, !dbg !1664, !tbaa !1531
  br label %234, !dbg !1664

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %235, metadata !1449, metadata !DIExpression()), !dbg !1497
  %236 = icmp ult i64 %235, %130, !dbg !1668
  br i1 %236, label %237, label %239, !dbg !1671

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1668
  store i8 34, i8* %238, align 1, !dbg !1668, !tbaa !1531
  br label %239, !dbg !1668

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %240, metadata !1449, metadata !DIExpression()), !dbg !1497
  %241 = icmp ult i64 %240, %130, !dbg !1672
  br i1 %241, label %242, label %244, !dbg !1675

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1672
  store i8 63, i8* %243, align 1, !dbg !1672, !tbaa !1531
  br label %244, !dbg !1672

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %245, metadata !1449, metadata !DIExpression()), !dbg !1497
  br label %463, !dbg !1676

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1463, metadata !DIExpression()), !dbg !1590
  br label %256, !dbg !1677

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1463, metadata !DIExpression()), !dbg !1590
  br label %256, !dbg !1678

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1463, metadata !DIExpression()), !dbg !1590
  br label %254, !dbg !1679

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1463, metadata !DIExpression()), !dbg !1590
  br label %254, !dbg !1680

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1463, metadata !DIExpression()), !dbg !1590
  br label %256, !dbg !1681

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1463, metadata !DIExpression()), !dbg !1590
  br i1 %110, label %252, label %253, !dbg !1682

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1683

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1686

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1687
  call void @llvm.dbg.value(metadata i8 %255, metadata !1463, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.label(metadata !1492), !dbg !1688
  br i1 %111, label %256, label %625, !dbg !1689

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1687
  call void @llvm.dbg.value(metadata i8 %257, metadata !1463, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.label(metadata !1493), !dbg !1691
  br i1 %102, label %488, label %463, !dbg !1692

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1693

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1694, !tbaa !1531
  %261 = icmp eq i8 %260, 0, !dbg !1695
  br i1 %261, label %262, label %463, !dbg !1696

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1697
  br i1 %263, label %264, label %463, !dbg !1699

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1466, metadata !DIExpression()), !dbg !1590
  br label %265, !dbg !1700

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %266, metadata !1466, metadata !DIExpression()), !dbg !1590
  br i1 %111, label %463, label %625, !dbg !1701

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1466, metadata !DIExpression()), !dbg !1590
  br i1 %110, label %268, label %463, !dbg !1702

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1703

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1705
  %271 = icmp ne i64 %125, 0, !dbg !1707
  %272 = or i1 %271, %270, !dbg !1708
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1708
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %274, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %273, metadata !1450, metadata !DIExpression()), !dbg !1497
  %275 = icmp ult i64 %124, %274, !dbg !1709
  br i1 %275, label %276, label %278, !dbg !1712

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1709
  store i8 39, i8* %277, align 1, !dbg !1709, !tbaa !1531
  br label %278, !dbg !1709

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %279, metadata !1449, metadata !DIExpression()), !dbg !1497
  %280 = icmp ult i64 %279, %274, !dbg !1713
  br i1 %280, label %281, label %283, !dbg !1716

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1713
  store i8 92, i8* %282, align 1, !dbg !1713, !tbaa !1531
  br label %283, !dbg !1713

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %284, metadata !1449, metadata !DIExpression()), !dbg !1497
  %285 = icmp ult i64 %284, %274, !dbg !1717
  br i1 %285, label %286, label %288, !dbg !1720

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1717
  store i8 39, i8* %287, align 1, !dbg !1717, !tbaa !1531
  br label %288, !dbg !1717

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %289, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 0, metadata !1456, metadata !DIExpression()), !dbg !1497
  br label %463, !dbg !1721

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1722

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1467, metadata !DIExpression()), !dbg !1723
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1724
  %293 = load i16*, i16** %292, align 8, !dbg !1724, !tbaa !1064
  %294 = zext i8 %158 to i64, !dbg !1724
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1724
  %296 = load i16, i16* %295, align 2, !dbg !1724, !tbaa !1726
  %297 = lshr i16 %296, 14, !dbg !1728
  %298 = trunc i16 %297 to i8, !dbg !1728
  %299 = and i8 %298, 1, !dbg !1728
  call void @llvm.dbg.value(metadata i8 %299, metadata !1470, metadata !DIExpression()), !dbg !1723
  br label %355, !dbg !1729

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1730
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1471, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8* %23, metadata !1732, metadata !DIExpression()) #18, !dbg !1740
  call void @llvm.dbg.value(metadata i32 0, metadata !1738, metadata !DIExpression()) #18, !dbg !1740
  call void @llvm.dbg.value(metadata i64 8, metadata !1739, metadata !DIExpression()) #18, !dbg !1740
  store i64 0, i64* %10, align 8, !dbg !1742
  call void @llvm.dbg.value(metadata i64 0, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 1, metadata !1470, metadata !DIExpression()), !dbg !1723
  %301 = icmp eq i64 %155, -1, !dbg !1743
  br i1 %301, label %302, label %304, !dbg !1745

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %303, metadata !1442, metadata !DIExpression()), !dbg !1497
  br label %304, !dbg !1747

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1590
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  br label %306, !dbg !1748

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1749
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %308, metadata !1470, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1751
  %309 = add i64 %307, %123, !dbg !1752
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1753
  %311 = sub i64 %305, %309, !dbg !1754
  call void @llvm.dbg.value(metadata i32* %12, metadata !1477, metadata !DIExpression(DW_OP_deref)), !dbg !1510
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %312, metadata !1480, metadata !DIExpression()), !dbg !1510
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1756

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  %314 = icmp ugt i64 %305, %309, !dbg !1757
  br i1 %314, label %315, label %340, !dbg !1759

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1760
  br label %317, !dbg !1760

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1467, metadata !DIExpression()), !dbg !1723
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1761
  %321 = load i8, i8* %320, align 1, !dbg !1761, !tbaa !1531
  %322 = icmp eq i8 %321, 0, !dbg !1759
  br i1 %322, label %340, label %323, !dbg !1760

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %324, metadata !1467, metadata !DIExpression()), !dbg !1723
  %325 = add i64 %324, %123, !dbg !1763
  %326 = icmp ult i64 %325, %305, !dbg !1757
  br i1 %326, label %317, label %340, !dbg !1759, !llvm.loop !1764

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1765
  %329 = and i1 %113, %328, !dbg !1768
  call void @llvm.dbg.value(metadata i64 1, metadata !1481, metadata !DIExpression()), !dbg !1769
  br i1 %329, label %330, label %343, !dbg !1768

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1481, metadata !DIExpression()), !dbg !1769
  %332 = add i64 %331, %309, !dbg !1770
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1771
  %334 = load i8, i8* %333, align 1, !dbg !1771, !tbaa !1531
  %335 = sext i8 %334 to i32, !dbg !1771
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1772

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %337, metadata !1481, metadata !DIExpression()), !dbg !1769
  %338 = icmp eq i64 %337, %312, !dbg !1765
  br i1 %338, label %343, label %330, !dbg !1774, !llvm.loop !1775

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 %308, metadata !1470, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %307, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 %308, metadata !1470, metadata !DIExpression()), !dbg !1723
  br label %340, !dbg !1777

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1777
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1778, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %344, metadata !1477, metadata !DIExpression()), !dbg !1510
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !1780
  %346 = icmp eq i32 %345, 0, !dbg !1780
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1781
  call void @llvm.dbg.value(metadata i8 %347, metadata !1470, metadata !DIExpression()), !dbg !1723
  %348 = add i64 %312, %307, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %348, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 %347, metadata !1470, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %348, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1777
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1783
  %350 = icmp eq i32 %349, 0, !dbg !1784
  br i1 %350, label %306, label %351, !dbg !1785, !llvm.loop !1786

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1788
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 2, metadata !1443, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %99, metadata !1453, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %305, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1777
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1788
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1590
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1789
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1789
  call void @llvm.dbg.value(metadata i8 %358, metadata !1470, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %357, metadata !1467, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %356, metadata !1442, metadata !DIExpression()), !dbg !1497
  %359 = and i8 %358, 1, !dbg !1790
  %360 = icmp ne i8 %359, 0, !dbg !1790
  call void @llvm.dbg.value(metadata i8 %359, metadata !1466, metadata !DIExpression()), !dbg !1590
  %361 = icmp ult i64 %357, 2, !dbg !1791
  %362 = or i1 %360, %114, !dbg !1792
  %363 = and i1 %361, %362, !dbg !1793
  br i1 %363, label %463, label %364, !dbg !1793

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %365, metadata !1488, metadata !DIExpression()), !dbg !1795
  br label %366, !dbg !1796

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1583
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1497
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1518
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1590
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1590
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1797
  call void @llvm.dbg.value(metadata i8 %372, metadata !1465, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %371, metadata !1464, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %370, metadata !1459, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %369, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %368, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %367, metadata !1448, metadata !DIExpression()), !dbg !1497
  br i1 %362, label %419, label %373, !dbg !1798

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1803

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1465, metadata !DIExpression()), !dbg !1590
  %375 = and i8 %369, 1, !dbg !1806
  %376 = icmp eq i8 %375, 0, !dbg !1806
  %377 = and i1 %110, %376, !dbg !1806
  br i1 %377, label %378, label %394, !dbg !1806

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1808
  br i1 %379, label %380, label %382, !dbg !1812

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1808
  store i8 39, i8* %381, align 1, !dbg !1808, !tbaa !1531
  br label %382, !dbg !1808

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %383, metadata !1449, metadata !DIExpression()), !dbg !1497
  %384 = icmp ult i64 %383, %130, !dbg !1813
  br i1 %384, label %385, label %387, !dbg !1816

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1813
  store i8 36, i8* %386, align 1, !dbg !1813, !tbaa !1531
  br label %387, !dbg !1813

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %388, metadata !1449, metadata !DIExpression()), !dbg !1497
  %389 = icmp ult i64 %388, %130, !dbg !1817
  br i1 %389, label %390, label %392, !dbg !1820

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1817
  store i8 39, i8* %391, align 1, !dbg !1817, !tbaa !1531
  br label %392, !dbg !1817

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %393, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1456, metadata !DIExpression()), !dbg !1497
  br label %394, !dbg !1821

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1497
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %396, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %395, metadata !1449, metadata !DIExpression()), !dbg !1497
  %397 = icmp ult i64 %395, %130, !dbg !1822
  br i1 %397, label %398, label %400, !dbg !1825

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1822
  store i8 92, i8* %399, align 1, !dbg !1822, !tbaa !1531
  br label %400, !dbg !1822

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %401, metadata !1449, metadata !DIExpression()), !dbg !1497
  %402 = icmp ult i64 %401, %130, !dbg !1826
  br i1 %402, label %403, label %407, !dbg !1829

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1826
  %405 = or i8 %404, 48, !dbg !1826
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1826
  store i8 %405, i8* %406, align 1, !dbg !1826, !tbaa !1531
  br label %407, !dbg !1826

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %408, metadata !1449, metadata !DIExpression()), !dbg !1497
  %409 = icmp ult i64 %408, %130, !dbg !1830
  br i1 %409, label %410, label %415, !dbg !1833

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1830
  %412 = and i8 %411, 7, !dbg !1830
  %413 = or i8 %412, 48, !dbg !1830
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1830
  store i8 %413, i8* %414, align 1, !dbg !1830, !tbaa !1531
  br label %415, !dbg !1830

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %416, metadata !1449, metadata !DIExpression()), !dbg !1497
  %417 = and i8 %370, 7, !dbg !1834
  %418 = or i8 %417, 48, !dbg !1835
  call void @llvm.dbg.value(metadata i8 %418, metadata !1459, metadata !DIExpression()), !dbg !1590
  br label %428, !dbg !1836

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1837
  %421 = icmp eq i8 %420, 0, !dbg !1837
  br i1 %421, label %428, label %422, !dbg !1839

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1840
  br i1 %423, label %424, label %426, !dbg !1844

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1840
  store i8 92, i8* %425, align 1, !dbg !1840, !tbaa !1531
  br label %426, !dbg !1840

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %427, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 0, metadata !1464, metadata !DIExpression()), !dbg !1590
  br label %428, !dbg !1845

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1497
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1518
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1590
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1590
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %433, metadata !1465, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %432, metadata !1464, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %431, metadata !1459, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %430, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %429, metadata !1449, metadata !DIExpression()), !dbg !1497
  %434 = add i64 %367, 1, !dbg !1846
  %435 = icmp ugt i64 %365, %434, !dbg !1848
  br i1 %435, label %436, label %526, !dbg !1849

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1850
  %438 = icmp ne i8 %437, 0, !dbg !1850
  %439 = and i8 %433, 1, !dbg !1850
  %440 = icmp eq i8 %439, 0, !dbg !1850
  %441 = and i1 %438, %440, !dbg !1850
  br i1 %441, label %442, label %453, !dbg !1850

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1853
  br i1 %443, label %444, label %446, !dbg !1857

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1853
  store i8 39, i8* %445, align 1, !dbg !1853, !tbaa !1531
  br label %446, !dbg !1853

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %447, metadata !1449, metadata !DIExpression()), !dbg !1497
  %448 = icmp ult i64 %447, %130, !dbg !1858
  br i1 %448, label %449, label %451, !dbg !1861

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1858
  store i8 39, i8* %450, align 1, !dbg !1858, !tbaa !1531
  br label %451, !dbg !1858

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %452, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 0, metadata !1456, metadata !DIExpression()), !dbg !1497
  br label %453, !dbg !1862

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1863
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %455, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %454, metadata !1449, metadata !DIExpression()), !dbg !1497
  %456 = icmp ult i64 %454, %130, !dbg !1864
  br i1 %456, label %457, label %459, !dbg !1867

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1864
  store i8 %431, i8* %458, align 1, !dbg !1864, !tbaa !1531
  br label %459, !dbg !1864

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %460, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %434, metadata !1448, metadata !DIExpression()), !dbg !1497
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1868
  %462 = load i8, i8* %461, align 1, !dbg !1868, !tbaa !1531
  call void @llvm.dbg.value(metadata i8 %462, metadata !1459, metadata !DIExpression()), !dbg !1590
  br label %366, !dbg !1869, !llvm.loop !1870

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1583
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1497
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1514
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1873
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1497
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1497
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1590
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1590
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1590
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %472, metadata !1466, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %471, metadata !1465, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %156, metadata !1464, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %470, metadata !1459, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %469, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %468, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %467, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %466, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %465, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %464, metadata !1448, metadata !DIExpression()), !dbg !1497
  br i1 %117, label %486, label %474, !dbg !1874

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1875
  %476 = zext i8 %475 to i64, !dbg !1875
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1876
  %478 = load i32, i32* %477, align 4, !dbg !1876, !tbaa !1145
  %479 = and i8 %470, 31, !dbg !1877
  %480 = zext i8 %479 to i32, !dbg !1877
  %481 = shl nuw i32 1, %480, !dbg !1878
  %482 = and i32 %478, %481, !dbg !1878
  %483 = icmp eq i32 %482, 0, !dbg !1878
  %484 = icmp eq i8 %156, 0, !dbg !1879
  %485 = and i1 %484, %483, !dbg !1880
  br i1 %485, label %526, label %488, !dbg !1880

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1879
  br i1 %487, label %526, label %488, !dbg !1881

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1882
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1497
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1514
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1873
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1518
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1519
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1590
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1590
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %496, metadata !1466, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %495, metadata !1459, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %494, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %493, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %492, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %491, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %490, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %489, metadata !1448, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.label(metadata !1494), !dbg !1883
  br i1 %109, label %498, label %629, !dbg !1884

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1465, metadata !DIExpression()), !dbg !1590
  %499 = and i8 %493, 1, !dbg !1886
  %500 = icmp eq i8 %499, 0, !dbg !1886
  %501 = and i1 %110, %500, !dbg !1886
  br i1 %501, label %502, label %518, !dbg !1886

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1888
  br i1 %503, label %504, label %506, !dbg !1892

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1888
  store i8 39, i8* %505, align 1, !dbg !1888, !tbaa !1531
  br label %506, !dbg !1888

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %507, metadata !1449, metadata !DIExpression()), !dbg !1497
  %508 = icmp ult i64 %507, %497, !dbg !1893
  br i1 %508, label %509, label %511, !dbg !1896

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1893
  store i8 36, i8* %510, align 1, !dbg !1893, !tbaa !1531
  br label %511, !dbg !1893

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %512, metadata !1449, metadata !DIExpression()), !dbg !1497
  %513 = icmp ult i64 %512, %497, !dbg !1897
  br i1 %513, label %514, label %516, !dbg !1900

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1897
  store i8 39, i8* %515, align 1, !dbg !1897, !tbaa !1531
  br label %516, !dbg !1897

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %517, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 1, metadata !1456, metadata !DIExpression()), !dbg !1497
  br label %518, !dbg !1901

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1590
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %520, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %519, metadata !1449, metadata !DIExpression()), !dbg !1497
  %521 = icmp ult i64 %519, %497, !dbg !1902
  br i1 %521, label %522, label %524, !dbg !1905

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1902
  store i8 92, i8* %523, align 1, !dbg !1902, !tbaa !1531
  br label %524, !dbg !1902

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %525, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %536, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %535, metadata !1466, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %534, metadata !1465, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %533, metadata !1459, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %532, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %531, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %530, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %529, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %528, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %527, metadata !1448, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.label(metadata !1495), !dbg !1906
  br label %553, !dbg !1907

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1882
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1497
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1514
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1873
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1518
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1519
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1910
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1590
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1590
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %535, metadata !1466, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %534, metadata !1465, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %533, metadata !1459, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %532, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %531, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %530, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %529, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %528, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %527, metadata !1448, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.label(metadata !1495), !dbg !1906
  %537 = and i8 %531, 1, !dbg !1907
  %538 = icmp ne i8 %537, 0, !dbg !1907
  %539 = and i8 %534, 1, !dbg !1907
  %540 = icmp eq i8 %539, 0, !dbg !1907
  %541 = and i1 %538, %540, !dbg !1907
  br i1 %541, label %542, label %553, !dbg !1907

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1911
  br i1 %543, label %544, label %546, !dbg !1915

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1911
  store i8 39, i8* %545, align 1, !dbg !1911, !tbaa !1531
  br label %546, !dbg !1911

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %547, metadata !1449, metadata !DIExpression()), !dbg !1497
  %548 = icmp ult i64 %547, %536, !dbg !1916
  br i1 %548, label %549, label %551, !dbg !1919

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1916
  store i8 39, i8* %550, align 1, !dbg !1916, !tbaa !1531
  br label %551, !dbg !1916

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %552, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 0, metadata !1456, metadata !DIExpression()), !dbg !1497
  br label %553, !dbg !1920

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1590
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1497
  call void @llvm.dbg.value(metadata i8 %562, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %561, metadata !1449, metadata !DIExpression()), !dbg !1497
  %563 = icmp ult i64 %561, %554, !dbg !1921
  br i1 %563, label %564, label %566, !dbg !1924

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1921
  store i8 %556, i8* %565, align 1, !dbg !1921, !tbaa !1531
  br label %566, !dbg !1921

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %567, metadata !1449, metadata !DIExpression()), !dbg !1497
  %568 = and i8 %555, 1, !dbg !1925
  %569 = icmp eq i8 %568, 0, !dbg !1925
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1927
  call void @llvm.dbg.value(metadata i8 %570, metadata !1458, metadata !DIExpression()), !dbg !1497
  br label %571, !dbg !1928

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1882
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1497
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1514
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1873
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1518
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1497
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1520
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %578, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %577, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %576, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %575, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %574, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %573, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %572, metadata !1448, metadata !DIExpression()), !dbg !1497
  %580 = add i64 %572, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %580, metadata !1448, metadata !DIExpression()), !dbg !1497
  br label %122, !dbg !1930, !llvm.loop !1931

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %127, metadata !1456, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %128, metadata !1457, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %129, metadata !1458, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  %583 = icmp eq i64 %124, 0, !dbg !1933
  %584 = and i1 %110, %583, !dbg !1935
  %585 = xor i1 %584, true, !dbg !1935
  %586 = or i1 %109, %585, !dbg !1935
  br i1 %586, label %587, label %629, !dbg !1935

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1936
  %589 = xor i1 %588, true, !dbg !1936
  %590 = and i8 %128, 1, !dbg !1938
  %591 = icmp eq i8 %590, 0, !dbg !1938
  %592 = or i1 %591, %589, !dbg !1936
  br i1 %592, label %602, label %593, !dbg !1936

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1939
  %595 = icmp eq i8 %594, 0, !dbg !1939
  br i1 %595, label %598, label %596, !dbg !1942

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %94, metadata !1446, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %95, metadata !1447, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %125, metadata !1450, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %582, metadata !1442, metadata !DIExpression()), !dbg !1497
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1943
  br label %645, !dbg !1944

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !1945
  %600 = icmp ne i64 %125, 0, !dbg !1947
  %601 = and i1 %600, %599, !dbg !1948
  br i1 %601, label %26, label %602, !dbg !1948

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %130, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  %603 = icmp ne i8* %97, null, !dbg !1949
  %604 = and i1 %603, %109, !dbg !1951
  br i1 %604, label %605, label %620, !dbg !1951

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %124, metadata !1449, metadata !DIExpression()), !dbg !1497
  %606 = load i8, i8* %97, align 1, !dbg !1952, !tbaa !1531
  %607 = icmp eq i8 %606, 0, !dbg !1955
  br i1 %607, label %620, label %608, !dbg !1955

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1451, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %611, metadata !1449, metadata !DIExpression()), !dbg !1497
  %612 = icmp ult i64 %611, %130, !dbg !1956
  br i1 %612, label %613, label %615, !dbg !1959

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !1956
  store i8 %609, i8* %614, align 1, !dbg !1956, !tbaa !1531
  br label %615, !dbg !1956

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %616, metadata !1449, metadata !DIExpression()), !dbg !1497
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !1960
  call void @llvm.dbg.value(metadata i8* %617, metadata !1451, metadata !DIExpression()), !dbg !1497
  %618 = load i8, i8* %617, align 1, !dbg !1952, !tbaa !1531
  %619 = icmp eq i8 %618, 0, !dbg !1955
  br i1 %619, label %620, label %608, !dbg !1955, !llvm.loop !1961

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1552
  call void @llvm.dbg.value(metadata i64 %621, metadata !1449, metadata !DIExpression()), !dbg !1497
  %622 = icmp ult i64 %621, %130, !dbg !1963
  br i1 %622, label %623, label %645, !dbg !1965

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1966
  store i8 0, i8* %624, align 1, !dbg !1967, !tbaa !1531
  br label %645, !dbg !1966

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %630, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.label(metadata !1496), !dbg !1968
  %627 = icmp eq i8 %101, 0, !dbg !1969
  %628 = select i1 %627, i32 2, i32 4, !dbg !1969
  br label %635, !dbg !1969

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1440, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %630, metadata !1442, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.label(metadata !1496), !dbg !1968
  %632 = icmp eq i32 %93, 2, !dbg !1971
  %633 = icmp eq i8 %101, 0, !dbg !1969
  %634 = select i1 %633, i32 2, i32 4, !dbg !1969
  br i1 %632, label %635, label %639, !dbg !1969

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !1969

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1443, metadata !DIExpression()), !dbg !1497
  %643 = and i32 %5, -3, !dbg !1972
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !1973
  br label %645, !dbg !1974

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !1975
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1980, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 %1, metadata !1981, metadata !DIExpression()), !dbg !1984
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !1985
  call void @llvm.dbg.value(metadata i8* %3, metadata !1982, metadata !DIExpression()), !dbg !1984
  %4 = icmp eq i8* %3, %0, !dbg !1986
  br i1 %4, label %5, label %71, !dbg !1988

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %6, metadata !1983, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8* %6, metadata !1990, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8* undef, metadata !1996, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 85, metadata !1997, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 84, metadata !1998, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 70, metadata !1999, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 45, metadata !2000, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 56, metadata !2001, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !2003, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2006
  %7 = load i8, i8* %6, align 1, !dbg !2009, !tbaa !1531
  %8 = and i8 %7, -33, !dbg !2009
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2009

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2011, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8* undef, metadata !2016, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 84, metadata !2017, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 70, metadata !2018, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 45, metadata !2019, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 56, metadata !2020, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2025
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2029
  %11 = load i8, i8* %10, align 1, !dbg !2029, !tbaa !1531
  %12 = and i8 %11, -33, !dbg !2029
  %13 = icmp eq i8 %12, 84, !dbg !2029
  br i1 %13, label %14, label %68, !dbg !2029

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2031, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8* undef, metadata !2036, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 70, metadata !2037, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 45, metadata !2038, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 56, metadata !2039, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2044
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2048
  %16 = load i8, i8* %15, align 1, !dbg !2048, !tbaa !1531
  %17 = and i8 %16, -33, !dbg !2048
  %18 = icmp eq i8 %17, 70, !dbg !2048
  br i1 %18, label %19, label %68, !dbg !2048

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2050, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8* undef, metadata !2055, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 45, metadata !2056, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 56, metadata !2057, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2062
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2066
  %21 = load i8, i8* %20, align 1, !dbg !2066, !tbaa !1531
  %22 = icmp eq i8 %21, 45, !dbg !2066
  br i1 %22, label %23, label %68, !dbg !2068

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2069, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8* undef, metadata !2074, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 56, metadata !2075, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2080
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2084
  %25 = load i8, i8* %24, align 1, !dbg !2084, !tbaa !1531
  %26 = icmp eq i8 %25, 56, !dbg !2084
  br i1 %26, label %27, label %68, !dbg !2086

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2087, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* undef, metadata !2092, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 0, metadata !2096, metadata !DIExpression()), !dbg !2097
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2101
  %29 = load i8, i8* %28, align 1, !dbg !2101, !tbaa !1531
  %30 = icmp eq i8 %29, 0, !dbg !2101
  br i1 %30, label %31, label %68, !dbg !2103

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2104, !tbaa !1531
  %33 = icmp eq i8 %32, 96, !dbg !2105
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !2104
  br label %71, !dbg !2106

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2011, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* undef, metadata !2016, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 66, metadata !2017, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 49, metadata !2018, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 56, metadata !2019, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 48, metadata !2020, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 51, metadata !2021, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 48, metadata !2022, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2107
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2111
  %37 = load i8, i8* %36, align 1, !dbg !2111, !tbaa !1531
  %38 = and i8 %37, -33, !dbg !2111
  %39 = icmp eq i8 %38, 66, !dbg !2111
  br i1 %39, label %40, label %68, !dbg !2111

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2031, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8* undef, metadata !2036, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 49, metadata !2037, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 56, metadata !2038, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 48, metadata !2039, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 51, metadata !2040, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 48, metadata !2041, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2112
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2114
  %42 = load i8, i8* %41, align 1, !dbg !2114, !tbaa !1531
  %43 = icmp eq i8 %42, 49, !dbg !2114
  br i1 %43, label %44, label %68, !dbg !2115

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2050, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8* undef, metadata !2055, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 56, metadata !2056, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 48, metadata !2057, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 51, metadata !2058, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 48, metadata !2059, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2116
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2118
  %46 = load i8, i8* %45, align 1, !dbg !2118, !tbaa !1531
  %47 = icmp eq i8 %46, 56, !dbg !2118
  br i1 %47, label %48, label %68, !dbg !2119

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2069, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8* undef, metadata !2074, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 48, metadata !2075, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 51, metadata !2076, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 48, metadata !2077, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2120
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2122
  %50 = load i8, i8* %49, align 1, !dbg !2122, !tbaa !1531
  %51 = icmp eq i8 %50, 48, !dbg !2122
  br i1 %51, label %52, label %68, !dbg !2123

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2087, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* undef, metadata !2092, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 51, metadata !2093, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 48, metadata !2094, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2096, metadata !DIExpression()), !dbg !2124
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2126
  %54 = load i8, i8* %53, align 1, !dbg !2126, !tbaa !1531
  %55 = icmp eq i8 %54, 51, !dbg !2126
  br i1 %55, label %56, label %68, !dbg !2127

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2128, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8* undef, metadata !2133, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 48, metadata !2134, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 0, metadata !2136, metadata !DIExpression()), !dbg !2137
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2141
  %58 = load i8, i8* %57, align 1, !dbg !2141, !tbaa !1531
  %59 = icmp eq i8 %58, 48, !dbg !2141
  br i1 %59, label %60, label %68, !dbg !2143

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2144, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* undef, metadata !2149, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2150, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2151, metadata !DIExpression()), !dbg !2152
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2156
  %62 = load i8, i8* %61, align 1, !dbg !2156, !tbaa !1531
  %63 = icmp eq i8 %62, 0, !dbg !2156
  br i1 %63, label %64, label %68, !dbg !2158

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2159, !tbaa !1531
  %66 = icmp eq i8 %65, 96, !dbg !2160
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !2159
  br label %71, !dbg !2161

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2162
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !2163
  br label %71, !dbg !2164

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1984
  ret i8* %72, !dbg !2165
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !307 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !311 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i64 %1, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2172, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8* %0, metadata !2174, metadata !DIExpression()) #18, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %1, metadata !2179, metadata !DIExpression()) #18, !dbg !2187
  call void @llvm.dbg.value(metadata i64* null, metadata !2180, metadata !DIExpression()) #18, !dbg !2187
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2181, metadata !DIExpression()) #18, !dbg !2187
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2189
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2189
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2182, metadata !DIExpression()) #18, !dbg !2187
  %6 = tail call i32* @__errno_location() #24, !dbg !2190
  %7 = load i32, i32* %6, align 4, !dbg !2190, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %7, metadata !2183, metadata !DIExpression()) #18, !dbg !2187
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2191
  %9 = load i32, i32* %8, align 4, !dbg !2191, !tbaa !1382
  %10 = or i32 %9, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %10, metadata !2184, metadata !DIExpression()) #18, !dbg !2187
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2193
  %12 = load i32, i32* %11, align 8, !dbg !2193, !tbaa !1331
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2194
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2195
  %15 = load i8*, i8** %14, align 8, !dbg !2195, !tbaa !1405
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2196
  %17 = load i8*, i8** %16, align 8, !dbg !2196, !tbaa !1408
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2197
  %19 = add i64 %18, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %19, metadata !2185, metadata !DIExpression()) #18, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %19, metadata !2199, metadata !DIExpression()) #18, !dbg !2204
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %20, metadata !2186, metadata !DIExpression()) #18, !dbg !2187
  %21 = load i32, i32* %11, align 8, !dbg !2207, !tbaa !1331
  %22 = load i8*, i8** %14, align 8, !dbg !2208, !tbaa !1405
  %23 = load i8*, i8** %16, align 8, !dbg !2209, !tbaa !1408
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2210
  store i32 %7, i32* %6, align 4, !dbg !2211, !tbaa !1145
  ret i8* %20, !dbg !2212
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2175 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2174, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i64 %1, metadata !2179, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i64* %2, metadata !2180, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2181, metadata !DIExpression()), !dbg !2213
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2214
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2214
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2182, metadata !DIExpression()), !dbg !2213
  %7 = tail call i32* @__errno_location() #24, !dbg !2215
  %8 = load i32, i32* %7, align 4, !dbg !2215, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %8, metadata !2183, metadata !DIExpression()), !dbg !2213
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2216
  %10 = load i32, i32* %9, align 4, !dbg !2216, !tbaa !1382
  %11 = icmp ne i64* %2, null, !dbg !2217
  %12 = xor i1 %11, true, !dbg !2217
  %13 = zext i1 %12 to i32, !dbg !2217
  %14 = or i32 %10, %13, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %14, metadata !2184, metadata !DIExpression()), !dbg !2213
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2219
  %16 = load i32, i32* %15, align 8, !dbg !2219, !tbaa !1331
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2220
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2221
  %19 = load i8*, i8** %18, align 8, !dbg !2221, !tbaa !1405
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2222
  %21 = load i8*, i8** %20, align 8, !dbg !2222, !tbaa !1408
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2223
  %23 = add i64 %22, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %23, metadata !2185, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i64 %23, metadata !2199, metadata !DIExpression()) #18, !dbg !2225
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2227
  call void @llvm.dbg.value(metadata i8* %24, metadata !2186, metadata !DIExpression()), !dbg !2213
  %25 = load i32, i32* %15, align 8, !dbg !2228, !tbaa !1331
  %26 = load i8*, i8** %18, align 8, !dbg !2229, !tbaa !1405
  %27 = load i8*, i8** %20, align 8, !dbg !2230, !tbaa !1408
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2231
  store i32 %8, i32* %7, align 4, !dbg !2232, !tbaa !1145
  br i1 %11, label %29, label %30, !dbg !2233

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2234, !tbaa !2236
  br label %30, !dbg !2238

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2240 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2244, !tbaa !1064
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 1, metadata !2243, metadata !DIExpression()), !dbg !2245
  %2 = load i32, i32* @nslots, align 4, !dbg !2246, !tbaa !1145
  %3 = icmp sgt i32 %2, 1, !dbg !2249
  br i1 %3, label %4, label %12, !dbg !2250

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2243, metadata !DIExpression()), !dbg !2245
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2251
  %7 = load i8*, i8** %6, align 8, !dbg !2251, !tbaa !2252
  tail call void @free(i8* %7) #18, !dbg !2254
  %8 = add nuw nsw i64 %5, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %8, metadata !2243, metadata !DIExpression()), !dbg !2245
  %9 = load i32, i32* @nslots, align 4, !dbg !2246, !tbaa !1145
  %10 = sext i32 %9 to i64, !dbg !2249
  %11 = icmp slt i64 %8, %10, !dbg !2249
  br i1 %11, label %4, label %12, !dbg !2250, !llvm.loop !2256

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2258
  %14 = load i8*, i8** %13, align 8, !dbg !2258, !tbaa !2252
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2260
  br i1 %15, label %17, label %16, !dbg !2261

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2262
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2264, !tbaa !2265
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2266, !tbaa !2252
  br label %17, !dbg !2267

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2268
  br i1 %18, label %21, label %19, !dbg !2270

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2271
  tail call void @free(i8* %20) #18, !dbg !2273
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2274, !tbaa !1064
  br label %21, !dbg !2275

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2276, !tbaa !1145
  ret void, !dbg !2277
}

; Function Attrs: nounwind
declare !dbg !284 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2280, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i8* %1, metadata !2281, metadata !DIExpression()), !dbg !2282
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2283
  ret i8* %3, !dbg !2284
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2289, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %1, metadata !2290, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %2, metadata !2291, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2292, metadata !DIExpression()), !dbg !2304
  %5 = tail call i32* @__errno_location() #24, !dbg !2305
  %6 = load i32, i32* %5, align 4, !dbg !2305, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %6, metadata !2293, metadata !DIExpression()), !dbg !2304
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2306, !tbaa !1064
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2294, metadata !DIExpression()), !dbg !2304
  %8 = icmp slt i32 %0, 0, !dbg !2307
  br i1 %8, label %9, label %10, !dbg !2309

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2310
  unreachable, !dbg !2310

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2311, !tbaa !1145
  %12 = icmp sgt i32 %11, %0, !dbg !2312
  br i1 %12, label %34, label %13, !dbg !2313

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2314
  call void @llvm.dbg.value(metadata i1 %14, metadata !2295, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2298, metadata !DIExpression()), !dbg !2315
  %15 = icmp eq i32 %0, 2147483647, !dbg !2316
  br i1 %15, label %16, label %17, !dbg !2318

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2319
  unreachable, !dbg !2319

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2320
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2320
  %20 = add nuw nsw i32 %0, 1, !dbg !2321
  %21 = sext i32 %20 to i64, !dbg !2322
  %22 = shl nuw nsw i64 %21, 4, !dbg !2323
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2324
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2324
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2294, metadata !DIExpression()), !dbg !2304
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2325, !tbaa !1064
  br i1 %14, label %25, label %26, !dbg !2326

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2327, !tbaa.struct !2329
  br label %26, !dbg !2330

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2331, !tbaa !1145
  %28 = sext i32 %27 to i64, !dbg !2332
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2332
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2333
  %31 = sub nsw i32 %20, %27, !dbg !2334
  %32 = sext i32 %31 to i64, !dbg !2335
  %33 = shl nsw i64 %32, 4, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %30, metadata !1732, metadata !DIExpression()) #18, !dbg !2337
  call void @llvm.dbg.value(metadata i32 0, metadata !1738, metadata !DIExpression()) #18, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %33, metadata !1739, metadata !DIExpression()) #18, !dbg !2337
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2339
  store i32 %20, i32* @nslots, align 4, !dbg !2340, !tbaa !1145
  br label %34, !dbg !2341

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2304
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2294, metadata !DIExpression()), !dbg !2304
  %36 = zext i32 %0 to i64, !dbg !2342
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2343
  %38 = load i64, i64* %37, align 8, !dbg !2343, !tbaa !2265
  call void @llvm.dbg.value(metadata i64 %38, metadata !2299, metadata !DIExpression()), !dbg !2344
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2345
  %40 = load i8*, i8** %39, align 8, !dbg !2345, !tbaa !2252
  call void @llvm.dbg.value(metadata i8* %40, metadata !2301, metadata !DIExpression()), !dbg !2344
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2346
  %42 = load i32, i32* %41, align 4, !dbg !2346, !tbaa !1382
  %43 = or i32 %42, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %43, metadata !2302, metadata !DIExpression()), !dbg !2344
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2348
  %45 = load i32, i32* %44, align 8, !dbg !2348, !tbaa !1331
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2349
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2350
  %48 = load i8*, i8** %47, align 8, !dbg !2350, !tbaa !1405
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2351
  %50 = load i8*, i8** %49, align 8, !dbg !2351, !tbaa !1408
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %51, metadata !2303, metadata !DIExpression()), !dbg !2344
  %52 = icmp ugt i64 %38, %51, !dbg !2353
  br i1 %52, label %63, label %53, !dbg !2355

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %54, metadata !2299, metadata !DIExpression()), !dbg !2344
  store i64 %54, i64* %37, align 8, !dbg !2358, !tbaa !2265
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2359
  br i1 %55, label %57, label %56, !dbg !2361

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2362
  br label %57, !dbg !2362

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2199, metadata !DIExpression()) #18, !dbg !2363
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2365
  call void @llvm.dbg.value(metadata i8* %58, metadata !2301, metadata !DIExpression()), !dbg !2344
  store i8* %58, i8** %39, align 8, !dbg !2366, !tbaa !2252
  %59 = load i32, i32* %44, align 8, !dbg !2367, !tbaa !1331
  %60 = load i8*, i8** %47, align 8, !dbg !2368, !tbaa !1405
  %61 = load i8*, i8** %49, align 8, !dbg !2369, !tbaa !1408
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2370
  br label %63, !dbg !2371

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2344
  call void @llvm.dbg.value(metadata i8* %64, metadata !2301, metadata !DIExpression()), !dbg !2344
  store i32 %6, i32* %5, align 4, !dbg !2372, !tbaa !1145
  ret i8* %64, !dbg !2373
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2374 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* %1, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %2, metadata !2380, metadata !DIExpression()), !dbg !2381
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2382
  ret i8* %4, !dbg !2383
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2386, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2280, metadata !DIExpression()) #18, !dbg !2388
  call void @llvm.dbg.value(metadata i8* %0, metadata !2281, metadata !DIExpression()) #18, !dbg !2388
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2390
  ret i8* %2, !dbg !2391
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2396, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i64 %1, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 0, metadata !2378, metadata !DIExpression()) #18, !dbg !2399
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()) #18, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %1, metadata !2380, metadata !DIExpression()) #18, !dbg !2399
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2401
  ret i8* %3, !dbg !2402
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2403 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 %1, metadata !2408, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8* %2, metadata !2409, metadata !DIExpression()), !dbg !2411
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2412
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %1, metadata !2414, metadata !DIExpression()) #18, !dbg !2420
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2419, metadata !DIExpression()) #18, !dbg !2422
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2422, !alias.scope !2423
  %6 = icmp eq i32 %1, 10, !dbg !2426
  br i1 %6, label %7, label %8, !dbg !2428

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2429, !noalias !2423
  unreachable, !dbg !2429

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2430
  store i32 %1, i32* %9, align 8, !dbg !2431, !tbaa !1331, !alias.scope !2423
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2432
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2433
  ret i8* %10, !dbg !2434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2435 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2439, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %1, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %2, metadata !2441, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i64 %3, metadata !2442, metadata !DIExpression()), !dbg !2444
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2445
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2445
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 %1, metadata !2414, metadata !DIExpression()) #18, !dbg !2447
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2419, metadata !DIExpression()) #18, !dbg !2449
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2449, !alias.scope !2450
  %7 = icmp eq i32 %1, 10, !dbg !2453
  br i1 %7, label %8, label %9, !dbg !2454

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2455, !noalias !2450
  unreachable, !dbg !2455

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2456
  store i32 %1, i32* %10, align 8, !dbg !2457, !tbaa !1331, !alias.scope !2450
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2458
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2459
  ret i8* %11, !dbg !2460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2461 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2419, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2410, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %0, metadata !2465, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %1, metadata !2466, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 0, metadata !2407, metadata !DIExpression()) #18, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %0, metadata !2408, metadata !DIExpression()) #18, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %1, metadata !2409, metadata !DIExpression()) #18, !dbg !2472
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %0, metadata !2414, metadata !DIExpression()) #18, !dbg !2474
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2467, !alias.scope !2475
  %5 = icmp eq i32 %0, 10, !dbg !2478
  br i1 %5, label %6, label %7, !dbg !2479

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2480, !noalias !2475
  unreachable, !dbg !2480

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2481
  store i32 %0, i32* %8, align 8, !dbg !2482, !tbaa !1331, !alias.scope !2475
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2484
  ret i8* %9, !dbg !2485
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2486 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2419, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2443, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %0, metadata !2490, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8* %1, metadata !2491, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i64 %2, metadata !2492, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()) #18, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %0, metadata !2440, metadata !DIExpression()) #18, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %1, metadata !2441, metadata !DIExpression()) #18, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %2, metadata !2442, metadata !DIExpression()) #18, !dbg !2498
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %0, metadata !2414, metadata !DIExpression()) #18, !dbg !2500
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2493, !alias.scope !2501
  %6 = icmp eq i32 %0, 10, !dbg !2504
  br i1 %6, label %7, label %8, !dbg !2505

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2506, !noalias !2501
  unreachable, !dbg !2506

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2507
  store i32 %0, i32* %9, align 8, !dbg !2508, !tbaa !1331, !alias.scope !2501
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2509
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2510
  ret i8* %10, !dbg !2511
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2512 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %1, metadata !2517, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 %2, metadata !2518, metadata !DIExpression()), !dbg !2520
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2521
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2521
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2523, !tbaa.struct !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1349, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %2, metadata !1350, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 1, metadata !1351, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %2, metadata !1352, metadata !DIExpression()), !dbg !2525
  %6 = lshr i8 %2, 5, !dbg !2527
  %7 = zext i8 %6 to i64, !dbg !2527
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2528
  call void @llvm.dbg.value(metadata i32* %8, metadata !1353, metadata !DIExpression()), !dbg !2525
  %9 = and i8 %2, 31, !dbg !2529
  %10 = zext i8 %9 to i32, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %10, metadata !1355, metadata !DIExpression()), !dbg !2525
  %11 = load i32, i32* %8, align 4, !dbg !2530, !tbaa !1145
  %12 = lshr i32 %11, %10, !dbg !2531
  %13 = and i32 %12, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %13, metadata !1356, metadata !DIExpression()), !dbg !2525
  %14 = xor i32 %13, 1, !dbg !2533
  %15 = shl i32 %14, %10, !dbg !2534
  %16 = xor i32 %15, %11, !dbg !2535
  store i32 %16, i32* %8, align 4, !dbg !2535, !tbaa !1145
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2536
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2537
  ret i8* %17, !dbg !2538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2539 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2519, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8* %0, metadata !2543, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 %1, metadata !2544, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()) #18, !dbg !2548
  call void @llvm.dbg.value(metadata i64 -1, metadata !2517, metadata !DIExpression()) #18, !dbg !2548
  call void @llvm.dbg.value(metadata i8 %1, metadata !2518, metadata !DIExpression()) #18, !dbg !2548
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2549
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2550, !tbaa.struct !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1349, metadata !DIExpression()) #18, !dbg !2551
  call void @llvm.dbg.value(metadata i8 %1, metadata !1350, metadata !DIExpression()) #18, !dbg !2551
  call void @llvm.dbg.value(metadata i32 1, metadata !1351, metadata !DIExpression()) #18, !dbg !2551
  call void @llvm.dbg.value(metadata i8 %1, metadata !1352, metadata !DIExpression()) #18, !dbg !2551
  %5 = lshr i8 %1, 5, !dbg !2553
  %6 = zext i8 %5 to i64, !dbg !2553
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2554
  call void @llvm.dbg.value(metadata i32* %7, metadata !1353, metadata !DIExpression()) #18, !dbg !2551
  %8 = and i8 %1, 31, !dbg !2555
  %9 = zext i8 %8 to i32, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %9, metadata !1355, metadata !DIExpression()) #18, !dbg !2551
  %10 = load i32, i32* %7, align 4, !dbg !2556, !tbaa !1145
  %11 = lshr i32 %10, %9, !dbg !2557
  %12 = and i32 %11, 1, !dbg !2558
  call void @llvm.dbg.value(metadata i32 %12, metadata !1356, metadata !DIExpression()) #18, !dbg !2551
  %13 = xor i32 %12, 1, !dbg !2559
  %14 = shl i32 %13, %9, !dbg !2560
  %15 = xor i32 %14, %10, !dbg !2561
  store i32 %15, i32* %7, align 4, !dbg !2561, !tbaa !1145
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2562
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2563
  ret i8* %16, !dbg !2564
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2565 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2519, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* %0, metadata !2567, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %0, metadata !2543, metadata !DIExpression()) #18, !dbg !2572
  call void @llvm.dbg.value(metadata i8 58, metadata !2544, metadata !DIExpression()) #18, !dbg !2572
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()) #18, !dbg !2573
  call void @llvm.dbg.value(metadata i64 -1, metadata !2517, metadata !DIExpression()) #18, !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !2518, metadata !DIExpression()) #18, !dbg !2573
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2575, !tbaa.struct !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1349, metadata !DIExpression()) #18, !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !1350, metadata !DIExpression()) #18, !dbg !2576
  call void @llvm.dbg.value(metadata i32 1, metadata !1351, metadata !DIExpression()) #18, !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !1352, metadata !DIExpression()) #18, !dbg !2576
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2578
  call void @llvm.dbg.value(metadata i32* %4, metadata !1353, metadata !DIExpression()) #18, !dbg !2576
  call void @llvm.dbg.value(metadata i32 26, metadata !1355, metadata !DIExpression()) #18, !dbg !2576
  %5 = load i32, i32* %4, align 4, !dbg !2579, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %5, metadata !1356, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2576
  %6 = or i32 %5, 67108864, !dbg !2580
  store i32 %6, i32* %4, align 4, !dbg !2580, !tbaa !1145
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2582
  ret i8* %7, !dbg !2583
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2584 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2519, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %0, metadata !2586, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i64 %1, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()) #18, !dbg !2591
  call void @llvm.dbg.value(metadata i64 %1, metadata !2517, metadata !DIExpression()) #18, !dbg !2591
  call void @llvm.dbg.value(metadata i8 58, metadata !2518, metadata !DIExpression()) #18, !dbg !2591
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2592
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2593, !tbaa.struct !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1349, metadata !DIExpression()) #18, !dbg !2594
  call void @llvm.dbg.value(metadata i8 58, metadata !1350, metadata !DIExpression()) #18, !dbg !2594
  call void @llvm.dbg.value(metadata i32 1, metadata !1351, metadata !DIExpression()) #18, !dbg !2594
  call void @llvm.dbg.value(metadata i8 58, metadata !1352, metadata !DIExpression()) #18, !dbg !2594
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2596
  call void @llvm.dbg.value(metadata i32* %5, metadata !1353, metadata !DIExpression()) #18, !dbg !2594
  call void @llvm.dbg.value(metadata i32 26, metadata !1355, metadata !DIExpression()) #18, !dbg !2594
  %6 = load i32, i32* %5, align 4, !dbg !2597, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %6, metadata !1356, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2594
  %7 = or i32 %6, 67108864, !dbg !2598
  store i32 %7, i32* %5, align 4, !dbg !2598, !tbaa !1145
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2600
  ret i8* %8, !dbg !2601
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2602 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2419, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %0, metadata !2604, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %1, metadata !2605, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8* %2, metadata !2606, metadata !DIExpression()), !dbg !2610
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2611
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2611
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2607, metadata !DIExpression()), !dbg !2612
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2613
  call void @llvm.dbg.value(metadata i32 %1, metadata !2414, metadata !DIExpression()) #18, !dbg !2614
  call void @llvm.dbg.value(metadata i32 0, metadata !2419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2614
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2608, !alias.scope !2615
  %8 = icmp eq i32 %1, 10, !dbg !2618
  br i1 %8, label %9, label %10, !dbg !2619

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2620, !noalias !2615
  unreachable, !dbg !2620

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2614
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2613
  store i32 %1, i32* %11, align 8, !dbg !2613, !tbaa.struct !2524
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2613
  %13 = bitcast i32* %12 to i8*, !dbg !2613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2613, !tbaa.struct !2524
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2613
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1349, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 58, metadata !1350, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 1, metadata !1351, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8 58, metadata !1352, metadata !DIExpression()), !dbg !2621
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2623
  call void @llvm.dbg.value(metadata i32* %14, metadata !1353, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 26, metadata !1355, metadata !DIExpression()), !dbg !2621
  %15 = load i32, i32* %14, align 4, !dbg !2624, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %15, metadata !1356, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2621
  %16 = or i32 %15, 67108864, !dbg !2625
  store i32 %16, i32* %14, align 4, !dbg !2625, !tbaa !1145
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2626
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2627
  ret i8* %17, !dbg !2628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2629 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2637, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %0, metadata !2633, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2634, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %2, metadata !2635, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %3, metadata !2636, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %0, metadata !2642, metadata !DIExpression()) #18, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %1, metadata !2643, metadata !DIExpression()) #18, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %2, metadata !2644, metadata !DIExpression()) #18, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %3, metadata !2645, metadata !DIExpression()) #18, !dbg !2650
  call void @llvm.dbg.value(metadata i64 -1, metadata !2646, metadata !DIExpression()) #18, !dbg !2650
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2651
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2652, !tbaa.struct !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1389, metadata !DIExpression()) #18, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %1, metadata !1390, metadata !DIExpression()) #18, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %2, metadata !1391, metadata !DIExpression()) #18, !dbg !2653
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1389, metadata !DIExpression()) #18, !dbg !2653
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2655
  store i32 10, i32* %7, align 8, !dbg !2656, !tbaa !1331
  %8 = icmp ne i8* %1, null, !dbg !2657
  %9 = icmp ne i8* %2, null, !dbg !2658
  %10 = and i1 %8, %9, !dbg !2659
  br i1 %10, label %12, label %11, !dbg !2659

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2660
  unreachable, !dbg !2660

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2661
  store i8* %1, i8** %13, align 8, !dbg !2662, !tbaa !1405
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2663
  store i8* %2, i8** %14, align 8, !dbg !2664, !tbaa !1408
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !2665
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2666
  ret i8* %15, !dbg !2667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2638 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2642, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8* %1, metadata !2643, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8* %2, metadata !2644, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8* %3, metadata !2645, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i64 %4, metadata !2646, metadata !DIExpression()), !dbg !2668
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2669
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2669
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2637, metadata !DIExpression()), !dbg !2670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2671, !tbaa.struct !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1389, metadata !DIExpression()) #18, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %1, metadata !1390, metadata !DIExpression()) #18, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %2, metadata !1391, metadata !DIExpression()) #18, !dbg !2672
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1389, metadata !DIExpression()) #18, !dbg !2672
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2674
  store i32 10, i32* %8, align 8, !dbg !2675, !tbaa !1331
  %9 = icmp ne i8* %1, null, !dbg !2676
  %10 = icmp ne i8* %2, null, !dbg !2677
  %11 = and i1 %9, %10, !dbg !2678
  br i1 %11, label %13, label %12, !dbg !2678

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2679
  unreachable, !dbg !2679

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2680
  store i8* %1, i8** %14, align 8, !dbg !2681, !tbaa !1405
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2682
  store i8* %2, i8** %15, align 8, !dbg !2683, !tbaa !1408
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2685
  ret i8* %16, !dbg !2686
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2687 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2637, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8* %0, metadata !2691, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %1, metadata !2692, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i8* %2, metadata !2693, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2633, metadata !DIExpression()) #18, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %0, metadata !2634, metadata !DIExpression()) #18, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %1, metadata !2635, metadata !DIExpression()) #18, !dbg !2698
  call void @llvm.dbg.value(metadata i8* %2, metadata !2636, metadata !DIExpression()) #18, !dbg !2698
  call void @llvm.dbg.value(metadata i32 0, metadata !2642, metadata !DIExpression()) #18, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %0, metadata !2643, metadata !DIExpression()) #18, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %1, metadata !2644, metadata !DIExpression()) #18, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %2, metadata !2645, metadata !DIExpression()) #18, !dbg !2699
  call void @llvm.dbg.value(metadata i64 -1, metadata !2646, metadata !DIExpression()) #18, !dbg !2699
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2700
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2701, !tbaa.struct !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1389, metadata !DIExpression()) #18, !dbg !2702
  call void @llvm.dbg.value(metadata i8* %0, metadata !1390, metadata !DIExpression()) #18, !dbg !2702
  call void @llvm.dbg.value(metadata i8* %1, metadata !1391, metadata !DIExpression()) #18, !dbg !2702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1389, metadata !DIExpression()) #18, !dbg !2702
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2704
  store i32 10, i32* %6, align 8, !dbg !2705, !tbaa !1331
  %7 = icmp ne i8* %0, null, !dbg !2706
  %8 = icmp ne i8* %1, null, !dbg !2707
  %9 = and i1 %7, %8, !dbg !2708
  br i1 %9, label %11, label %10, !dbg !2708

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2709
  unreachable, !dbg !2709

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2710
  store i8* %0, i8** %12, align 8, !dbg !2711, !tbaa !1405
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2712
  store i8* %1, i8** %13, align 8, !dbg !2713, !tbaa !1408
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2715
  ret i8* %14, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2717 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2637, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %0, metadata !2721, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %1, metadata !2722, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %3, metadata !2724, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 0, metadata !2642, metadata !DIExpression()) #18, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %0, metadata !2643, metadata !DIExpression()) #18, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %1, metadata !2644, metadata !DIExpression()) #18, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %2, metadata !2645, metadata !DIExpression()) #18, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %3, metadata !2646, metadata !DIExpression()) #18, !dbg !2728
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2729
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2729
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2730, !tbaa.struct !2524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1389, metadata !DIExpression()) #18, !dbg !2731
  call void @llvm.dbg.value(metadata i8* %0, metadata !1390, metadata !DIExpression()) #18, !dbg !2731
  call void @llvm.dbg.value(metadata i8* %1, metadata !1391, metadata !DIExpression()) #18, !dbg !2731
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1389, metadata !DIExpression()) #18, !dbg !2731
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2733
  store i32 10, i32* %7, align 8, !dbg !2734, !tbaa !1331
  %8 = icmp ne i8* %0, null, !dbg !2735
  %9 = icmp ne i8* %1, null, !dbg !2736
  %10 = and i1 %8, %9, !dbg !2737
  br i1 %10, label %12, label %11, !dbg !2737

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2738
  unreachable, !dbg !2738

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2739
  store i8* %0, i8** %13, align 8, !dbg !2740, !tbaa !1405
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2741
  store i8* %1, i8** %14, align 8, !dbg !2742, !tbaa !1408
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !2743
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2744
  ret i8* %15, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2746 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2750, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8* %1, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %2, metadata !2752, metadata !DIExpression()), !dbg !2753
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2754
  ret i8* %4, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2756 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %1, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 0, metadata !2750, metadata !DIExpression()) #18, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %0, metadata !2751, metadata !DIExpression()) #18, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %1, metadata !2752, metadata !DIExpression()) #18, !dbg !2763
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2765
  ret i8* %3, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2767 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* %1, metadata !2772, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i32 %0, metadata !2750, metadata !DIExpression()) #18, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %1, metadata !2751, metadata !DIExpression()) #18, !dbg !2774
  call void @llvm.dbg.value(metadata i64 -1, metadata !2752, metadata !DIExpression()) #18, !dbg !2774
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2776
  ret i8* %3, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2778 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2771, metadata !DIExpression()) #18, !dbg !2784
  call void @llvm.dbg.value(metadata i8* %0, metadata !2772, metadata !DIExpression()) #18, !dbg !2784
  call void @llvm.dbg.value(metadata i32 0, metadata !2750, metadata !DIExpression()) #18, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %0, metadata !2751, metadata !DIExpression()) #18, !dbg !2786
  call void @llvm.dbg.value(metadata i64 -1, metadata !2752, metadata !DIExpression()) #18, !dbg !2786
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2788
  ret i8* %2, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2790 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2798, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* %1, metadata !2799, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* %2, metadata !2800, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* %3, metadata !2801, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8** %4, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %5, metadata !2803, metadata !DIExpression()), !dbg !2804
  %7 = icmp eq i8* %1, null, !dbg !2805
  br i1 %7, label %10, label %8, !dbg !2807

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !2808
  br label %12, !dbg !2808

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !2809
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #18, !dbg !2810
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !2810
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2811
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #18, !dbg !2812
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.83, i64 0, i64 0)) #18, !dbg !2812
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2813
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
  ], !dbg !2814

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #18, !dbg !2815
  %21 = load i8*, i8** %4, align 8, !dbg !2815, !tbaa !1064
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !2815
  br label %147, !dbg !2817

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #18, !dbg !2818
  %25 = load i8*, i8** %4, align 8, !dbg !2818, !tbaa !1064
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2818
  %27 = load i8*, i8** %26, align 8, !dbg !2818, !tbaa !1064
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !2818
  br label %147, !dbg !2819

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #18, !dbg !2820
  %31 = load i8*, i8** %4, align 8, !dbg !2820, !tbaa !1064
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2820
  %33 = load i8*, i8** %32, align 8, !dbg !2820, !tbaa !1064
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2820
  %35 = load i8*, i8** %34, align 8, !dbg !2820, !tbaa !1064
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !2820
  br label %147, !dbg !2821

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #18, !dbg !2822
  %39 = load i8*, i8** %4, align 8, !dbg !2822, !tbaa !1064
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2822
  %41 = load i8*, i8** %40, align 8, !dbg !2822, !tbaa !1064
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2822
  %43 = load i8*, i8** %42, align 8, !dbg !2822, !tbaa !1064
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2822
  %45 = load i8*, i8** %44, align 8, !dbg !2822, !tbaa !1064
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !2822
  br label %147, !dbg !2823

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #18, !dbg !2824
  %49 = load i8*, i8** %4, align 8, !dbg !2824, !tbaa !1064
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2824
  %51 = load i8*, i8** %50, align 8, !dbg !2824, !tbaa !1064
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2824
  %53 = load i8*, i8** %52, align 8, !dbg !2824, !tbaa !1064
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2824
  %55 = load i8*, i8** %54, align 8, !dbg !2824, !tbaa !1064
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2824
  %57 = load i8*, i8** %56, align 8, !dbg !2824, !tbaa !1064
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !2824
  br label %147, !dbg !2825

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #18, !dbg !2826
  %61 = load i8*, i8** %4, align 8, !dbg !2826, !tbaa !1064
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2826
  %63 = load i8*, i8** %62, align 8, !dbg !2826, !tbaa !1064
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2826
  %65 = load i8*, i8** %64, align 8, !dbg !2826, !tbaa !1064
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2826
  %67 = load i8*, i8** %66, align 8, !dbg !2826, !tbaa !1064
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2826
  %69 = load i8*, i8** %68, align 8, !dbg !2826, !tbaa !1064
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2826
  %71 = load i8*, i8** %70, align 8, !dbg !2826, !tbaa !1064
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !2826
  br label %147, !dbg !2827

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #18, !dbg !2828
  %75 = load i8*, i8** %4, align 8, !dbg !2828, !tbaa !1064
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2828
  %77 = load i8*, i8** %76, align 8, !dbg !2828, !tbaa !1064
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2828
  %79 = load i8*, i8** %78, align 8, !dbg !2828, !tbaa !1064
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2828
  %81 = load i8*, i8** %80, align 8, !dbg !2828, !tbaa !1064
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2828
  %83 = load i8*, i8** %82, align 8, !dbg !2828, !tbaa !1064
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2828
  %85 = load i8*, i8** %84, align 8, !dbg !2828, !tbaa !1064
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2828
  %87 = load i8*, i8** %86, align 8, !dbg !2828, !tbaa !1064
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !2828
  br label %147, !dbg !2829

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #18, !dbg !2830
  %91 = load i8*, i8** %4, align 8, !dbg !2830, !tbaa !1064
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2830
  %93 = load i8*, i8** %92, align 8, !dbg !2830, !tbaa !1064
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2830
  %95 = load i8*, i8** %94, align 8, !dbg !2830, !tbaa !1064
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2830
  %97 = load i8*, i8** %96, align 8, !dbg !2830, !tbaa !1064
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2830
  %99 = load i8*, i8** %98, align 8, !dbg !2830, !tbaa !1064
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2830
  %101 = load i8*, i8** %100, align 8, !dbg !2830, !tbaa !1064
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2830
  %103 = load i8*, i8** %102, align 8, !dbg !2830, !tbaa !1064
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2830
  %105 = load i8*, i8** %104, align 8, !dbg !2830, !tbaa !1064
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !2830
  br label %147, !dbg !2831

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.92, i64 0, i64 0), i32 5) #18, !dbg !2832
  %109 = load i8*, i8** %4, align 8, !dbg !2832, !tbaa !1064
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2832
  %111 = load i8*, i8** %110, align 8, !dbg !2832, !tbaa !1064
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2832
  %113 = load i8*, i8** %112, align 8, !dbg !2832, !tbaa !1064
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2832
  %115 = load i8*, i8** %114, align 8, !dbg !2832, !tbaa !1064
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2832
  %117 = load i8*, i8** %116, align 8, !dbg !2832, !tbaa !1064
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2832
  %119 = load i8*, i8** %118, align 8, !dbg !2832, !tbaa !1064
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2832
  %121 = load i8*, i8** %120, align 8, !dbg !2832, !tbaa !1064
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2832
  %123 = load i8*, i8** %122, align 8, !dbg !2832, !tbaa !1064
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2832
  %125 = load i8*, i8** %124, align 8, !dbg !2832, !tbaa !1064
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !2832
  br label %147, !dbg !2833

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.93, i64 0, i64 0), i32 5) #18, !dbg !2834
  %129 = load i8*, i8** %4, align 8, !dbg !2834, !tbaa !1064
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2834
  %131 = load i8*, i8** %130, align 8, !dbg !2834, !tbaa !1064
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2834
  %133 = load i8*, i8** %132, align 8, !dbg !2834, !tbaa !1064
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2834
  %135 = load i8*, i8** %134, align 8, !dbg !2834, !tbaa !1064
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2834
  %137 = load i8*, i8** %136, align 8, !dbg !2834, !tbaa !1064
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2834
  %139 = load i8*, i8** %138, align 8, !dbg !2834, !tbaa !1064
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2834
  %141 = load i8*, i8** %140, align 8, !dbg !2834, !tbaa !1064
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2834
  %143 = load i8*, i8** %142, align 8, !dbg !2834, !tbaa !1064
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2834
  %145 = load i8*, i8** %144, align 8, !dbg !2834, !tbaa !1064
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !2834
  br label %147, !dbg !2835

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2836
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2837 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2841, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %1, metadata !2842, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %2, metadata !2843, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %3, metadata !2844, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8** %4, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 0, metadata !2846, metadata !DIExpression()), !dbg !2847
  br label %6, !dbg !2848

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2850
  call void @llvm.dbg.value(metadata i64 %7, metadata !2846, metadata !DIExpression()), !dbg !2847
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2851
  %9 = load i8*, i8** %8, align 8, !dbg !2851, !tbaa !1064
  %10 = icmp eq i8* %9, null, !dbg !2853
  %11 = add i64 %7, 1, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %11, metadata !2846, metadata !DIExpression()), !dbg !2847
  br i1 %10, label %12, label %6, !dbg !2853, !llvm.loop !2855

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2846, metadata !DIExpression()), !dbg !2847
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2857
  ret void, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2859 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2870, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %1, metadata !2871, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %2, metadata !2872, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %3, metadata !2873, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2874, metadata !DIExpression()), !dbg !2878
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2879
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !2879
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2876, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 0, metadata !2875, metadata !DIExpression()), !dbg !2878
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2881
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2881
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2881
  %11 = load i32, i32* %8, align 8, !dbg !2884
  %12 = icmp ult i32 %11, 41, !dbg !2884
  br i1 %12, label %13, label %18, !dbg !2884

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2884
  %15 = zext i32 %11 to i64, !dbg !2884
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2884
  %17 = add nuw nsw i32 %11, 8, !dbg !2884
  store i32 %17, i32* %8, align 8, !dbg !2884
  br label %21, !dbg !2884

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2884
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2884
  store i8* %20, i8** %9, align 8, !dbg !2884
  br label %21, !dbg !2884

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2884
  %25 = load i8*, i8** %24, align 8, !dbg !2884
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2885
  store i8* %25, i8** %26, align 16, !dbg !2886, !tbaa !1064
  %27 = icmp eq i8* %25, null, !dbg !2887
  br i1 %27, label %30, label %28, !dbg !2888

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2875, metadata !DIExpression()), !dbg !2878
  %29 = icmp ult i32 %22, 41, !dbg !2884
  br i1 %29, label %35, label %32, !dbg !2884

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2889
  call void @llvm.dbg.value(metadata i64 %31, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %31, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2890
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !2891
  ret void, !dbg !2891

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2884
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2884
  store i8* %34, i8** %9, align 8, !dbg !2884
  br label %40, !dbg !2884

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2884
  %37 = zext i32 %22 to i64, !dbg !2884
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2884
  %39 = add nuw nsw i32 %22, 8, !dbg !2884
  store i32 %39, i32* %8, align 8, !dbg !2884
  br label %40, !dbg !2884

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2884
  %44 = load i8*, i8** %43, align 8, !dbg !2884
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2885
  store i8* %44, i8** %45, align 8, !dbg !2886, !tbaa !1064
  %46 = icmp eq i8* %44, null, !dbg !2887
  br i1 %46, label %30, label %47, !dbg !2888

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2875, metadata !DIExpression()), !dbg !2878
  %48 = icmp ult i32 %41, 41, !dbg !2884
  br i1 %48, label %52, label %49, !dbg !2884

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2884
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2884
  store i8* %51, i8** %9, align 8, !dbg !2884
  br label %57, !dbg !2884

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2884
  %54 = zext i32 %41 to i64, !dbg !2884
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2884
  %56 = add nuw nsw i32 %41, 8, !dbg !2884
  store i32 %56, i32* %8, align 8, !dbg !2884
  br label %57, !dbg !2884

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2884
  %61 = load i8*, i8** %60, align 8, !dbg !2884
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2885
  store i8* %61, i8** %62, align 16, !dbg !2886, !tbaa !1064
  %63 = icmp eq i8* %61, null, !dbg !2887
  br i1 %63, label %30, label %64, !dbg !2888

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2875, metadata !DIExpression()), !dbg !2878
  %65 = icmp ult i32 %58, 41, !dbg !2884
  br i1 %65, label %69, label %66, !dbg !2884

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2884
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2884
  store i8* %68, i8** %9, align 8, !dbg !2884
  br label %74, !dbg !2884

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2884
  %71 = zext i32 %58 to i64, !dbg !2884
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2884
  %73 = add nuw nsw i32 %58, 8, !dbg !2884
  store i32 %73, i32* %8, align 8, !dbg !2884
  br label %74, !dbg !2884

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2884
  %78 = load i8*, i8** %77, align 8, !dbg !2884
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2885
  store i8* %78, i8** %79, align 8, !dbg !2886, !tbaa !1064
  %80 = icmp eq i8* %78, null, !dbg !2887
  br i1 %80, label %30, label %81, !dbg !2888

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2875, metadata !DIExpression()), !dbg !2878
  %82 = icmp ult i32 %75, 41, !dbg !2884
  br i1 %82, label %86, label %83, !dbg !2884

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2884
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2884
  store i8* %85, i8** %9, align 8, !dbg !2884
  br label %91, !dbg !2884

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2884
  %88 = zext i32 %75 to i64, !dbg !2884
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2884
  %90 = add nuw nsw i32 %75, 8, !dbg !2884
  store i32 %90, i32* %8, align 8, !dbg !2884
  br label %91, !dbg !2884

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2884
  %95 = load i8*, i8** %94, align 8, !dbg !2884
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2885
  store i8* %95, i8** %96, align 16, !dbg !2886, !tbaa !1064
  %97 = icmp eq i8* %95, null, !dbg !2887
  br i1 %97, label %30, label %98, !dbg !2888

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2875, metadata !DIExpression()), !dbg !2878
  %99 = icmp ult i32 %92, 41, !dbg !2884
  br i1 %99, label %103, label %100, !dbg !2884

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2884
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2884
  store i8* %102, i8** %9, align 8, !dbg !2884
  br label %108, !dbg !2884

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2884
  %105 = zext i32 %92 to i64, !dbg !2884
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2884
  %107 = add nuw nsw i32 %92, 8, !dbg !2884
  store i32 %107, i32* %8, align 8, !dbg !2884
  br label %108, !dbg !2884

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2884
  %111 = load i8*, i8** %110, align 8, !dbg !2884
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2885
  store i8* %111, i8** %112, align 8, !dbg !2886, !tbaa !1064
  %113 = icmp eq i8* %111, null, !dbg !2887
  br i1 %113, label %30, label %114, !dbg !2888

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2875, metadata !DIExpression()), !dbg !2878
  %115 = load i8*, i8** %9, align 8, !dbg !2884
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2884
  store i8* %116, i8** %9, align 8, !dbg !2884
  %117 = bitcast i8* %115 to i8**, !dbg !2884
  %118 = load i8*, i8** %117, align 8, !dbg !2884
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2885
  store i8* %118, i8** %119, align 16, !dbg !2886, !tbaa !1064
  %120 = icmp eq i8* %118, null, !dbg !2887
  br i1 %120, label %30, label %121, !dbg !2888

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2875, metadata !DIExpression()), !dbg !2878
  %122 = load i8*, i8** %9, align 8, !dbg !2884
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2884
  store i8* %123, i8** %9, align 8, !dbg !2884
  %124 = bitcast i8* %122 to i8**, !dbg !2884
  %125 = load i8*, i8** %124, align 8, !dbg !2884
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2885
  store i8* %125, i8** %126, align 8, !dbg !2886, !tbaa !1064
  %127 = icmp eq i8* %125, null, !dbg !2887
  br i1 %127, label %30, label %128, !dbg !2888

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2875, metadata !DIExpression()), !dbg !2878
  %129 = load i8*, i8** %9, align 8, !dbg !2884
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2884
  store i8* %130, i8** %9, align 8, !dbg !2884
  %131 = bitcast i8* %129 to i8**, !dbg !2884
  %132 = load i8*, i8** %131, align 8, !dbg !2884
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2885
  store i8* %132, i8** %133, align 16, !dbg !2886, !tbaa !1064
  %134 = icmp eq i8* %132, null, !dbg !2887
  br i1 %134, label %30, label %135, !dbg !2888

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2875, metadata !DIExpression()), !dbg !2878
  %136 = load i8*, i8** %9, align 8, !dbg !2884
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2884
  store i8* %137, i8** %9, align 8, !dbg !2884
  %138 = bitcast i8* %136 to i8**, !dbg !2884
  %139 = load i8*, i8** %138, align 8, !dbg !2884
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2885
  store i8* %139, i8** %140, align 8, !dbg !2886, !tbaa !1064
  %141 = icmp eq i8* %139, null, !dbg !2887
  %142 = select i1 %141, i64 9, i64 10, !dbg !2888
  br label %30, !dbg !2888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2892 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2896, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %1, metadata !2897, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %2, metadata !2898, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %3, metadata !2899, metadata !DIExpression()), !dbg !2906
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2907
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !2907
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2900, metadata !DIExpression()), !dbg !2908
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2909
  call void @llvm.va_start(i8* nonnull %6), !dbg !2909
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2910
  call void @llvm.va_end(i8* nonnull %6), !dbg !2911
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !2912
  ret void, !dbg !2912
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2913 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2914, !tbaa !1064
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2914
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #18, !dbg !2915
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.97, i64 0, i64 0)) #18, !dbg !2915
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.98, i64 0, i64 0), i32 5) #18, !dbg !2916
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.99, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.100, i64 0, i64 0)) #18, !dbg !2916
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.101, i64 0, i64 0), i32 5) #18, !dbg !2917
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.102, i64 0, i64 0)) #18, !dbg !2917
  ret void, !dbg !2918
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !2919 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2923, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2925
  %3 = udiv i64 9223372036854775807, %1, !dbg !2926
  %4 = icmp ult i64 %3, %0, !dbg !2926
  br i1 %4, label %5, label %6, !dbg !2928

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !2929
  unreachable, !dbg !2929

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %7, metadata !2931, metadata !DIExpression()) #18, !dbg !2937
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %8, metadata !2936, metadata !DIExpression()) #18, !dbg !2937
  %9 = icmp eq i8* %8, null, !dbg !2940
  %10 = icmp ne i64 %7, 0, !dbg !2942
  %11 = and i1 %10, %9, !dbg !2943
  br i1 %11, label %12, label %13, !dbg !2943

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !2944
  unreachable, !dbg !2944

13:                                               ; preds = %6
  ret i8* %8, !dbg !2945
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2932 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2931, metadata !DIExpression()), !dbg !2946
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %2, metadata !2936, metadata !DIExpression()), !dbg !2946
  %3 = icmp eq i8* %2, null, !dbg !2948
  %4 = icmp ne i64 %0, 0, !dbg !2949
  %5 = and i1 %4, %3, !dbg !2950
  br i1 %5, label %6, label %7, !dbg !2950

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !2951
  unreachable, !dbg !2951

7:                                                ; preds = %1
  ret i8* %2, !dbg !2952
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !2953 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %2, metadata !2959, metadata !DIExpression()), !dbg !2960
  %4 = udiv i64 9223372036854775807, %2, !dbg !2961
  %5 = icmp ult i64 %4, %1, !dbg !2961
  br i1 %5, label %6, label %7, !dbg !2963

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !2964
  unreachable, !dbg !2964

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()) #18, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %8, metadata !2971, metadata !DIExpression()) #18, !dbg !2972
  %9 = icmp eq i64 %8, 0, !dbg !2974
  %10 = icmp ne i8* %0, null, !dbg !2976
  %11 = and i1 %10, %9, !dbg !2977
  br i1 %11, label %12, label %13, !dbg !2977

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !2978
  br label %19, !dbg !2980

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !2981
  call void @llvm.dbg.value(metadata i8* %14, metadata !2966, metadata !DIExpression()) #18, !dbg !2972
  %15 = icmp eq i8* %14, null, !dbg !2982
  %16 = icmp ne i64 %8, 0, !dbg !2984
  %17 = and i1 %16, %15, !dbg !2985
  br i1 %17, label %18, label %19, !dbg !2985

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2986
  unreachable, !dbg !2986

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2972
  ret i8* %20, !dbg !2987
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !2988
  %3 = icmp eq i64 %1, 0, !dbg !2989
  %4 = icmp ne i8* %0, null, !dbg !2990
  %5 = and i1 %4, %3, !dbg !2991
  br i1 %5, label %6, label %7, !dbg !2991

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !2992
  br label %13, !dbg !2993

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %8, metadata !2966, metadata !DIExpression()), !dbg !2988
  %9 = icmp eq i8* %8, null, !dbg !2995
  %10 = icmp ne i64 %1, 0, !dbg !2996
  %11 = and i1 %10, %9, !dbg !2997
  br i1 %11, label %12, label %13, !dbg !2997

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !2998
  unreachable, !dbg !2998

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2988
  ret i8* %14, !dbg !2999
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !417 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !422, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64* %1, metadata !423, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %2, metadata !424, metadata !DIExpression()), !dbg !3000
  %4 = load i64, i64* %1, align 8, !dbg !3001, !tbaa !2236
  call void @llvm.dbg.value(metadata i64 %4, metadata !425, metadata !DIExpression()), !dbg !3000
  %5 = icmp eq i8* %0, null, !dbg !3002
  br i1 %5, label %6, label %20, !dbg !3004

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3005
  br i1 %7, label %8, label %13, !dbg !3008

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %9, metadata !425, metadata !DIExpression()), !dbg !3000
  %10 = icmp ugt i64 %2, 128, !dbg !3011
  %11 = zext i1 %10 to i64, !dbg !3011
  %12 = add nuw nsw i64 %9, %11, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %12, metadata !425, metadata !DIExpression()), !dbg !3000
  br label %13, !dbg !3013

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3000
  call void @llvm.dbg.value(metadata i64 %14, metadata !425, metadata !DIExpression()), !dbg !3000
  %15 = udiv i64 9223372036854775807, %2, !dbg !3014
  %16 = icmp ult i64 %15, %14, !dbg !3014
  br i1 %16, label %19, label %17, !dbg !3016

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !425, metadata !DIExpression()), !dbg !3000
  store i64 %14, i64* %1, align 8, !dbg !3017, !tbaa !2236
  %18 = mul i64 %14, %2, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()) #18, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %28, metadata !2971, metadata !DIExpression()) #18, !dbg !3019
  br label %31, !dbg !3021

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3022
  unreachable, !dbg !3022

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3023
  %22 = icmp ugt i64 %21, %4, !dbg !3026
  br i1 %22, label %24, label %23, !dbg !3027

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3028
  unreachable, !dbg !3028

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3029
  %26 = add nuw i64 %4, 1, !dbg !3030
  %27 = add i64 %26, %25, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %27, metadata !425, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %27, metadata !425, metadata !DIExpression()), !dbg !3000
  store i64 %27, i64* %1, align 8, !dbg !3017, !tbaa !2236
  %28 = mul i64 %27, %2, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()) #18, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %28, metadata !2971, metadata !DIExpression()) #18, !dbg !3019
  %29 = icmp eq i64 %28, 0, !dbg !3032
  br i1 %29, label %30, label %31, !dbg !3021

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3033
  br label %38, !dbg !3034

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %33, metadata !2966, metadata !DIExpression()) #18, !dbg !3019
  %34 = icmp eq i8* %33, null, !dbg !3036
  %35 = icmp ne i64 %32, 0, !dbg !3037
  %36 = and i1 %35, %34, !dbg !3038
  br i1 %36, label %37, label %38, !dbg !3038

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3039
  unreachable, !dbg !3039

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3019
  ret i8* %39, !dbg !3040
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3041 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %0, metadata !2931, metadata !DIExpression()) #18, !dbg !3045
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %2, metadata !2936, metadata !DIExpression()) #18, !dbg !3045
  %3 = icmp eq i8* %2, null, !dbg !3048
  %4 = icmp ne i64 %0, 0, !dbg !3049
  %5 = and i1 %4, %3, !dbg !3050
  br i1 %5, label %6, label %7, !dbg !3050

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3051
  unreachable, !dbg !3051

7:                                                ; preds = %1
  ret i8* %2, !dbg !3052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3053 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3057, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64* %1, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %0, metadata !422, metadata !DIExpression()) #18, !dbg !3060
  call void @llvm.dbg.value(metadata i64* %1, metadata !423, metadata !DIExpression()) #18, !dbg !3060
  call void @llvm.dbg.value(metadata i64 1, metadata !424, metadata !DIExpression()) #18, !dbg !3060
  %3 = load i64, i64* %1, align 8, !dbg !3062, !tbaa !2236
  call void @llvm.dbg.value(metadata i64 %3, metadata !425, metadata !DIExpression()) #18, !dbg !3060
  %4 = icmp eq i8* %0, null, !dbg !3063
  br i1 %4, label %5, label %12, !dbg !3064

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3065
  br i1 %6, label %9, label %7, !dbg !3066

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !425, metadata !DIExpression()) #18, !dbg !3060
  %8 = icmp slt i64 %3, 0, !dbg !3067
  br i1 %8, label %11, label %9, !dbg !3068

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !425, metadata !DIExpression()) #18, !dbg !3060
  store i64 %10, i64* %1, align 8, !dbg !3069, !tbaa !2236
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()) #18, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %18, metadata !2971, metadata !DIExpression()) #18, !dbg !3070
  br label %21, !dbg !3072

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3073
  unreachable, !dbg !3073

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3074
  br i1 %13, label %15, label %14, !dbg !3075

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3076
  unreachable, !dbg !3076

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3077
  %17 = add nuw nsw i64 %3, 1, !dbg !3078
  %18 = add nuw nsw i64 %17, %16, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %18, metadata !425, metadata !DIExpression()) #18, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %18, metadata !425, metadata !DIExpression()) #18, !dbg !3060
  store i64 %18, i64* %1, align 8, !dbg !3069, !tbaa !2236
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()) #18, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %18, metadata !2971, metadata !DIExpression()) #18, !dbg !3070
  %19 = icmp eq i64 %18, 0, !dbg !3080
  br i1 %19, label %20, label %21, !dbg !3072

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3081
  br label %28, !dbg !3082

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %23, metadata !2966, metadata !DIExpression()) #18, !dbg !3070
  %24 = icmp eq i8* %23, null, !dbg !3084
  %25 = icmp ne i64 %22, 0, !dbg !3085
  %26 = and i1 %25, %24, !dbg !3086
  br i1 %26, label %27, label %28, !dbg !3086

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3087
  unreachable, !dbg !3087

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3070
  ret i8* %29, !dbg !3088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3089 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %0, metadata !3093, metadata !DIExpression()) #18, !dbg !3098
  call void @llvm.dbg.value(metadata i64 1, metadata !3096, metadata !DIExpression()) #18, !dbg !3098
  %2 = icmp slt i64 %0, 0, !dbg !3100
  br i1 %2, label %6, label %3, !dbg !3102

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %4, metadata !3097, metadata !DIExpression()) #18, !dbg !3098
  %5 = icmp eq i8* %4, null, !dbg !3104
  br i1 %5, label %6, label %7, !dbg !3105

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3106
  unreachable, !dbg !3106

7:                                                ; preds = %3
  ret i8* %4, !dbg !3107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3094 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3093, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3096, metadata !DIExpression()), !dbg !3108
  %3 = udiv i64 9223372036854775807, %1, !dbg !3109
  %4 = icmp ult i64 %3, %0, !dbg !3109
  br i1 %4, label %8, label %5, !dbg !3110

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %6, metadata !3097, metadata !DIExpression()), !dbg !3108
  %7 = icmp eq i8* %6, null, !dbg !3112
  br i1 %7, label %8, label %9, !dbg !3113

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3114
  unreachable, !dbg !3114

9:                                                ; preds = %5
  ret i8* %6, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3116 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()) #18, !dbg !3123
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %3, metadata !2936, metadata !DIExpression()) #18, !dbg !3123
  %4 = icmp eq i8* %3, null, !dbg !3126
  %5 = icmp ne i64 %1, 0, !dbg !3127
  %6 = and i1 %5, %4, !dbg !3128
  br i1 %6, label %7, label %8, !dbg !3128

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3129
  unreachable, !dbg !3129

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3130, metadata !DIExpression()) #18, !dbg !3139
  call void @llvm.dbg.value(metadata i8* %0, metadata !3137, metadata !DIExpression()) #18, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %1, metadata !3138, metadata !DIExpression()) #18, !dbg !3139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3141
  ret i8* %3, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3143 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3145, metadata !DIExpression()), !dbg !3146
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3147
  %3 = add i64 %2, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %0, metadata !3120, metadata !DIExpression()) #18, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %3, metadata !3121, metadata !DIExpression()) #18, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %3, metadata !2931, metadata !DIExpression()) #18, !dbg !3151
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3153
  call void @llvm.dbg.value(metadata i8* %4, metadata !2936, metadata !DIExpression()) #18, !dbg !3151
  %5 = icmp eq i8* %4, null, !dbg !3154
  %6 = icmp ne i64 %3, 0, !dbg !3155
  %7 = and i1 %6, %5, !dbg !3156
  br i1 %7, label %8, label %9, !dbg !3156

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3157
  unreachable, !dbg !3157

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3130, metadata !DIExpression()) #18, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %0, metadata !3137, metadata !DIExpression()) #18, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %3, metadata !3138, metadata !DIExpression()) #18, !dbg !3158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3160
  ret i8* %4, !dbg !3161
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3162 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3163, !tbaa !1145
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #18, !dbg !3164
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #18, !dbg !3165
  tail call void @abort() #22, !dbg !3166
  unreachable, !dbg !3166
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3167 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3169, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !3170, metadata !DIExpression()), !dbg !3175
  %3 = icmp eq i64 %0, 0, !dbg !3176
  %4 = icmp eq i64 %1, 0, !dbg !3177
  %5 = or i1 %3, %4, !dbg !3178
  br i1 %5, label %11, label %6, !dbg !3178

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3172, metadata !DIExpression()), !dbg !3179
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3180
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3180
  br i1 %8, label %9, label %11, !dbg !3182

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3183
  store i32 12, i32* %10, align 4, !dbg !3185, !tbaa !1145
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3169, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %12, metadata !3170, metadata !DIExpression()), !dbg !3175
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %14, metadata !3171, metadata !DIExpression()), !dbg !3175
  br label %15, !dbg !3187

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3175
  ret i8* %16, !dbg !3188
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3189 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3197, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %1, metadata !3198, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %2, metadata !3199, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3200, metadata !DIExpression()), !dbg !3206
  %6 = bitcast i32* %5 to i8*, !dbg !3207
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3207
  %7 = icmp eq i32* %0, null, !dbg !3208
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3210
  call void @llvm.dbg.value(metadata i32* %8, metadata !3197, metadata !DIExpression()), !dbg !3206
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %9, metadata !3201, metadata !DIExpression()), !dbg !3206
  %10 = icmp ugt i64 %9, -3, !dbg !3212
  %11 = icmp ne i64 %2, 0, !dbg !3213
  %12 = and i1 %11, %10, !dbg !3214
  br i1 %12, label %13, label %18, !dbg !3214

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3215
  br i1 %14, label %18, label %15, !dbg !3216

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3217, !tbaa !1531
  call void @llvm.dbg.value(metadata i8 %16, metadata !3203, metadata !DIExpression()), !dbg !3218
  %17 = zext i8 %16 to i32, !dbg !3219
  store i32 %17, i32* %8, align 4, !dbg !3220, !tbaa !1145
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3206
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3221
  ret i64 %19, !dbg !3221
}

; Function Attrs: nounwind
declare !dbg !443 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3222 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3228, metadata !DIExpression()), !dbg !3233
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3234
  call void @llvm.dbg.value(metadata i1 undef, metadata !3229, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3235, metadata !DIExpression()), !dbg !3239
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3241
  %4 = load i32, i32* %3, align 8, !dbg !3241, !tbaa !3242
  %5 = and i32 %4, 32, !dbg !3241
  %6 = icmp eq i32 %5, 0, !dbg !3244
  call void @llvm.dbg.value(metadata i1 %6, metadata !3231, metadata !DIExpression()), !dbg !3233
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3245
  %8 = icmp ne i32 %7, 0, !dbg !3246
  call void @llvm.dbg.value(metadata i1 %8, metadata !3232, metadata !DIExpression()), !dbg !3233
  br i1 %6, label %9, label %19, !dbg !3247

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3249
  call void @llvm.dbg.value(metadata i1 %10, metadata !3229, metadata !DIExpression()), !dbg !3233
  %11 = xor i1 %8, true, !dbg !3250
  %12 = or i1 %10, %11, !dbg !3250
  %13 = sext i1 %8 to i32, !dbg !3250
  br i1 %12, label %22, label %14, !dbg !3250

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3251
  %16 = load i32, i32* %15, align 4, !dbg !3251, !tbaa !1145
  %17 = icmp ne i32 %16, 9, !dbg !3252
  %18 = sext i1 %17 to i32, !dbg !3253
  br label %22, !dbg !3253

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3254

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3256
  store i32 0, i32* %21, align 4, !dbg !3258, !tbaa !1145
  br label %22, !dbg !3256

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3233
  ret i32 %23, !dbg !3259
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3260 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3262, metadata !DIExpression()), !dbg !3267
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3268
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3268
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3263, metadata !DIExpression()), !dbg !3269
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3270
  %5 = icmp eq i32 %4, 0, !dbg !3270
  br i1 %5, label %6, label %13, !dbg !3272

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3273
  %8 = load i16, i16* %7, align 16, !dbg !3273
  %9 = icmp eq i16 %8, 67, !dbg !3273
  br i1 %9, label %13, label %10, !dbg !3274

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i64 6), !dbg !3275
  %12 = icmp ne i32 %11, 0, !dbg !3276
  br label %13, !dbg !3274

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3267
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3277
  ret i1 %14, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3278 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()), !dbg !3282
  %2 = icmp eq i8* %1, null, !dbg !3283
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* %1, !dbg !3285
  call void @llvm.dbg.value(metadata i8* %3, metadata !3280, metadata !DIExpression()), !dbg !3282
  %4 = load i8, i8* %3, align 1, !dbg !3286, !tbaa !1531
  %5 = icmp eq i8 %4, 0, !dbg !3290
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i8* %3, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %6, metadata !3280, metadata !DIExpression()), !dbg !3282
  ret i8* %6, !dbg !3292
}

; Function Attrs: nounwind
declare !dbg !895 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3297, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i8* %1, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %2, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i32 %0, metadata !3301, metadata !DIExpression()) #18, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %1, metadata !3304, metadata !DIExpression()) #18, !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3305, metadata !DIExpression()) #18, !dbg !3310
  call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()) #18, !dbg !3318
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3320
  call void @llvm.dbg.value(metadata i8* %4, metadata !3317, metadata !DIExpression()) #18, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %4, metadata !3306, metadata !DIExpression()) #18, !dbg !3310
  %5 = icmp eq i8* %4, null, !dbg !3321
  br i1 %5, label %6, label %9, !dbg !3322

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3323
  br i1 %7, label %19, label %8, !dbg !3326

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3327, !tbaa !1531
  br label %19, !dbg !3328

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %10, metadata !3307, metadata !DIExpression()) #18, !dbg !3330
  %11 = icmp ult i64 %10, %2, !dbg !3331
  br i1 %11, label %12, label %14, !dbg !3333

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %1, metadata !3336, metadata !DIExpression()) #18, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %4, metadata !3339, metadata !DIExpression()) #18, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %13, metadata !3340, metadata !DIExpression()) #18, !dbg !3341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3343
  br label %19, !dbg !3344

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3345
  br i1 %15, label %19, label %16, !dbg !3348

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %1, metadata !3336, metadata !DIExpression()) #18, !dbg !3351
  call void @llvm.dbg.value(metadata i8* %4, metadata !3339, metadata !DIExpression()) #18, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %17, metadata !3340, metadata !DIExpression()) #18, !dbg !3351
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3353
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3354
  store i8 0, i8* %18, align 1, !dbg !3355, !tbaa !1531
  br label %19, !dbg !3356

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3357
  ret i32 %20, !dbg !3358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3359 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3361, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()) #18, !dbg !3363
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %2, metadata !3317, metadata !DIExpression()) #18, !dbg !3363
  ret i8* %2, !dbg !3366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3367 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3373, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i32 0, metadata !3374, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i32 0, metadata !3376, metadata !DIExpression()), !dbg !3377
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3378
  call void @llvm.dbg.value(metadata i32 %2, metadata !3375, metadata !DIExpression()), !dbg !3377
  %3 = icmp slt i32 %2, 0, !dbg !3379
  br i1 %3, label %4, label %6, !dbg !3381

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3382
  br label %24, !dbg !3383

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3384
  %8 = icmp eq i32 %7, 0, !dbg !3384
  br i1 %8, label %13, label %9, !dbg !3386

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3387
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3388
  %12 = icmp eq i64 %11, -1, !dbg !3389
  br i1 %12, label %16, label %13, !dbg !3390

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3391
  %15 = icmp eq i32 %14, 0, !dbg !3391
  br i1 %15, label %16, label %18, !dbg !3392

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3374, metadata !DIExpression()), !dbg !3377
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3393
  call void @llvm.dbg.value(metadata i32 %21, metadata !3376, metadata !DIExpression()), !dbg !3377
  br label %24, !dbg !3394

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3395
  %20 = load i32, i32* %19, align 4, !dbg !3395, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 %20, metadata !3374, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i32 %20, metadata !3374, metadata !DIExpression()), !dbg !3377
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3393
  call void @llvm.dbg.value(metadata i32 %21, metadata !3376, metadata !DIExpression()), !dbg !3377
  %22 = icmp eq i32 %20, 0, !dbg !3396
  br i1 %22, label %24, label %23, !dbg !3394

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3398, !tbaa !1145
  call void @llvm.dbg.value(metadata i32 -1, metadata !3376, metadata !DIExpression()), !dbg !3377
  br label %24, !dbg !3400

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3377
  ret i32 %25, !dbg !3401
}

; Function Attrs: nofree nounwind
declare !dbg !904 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !939 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !940 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3402 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3408, metadata !DIExpression()), !dbg !3409
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3410
  br i1 %2, label %6, label %3, !dbg !3412

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3413
  %5 = icmp eq i32 %4, 0, !dbg !3413
  br i1 %5, label %6, label %8, !dbg !3414

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3415
  br label %17, !dbg !3416

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3417, metadata !DIExpression()) #18, !dbg !3422
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3424
  %10 = load i32, i32* %9, align 8, !dbg !3424, !tbaa !3242
  %11 = and i32 %10, 256, !dbg !3426
  %12 = icmp eq i32 %11, 0, !dbg !3426
  br i1 %12, label %15, label %13, !dbg !3427

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3428
  br label %15, !dbg !3428

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3429
  br label %17, !dbg !3430

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3409
  ret i32 %18, !dbg !3431
}

; Function Attrs: nofree nounwind
declare !dbg !948 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3432 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3439, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3440, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %2, metadata !3441, metadata !DIExpression()), !dbg !3445
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3446
  %5 = load i8*, i8** %4, align 8, !dbg !3446, !tbaa !3447
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3448
  %7 = load i8*, i8** %6, align 8, !dbg !3448, !tbaa !3449
  %8 = icmp eq i8* %5, %7, !dbg !3450
  br i1 %8, label %9, label %28, !dbg !3451

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3452
  %11 = load i8*, i8** %10, align 8, !dbg !3452, !tbaa !3453
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3454
  %13 = load i8*, i8** %12, align 8, !dbg !3454, !tbaa !3455
  %14 = icmp eq i8* %11, %13, !dbg !3456
  br i1 %14, label %15, label %28, !dbg !3457

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3458
  %17 = load i8*, i8** %16, align 8, !dbg !3458, !tbaa !3459
  %18 = icmp eq i8* %17, null, !dbg !3460
  br i1 %18, label %19, label %28, !dbg !3461

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3462
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3463
  call void @llvm.dbg.value(metadata i64 %21, metadata !3442, metadata !DIExpression()), !dbg !3464
  %22 = icmp eq i64 %21, -1, !dbg !3465
  br i1 %22, label %30, label %23, !dbg !3467

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3468
  %25 = load i32, i32* %24, align 8, !dbg !3469, !tbaa !3242
  %26 = and i32 %25, -17, !dbg !3469
  store i32 %26, i32* %24, align 8, !dbg !3469, !tbaa !3242
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3470
  store i64 %21, i64* %27, align 8, !dbg !3471, !tbaa !3472
  br label %30, !dbg !3473

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3474
  br label %30, !dbg !3475

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3445
  ret i32 %31, !dbg !3476
}

; Function Attrs: nofree nounwind
declare !dbg !1024 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!2, !127, !132, !179, !185, !226, !371, !365, !413, !434, !437, !440, !459, !498, !505, !898, !901, !945, !986}
!llvm.ident = !{!1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027, !1027}
!llvm.module.flags = !{!1028, !1029, !1030, !1031, !1032}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !122, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !121, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/runcon.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !15, !76, !80, !84, !87, !90, !97, !112, !10, !66, !116, !120}
!6 = !DISubprogram(name: "dcgettext", scope: !7, file: !7, line: 51, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !12, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!16 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!17 = !DISubroutineType(types: !18)
!18 = !{!14, !12, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !39, !40, !41, !45, !47, !49, !53, !56, !58, !61, !64, !65, !67, !71, !72}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 51, baseType: !14, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 36, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 70, baseType: !19, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 152, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 43, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 153, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !20, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !21, line: 37, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !20, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !21, line: 38, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !20, file: !21, line: 93, baseType: !19, size: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !20, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 20)
!76 = !DISubprogram(name: "set_program_name", scope: !77, file: !77, line: 37, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!77 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !DISubroutineType(types: !79)
!79 = !{null, !12}
!80 = !DISubprogram(name: "setlocale", scope: !81, file: !81, line: 122, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!81 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!82 = !DISubroutineType(types: !83)
!83 = !{!10, !14, !12}
!84 = !DISubprogram(name: "bindtextdomain", scope: !7, file: !7, line: 86, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!85 = !DISubroutineType(types: !86)
!86 = !{!10, !12, !12}
!87 = !DISubprogram(name: "textdomain", scope: !7, file: !7, line: 82, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!88 = !DISubroutineType(types: !89)
!89 = !{!10, !12}
!90 = !DISubprogram(name: "atexit", scope: !91, file: !91, line: 595, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!91 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!92 = !DISubroutineType(types: !93)
!93 = !{!14, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DISubprogram(name: "getopt_long", scope: !98, file: !98, line: 66, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!98 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!99 = !DISubroutineType(types: !100)
!100 = !{!14, !14, !101, !12, !103, !110}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !98, line: 50, size: 256, elements: !106)
!106 = !{!107, !108, !109, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !98, line: 52, baseType: !12, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !105, file: !98, line: 55, baseType: !14, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !105, file: !98, line: 56, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !105, file: !98, line: 57, baseType: !14, size: 32, offset: 192)
!112 = !DISubprogram(name: "error", scope: !113, file: !113, line: 52, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!113 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!114 = !DISubroutineType(types: !115)
!115 = !{null, !14, !14, !12, null}
!116 = !DISubprogram(name: "version_etc", scope: !117, file: !117, line: 69, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!117 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !19, !12, !12, !12, null}
!120 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = !{!0}
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 8)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "Version", scope: !127, file: !128, line: 2, type: !12, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !129, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!129 = !{!125}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "file_name", scope: !132, file: !133, line: 46, type: !12, isLocal: true, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !134, globals: !173, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !{!135, !6, !171, !112}
!135 = !DISubprogram(name: "close_stream", scope: !136, file: !136, line: 2, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!136 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!137 = !DISubroutineType(types: !138)
!138 = !{!14, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !140, file: !21, line: 51, baseType: !14, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !140, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !140, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !140, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !140, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !140, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !140, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !140, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !140, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !140, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !140, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !140, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !140, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !140, file: !21, line: 70, baseType: !139, size: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !140, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !140, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !140, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !140, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !140, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !140, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !140, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !140, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !140, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !140, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !140, file: !21, line: 93, baseType: !139, size: 64, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !140, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !140, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !140, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !140, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!171 = !DISubprogram(name: "quotearg_colon", scope: !172, file: !172, line: 391, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!172 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !{!130, !174}
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !132, file: !133, line: 56, type: !176, isLocal: true, isDefinition: true)
!176 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "exit_failure", scope: !179, file: !180, line: 24, type: !182, isLocal: false, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !181, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = !{!177}
!182 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "program_name", scope: !185, file: !186, line: 33, type: !12, isLocal: false, isDefinition: true)
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !187, globals: !223, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !{!66, !188, !10}
!188 = !DISubprogram(name: "fputs", scope: !16, file: !16, line: 626, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!189 = !DISubroutineType(types: !190)
!190 = !{!14, !12, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !192, file: !21, line: 51, baseType: !14, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !192, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !192, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !192, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !192, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !192, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !192, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !192, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !192, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !192, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !192, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !192, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !192, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !192, file: !21, line: 70, baseType: !191, size: 64, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !192, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !192, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !192, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !192, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !192, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !192, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !192, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !192, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !192, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !192, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !192, file: !21, line: 93, baseType: !191, size: 64, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !192, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !192, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !192, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !192, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!223 = !{!183}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !226, file: !227, line: 85, type: !359, isLocal: false, isDefinition: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !263, globals: !332, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = !{!229, !243, !248}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !172, line: 32, baseType: !230, size: 32, elements: !231)
!230 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!232 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!233 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!234 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!235 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!236 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!237 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!238 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!239 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!240 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!241 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!242 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !172, line: 242, baseType: !230, size: 32, elements: !244)
!244 = !{!245, !246, !247}
!245 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 46, baseType: !230, size: 32, elements: !250)
!249 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!251 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!252 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!253 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!254 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!255 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!256 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!257 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!258 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!259 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!260 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!261 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!262 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!263 = !{!264, !270, !284, !287, !14, !46, !290, !68, !307, !311, !6, !317, !321, !10, !325, !328, !329}
!264 = !DISubprogram(name: "xmemdup", scope: !265, file: !265, line: 62, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!265 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = !DISubroutineType(types: !267)
!267 = !{!66, !268, !70}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!270 = !DISubprogram(name: "quotearg_alloc_mem", scope: !172, file: !172, line: 342, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!271 = !DISubroutineType(types: !272)
!272 = !{!10, !12, !70, !273, !274}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !227, line: 65, size: 448, elements: !277)
!277 = !{!278, !279, !280, !282, !283}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !276, file: !227, line: 68, baseType: !229, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !227, line: 71, baseType: !14, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !276, file: !227, line: 75, baseType: !281, size: 256, offset: 64)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !123)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !276, file: !227, line: 78, baseType: !12, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !276, file: !227, line: 81, baseType: !12, size: 64, offset: 384)
!284 = !DISubprogram(name: "free", scope: !91, file: !91, line: 565, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !66}
!287 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !172, file: !172, line: 408, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!288 = !DISubroutineType(types: !289)
!289 = !{!10, !14, !12, !12, !12, !70}
!290 = !DISubprogram(name: "rpl_mbrtowc", scope: !291, file: !291, line: 717, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!291 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!292 = !DISubroutineType(types: !293)
!293 = !{!70, !110, !12, !70, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 13, size: 64, elements: !297)
!296 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !295, file: !296, line: 15, baseType: !14, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !295, file: !296, line: 20, baseType: !300, size: 32, offset: 32)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !296, line: 16, size: 32, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !300, file: !296, line: 18, baseType: !230, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !300, file: !296, line: 19, baseType: !304, size: 32)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 4)
!307 = !DISubprogram(name: "iswprint", scope: !308, file: !308, line: 120, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!308 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!309 = !DISubroutineType(types: !310)
!310 = !{!14, !230}
!311 = !DISubprogram(name: "mbsinit", scope: !312, file: !312, line: 292, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!312 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!313 = !DISubroutineType(types: !314)
!314 = !{!14, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!317 = !DISubprogram(name: "locale_charset", scope: !318, file: !318, line: 35, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!318 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!319 = !DISubroutineType(types: !320)
!320 = !{!12}
!321 = !DISubprogram(name: "c_strcasecmp", scope: !322, file: !322, line: 42, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!322 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!323 = !DISubroutineType(types: !324)
!324 = !{!14, !12, !12}
!325 = !DISubprogram(name: "xmalloc", scope: !265, file: !265, line: 53, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!326 = !DISubroutineType(types: !327)
!327 = !{!66, !70}
!328 = !DISubprogram(name: "xalloc_die", scope: !265, file: !265, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!329 = !DISubprogram(name: "xrealloc", scope: !265, file: !265, line: 59, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!330 = !DISubroutineType(types: !331)
!331 = !{!66, !66, !70}
!332 = !{!224, !333, !339, !341, !343, !348, !355, !357}
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !226, file: !227, line: 101, type: !335, isLocal: false, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 320, elements: !337)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!337 = !{!338}
!338 = !DISubrange(count: 10)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !226, file: !227, line: 1052, type: !276, isLocal: false, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !226, file: !227, line: 116, type: !276, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "slot0", scope: !226, file: !227, line: 842, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 256)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "slotvec", scope: !226, file: !227, line: 845, type: !350, isLocal: true, isDefinition: true)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !227, line: 834, size: 128, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !351, file: !227, line: 836, baseType: !68, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !351, file: !227, line: 837, baseType: !10, size: 64, offset: 64)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "nslots", scope: !226, file: !227, line: 843, type: !14, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "slotvec0", scope: !226, file: !227, line: 844, type: !351, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 704, elements: !361)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!361 = !{!362}
!362 = !DISubrange(count: 11)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !365, file: !366, line: 26, type: !368, isLocal: false, isDefinition: true)
!365 = distinct !DICompileUnit(language: DW_LANG_C99, file: !366, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !367, splitDebugInlining: false, nameTableKind: None)
!366 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!367 = !{!363}
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 47)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !373, retainedTypes: !377, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!373 = !{!374}
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !372, line: 40, baseType: !230, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!377 = !{!6, !378, !66}
!378 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!379 = !DISubroutineType(types: !380)
!380 = !{!14, !12, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !382, file: !21, line: 51, baseType: !14, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !382, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !382, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !382, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !382, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !382, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !382, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !382, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !382, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !382, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !382, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !382, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !382, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !382, file: !21, line: 70, baseType: !381, size: 64, offset: 832)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !382, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !382, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !382, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !382, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !382, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !382, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !382, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !382, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !382, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !382, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !382, file: !21, line: 93, baseType: !381, size: 64, offset: 1344)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !382, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !382, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !382, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !382, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !415, retainedTypes: !428, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!415 = !{!416}
!416 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !417, file: !265, line: 186, baseType: !230, size: 32, elements: !426)
!417 = distinct !DISubprogram(name: "x2nrealloc", scope: !265, file: !265, line: 174, type: !418, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !421)
!418 = !DISubroutineType(types: !419)
!419 = !{!66, !66, !420, !68}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!421 = !{!422, !423, !424, !425}
!422 = !DILocalVariable(name: "p", arg: 1, scope: !417, file: !265, line: 174, type: !66)
!423 = !DILocalVariable(name: "pn", arg: 2, scope: !417, file: !265, line: 174, type: !420)
!424 = !DILocalVariable(name: "s", arg: 3, scope: !417, file: !265, line: 174, type: !68)
!425 = !DILocalVariable(name: "n", scope: !417, file: !265, line: 176, type: !68)
!426 = !{!427}
!427 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!428 = !{!68, !328, !325, !329, !10, !284, !66, !429, !432}
!429 = !DISubprogram(name: "xcalloc", scope: !265, file: !265, line: 57, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!430 = !DISubroutineType(types: !431)
!431 = !{!66, !70, !70}
!432 = !DISubprogram(name: "rpl_calloc", scope: !433, file: !433, line: 688, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!433 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !436, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!436 = !{!6, !112}
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !439, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!439 = !{!66}
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !442, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!442 = !{!443, !68, !455}
!443 = !DISubprogram(name: "mbrtowc", scope: !312, file: !312, line: 296, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!444 = !DISubroutineType(types: !445)
!445 = !{!70, !110, !12, !70, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 13, size: 64, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !447, file: !296, line: 15, baseType: !14, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !447, file: !296, line: 20, baseType: !451, size: 32, offset: 32)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !296, line: 16, size: 32, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !451, file: !296, line: 18, baseType: !230, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !451, file: !296, line: 19, baseType: !304, size: 32)
!455 = !DISubprogram(name: "hard_locale", scope: !456, file: !456, line: 26, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!456 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!457 = !DISubroutineType(types: !458)
!458 = !{!176, !14}
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !461, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!461 = !{!462}
!462 = !DISubprogram(name: "rpl_fclose", scope: !463, file: !463, line: 672, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!463 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!464 = !DISubroutineType(types: !465)
!465 = !{!14, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !467, file: !21, line: 51, baseType: !14, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !467, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !467, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !467, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !467, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !467, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !467, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !467, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !467, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !467, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !467, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !467, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !467, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !467, file: !21, line: 70, baseType: !466, size: 64, offset: 832)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !467, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !467, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !467, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !467, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !467, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !467, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !467, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !467, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !467, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !467, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !467, file: !21, line: 93, baseType: !466, size: 64, offset: 1344)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !467, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !467, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !467, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !467, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !500, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!500 = !{!501}
!501 = !DISubprogram(name: "setlocale_null_r", scope: !502, file: !502, line: 64, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!502 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!503 = !DISubroutineType(types: !504)
!504 = !{!14, !14, !10, !70}
!505 = distinct !DICompileUnit(language: DW_LANG_C99, file: !506, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !507, retainedTypes: !894, splitDebugInlining: false, nameTableKind: None)
!506 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!507 = !{!508}
!508 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 41, baseType: !230, size: 32, elements: !510)
!509 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893}
!511 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!512 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!513 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!514 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!515 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!516 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!517 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!518 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!519 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!520 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!521 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!522 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!523 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!524 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!525 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!526 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!527 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!528 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!529 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!530 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!531 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!532 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!533 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!534 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!535 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!536 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!537 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!538 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!539 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!540 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!541 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!542 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!543 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!544 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!545 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!546 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!547 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!548 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!549 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!550 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!551 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!552 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!553 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!554 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!555 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!556 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!557 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!558 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!559 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!560 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!619 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!622 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!623 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!624 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!625 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!626 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!627 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!628 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!629 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!630 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!631 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!632 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!633 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!706 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!779 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!780 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!781 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!782 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!783 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!784 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!785 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!786 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!787 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!788 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!789 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!790 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!791 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!792 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!793 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!795 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!796 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!797 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!798 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!799 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!800 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!826 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!827 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!828 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!829 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!830 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!835 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!836 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!837 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!838 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!894 = !{!895, !66}
!895 = !DISubprogram(name: "nl_langinfo", scope: !509, file: !509, line: 661, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!896 = !DISubroutineType(types: !897)
!897 = !{!10, !14}
!898 = distinct !DICompileUnit(language: DW_LANG_C99, file: !899, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !900, splitDebugInlining: false, nameTableKind: None)
!899 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!900 = !{!66, !80}
!901 = distinct !DICompileUnit(language: DW_LANG_C99, file: !902, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !903, splitDebugInlining: false, nameTableKind: None)
!902 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!903 = !{!904, !939, !940, !944}
!904 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!905 = !DISubroutineType(types: !906)
!906 = !{!14, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !908, file: !21, line: 51, baseType: !14, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !908, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !908, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !908, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !908, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !908, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !908, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !908, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !908, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !908, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !908, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !908, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !908, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !908, file: !21, line: 70, baseType: !907, size: 64, offset: 832)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !908, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !908, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !908, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !908, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !908, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !908, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !908, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !908, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !908, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !908, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !908, file: !21, line: 93, baseType: !907, size: 64, offset: 1344)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !908, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !908, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !908, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !908, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!939 = !DISubprogram(name: "fclose", scope: !16, file: !16, line: 213, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!940 = !DISubprogram(name: "lseek", scope: !941, file: !941, line: 334, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!941 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!942 = !DISubroutineType(types: !943)
!943 = !{!44, !14, !44, !14}
!944 = !DISubprogram(name: "rpl_fflush", scope: !463, file: !463, line: 718, type: !905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!945 = distinct !DICompileUnit(language: DW_LANG_C99, file: !946, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !947, splitDebugInlining: false, nameTableKind: None)
!946 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!947 = !{!66, !948, !983}
!948 = !DISubprogram(name: "fflush", scope: !16, file: !16, line: 218, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!949 = !DISubroutineType(types: !950)
!950 = !{!14, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !952, file: !21, line: 51, baseType: !14, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !952, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !952, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !952, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !952, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !952, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !952, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !952, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !952, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !952, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !952, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !952, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !952, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !952, file: !21, line: 70, baseType: !951, size: 64, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !952, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !952, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !952, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !952, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !952, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !952, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !952, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !952, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !952, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !952, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !952, file: !21, line: 93, baseType: !951, size: 64, offset: 1344)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !952, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !952, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !952, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !952, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!983 = !DISubprogram(name: "rpl_fseeko", scope: !463, file: !463, line: 1034, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!984 = !DISubroutineType(types: !985)
!985 = !{!14, !951, !44, !14}
!986 = distinct !DICompileUnit(language: DW_LANG_C99, file: !987, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !988, splitDebugInlining: false, nameTableKind: None)
!987 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!988 = !{!66, !989, !940, !1024}
!989 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!990 = !DISubroutineType(types: !991)
!991 = !{!14, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !993, file: !21, line: 51, baseType: !14, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !993, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !993, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !993, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !993, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !993, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !993, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !993, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !993, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !993, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !993, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !993, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !993, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !993, file: !21, line: 70, baseType: !992, size: 64, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !993, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !993, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !993, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !993, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !993, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !993, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !993, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !993, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !993, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !993, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !993, file: !21, line: 93, baseType: !992, size: 64, offset: 1344)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !993, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !993, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !993, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !993, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1024 = !DISubprogram(name: "fseeko", scope: !16, file: !16, line: 707, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!14, !992, !44, !14}
!1027 = !{!"clang version 10.0.0 "}
!1028 = !{i32 7, !"Dwarf Version", i32 4}
!1029 = !{i32 2, !"Debug Info Version", i32 3}
!1030 = !{i32 1, !"wchar_size", i32 4}
!1031 = !{i32 7, !"PIC Level", i32 2}
!1032 = !{i32 7, !"PIE Level", i32 2}
!1033 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !1034, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !14}
!1036 = !{!1037}
!1037 = !DILocalVariable(name: "status", arg: 1, scope: !1033, file: !3, line: 72, type: !14)
!1038 = !DILocalVariable(name: "infomap", scope: !1039, file: !1040, line: 636, type: !1052)
!1039 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1040, file: !1040, line: 634, type: !78, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1041)
!1040 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1041 = !{!1042, !1038, !1043, !1044, !1051}
!1042 = !DILocalVariable(name: "program", arg: 1, scope: !1039, file: !1040, line: 634, type: !12)
!1043 = !DILocalVariable(name: "node", scope: !1039, file: !1040, line: 646, type: !12)
!1044 = !DILocalVariable(name: "map_prog", scope: !1039, file: !1040, line: 647, type: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1039, file: !1040, line: 636, size: 128, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1047, file: !1040, line: 636, baseType: !12, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1047, file: !1040, line: 636, baseType: !12, size: 64, offset: 64)
!1051 = !DILocalVariable(name: "lc_messages", scope: !1039, file: !1040, line: 659, type: !12)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 896, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 7)
!1055 = !DILocation(line: 636, column: 67, scope: !1039, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 100, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 77, column: 5)
!1058 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 74, column: 7)
!1059 = !DILocation(line: 0, scope: !1033)
!1060 = !DILocation(line: 74, column: 14, scope: !1058)
!1061 = !DILocation(line: 74, column: 7, scope: !1033)
!1062 = !DILocation(line: 75, column: 5, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 75, column: 5)
!1064 = !{!1065, !1065, i64 0}
!1065 = !{!"any pointer", !1066, i64 0}
!1066 = !{!"omnipotent char", !1067, i64 0}
!1067 = !{!"Simple C/C++ TBAA"}
!1068 = !DILocation(line: 78, column: 7, scope: !1057)
!1069 = !DILocation(line: 82, column: 7, scope: !1057)
!1070 = !DILocation(line: 590, column: 3, scope: !1071, inlinedAt: !1072)
!1071 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1040, file: !1040, line: 588, type: !95, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1072 = distinct !DILocation(line: 87, column: 7, scope: !1057)
!1073 = !DILocation(line: 89, column: 7, scope: !1057)
!1074 = !DILocation(line: 98, column: 7, scope: !1057)
!1075 = !DILocation(line: 99, column: 7, scope: !1057)
!1076 = !DILocation(line: 0, scope: !1039, inlinedAt: !1056)
!1077 = !DILocation(line: 636, column: 3, scope: !1039, inlinedAt: !1056)
!1078 = !DILocation(line: 647, column: 36, scope: !1039, inlinedAt: !1056)
!1079 = !DILocation(line: 649, column: 3, scope: !1039, inlinedAt: !1056)
!1080 = !DILocation(line: 649, column: 33, scope: !1039, inlinedAt: !1056)
!1081 = !DILocation(line: 650, column: 13, scope: !1039, inlinedAt: !1056)
!1082 = !DILocation(line: 649, column: 20, scope: !1039, inlinedAt: !1056)
!1083 = !{!1084, !1065, i64 0}
!1084 = !{!"infomap", !1065, i64 0, !1065, i64 8}
!1085 = !DILocation(line: 649, column: 10, scope: !1039, inlinedAt: !1056)
!1086 = !DILocation(line: 649, column: 28, scope: !1039, inlinedAt: !1056)
!1087 = distinct !{!1087, !1079, !1081}
!1088 = !DILocation(line: 652, column: 17, scope: !1089, inlinedAt: !1056)
!1089 = distinct !DILexicalBlock(scope: !1039, file: !1040, line: 652, column: 7)
!1090 = !{!1084, !1065, i64 8}
!1091 = !DILocation(line: 652, column: 7, scope: !1089, inlinedAt: !1056)
!1092 = !DILocation(line: 652, column: 7, scope: !1039, inlinedAt: !1056)
!1093 = !DILocation(line: 655, column: 3, scope: !1039, inlinedAt: !1056)
!1094 = !DILocation(line: 659, column: 29, scope: !1039, inlinedAt: !1056)
!1095 = !DILocation(line: 660, column: 7, scope: !1096, inlinedAt: !1056)
!1096 = distinct !DILexicalBlock(scope: !1039, file: !1040, line: 660, column: 7)
!1097 = !DILocation(line: 660, column: 19, scope: !1096, inlinedAt: !1056)
!1098 = !DILocation(line: 660, column: 22, scope: !1096, inlinedAt: !1056)
!1099 = !DILocation(line: 660, column: 7, scope: !1039, inlinedAt: !1056)
!1100 = !DILocation(line: 666, column: 7, scope: !1101, inlinedAt: !1056)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !1040, line: 661, column: 5)
!1102 = !DILocation(line: 668, column: 5, scope: !1101, inlinedAt: !1056)
!1103 = !DILocation(line: 669, column: 3, scope: !1039, inlinedAt: !1056)
!1104 = !DILocation(line: 671, column: 3, scope: !1039, inlinedAt: !1056)
!1105 = !DILocation(line: 673, column: 1, scope: !1039, inlinedAt: !1056)
!1106 = !DILocation(line: 102, column: 3, scope: !1033)
!1107 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 106, type: !1108, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!14, !14, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1126, !1128}
!1112 = !DILocalVariable(name: "argc", arg: 1, scope: !1107, file: !3, line: 106, type: !14)
!1113 = !DILocalVariable(name: "argv", arg: 2, scope: !1107, file: !3, line: 106, type: !1110)
!1114 = !DILocalVariable(name: "role", scope: !1107, file: !3, line: 108, type: !10)
!1115 = !DILocalVariable(name: "range", scope: !1107, file: !3, line: 109, type: !10)
!1116 = !DILocalVariable(name: "user", scope: !1107, file: !3, line: 110, type: !10)
!1117 = !DILocalVariable(name: "type", scope: !1107, file: !3, line: 111, type: !10)
!1118 = !DILocalVariable(name: "context", scope: !1107, file: !3, line: 112, type: !10)
!1119 = !DILocalVariable(name: "cur_context", scope: !1107, file: !3, line: 113, type: !10)
!1120 = !DILocalVariable(name: "file_context", scope: !1107, file: !3, line: 114, type: !10)
!1121 = !DILocalVariable(name: "new_context", scope: !1107, file: !3, line: 115, type: !10)
!1122 = !DILocalVariable(name: "compute_trans", scope: !1107, file: !3, line: 116, type: !176)
!1123 = !DILocalVariable(name: "con", scope: !1107, file: !3, line: 118, type: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !1125, line: 53, baseType: !14)
!1125 = !DIFile(filename: "./lib/selinux/context.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1126 = !DILocalVariable(name: "option_index", scope: !1127, file: !3, line: 130, type: !14)
!1127 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 129, column: 5)
!1128 = !DILocalVariable(name: "c", scope: !1127, file: !3, line: 131, type: !14)
!1129 = !DILocation(line: 0, scope: !1107)
!1130 = !DILocation(line: 121, column: 21, scope: !1107)
!1131 = !DILocation(line: 121, column: 3, scope: !1107)
!1132 = !DILocation(line: 122, column: 3, scope: !1107)
!1133 = !DILocation(line: 123, column: 3, scope: !1107)
!1134 = !DILocation(line: 124, column: 3, scope: !1107)
!1135 = !DILocation(line: 126, column: 3, scope: !1107)
!1136 = !DILocation(line: 0, scope: !1127)
!1137 = !DILocation(line: 128, column: 3, scope: !1107)
!1138 = !DILocation(line: 111, column: 9, scope: !1107)
!1139 = !DILocation(line: 110, column: 9, scope: !1107)
!1140 = !DILocation(line: 109, column: 9, scope: !1107)
!1141 = !DILocation(line: 116, column: 8, scope: !1107)
!1142 = !DILocation(line: 108, column: 9, scope: !1107)
!1143 = !DILocation(line: 130, column: 7, scope: !1127)
!1144 = !DILocation(line: 130, column: 11, scope: !1127)
!1145 = !{!1146, !1146, i64 0}
!1146 = !{!"int", !1066, i64 0}
!1147 = !DILocation(line: 131, column: 15, scope: !1127)
!1148 = !DILocation(line: 133, column: 11, scope: !1127)
!1149 = !DILocation(line: 138, column: 15, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 138, column: 15)
!1151 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 136, column: 9)
!1152 = !DILocation(line: 138, column: 15, scope: !1151)
!1153 = !DILocation(line: 139, column: 13, scope: !1150)
!1154 = !DILocation(line: 140, column: 18, scope: !1151)
!1155 = !DILocation(line: 141, column: 11, scope: !1151)
!1156 = !DILocation(line: 143, column: 15, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 143, column: 15)
!1158 = !DILocation(line: 143, column: 15, scope: !1151)
!1159 = !DILocation(line: 144, column: 13, scope: !1157)
!1160 = !DILocation(line: 145, column: 18, scope: !1151)
!1161 = !DILocation(line: 146, column: 11, scope: !1151)
!1162 = !DILocation(line: 148, column: 15, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 148, column: 15)
!1164 = !DILocation(line: 148, column: 15, scope: !1151)
!1165 = !DILocation(line: 149, column: 13, scope: !1163)
!1166 = !DILocation(line: 150, column: 18, scope: !1151)
!1167 = !DILocation(line: 151, column: 11, scope: !1151)
!1168 = !DILocation(line: 153, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 153, column: 15)
!1170 = !DILocation(line: 153, column: 15, scope: !1151)
!1171 = !DILocation(line: 154, column: 13, scope: !1169)
!1172 = !DILocation(line: 155, column: 19, scope: !1151)
!1173 = !DILocation(line: 156, column: 11, scope: !1151)
!1174 = !DILocation(line: 161, column: 9, scope: !1151)
!1175 = !DILocation(line: 162, column: 9, scope: !1151)
!1176 = !DILocation(line: 164, column: 11, scope: !1151)
!1177 = !DILocation(line: 167, column: 5, scope: !1107)
!1178 = !DILocation(line: 169, column: 14, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 169, column: 7)
!1180 = !DILocation(line: 169, column: 21, scope: !1179)
!1181 = !DILocation(line: 169, column: 7, scope: !1107)
!1182 = !DILocation(line: 88, column: 5, scope: !1183, inlinedAt: !1191)
!1183 = distinct !DISubprogram(name: "getcon", scope: !1184, file: !1184, line: 87, type: !1185, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1189)
!1184 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!14, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_context_t", file: !1184, line: 83, baseType: !10)
!1189 = !{!1190}
!1190 = !DILocalVariable(name: "con", arg: 1, scope: !1183, file: !1184, line: 87, type: !1187)
!1191 = distinct !DILocation(line: 171, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 171, column: 11)
!1193 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 170, column: 5)
!1194 = !DILocation(line: 88, column: 11, scope: !1183, inlinedAt: !1191)
!1195 = !DILocation(line: 172, column: 9, scope: !1192)
!1196 = !DILocation(line: 178, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 178, column: 7)
!1198 = !DILocation(line: 178, column: 17, scope: !1197)
!1199 = !DILocation(line: 178, column: 14, scope: !1197)
!1200 = !DILocation(line: 178, column: 25, scope: !1197)
!1201 = !DILocation(line: 178, column: 33, scope: !1197)
!1202 = !DILocation(line: 178, column: 42, scope: !1197)
!1203 = !DILocation(line: 180, column: 18, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 180, column: 11)
!1205 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 179, column: 5)
!1206 = !DILocation(line: 180, column: 11, scope: !1205)
!1207 = !DILocation(line: 182, column: 24, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 181, column: 9)
!1209 = !DILocation(line: 182, column: 11, scope: !1208)
!1210 = !DILocation(line: 183, column: 11, scope: !1208)
!1211 = !DILocation(line: 185, column: 28, scope: !1205)
!1212 = !DILocation(line: 186, column: 5, scope: !1205)
!1213 = !DILocation(line: 188, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 188, column: 7)
!1215 = !DILocation(line: 188, column: 14, scope: !1214)
!1216 = !DILocation(line: 188, column: 7, scope: !1107)
!1217 = !DILocation(line: 190, column: 20, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 189, column: 5)
!1219 = !DILocation(line: 190, column: 7, scope: !1218)
!1220 = !DILocation(line: 191, column: 7, scope: !1218)
!1221 = !DILocation(line: 195, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 194, column: 7)
!1223 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !133, file: !133, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132, retainedNodes: !1224)
!1224 = !{!1225}
!1225 = !DILocalVariable(name: "file", arg: 1, scope: !1223, file: !133, line: 51, type: !12)
!1226 = !DILocation(line: 0, scope: !1223)
!1227 = !DILocation(line: 53, column: 13, scope: !1223)
!1228 = !DILocation(line: 54, column: 1, scope: !1223)
!1229 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !133, file: !133, line: 88, type: !1230, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !176}
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "ignore", arg: 1, scope: !1229, file: !133, line: 88, type: !176)
!1234 = !DILocation(line: 0, scope: !1229)
!1235 = !DILocation(line: 90, column: 16, scope: !1229)
!1236 = !{!1237, !1237, i64 0}
!1237 = !{!"_Bool", !1066, i64 0}
!1238 = !DILocation(line: 91, column: 1, scope: !1229)
!1239 = distinct !DISubprogram(name: "close_stdout", scope: !133, file: !133, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132, retainedNodes: !1240)
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "write_error", scope: !1242, file: !133, line: 122, type: !12)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !133, line: 121, column: 5)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !133, line: 119, column: 7)
!1244 = !DILocation(line: 119, column: 21, scope: !1243)
!1245 = !DILocation(line: 119, column: 7, scope: !1243)
!1246 = !DILocation(line: 119, column: 29, scope: !1243)
!1247 = !DILocation(line: 120, column: 7, scope: !1243)
!1248 = !DILocation(line: 120, column: 12, scope: !1243)
!1249 = !{i8 0, i8 2}
!1250 = !DILocation(line: 120, column: 25, scope: !1243)
!1251 = !DILocation(line: 120, column: 28, scope: !1243)
!1252 = !DILocation(line: 120, column: 34, scope: !1243)
!1253 = !DILocation(line: 119, column: 7, scope: !1239)
!1254 = !DILocation(line: 122, column: 33, scope: !1242)
!1255 = !DILocation(line: 0, scope: !1242)
!1256 = !DILocation(line: 123, column: 11, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1242, file: !133, line: 123, column: 11)
!1258 = !DILocation(line: 0, scope: !1257)
!1259 = !DILocation(line: 123, column: 11, scope: !1242)
!1260 = !DILocation(line: 124, column: 36, scope: !1257)
!1261 = !DILocation(line: 124, column: 9, scope: !1257)
!1262 = !DILocation(line: 127, column: 9, scope: !1257)
!1263 = !DILocation(line: 129, column: 14, scope: !1242)
!1264 = !DILocation(line: 129, column: 7, scope: !1242)
!1265 = !DILocation(line: 134, column: 42, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1239, file: !133, line: 134, column: 7)
!1267 = !DILocation(line: 134, column: 28, scope: !1266)
!1268 = !DILocation(line: 134, column: 50, scope: !1266)
!1269 = !DILocation(line: 134, column: 7, scope: !1239)
!1270 = !DILocation(line: 135, column: 12, scope: !1266)
!1271 = !DILocation(line: 135, column: 5, scope: !1266)
!1272 = !DILocation(line: 136, column: 1, scope: !1239)
!1273 = distinct !DISubprogram(name: "set_program_name", scope: !186, file: !186, line: 39, type: !78, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DILocalVariable(name: "argv0", arg: 1, scope: !1273, file: !186, line: 39, type: !12)
!1276 = !DILocalVariable(name: "slash", scope: !1273, file: !186, line: 46, type: !12)
!1277 = !DILocalVariable(name: "base", scope: !1273, file: !186, line: 47, type: !12)
!1278 = !DILocation(line: 0, scope: !1273)
!1279 = !DILocation(line: 51, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1273, file: !186, line: 51, column: 7)
!1281 = !DILocation(line: 51, column: 7, scope: !1273)
!1282 = !DILocation(line: 55, column: 14, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1280, file: !186, line: 52, column: 5)
!1284 = !DILocation(line: 54, column: 7, scope: !1283)
!1285 = !DILocation(line: 56, column: 7, scope: !1283)
!1286 = !DILocation(line: 59, column: 11, scope: !1273)
!1287 = !DILocation(line: 60, column: 17, scope: !1273)
!1288 = !DILocation(line: 60, column: 11, scope: !1273)
!1289 = !DILocation(line: 61, column: 12, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1273, file: !186, line: 61, column: 7)
!1291 = !DILocation(line: 61, column: 20, scope: !1290)
!1292 = !DILocation(line: 61, column: 25, scope: !1290)
!1293 = !DILocation(line: 61, column: 42, scope: !1290)
!1294 = !DILocation(line: 61, column: 28, scope: !1290)
!1295 = !DILocation(line: 61, column: 61, scope: !1290)
!1296 = !DILocation(line: 61, column: 7, scope: !1273)
!1297 = !DILocation(line: 64, column: 11, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !186, line: 64, column: 11)
!1299 = distinct !DILexicalBlock(scope: !1290, file: !186, line: 62, column: 5)
!1300 = !DILocation(line: 64, column: 36, scope: !1298)
!1301 = !DILocation(line: 64, column: 11, scope: !1299)
!1302 = !DILocation(line: 66, column: 24, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !186, line: 65, column: 9)
!1304 = !DILocation(line: 70, column: 41, scope: !1303)
!1305 = !DILocation(line: 72, column: 9, scope: !1303)
!1306 = !DILocation(line: 84, column: 16, scope: !1273)
!1307 = !DILocation(line: 90, column: 27, scope: !1273)
!1308 = !DILocation(line: 92, column: 1, scope: !1273)
!1309 = distinct !DISubprogram(name: "clone_quoting_options", scope: !227, file: !227, line: 122, type: !1310, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1313)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1312, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1313 = !{!1314, !1315, !1316}
!1314 = !DILocalVariable(name: "o", arg: 1, scope: !1309, file: !227, line: 122, type: !1312)
!1315 = !DILocalVariable(name: "e", scope: !1309, file: !227, line: 124, type: !14)
!1316 = !DILocalVariable(name: "p", scope: !1309, file: !227, line: 125, type: !1312)
!1317 = !DILocation(line: 0, scope: !1309)
!1318 = !DILocation(line: 124, column: 11, scope: !1309)
!1319 = !DILocation(line: 125, column: 40, scope: !1309)
!1320 = !DILocation(line: 125, column: 31, scope: !1309)
!1321 = !DILocation(line: 127, column: 9, scope: !1309)
!1322 = !DILocation(line: 128, column: 3, scope: !1309)
!1323 = distinct !DISubprogram(name: "get_quoting_style", scope: !227, file: !227, line: 133, type: !1324, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!229, !274}
!1326 = !{!1327}
!1327 = !DILocalVariable(name: "o", arg: 1, scope: !1323, file: !227, line: 133, type: !274)
!1328 = !DILocation(line: 0, scope: !1323)
!1329 = !DILocation(line: 135, column: 11, scope: !1323)
!1330 = !DILocation(line: 135, column: 46, scope: !1323)
!1331 = !{!1332, !1066, i64 0}
!1332 = !{!"quoting_options", !1066, i64 0, !1146, i64 4, !1066, i64 8, !1065, i64 40, !1065, i64 48}
!1333 = !DILocation(line: 135, column: 3, scope: !1323)
!1334 = distinct !DISubprogram(name: "set_quoting_style", scope: !227, file: !227, line: 141, type: !1335, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !1312, !229}
!1337 = !{!1338, !1339}
!1338 = !DILocalVariable(name: "o", arg: 1, scope: !1334, file: !227, line: 141, type: !1312)
!1339 = !DILocalVariable(name: "s", arg: 2, scope: !1334, file: !227, line: 141, type: !229)
!1340 = !DILocation(line: 0, scope: !1334)
!1341 = !DILocation(line: 143, column: 4, scope: !1334)
!1342 = !DILocation(line: 143, column: 39, scope: !1334)
!1343 = !DILocation(line: 143, column: 45, scope: !1334)
!1344 = !DILocation(line: 144, column: 1, scope: !1334)
!1345 = distinct !DISubprogram(name: "set_char_quoting", scope: !227, file: !227, line: 152, type: !1346, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1348)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!14, !1312, !11, !14}
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1355, !1356}
!1349 = !DILocalVariable(name: "o", arg: 1, scope: !1345, file: !227, line: 152, type: !1312)
!1350 = !DILocalVariable(name: "c", arg: 2, scope: !1345, file: !227, line: 152, type: !11)
!1351 = !DILocalVariable(name: "i", arg: 3, scope: !1345, file: !227, line: 152, type: !14)
!1352 = !DILocalVariable(name: "uc", scope: !1345, file: !227, line: 154, type: !120)
!1353 = !DILocalVariable(name: "p", scope: !1345, file: !227, line: 155, type: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1355 = !DILocalVariable(name: "shift", scope: !1345, file: !227, line: 157, type: !14)
!1356 = !DILocalVariable(name: "r", scope: !1345, file: !227, line: 158, type: !14)
!1357 = !DILocation(line: 0, scope: !1345)
!1358 = !DILocation(line: 156, column: 6, scope: !1345)
!1359 = !DILocation(line: 156, column: 62, scope: !1345)
!1360 = !DILocation(line: 156, column: 57, scope: !1345)
!1361 = !DILocation(line: 157, column: 15, scope: !1345)
!1362 = !DILocation(line: 158, column: 12, scope: !1345)
!1363 = !DILocation(line: 158, column: 15, scope: !1345)
!1364 = !DILocation(line: 158, column: 25, scope: !1345)
!1365 = !DILocation(line: 159, column: 13, scope: !1345)
!1366 = !DILocation(line: 159, column: 18, scope: !1345)
!1367 = !DILocation(line: 159, column: 23, scope: !1345)
!1368 = !DILocation(line: 159, column: 6, scope: !1345)
!1369 = !DILocation(line: 160, column: 3, scope: !1345)
!1370 = distinct !DISubprogram(name: "set_quoting_flags", scope: !227, file: !227, line: 168, type: !1371, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!14, !1312, !14}
!1373 = !{!1374, !1375, !1376}
!1374 = !DILocalVariable(name: "o", arg: 1, scope: !1370, file: !227, line: 168, type: !1312)
!1375 = !DILocalVariable(name: "i", arg: 2, scope: !1370, file: !227, line: 168, type: !14)
!1376 = !DILocalVariable(name: "r", scope: !1370, file: !227, line: 170, type: !14)
!1377 = !DILocation(line: 0, scope: !1370)
!1378 = !DILocation(line: 171, column: 8, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1370, file: !227, line: 171, column: 7)
!1380 = !DILocation(line: 171, column: 7, scope: !1370)
!1381 = !DILocation(line: 173, column: 10, scope: !1370)
!1382 = !{!1332, !1146, i64 4}
!1383 = !DILocation(line: 174, column: 12, scope: !1370)
!1384 = !DILocation(line: 175, column: 3, scope: !1370)
!1385 = distinct !DISubprogram(name: "set_custom_quoting", scope: !227, file: !227, line: 179, type: !1386, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1388)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !1312, !12, !12}
!1388 = !{!1389, !1390, !1391}
!1389 = !DILocalVariable(name: "o", arg: 1, scope: !1385, file: !227, line: 179, type: !1312)
!1390 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1385, file: !227, line: 180, type: !12)
!1391 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1385, file: !227, line: 180, type: !12)
!1392 = !DILocation(line: 0, scope: !1385)
!1393 = !DILocation(line: 182, column: 8, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1385, file: !227, line: 182, column: 7)
!1395 = !DILocation(line: 182, column: 7, scope: !1385)
!1396 = !DILocation(line: 184, column: 6, scope: !1385)
!1397 = !DILocation(line: 184, column: 12, scope: !1385)
!1398 = !DILocation(line: 185, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1385, file: !227, line: 185, column: 7)
!1400 = !DILocation(line: 185, column: 23, scope: !1399)
!1401 = !DILocation(line: 185, column: 19, scope: !1399)
!1402 = !DILocation(line: 186, column: 5, scope: !1399)
!1403 = !DILocation(line: 187, column: 6, scope: !1385)
!1404 = !DILocation(line: 187, column: 17, scope: !1385)
!1405 = !{!1332, !1065, i64 40}
!1406 = !DILocation(line: 188, column: 6, scope: !1385)
!1407 = !DILocation(line: 188, column: 18, scope: !1385)
!1408 = !{!1332, !1065, i64 48}
!1409 = !DILocation(line: 189, column: 1, scope: !1385)
!1410 = distinct !DISubprogram(name: "quotearg_buffer", scope: !227, file: !227, line: 784, type: !1411, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!68, !10, !68, !12, !68, !274}
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421}
!1414 = !DILocalVariable(name: "buffer", arg: 1, scope: !1410, file: !227, line: 784, type: !10)
!1415 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1410, file: !227, line: 784, type: !68)
!1416 = !DILocalVariable(name: "arg", arg: 3, scope: !1410, file: !227, line: 785, type: !12)
!1417 = !DILocalVariable(name: "argsize", arg: 4, scope: !1410, file: !227, line: 785, type: !68)
!1418 = !DILocalVariable(name: "o", arg: 5, scope: !1410, file: !227, line: 786, type: !274)
!1419 = !DILocalVariable(name: "p", scope: !1410, file: !227, line: 788, type: !274)
!1420 = !DILocalVariable(name: "e", scope: !1410, file: !227, line: 789, type: !14)
!1421 = !DILocalVariable(name: "r", scope: !1410, file: !227, line: 790, type: !68)
!1422 = !DILocation(line: 0, scope: !1410)
!1423 = !DILocation(line: 788, column: 37, scope: !1410)
!1424 = !DILocation(line: 789, column: 11, scope: !1410)
!1425 = !DILocation(line: 791, column: 43, scope: !1410)
!1426 = !DILocation(line: 791, column: 53, scope: !1410)
!1427 = !DILocation(line: 791, column: 60, scope: !1410)
!1428 = !DILocation(line: 792, column: 43, scope: !1410)
!1429 = !DILocation(line: 792, column: 58, scope: !1410)
!1430 = !DILocation(line: 790, column: 14, scope: !1410)
!1431 = !DILocation(line: 793, column: 9, scope: !1410)
!1432 = !DILocation(line: 794, column: 3, scope: !1410)
!1433 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !227, file: !227, line: 256, type: !1434, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1438)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!68, !10, !68, !12, !68, !229, !14, !1436, !12, !12}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1463, !1464, !1465, !1466, !1467, !1470, !1471, !1477, !1480, !1481, !1488, !1491, !1492, !1493, !1494, !1495, !1496}
!1439 = !DILocalVariable(name: "buffer", arg: 1, scope: !1433, file: !227, line: 256, type: !10)
!1440 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1433, file: !227, line: 256, type: !68)
!1441 = !DILocalVariable(name: "arg", arg: 3, scope: !1433, file: !227, line: 257, type: !12)
!1442 = !DILocalVariable(name: "argsize", arg: 4, scope: !1433, file: !227, line: 257, type: !68)
!1443 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1433, file: !227, line: 258, type: !229)
!1444 = !DILocalVariable(name: "flags", arg: 6, scope: !1433, file: !227, line: 258, type: !14)
!1445 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1433, file: !227, line: 259, type: !1436)
!1446 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1433, file: !227, line: 260, type: !12)
!1447 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1433, file: !227, line: 261, type: !12)
!1448 = !DILocalVariable(name: "i", scope: !1433, file: !227, line: 263, type: !68)
!1449 = !DILocalVariable(name: "len", scope: !1433, file: !227, line: 264, type: !68)
!1450 = !DILocalVariable(name: "orig_buffersize", scope: !1433, file: !227, line: 265, type: !68)
!1451 = !DILocalVariable(name: "quote_string", scope: !1433, file: !227, line: 266, type: !12)
!1452 = !DILocalVariable(name: "quote_string_len", scope: !1433, file: !227, line: 267, type: !68)
!1453 = !DILocalVariable(name: "backslash_escapes", scope: !1433, file: !227, line: 268, type: !176)
!1454 = !DILocalVariable(name: "unibyte_locale", scope: !1433, file: !227, line: 269, type: !176)
!1455 = !DILocalVariable(name: "elide_outer_quotes", scope: !1433, file: !227, line: 270, type: !176)
!1456 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1433, file: !227, line: 271, type: !176)
!1457 = !DILocalVariable(name: "encountered_single_quote", scope: !1433, file: !227, line: 272, type: !176)
!1458 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1433, file: !227, line: 273, type: !176)
!1459 = !DILocalVariable(name: "c", scope: !1460, file: !227, line: 402, type: !120)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !227, line: 401, column: 5)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !227, line: 400, column: 3)
!1462 = distinct !DILexicalBlock(scope: !1433, file: !227, line: 400, column: 3)
!1463 = !DILocalVariable(name: "esc", scope: !1460, file: !227, line: 403, type: !120)
!1464 = !DILocalVariable(name: "is_right_quote", scope: !1460, file: !227, line: 404, type: !176)
!1465 = !DILocalVariable(name: "escaping", scope: !1460, file: !227, line: 405, type: !176)
!1466 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1460, file: !227, line: 406, type: !176)
!1467 = !DILocalVariable(name: "m", scope: !1468, file: !227, line: 610, type: !68)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 608, column: 11)
!1469 = distinct !DILexicalBlock(scope: !1460, file: !227, line: 426, column: 9)
!1470 = !DILocalVariable(name: "printable", scope: !1468, file: !227, line: 612, type: !176)
!1471 = !DILocalVariable(name: "mbstate", scope: !1472, file: !227, line: 621, type: !1474)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !227, line: 620, column: 15)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !227, line: 614, column: 17)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1475, line: 6, baseType: !1476)
!1475 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !296, line: 21, baseType: !295)
!1477 = !DILocalVariable(name: "w", scope: !1478, file: !227, line: 631, type: !1479)
!1478 = distinct !DILexicalBlock(scope: !1472, file: !227, line: 630, column: 19)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !14)
!1480 = !DILocalVariable(name: "bytes", scope: !1478, file: !227, line: 632, type: !68)
!1481 = !DILocalVariable(name: "j", scope: !1482, file: !227, line: 657, type: !68)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !227, line: 656, column: 27)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !227, line: 654, column: 29)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !227, line: 649, column: 23)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !227, line: 641, column: 30)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !227, line: 636, column: 30)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !227, line: 634, column: 25)
!1488 = !DILocalVariable(name: "ilim", scope: !1489, file: !227, line: 684, type: !68)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !227, line: 681, column: 15)
!1490 = distinct !DILexicalBlock(scope: !1468, file: !227, line: 680, column: 17)
!1491 = !DILabel(scope: !1433, name: "process_input", file: !227, line: 314)
!1492 = !DILabel(scope: !1469, name: "c_and_shell_escape", file: !227, line: 512)
!1493 = !DILabel(scope: !1469, name: "c_escape", file: !227, line: 517)
!1494 = !DILabel(scope: !1460, name: "store_escape", file: !227, line: 719)
!1495 = !DILabel(scope: !1460, name: "store_c", file: !227, line: 722)
!1496 = !DILabel(scope: !1433, name: "force_outer_quoting_style", file: !227, line: 763)
!1497 = !DILocation(line: 0, scope: !1433)
!1498 = !DILocation(line: 269, column: 25, scope: !1433)
!1499 = !DILocation(line: 269, column: 36, scope: !1433)
!1500 = !DILocation(line: 270, column: 8, scope: !1433)
!1501 = !DILocation(line: 0, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 526, column: 15)
!1503 = !DILocation(line: 0, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !227, line: 462, column: 19)
!1505 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 455, column: 13)
!1506 = !DILocation(line: 0, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !227, line: 449, column: 20)
!1508 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 428, column: 15)
!1509 = !DILocation(line: 0, scope: !1472)
!1510 = !DILocation(line: 0, scope: !1478)
!1511 = !DILocation(line: 0, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1460, file: !227, line: 712, column: 11)
!1513 = !DILocation(line: 273, column: 3, scope: !1433)
!1514 = !DILocation(line: 265, column: 10, scope: !1433)
!1515 = !DILocation(line: 266, column: 15, scope: !1433)
!1516 = !DILocation(line: 267, column: 10, scope: !1433)
!1517 = !DILocation(line: 268, column: 8, scope: !1433)
!1518 = !DILocation(line: 271, column: 8, scope: !1433)
!1519 = !DILocation(line: 272, column: 8, scope: !1433)
!1520 = !DILocation(line: 273, column: 8, scope: !1433)
!1521 = !DILocation(line: 314, column: 2, scope: !1433)
!1522 = !DILocation(line: 316, column: 3, scope: !1433)
!1523 = !DILocation(line: 323, column: 11, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1433, file: !227, line: 317, column: 5)
!1525 = !DILocation(line: 323, column: 12, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1524, file: !227, line: 323, column: 11)
!1527 = !DILocation(line: 324, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !227, line: 324, column: 9)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !227, line: 324, column: 9)
!1530 = !DILocation(line: 324, column: 9, scope: !1529)
!1531 = !{!1066, !1066, i64 0}
!1532 = !DILocation(line: 362, column: 26, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !227, line: 340, column: 11)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !227, line: 339, column: 13)
!1535 = distinct !DILexicalBlock(scope: !1524, file: !227, line: 338, column: 7)
!1536 = !DILocation(line: 363, column: 27, scope: !1533)
!1537 = !DILocation(line: 364, column: 11, scope: !1533)
!1538 = !DILocation(line: 365, column: 14, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !227, line: 365, column: 13)
!1540 = !DILocation(line: 365, column: 13, scope: !1535)
!1541 = !DILocation(line: 366, column: 43, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !227, line: 366, column: 11)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !227, line: 366, column: 11)
!1544 = !DILocation(line: 366, column: 11, scope: !1543)
!1545 = !DILocation(line: 367, column: 13, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !227, line: 367, column: 13)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !227, line: 367, column: 13)
!1548 = !DILocation(line: 367, column: 13, scope: !1547)
!1549 = !DILocation(line: 366, column: 70, scope: !1542)
!1550 = distinct !{!1550, !1544, !1551}
!1551 = !DILocation(line: 367, column: 13, scope: !1543)
!1552 = !DILocation(line: 264, column: 10, scope: !1433)
!1553 = !DILocation(line: 370, column: 28, scope: !1535)
!1554 = !DILocation(line: 372, column: 7, scope: !1524)
!1555 = !DILocation(line: 376, column: 7, scope: !1524)
!1556 = !DILocation(line: 379, column: 7, scope: !1524)
!1557 = !DILocation(line: 381, column: 12, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1524, file: !227, line: 381, column: 11)
!1559 = !DILocation(line: 381, column: 11, scope: !1524)
!1560 = !DILocation(line: 386, column: 12, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1524, file: !227, line: 386, column: 11)
!1562 = !DILocation(line: 386, column: 11, scope: !1524)
!1563 = !DILocation(line: 387, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !227, line: 387, column: 9)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !227, line: 387, column: 9)
!1566 = !DILocation(line: 387, column: 9, scope: !1565)
!1567 = !DILocation(line: 394, column: 7, scope: !1524)
!1568 = !DILocation(line: 397, column: 7, scope: !1524)
!1569 = !DILocation(line: 0, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1460, file: !227, line: 408, column: 11)
!1571 = !DILocation(line: 0, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !227, line: 419, column: 15)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !227, line: 418, column: 9)
!1574 = !DILocation(line: 0, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 556, column: 15)
!1576 = !DILocation(line: 0, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 548, column: 15)
!1578 = !DILocation(line: 0, scope: !1483)
!1579 = !DILocation(line: 0, scope: !1490)
!1580 = !DILocation(line: 0, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 509, column: 15)
!1582 = !DILocation(line: 400, column: 8, scope: !1462)
!1583 = !DILocation(line: 0, scope: !1462)
!1584 = !DILocation(line: 400, column: 27, scope: !1461)
!1585 = !DILocation(line: 400, column: 19, scope: !1461)
!1586 = !DILocation(line: 400, column: 41, scope: !1461)
!1587 = !DILocation(line: 400, column: 48, scope: !1461)
!1588 = !DILocation(line: 400, column: 3, scope: !1462)
!1589 = !DILocation(line: 400, column: 60, scope: !1461)
!1590 = !DILocation(line: 0, scope: !1460)
!1591 = !DILocation(line: 409, column: 11, scope: !1570)
!1592 = !DILocation(line: 411, column: 17, scope: !1570)
!1593 = !DILocation(line: 412, column: 39, scope: !1570)
!1594 = !DILocation(line: 416, column: 32, scope: !1570)
!1595 = !DILocation(line: 412, column: 19, scope: !1570)
!1596 = !DILocation(line: 412, column: 15, scope: !1570)
!1597 = !DILocation(line: 417, column: 11, scope: !1570)
!1598 = !DILocation(line: 417, column: 26, scope: !1570)
!1599 = !DILocation(line: 417, column: 14, scope: !1570)
!1600 = !DILocation(line: 417, column: 63, scope: !1570)
!1601 = !DILocation(line: 408, column: 11, scope: !1460)
!1602 = !DILocation(line: 424, column: 11, scope: !1460)
!1603 = !DILocation(line: 425, column: 7, scope: !1460)
!1604 = !DILocation(line: 428, column: 15, scope: !1469)
!1605 = !DILocation(line: 430, column: 15, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !227, line: 430, column: 15)
!1607 = distinct !DILexicalBlock(scope: !1508, file: !227, line: 429, column: 13)
!1608 = !DILocation(line: 430, column: 15, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !227, line: 430, column: 15)
!1610 = !DILocation(line: 430, column: 15, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !227, line: 430, column: 15)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !227, line: 430, column: 15)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !227, line: 430, column: 15)
!1614 = !DILocation(line: 430, column: 15, scope: !1612)
!1615 = !DILocation(line: 430, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !227, line: 430, column: 15)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !227, line: 430, column: 15)
!1618 = !DILocation(line: 430, column: 15, scope: !1617)
!1619 = !DILocation(line: 430, column: 15, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !227, line: 430, column: 15)
!1621 = distinct !DILexicalBlock(scope: !1613, file: !227, line: 430, column: 15)
!1622 = !DILocation(line: 430, column: 15, scope: !1621)
!1623 = !DILocation(line: 430, column: 15, scope: !1613)
!1624 = !DILocation(line: 430, column: 15, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !227, line: 430, column: 15)
!1626 = distinct !DILexicalBlock(scope: !1606, file: !227, line: 430, column: 15)
!1627 = !DILocation(line: 430, column: 15, scope: !1626)
!1628 = !DILocation(line: 438, column: 19, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1607, file: !227, line: 437, column: 19)
!1630 = !DILocation(line: 438, column: 24, scope: !1629)
!1631 = !DILocation(line: 438, column: 28, scope: !1629)
!1632 = !DILocation(line: 438, column: 38, scope: !1629)
!1633 = !DILocation(line: 438, column: 48, scope: !1629)
!1634 = !DILocation(line: 438, column: 59, scope: !1629)
!1635 = !DILocation(line: 440, column: 19, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !227, line: 440, column: 19)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !227, line: 440, column: 19)
!1638 = distinct !DILexicalBlock(scope: !1629, file: !227, line: 439, column: 17)
!1639 = !DILocation(line: 440, column: 19, scope: !1637)
!1640 = !DILocation(line: 441, column: 19, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !227, line: 441, column: 19)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !227, line: 441, column: 19)
!1643 = !DILocation(line: 441, column: 19, scope: !1642)
!1644 = !DILocation(line: 442, column: 17, scope: !1638)
!1645 = !DILocation(line: 449, column: 20, scope: !1508)
!1646 = !DILocation(line: 454, column: 11, scope: !1469)
!1647 = !DILocation(line: 457, column: 19, scope: !1505)
!1648 = !DILocation(line: 463, column: 19, scope: !1504)
!1649 = !DILocation(line: 463, column: 24, scope: !1504)
!1650 = !DILocation(line: 463, column: 28, scope: !1504)
!1651 = !DILocation(line: 463, column: 38, scope: !1504)
!1652 = !DILocation(line: 463, column: 47, scope: !1504)
!1653 = !DILocation(line: 463, column: 41, scope: !1504)
!1654 = !DILocation(line: 463, column: 52, scope: !1504)
!1655 = !DILocation(line: 462, column: 19, scope: !1505)
!1656 = !DILocation(line: 464, column: 25, scope: !1504)
!1657 = !DILocation(line: 464, column: 17, scope: !1504)
!1658 = !DILocation(line: 471, column: 25, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1504, file: !227, line: 465, column: 19)
!1660 = !DILocation(line: 475, column: 21, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !227, line: 475, column: 21)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !227, line: 475, column: 21)
!1663 = !DILocation(line: 475, column: 21, scope: !1662)
!1664 = !DILocation(line: 476, column: 21, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !227, line: 476, column: 21)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !227, line: 476, column: 21)
!1667 = !DILocation(line: 476, column: 21, scope: !1666)
!1668 = !DILocation(line: 477, column: 21, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !227, line: 477, column: 21)
!1670 = distinct !DILexicalBlock(scope: !1659, file: !227, line: 477, column: 21)
!1671 = !DILocation(line: 477, column: 21, scope: !1670)
!1672 = !DILocation(line: 478, column: 21, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !227, line: 478, column: 21)
!1674 = distinct !DILexicalBlock(scope: !1659, file: !227, line: 478, column: 21)
!1675 = !DILocation(line: 478, column: 21, scope: !1674)
!1676 = !DILocation(line: 479, column: 21, scope: !1659)
!1677 = !DILocation(line: 492, column: 31, scope: !1469)
!1678 = !DILocation(line: 493, column: 31, scope: !1469)
!1679 = !DILocation(line: 495, column: 31, scope: !1469)
!1680 = !DILocation(line: 496, column: 31, scope: !1469)
!1681 = !DILocation(line: 497, column: 31, scope: !1469)
!1682 = !DILocation(line: 500, column: 15, scope: !1469)
!1683 = !DILocation(line: 502, column: 19, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !227, line: 501, column: 13)
!1685 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 500, column: 15)
!1686 = !DILocation(line: 509, column: 33, scope: !1581)
!1687 = !DILocation(line: 0, scope: !1469)
!1688 = !DILocation(line: 512, column: 9, scope: !1469)
!1689 = !DILocation(line: 514, column: 15, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 513, column: 15)
!1691 = !DILocation(line: 517, column: 9, scope: !1469)
!1692 = !DILocation(line: 518, column: 15, scope: !1469)
!1693 = !DILocation(line: 526, column: 15, scope: !1469)
!1694 = !DILocation(line: 526, column: 40, scope: !1502)
!1695 = !DILocation(line: 526, column: 47, scope: !1502)
!1696 = !DILocation(line: 526, column: 18, scope: !1502)
!1697 = !DILocation(line: 530, column: 17, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1469, file: !227, line: 530, column: 15)
!1699 = !DILocation(line: 530, column: 15, scope: !1469)
!1700 = !DILocation(line: 535, column: 11, scope: !1469)
!1701 = !DILocation(line: 549, column: 15, scope: !1577)
!1702 = !DILocation(line: 556, column: 15, scope: !1469)
!1703 = !DILocation(line: 558, column: 19, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1575, file: !227, line: 557, column: 13)
!1705 = !DILocation(line: 561, column: 19, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1704, file: !227, line: 561, column: 19)
!1707 = !DILocation(line: 561, column: 35, scope: !1706)
!1708 = !DILocation(line: 561, column: 30, scope: !1706)
!1709 = !DILocation(line: 570, column: 15, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !227, line: 570, column: 15)
!1711 = distinct !DILexicalBlock(scope: !1704, file: !227, line: 570, column: 15)
!1712 = !DILocation(line: 570, column: 15, scope: !1711)
!1713 = !DILocation(line: 571, column: 15, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !227, line: 571, column: 15)
!1715 = distinct !DILexicalBlock(scope: !1704, file: !227, line: 571, column: 15)
!1716 = !DILocation(line: 571, column: 15, scope: !1715)
!1717 = !DILocation(line: 572, column: 15, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !227, line: 572, column: 15)
!1719 = distinct !DILexicalBlock(scope: !1704, file: !227, line: 572, column: 15)
!1720 = !DILocation(line: 572, column: 15, scope: !1719)
!1721 = !DILocation(line: 574, column: 13, scope: !1704)
!1722 = !DILocation(line: 614, column: 17, scope: !1468)
!1723 = !DILocation(line: 0, scope: !1468)
!1724 = !DILocation(line: 617, column: 29, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1473, file: !227, line: 615, column: 15)
!1726 = !{!1727, !1727, i64 0}
!1727 = !{!"short", !1066, i64 0}
!1728 = !DILocation(line: 617, column: 27, scope: !1725)
!1729 = !DILocation(line: 618, column: 15, scope: !1725)
!1730 = !DILocation(line: 621, column: 17, scope: !1472)
!1731 = !DILocation(line: 621, column: 27, scope: !1472)
!1732 = !DILocalVariable(name: "__dest", arg: 1, scope: !1733, file: !1734, line: 59, type: !66)
!1733 = distinct !DISubprogram(name: "memset", scope: !1734, file: !1734, line: 59, type: !1735, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1737)
!1734 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!66, !66, !14, !68}
!1737 = !{!1732, !1738, !1739}
!1738 = !DILocalVariable(name: "__ch", arg: 2, scope: !1733, file: !1734, line: 59, type: !14)
!1739 = !DILocalVariable(name: "__len", arg: 3, scope: !1733, file: !1734, line: 59, type: !68)
!1740 = !DILocation(line: 0, scope: !1733, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 622, column: 17, scope: !1472)
!1742 = !DILocation(line: 71, column: 10, scope: !1733, inlinedAt: !1741)
!1743 = !DILocation(line: 626, column: 29, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1472, file: !227, line: 626, column: 21)
!1745 = !DILocation(line: 626, column: 21, scope: !1472)
!1746 = !DILocation(line: 627, column: 29, scope: !1744)
!1747 = !DILocation(line: 627, column: 19, scope: !1744)
!1748 = !DILocation(line: 629, column: 17, scope: !1472)
!1749 = !DILocation(line: 624, column: 19, scope: !1472)
!1750 = !DILocation(line: 625, column: 27, scope: !1472)
!1751 = !DILocation(line: 631, column: 21, scope: !1478)
!1752 = !DILocation(line: 632, column: 56, scope: !1478)
!1753 = !DILocation(line: 632, column: 50, scope: !1478)
!1754 = !DILocation(line: 633, column: 53, scope: !1478)
!1755 = !DILocation(line: 632, column: 36, scope: !1478)
!1756 = !DILocation(line: 634, column: 25, scope: !1478)
!1757 = !DILocation(line: 644, column: 38, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1485, file: !227, line: 642, column: 23)
!1759 = !DILocation(line: 644, column: 48, scope: !1758)
!1760 = !DILocation(line: 644, column: 25, scope: !1758)
!1761 = !DILocation(line: 644, column: 51, scope: !1758)
!1762 = !DILocation(line: 645, column: 28, scope: !1758)
!1763 = !DILocation(line: 644, column: 34, scope: !1758)
!1764 = distinct !{!1764, !1760, !1762}
!1765 = !DILocation(line: 658, column: 43, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !227, line: 658, column: 29)
!1767 = distinct !DILexicalBlock(scope: !1482, file: !227, line: 658, column: 29)
!1768 = !DILocation(line: 655, column: 29, scope: !1483)
!1769 = !DILocation(line: 0, scope: !1482)
!1770 = !DILocation(line: 659, column: 49, scope: !1766)
!1771 = !DILocation(line: 659, column: 39, scope: !1766)
!1772 = !DILocation(line: 659, column: 31, scope: !1766)
!1773 = !DILocation(line: 658, column: 53, scope: !1766)
!1774 = !DILocation(line: 658, column: 29, scope: !1767)
!1775 = distinct !{!1775, !1774, !1776}
!1776 = !DILocation(line: 667, column: 33, scope: !1767)
!1777 = !DILocation(line: 674, column: 19, scope: !1472)
!1778 = !DILocation(line: 670, column: 41, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1484, file: !227, line: 670, column: 29)
!1780 = !DILocation(line: 670, column: 31, scope: !1779)
!1781 = !DILocation(line: 670, column: 29, scope: !1484)
!1782 = !DILocation(line: 672, column: 27, scope: !1484)
!1783 = !DILocation(line: 675, column: 26, scope: !1472)
!1784 = !DILocation(line: 675, column: 24, scope: !1472)
!1785 = !DILocation(line: 674, column: 19, scope: !1478)
!1786 = distinct !{!1786, !1748, !1787}
!1787 = !DILocation(line: 675, column: 44, scope: !1472)
!1788 = !DILocation(line: 676, column: 15, scope: !1473)
!1789 = !DILocation(line: 0, scope: !1473)
!1790 = !DILocation(line: 678, column: 40, scope: !1468)
!1791 = !DILocation(line: 680, column: 19, scope: !1490)
!1792 = !DILocation(line: 680, column: 45, scope: !1490)
!1793 = !DILocation(line: 680, column: 23, scope: !1490)
!1794 = !DILocation(line: 684, column: 33, scope: !1489)
!1795 = !DILocation(line: 0, scope: !1489)
!1796 = !DILocation(line: 686, column: 17, scope: !1489)
!1797 = !DILocation(line: 405, column: 12, scope: !1460)
!1798 = !DILocation(line: 688, column: 43, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !227, line: 688, column: 25)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !227, line: 687, column: 19)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !227, line: 686, column: 17)
!1802 = distinct !DILexicalBlock(scope: !1489, file: !227, line: 686, column: 17)
!1803 = !DILocation(line: 690, column: 25, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !227, line: 690, column: 25)
!1805 = distinct !DILexicalBlock(scope: !1799, file: !227, line: 689, column: 23)
!1806 = !DILocation(line: 690, column: 25, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !227, line: 690, column: 25)
!1808 = !DILocation(line: 690, column: 25, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !227, line: 690, column: 25)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !227, line: 690, column: 25)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !227, line: 690, column: 25)
!1812 = !DILocation(line: 690, column: 25, scope: !1810)
!1813 = !DILocation(line: 690, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !227, line: 690, column: 25)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !227, line: 690, column: 25)
!1816 = !DILocation(line: 690, column: 25, scope: !1815)
!1817 = !DILocation(line: 690, column: 25, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !227, line: 690, column: 25)
!1819 = distinct !DILexicalBlock(scope: !1811, file: !227, line: 690, column: 25)
!1820 = !DILocation(line: 690, column: 25, scope: !1819)
!1821 = !DILocation(line: 690, column: 25, scope: !1811)
!1822 = !DILocation(line: 690, column: 25, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !227, line: 690, column: 25)
!1824 = distinct !DILexicalBlock(scope: !1804, file: !227, line: 690, column: 25)
!1825 = !DILocation(line: 690, column: 25, scope: !1824)
!1826 = !DILocation(line: 691, column: 25, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !227, line: 691, column: 25)
!1828 = distinct !DILexicalBlock(scope: !1805, file: !227, line: 691, column: 25)
!1829 = !DILocation(line: 691, column: 25, scope: !1828)
!1830 = !DILocation(line: 692, column: 25, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !227, line: 692, column: 25)
!1832 = distinct !DILexicalBlock(scope: !1805, file: !227, line: 692, column: 25)
!1833 = !DILocation(line: 692, column: 25, scope: !1832)
!1834 = !DILocation(line: 693, column: 38, scope: !1805)
!1835 = !DILocation(line: 693, column: 33, scope: !1805)
!1836 = !DILocation(line: 694, column: 23, scope: !1805)
!1837 = !DILocation(line: 695, column: 30, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1799, file: !227, line: 695, column: 30)
!1839 = !DILocation(line: 695, column: 30, scope: !1799)
!1840 = !DILocation(line: 697, column: 25, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !227, line: 697, column: 25)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !227, line: 697, column: 25)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !227, line: 696, column: 23)
!1844 = !DILocation(line: 697, column: 25, scope: !1842)
!1845 = !DILocation(line: 699, column: 23, scope: !1843)
!1846 = !DILocation(line: 700, column: 35, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1800, file: !227, line: 700, column: 25)
!1848 = !DILocation(line: 700, column: 30, scope: !1847)
!1849 = !DILocation(line: 700, column: 25, scope: !1800)
!1850 = !DILocation(line: 702, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !227, line: 702, column: 21)
!1852 = distinct !DILexicalBlock(scope: !1800, file: !227, line: 702, column: 21)
!1853 = !DILocation(line: 702, column: 21, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !227, line: 702, column: 21)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !227, line: 702, column: 21)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !227, line: 702, column: 21)
!1857 = !DILocation(line: 702, column: 21, scope: !1855)
!1858 = !DILocation(line: 702, column: 21, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !227, line: 702, column: 21)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !227, line: 702, column: 21)
!1861 = !DILocation(line: 702, column: 21, scope: !1860)
!1862 = !DILocation(line: 702, column: 21, scope: !1856)
!1863 = !DILocation(line: 0, scope: !1800)
!1864 = !DILocation(line: 703, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !227, line: 703, column: 21)
!1866 = distinct !DILexicalBlock(scope: !1800, file: !227, line: 703, column: 21)
!1867 = !DILocation(line: 703, column: 21, scope: !1866)
!1868 = !DILocation(line: 704, column: 25, scope: !1800)
!1869 = !DILocation(line: 686, column: 17, scope: !1801)
!1870 = distinct !{!1870, !1871, !1872}
!1871 = !DILocation(line: 686, column: 17, scope: !1802)
!1872 = !DILocation(line: 705, column: 19, scope: !1802)
!1873 = !DILocation(line: 416, column: 30, scope: !1570)
!1874 = !DILocation(line: 712, column: 34, scope: !1512)
!1875 = !DILocation(line: 715, column: 35, scope: !1512)
!1876 = !DILocation(line: 715, column: 17, scope: !1512)
!1877 = !DILocation(line: 715, column: 47, scope: !1512)
!1878 = !DILocation(line: 715, column: 65, scope: !1512)
!1879 = !DILocation(line: 716, column: 15, scope: !1512)
!1880 = !DILocation(line: 716, column: 11, scope: !1512)
!1881 = !DILocation(line: 712, column: 11, scope: !1460)
!1882 = !DILocation(line: 400, column: 10, scope: !1462)
!1883 = !DILocation(line: 719, column: 5, scope: !1460)
!1884 = !DILocation(line: 720, column: 7, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1460, file: !227, line: 720, column: 7)
!1886 = !DILocation(line: 720, column: 7, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1885, file: !227, line: 720, column: 7)
!1888 = !DILocation(line: 720, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !227, line: 720, column: 7)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !227, line: 720, column: 7)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !227, line: 720, column: 7)
!1892 = !DILocation(line: 720, column: 7, scope: !1890)
!1893 = !DILocation(line: 720, column: 7, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !227, line: 720, column: 7)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !227, line: 720, column: 7)
!1896 = !DILocation(line: 720, column: 7, scope: !1895)
!1897 = !DILocation(line: 720, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !227, line: 720, column: 7)
!1899 = distinct !DILexicalBlock(scope: !1891, file: !227, line: 720, column: 7)
!1900 = !DILocation(line: 720, column: 7, scope: !1899)
!1901 = !DILocation(line: 720, column: 7, scope: !1891)
!1902 = !DILocation(line: 720, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !227, line: 720, column: 7)
!1904 = distinct !DILexicalBlock(scope: !1885, file: !227, line: 720, column: 7)
!1905 = !DILocation(line: 720, column: 7, scope: !1904)
!1906 = !DILocation(line: 722, column: 5, scope: !1460)
!1907 = !DILocation(line: 723, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !227, line: 723, column: 7)
!1909 = distinct !DILexicalBlock(scope: !1460, file: !227, line: 723, column: 7)
!1910 = !DILocation(line: 424, column: 9, scope: !1460)
!1911 = !DILocation(line: 723, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !227, line: 723, column: 7)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !227, line: 723, column: 7)
!1914 = distinct !DILexicalBlock(scope: !1908, file: !227, line: 723, column: 7)
!1915 = !DILocation(line: 723, column: 7, scope: !1913)
!1916 = !DILocation(line: 723, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !227, line: 723, column: 7)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !227, line: 723, column: 7)
!1919 = !DILocation(line: 723, column: 7, scope: !1918)
!1920 = !DILocation(line: 723, column: 7, scope: !1914)
!1921 = !DILocation(line: 724, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !227, line: 724, column: 7)
!1923 = distinct !DILexicalBlock(scope: !1460, file: !227, line: 724, column: 7)
!1924 = !DILocation(line: 724, column: 7, scope: !1923)
!1925 = !DILocation(line: 726, column: 13, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1460, file: !227, line: 726, column: 11)
!1927 = !DILocation(line: 726, column: 11, scope: !1460)
!1928 = !DILocation(line: 728, column: 5, scope: !1461)
!1929 = !DILocation(line: 400, column: 75, scope: !1461)
!1930 = !DILocation(line: 400, column: 3, scope: !1461)
!1931 = distinct !{!1931, !1588, !1932}
!1932 = !DILocation(line: 728, column: 5, scope: !1462)
!1933 = !DILocation(line: 730, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1433, file: !227, line: 730, column: 7)
!1935 = !DILocation(line: 730, column: 16, scope: !1934)
!1936 = !DILocation(line: 738, column: 51, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1433, file: !227, line: 738, column: 7)
!1938 = !DILocation(line: 739, column: 10, scope: !1937)
!1939 = !DILocation(line: 741, column: 11, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !227, line: 741, column: 11)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !227, line: 740, column: 5)
!1942 = !DILocation(line: 741, column: 11, scope: !1941)
!1943 = !DILocation(line: 742, column: 16, scope: !1940)
!1944 = !DILocation(line: 742, column: 9, scope: !1940)
!1945 = !DILocation(line: 746, column: 18, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1940, file: !227, line: 746, column: 16)
!1947 = !DILocation(line: 746, column: 32, scope: !1946)
!1948 = !DILocation(line: 746, column: 29, scope: !1946)
!1949 = !DILocation(line: 755, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1433, file: !227, line: 755, column: 7)
!1951 = !DILocation(line: 755, column: 20, scope: !1950)
!1952 = !DILocation(line: 756, column: 12, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !227, line: 756, column: 5)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !227, line: 756, column: 5)
!1955 = !DILocation(line: 756, column: 5, scope: !1954)
!1956 = !DILocation(line: 757, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !227, line: 757, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1953, file: !227, line: 757, column: 7)
!1959 = !DILocation(line: 757, column: 7, scope: !1958)
!1960 = !DILocation(line: 756, column: 39, scope: !1953)
!1961 = distinct !{!1961, !1955, !1962}
!1962 = !DILocation(line: 757, column: 7, scope: !1954)
!1963 = !DILocation(line: 759, column: 11, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1433, file: !227, line: 759, column: 7)
!1965 = !DILocation(line: 759, column: 7, scope: !1433)
!1966 = !DILocation(line: 760, column: 5, scope: !1964)
!1967 = !DILocation(line: 760, column: 17, scope: !1964)
!1968 = !DILocation(line: 763, column: 2, scope: !1433)
!1969 = !DILocation(line: 766, column: 51, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1433, file: !227, line: 766, column: 7)
!1971 = !DILocation(line: 766, column: 21, scope: !1970)
!1972 = !DILocation(line: 770, column: 42, scope: !1433)
!1973 = !DILocation(line: 768, column: 10, scope: !1433)
!1974 = !DILocation(line: 768, column: 3, scope: !1433)
!1975 = !DILocation(line: 772, column: 1, scope: !1433)
!1976 = distinct !DISubprogram(name: "gettext_quote", scope: !227, file: !227, line: 207, type: !1977, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!12, !12, !229}
!1979 = !{!1980, !1981, !1982, !1983}
!1980 = !DILocalVariable(name: "msgid", arg: 1, scope: !1976, file: !227, line: 207, type: !12)
!1981 = !DILocalVariable(name: "s", arg: 2, scope: !1976, file: !227, line: 207, type: !229)
!1982 = !DILocalVariable(name: "translation", scope: !1976, file: !227, line: 209, type: !12)
!1983 = !DILocalVariable(name: "locale_code", scope: !1976, file: !227, line: 210, type: !12)
!1984 = !DILocation(line: 0, scope: !1976)
!1985 = !DILocation(line: 209, column: 29, scope: !1976)
!1986 = !DILocation(line: 212, column: 19, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1976, file: !227, line: 212, column: 7)
!1988 = !DILocation(line: 212, column: 7, scope: !1976)
!1989 = !DILocation(line: 233, column: 17, scope: !1976)
!1990 = !DILocalVariable(name: "s1", arg: 1, scope: !1991, file: !1992, line: 160, type: !12)
!1991 = distinct !DISubprogram(name: "strcaseeq0", scope: !1992, file: !1992, line: 160, type: !1993, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1995)
!1992 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!1995 = !{!1990, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1996 = !DILocalVariable(name: "s2", arg: 2, scope: !1991, file: !1992, line: 160, type: !12)
!1997 = !DILocalVariable(name: "s20", arg: 3, scope: !1991, file: !1992, line: 160, type: !11)
!1998 = !DILocalVariable(name: "s21", arg: 4, scope: !1991, file: !1992, line: 160, type: !11)
!1999 = !DILocalVariable(name: "s22", arg: 5, scope: !1991, file: !1992, line: 160, type: !11)
!2000 = !DILocalVariable(name: "s23", arg: 6, scope: !1991, file: !1992, line: 160, type: !11)
!2001 = !DILocalVariable(name: "s24", arg: 7, scope: !1991, file: !1992, line: 160, type: !11)
!2002 = !DILocalVariable(name: "s25", arg: 8, scope: !1991, file: !1992, line: 160, type: !11)
!2003 = !DILocalVariable(name: "s26", arg: 9, scope: !1991, file: !1992, line: 160, type: !11)
!2004 = !DILocalVariable(name: "s27", arg: 10, scope: !1991, file: !1992, line: 160, type: !11)
!2005 = !DILocalVariable(name: "s28", arg: 11, scope: !1991, file: !1992, line: 160, type: !11)
!2006 = !DILocation(line: 0, scope: !1991, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 234, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1976, file: !227, line: 234, column: 7)
!2009 = !DILocation(line: 162, column: 7, scope: !2010, inlinedAt: !2007)
!2010 = distinct !DILexicalBlock(scope: !1991, file: !1992, line: 162, column: 7)
!2011 = !DILocalVariable(name: "s1", arg: 1, scope: !2012, file: !1992, line: 146, type: !12)
!2012 = distinct !DISubprogram(name: "strcaseeq1", scope: !1992, file: !1992, line: 146, type: !2013, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11}
!2015 = !{!2011, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024}
!2016 = !DILocalVariable(name: "s2", arg: 2, scope: !2012, file: !1992, line: 146, type: !12)
!2017 = !DILocalVariable(name: "s21", arg: 3, scope: !2012, file: !1992, line: 146, type: !11)
!2018 = !DILocalVariable(name: "s22", arg: 4, scope: !2012, file: !1992, line: 146, type: !11)
!2019 = !DILocalVariable(name: "s23", arg: 5, scope: !2012, file: !1992, line: 146, type: !11)
!2020 = !DILocalVariable(name: "s24", arg: 6, scope: !2012, file: !1992, line: 146, type: !11)
!2021 = !DILocalVariable(name: "s25", arg: 7, scope: !2012, file: !1992, line: 146, type: !11)
!2022 = !DILocalVariable(name: "s26", arg: 8, scope: !2012, file: !1992, line: 146, type: !11)
!2023 = !DILocalVariable(name: "s27", arg: 9, scope: !2012, file: !1992, line: 146, type: !11)
!2024 = !DILocalVariable(name: "s28", arg: 10, scope: !2012, file: !1992, line: 146, type: !11)
!2025 = !DILocation(line: 0, scope: !2012, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 167, column: 16, scope: !2027, inlinedAt: !2007)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !1992, line: 164, column: 11)
!2028 = distinct !DILexicalBlock(scope: !2010, file: !1992, line: 163, column: 5)
!2029 = !DILocation(line: 148, column: 7, scope: !2030, inlinedAt: !2026)
!2030 = distinct !DILexicalBlock(scope: !2012, file: !1992, line: 148, column: 7)
!2031 = !DILocalVariable(name: "s1", arg: 1, scope: !2032, file: !1992, line: 132, type: !12)
!2032 = distinct !DISubprogram(name: "strcaseeq2", scope: !1992, file: !1992, line: 132, type: !2033, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11}
!2035 = !{!2031, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2036 = !DILocalVariable(name: "s2", arg: 2, scope: !2032, file: !1992, line: 132, type: !12)
!2037 = !DILocalVariable(name: "s22", arg: 3, scope: !2032, file: !1992, line: 132, type: !11)
!2038 = !DILocalVariable(name: "s23", arg: 4, scope: !2032, file: !1992, line: 132, type: !11)
!2039 = !DILocalVariable(name: "s24", arg: 5, scope: !2032, file: !1992, line: 132, type: !11)
!2040 = !DILocalVariable(name: "s25", arg: 6, scope: !2032, file: !1992, line: 132, type: !11)
!2041 = !DILocalVariable(name: "s26", arg: 7, scope: !2032, file: !1992, line: 132, type: !11)
!2042 = !DILocalVariable(name: "s27", arg: 8, scope: !2032, file: !1992, line: 132, type: !11)
!2043 = !DILocalVariable(name: "s28", arg: 9, scope: !2032, file: !1992, line: 132, type: !11)
!2044 = !DILocation(line: 0, scope: !2032, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 153, column: 16, scope: !2046, inlinedAt: !2026)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1992, line: 150, column: 11)
!2047 = distinct !DILexicalBlock(scope: !2030, file: !1992, line: 149, column: 5)
!2048 = !DILocation(line: 134, column: 7, scope: !2049, inlinedAt: !2045)
!2049 = distinct !DILexicalBlock(scope: !2032, file: !1992, line: 134, column: 7)
!2050 = !DILocalVariable(name: "s1", arg: 1, scope: !2051, file: !1992, line: 118, type: !12)
!2051 = distinct !DISubprogram(name: "strcaseeq3", scope: !1992, file: !1992, line: 118, type: !2052, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2054)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11}
!2054 = !{!2050, !2055, !2056, !2057, !2058, !2059, !2060, !2061}
!2055 = !DILocalVariable(name: "s2", arg: 2, scope: !2051, file: !1992, line: 118, type: !12)
!2056 = !DILocalVariable(name: "s23", arg: 3, scope: !2051, file: !1992, line: 118, type: !11)
!2057 = !DILocalVariable(name: "s24", arg: 4, scope: !2051, file: !1992, line: 118, type: !11)
!2058 = !DILocalVariable(name: "s25", arg: 5, scope: !2051, file: !1992, line: 118, type: !11)
!2059 = !DILocalVariable(name: "s26", arg: 6, scope: !2051, file: !1992, line: 118, type: !11)
!2060 = !DILocalVariable(name: "s27", arg: 7, scope: !2051, file: !1992, line: 118, type: !11)
!2061 = !DILocalVariable(name: "s28", arg: 8, scope: !2051, file: !1992, line: 118, type: !11)
!2062 = !DILocation(line: 0, scope: !2051, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 139, column: 16, scope: !2064, inlinedAt: !2045)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !1992, line: 136, column: 11)
!2065 = distinct !DILexicalBlock(scope: !2049, file: !1992, line: 135, column: 5)
!2066 = !DILocation(line: 120, column: 7, scope: !2067, inlinedAt: !2063)
!2067 = distinct !DILexicalBlock(scope: !2051, file: !1992, line: 120, column: 7)
!2068 = !DILocation(line: 120, column: 7, scope: !2051, inlinedAt: !2063)
!2069 = !DILocalVariable(name: "s1", arg: 1, scope: !2070, file: !1992, line: 104, type: !12)
!2070 = distinct !DISubprogram(name: "strcaseeq4", scope: !1992, file: !1992, line: 104, type: !2071, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2073)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!14, !12, !12, !11, !11, !11, !11, !11}
!2073 = !{!2069, !2074, !2075, !2076, !2077, !2078, !2079}
!2074 = !DILocalVariable(name: "s2", arg: 2, scope: !2070, file: !1992, line: 104, type: !12)
!2075 = !DILocalVariable(name: "s24", arg: 3, scope: !2070, file: !1992, line: 104, type: !11)
!2076 = !DILocalVariable(name: "s25", arg: 4, scope: !2070, file: !1992, line: 104, type: !11)
!2077 = !DILocalVariable(name: "s26", arg: 5, scope: !2070, file: !1992, line: 104, type: !11)
!2078 = !DILocalVariable(name: "s27", arg: 6, scope: !2070, file: !1992, line: 104, type: !11)
!2079 = !DILocalVariable(name: "s28", arg: 7, scope: !2070, file: !1992, line: 104, type: !11)
!2080 = !DILocation(line: 0, scope: !2070, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 125, column: 16, scope: !2082, inlinedAt: !2063)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !1992, line: 122, column: 11)
!2083 = distinct !DILexicalBlock(scope: !2067, file: !1992, line: 121, column: 5)
!2084 = !DILocation(line: 106, column: 7, scope: !2085, inlinedAt: !2081)
!2085 = distinct !DILexicalBlock(scope: !2070, file: !1992, line: 106, column: 7)
!2086 = !DILocation(line: 106, column: 7, scope: !2070, inlinedAt: !2081)
!2087 = !DILocalVariable(name: "s1", arg: 1, scope: !2088, file: !1992, line: 90, type: !12)
!2088 = distinct !DISubprogram(name: "strcaseeq5", scope: !1992, file: !1992, line: 90, type: !2089, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!14, !12, !12, !11, !11, !11, !11}
!2091 = !{!2087, !2092, !2093, !2094, !2095, !2096}
!2092 = !DILocalVariable(name: "s2", arg: 2, scope: !2088, file: !1992, line: 90, type: !12)
!2093 = !DILocalVariable(name: "s25", arg: 3, scope: !2088, file: !1992, line: 90, type: !11)
!2094 = !DILocalVariable(name: "s26", arg: 4, scope: !2088, file: !1992, line: 90, type: !11)
!2095 = !DILocalVariable(name: "s27", arg: 5, scope: !2088, file: !1992, line: 90, type: !11)
!2096 = !DILocalVariable(name: "s28", arg: 6, scope: !2088, file: !1992, line: 90, type: !11)
!2097 = !DILocation(line: 0, scope: !2088, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 111, column: 16, scope: !2099, inlinedAt: !2081)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1992, line: 108, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2085, file: !1992, line: 107, column: 5)
!2101 = !DILocation(line: 92, column: 7, scope: !2102, inlinedAt: !2098)
!2102 = distinct !DILexicalBlock(scope: !2088, file: !1992, line: 92, column: 7)
!2103 = !DILocation(line: 92, column: 7, scope: !2088, inlinedAt: !2098)
!2104 = !DILocation(line: 235, column: 12, scope: !2008)
!2105 = !DILocation(line: 235, column: 21, scope: !2008)
!2106 = !DILocation(line: 235, column: 5, scope: !2008)
!2107 = !DILocation(line: 0, scope: !2012, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 167, column: 16, scope: !2027, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 236, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1976, file: !227, line: 236, column: 7)
!2111 = !DILocation(line: 148, column: 7, scope: !2030, inlinedAt: !2108)
!2112 = !DILocation(line: 0, scope: !2032, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 153, column: 16, scope: !2046, inlinedAt: !2108)
!2114 = !DILocation(line: 134, column: 7, scope: !2049, inlinedAt: !2113)
!2115 = !DILocation(line: 134, column: 7, scope: !2032, inlinedAt: !2113)
!2116 = !DILocation(line: 0, scope: !2051, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 139, column: 16, scope: !2064, inlinedAt: !2113)
!2118 = !DILocation(line: 120, column: 7, scope: !2067, inlinedAt: !2117)
!2119 = !DILocation(line: 120, column: 7, scope: !2051, inlinedAt: !2117)
!2120 = !DILocation(line: 0, scope: !2070, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 125, column: 16, scope: !2082, inlinedAt: !2117)
!2122 = !DILocation(line: 106, column: 7, scope: !2085, inlinedAt: !2121)
!2123 = !DILocation(line: 106, column: 7, scope: !2070, inlinedAt: !2121)
!2124 = !DILocation(line: 0, scope: !2088, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 111, column: 16, scope: !2099, inlinedAt: !2121)
!2126 = !DILocation(line: 92, column: 7, scope: !2102, inlinedAt: !2125)
!2127 = !DILocation(line: 92, column: 7, scope: !2088, inlinedAt: !2125)
!2128 = !DILocalVariable(name: "s1", arg: 1, scope: !2129, file: !1992, line: 76, type: !12)
!2129 = distinct !DISubprogram(name: "strcaseeq6", scope: !1992, file: !1992, line: 76, type: !2130, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!14, !12, !12, !11, !11, !11}
!2132 = !{!2128, !2133, !2134, !2135, !2136}
!2133 = !DILocalVariable(name: "s2", arg: 2, scope: !2129, file: !1992, line: 76, type: !12)
!2134 = !DILocalVariable(name: "s26", arg: 3, scope: !2129, file: !1992, line: 76, type: !11)
!2135 = !DILocalVariable(name: "s27", arg: 4, scope: !2129, file: !1992, line: 76, type: !11)
!2136 = !DILocalVariable(name: "s28", arg: 5, scope: !2129, file: !1992, line: 76, type: !11)
!2137 = !DILocation(line: 0, scope: !2129, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 97, column: 16, scope: !2139, inlinedAt: !2125)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !1992, line: 94, column: 11)
!2140 = distinct !DILexicalBlock(scope: !2102, file: !1992, line: 93, column: 5)
!2141 = !DILocation(line: 78, column: 7, scope: !2142, inlinedAt: !2138)
!2142 = distinct !DILexicalBlock(scope: !2129, file: !1992, line: 78, column: 7)
!2143 = !DILocation(line: 78, column: 7, scope: !2129, inlinedAt: !2138)
!2144 = !DILocalVariable(name: "s1", arg: 1, scope: !2145, file: !1992, line: 62, type: !12)
!2145 = distinct !DISubprogram(name: "strcaseeq7", scope: !1992, file: !1992, line: 62, type: !2146, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2148)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!14, !12, !12, !11, !11}
!2148 = !{!2144, !2149, !2150, !2151}
!2149 = !DILocalVariable(name: "s2", arg: 2, scope: !2145, file: !1992, line: 62, type: !12)
!2150 = !DILocalVariable(name: "s27", arg: 3, scope: !2145, file: !1992, line: 62, type: !11)
!2151 = !DILocalVariable(name: "s28", arg: 4, scope: !2145, file: !1992, line: 62, type: !11)
!2152 = !DILocation(line: 0, scope: !2145, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 83, column: 16, scope: !2154, inlinedAt: !2138)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1992, line: 80, column: 11)
!2155 = distinct !DILexicalBlock(scope: !2142, file: !1992, line: 79, column: 5)
!2156 = !DILocation(line: 64, column: 7, scope: !2157, inlinedAt: !2153)
!2157 = distinct !DILexicalBlock(scope: !2145, file: !1992, line: 64, column: 7)
!2158 = !DILocation(line: 236, column: 7, scope: !1976)
!2159 = !DILocation(line: 237, column: 12, scope: !2110)
!2160 = !DILocation(line: 237, column: 21, scope: !2110)
!2161 = !DILocation(line: 237, column: 5, scope: !2110)
!2162 = !DILocation(line: 239, column: 13, scope: !1976)
!2163 = !DILocation(line: 239, column: 11, scope: !1976)
!2164 = !DILocation(line: 239, column: 3, scope: !1976)
!2165 = !DILocation(line: 240, column: 1, scope: !1976)
!2166 = distinct !DISubprogram(name: "quotearg_alloc", scope: !227, file: !227, line: 799, type: !2167, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!10, !12, !68, !274}
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "arg", arg: 1, scope: !2166, file: !227, line: 799, type: !12)
!2171 = !DILocalVariable(name: "argsize", arg: 2, scope: !2166, file: !227, line: 799, type: !68)
!2172 = !DILocalVariable(name: "o", arg: 3, scope: !2166, file: !227, line: 800, type: !274)
!2173 = !DILocation(line: 0, scope: !2166)
!2174 = !DILocalVariable(name: "arg", arg: 1, scope: !2175, file: !227, line: 812, type: !12)
!2175 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !227, file: !227, line: 812, type: !2176, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!10, !12, !68, !420, !274}
!2178 = !{!2174, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2179 = !DILocalVariable(name: "argsize", arg: 2, scope: !2175, file: !227, line: 812, type: !68)
!2180 = !DILocalVariable(name: "size", arg: 3, scope: !2175, file: !227, line: 812, type: !420)
!2181 = !DILocalVariable(name: "o", arg: 4, scope: !2175, file: !227, line: 813, type: !274)
!2182 = !DILocalVariable(name: "p", scope: !2175, file: !227, line: 815, type: !274)
!2183 = !DILocalVariable(name: "e", scope: !2175, file: !227, line: 816, type: !14)
!2184 = !DILocalVariable(name: "flags", scope: !2175, file: !227, line: 818, type: !14)
!2185 = !DILocalVariable(name: "bufsize", scope: !2175, file: !227, line: 819, type: !68)
!2186 = !DILocalVariable(name: "buf", scope: !2175, file: !227, line: 823, type: !10)
!2187 = !DILocation(line: 0, scope: !2175, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 802, column: 10, scope: !2166)
!2189 = !DILocation(line: 815, column: 37, scope: !2175, inlinedAt: !2188)
!2190 = !DILocation(line: 816, column: 11, scope: !2175, inlinedAt: !2188)
!2191 = !DILocation(line: 818, column: 18, scope: !2175, inlinedAt: !2188)
!2192 = !DILocation(line: 818, column: 24, scope: !2175, inlinedAt: !2188)
!2193 = !DILocation(line: 819, column: 69, scope: !2175, inlinedAt: !2188)
!2194 = !DILocation(line: 820, column: 53, scope: !2175, inlinedAt: !2188)
!2195 = !DILocation(line: 821, column: 49, scope: !2175, inlinedAt: !2188)
!2196 = !DILocation(line: 822, column: 49, scope: !2175, inlinedAt: !2188)
!2197 = !DILocation(line: 819, column: 20, scope: !2175, inlinedAt: !2188)
!2198 = !DILocation(line: 822, column: 62, scope: !2175, inlinedAt: !2188)
!2199 = !DILocalVariable(name: "n", arg: 1, scope: !2200, file: !265, line: 216, type: !68)
!2200 = distinct !DISubprogram(name: "xcharalloc", scope: !265, file: !265, line: 216, type: !2201, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!10, !68}
!2203 = !{!2199}
!2204 = !DILocation(line: 0, scope: !2200, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 823, column: 15, scope: !2175, inlinedAt: !2188)
!2206 = !DILocation(line: 218, column: 10, scope: !2200, inlinedAt: !2205)
!2207 = !DILocation(line: 824, column: 60, scope: !2175, inlinedAt: !2188)
!2208 = !DILocation(line: 826, column: 32, scope: !2175, inlinedAt: !2188)
!2209 = !DILocation(line: 826, column: 47, scope: !2175, inlinedAt: !2188)
!2210 = !DILocation(line: 824, column: 3, scope: !2175, inlinedAt: !2188)
!2211 = !DILocation(line: 827, column: 9, scope: !2175, inlinedAt: !2188)
!2212 = !DILocation(line: 802, column: 3, scope: !2166)
!2213 = !DILocation(line: 0, scope: !2175)
!2214 = !DILocation(line: 815, column: 37, scope: !2175)
!2215 = !DILocation(line: 816, column: 11, scope: !2175)
!2216 = !DILocation(line: 818, column: 18, scope: !2175)
!2217 = !DILocation(line: 818, column: 27, scope: !2175)
!2218 = !DILocation(line: 818, column: 24, scope: !2175)
!2219 = !DILocation(line: 819, column: 69, scope: !2175)
!2220 = !DILocation(line: 820, column: 53, scope: !2175)
!2221 = !DILocation(line: 821, column: 49, scope: !2175)
!2222 = !DILocation(line: 822, column: 49, scope: !2175)
!2223 = !DILocation(line: 819, column: 20, scope: !2175)
!2224 = !DILocation(line: 822, column: 62, scope: !2175)
!2225 = !DILocation(line: 0, scope: !2200, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 823, column: 15, scope: !2175)
!2227 = !DILocation(line: 218, column: 10, scope: !2200, inlinedAt: !2226)
!2228 = !DILocation(line: 824, column: 60, scope: !2175)
!2229 = !DILocation(line: 826, column: 32, scope: !2175)
!2230 = !DILocation(line: 826, column: 47, scope: !2175)
!2231 = !DILocation(line: 824, column: 3, scope: !2175)
!2232 = !DILocation(line: 827, column: 9, scope: !2175)
!2233 = !DILocation(line: 828, column: 7, scope: !2175)
!2234 = !DILocation(line: 829, column: 11, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2175, file: !227, line: 828, column: 7)
!2236 = !{!2237, !2237, i64 0}
!2237 = !{!"long", !1066, i64 0}
!2238 = !DILocation(line: 829, column: 5, scope: !2235)
!2239 = !DILocation(line: 830, column: 3, scope: !2175)
!2240 = distinct !DISubprogram(name: "quotearg_free", scope: !227, file: !227, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2241)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "sv", scope: !2240, file: !227, line: 850, type: !350)
!2243 = !DILocalVariable(name: "i", scope: !2240, file: !227, line: 851, type: !14)
!2244 = !DILocation(line: 850, column: 24, scope: !2240)
!2245 = !DILocation(line: 0, scope: !2240)
!2246 = !DILocation(line: 852, column: 19, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !227, line: 852, column: 3)
!2248 = distinct !DILexicalBlock(scope: !2240, file: !227, line: 852, column: 3)
!2249 = !DILocation(line: 852, column: 17, scope: !2247)
!2250 = !DILocation(line: 852, column: 3, scope: !2248)
!2251 = !DILocation(line: 853, column: 17, scope: !2247)
!2252 = !{!2253, !1065, i64 8}
!2253 = !{!"slotvec", !2237, i64 0, !1065, i64 8}
!2254 = !DILocation(line: 853, column: 5, scope: !2247)
!2255 = !DILocation(line: 852, column: 28, scope: !2247)
!2256 = distinct !{!2256, !2250, !2257}
!2257 = !DILocation(line: 853, column: 20, scope: !2248)
!2258 = !DILocation(line: 854, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2240, file: !227, line: 854, column: 7)
!2260 = !DILocation(line: 854, column: 17, scope: !2259)
!2261 = !DILocation(line: 854, column: 7, scope: !2240)
!2262 = !DILocation(line: 856, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !227, line: 855, column: 5)
!2264 = !DILocation(line: 857, column: 21, scope: !2263)
!2265 = !{!2253, !2237, i64 0}
!2266 = !DILocation(line: 858, column: 20, scope: !2263)
!2267 = !DILocation(line: 859, column: 5, scope: !2263)
!2268 = !DILocation(line: 860, column: 10, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2240, file: !227, line: 860, column: 7)
!2270 = !DILocation(line: 860, column: 7, scope: !2240)
!2271 = !DILocation(line: 862, column: 13, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !227, line: 861, column: 5)
!2273 = !DILocation(line: 862, column: 7, scope: !2272)
!2274 = !DILocation(line: 863, column: 15, scope: !2272)
!2275 = !DILocation(line: 864, column: 5, scope: !2272)
!2276 = !DILocation(line: 865, column: 10, scope: !2240)
!2277 = !DILocation(line: 866, column: 1, scope: !2240)
!2278 = distinct !DISubprogram(name: "quotearg_n", scope: !227, file: !227, line: 931, type: !82, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2279)
!2279 = !{!2280, !2281}
!2280 = !DILocalVariable(name: "n", arg: 1, scope: !2278, file: !227, line: 931, type: !14)
!2281 = !DILocalVariable(name: "arg", arg: 2, scope: !2278, file: !227, line: 931, type: !12)
!2282 = !DILocation(line: 0, scope: !2278)
!2283 = !DILocation(line: 933, column: 10, scope: !2278)
!2284 = !DILocation(line: 933, column: 3, scope: !2278)
!2285 = distinct !DISubprogram(name: "quotearg_n_options", scope: !227, file: !227, line: 877, type: !2286, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!10, !14, !12, !68, !274}
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2298, !2299, !2301, !2302, !2303}
!2289 = !DILocalVariable(name: "n", arg: 1, scope: !2285, file: !227, line: 877, type: !14)
!2290 = !DILocalVariable(name: "arg", arg: 2, scope: !2285, file: !227, line: 877, type: !12)
!2291 = !DILocalVariable(name: "argsize", arg: 3, scope: !2285, file: !227, line: 877, type: !68)
!2292 = !DILocalVariable(name: "options", arg: 4, scope: !2285, file: !227, line: 878, type: !274)
!2293 = !DILocalVariable(name: "e", scope: !2285, file: !227, line: 880, type: !14)
!2294 = !DILocalVariable(name: "sv", scope: !2285, file: !227, line: 882, type: !350)
!2295 = !DILocalVariable(name: "preallocated", scope: !2296, file: !227, line: 889, type: !176)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !227, line: 888, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2285, file: !227, line: 887, column: 7)
!2298 = !DILocalVariable(name: "nmax", scope: !2296, file: !227, line: 890, type: !14)
!2299 = !DILocalVariable(name: "size", scope: !2300, file: !227, line: 903, type: !68)
!2300 = distinct !DILexicalBlock(scope: !2285, file: !227, line: 902, column: 3)
!2301 = !DILocalVariable(name: "val", scope: !2300, file: !227, line: 904, type: !10)
!2302 = !DILocalVariable(name: "flags", scope: !2300, file: !227, line: 906, type: !14)
!2303 = !DILocalVariable(name: "qsize", scope: !2300, file: !227, line: 907, type: !68)
!2304 = !DILocation(line: 0, scope: !2285)
!2305 = !DILocation(line: 880, column: 11, scope: !2285)
!2306 = !DILocation(line: 882, column: 24, scope: !2285)
!2307 = !DILocation(line: 884, column: 9, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2285, file: !227, line: 884, column: 7)
!2309 = !DILocation(line: 884, column: 7, scope: !2285)
!2310 = !DILocation(line: 885, column: 5, scope: !2308)
!2311 = !DILocation(line: 887, column: 7, scope: !2297)
!2312 = !DILocation(line: 887, column: 14, scope: !2297)
!2313 = !DILocation(line: 887, column: 7, scope: !2285)
!2314 = !DILocation(line: 889, column: 31, scope: !2296)
!2315 = !DILocation(line: 0, scope: !2296)
!2316 = !DILocation(line: 892, column: 16, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2296, file: !227, line: 892, column: 11)
!2318 = !DILocation(line: 892, column: 11, scope: !2296)
!2319 = !DILocation(line: 893, column: 9, scope: !2317)
!2320 = !DILocation(line: 895, column: 32, scope: !2296)
!2321 = !DILocation(line: 895, column: 61, scope: !2296)
!2322 = !DILocation(line: 895, column: 58, scope: !2296)
!2323 = !DILocation(line: 895, column: 66, scope: !2296)
!2324 = !DILocation(line: 895, column: 22, scope: !2296)
!2325 = !DILocation(line: 895, column: 15, scope: !2296)
!2326 = !DILocation(line: 896, column: 11, scope: !2296)
!2327 = !DILocation(line: 897, column: 15, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2296, file: !227, line: 896, column: 11)
!2329 = !{i64 0, i64 8, !2236, i64 8, i64 8, !1064}
!2330 = !DILocation(line: 897, column: 9, scope: !2328)
!2331 = !DILocation(line: 898, column: 20, scope: !2296)
!2332 = !DILocation(line: 898, column: 18, scope: !2296)
!2333 = !DILocation(line: 898, column: 15, scope: !2296)
!2334 = !DILocation(line: 898, column: 38, scope: !2296)
!2335 = !DILocation(line: 898, column: 31, scope: !2296)
!2336 = !DILocation(line: 898, column: 48, scope: !2296)
!2337 = !DILocation(line: 0, scope: !1733, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 898, column: 7, scope: !2296)
!2339 = !DILocation(line: 71, column: 10, scope: !1733, inlinedAt: !2338)
!2340 = !DILocation(line: 899, column: 14, scope: !2296)
!2341 = !DILocation(line: 900, column: 5, scope: !2296)
!2342 = !DILocation(line: 903, column: 19, scope: !2300)
!2343 = !DILocation(line: 903, column: 25, scope: !2300)
!2344 = !DILocation(line: 0, scope: !2300)
!2345 = !DILocation(line: 904, column: 23, scope: !2300)
!2346 = !DILocation(line: 906, column: 26, scope: !2300)
!2347 = !DILocation(line: 906, column: 32, scope: !2300)
!2348 = !DILocation(line: 908, column: 55, scope: !2300)
!2349 = !DILocation(line: 909, column: 46, scope: !2300)
!2350 = !DILocation(line: 910, column: 55, scope: !2300)
!2351 = !DILocation(line: 911, column: 55, scope: !2300)
!2352 = !DILocation(line: 907, column: 20, scope: !2300)
!2353 = !DILocation(line: 913, column: 14, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2300, file: !227, line: 913, column: 9)
!2355 = !DILocation(line: 913, column: 9, scope: !2300)
!2356 = !DILocation(line: 915, column: 35, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !227, line: 914, column: 7)
!2358 = !DILocation(line: 915, column: 20, scope: !2357)
!2359 = !DILocation(line: 916, column: 17, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !227, line: 916, column: 13)
!2361 = !DILocation(line: 916, column: 13, scope: !2357)
!2362 = !DILocation(line: 917, column: 11, scope: !2360)
!2363 = !DILocation(line: 0, scope: !2200, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 918, column: 27, scope: !2357)
!2365 = !DILocation(line: 218, column: 10, scope: !2200, inlinedAt: !2364)
!2366 = !DILocation(line: 918, column: 19, scope: !2357)
!2367 = !DILocation(line: 919, column: 69, scope: !2357)
!2368 = !DILocation(line: 921, column: 44, scope: !2357)
!2369 = !DILocation(line: 922, column: 44, scope: !2357)
!2370 = !DILocation(line: 919, column: 9, scope: !2357)
!2371 = !DILocation(line: 923, column: 7, scope: !2357)
!2372 = !DILocation(line: 925, column: 11, scope: !2300)
!2373 = !DILocation(line: 926, column: 5, scope: !2300)
!2374 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !227, file: !227, line: 937, type: !2375, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!10, !14, !12, !68}
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "n", arg: 1, scope: !2374, file: !227, line: 937, type: !14)
!2379 = !DILocalVariable(name: "arg", arg: 2, scope: !2374, file: !227, line: 937, type: !12)
!2380 = !DILocalVariable(name: "argsize", arg: 3, scope: !2374, file: !227, line: 937, type: !68)
!2381 = !DILocation(line: 0, scope: !2374)
!2382 = !DILocation(line: 939, column: 10, scope: !2374)
!2383 = !DILocation(line: 939, column: 3, scope: !2374)
!2384 = distinct !DISubprogram(name: "quotearg", scope: !227, file: !227, line: 943, type: !88, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2385)
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "arg", arg: 1, scope: !2384, file: !227, line: 943, type: !12)
!2387 = !DILocation(line: 0, scope: !2384)
!2388 = !DILocation(line: 0, scope: !2278, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 945, column: 10, scope: !2384)
!2390 = !DILocation(line: 933, column: 10, scope: !2278, inlinedAt: !2389)
!2391 = !DILocation(line: 945, column: 3, scope: !2384)
!2392 = distinct !DISubprogram(name: "quotearg_mem", scope: !227, file: !227, line: 949, type: !2393, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!10, !12, !68}
!2395 = !{!2396, !2397}
!2396 = !DILocalVariable(name: "arg", arg: 1, scope: !2392, file: !227, line: 949, type: !12)
!2397 = !DILocalVariable(name: "argsize", arg: 2, scope: !2392, file: !227, line: 949, type: !68)
!2398 = !DILocation(line: 0, scope: !2392)
!2399 = !DILocation(line: 0, scope: !2374, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 951, column: 10, scope: !2392)
!2401 = !DILocation(line: 939, column: 10, scope: !2374, inlinedAt: !2400)
!2402 = !DILocation(line: 951, column: 3, scope: !2392)
!2403 = distinct !DISubprogram(name: "quotearg_n_style", scope: !227, file: !227, line: 955, type: !2404, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!10, !14, !229, !12}
!2406 = !{!2407, !2408, !2409, !2410}
!2407 = !DILocalVariable(name: "n", arg: 1, scope: !2403, file: !227, line: 955, type: !14)
!2408 = !DILocalVariable(name: "s", arg: 2, scope: !2403, file: !227, line: 955, type: !229)
!2409 = !DILocalVariable(name: "arg", arg: 3, scope: !2403, file: !227, line: 955, type: !12)
!2410 = !DILocalVariable(name: "o", scope: !2403, file: !227, line: 957, type: !275)
!2411 = !DILocation(line: 0, scope: !2403)
!2412 = !DILocation(line: 957, column: 3, scope: !2403)
!2413 = !DILocation(line: 957, column: 32, scope: !2403)
!2414 = !DILocalVariable(name: "style", arg: 1, scope: !2415, file: !227, line: 193, type: !229)
!2415 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !227, file: !227, line: 193, type: !2416, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!276, !229}
!2418 = !{!2414, !2419}
!2419 = !DILocalVariable(name: "o", scope: !2415, file: !227, line: 195, type: !276)
!2420 = !DILocation(line: 0, scope: !2415, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 957, column: 36, scope: !2403)
!2422 = !DILocation(line: 195, column: 26, scope: !2415, inlinedAt: !2421)
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"quoting_options_from_style: argument 0"}
!2425 = distinct !{!2425, !"quoting_options_from_style"}
!2426 = !DILocation(line: 196, column: 13, scope: !2427, inlinedAt: !2421)
!2427 = distinct !DILexicalBlock(scope: !2415, file: !227, line: 196, column: 7)
!2428 = !DILocation(line: 196, column: 7, scope: !2415, inlinedAt: !2421)
!2429 = !DILocation(line: 197, column: 5, scope: !2427, inlinedAt: !2421)
!2430 = !DILocation(line: 198, column: 5, scope: !2415, inlinedAt: !2421)
!2431 = !DILocation(line: 198, column: 11, scope: !2415, inlinedAt: !2421)
!2432 = !DILocation(line: 958, column: 10, scope: !2403)
!2433 = !DILocation(line: 959, column: 1, scope: !2403)
!2434 = !DILocation(line: 958, column: 3, scope: !2403)
!2435 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !227, file: !227, line: 962, type: !2436, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!10, !14, !229, !12, !68}
!2438 = !{!2439, !2440, !2441, !2442, !2443}
!2439 = !DILocalVariable(name: "n", arg: 1, scope: !2435, file: !227, line: 962, type: !14)
!2440 = !DILocalVariable(name: "s", arg: 2, scope: !2435, file: !227, line: 962, type: !229)
!2441 = !DILocalVariable(name: "arg", arg: 3, scope: !2435, file: !227, line: 963, type: !12)
!2442 = !DILocalVariable(name: "argsize", arg: 4, scope: !2435, file: !227, line: 963, type: !68)
!2443 = !DILocalVariable(name: "o", scope: !2435, file: !227, line: 965, type: !275)
!2444 = !DILocation(line: 0, scope: !2435)
!2445 = !DILocation(line: 965, column: 3, scope: !2435)
!2446 = !DILocation(line: 965, column: 32, scope: !2435)
!2447 = !DILocation(line: 0, scope: !2415, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 965, column: 36, scope: !2435)
!2449 = !DILocation(line: 195, column: 26, scope: !2415, inlinedAt: !2448)
!2450 = !{!2451}
!2451 = distinct !{!2451, !2452, !"quoting_options_from_style: argument 0"}
!2452 = distinct !{!2452, !"quoting_options_from_style"}
!2453 = !DILocation(line: 196, column: 13, scope: !2427, inlinedAt: !2448)
!2454 = !DILocation(line: 196, column: 7, scope: !2415, inlinedAt: !2448)
!2455 = !DILocation(line: 197, column: 5, scope: !2427, inlinedAt: !2448)
!2456 = !DILocation(line: 198, column: 5, scope: !2415, inlinedAt: !2448)
!2457 = !DILocation(line: 198, column: 11, scope: !2415, inlinedAt: !2448)
!2458 = !DILocation(line: 966, column: 10, scope: !2435)
!2459 = !DILocation(line: 967, column: 1, scope: !2435)
!2460 = !DILocation(line: 966, column: 3, scope: !2435)
!2461 = distinct !DISubprogram(name: "quotearg_style", scope: !227, file: !227, line: 970, type: !2462, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!10, !229, !12}
!2464 = !{!2465, !2466}
!2465 = !DILocalVariable(name: "s", arg: 1, scope: !2461, file: !227, line: 970, type: !229)
!2466 = !DILocalVariable(name: "arg", arg: 2, scope: !2461, file: !227, line: 970, type: !12)
!2467 = !DILocation(line: 195, column: 26, scope: !2415, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 957, column: 36, scope: !2403, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 972, column: 10, scope: !2461)
!2470 = !DILocation(line: 957, column: 32, scope: !2403, inlinedAt: !2469)
!2471 = !DILocation(line: 0, scope: !2461)
!2472 = !DILocation(line: 0, scope: !2403, inlinedAt: !2469)
!2473 = !DILocation(line: 957, column: 3, scope: !2403, inlinedAt: !2469)
!2474 = !DILocation(line: 0, scope: !2415, inlinedAt: !2468)
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"quoting_options_from_style: argument 0"}
!2477 = distinct !{!2477, !"quoting_options_from_style"}
!2478 = !DILocation(line: 196, column: 13, scope: !2427, inlinedAt: !2468)
!2479 = !DILocation(line: 196, column: 7, scope: !2415, inlinedAt: !2468)
!2480 = !DILocation(line: 197, column: 5, scope: !2427, inlinedAt: !2468)
!2481 = !DILocation(line: 198, column: 5, scope: !2415, inlinedAt: !2468)
!2482 = !DILocation(line: 198, column: 11, scope: !2415, inlinedAt: !2468)
!2483 = !DILocation(line: 958, column: 10, scope: !2403, inlinedAt: !2469)
!2484 = !DILocation(line: 959, column: 1, scope: !2403, inlinedAt: !2469)
!2485 = !DILocation(line: 972, column: 3, scope: !2461)
!2486 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !227, file: !227, line: 976, type: !2487, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!10, !229, !12, !68}
!2489 = !{!2490, !2491, !2492}
!2490 = !DILocalVariable(name: "s", arg: 1, scope: !2486, file: !227, line: 976, type: !229)
!2491 = !DILocalVariable(name: "arg", arg: 2, scope: !2486, file: !227, line: 976, type: !12)
!2492 = !DILocalVariable(name: "argsize", arg: 3, scope: !2486, file: !227, line: 976, type: !68)
!2493 = !DILocation(line: 195, column: 26, scope: !2415, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 965, column: 36, scope: !2435, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 978, column: 10, scope: !2486)
!2496 = !DILocation(line: 965, column: 32, scope: !2435, inlinedAt: !2495)
!2497 = !DILocation(line: 0, scope: !2486)
!2498 = !DILocation(line: 0, scope: !2435, inlinedAt: !2495)
!2499 = !DILocation(line: 965, column: 3, scope: !2435, inlinedAt: !2495)
!2500 = !DILocation(line: 0, scope: !2415, inlinedAt: !2494)
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"quoting_options_from_style: argument 0"}
!2503 = distinct !{!2503, !"quoting_options_from_style"}
!2504 = !DILocation(line: 196, column: 13, scope: !2427, inlinedAt: !2494)
!2505 = !DILocation(line: 196, column: 7, scope: !2415, inlinedAt: !2494)
!2506 = !DILocation(line: 197, column: 5, scope: !2427, inlinedAt: !2494)
!2507 = !DILocation(line: 198, column: 5, scope: !2415, inlinedAt: !2494)
!2508 = !DILocation(line: 198, column: 11, scope: !2415, inlinedAt: !2494)
!2509 = !DILocation(line: 966, column: 10, scope: !2435, inlinedAt: !2495)
!2510 = !DILocation(line: 967, column: 1, scope: !2435, inlinedAt: !2495)
!2511 = !DILocation(line: 978, column: 3, scope: !2486)
!2512 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !227, file: !227, line: 982, type: !2513, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!10, !12, !68, !11}
!2515 = !{!2516, !2517, !2518, !2519}
!2516 = !DILocalVariable(name: "arg", arg: 1, scope: !2512, file: !227, line: 982, type: !12)
!2517 = !DILocalVariable(name: "argsize", arg: 2, scope: !2512, file: !227, line: 982, type: !68)
!2518 = !DILocalVariable(name: "ch", arg: 3, scope: !2512, file: !227, line: 982, type: !11)
!2519 = !DILocalVariable(name: "options", scope: !2512, file: !227, line: 984, type: !276)
!2520 = !DILocation(line: 0, scope: !2512)
!2521 = !DILocation(line: 984, column: 3, scope: !2512)
!2522 = !DILocation(line: 984, column: 26, scope: !2512)
!2523 = !DILocation(line: 985, column: 13, scope: !2512)
!2524 = !{i64 0, i64 4, !1531, i64 4, i64 4, !1145, i64 8, i64 32, !1531, i64 40, i64 8, !1064, i64 48, i64 8, !1064}
!2525 = !DILocation(line: 0, scope: !1345, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 986, column: 3, scope: !2512)
!2527 = !DILocation(line: 156, column: 62, scope: !1345, inlinedAt: !2526)
!2528 = !DILocation(line: 156, column: 57, scope: !1345, inlinedAt: !2526)
!2529 = !DILocation(line: 157, column: 15, scope: !1345, inlinedAt: !2526)
!2530 = !DILocation(line: 158, column: 12, scope: !1345, inlinedAt: !2526)
!2531 = !DILocation(line: 158, column: 15, scope: !1345, inlinedAt: !2526)
!2532 = !DILocation(line: 158, column: 25, scope: !1345, inlinedAt: !2526)
!2533 = !DILocation(line: 159, column: 18, scope: !1345, inlinedAt: !2526)
!2534 = !DILocation(line: 159, column: 23, scope: !1345, inlinedAt: !2526)
!2535 = !DILocation(line: 159, column: 6, scope: !1345, inlinedAt: !2526)
!2536 = !DILocation(line: 987, column: 10, scope: !2512)
!2537 = !DILocation(line: 988, column: 1, scope: !2512)
!2538 = !DILocation(line: 987, column: 3, scope: !2512)
!2539 = distinct !DISubprogram(name: "quotearg_char", scope: !227, file: !227, line: 991, type: !2540, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!10, !12, !11}
!2542 = !{!2543, !2544}
!2543 = !DILocalVariable(name: "arg", arg: 1, scope: !2539, file: !227, line: 991, type: !12)
!2544 = !DILocalVariable(name: "ch", arg: 2, scope: !2539, file: !227, line: 991, type: !11)
!2545 = !DILocation(line: 984, column: 26, scope: !2512, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 993, column: 10, scope: !2539)
!2547 = !DILocation(line: 0, scope: !2539)
!2548 = !DILocation(line: 0, scope: !2512, inlinedAt: !2546)
!2549 = !DILocation(line: 984, column: 3, scope: !2512, inlinedAt: !2546)
!2550 = !DILocation(line: 985, column: 13, scope: !2512, inlinedAt: !2546)
!2551 = !DILocation(line: 0, scope: !1345, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 986, column: 3, scope: !2512, inlinedAt: !2546)
!2553 = !DILocation(line: 156, column: 62, scope: !1345, inlinedAt: !2552)
!2554 = !DILocation(line: 156, column: 57, scope: !1345, inlinedAt: !2552)
!2555 = !DILocation(line: 157, column: 15, scope: !1345, inlinedAt: !2552)
!2556 = !DILocation(line: 158, column: 12, scope: !1345, inlinedAt: !2552)
!2557 = !DILocation(line: 158, column: 15, scope: !1345, inlinedAt: !2552)
!2558 = !DILocation(line: 158, column: 25, scope: !1345, inlinedAt: !2552)
!2559 = !DILocation(line: 159, column: 18, scope: !1345, inlinedAt: !2552)
!2560 = !DILocation(line: 159, column: 23, scope: !1345, inlinedAt: !2552)
!2561 = !DILocation(line: 159, column: 6, scope: !1345, inlinedAt: !2552)
!2562 = !DILocation(line: 987, column: 10, scope: !2512, inlinedAt: !2546)
!2563 = !DILocation(line: 988, column: 1, scope: !2512, inlinedAt: !2546)
!2564 = !DILocation(line: 993, column: 3, scope: !2539)
!2565 = distinct !DISubprogram(name: "quotearg_colon", scope: !227, file: !227, line: 997, type: !88, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2566)
!2566 = !{!2567}
!2567 = !DILocalVariable(name: "arg", arg: 1, scope: !2565, file: !227, line: 997, type: !12)
!2568 = !DILocation(line: 984, column: 26, scope: !2512, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 993, column: 10, scope: !2539, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 999, column: 10, scope: !2565)
!2571 = !DILocation(line: 0, scope: !2565)
!2572 = !DILocation(line: 0, scope: !2539, inlinedAt: !2570)
!2573 = !DILocation(line: 0, scope: !2512, inlinedAt: !2569)
!2574 = !DILocation(line: 984, column: 3, scope: !2512, inlinedAt: !2569)
!2575 = !DILocation(line: 985, column: 13, scope: !2512, inlinedAt: !2569)
!2576 = !DILocation(line: 0, scope: !1345, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 986, column: 3, scope: !2512, inlinedAt: !2569)
!2578 = !DILocation(line: 156, column: 57, scope: !1345, inlinedAt: !2577)
!2579 = !DILocation(line: 158, column: 12, scope: !1345, inlinedAt: !2577)
!2580 = !DILocation(line: 159, column: 6, scope: !1345, inlinedAt: !2577)
!2581 = !DILocation(line: 987, column: 10, scope: !2512, inlinedAt: !2569)
!2582 = !DILocation(line: 988, column: 1, scope: !2512, inlinedAt: !2569)
!2583 = !DILocation(line: 999, column: 3, scope: !2565)
!2584 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !227, file: !227, line: 1003, type: !2393, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2585)
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "arg", arg: 1, scope: !2584, file: !227, line: 1003, type: !12)
!2587 = !DILocalVariable(name: "argsize", arg: 2, scope: !2584, file: !227, line: 1003, type: !68)
!2588 = !DILocation(line: 984, column: 26, scope: !2512, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 1005, column: 10, scope: !2584)
!2590 = !DILocation(line: 0, scope: !2584)
!2591 = !DILocation(line: 0, scope: !2512, inlinedAt: !2589)
!2592 = !DILocation(line: 984, column: 3, scope: !2512, inlinedAt: !2589)
!2593 = !DILocation(line: 985, column: 13, scope: !2512, inlinedAt: !2589)
!2594 = !DILocation(line: 0, scope: !1345, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 986, column: 3, scope: !2512, inlinedAt: !2589)
!2596 = !DILocation(line: 156, column: 57, scope: !1345, inlinedAt: !2595)
!2597 = !DILocation(line: 158, column: 12, scope: !1345, inlinedAt: !2595)
!2598 = !DILocation(line: 159, column: 6, scope: !1345, inlinedAt: !2595)
!2599 = !DILocation(line: 987, column: 10, scope: !2512, inlinedAt: !2589)
!2600 = !DILocation(line: 988, column: 1, scope: !2512, inlinedAt: !2589)
!2601 = !DILocation(line: 1005, column: 3, scope: !2584)
!2602 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !227, file: !227, line: 1009, type: !2404, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2603)
!2603 = !{!2604, !2605, !2606, !2607}
!2604 = !DILocalVariable(name: "n", arg: 1, scope: !2602, file: !227, line: 1009, type: !14)
!2605 = !DILocalVariable(name: "s", arg: 2, scope: !2602, file: !227, line: 1009, type: !229)
!2606 = !DILocalVariable(name: "arg", arg: 3, scope: !2602, file: !227, line: 1009, type: !12)
!2607 = !DILocalVariable(name: "options", scope: !2602, file: !227, line: 1011, type: !276)
!2608 = !DILocation(line: 195, column: 26, scope: !2415, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1012, column: 13, scope: !2602)
!2610 = !DILocation(line: 0, scope: !2602)
!2611 = !DILocation(line: 1011, column: 3, scope: !2602)
!2612 = !DILocation(line: 1011, column: 26, scope: !2602)
!2613 = !DILocation(line: 1012, column: 13, scope: !2602)
!2614 = !DILocation(line: 0, scope: !2415, inlinedAt: !2609)
!2615 = !{!2616}
!2616 = distinct !{!2616, !2617, !"quoting_options_from_style: argument 0"}
!2617 = distinct !{!2617, !"quoting_options_from_style"}
!2618 = !DILocation(line: 196, column: 13, scope: !2427, inlinedAt: !2609)
!2619 = !DILocation(line: 196, column: 7, scope: !2415, inlinedAt: !2609)
!2620 = !DILocation(line: 197, column: 5, scope: !2427, inlinedAt: !2609)
!2621 = !DILocation(line: 0, scope: !1345, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1013, column: 3, scope: !2602)
!2623 = !DILocation(line: 156, column: 57, scope: !1345, inlinedAt: !2622)
!2624 = !DILocation(line: 158, column: 12, scope: !1345, inlinedAt: !2622)
!2625 = !DILocation(line: 159, column: 6, scope: !1345, inlinedAt: !2622)
!2626 = !DILocation(line: 1014, column: 10, scope: !2602)
!2627 = !DILocation(line: 1015, column: 1, scope: !2602)
!2628 = !DILocation(line: 1014, column: 3, scope: !2602)
!2629 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !227, file: !227, line: 1018, type: !2630, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!10, !14, !12, !12, !12}
!2632 = !{!2633, !2634, !2635, !2636}
!2633 = !DILocalVariable(name: "n", arg: 1, scope: !2629, file: !227, line: 1018, type: !14)
!2634 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2629, file: !227, line: 1018, type: !12)
!2635 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2629, file: !227, line: 1019, type: !12)
!2636 = !DILocalVariable(name: "arg", arg: 4, scope: !2629, file: !227, line: 1019, type: !12)
!2637 = !DILocalVariable(name: "o", scope: !2638, file: !227, line: 1030, type: !276)
!2638 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !227, file: !227, line: 1026, type: !2639, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!10, !14, !12, !12, !12, !68}
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2637}
!2642 = !DILocalVariable(name: "n", arg: 1, scope: !2638, file: !227, line: 1026, type: !14)
!2643 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2638, file: !227, line: 1026, type: !12)
!2644 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2638, file: !227, line: 1027, type: !12)
!2645 = !DILocalVariable(name: "arg", arg: 4, scope: !2638, file: !227, line: 1028, type: !12)
!2646 = !DILocalVariable(name: "argsize", arg: 5, scope: !2638, file: !227, line: 1028, type: !68)
!2647 = !DILocation(line: 1030, column: 26, scope: !2638, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1021, column: 10, scope: !2629)
!2649 = !DILocation(line: 0, scope: !2629)
!2650 = !DILocation(line: 0, scope: !2638, inlinedAt: !2648)
!2651 = !DILocation(line: 1030, column: 3, scope: !2638, inlinedAt: !2648)
!2652 = !DILocation(line: 1030, column: 30, scope: !2638, inlinedAt: !2648)
!2653 = !DILocation(line: 0, scope: !1385, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1031, column: 3, scope: !2638, inlinedAt: !2648)
!2655 = !DILocation(line: 184, column: 6, scope: !1385, inlinedAt: !2654)
!2656 = !DILocation(line: 184, column: 12, scope: !1385, inlinedAt: !2654)
!2657 = !DILocation(line: 185, column: 8, scope: !1399, inlinedAt: !2654)
!2658 = !DILocation(line: 185, column: 23, scope: !1399, inlinedAt: !2654)
!2659 = !DILocation(line: 185, column: 19, scope: !1399, inlinedAt: !2654)
!2660 = !DILocation(line: 186, column: 5, scope: !1399, inlinedAt: !2654)
!2661 = !DILocation(line: 187, column: 6, scope: !1385, inlinedAt: !2654)
!2662 = !DILocation(line: 187, column: 17, scope: !1385, inlinedAt: !2654)
!2663 = !DILocation(line: 188, column: 6, scope: !1385, inlinedAt: !2654)
!2664 = !DILocation(line: 188, column: 18, scope: !1385, inlinedAt: !2654)
!2665 = !DILocation(line: 1032, column: 10, scope: !2638, inlinedAt: !2648)
!2666 = !DILocation(line: 1033, column: 1, scope: !2638, inlinedAt: !2648)
!2667 = !DILocation(line: 1021, column: 3, scope: !2629)
!2668 = !DILocation(line: 0, scope: !2638)
!2669 = !DILocation(line: 1030, column: 3, scope: !2638)
!2670 = !DILocation(line: 1030, column: 26, scope: !2638)
!2671 = !DILocation(line: 1030, column: 30, scope: !2638)
!2672 = !DILocation(line: 0, scope: !1385, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 1031, column: 3, scope: !2638)
!2674 = !DILocation(line: 184, column: 6, scope: !1385, inlinedAt: !2673)
!2675 = !DILocation(line: 184, column: 12, scope: !1385, inlinedAt: !2673)
!2676 = !DILocation(line: 185, column: 8, scope: !1399, inlinedAt: !2673)
!2677 = !DILocation(line: 185, column: 23, scope: !1399, inlinedAt: !2673)
!2678 = !DILocation(line: 185, column: 19, scope: !1399, inlinedAt: !2673)
!2679 = !DILocation(line: 186, column: 5, scope: !1399, inlinedAt: !2673)
!2680 = !DILocation(line: 187, column: 6, scope: !1385, inlinedAt: !2673)
!2681 = !DILocation(line: 187, column: 17, scope: !1385, inlinedAt: !2673)
!2682 = !DILocation(line: 188, column: 6, scope: !1385, inlinedAt: !2673)
!2683 = !DILocation(line: 188, column: 18, scope: !1385, inlinedAt: !2673)
!2684 = !DILocation(line: 1032, column: 10, scope: !2638)
!2685 = !DILocation(line: 1033, column: 1, scope: !2638)
!2686 = !DILocation(line: 1032, column: 3, scope: !2638)
!2687 = distinct !DISubprogram(name: "quotearg_custom", scope: !227, file: !227, line: 1036, type: !2688, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!10, !12, !12, !12}
!2690 = !{!2691, !2692, !2693}
!2691 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2687, file: !227, line: 1036, type: !12)
!2692 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2687, file: !227, line: 1036, type: !12)
!2693 = !DILocalVariable(name: "arg", arg: 3, scope: !2687, file: !227, line: 1037, type: !12)
!2694 = !DILocation(line: 1030, column: 26, scope: !2638, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1021, column: 10, scope: !2629, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1039, column: 10, scope: !2687)
!2697 = !DILocation(line: 0, scope: !2687)
!2698 = !DILocation(line: 0, scope: !2629, inlinedAt: !2696)
!2699 = !DILocation(line: 0, scope: !2638, inlinedAt: !2695)
!2700 = !DILocation(line: 1030, column: 3, scope: !2638, inlinedAt: !2695)
!2701 = !DILocation(line: 1030, column: 30, scope: !2638, inlinedAt: !2695)
!2702 = !DILocation(line: 0, scope: !1385, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 1031, column: 3, scope: !2638, inlinedAt: !2695)
!2704 = !DILocation(line: 184, column: 6, scope: !1385, inlinedAt: !2703)
!2705 = !DILocation(line: 184, column: 12, scope: !1385, inlinedAt: !2703)
!2706 = !DILocation(line: 185, column: 8, scope: !1399, inlinedAt: !2703)
!2707 = !DILocation(line: 185, column: 23, scope: !1399, inlinedAt: !2703)
!2708 = !DILocation(line: 185, column: 19, scope: !1399, inlinedAt: !2703)
!2709 = !DILocation(line: 186, column: 5, scope: !1399, inlinedAt: !2703)
!2710 = !DILocation(line: 187, column: 6, scope: !1385, inlinedAt: !2703)
!2711 = !DILocation(line: 187, column: 17, scope: !1385, inlinedAt: !2703)
!2712 = !DILocation(line: 188, column: 6, scope: !1385, inlinedAt: !2703)
!2713 = !DILocation(line: 188, column: 18, scope: !1385, inlinedAt: !2703)
!2714 = !DILocation(line: 1032, column: 10, scope: !2638, inlinedAt: !2695)
!2715 = !DILocation(line: 1033, column: 1, scope: !2638, inlinedAt: !2695)
!2716 = !DILocation(line: 1039, column: 3, scope: !2687)
!2717 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !227, file: !227, line: 1043, type: !2718, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!10, !12, !12, !12, !68}
!2720 = !{!2721, !2722, !2723, !2724}
!2721 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2717, file: !227, line: 1043, type: !12)
!2722 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2717, file: !227, line: 1043, type: !12)
!2723 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !227, line: 1044, type: !12)
!2724 = !DILocalVariable(name: "argsize", arg: 4, scope: !2717, file: !227, line: 1044, type: !68)
!2725 = !DILocation(line: 1030, column: 26, scope: !2638, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 1046, column: 10, scope: !2717)
!2727 = !DILocation(line: 0, scope: !2717)
!2728 = !DILocation(line: 0, scope: !2638, inlinedAt: !2726)
!2729 = !DILocation(line: 1030, column: 3, scope: !2638, inlinedAt: !2726)
!2730 = !DILocation(line: 1030, column: 30, scope: !2638, inlinedAt: !2726)
!2731 = !DILocation(line: 0, scope: !1385, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 1031, column: 3, scope: !2638, inlinedAt: !2726)
!2733 = !DILocation(line: 184, column: 6, scope: !1385, inlinedAt: !2732)
!2734 = !DILocation(line: 184, column: 12, scope: !1385, inlinedAt: !2732)
!2735 = !DILocation(line: 185, column: 8, scope: !1399, inlinedAt: !2732)
!2736 = !DILocation(line: 185, column: 23, scope: !1399, inlinedAt: !2732)
!2737 = !DILocation(line: 185, column: 19, scope: !1399, inlinedAt: !2732)
!2738 = !DILocation(line: 186, column: 5, scope: !1399, inlinedAt: !2732)
!2739 = !DILocation(line: 187, column: 6, scope: !1385, inlinedAt: !2732)
!2740 = !DILocation(line: 187, column: 17, scope: !1385, inlinedAt: !2732)
!2741 = !DILocation(line: 188, column: 6, scope: !1385, inlinedAt: !2732)
!2742 = !DILocation(line: 188, column: 18, scope: !1385, inlinedAt: !2732)
!2743 = !DILocation(line: 1032, column: 10, scope: !2638, inlinedAt: !2726)
!2744 = !DILocation(line: 1033, column: 1, scope: !2638, inlinedAt: !2726)
!2745 = !DILocation(line: 1046, column: 3, scope: !2717)
!2746 = distinct !DISubprogram(name: "quote_n_mem", scope: !227, file: !227, line: 1061, type: !2747, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!12, !14, !12, !68}
!2749 = !{!2750, !2751, !2752}
!2750 = !DILocalVariable(name: "n", arg: 1, scope: !2746, file: !227, line: 1061, type: !14)
!2751 = !DILocalVariable(name: "arg", arg: 2, scope: !2746, file: !227, line: 1061, type: !12)
!2752 = !DILocalVariable(name: "argsize", arg: 3, scope: !2746, file: !227, line: 1061, type: !68)
!2753 = !DILocation(line: 0, scope: !2746)
!2754 = !DILocation(line: 1063, column: 10, scope: !2746)
!2755 = !DILocation(line: 1063, column: 3, scope: !2746)
!2756 = distinct !DISubprogram(name: "quote_mem", scope: !227, file: !227, line: 1067, type: !2757, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!12, !12, !68}
!2759 = !{!2760, !2761}
!2760 = !DILocalVariable(name: "arg", arg: 1, scope: !2756, file: !227, line: 1067, type: !12)
!2761 = !DILocalVariable(name: "argsize", arg: 2, scope: !2756, file: !227, line: 1067, type: !68)
!2762 = !DILocation(line: 0, scope: !2756)
!2763 = !DILocation(line: 0, scope: !2746, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1069, column: 10, scope: !2756)
!2765 = !DILocation(line: 1063, column: 10, scope: !2746, inlinedAt: !2764)
!2766 = !DILocation(line: 1069, column: 3, scope: !2756)
!2767 = distinct !DISubprogram(name: "quote_n", scope: !227, file: !227, line: 1073, type: !2768, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!12, !14, !12}
!2770 = !{!2771, !2772}
!2771 = !DILocalVariable(name: "n", arg: 1, scope: !2767, file: !227, line: 1073, type: !14)
!2772 = !DILocalVariable(name: "arg", arg: 2, scope: !2767, file: !227, line: 1073, type: !12)
!2773 = !DILocation(line: 0, scope: !2767)
!2774 = !DILocation(line: 0, scope: !2746, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1075, column: 10, scope: !2767)
!2776 = !DILocation(line: 1063, column: 10, scope: !2746, inlinedAt: !2775)
!2777 = !DILocation(line: 1075, column: 3, scope: !2767)
!2778 = distinct !DISubprogram(name: "quote", scope: !227, file: !227, line: 1079, type: !2779, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!12, !12}
!2781 = !{!2782}
!2782 = !DILocalVariable(name: "arg", arg: 1, scope: !2778, file: !227, line: 1079, type: !12)
!2783 = !DILocation(line: 0, scope: !2778)
!2784 = !DILocation(line: 0, scope: !2767, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 1081, column: 10, scope: !2778)
!2786 = !DILocation(line: 0, scope: !2746, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1075, column: 10, scope: !2767, inlinedAt: !2785)
!2788 = !DILocation(line: 1063, column: 10, scope: !2746, inlinedAt: !2787)
!2789 = !DILocation(line: 1081, column: 3, scope: !2778)
!2790 = distinct !DISubprogram(name: "version_etc_arn", scope: !372, file: !372, line: 61, type: !2791, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !2797)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !2793, !12, !12, !12, !2796, !68}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2795, line: 7, baseType: !382)
!2795 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803}
!2798 = !DILocalVariable(name: "stream", arg: 1, scope: !2790, file: !372, line: 61, type: !2793)
!2799 = !DILocalVariable(name: "command_name", arg: 2, scope: !2790, file: !372, line: 62, type: !12)
!2800 = !DILocalVariable(name: "package", arg: 3, scope: !2790, file: !372, line: 62, type: !12)
!2801 = !DILocalVariable(name: "version", arg: 4, scope: !2790, file: !372, line: 63, type: !12)
!2802 = !DILocalVariable(name: "authors", arg: 5, scope: !2790, file: !372, line: 64, type: !2796)
!2803 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2790, file: !372, line: 64, type: !68)
!2804 = !DILocation(line: 0, scope: !2790)
!2805 = !DILocation(line: 66, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2790, file: !372, line: 66, column: 7)
!2807 = !DILocation(line: 66, column: 7, scope: !2790)
!2808 = !DILocation(line: 67, column: 5, scope: !2806)
!2809 = !DILocation(line: 69, column: 5, scope: !2806)
!2810 = !DILocation(line: 83, column: 3, scope: !2790)
!2811 = !DILocation(line: 85, column: 3, scope: !2790)
!2812 = !DILocation(line: 88, column: 3, scope: !2790)
!2813 = !DILocation(line: 95, column: 3, scope: !2790)
!2814 = !DILocation(line: 97, column: 3, scope: !2790)
!2815 = !DILocation(line: 105, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2790, file: !372, line: 98, column: 5)
!2817 = !DILocation(line: 106, column: 7, scope: !2816)
!2818 = !DILocation(line: 109, column: 7, scope: !2816)
!2819 = !DILocation(line: 110, column: 7, scope: !2816)
!2820 = !DILocation(line: 113, column: 7, scope: !2816)
!2821 = !DILocation(line: 115, column: 7, scope: !2816)
!2822 = !DILocation(line: 120, column: 7, scope: !2816)
!2823 = !DILocation(line: 122, column: 7, scope: !2816)
!2824 = !DILocation(line: 127, column: 7, scope: !2816)
!2825 = !DILocation(line: 129, column: 7, scope: !2816)
!2826 = !DILocation(line: 134, column: 7, scope: !2816)
!2827 = !DILocation(line: 137, column: 7, scope: !2816)
!2828 = !DILocation(line: 142, column: 7, scope: !2816)
!2829 = !DILocation(line: 145, column: 7, scope: !2816)
!2830 = !DILocation(line: 150, column: 7, scope: !2816)
!2831 = !DILocation(line: 154, column: 7, scope: !2816)
!2832 = !DILocation(line: 159, column: 7, scope: !2816)
!2833 = !DILocation(line: 163, column: 7, scope: !2816)
!2834 = !DILocation(line: 170, column: 7, scope: !2816)
!2835 = !DILocation(line: 174, column: 7, scope: !2816)
!2836 = !DILocation(line: 176, column: 1, scope: !2790)
!2837 = distinct !DISubprogram(name: "version_etc_ar", scope: !372, file: !372, line: 183, type: !2838, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !2793, !12, !12, !12, !2796}
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846}
!2841 = !DILocalVariable(name: "stream", arg: 1, scope: !2837, file: !372, line: 183, type: !2793)
!2842 = !DILocalVariable(name: "command_name", arg: 2, scope: !2837, file: !372, line: 184, type: !12)
!2843 = !DILocalVariable(name: "package", arg: 3, scope: !2837, file: !372, line: 184, type: !12)
!2844 = !DILocalVariable(name: "version", arg: 4, scope: !2837, file: !372, line: 185, type: !12)
!2845 = !DILocalVariable(name: "authors", arg: 5, scope: !2837, file: !372, line: 185, type: !2796)
!2846 = !DILocalVariable(name: "n_authors", scope: !2837, file: !372, line: 187, type: !68)
!2847 = !DILocation(line: 0, scope: !2837)
!2848 = !DILocation(line: 189, column: 8, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2837, file: !372, line: 189, column: 3)
!2850 = !DILocation(line: 0, scope: !2849)
!2851 = !DILocation(line: 189, column: 23, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2849, file: !372, line: 189, column: 3)
!2853 = !DILocation(line: 189, column: 3, scope: !2849)
!2854 = !DILocation(line: 189, column: 52, scope: !2852)
!2855 = distinct !{!2855, !2853, !2856}
!2856 = !DILocation(line: 190, column: 5, scope: !2849)
!2857 = !DILocation(line: 191, column: 3, scope: !2837)
!2858 = !DILocation(line: 192, column: 1, scope: !2837)
!2859 = distinct !DISubprogram(name: "version_etc_va", scope: !372, file: !372, line: 199, type: !2860, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !2869)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !2793, !12, !12, !12, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !372, line: 192, size: 192, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2863, file: !372, line: 192, baseType: !230, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2863, file: !372, line: 192, baseType: !230, size: 32, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2863, file: !372, line: 192, baseType: !66, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2863, file: !372, line: 192, baseType: !66, size: 64, offset: 128)
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876}
!2870 = !DILocalVariable(name: "stream", arg: 1, scope: !2859, file: !372, line: 199, type: !2793)
!2871 = !DILocalVariable(name: "command_name", arg: 2, scope: !2859, file: !372, line: 200, type: !12)
!2872 = !DILocalVariable(name: "package", arg: 3, scope: !2859, file: !372, line: 200, type: !12)
!2873 = !DILocalVariable(name: "version", arg: 4, scope: !2859, file: !372, line: 201, type: !12)
!2874 = !DILocalVariable(name: "authors", arg: 5, scope: !2859, file: !372, line: 201, type: !2862)
!2875 = !DILocalVariable(name: "n_authors", scope: !2859, file: !372, line: 203, type: !68)
!2876 = !DILocalVariable(name: "authtab", scope: !2859, file: !372, line: 204, type: !2877)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !337)
!2878 = !DILocation(line: 0, scope: !2859)
!2879 = !DILocation(line: 204, column: 3, scope: !2859)
!2880 = !DILocation(line: 204, column: 15, scope: !2859)
!2881 = !DILocation(line: 0, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !372, line: 206, column: 3)
!2883 = distinct !DILexicalBlock(scope: !2859, file: !372, line: 206, column: 3)
!2884 = !DILocation(line: 208, column: 35, scope: !2882)
!2885 = !DILocation(line: 208, column: 14, scope: !2882)
!2886 = !DILocation(line: 208, column: 33, scope: !2882)
!2887 = !DILocation(line: 208, column: 67, scope: !2882)
!2888 = !DILocation(line: 206, column: 3, scope: !2883)
!2889 = !DILocation(line: 0, scope: !2883)
!2890 = !DILocation(line: 211, column: 3, scope: !2859)
!2891 = !DILocation(line: 213, column: 1, scope: !2859)
!2892 = distinct !DISubprogram(name: "version_etc", scope: !372, file: !372, line: 230, type: !2893, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2793, !12, !12, !12, null}
!2895 = !{!2896, !2897, !2898, !2899, !2900}
!2896 = !DILocalVariable(name: "stream", arg: 1, scope: !2892, file: !372, line: 230, type: !2793)
!2897 = !DILocalVariable(name: "command_name", arg: 2, scope: !2892, file: !372, line: 231, type: !12)
!2898 = !DILocalVariable(name: "package", arg: 3, scope: !2892, file: !372, line: 231, type: !12)
!2899 = !DILocalVariable(name: "version", arg: 4, scope: !2892, file: !372, line: 232, type: !12)
!2900 = !DILocalVariable(name: "authors", scope: !2892, file: !372, line: 234, type: !2901)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !16, line: 52, baseType: !2902)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2903, line: 32, baseType: !2904)
!2903 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !372, line: 234, baseType: !2905)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2863, size: 192, elements: !51)
!2906 = !DILocation(line: 0, scope: !2892)
!2907 = !DILocation(line: 234, column: 3, scope: !2892)
!2908 = !DILocation(line: 234, column: 11, scope: !2892)
!2909 = !DILocation(line: 236, column: 3, scope: !2892)
!2910 = !DILocation(line: 237, column: 3, scope: !2892)
!2911 = !DILocation(line: 238, column: 3, scope: !2892)
!2912 = !DILocation(line: 239, column: 1, scope: !2892)
!2913 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !372, file: !372, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !4)
!2914 = !DILocation(line: 244, column: 3, scope: !2913)
!2915 = !DILocation(line: 249, column: 3, scope: !2913)
!2916 = !DILocation(line: 255, column: 3, scope: !2913)
!2917 = !DILocation(line: 260, column: 3, scope: !2913)
!2918 = !DILocation(line: 262, column: 1, scope: !2913)
!2919 = distinct !DISubprogram(name: "xnmalloc", scope: !265, file: !265, line: 99, type: !2920, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!66, !68, !68}
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "n", arg: 1, scope: !2919, file: !265, line: 99, type: !68)
!2924 = !DILocalVariable(name: "s", arg: 2, scope: !2919, file: !265, line: 99, type: !68)
!2925 = !DILocation(line: 0, scope: !2919)
!2926 = !DILocation(line: 101, column: 7, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2919, file: !265, line: 101, column: 7)
!2928 = !DILocation(line: 101, column: 7, scope: !2919)
!2929 = !DILocation(line: 102, column: 5, scope: !2927)
!2930 = !DILocation(line: 103, column: 21, scope: !2919)
!2931 = !DILocalVariable(name: "n", arg: 1, scope: !2932, file: !414, line: 39, type: !68)
!2932 = distinct !DISubprogram(name: "xmalloc", scope: !414, file: !414, line: 39, type: !2933, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!66, !68}
!2935 = !{!2931, !2936}
!2936 = !DILocalVariable(name: "p", scope: !2932, file: !414, line: 41, type: !66)
!2937 = !DILocation(line: 0, scope: !2932, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 103, column: 10, scope: !2919)
!2939 = !DILocation(line: 41, column: 13, scope: !2932, inlinedAt: !2938)
!2940 = !DILocation(line: 42, column: 8, scope: !2941, inlinedAt: !2938)
!2941 = distinct !DILexicalBlock(scope: !2932, file: !414, line: 42, column: 7)
!2942 = !DILocation(line: 42, column: 15, scope: !2941, inlinedAt: !2938)
!2943 = !DILocation(line: 42, column: 10, scope: !2941, inlinedAt: !2938)
!2944 = !DILocation(line: 43, column: 5, scope: !2941, inlinedAt: !2938)
!2945 = !DILocation(line: 103, column: 3, scope: !2919)
!2946 = !DILocation(line: 0, scope: !2932)
!2947 = !DILocation(line: 41, column: 13, scope: !2932)
!2948 = !DILocation(line: 42, column: 8, scope: !2941)
!2949 = !DILocation(line: 42, column: 15, scope: !2941)
!2950 = !DILocation(line: 42, column: 10, scope: !2941)
!2951 = !DILocation(line: 43, column: 5, scope: !2941)
!2952 = !DILocation(line: 44, column: 3, scope: !2932)
!2953 = distinct !DISubprogram(name: "xnrealloc", scope: !265, file: !265, line: 112, type: !2954, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!66, !66, !68, !68}
!2956 = !{!2957, !2958, !2959}
!2957 = !DILocalVariable(name: "p", arg: 1, scope: !2953, file: !265, line: 112, type: !66)
!2958 = !DILocalVariable(name: "n", arg: 2, scope: !2953, file: !265, line: 112, type: !68)
!2959 = !DILocalVariable(name: "s", arg: 3, scope: !2953, file: !265, line: 112, type: !68)
!2960 = !DILocation(line: 0, scope: !2953)
!2961 = !DILocation(line: 114, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2953, file: !265, line: 114, column: 7)
!2963 = !DILocation(line: 114, column: 7, scope: !2953)
!2964 = !DILocation(line: 115, column: 5, scope: !2962)
!2965 = !DILocation(line: 116, column: 25, scope: !2953)
!2966 = !DILocalVariable(name: "p", arg: 1, scope: !2967, file: !414, line: 51, type: !66)
!2967 = distinct !DISubprogram(name: "xrealloc", scope: !414, file: !414, line: 51, type: !2968, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!66, !66, !68}
!2970 = !{!2966, !2971}
!2971 = !DILocalVariable(name: "n", arg: 2, scope: !2967, file: !414, line: 51, type: !68)
!2972 = !DILocation(line: 0, scope: !2967, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 116, column: 10, scope: !2953)
!2974 = !DILocation(line: 53, column: 8, scope: !2975, inlinedAt: !2973)
!2975 = distinct !DILexicalBlock(scope: !2967, file: !414, line: 53, column: 7)
!2976 = !DILocation(line: 53, column: 13, scope: !2975, inlinedAt: !2973)
!2977 = !DILocation(line: 53, column: 10, scope: !2975, inlinedAt: !2973)
!2978 = !DILocation(line: 57, column: 7, scope: !2979, inlinedAt: !2973)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !414, line: 54, column: 5)
!2980 = !DILocation(line: 58, column: 7, scope: !2979, inlinedAt: !2973)
!2981 = !DILocation(line: 61, column: 7, scope: !2967, inlinedAt: !2973)
!2982 = !DILocation(line: 62, column: 8, scope: !2983, inlinedAt: !2973)
!2983 = distinct !DILexicalBlock(scope: !2967, file: !414, line: 62, column: 7)
!2984 = !DILocation(line: 62, column: 13, scope: !2983, inlinedAt: !2973)
!2985 = !DILocation(line: 62, column: 10, scope: !2983, inlinedAt: !2973)
!2986 = !DILocation(line: 63, column: 5, scope: !2983, inlinedAt: !2973)
!2987 = !DILocation(line: 116, column: 3, scope: !2953)
!2988 = !DILocation(line: 0, scope: !2967)
!2989 = !DILocation(line: 53, column: 8, scope: !2975)
!2990 = !DILocation(line: 53, column: 13, scope: !2975)
!2991 = !DILocation(line: 53, column: 10, scope: !2975)
!2992 = !DILocation(line: 57, column: 7, scope: !2979)
!2993 = !DILocation(line: 58, column: 7, scope: !2979)
!2994 = !DILocation(line: 61, column: 7, scope: !2967)
!2995 = !DILocation(line: 62, column: 8, scope: !2983)
!2996 = !DILocation(line: 62, column: 13, scope: !2983)
!2997 = !DILocation(line: 62, column: 10, scope: !2983)
!2998 = !DILocation(line: 63, column: 5, scope: !2983)
!2999 = !DILocation(line: 65, column: 1, scope: !2967)
!3000 = !DILocation(line: 0, scope: !417)
!3001 = !DILocation(line: 176, column: 14, scope: !417)
!3002 = !DILocation(line: 178, column: 9, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !417, file: !265, line: 178, column: 7)
!3004 = !DILocation(line: 178, column: 7, scope: !417)
!3005 = !DILocation(line: 180, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !265, line: 180, column: 11)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !265, line: 179, column: 5)
!3008 = !DILocation(line: 180, column: 11, scope: !3007)
!3009 = !DILocation(line: 188, column: 30, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !265, line: 181, column: 9)
!3011 = !DILocation(line: 189, column: 16, scope: !3010)
!3012 = !DILocation(line: 189, column: 13, scope: !3010)
!3013 = !DILocation(line: 190, column: 9, scope: !3010)
!3014 = !DILocation(line: 191, column: 11, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3007, file: !265, line: 191, column: 11)
!3016 = !DILocation(line: 191, column: 11, scope: !3007)
!3017 = !DILocation(line: 206, column: 7, scope: !417)
!3018 = !DILocation(line: 207, column: 25, scope: !417)
!3019 = !DILocation(line: 0, scope: !2967, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 207, column: 10, scope: !417)
!3021 = !DILocation(line: 53, column: 10, scope: !2975, inlinedAt: !3020)
!3022 = !DILocation(line: 192, column: 9, scope: !3015)
!3023 = !DILocation(line: 200, column: 69, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !265, line: 200, column: 11)
!3025 = distinct !DILexicalBlock(scope: !3003, file: !265, line: 195, column: 5)
!3026 = !DILocation(line: 201, column: 11, scope: !3024)
!3027 = !DILocation(line: 200, column: 11, scope: !3025)
!3028 = !DILocation(line: 202, column: 9, scope: !3024)
!3029 = !DILocation(line: 203, column: 14, scope: !3025)
!3030 = !DILocation(line: 203, column: 18, scope: !3025)
!3031 = !DILocation(line: 203, column: 9, scope: !3025)
!3032 = !DILocation(line: 53, column: 8, scope: !2975, inlinedAt: !3020)
!3033 = !DILocation(line: 57, column: 7, scope: !2979, inlinedAt: !3020)
!3034 = !DILocation(line: 58, column: 7, scope: !2979, inlinedAt: !3020)
!3035 = !DILocation(line: 61, column: 7, scope: !2967, inlinedAt: !3020)
!3036 = !DILocation(line: 62, column: 8, scope: !2983, inlinedAt: !3020)
!3037 = !DILocation(line: 62, column: 13, scope: !2983, inlinedAt: !3020)
!3038 = !DILocation(line: 62, column: 10, scope: !2983, inlinedAt: !3020)
!3039 = !DILocation(line: 63, column: 5, scope: !2983, inlinedAt: !3020)
!3040 = !DILocation(line: 207, column: 3, scope: !417)
!3041 = distinct !DISubprogram(name: "xcharalloc", scope: !265, file: !265, line: 216, type: !2201, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3042)
!3042 = !{!3043}
!3043 = !DILocalVariable(name: "n", arg: 1, scope: !3041, file: !265, line: 216, type: !68)
!3044 = !DILocation(line: 0, scope: !3041)
!3045 = !DILocation(line: 0, scope: !2932, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 218, column: 10, scope: !3041)
!3047 = !DILocation(line: 41, column: 13, scope: !2932, inlinedAt: !3046)
!3048 = !DILocation(line: 42, column: 8, scope: !2941, inlinedAt: !3046)
!3049 = !DILocation(line: 42, column: 15, scope: !2941, inlinedAt: !3046)
!3050 = !DILocation(line: 42, column: 10, scope: !2941, inlinedAt: !3046)
!3051 = !DILocation(line: 43, column: 5, scope: !2941, inlinedAt: !3046)
!3052 = !DILocation(line: 218, column: 3, scope: !3041)
!3053 = distinct !DISubprogram(name: "x2realloc", scope: !414, file: !414, line: 74, type: !3054, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3056)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!66, !66, !420}
!3056 = !{!3057, !3058}
!3057 = !DILocalVariable(name: "p", arg: 1, scope: !3053, file: !414, line: 74, type: !66)
!3058 = !DILocalVariable(name: "pn", arg: 2, scope: !3053, file: !414, line: 74, type: !420)
!3059 = !DILocation(line: 0, scope: !3053)
!3060 = !DILocation(line: 0, scope: !417, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 76, column: 10, scope: !3053)
!3062 = !DILocation(line: 176, column: 14, scope: !417, inlinedAt: !3061)
!3063 = !DILocation(line: 178, column: 9, scope: !3003, inlinedAt: !3061)
!3064 = !DILocation(line: 178, column: 7, scope: !417, inlinedAt: !3061)
!3065 = !DILocation(line: 180, column: 13, scope: !3006, inlinedAt: !3061)
!3066 = !DILocation(line: 180, column: 11, scope: !3007, inlinedAt: !3061)
!3067 = !DILocation(line: 191, column: 11, scope: !3015, inlinedAt: !3061)
!3068 = !DILocation(line: 191, column: 11, scope: !3007, inlinedAt: !3061)
!3069 = !DILocation(line: 206, column: 7, scope: !417, inlinedAt: !3061)
!3070 = !DILocation(line: 0, scope: !2967, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 207, column: 10, scope: !417, inlinedAt: !3061)
!3072 = !DILocation(line: 53, column: 10, scope: !2975, inlinedAt: !3071)
!3073 = !DILocation(line: 192, column: 9, scope: !3015, inlinedAt: !3061)
!3074 = !DILocation(line: 201, column: 11, scope: !3024, inlinedAt: !3061)
!3075 = !DILocation(line: 200, column: 11, scope: !3025, inlinedAt: !3061)
!3076 = !DILocation(line: 202, column: 9, scope: !3024, inlinedAt: !3061)
!3077 = !DILocation(line: 203, column: 14, scope: !3025, inlinedAt: !3061)
!3078 = !DILocation(line: 203, column: 18, scope: !3025, inlinedAt: !3061)
!3079 = !DILocation(line: 203, column: 9, scope: !3025, inlinedAt: !3061)
!3080 = !DILocation(line: 53, column: 8, scope: !2975, inlinedAt: !3071)
!3081 = !DILocation(line: 57, column: 7, scope: !2979, inlinedAt: !3071)
!3082 = !DILocation(line: 58, column: 7, scope: !2979, inlinedAt: !3071)
!3083 = !DILocation(line: 61, column: 7, scope: !2967, inlinedAt: !3071)
!3084 = !DILocation(line: 62, column: 8, scope: !2983, inlinedAt: !3071)
!3085 = !DILocation(line: 62, column: 13, scope: !2983, inlinedAt: !3071)
!3086 = !DILocation(line: 62, column: 10, scope: !2983, inlinedAt: !3071)
!3087 = !DILocation(line: 63, column: 5, scope: !2983, inlinedAt: !3071)
!3088 = !DILocation(line: 76, column: 3, scope: !3053)
!3089 = distinct !DISubprogram(name: "xzalloc", scope: !414, file: !414, line: 84, type: !2933, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3090)
!3090 = !{!3091}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3089, file: !414, line: 84, type: !68)
!3092 = !DILocation(line: 0, scope: !3089)
!3093 = !DILocalVariable(name: "n", arg: 1, scope: !3094, file: !414, line: 93, type: !68)
!3094 = distinct !DISubprogram(name: "xcalloc", scope: !414, file: !414, line: 93, type: !2920, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3095)
!3095 = !{!3093, !3096, !3097}
!3096 = !DILocalVariable(name: "s", arg: 2, scope: !3094, file: !414, line: 93, type: !68)
!3097 = !DILocalVariable(name: "p", scope: !3094, file: !414, line: 95, type: !66)
!3098 = !DILocation(line: 0, scope: !3094, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 86, column: 10, scope: !3089)
!3100 = !DILocation(line: 100, column: 7, scope: !3101, inlinedAt: !3099)
!3101 = distinct !DILexicalBlock(scope: !3094, file: !414, line: 100, column: 7)
!3102 = !DILocation(line: 101, column: 7, scope: !3101, inlinedAt: !3099)
!3103 = !DILocation(line: 101, column: 18, scope: !3101, inlinedAt: !3099)
!3104 = !DILocation(line: 101, column: 16, scope: !3101, inlinedAt: !3099)
!3105 = !DILocation(line: 100, column: 7, scope: !3094, inlinedAt: !3099)
!3106 = !DILocation(line: 102, column: 5, scope: !3101, inlinedAt: !3099)
!3107 = !DILocation(line: 86, column: 3, scope: !3089)
!3108 = !DILocation(line: 0, scope: !3094)
!3109 = !DILocation(line: 100, column: 7, scope: !3101)
!3110 = !DILocation(line: 101, column: 7, scope: !3101)
!3111 = !DILocation(line: 101, column: 18, scope: !3101)
!3112 = !DILocation(line: 101, column: 16, scope: !3101)
!3113 = !DILocation(line: 100, column: 7, scope: !3094)
!3114 = !DILocation(line: 102, column: 5, scope: !3101)
!3115 = !DILocation(line: 103, column: 3, scope: !3094)
!3116 = distinct !DISubprogram(name: "xmemdup", scope: !414, file: !414, line: 111, type: !3117, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!66, !268, !68}
!3119 = !{!3120, !3121}
!3120 = !DILocalVariable(name: "p", arg: 1, scope: !3116, file: !414, line: 111, type: !268)
!3121 = !DILocalVariable(name: "s", arg: 2, scope: !3116, file: !414, line: 111, type: !68)
!3122 = !DILocation(line: 0, scope: !3116)
!3123 = !DILocation(line: 0, scope: !2932, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 113, column: 18, scope: !3116)
!3125 = !DILocation(line: 41, column: 13, scope: !2932, inlinedAt: !3124)
!3126 = !DILocation(line: 42, column: 8, scope: !2941, inlinedAt: !3124)
!3127 = !DILocation(line: 42, column: 15, scope: !2941, inlinedAt: !3124)
!3128 = !DILocation(line: 42, column: 10, scope: !2941, inlinedAt: !3124)
!3129 = !DILocation(line: 43, column: 5, scope: !2941, inlinedAt: !3124)
!3130 = !DILocalVariable(name: "__dest", arg: 1, scope: !3131, file: !1734, line: 31, type: !3134)
!3131 = distinct !DISubprogram(name: "memcpy", scope: !1734, file: !1734, line: 31, type: !3132, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3136)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!66, !3134, !3135, !68}
!3134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!3135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!3136 = !{!3130, !3137, !3138}
!3137 = !DILocalVariable(name: "__src", arg: 2, scope: !3131, file: !1734, line: 31, type: !3135)
!3138 = !DILocalVariable(name: "__len", arg: 3, scope: !3131, file: !1734, line: 31, type: !68)
!3139 = !DILocation(line: 0, scope: !3131, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 113, column: 10, scope: !3116)
!3141 = !DILocation(line: 34, column: 10, scope: !3131, inlinedAt: !3140)
!3142 = !DILocation(line: 113, column: 3, scope: !3116)
!3143 = distinct !DISubprogram(name: "xstrdup", scope: !414, file: !414, line: 119, type: !88, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "string", arg: 1, scope: !3143, file: !414, line: 119, type: !12)
!3146 = !DILocation(line: 0, scope: !3143)
!3147 = !DILocation(line: 121, column: 27, scope: !3143)
!3148 = !DILocation(line: 121, column: 43, scope: !3143)
!3149 = !DILocation(line: 0, scope: !3116, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 121, column: 10, scope: !3143)
!3151 = !DILocation(line: 0, scope: !2932, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 113, column: 18, scope: !3116, inlinedAt: !3150)
!3153 = !DILocation(line: 41, column: 13, scope: !2932, inlinedAt: !3152)
!3154 = !DILocation(line: 42, column: 8, scope: !2941, inlinedAt: !3152)
!3155 = !DILocation(line: 42, column: 15, scope: !2941, inlinedAt: !3152)
!3156 = !DILocation(line: 42, column: 10, scope: !2941, inlinedAt: !3152)
!3157 = !DILocation(line: 43, column: 5, scope: !2941, inlinedAt: !3152)
!3158 = !DILocation(line: 0, scope: !3131, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 113, column: 10, scope: !3116, inlinedAt: !3150)
!3160 = !DILocation(line: 34, column: 10, scope: !3131, inlinedAt: !3159)
!3161 = !DILocation(line: 121, column: 3, scope: !3143)
!3162 = distinct !DISubprogram(name: "xalloc_die", scope: !435, file: !435, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4)
!3163 = !DILocation(line: 34, column: 10, scope: !3162)
!3164 = !DILocation(line: 34, column: 33, scope: !3162)
!3165 = !DILocation(line: 34, column: 3, scope: !3162)
!3166 = !DILocation(line: 40, column: 3, scope: !3162)
!3167 = distinct !DISubprogram(name: "rpl_calloc", scope: !438, file: !438, line: 42, type: !2920, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3168)
!3168 = !{!3169, !3170, !3171, !3172}
!3169 = !DILocalVariable(name: "n", arg: 1, scope: !3167, file: !438, line: 42, type: !68)
!3170 = !DILocalVariable(name: "s", arg: 2, scope: !3167, file: !438, line: 42, type: !68)
!3171 = !DILocalVariable(name: "result", scope: !3167, file: !438, line: 44, type: !66)
!3172 = !DILocalVariable(name: "bytes", scope: !3173, file: !438, line: 56, type: !68)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !438, line: 53, column: 5)
!3174 = distinct !DILexicalBlock(scope: !3167, file: !438, line: 47, column: 7)
!3175 = !DILocation(line: 0, scope: !3167)
!3176 = !DILocation(line: 47, column: 9, scope: !3174)
!3177 = !DILocation(line: 47, column: 19, scope: !3174)
!3178 = !DILocation(line: 47, column: 14, scope: !3174)
!3179 = !DILocation(line: 0, scope: !3173)
!3180 = !DILocation(line: 57, column: 21, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3173, file: !438, line: 57, column: 11)
!3182 = !DILocation(line: 57, column: 11, scope: !3173)
!3183 = !DILocation(line: 59, column: 11, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3181, file: !438, line: 58, column: 9)
!3185 = !DILocation(line: 59, column: 17, scope: !3184)
!3186 = !DILocation(line: 65, column: 12, scope: !3167)
!3187 = !DILocation(line: 72, column: 3, scope: !3167)
!3188 = !DILocation(line: 73, column: 1, scope: !3167)
!3189 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !441, file: !441, line: 86, type: !3190, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3196)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!68, !3192, !12, !68, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1475, line: 6, baseType: !3195)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !296, line: 21, baseType: !447)
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202, !3203}
!3197 = !DILocalVariable(name: "pwc", arg: 1, scope: !3189, file: !441, line: 86, type: !3192)
!3198 = !DILocalVariable(name: "s", arg: 2, scope: !3189, file: !441, line: 86, type: !12)
!3199 = !DILocalVariable(name: "n", arg: 3, scope: !3189, file: !441, line: 86, type: !68)
!3200 = !DILocalVariable(name: "ps", arg: 4, scope: !3189, file: !441, line: 86, type: !3193)
!3201 = !DILocalVariable(name: "ret", scope: !3189, file: !441, line: 88, type: !68)
!3202 = !DILocalVariable(name: "wc", scope: !3189, file: !441, line: 89, type: !1479)
!3203 = !DILocalVariable(name: "uc", scope: !3204, file: !441, line: 156, type: !120)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !441, line: 155, column: 5)
!3205 = distinct !DILexicalBlock(scope: !3189, file: !441, line: 154, column: 7)
!3206 = !DILocation(line: 0, scope: !3189)
!3207 = !DILocation(line: 89, column: 3, scope: !3189)
!3208 = !DILocation(line: 105, column: 9, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3189, file: !441, line: 105, column: 7)
!3210 = !DILocation(line: 105, column: 7, scope: !3189)
!3211 = !DILocation(line: 145, column: 9, scope: !3189)
!3212 = !DILocation(line: 154, column: 19, scope: !3205)
!3213 = !DILocation(line: 154, column: 31, scope: !3205)
!3214 = !DILocation(line: 154, column: 26, scope: !3205)
!3215 = !DILocation(line: 154, column: 41, scope: !3205)
!3216 = !DILocation(line: 154, column: 7, scope: !3189)
!3217 = !DILocation(line: 156, column: 26, scope: !3204)
!3218 = !DILocation(line: 0, scope: !3204)
!3219 = !DILocation(line: 157, column: 14, scope: !3204)
!3220 = !DILocation(line: 157, column: 12, scope: !3204)
!3221 = !DILocation(line: 163, column: 1, scope: !3189)
!3222 = distinct !DISubprogram(name: "close_stream", scope: !460, file: !460, line: 56, type: !3223, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !3227)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!14, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2795, line: 7, baseType: !467)
!3227 = !{!3228, !3229, !3231, !3232}
!3228 = !DILocalVariable(name: "stream", arg: 1, scope: !3222, file: !460, line: 56, type: !3225)
!3229 = !DILocalVariable(name: "some_pending", scope: !3222, file: !460, line: 58, type: !3230)
!3230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!3231 = !DILocalVariable(name: "prev_fail", scope: !3222, file: !460, line: 59, type: !3230)
!3232 = !DILocalVariable(name: "fclose_fail", scope: !3222, file: !460, line: 60, type: !3230)
!3233 = !DILocation(line: 0, scope: !3222)
!3234 = !DILocation(line: 58, column: 30, scope: !3222)
!3235 = !DILocalVariable(name: "__stream", arg: 1, scope: !3236, file: !3237, line: 135, type: !3225)
!3236 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3237, file: !3237, line: 135, type: !3223, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !3238)
!3237 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3238 = !{!3235}
!3239 = !DILocation(line: 0, scope: !3236, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 59, column: 27, scope: !3222)
!3241 = !DILocation(line: 137, column: 10, scope: !3236, inlinedAt: !3240)
!3242 = !{!3243, !1146, i64 0}
!3243 = !{!"_IO_FILE", !1146, i64 0, !1065, i64 8, !1065, i64 16, !1065, i64 24, !1065, i64 32, !1065, i64 40, !1065, i64 48, !1065, i64 56, !1065, i64 64, !1065, i64 72, !1065, i64 80, !1065, i64 88, !1065, i64 96, !1065, i64 104, !1146, i64 112, !1146, i64 116, !2237, i64 120, !1727, i64 128, !1066, i64 130, !1066, i64 131, !1065, i64 136, !2237, i64 144, !1065, i64 152, !1065, i64 160, !1065, i64 168, !1065, i64 176, !2237, i64 184, !1146, i64 192, !1066, i64 196}
!3244 = !DILocation(line: 59, column: 43, scope: !3222)
!3245 = !DILocation(line: 60, column: 29, scope: !3222)
!3246 = !DILocation(line: 60, column: 45, scope: !3222)
!3247 = !DILocation(line: 70, column: 17, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3222, file: !460, line: 70, column: 7)
!3249 = !DILocation(line: 58, column: 50, scope: !3222)
!3250 = !DILocation(line: 70, column: 33, scope: !3248)
!3251 = !DILocation(line: 70, column: 53, scope: !3248)
!3252 = !DILocation(line: 70, column: 59, scope: !3248)
!3253 = !DILocation(line: 70, column: 7, scope: !3222)
!3254 = !DILocation(line: 72, column: 11, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3248, file: !460, line: 71, column: 5)
!3256 = !DILocation(line: 73, column: 9, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3255, file: !460, line: 72, column: 11)
!3258 = !DILocation(line: 73, column: 15, scope: !3257)
!3259 = !DILocation(line: 78, column: 1, scope: !3222)
!3260 = distinct !DISubprogram(name: "hard_locale", scope: !499, file: !499, line: 27, type: !457, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !3261)
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "category", arg: 1, scope: !3260, file: !499, line: 27, type: !14)
!3263 = !DILocalVariable(name: "locale", scope: !3260, file: !499, line: 29, type: !3264)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !3265)
!3265 = !{!3266}
!3266 = !DISubrange(count: 257)
!3267 = !DILocation(line: 0, scope: !3260)
!3268 = !DILocation(line: 29, column: 3, scope: !3260)
!3269 = !DILocation(line: 29, column: 8, scope: !3260)
!3270 = !DILocation(line: 31, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3260, file: !499, line: 31, column: 7)
!3272 = !DILocation(line: 31, column: 7, scope: !3260)
!3273 = !DILocation(line: 34, column: 12, scope: !3260)
!3274 = !DILocation(line: 34, column: 38, scope: !3260)
!3275 = !DILocation(line: 34, column: 41, scope: !3260)
!3276 = !DILocation(line: 34, column: 66, scope: !3260)
!3277 = !DILocation(line: 35, column: 1, scope: !3260)
!3278 = distinct !DISubprogram(name: "locale_charset", scope: !506, file: !506, line: 831, type: !319, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !3279)
!3279 = !{!3280}
!3280 = !DILocalVariable(name: "codeset", scope: !3278, file: !506, line: 833, type: !12)
!3281 = !DILocation(line: 847, column: 13, scope: !3278)
!3282 = !DILocation(line: 0, scope: !3278)
!3283 = !DILocation(line: 911, column: 15, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3278, file: !506, line: 911, column: 7)
!3285 = !DILocation(line: 911, column: 7, scope: !3278)
!3286 = !DILocation(line: 1070, column: 13, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !506, line: 1070, column: 13)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !506, line: 1060, column: 7)
!3289 = distinct !DILexicalBlock(scope: !3278, file: !506, line: 1019, column: 3)
!3290 = !DILocation(line: 1070, column: 24, scope: !3287)
!3291 = !DILocation(line: 1070, column: 13, scope: !3288)
!3292 = !DILocation(line: 1158, column: 3, scope: !3278)
!3293 = distinct !DISubprogram(name: "setlocale_null_r", scope: !899, file: !899, line: 269, type: !3294, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!14, !14, !10, !68}
!3296 = !{!3297, !3298, !3299}
!3297 = !DILocalVariable(name: "category", arg: 1, scope: !3293, file: !899, line: 269, type: !14)
!3298 = !DILocalVariable(name: "buf", arg: 2, scope: !3293, file: !899, line: 269, type: !10)
!3299 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3293, file: !899, line: 269, type: !68)
!3300 = !DILocation(line: 0, scope: !3293)
!3301 = !DILocalVariable(name: "category", arg: 1, scope: !3302, file: !899, line: 91, type: !14)
!3302 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !899, file: !899, line: 91, type: !3294, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !3303)
!3303 = !{!3301, !3304, !3305, !3306, !3307}
!3304 = !DILocalVariable(name: "buf", arg: 2, scope: !3302, file: !899, line: 91, type: !10)
!3305 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3302, file: !899, line: 91, type: !68)
!3306 = !DILocalVariable(name: "result", scope: !3302, file: !899, line: 140, type: !12)
!3307 = !DILocalVariable(name: "length", scope: !3308, file: !899, line: 154, type: !68)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !899, line: 153, column: 5)
!3309 = distinct !DILexicalBlock(scope: !3302, file: !899, line: 142, column: 7)
!3310 = !DILocation(line: 0, scope: !3302, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 274, column: 10, scope: !3293)
!3312 = !DILocalVariable(name: "category", arg: 1, scope: !3313, file: !899, line: 60, type: !14)
!3313 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !899, file: !899, line: 60, type: !3314, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!12, !14}
!3316 = !{!3312, !3317}
!3317 = !DILocalVariable(name: "result", scope: !3313, file: !899, line: 62, type: !12)
!3318 = !DILocation(line: 0, scope: !3313, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 140, column: 24, scope: !3302, inlinedAt: !3311)
!3320 = !DILocation(line: 62, column: 24, scope: !3313, inlinedAt: !3319)
!3321 = !DILocation(line: 142, column: 14, scope: !3309, inlinedAt: !3311)
!3322 = !DILocation(line: 142, column: 7, scope: !3302, inlinedAt: !3311)
!3323 = !DILocation(line: 145, column: 19, scope: !3324, inlinedAt: !3311)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !899, line: 145, column: 11)
!3325 = distinct !DILexicalBlock(scope: !3309, file: !899, line: 143, column: 5)
!3326 = !DILocation(line: 145, column: 11, scope: !3325, inlinedAt: !3311)
!3327 = !DILocation(line: 149, column: 16, scope: !3324, inlinedAt: !3311)
!3328 = !DILocation(line: 149, column: 9, scope: !3324, inlinedAt: !3311)
!3329 = !DILocation(line: 154, column: 23, scope: !3308, inlinedAt: !3311)
!3330 = !DILocation(line: 0, scope: !3308, inlinedAt: !3311)
!3331 = !DILocation(line: 155, column: 18, scope: !3332, inlinedAt: !3311)
!3332 = distinct !DILexicalBlock(scope: !3308, file: !899, line: 155, column: 11)
!3333 = !DILocation(line: 155, column: 11, scope: !3308, inlinedAt: !3311)
!3334 = !DILocation(line: 157, column: 39, scope: !3335, inlinedAt: !3311)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !899, line: 156, column: 9)
!3336 = !DILocalVariable(name: "__dest", arg: 1, scope: !3337, file: !1734, line: 31, type: !3134)
!3337 = distinct !DISubprogram(name: "memcpy", scope: !1734, file: !1734, line: 31, type: !3132, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !3338)
!3338 = !{!3336, !3339, !3340}
!3339 = !DILocalVariable(name: "__src", arg: 2, scope: !3337, file: !1734, line: 31, type: !3135)
!3340 = !DILocalVariable(name: "__len", arg: 3, scope: !3337, file: !1734, line: 31, type: !68)
!3341 = !DILocation(line: 0, scope: !3337, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 157, column: 11, scope: !3335, inlinedAt: !3311)
!3343 = !DILocation(line: 34, column: 10, scope: !3337, inlinedAt: !3342)
!3344 = !DILocation(line: 158, column: 11, scope: !3335, inlinedAt: !3311)
!3345 = !DILocation(line: 162, column: 23, scope: !3346, inlinedAt: !3311)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !899, line: 162, column: 15)
!3347 = distinct !DILexicalBlock(scope: !3332, file: !899, line: 161, column: 9)
!3348 = !DILocation(line: 162, column: 15, scope: !3347, inlinedAt: !3311)
!3349 = !DILocation(line: 167, column: 44, scope: !3350, inlinedAt: !3311)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !899, line: 163, column: 13)
!3351 = !DILocation(line: 0, scope: !3337, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 167, column: 15, scope: !3350, inlinedAt: !3311)
!3353 = !DILocation(line: 34, column: 10, scope: !3337, inlinedAt: !3352)
!3354 = !DILocation(line: 168, column: 15, scope: !3350, inlinedAt: !3311)
!3355 = !DILocation(line: 168, column: 32, scope: !3350, inlinedAt: !3311)
!3356 = !DILocation(line: 169, column: 13, scope: !3350, inlinedAt: !3311)
!3357 = !DILocation(line: 0, scope: !3309, inlinedAt: !3311)
!3358 = !DILocation(line: 274, column: 3, scope: !3293)
!3359 = distinct !DISubprogram(name: "setlocale_null", scope: !899, file: !899, line: 301, type: !3314, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !898, retainedNodes: !3360)
!3360 = !{!3361}
!3361 = !DILocalVariable(name: "category", arg: 1, scope: !3359, file: !899, line: 301, type: !14)
!3362 = !DILocation(line: 0, scope: !3359)
!3363 = !DILocation(line: 0, scope: !3313, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 304, column: 10, scope: !3359)
!3365 = !DILocation(line: 62, column: 24, scope: !3313, inlinedAt: !3364)
!3366 = !DILocation(line: 304, column: 3, scope: !3359)
!3367 = distinct !DISubprogram(name: "rpl_fclose", scope: !902, file: !902, line: 58, type: !3368, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !3372)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!14, !3370}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2795, line: 7, baseType: !908)
!3372 = !{!3373, !3374, !3375, !3376}
!3373 = !DILocalVariable(name: "fp", arg: 1, scope: !3367, file: !902, line: 58, type: !3370)
!3374 = !DILocalVariable(name: "saved_errno", scope: !3367, file: !902, line: 60, type: !14)
!3375 = !DILocalVariable(name: "fd", scope: !3367, file: !902, line: 61, type: !14)
!3376 = !DILocalVariable(name: "result", scope: !3367, file: !902, line: 62, type: !14)
!3377 = !DILocation(line: 0, scope: !3367)
!3378 = !DILocation(line: 65, column: 8, scope: !3367)
!3379 = !DILocation(line: 66, column: 10, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3367, file: !902, line: 66, column: 7)
!3381 = !DILocation(line: 66, column: 7, scope: !3367)
!3382 = !DILocation(line: 67, column: 12, scope: !3380)
!3383 = !DILocation(line: 67, column: 5, scope: !3380)
!3384 = !DILocation(line: 72, column: 9, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3367, file: !902, line: 72, column: 7)
!3386 = !DILocation(line: 72, column: 23, scope: !3385)
!3387 = !DILocation(line: 72, column: 33, scope: !3385)
!3388 = !DILocation(line: 72, column: 26, scope: !3385)
!3389 = !DILocation(line: 72, column: 59, scope: !3385)
!3390 = !DILocation(line: 73, column: 7, scope: !3385)
!3391 = !DILocation(line: 73, column: 10, scope: !3385)
!3392 = !DILocation(line: 72, column: 7, scope: !3367)
!3393 = !DILocation(line: 100, column: 12, scope: !3367)
!3394 = !DILocation(line: 105, column: 7, scope: !3367)
!3395 = !DILocation(line: 74, column: 19, scope: !3385)
!3396 = !DILocation(line: 105, column: 19, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3367, file: !902, line: 105, column: 7)
!3398 = !DILocation(line: 107, column: 13, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3397, file: !902, line: 106, column: 5)
!3400 = !DILocation(line: 109, column: 5, scope: !3399)
!3401 = !DILocation(line: 112, column: 1, scope: !3367)
!3402 = distinct !DISubprogram(name: "rpl_fflush", scope: !946, file: !946, line: 129, type: !3403, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3407)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!14, !3405}
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2795, line: 7, baseType: !952)
!3407 = !{!3408}
!3408 = !DILocalVariable(name: "stream", arg: 1, scope: !3402, file: !946, line: 129, type: !3405)
!3409 = !DILocation(line: 0, scope: !3402)
!3410 = !DILocation(line: 150, column: 14, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3402, file: !946, line: 150, column: 7)
!3412 = !DILocation(line: 150, column: 22, scope: !3411)
!3413 = !DILocation(line: 150, column: 27, scope: !3411)
!3414 = !DILocation(line: 150, column: 7, scope: !3402)
!3415 = !DILocation(line: 151, column: 12, scope: !3411)
!3416 = !DILocation(line: 151, column: 5, scope: !3411)
!3417 = !DILocalVariable(name: "fp", arg: 1, scope: !3418, file: !946, line: 41, type: !3405)
!3418 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !946, file: !946, line: 41, type: !3419, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !3405}
!3421 = !{!3417}
!3422 = !DILocation(line: 0, scope: !3418, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 156, column: 3, scope: !3402)
!3424 = !DILocation(line: 43, column: 11, scope: !3425, inlinedAt: !3423)
!3425 = distinct !DILexicalBlock(scope: !3418, file: !946, line: 43, column: 7)
!3426 = !DILocation(line: 43, column: 18, scope: !3425, inlinedAt: !3423)
!3427 = !DILocation(line: 43, column: 7, scope: !3418, inlinedAt: !3423)
!3428 = !DILocation(line: 45, column: 5, scope: !3425, inlinedAt: !3423)
!3429 = !DILocation(line: 158, column: 10, scope: !3402)
!3430 = !DILocation(line: 158, column: 3, scope: !3402)
!3431 = !DILocation(line: 235, column: 1, scope: !3402)
!3432 = distinct !DISubprogram(name: "rpl_fseeko", scope: !987, file: !987, line: 28, type: !3433, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !3438)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!14, !3435, !3437, !14}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2795, line: 7, baseType: !993)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 63, baseType: !42)
!3438 = !{!3439, !3440, !3441, !3442}
!3439 = !DILocalVariable(name: "fp", arg: 1, scope: !3432, file: !987, line: 28, type: !3435)
!3440 = !DILocalVariable(name: "offset", arg: 2, scope: !3432, file: !987, line: 28, type: !3437)
!3441 = !DILocalVariable(name: "whence", arg: 3, scope: !3432, file: !987, line: 28, type: !14)
!3442 = !DILocalVariable(name: "pos", scope: !3443, file: !987, line: 117, type: !3437)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !987, line: 113, column: 5)
!3444 = distinct !DILexicalBlock(scope: !3432, file: !987, line: 52, column: 7)
!3445 = !DILocation(line: 0, scope: !3432)
!3446 = !DILocation(line: 52, column: 11, scope: !3444)
!3447 = !{!3243, !1065, i64 16}
!3448 = !DILocation(line: 52, column: 31, scope: !3444)
!3449 = !{!3243, !1065, i64 8}
!3450 = !DILocation(line: 52, column: 24, scope: !3444)
!3451 = !DILocation(line: 53, column: 7, scope: !3444)
!3452 = !DILocation(line: 53, column: 14, scope: !3444)
!3453 = !{!3243, !1065, i64 40}
!3454 = !DILocation(line: 53, column: 35, scope: !3444)
!3455 = !{!3243, !1065, i64 32}
!3456 = !DILocation(line: 53, column: 28, scope: !3444)
!3457 = !DILocation(line: 54, column: 7, scope: !3444)
!3458 = !DILocation(line: 54, column: 14, scope: !3444)
!3459 = !{!3243, !1065, i64 72}
!3460 = !DILocation(line: 54, column: 28, scope: !3444)
!3461 = !DILocation(line: 52, column: 7, scope: !3432)
!3462 = !DILocation(line: 117, column: 26, scope: !3443)
!3463 = !DILocation(line: 117, column: 19, scope: !3443)
!3464 = !DILocation(line: 0, scope: !3443)
!3465 = !DILocation(line: 118, column: 15, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3443, file: !987, line: 118, column: 11)
!3467 = !DILocation(line: 118, column: 11, scope: !3443)
!3468 = !DILocation(line: 129, column: 11, scope: !3443)
!3469 = !DILocation(line: 129, column: 18, scope: !3443)
!3470 = !DILocation(line: 130, column: 11, scope: !3443)
!3471 = !DILocation(line: 130, column: 19, scope: !3443)
!3472 = !{!3243, !2237, i64 144}
!3473 = !DILocation(line: 161, column: 7, scope: !3443)
!3474 = !DILocation(line: 163, column: 10, scope: !3432)
!3475 = !DILocation(line: 163, column: 3, scope: !3432)
!3476 = !DILocation(line: 164, column: 1, scope: !3432)
