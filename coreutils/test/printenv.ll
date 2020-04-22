; ModuleID = 'coreutils-8.32/src/printenv.bc'
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
@.str.1 = private unnamed_addr constant [167 x i8] c"Usage: %s [OPTION]... [VARIABLE]...\0APrint the values of the specified environment VARIABLE(s).\0AIf no VARIABLE is specified, print name and value pairs for them all.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"  -0, --null     end each output line with NUL, not newline\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"printenv\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@environ = external local_unnamed_addr global i8**, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !125
@.str.33 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !130
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !178
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !181
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !187
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !228
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !336
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !342
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !344
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !351
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !358
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !346
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !360
@.str.67 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.70 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.71 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.72 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.73 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.74 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.75 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.76 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.77 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.78 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.79 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.80 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.81 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.82 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.85 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.86 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.87 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.88 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.89 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.90 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.91 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !366
@.str.1.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1036 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1041, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %0, metadata !1040, metadata !DIExpression()), !dbg !1062
  %3 = icmp eq i32 %0, 0, !dbg !1063
  br i1 %3, label %9, label %4, !dbg !1064

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1065, !tbaa !1067
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1065
  %7 = load i8*, i8** @program_name, align 8, !dbg !1065, !tbaa !1067
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1065
  br label %60, !dbg !1065

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1071
  %11 = load i8*, i8** @program_name, align 8, !dbg !1071, !tbaa !1067
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1071
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1072
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1072, !tbaa !1067
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1072
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1073
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1073, !tbaa !1067
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1073
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1074
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1074, !tbaa !1067
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1074
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1075
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1075
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), metadata !1045, metadata !DIExpression()) #18, !dbg !1076
  %24 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1077
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %24) #18, !dbg !1077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %24, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1058
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), metadata !1046, metadata !DIExpression()) #18, !dbg !1076
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1047, metadata !DIExpression()) #18, !dbg !1076
  %25 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1078
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !1047, metadata !DIExpression()) #18, !dbg !1076
  br label %26, !dbg !1079

26:                                               ; preds = %31, %9
  %27 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %28 = phi %struct.infomap* [ %32, %31 ], [ %25, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !1047, metadata !DIExpression()) #18, !dbg !1076
  %29 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %27) #21, !dbg !1080
  %30 = icmp eq i32 %29, 0, !dbg !1080
  br i1 %30, label %36, label %31, !dbg !1079

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 1, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1047, metadata !DIExpression()) #18, !dbg !1076
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 0, !dbg !1082
  %34 = load i8*, i8** %33, align 8, !dbg !1082, !tbaa !1083
  %35 = icmp eq i8* %34, null, !dbg !1085
  br i1 %35, label %36, label %26, !dbg !1086, !llvm.loop !1087

36:                                               ; preds = %31, %26
  %37 = phi %struct.infomap* [ %32, %31 ], [ %28, %26 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !1047, metadata !DIExpression()) #18, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !1047, metadata !DIExpression()) #18, !dbg !1076
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 1, !dbg !1088
  %39 = load i8*, i8** %38, align 8, !dbg !1088, !tbaa !1090
  %40 = icmp eq i8* %39, null, !dbg !1091
  %41 = select i1 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %39, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %41, metadata !1046, metadata !DIExpression()) #18, !dbg !1076
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #18, !dbg !1093
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #18, !dbg !1093
  %44 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1094
  call void @llvm.dbg.value(metadata i8* %44, metadata !1054, metadata !DIExpression()) #18, !dbg !1076
  %45 = icmp eq i8* %44, null, !dbg !1095
  br i1 %45, label %53, label %46, !dbg !1097

46:                                               ; preds = %36
  %47 = tail call i32 @strncmp(i8* nonnull %44, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #21, !dbg !1098
  %48 = icmp eq i32 %47, 0, !dbg !1098
  br i1 %48, label %53, label %49, !dbg !1099

49:                                               ; preds = %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1100
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1100, !tbaa !1067
  %52 = tail call i32 @fputs_unlocked(i8* %50, %struct._IO_FILE* %51) #18, !dbg !1100
  br label %53, !dbg !1102

53:                                               ; preds = %36, %46, %49
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1103
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1103
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1104
  %57 = icmp eq i8* %41, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), !dbg !1104
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1104
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* %41, i8* %58) #18, !dbg !1104
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %24) #18, !dbg !1105
  br label %60

60:                                               ; preds = %53, %4
  tail call void @exit(i32 %0) #22, !dbg !1106
  unreachable, !dbg !1106
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !10 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !20 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !85 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1107 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1112, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8** %1, metadata !1113, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 0, metadata !1120, metadata !DIExpression()), !dbg !1128
  %3 = load i8*, i8** %1, align 8, !dbg !1129, !tbaa !1067
  tail call void @set_program_name(i8* %3) #18, !dbg !1130
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1131
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1132
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1133
  call void @llvm.dbg.value(metadata i32 2, metadata !1134, metadata !DIExpression()), !dbg !1137
  store volatile i32 2, i32* @exit_failure, align 4, !dbg !1139, !tbaa !1141
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1143
  br label %8, !dbg !1144

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 10, %2 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1120, metadata !DIExpression()), !dbg !1128
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1145
  call void @llvm.dbg.value(metadata i32 %10, metadata !1119, metadata !DIExpression()), !dbg !1128
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 48, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1144, !llvm.loop !1146

11:                                               ; preds = %8
  tail call void @usage(i32 0) #23, !dbg !1148
  unreachable, !dbg !1148

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1151, !tbaa !1067
  %14 = load i8*, i8** @Version, align 8, !dbg !1151, !tbaa !1067
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* null) #18, !dbg !1151
  tail call void @exit(i32 0) #22, !dbg !1151
  unreachable, !dbg !1151

15:                                               ; preds = %8
  tail call void @usage(i32 2) #23, !dbg !1152
  unreachable, !dbg !1152

16:                                               ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !1153, !tbaa !1141
  %18 = icmp slt i32 %17, %0, !dbg !1154
  br i1 %18, label %19, label %21, !dbg !1155

19:                                               ; preds = %16
  %20 = sext i32 %17 to i64, !dbg !1156
  br label %32, !dbg !1156

21:                                               ; preds = %16
  %22 = load i8**, i8*** @environ, align 8, !dbg !1157, !tbaa !1067
  call void @llvm.dbg.value(metadata i8** %22, metadata !1114, metadata !DIExpression()), !dbg !1128
  %23 = load i8*, i8** %22, align 8, !dbg !1160, !tbaa !1067
  %24 = icmp eq i8* %23, null, !dbg !1162
  br i1 %24, label %96, label %25, !dbg !1163

25:                                               ; preds = %21, %25
  %26 = phi i8* [ %30, %25 ], [ %23, %21 ]
  %27 = phi i8** [ %29, %25 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i8** %27, metadata !1114, metadata !DIExpression()), !dbg !1128
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %26, i32 %9) #18, !dbg !1164
  %29 = getelementptr inbounds i8*, i8** %27, i64 1, !dbg !1165
  call void @llvm.dbg.value(metadata i8** %29, metadata !1114, metadata !DIExpression()), !dbg !1128
  %30 = load i8*, i8** %29, align 8, !dbg !1160, !tbaa !1067
  %31 = icmp eq i8* %30, null, !dbg !1162
  br i1 %31, label %96, label %25, !dbg !1163, !llvm.loop !1166

32:                                               ; preds = %86, %19
  %33 = phi i64 [ %20, %19 ], [ %88, %86 ]
  %34 = phi i32 [ 0, %19 ], [ %87, %86 ]
  call void @llvm.dbg.value(metadata i32 %34, metadata !1121, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i64 %33, metadata !1117, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 0, metadata !1124, metadata !DIExpression()), !dbg !1169
  %35 = getelementptr inbounds i8*, i8** %1, i64 %33, !dbg !1170
  %36 = load i8*, i8** %35, align 8, !dbg !1170, !tbaa !1067
  %37 = tail call i8* @strchr(i8* nonnull dereferenceable(1) %36, i32 61) #21, !dbg !1172
  %38 = icmp eq i8* %37, null, !dbg !1172
  br i1 %38, label %39, label %86, !dbg !1173

39:                                               ; preds = %32
  %40 = load i8**, i8*** @environ, align 8, !dbg !1174, !tbaa !1067
  call void @llvm.dbg.value(metadata i8** %40, metadata !1114, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 0, metadata !1124, metadata !DIExpression()), !dbg !1169
  %41 = load i8*, i8** %40, align 8, !dbg !1176, !tbaa !1067
  %42 = icmp eq i8* %41, null, !dbg !1178
  br i1 %42, label %81, label %43, !dbg !1178

43:                                               ; preds = %39, %79
  %44 = phi i8* [ %80, %79 ], [ %36, %39 ], !dbg !1179
  %45 = phi i8* [ %77, %79 ], [ %41, %39 ]
  %46 = phi i8 [ %75, %79 ], [ 0, %39 ]
  %47 = phi i8** [ %76, %79 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i8 %46, metadata !1124, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i8** %47, metadata !1114, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %45, metadata !1115, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %44, metadata !1116, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %45, metadata !1115, metadata !DIExpression()), !dbg !1128
  %48 = load i8, i8* %45, align 1, !dbg !1181, !tbaa !1182
  %49 = icmp eq i8 %48, 0, !dbg !1183
  br i1 %49, label %74, label %50, !dbg !1184

50:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i8* %44, metadata !1116, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %45, metadata !1115, metadata !DIExpression()), !dbg !1128
  %51 = load i8, i8* %44, align 1, !dbg !1185, !tbaa !1182
  %52 = icmp eq i8 %51, 0, !dbg !1186
  br i1 %52, label %74, label %53, !dbg !1187

53:                                               ; preds = %50, %71
  %54 = phi i8 [ %72, %71 ], [ %51, %50 ]
  %55 = phi i8* [ %58, %71 ], [ %45, %50 ]
  %56 = phi i8* [ %59, %71 ], [ %44, %50 ]
  %57 = phi i8 [ %62, %71 ], [ %48, %50 ]
  call void @llvm.dbg.value(metadata i8* %55, metadata !1115, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %56, metadata !1116, metadata !DIExpression()), !dbg !1128
  %58 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1188
  call void @llvm.dbg.value(metadata i8* %58, metadata !1115, metadata !DIExpression()), !dbg !1128
  %59 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %59, metadata !1116, metadata !DIExpression()), !dbg !1128
  %60 = icmp eq i8 %57, %54, !dbg !1190
  br i1 %60, label %61, label %74, !dbg !1191

61:                                               ; preds = %53
  %62 = load i8, i8* %58, align 1, !dbg !1192, !tbaa !1182
  switch i8 %62, label %71 [
    i8 61, label %63
    i8 0, label %74
  ], !dbg !1195

63:                                               ; preds = %61
  %64 = load i8, i8* %59, align 1, !dbg !1196, !tbaa !1182
  %65 = icmp eq i8 %64, 0, !dbg !1197
  br i1 %65, label %66, label %69, !dbg !1198

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i8* %55, metadata !1115, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %55, metadata !1115, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %55, metadata !1115, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %55, metadata !1115, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %55, metadata !1115, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %55, metadata !1115, metadata !DIExpression()), !dbg !1128
  %67 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !1199
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %67, i32 %9) #18, !dbg !1199
  call void @llvm.dbg.value(metadata i8 1, metadata !1124, metadata !DIExpression()), !dbg !1169
  br label %74, !dbg !1201

69:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i8* %59, metadata !1116, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %58, metadata !1115, metadata !DIExpression()), !dbg !1128
  %70 = icmp eq i8 %62, 0, !dbg !1183
  br i1 %70, label %74, label %71, !dbg !1184

71:                                               ; preds = %69, %61
  call void @llvm.dbg.value(metadata i8* %59, metadata !1116, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %58, metadata !1115, metadata !DIExpression()), !dbg !1128
  %72 = load i8, i8* %59, align 1, !dbg !1185, !tbaa !1182
  %73 = icmp eq i8 %72, 0, !dbg !1186
  br i1 %73, label %74, label %53, !dbg !1187, !llvm.loop !1202

74:                                               ; preds = %61, %71, %69, %53, %50, %43, %66
  %75 = phi i8 [ 1, %66 ], [ %46, %43 ], [ %46, %50 ], [ %46, %53 ], [ %46, %69 ], [ %46, %71 ], [ %46, %61 ], !dbg !1169
  call void @llvm.dbg.value(metadata i8 %75, metadata !1124, metadata !DIExpression()), !dbg !1169
  %76 = getelementptr inbounds i8*, i8** %47, i64 1, !dbg !1204
  call void @llvm.dbg.value(metadata i8** %76, metadata !1114, metadata !DIExpression()), !dbg !1128
  %77 = load i8*, i8** %76, align 8, !dbg !1176, !tbaa !1067
  %78 = icmp eq i8* %77, null, !dbg !1178
  br i1 %78, label %81, label %79, !dbg !1178, !llvm.loop !1205

79:                                               ; preds = %74
  %80 = load i8*, i8** %35, align 8, !dbg !1179, !tbaa !1067
  br label %43, !dbg !1178

81:                                               ; preds = %74, %39
  %82 = phi i8 [ 0, %39 ], [ %75, %74 ], !dbg !1169
  call void @llvm.dbg.value(metadata i8 %82, metadata !1124, metadata !DIExpression()), !dbg !1169
  %83 = and i8 %82, 1, !dbg !1207
  %84 = zext i8 %83 to i32, !dbg !1207
  %85 = add nsw i32 %34, %84, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %85, metadata !1121, metadata !DIExpression()), !dbg !1168
  br label %86, !dbg !1209

86:                                               ; preds = %32, %81
  %87 = phi i32 [ %85, %81 ], [ %34, %32 ], !dbg !1168
  call void @llvm.dbg.value(metadata i32 %87, metadata !1121, metadata !DIExpression()), !dbg !1168
  %88 = add nsw i64 %33, 1, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %88, metadata !1117, metadata !DIExpression()), !dbg !1128
  %89 = trunc i64 %88 to i32, !dbg !1211
  %90 = icmp eq i32 %89, %0, !dbg !1211
  br i1 %90, label %91, label %32, !dbg !1156, !llvm.loop !1212

91:                                               ; preds = %86
  call void @llvm.dbg.value(metadata i32 %87, metadata !1121, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %87, metadata !1121, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %87, metadata !1121, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %87, metadata !1121, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %87, metadata !1121, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %87, metadata !1121, metadata !DIExpression()), !dbg !1168
  %92 = load i32, i32* @optind, align 4, !dbg !1214, !tbaa !1141
  %93 = sub nsw i32 %0, %92, !dbg !1215
  %94 = icmp ne i32 %87, %93, !dbg !1216
  call void @llvm.dbg.value(metadata i1 %94, metadata !1118, metadata !DIExpression()), !dbg !1128
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %25, %21, %91
  %97 = phi i32 [ %95, %91 ], [ 0, %21 ], [ 0, %25 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1118, metadata !DIExpression()), !dbg !1128
  ret i32 %97, !dbg !1217
}

; Function Attrs: nounwind
declare !dbg !89 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !92 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !95 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !102 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !1218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1220, metadata !DIExpression()), !dbg !1221
  store i8* %0, i8** @file_name, align 8, !dbg !1222, !tbaa !1067
  ret void, !dbg !1223
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !1224 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1228, metadata !DIExpression()), !dbg !1229
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1230, !tbaa !1231
  ret void, !dbg !1233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1234 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1239, !tbaa !1067
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1240
  %3 = icmp eq i32 %2, 0, !dbg !1241
  br i1 %3, label %22, label %4, !dbg !1242

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1243, !tbaa !1231, !range !1244
  %6 = icmp eq i8 %5, 0, !dbg !1243
  br i1 %6, label %11, label %7, !dbg !1245

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1246
  %9 = load i32, i32* %8, align 4, !dbg !1246, !tbaa !1141
  %10 = icmp eq i32 %9, 32, !dbg !1247
  br i1 %10, label %22, label %11, !dbg !1248

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 5) #18, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %12, metadata !1236, metadata !DIExpression()), !dbg !1250
  %13 = load i8*, i8** @file_name, align 8, !dbg !1251, !tbaa !1067
  %14 = icmp eq i8* %13, null, !dbg !1251
  %15 = tail call i32* @__errno_location() #24, !dbg !1253
  %16 = load i32, i32* %15, align 4, !dbg !1253, !tbaa !1141
  br i1 %14, label %19, label %17, !dbg !1254

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1255
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1256
  br label %20, !dbg !1256

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %12) #18, !dbg !1257
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1258, !tbaa !1141
  tail call void @_exit(i32 %21) #22, !dbg !1259
  unreachable, !dbg !1259

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1260, !tbaa !1067
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1262
  %25 = icmp eq i32 %24, 0, !dbg !1263
  br i1 %25, label %28, label %26, !dbg !1264

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1265, !tbaa !1141
  tail call void @_exit(i32 %27) #22, !dbg !1266
  unreachable, !dbg !1266

28:                                               ; preds = %22
  ret void, !dbg !1267
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

declare !dbg !173 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1270, metadata !DIExpression()), !dbg !1273
  %2 = icmp eq i8* %0, null, !dbg !1274
  br i1 %2, label %3, label %6, !dbg !1276

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1277, !tbaa !1067
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1279
  tail call void @abort() #22, !dbg !1280
  unreachable, !dbg !1280

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1281
  call void @llvm.dbg.value(metadata i8* %7, metadata !1271, metadata !DIExpression()), !dbg !1273
  %8 = icmp eq i8* %7, null, !dbg !1282
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1283
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1283
  call void @llvm.dbg.value(metadata i8* %10, metadata !1272, metadata !DIExpression()), !dbg !1273
  %11 = ptrtoint i8* %10 to i64, !dbg !1284
  %12 = ptrtoint i8* %0 to i64, !dbg !1284
  %13 = sub i64 %11, %12, !dbg !1284
  %14 = icmp sgt i64 %13, 6, !dbg !1286
  br i1 %14, label %15, label %24, !dbg !1287

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1288
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #21, !dbg !1289
  %18 = icmp eq i32 %17, 0, !dbg !1290
  br i1 %18, label %19, label %24, !dbg !1291

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1270, metadata !DIExpression()), !dbg !1273
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #21, !dbg !1292
  %21 = icmp eq i32 %20, 0, !dbg !1295
  br i1 %21, label %22, label %24, !dbg !1296

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %23, metadata !1270, metadata !DIExpression()), !dbg !1273
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1299, !tbaa !1067
  br label %24, !dbg !1300

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1270, metadata !DIExpression()), !dbg !1273
  store i8* %25, i8** @program_name, align 8, !dbg !1301, !tbaa !1067
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1302, !tbaa !1067
  ret void, !dbg !1303
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1304 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1309, metadata !DIExpression()), !dbg !1312
  %2 = tail call i32* @__errno_location() #24, !dbg !1313
  %3 = load i32, i32* %2, align 4, !dbg !1313, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %3, metadata !1310, metadata !DIExpression()), !dbg !1312
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1314
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1314
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1314
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1315
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1311, metadata !DIExpression()), !dbg !1312
  store i32 %3, i32* %2, align 4, !dbg !1316, !tbaa !1141
  ret %struct.quoting_options* %8, !dbg !1317
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1318 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1322, metadata !DIExpression()), !dbg !1323
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1324
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1324
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1325
  %5 = load i32, i32* %4, align 8, !dbg !1325, !tbaa !1326
  ret i32 %5, !dbg !1328
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !1329 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1333, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i32 %1, metadata !1334, metadata !DIExpression()), !dbg !1335
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1336
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1336
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1337
  store i32 %1, i32* %5, align 8, !dbg !1338, !tbaa !1326
  ret void, !dbg !1339
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1340 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1344, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i8 %1, metadata !1345, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32 %2, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i8 %1, metadata !1347, metadata !DIExpression()), !dbg !1353
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1354
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1354
  %6 = lshr i8 %1, 5, !dbg !1355
  %7 = zext i8 %6 to i64, !dbg !1355
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1356
  call void @llvm.dbg.value(metadata i32* %8, metadata !1349, metadata !DIExpression()), !dbg !1353
  %9 = and i8 %1, 31, !dbg !1357
  %10 = zext i8 %9 to i32, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %10, metadata !1351, metadata !DIExpression()), !dbg !1353
  %11 = load i32, i32* %8, align 4, !dbg !1358, !tbaa !1141
  %12 = lshr i32 %11, %10, !dbg !1359
  %13 = and i32 %12, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %13, metadata !1352, metadata !DIExpression()), !dbg !1353
  %14 = and i32 %2, 1, !dbg !1361
  %15 = xor i32 %13, %14, !dbg !1362
  %16 = shl i32 %15, %10, !dbg !1363
  %17 = xor i32 %16, %11, !dbg !1364
  store i32 %17, i32* %8, align 4, !dbg !1364, !tbaa !1141
  ret i32 %13, !dbg !1365
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1366 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1370, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %1, metadata !1371, metadata !DIExpression()), !dbg !1373
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1374
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1376
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1370, metadata !DIExpression()), !dbg !1373
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1377
  %6 = load i32, i32* %5, align 4, !dbg !1377, !tbaa !1378
  call void @llvm.dbg.value(metadata i32 %6, metadata !1372, metadata !DIExpression()), !dbg !1373
  store i32 %1, i32* %5, align 4, !dbg !1379, !tbaa !1378
  ret i32 %6, !dbg !1380
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1381 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1385, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i8* %1, metadata !1386, metadata !DIExpression()), !dbg !1388
  call void @llvm.dbg.value(metadata i8* %2, metadata !1387, metadata !DIExpression()), !dbg !1388
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1389
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1391
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1385, metadata !DIExpression()), !dbg !1388
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1392
  store i32 10, i32* %6, align 8, !dbg !1393, !tbaa !1326
  %7 = icmp ne i8* %1, null, !dbg !1394
  %8 = icmp ne i8* %2, null, !dbg !1396
  %9 = and i1 %7, %8, !dbg !1397
  br i1 %9, label %11, label %10, !dbg !1397

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1398
  unreachable, !dbg !1398

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1399
  store i8* %1, i8** %12, align 8, !dbg !1400, !tbaa !1401
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1402
  store i8* %2, i8** %13, align 8, !dbg !1403, !tbaa !1404
  ret void, !dbg !1405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1406 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1410, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %1, metadata !1411, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8* %2, metadata !1412, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64 %3, metadata !1413, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1414, metadata !DIExpression()), !dbg !1418
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1419
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1419
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1415, metadata !DIExpression()), !dbg !1418
  %8 = tail call i32* @__errno_location() #24, !dbg !1420
  %9 = load i32, i32* %8, align 4, !dbg !1420, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %9, metadata !1416, metadata !DIExpression()), !dbg !1418
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1421
  %11 = load i32, i32* %10, align 8, !dbg !1421, !tbaa !1326
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1422
  %13 = load i32, i32* %12, align 4, !dbg !1422, !tbaa !1378
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1423
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1424
  %16 = load i8*, i8** %15, align 8, !dbg !1424, !tbaa !1401
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1425
  %18 = load i8*, i8** %17, align 8, !dbg !1425, !tbaa !1404
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1426
  call void @llvm.dbg.value(metadata i64 %19, metadata !1417, metadata !DIExpression()), !dbg !1418
  store i32 %9, i32* %8, align 4, !dbg !1427, !tbaa !1141
  ret i64 %19, !dbg !1428
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1429 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1435, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %1, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %2, metadata !1437, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %3, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %4, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %5, metadata !1440, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32* %6, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %7, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %8, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* null, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1448, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1449, metadata !DIExpression()), !dbg !1493
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1494
  %14 = icmp eq i64 %13, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i1 %14, metadata !1450, metadata !DIExpression()), !dbg !1493
  %15 = lshr i32 %5, 1, !dbg !1496
  %16 = trunc i32 %15 to i8, !dbg !1496
  %17 = and i8 %16, 1, !dbg !1496
  call void @llvm.dbg.value(metadata i8 %17, metadata !1451, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1454, metadata !DIExpression()), !dbg !1493
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1497
  %19 = and i32 %5, 4, !dbg !1499
  %20 = icmp eq i32 %19, 0, !dbg !1499
  %21 = and i32 %5, 1, !dbg !1502
  %22 = icmp eq i32 %21, 0, !dbg !1502
  %23 = bitcast i64* %10 to i8*, !dbg !1505
  %24 = bitcast i32* %12 to i8*, !dbg !1506
  %25 = icmp eq i32* %6, null, !dbg !1507
  br label %26, !dbg !1509

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1510
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1511
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1512
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1513
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1493
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1514
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1515
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1516
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %38, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %37, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %36, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %35, metadata !1451, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %34, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %33, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %32, metadata !1448, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %31, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %30, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %29, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %28, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %27, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1487), !dbg !1517
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
  ], !dbg !1518

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1451, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %35, metadata !1451, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 5, metadata !1439, metadata !DIExpression()), !dbg !1493
  br label %92, !dbg !1519

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1451, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 5, metadata !1439, metadata !DIExpression()), !dbg !1493
  %42 = and i8 %35, 1, !dbg !1521
  %43 = icmp eq i8 %42, 0, !dbg !1521
  br i1 %43, label %44, label %92, !dbg !1519

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1523
  br i1 %45, label %92, label %46, !dbg !1526

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1523, !tbaa !1182
  br label %92, !dbg !1523

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %27), !dbg !1527
  call void @llvm.dbg.value(metadata i8* %48, metadata !1442, metadata !DIExpression()), !dbg !1493
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %27), !dbg !1531
  call void @llvm.dbg.value(metadata i8* %49, metadata !1443, metadata !DIExpression()), !dbg !1493
  br label %50, !dbg !1532

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %51, metadata !1442, metadata !DIExpression()), !dbg !1493
  %53 = and i8 %35, 1, !dbg !1533
  %54 = icmp eq i8 %53, 0, !dbg !1533
  br i1 %54, label %55, label %70, !dbg !1535

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1445, metadata !DIExpression()), !dbg !1493
  %56 = load i8, i8* %51, align 1, !dbg !1536, !tbaa !1182
  %57 = icmp eq i8 %56, 0, !dbg !1539
  br i1 %57, label %70, label %58, !dbg !1539

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %61, metadata !1445, metadata !DIExpression()), !dbg !1493
  %62 = icmp ult i64 %61, %39, !dbg !1540
  br i1 %62, label %63, label %65, !dbg !1543

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1540
  store i8 %59, i8* %64, align 1, !dbg !1540, !tbaa !1182
  br label %65, !dbg !1540

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %66, metadata !1445, metadata !DIExpression()), !dbg !1493
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %67, metadata !1447, metadata !DIExpression()), !dbg !1493
  %68 = load i8, i8* %67, align 1, !dbg !1536, !tbaa !1182
  %69 = icmp eq i8 %68, 0, !dbg !1539
  br i1 %69, label %70, label %58, !dbg !1539, !llvm.loop !1545

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1547
  call void @llvm.dbg.value(metadata i64 %71, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %52, metadata !1447, metadata !DIExpression()), !dbg !1493
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %72, metadata !1448, metadata !DIExpression()), !dbg !1493
  br label %92, !dbg !1549

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1449, metadata !DIExpression()), !dbg !1493
  br label %74, !dbg !1550

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %75, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1451, metadata !DIExpression()), !dbg !1493
  br label %76, !dbg !1551

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1513
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %78, metadata !1451, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %77, metadata !1449, metadata !DIExpression()), !dbg !1493
  %79 = and i8 %78, 1, !dbg !1552
  %80 = icmp eq i8 %79, 0, !dbg !1552
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1554
  br label %82, !dbg !1554

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1493
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1496
  call void @llvm.dbg.value(metadata i8 %84, metadata !1451, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %83, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  %85 = and i8 %84, 1, !dbg !1555
  %86 = icmp eq i8 %85, 0, !dbg !1555
  br i1 %86, label %87, label %92, !dbg !1557

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1558
  br i1 %88, label %92, label %89, !dbg !1561

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1558, !tbaa !1182
  br label %92, !dbg !1558

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1451, metadata !DIExpression()), !dbg !1493
  br label %92, !dbg !1562

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1563
  unreachable, !dbg !1563

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1547
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %40 ], !dbg !1493
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1493
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1493
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %100, metadata !1451, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %98, metadata !1448, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %96, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %93, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1444, metadata !DIExpression()), !dbg !1493
  %101 = and i8 %99, 1, !dbg !1564
  %102 = icmp ne i8 %101, 0, !dbg !1564
  %103 = icmp ne i32 %93, 2, !dbg !1564
  %104 = and i1 %103, %102, !dbg !1564
  %105 = icmp ne i64 %98, 0, !dbg !1564
  %106 = and i1 %105, %104, !dbg !1564
  %107 = icmp ugt i64 %98, 1, !dbg !1564
  %108 = and i8 %100, 1, !dbg !1566
  %109 = icmp eq i8 %108, 0, !dbg !1566
  %110 = icmp eq i32 %93, 2, !dbg !1569
  %111 = or i1 %103, %109, !dbg !1571
  %112 = icmp ne i8 %108, 0, !dbg !1573
  %113 = and i1 %110, %112, !dbg !1573
  %114 = xor i1 %102, true, !dbg !1574
  %115 = xor i1 %104, true, !dbg !1507
  %116 = and i1 %109, %115, !dbg !1507
  %117 = or i1 %25, %116, !dbg !1507
  %118 = and i8 %99, %100, !dbg !1575
  %119 = and i8 %118, 1, !dbg !1575
  %120 = icmp ne i8 %119, 0, !dbg !1575
  %121 = and i1 %120, %105, !dbg !1575
  br label %122, !dbg !1577

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1578
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1547
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1510
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1514
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1515
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1516
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %126, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %123, metadata !1444, metadata !DIExpression()), !dbg !1493
  %131 = icmp eq i64 %126, -1, !dbg !1579
  br i1 %131, label %132, label %136, !dbg !1580

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1581
  %134 = load i8, i8* %133, align 1, !dbg !1581, !tbaa !1182
  %135 = icmp eq i8 %134, 0, !dbg !1582
  br i1 %135, label %581, label %138, !dbg !1583

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1584
  br i1 %137, label %581, label %138, !dbg !1583

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1460, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 0, metadata !1461, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 0, metadata !1462, metadata !DIExpression()), !dbg !1585
  br i1 %106, label %139, label %154, !dbg !1586

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1587
  %141 = and i1 %107, %131, !dbg !1588
  br i1 %141, label %142, label %144, !dbg !1588

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %143, metadata !1438, metadata !DIExpression()), !dbg !1493
  br label %144, !dbg !1590

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1438, metadata !DIExpression()), !dbg !1493
  %146 = icmp ugt i64 %140, %145, !dbg !1591
  br i1 %146, label %154, label %147, !dbg !1592

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1593
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1594
  %150 = icmp ne i32 %149, 0, !dbg !1595
  %151 = or i1 %150, %109, !dbg !1596
  %152 = xor i1 %150, true, !dbg !1596
  %153 = zext i1 %152 to i8, !dbg !1596
  br i1 %151, label %154, label %639, !dbg !1596

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1585
  call void @llvm.dbg.value(metadata i8 %156, metadata !1460, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %155, metadata !1438, metadata !DIExpression()), !dbg !1493
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1597
  %158 = load i8, i8* %157, align 1, !dbg !1597, !tbaa !1182
  call void @llvm.dbg.value(metadata i8 %158, metadata !1455, metadata !DIExpression()), !dbg !1585
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
  ], !dbg !1598

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1599

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1600

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1585
  %162 = and i8 %127, 1, !dbg !1603
  %163 = icmp eq i8 %162, 0, !dbg !1603
  %164 = and i1 %110, %163, !dbg !1603
  br i1 %164, label %165, label %181, !dbg !1603

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1605
  br i1 %166, label %167, label %169, !dbg !1609

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1605
  store i8 39, i8* %168, align 1, !dbg !1605, !tbaa !1182
  br label %169, !dbg !1605

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %170, metadata !1445, metadata !DIExpression()), !dbg !1493
  %171 = icmp ult i64 %170, %130, !dbg !1610
  br i1 %171, label %172, label %174, !dbg !1613

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1610
  store i8 36, i8* %173, align 1, !dbg !1610, !tbaa !1182
  br label %174, !dbg !1610

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %175, metadata !1445, metadata !DIExpression()), !dbg !1493
  %176 = icmp ult i64 %175, %130, !dbg !1614
  br i1 %176, label %177, label %179, !dbg !1617

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1614
  store i8 39, i8* %178, align 1, !dbg !1614, !tbaa !1182
  br label %179, !dbg !1614

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %180, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1452, metadata !DIExpression()), !dbg !1493
  br label %181, !dbg !1618

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1493
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %183, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %182, metadata !1445, metadata !DIExpression()), !dbg !1493
  %184 = icmp ult i64 %182, %130, !dbg !1619
  br i1 %184, label %185, label %187, !dbg !1622

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1619
  store i8 92, i8* %186, align 1, !dbg !1619, !tbaa !1182
  br label %187, !dbg !1619

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %188, metadata !1445, metadata !DIExpression()), !dbg !1493
  br i1 %103, label %189, label %463, !dbg !1623

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1625
  %191 = icmp ult i64 %190, %155, !dbg !1626
  br i1 %191, label %192, label %463, !dbg !1627

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1628
  %194 = load i8, i8* %193, align 1, !dbg !1628, !tbaa !1182
  %195 = add i8 %194, -48, !dbg !1629
  %196 = icmp ult i8 %195, 10, !dbg !1629
  br i1 %196, label %197, label %463, !dbg !1629

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1630
  br i1 %198, label %199, label %201, !dbg !1634

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1630
  store i8 48, i8* %200, align 1, !dbg !1630, !tbaa !1182
  br label %201, !dbg !1630

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %202, metadata !1445, metadata !DIExpression()), !dbg !1493
  %203 = icmp ult i64 %202, %130, !dbg !1635
  br i1 %203, label %204, label %206, !dbg !1638

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1635
  store i8 48, i8* %205, align 1, !dbg !1635, !tbaa !1182
  br label %206, !dbg !1635

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %207, metadata !1445, metadata !DIExpression()), !dbg !1493
  br label %463, !dbg !1639

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1640

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1641

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1642

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1643

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1644
  %214 = icmp ult i64 %213, %155, !dbg !1645
  br i1 %214, label %215, label %463, !dbg !1646

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1647
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1648
  %218 = load i8, i8* %217, align 1, !dbg !1648, !tbaa !1182
  %219 = icmp eq i8 %218, 63, !dbg !1649
  br i1 %219, label %220, label %463, !dbg !1650

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1651
  %222 = load i8, i8* %221, align 1, !dbg !1651, !tbaa !1182
  %223 = sext i8 %222 to i32, !dbg !1651
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
  ], !dbg !1652

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1653

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1455, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i64 %213, metadata !1444, metadata !DIExpression()), !dbg !1493
  %226 = icmp ult i64 %124, %130, !dbg !1655
  br i1 %226, label %227, label %229, !dbg !1658

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1655
  store i8 63, i8* %228, align 1, !dbg !1655, !tbaa !1182
  br label %229, !dbg !1655

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1658
  call void @llvm.dbg.value(metadata i64 %230, metadata !1445, metadata !DIExpression()), !dbg !1493
  %231 = icmp ult i64 %230, %130, !dbg !1659
  br i1 %231, label %232, label %234, !dbg !1662

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1659
  store i8 34, i8* %233, align 1, !dbg !1659, !tbaa !1182
  br label %234, !dbg !1659

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %235, metadata !1445, metadata !DIExpression()), !dbg !1493
  %236 = icmp ult i64 %235, %130, !dbg !1663
  br i1 %236, label %237, label %239, !dbg !1666

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1663
  store i8 34, i8* %238, align 1, !dbg !1663, !tbaa !1182
  br label %239, !dbg !1663

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %240, metadata !1445, metadata !DIExpression()), !dbg !1493
  %241 = icmp ult i64 %240, %130, !dbg !1667
  br i1 %241, label %242, label %244, !dbg !1670

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1667
  store i8 63, i8* %243, align 1, !dbg !1667, !tbaa !1182
  br label %244, !dbg !1667

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %245, metadata !1445, metadata !DIExpression()), !dbg !1493
  br label %463, !dbg !1671

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1459, metadata !DIExpression()), !dbg !1585
  br label %256, !dbg !1672

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1459, metadata !DIExpression()), !dbg !1585
  br label %256, !dbg !1673

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1459, metadata !DIExpression()), !dbg !1585
  br label %254, !dbg !1674

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1459, metadata !DIExpression()), !dbg !1585
  br label %254, !dbg !1675

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1459, metadata !DIExpression()), !dbg !1585
  br label %256, !dbg !1676

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1459, metadata !DIExpression()), !dbg !1585
  br i1 %110, label %252, label %253, !dbg !1677

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1678

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1681

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1682
  call void @llvm.dbg.value(metadata i8 %255, metadata !1459, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.label(metadata !1488), !dbg !1683
  br i1 %111, label %256, label %625, !dbg !1684

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1682
  call void @llvm.dbg.value(metadata i8 %257, metadata !1459, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.label(metadata !1489), !dbg !1686
  br i1 %102, label %488, label %463, !dbg !1687

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1688

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1689, !tbaa !1182
  %261 = icmp eq i8 %260, 0, !dbg !1690
  br i1 %261, label %262, label %463, !dbg !1691

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1692
  br i1 %263, label %264, label %463, !dbg !1694

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1462, metadata !DIExpression()), !dbg !1585
  br label %265, !dbg !1695

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1585
  call void @llvm.dbg.value(metadata i8 %266, metadata !1462, metadata !DIExpression()), !dbg !1585
  br i1 %111, label %463, label %625, !dbg !1696

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1462, metadata !DIExpression()), !dbg !1585
  br i1 %110, label %268, label %463, !dbg !1697

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1698

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1700
  %271 = icmp ne i64 %125, 0, !dbg !1702
  %272 = or i1 %271, %270, !dbg !1703
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1703
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %274, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %273, metadata !1446, metadata !DIExpression()), !dbg !1493
  %275 = icmp ult i64 %124, %274, !dbg !1704
  br i1 %275, label %276, label %278, !dbg !1707

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1704
  store i8 39, i8* %277, align 1, !dbg !1704, !tbaa !1182
  br label %278, !dbg !1704

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %279, metadata !1445, metadata !DIExpression()), !dbg !1493
  %280 = icmp ult i64 %279, %274, !dbg !1708
  br i1 %280, label %281, label %283, !dbg !1711

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1708
  store i8 92, i8* %282, align 1, !dbg !1708, !tbaa !1182
  br label %283, !dbg !1708

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %284, metadata !1445, metadata !DIExpression()), !dbg !1493
  %285 = icmp ult i64 %284, %274, !dbg !1712
  br i1 %285, label %286, label %288, !dbg !1715

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1712
  store i8 39, i8* %287, align 1, !dbg !1712, !tbaa !1182
  br label %288, !dbg !1712

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %289, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1452, metadata !DIExpression()), !dbg !1493
  br label %463, !dbg !1716

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1717

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1463, metadata !DIExpression()), !dbg !1718
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1719
  %293 = load i16*, i16** %292, align 8, !dbg !1719, !tbaa !1067
  %294 = zext i8 %158 to i64, !dbg !1719
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1719
  %296 = load i16, i16* %295, align 2, !dbg !1719, !tbaa !1721
  %297 = lshr i16 %296, 14, !dbg !1723
  %298 = trunc i16 %297 to i8, !dbg !1723
  %299 = and i8 %298, 1, !dbg !1723
  call void @llvm.dbg.value(metadata i8 %299, metadata !1466, metadata !DIExpression()), !dbg !1718
  br label %355, !dbg !1724

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1725
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1467, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8* %23, metadata !1727, metadata !DIExpression()) #18, !dbg !1735
  call void @llvm.dbg.value(metadata i32 0, metadata !1733, metadata !DIExpression()) #18, !dbg !1735
  call void @llvm.dbg.value(metadata i64 8, metadata !1734, metadata !DIExpression()) #18, !dbg !1735
  store i64 0, i64* %10, align 8, !dbg !1737
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8 1, metadata !1466, metadata !DIExpression()), !dbg !1718
  %301 = icmp eq i64 %155, -1, !dbg !1738
  br i1 %301, label %302, label %304, !dbg !1740

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %303, metadata !1438, metadata !DIExpression()), !dbg !1493
  br label %304, !dbg !1742

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1585
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  br label %306, !dbg !1743

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1744
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1745
  call void @llvm.dbg.value(metadata i8 %308, metadata !1466, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1746
  %309 = add i64 %307, %123, !dbg !1747
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1748
  %311 = sub i64 %305, %309, !dbg !1749
  call void @llvm.dbg.value(metadata i32* %12, metadata !1473, metadata !DIExpression(DW_OP_deref)), !dbg !1506
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %312, metadata !1476, metadata !DIExpression()), !dbg !1506
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1751

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  %314 = icmp ugt i64 %305, %309, !dbg !1752
  br i1 %314, label %315, label %340, !dbg !1754

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1755
  br label %317, !dbg !1755

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1463, metadata !DIExpression()), !dbg !1718
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1756
  %321 = load i8, i8* %320, align 1, !dbg !1756, !tbaa !1182
  %322 = icmp eq i8 %321, 0, !dbg !1754
  br i1 %322, label %340, label %323, !dbg !1755

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %324, metadata !1463, metadata !DIExpression()), !dbg !1718
  %325 = add i64 %324, %123, !dbg !1758
  %326 = icmp ult i64 %325, %305, !dbg !1752
  br i1 %326, label %317, label %340, !dbg !1754, !llvm.loop !1759

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1760
  %329 = and i1 %113, %328, !dbg !1763
  call void @llvm.dbg.value(metadata i64 1, metadata !1477, metadata !DIExpression()), !dbg !1764
  br i1 %329, label %330, label %343, !dbg !1763

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1477, metadata !DIExpression()), !dbg !1764
  %332 = add i64 %331, %309, !dbg !1765
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1766
  %334 = load i8, i8* %333, align 1, !dbg !1766, !tbaa !1182
  %335 = sext i8 %334 to i32, !dbg !1766
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1767

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %337, metadata !1477, metadata !DIExpression()), !dbg !1764
  %338 = icmp eq i64 %337, %312, !dbg !1760
  br i1 %338, label %343, label %330, !dbg !1769, !llvm.loop !1770

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %308, metadata !1466, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %307, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %308, metadata !1466, metadata !DIExpression()), !dbg !1718
  br label %340, !dbg !1772

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1772
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1773, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %344, metadata !1473, metadata !DIExpression()), !dbg !1506
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !1775
  %346 = icmp eq i32 %345, 0, !dbg !1775
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1776
  call void @llvm.dbg.value(metadata i8 %347, metadata !1466, metadata !DIExpression()), !dbg !1718
  %348 = add i64 %312, %307, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %348, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %347, metadata !1466, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %348, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1772
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1778
  %350 = icmp eq i32 %349, 0, !dbg !1779
  br i1 %350, label %306, label %351, !dbg !1780, !llvm.loop !1781

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1783
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %99, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %305, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1772
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1783
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1585
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1784
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1784
  call void @llvm.dbg.value(metadata i8 %358, metadata !1466, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %357, metadata !1463, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %356, metadata !1438, metadata !DIExpression()), !dbg !1493
  %359 = and i8 %358, 1, !dbg !1785
  %360 = icmp ne i8 %359, 0, !dbg !1785
  call void @llvm.dbg.value(metadata i8 %359, metadata !1462, metadata !DIExpression()), !dbg !1585
  %361 = icmp ult i64 %357, 2, !dbg !1786
  %362 = or i1 %360, %114, !dbg !1787
  %363 = and i1 %361, %362, !dbg !1788
  br i1 %363, label %463, label %364, !dbg !1788

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %365, metadata !1484, metadata !DIExpression()), !dbg !1790
  br label %366, !dbg !1791

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1578
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1493
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1514
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1585
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1585
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1792
  call void @llvm.dbg.value(metadata i8 %372, metadata !1461, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %371, metadata !1460, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %370, metadata !1455, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %369, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %368, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %367, metadata !1444, metadata !DIExpression()), !dbg !1493
  br i1 %362, label %419, label %373, !dbg !1793

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1798

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1585
  %375 = and i8 %369, 1, !dbg !1801
  %376 = icmp eq i8 %375, 0, !dbg !1801
  %377 = and i1 %110, %376, !dbg !1801
  br i1 %377, label %378, label %394, !dbg !1801

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1803
  br i1 %379, label %380, label %382, !dbg !1807

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1803
  store i8 39, i8* %381, align 1, !dbg !1803, !tbaa !1182
  br label %382, !dbg !1803

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %383, metadata !1445, metadata !DIExpression()), !dbg !1493
  %384 = icmp ult i64 %383, %130, !dbg !1808
  br i1 %384, label %385, label %387, !dbg !1811

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1808
  store i8 36, i8* %386, align 1, !dbg !1808, !tbaa !1182
  br label %387, !dbg !1808

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %388, metadata !1445, metadata !DIExpression()), !dbg !1493
  %389 = icmp ult i64 %388, %130, !dbg !1812
  br i1 %389, label %390, label %392, !dbg !1815

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1812
  store i8 39, i8* %391, align 1, !dbg !1812, !tbaa !1182
  br label %392, !dbg !1812

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %393, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1452, metadata !DIExpression()), !dbg !1493
  br label %394, !dbg !1816

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1493
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %396, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %395, metadata !1445, metadata !DIExpression()), !dbg !1493
  %397 = icmp ult i64 %395, %130, !dbg !1817
  br i1 %397, label %398, label %400, !dbg !1820

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1817
  store i8 92, i8* %399, align 1, !dbg !1817, !tbaa !1182
  br label %400, !dbg !1817

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %401, metadata !1445, metadata !DIExpression()), !dbg !1493
  %402 = icmp ult i64 %401, %130, !dbg !1821
  br i1 %402, label %403, label %407, !dbg !1824

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1821
  %405 = or i8 %404, 48, !dbg !1821
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1821
  store i8 %405, i8* %406, align 1, !dbg !1821, !tbaa !1182
  br label %407, !dbg !1821

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %408, metadata !1445, metadata !DIExpression()), !dbg !1493
  %409 = icmp ult i64 %408, %130, !dbg !1825
  br i1 %409, label %410, label %415, !dbg !1828

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1825
  %412 = and i8 %411, 7, !dbg !1825
  %413 = or i8 %412, 48, !dbg !1825
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1825
  store i8 %413, i8* %414, align 1, !dbg !1825, !tbaa !1182
  br label %415, !dbg !1825

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %416, metadata !1445, metadata !DIExpression()), !dbg !1493
  %417 = and i8 %370, 7, !dbg !1829
  %418 = or i8 %417, 48, !dbg !1830
  call void @llvm.dbg.value(metadata i8 %418, metadata !1455, metadata !DIExpression()), !dbg !1585
  br label %428, !dbg !1831

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1832
  %421 = icmp eq i8 %420, 0, !dbg !1832
  br i1 %421, label %428, label %422, !dbg !1834

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1835
  br i1 %423, label %424, label %426, !dbg !1839

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1835
  store i8 92, i8* %425, align 1, !dbg !1835, !tbaa !1182
  br label %426, !dbg !1835

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %427, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1460, metadata !DIExpression()), !dbg !1585
  br label %428, !dbg !1840

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1493
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1514
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1585
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1585
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1585
  call void @llvm.dbg.value(metadata i8 %433, metadata !1461, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %432, metadata !1460, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %431, metadata !1455, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %430, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %429, metadata !1445, metadata !DIExpression()), !dbg !1493
  %434 = add i64 %367, 1, !dbg !1841
  %435 = icmp ugt i64 %365, %434, !dbg !1843
  br i1 %435, label %436, label %526, !dbg !1844

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1845
  %438 = icmp ne i8 %437, 0, !dbg !1845
  %439 = and i8 %433, 1, !dbg !1845
  %440 = icmp eq i8 %439, 0, !dbg !1845
  %441 = and i1 %438, %440, !dbg !1845
  br i1 %441, label %442, label %453, !dbg !1845

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1848
  br i1 %443, label %444, label %446, !dbg !1852

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1848
  store i8 39, i8* %445, align 1, !dbg !1848, !tbaa !1182
  br label %446, !dbg !1848

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %447, metadata !1445, metadata !DIExpression()), !dbg !1493
  %448 = icmp ult i64 %447, %130, !dbg !1853
  br i1 %448, label %449, label %451, !dbg !1856

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1853
  store i8 39, i8* %450, align 1, !dbg !1853, !tbaa !1182
  br label %451, !dbg !1853

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %452, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1452, metadata !DIExpression()), !dbg !1493
  br label %453, !dbg !1857

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1858
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %455, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %454, metadata !1445, metadata !DIExpression()), !dbg !1493
  %456 = icmp ult i64 %454, %130, !dbg !1859
  br i1 %456, label %457, label %459, !dbg !1862

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1859
  store i8 %431, i8* %458, align 1, !dbg !1859, !tbaa !1182
  br label %459, !dbg !1859

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %460, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %434, metadata !1444, metadata !DIExpression()), !dbg !1493
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1863
  %462 = load i8, i8* %461, align 1, !dbg !1863, !tbaa !1182
  call void @llvm.dbg.value(metadata i8 %462, metadata !1455, metadata !DIExpression()), !dbg !1585
  br label %366, !dbg !1864, !llvm.loop !1865

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1578
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1493
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1510
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1868
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1493
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1493
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1585
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1585
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1585
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %472, metadata !1462, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %471, metadata !1461, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %156, metadata !1460, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %470, metadata !1455, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %469, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %468, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %467, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %466, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %465, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %464, metadata !1444, metadata !DIExpression()), !dbg !1493
  br i1 %117, label %486, label %474, !dbg !1869

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1870
  %476 = zext i8 %475 to i64, !dbg !1870
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1871
  %478 = load i32, i32* %477, align 4, !dbg !1871, !tbaa !1141
  %479 = and i8 %470, 31, !dbg !1872
  %480 = zext i8 %479 to i32, !dbg !1872
  %481 = shl nuw i32 1, %480, !dbg !1873
  %482 = and i32 %478, %481, !dbg !1873
  %483 = icmp eq i32 %482, 0, !dbg !1873
  %484 = icmp eq i8 %156, 0, !dbg !1874
  %485 = and i1 %484, %483, !dbg !1875
  br i1 %485, label %526, label %488, !dbg !1875

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1874
  br i1 %487, label %526, label %488, !dbg !1876

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1877
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1493
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1510
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1868
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1514
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1515
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1585
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1585
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %496, metadata !1462, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %495, metadata !1455, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %494, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %493, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %492, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %491, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %490, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %489, metadata !1444, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1490), !dbg !1878
  br i1 %109, label %498, label %629, !dbg !1879

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1585
  %499 = and i8 %493, 1, !dbg !1881
  %500 = icmp eq i8 %499, 0, !dbg !1881
  %501 = and i1 %110, %500, !dbg !1881
  br i1 %501, label %502, label %518, !dbg !1881

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1883
  br i1 %503, label %504, label %506, !dbg !1887

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1883
  store i8 39, i8* %505, align 1, !dbg !1883, !tbaa !1182
  br label %506, !dbg !1883

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %507, metadata !1445, metadata !DIExpression()), !dbg !1493
  %508 = icmp ult i64 %507, %497, !dbg !1888
  br i1 %508, label %509, label %511, !dbg !1891

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1888
  store i8 36, i8* %510, align 1, !dbg !1888, !tbaa !1182
  br label %511, !dbg !1888

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %512, metadata !1445, metadata !DIExpression()), !dbg !1493
  %513 = icmp ult i64 %512, %497, !dbg !1892
  br i1 %513, label %514, label %516, !dbg !1895

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1892
  store i8 39, i8* %515, align 1, !dbg !1892, !tbaa !1182
  br label %516, !dbg !1892

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %517, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1452, metadata !DIExpression()), !dbg !1493
  br label %518, !dbg !1896

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1585
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %520, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %519, metadata !1445, metadata !DIExpression()), !dbg !1493
  %521 = icmp ult i64 %519, %497, !dbg !1897
  br i1 %521, label %522, label %524, !dbg !1900

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1897
  store i8 92, i8* %523, align 1, !dbg !1897, !tbaa !1182
  br label %524, !dbg !1897

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %525, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %536, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %535, metadata !1462, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %534, metadata !1461, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %533, metadata !1455, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %532, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %531, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %530, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %529, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %528, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %527, metadata !1444, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1491), !dbg !1901
  br label %553, !dbg !1902

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1877
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1493
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1510
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1868
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1514
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1515
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1905
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1585
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1585
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %535, metadata !1462, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %534, metadata !1461, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %533, metadata !1455, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i8 %532, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %531, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %530, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %529, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %528, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %527, metadata !1444, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1491), !dbg !1901
  %537 = and i8 %531, 1, !dbg !1902
  %538 = icmp ne i8 %537, 0, !dbg !1902
  %539 = and i8 %534, 1, !dbg !1902
  %540 = icmp eq i8 %539, 0, !dbg !1902
  %541 = and i1 %538, %540, !dbg !1902
  br i1 %541, label %542, label %553, !dbg !1902

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1906
  br i1 %543, label %544, label %546, !dbg !1910

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1906
  store i8 39, i8* %545, align 1, !dbg !1906, !tbaa !1182
  br label %546, !dbg !1906

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %547, metadata !1445, metadata !DIExpression()), !dbg !1493
  %548 = icmp ult i64 %547, %536, !dbg !1911
  br i1 %548, label %549, label %551, !dbg !1914

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1911
  store i8 39, i8* %550, align 1, !dbg !1911, !tbaa !1182
  br label %551, !dbg !1911

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %552, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1452, metadata !DIExpression()), !dbg !1493
  br label %553, !dbg !1915

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1585
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1493
  call void @llvm.dbg.value(metadata i8 %562, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %561, metadata !1445, metadata !DIExpression()), !dbg !1493
  %563 = icmp ult i64 %561, %554, !dbg !1916
  br i1 %563, label %564, label %566, !dbg !1919

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1916
  store i8 %556, i8* %565, align 1, !dbg !1916, !tbaa !1182
  br label %566, !dbg !1916

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %567, metadata !1445, metadata !DIExpression()), !dbg !1493
  %568 = and i8 %555, 1, !dbg !1920
  %569 = icmp eq i8 %568, 0, !dbg !1920
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1922
  call void @llvm.dbg.value(metadata i8 %570, metadata !1454, metadata !DIExpression()), !dbg !1493
  br label %571, !dbg !1923

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1877
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1493
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1510
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1868
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1514
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1493
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1516
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %578, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %577, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %576, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %575, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %574, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %573, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %572, metadata !1444, metadata !DIExpression()), !dbg !1493
  %580 = add i64 %572, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %580, metadata !1444, metadata !DIExpression()), !dbg !1493
  br label %122, !dbg !1925, !llvm.loop !1926

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %127, metadata !1452, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %128, metadata !1453, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %129, metadata !1454, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  %583 = icmp eq i64 %124, 0, !dbg !1928
  %584 = and i1 %110, %583, !dbg !1930
  %585 = xor i1 %584, true, !dbg !1930
  %586 = or i1 %109, %585, !dbg !1930
  br i1 %586, label %587, label %629, !dbg !1930

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1931
  %589 = xor i1 %588, true, !dbg !1931
  %590 = and i8 %128, 1, !dbg !1933
  %591 = icmp eq i8 %590, 0, !dbg !1933
  %592 = or i1 %591, %589, !dbg !1931
  br i1 %592, label %602, label %593, !dbg !1931

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1934
  %595 = icmp eq i8 %594, 0, !dbg !1934
  br i1 %595, label %598, label %596, !dbg !1937

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %94, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %95, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %125, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %582, metadata !1438, metadata !DIExpression()), !dbg !1493
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1938
  br label %645, !dbg !1939

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !1940
  %600 = icmp ne i64 %125, 0, !dbg !1942
  %601 = and i1 %600, %599, !dbg !1943
  br i1 %601, label %26, label %602, !dbg !1943

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %130, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  %603 = icmp ne i8* %97, null, !dbg !1944
  %604 = and i1 %603, %109, !dbg !1946
  br i1 %604, label %605, label %620, !dbg !1946

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %124, metadata !1445, metadata !DIExpression()), !dbg !1493
  %606 = load i8, i8* %97, align 1, !dbg !1947, !tbaa !1182
  %607 = icmp eq i8 %606, 0, !dbg !1950
  br i1 %607, label %620, label %608, !dbg !1950

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %611, metadata !1445, metadata !DIExpression()), !dbg !1493
  %612 = icmp ult i64 %611, %130, !dbg !1951
  br i1 %612, label %613, label %615, !dbg !1954

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !1951
  store i8 %609, i8* %614, align 1, !dbg !1951, !tbaa !1182
  br label %615, !dbg !1951

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %616, metadata !1445, metadata !DIExpression()), !dbg !1493
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !1955
  call void @llvm.dbg.value(metadata i8* %617, metadata !1447, metadata !DIExpression()), !dbg !1493
  %618 = load i8, i8* %617, align 1, !dbg !1947, !tbaa !1182
  %619 = icmp eq i8 %618, 0, !dbg !1950
  br i1 %619, label %620, label %608, !dbg !1950, !llvm.loop !1956

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1547
  call void @llvm.dbg.value(metadata i64 %621, metadata !1445, metadata !DIExpression()), !dbg !1493
  %622 = icmp ult i64 %621, %130, !dbg !1958
  br i1 %622, label %623, label %645, !dbg !1960

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1961
  store i8 0, i8* %624, align 1, !dbg !1962, !tbaa !1182
  br label %645, !dbg !1961

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %630, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1492), !dbg !1963
  %627 = icmp eq i8 %101, 0, !dbg !1964
  %628 = select i1 %627, i32 2, i32 4, !dbg !1964
  br label %635, !dbg !1964

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %630, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1492), !dbg !1963
  %632 = icmp eq i32 %93, 2, !dbg !1966
  %633 = icmp eq i8 %101, 0, !dbg !1964
  %634 = select i1 %633, i32 2, i32 4, !dbg !1964
  br i1 %632, label %635, label %639, !dbg !1964

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !1964

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1439, metadata !DIExpression()), !dbg !1493
  %643 = and i32 %5, -3, !dbg !1967
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !1968
  br label %645, !dbg !1969

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !1970
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1971 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1975, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i32 %1, metadata !1976, metadata !DIExpression()), !dbg !1979
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !1980
  call void @llvm.dbg.value(metadata i8* %3, metadata !1977, metadata !DIExpression()), !dbg !1979
  %4 = icmp eq i8* %3, %0, !dbg !1981
  br i1 %4, label %5, label %71, !dbg !1983

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !1984
  call void @llvm.dbg.value(metadata i8* %6, metadata !1978, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8* %6, metadata !1985, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8* undef, metadata !1991, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 85, metadata !1992, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 84, metadata !1993, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 70, metadata !1994, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 45, metadata !1995, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 56, metadata !1996, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 0, metadata !2000, metadata !DIExpression()), !dbg !2001
  %7 = load i8, i8* %6, align 1, !dbg !2004, !tbaa !1182
  %8 = and i8 %7, -33, !dbg !2004
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2004

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2006, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8* undef, metadata !2011, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 84, metadata !2012, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 70, metadata !2013, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 45, metadata !2014, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 56, metadata !2015, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !2016, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !2017, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !2018, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !2019, metadata !DIExpression()), !dbg !2020
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2024
  %11 = load i8, i8* %10, align 1, !dbg !2024, !tbaa !1182
  %12 = and i8 %11, -33, !dbg !2024
  %13 = icmp eq i8 %12, 84, !dbg !2024
  br i1 %13, label %14, label %68, !dbg !2024

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2026, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* undef, metadata !2031, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 70, metadata !2032, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 45, metadata !2033, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 56, metadata !2034, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !2035, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !2037, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2039
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2043
  %16 = load i8, i8* %15, align 1, !dbg !2043, !tbaa !1182
  %17 = and i8 %16, -33, !dbg !2043
  %18 = icmp eq i8 %17, 70, !dbg !2043
  br i1 %18, label %19, label %68, !dbg !2043

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2045, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* undef, metadata !2050, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 45, metadata !2051, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 56, metadata !2052, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2053, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2057
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2061
  %21 = load i8, i8* %20, align 1, !dbg !2061, !tbaa !1182
  %22 = icmp eq i8 %21, 45, !dbg !2061
  br i1 %22, label %23, label %68, !dbg !2063

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2064, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* undef, metadata !2069, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 56, metadata !2070, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2071, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2072, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2075
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2079
  %25 = load i8, i8* %24, align 1, !dbg !2079, !tbaa !1182
  %26 = icmp eq i8 %25, 56, !dbg !2079
  br i1 %26, label %27, label %68, !dbg !2081

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2082, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* undef, metadata !2087, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2088, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2089, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2092
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2096
  %29 = load i8, i8* %28, align 1, !dbg !2096, !tbaa !1182
  %30 = icmp eq i8 %29, 0, !dbg !2096
  br i1 %30, label %31, label %68, !dbg !2098

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2099, !tbaa !1182
  %33 = icmp eq i8 %32, 96, !dbg !2100
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !2099
  br label %71, !dbg !2101

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2006, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* undef, metadata !2011, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 66, metadata !2012, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 49, metadata !2013, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 56, metadata !2014, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 48, metadata !2015, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 51, metadata !2016, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 48, metadata !2017, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2018, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8 0, metadata !2019, metadata !DIExpression()), !dbg !2102
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2106
  %37 = load i8, i8* %36, align 1, !dbg !2106, !tbaa !1182
  %38 = and i8 %37, -33, !dbg !2106
  %39 = icmp eq i8 %38, 66, !dbg !2106
  br i1 %39, label %40, label %68, !dbg !2106

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2026, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8* undef, metadata !2031, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 49, metadata !2032, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 56, metadata !2033, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 48, metadata !2034, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 51, metadata !2035, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 48, metadata !2036, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2037, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2107
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2109
  %42 = load i8, i8* %41, align 1, !dbg !2109, !tbaa !1182
  %43 = icmp eq i8 %42, 49, !dbg !2109
  br i1 %43, label %44, label %68, !dbg !2110

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2045, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8* undef, metadata !2050, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 56, metadata !2051, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 48, metadata !2052, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 51, metadata !2053, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 48, metadata !2054, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2111
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2113
  %46 = load i8, i8* %45, align 1, !dbg !2113, !tbaa !1182
  %47 = icmp eq i8 %46, 56, !dbg !2113
  br i1 %47, label %48, label %68, !dbg !2114

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2064, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8* undef, metadata !2069, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 48, metadata !2070, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 51, metadata !2071, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 48, metadata !2072, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2115
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2117
  %50 = load i8, i8* %49, align 1, !dbg !2117, !tbaa !1182
  %51 = icmp eq i8 %50, 48, !dbg !2117
  br i1 %51, label %52, label %68, !dbg !2118

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2082, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8* undef, metadata !2087, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 51, metadata !2088, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 48, metadata !2089, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 0, metadata !2090, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2119
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2121
  %54 = load i8, i8* %53, align 1, !dbg !2121, !tbaa !1182
  %55 = icmp eq i8 %54, 51, !dbg !2121
  br i1 %55, label %56, label %68, !dbg !2122

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2123, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8* undef, metadata !2128, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 48, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, metadata !2130, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2132
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2136
  %58 = load i8, i8* %57, align 1, !dbg !2136, !tbaa !1182
  %59 = icmp eq i8 %58, 48, !dbg !2136
  br i1 %59, label %60, label %68, !dbg !2138

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2139, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8* undef, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2147
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2151
  %62 = load i8, i8* %61, align 1, !dbg !2151, !tbaa !1182
  %63 = icmp eq i8 %62, 0, !dbg !2151
  br i1 %63, label %64, label %68, !dbg !2153

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2154, !tbaa !1182
  %66 = icmp eq i8 %65, 96, !dbg !2155
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !2154
  br label %71, !dbg !2156

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2157
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !2158
  br label %71, !dbg !2159

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1979
  ret i8* %72, !dbg !2160
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !310 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !314 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i64 %1, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2167, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %0, metadata !2169, metadata !DIExpression()) #18, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %1, metadata !2174, metadata !DIExpression()) #18, !dbg !2182
  call void @llvm.dbg.value(metadata i64* null, metadata !2175, metadata !DIExpression()) #18, !dbg !2182
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2176, metadata !DIExpression()) #18, !dbg !2182
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2184
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2184
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2177, metadata !DIExpression()) #18, !dbg !2182
  %6 = tail call i32* @__errno_location() #24, !dbg !2185
  %7 = load i32, i32* %6, align 4, !dbg !2185, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %7, metadata !2178, metadata !DIExpression()) #18, !dbg !2182
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2186
  %9 = load i32, i32* %8, align 4, !dbg !2186, !tbaa !1378
  %10 = or i32 %9, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %10, metadata !2179, metadata !DIExpression()) #18, !dbg !2182
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2188
  %12 = load i32, i32* %11, align 8, !dbg !2188, !tbaa !1326
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2189
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2190
  %15 = load i8*, i8** %14, align 8, !dbg !2190, !tbaa !1401
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2191
  %17 = load i8*, i8** %16, align 8, !dbg !2191, !tbaa !1404
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2192
  %19 = add i64 %18, 1, !dbg !2193
  call void @llvm.dbg.value(metadata i64 %19, metadata !2180, metadata !DIExpression()) #18, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %19, metadata !2194, metadata !DIExpression()) #18, !dbg !2199
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2201
  call void @llvm.dbg.value(metadata i8* %20, metadata !2181, metadata !DIExpression()) #18, !dbg !2182
  %21 = load i32, i32* %11, align 8, !dbg !2202, !tbaa !1326
  %22 = load i8*, i8** %14, align 8, !dbg !2203, !tbaa !1401
  %23 = load i8*, i8** %16, align 8, !dbg !2204, !tbaa !1404
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2205
  store i32 %7, i32* %6, align 4, !dbg !2206, !tbaa !1141
  ret i8* %20, !dbg !2207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2170 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2169, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %1, metadata !2174, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64* %2, metadata !2175, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2176, metadata !DIExpression()), !dbg !2208
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2209
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2177, metadata !DIExpression()), !dbg !2208
  %7 = tail call i32* @__errno_location() #24, !dbg !2210
  %8 = load i32, i32* %7, align 4, !dbg !2210, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %8, metadata !2178, metadata !DIExpression()), !dbg !2208
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2211
  %10 = load i32, i32* %9, align 4, !dbg !2211, !tbaa !1378
  %11 = icmp ne i64* %2, null, !dbg !2212
  %12 = xor i1 %11, true, !dbg !2212
  %13 = zext i1 %12 to i32, !dbg !2212
  %14 = or i32 %10, %13, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %14, metadata !2179, metadata !DIExpression()), !dbg !2208
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2214
  %16 = load i32, i32* %15, align 8, !dbg !2214, !tbaa !1326
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2215
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2216
  %19 = load i8*, i8** %18, align 8, !dbg !2216, !tbaa !1401
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2217
  %21 = load i8*, i8** %20, align 8, !dbg !2217, !tbaa !1404
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2218
  %23 = add i64 %22, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %23, metadata !2180, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %23, metadata !2194, metadata !DIExpression()) #18, !dbg !2220
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2222
  call void @llvm.dbg.value(metadata i8* %24, metadata !2181, metadata !DIExpression()), !dbg !2208
  %25 = load i32, i32* %15, align 8, !dbg !2223, !tbaa !1326
  %26 = load i8*, i8** %18, align 8, !dbg !2224, !tbaa !1401
  %27 = load i8*, i8** %20, align 8, !dbg !2225, !tbaa !1404
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2226
  store i32 %8, i32* %7, align 4, !dbg !2227, !tbaa !1141
  br i1 %11, label %29, label %30, !dbg !2228

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2229, !tbaa !2231
  br label %30, !dbg !2233

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2234
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2235 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2239, !tbaa !1067
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2237, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 1, metadata !2238, metadata !DIExpression()), !dbg !2240
  %2 = load i32, i32* @nslots, align 4, !dbg !2241, !tbaa !1141
  %3 = icmp sgt i32 %2, 1, !dbg !2244
  br i1 %3, label %4, label %12, !dbg !2245

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2238, metadata !DIExpression()), !dbg !2240
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2246
  %7 = load i8*, i8** %6, align 8, !dbg !2246, !tbaa !2247
  tail call void @free(i8* %7) #18, !dbg !2249
  %8 = add nuw nsw i64 %5, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %8, metadata !2238, metadata !DIExpression()), !dbg !2240
  %9 = load i32, i32* @nslots, align 4, !dbg !2241, !tbaa !1141
  %10 = sext i32 %9 to i64, !dbg !2244
  %11 = icmp slt i64 %8, %10, !dbg !2244
  br i1 %11, label %4, label %12, !dbg !2245, !llvm.loop !2251

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2253
  %14 = load i8*, i8** %13, align 8, !dbg !2253, !tbaa !2247
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2255
  br i1 %15, label %17, label %16, !dbg !2256

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2257
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2259, !tbaa !2260
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2261, !tbaa !2247
  br label %17, !dbg !2262

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2263
  br i1 %18, label %21, label %19, !dbg !2265

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2266
  tail call void @free(i8* %20) #18, !dbg !2268
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2269, !tbaa !1067
  br label %21, !dbg !2270

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2271, !tbaa !1141
  ret void, !dbg !2272
}

; Function Attrs: nounwind
declare !dbg !289 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %1, metadata !2276, metadata !DIExpression()), !dbg !2277
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2278
  ret i8* %3, !dbg !2279
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2280 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2284, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8* %1, metadata !2285, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %2, metadata !2286, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2287, metadata !DIExpression()), !dbg !2299
  %5 = tail call i32* @__errno_location() #24, !dbg !2300
  %6 = load i32, i32* %5, align 4, !dbg !2300, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %6, metadata !2288, metadata !DIExpression()), !dbg !2299
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2301, !tbaa !1067
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2289, metadata !DIExpression()), !dbg !2299
  %8 = icmp slt i32 %0, 0, !dbg !2302
  br i1 %8, label %9, label %10, !dbg !2304

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2305
  unreachable, !dbg !2305

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2306, !tbaa !1141
  %12 = icmp sgt i32 %11, %0, !dbg !2307
  br i1 %12, label %34, label %13, !dbg !2308

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2309
  call void @llvm.dbg.value(metadata i1 %14, metadata !2290, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2293, metadata !DIExpression()), !dbg !2310
  %15 = icmp eq i32 %0, 2147483647, !dbg !2311
  br i1 %15, label %16, label %17, !dbg !2313

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2314
  unreachable, !dbg !2314

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2315
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2315
  %20 = add nuw nsw i32 %0, 1, !dbg !2316
  %21 = sext i32 %20 to i64, !dbg !2317
  %22 = shl nuw nsw i64 %21, 4, !dbg !2318
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2319
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2319
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2289, metadata !DIExpression()), !dbg !2299
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2320, !tbaa !1067
  br i1 %14, label %25, label %26, !dbg !2321

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2322, !tbaa.struct !2324
  br label %26, !dbg !2325

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2326, !tbaa !1141
  %28 = sext i32 %27 to i64, !dbg !2327
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2327
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2328
  %31 = sub nsw i32 %20, %27, !dbg !2329
  %32 = sext i32 %31 to i64, !dbg !2330
  %33 = shl nsw i64 %32, 4, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %30, metadata !1727, metadata !DIExpression()) #18, !dbg !2332
  call void @llvm.dbg.value(metadata i32 0, metadata !1733, metadata !DIExpression()) #18, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %33, metadata !1734, metadata !DIExpression()) #18, !dbg !2332
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2334
  store i32 %20, i32* @nslots, align 4, !dbg !2335, !tbaa !1141
  br label %34, !dbg !2336

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2299
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2289, metadata !DIExpression()), !dbg !2299
  %36 = zext i32 %0 to i64, !dbg !2337
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2338
  %38 = load i64, i64* %37, align 8, !dbg !2338, !tbaa !2260
  call void @llvm.dbg.value(metadata i64 %38, metadata !2294, metadata !DIExpression()), !dbg !2339
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2340
  %40 = load i8*, i8** %39, align 8, !dbg !2340, !tbaa !2247
  call void @llvm.dbg.value(metadata i8* %40, metadata !2296, metadata !DIExpression()), !dbg !2339
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2341
  %42 = load i32, i32* %41, align 4, !dbg !2341, !tbaa !1378
  %43 = or i32 %42, 1, !dbg !2342
  call void @llvm.dbg.value(metadata i32 %43, metadata !2297, metadata !DIExpression()), !dbg !2339
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2343
  %45 = load i32, i32* %44, align 8, !dbg !2343, !tbaa !1326
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2344
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2345
  %48 = load i8*, i8** %47, align 8, !dbg !2345, !tbaa !1401
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2346
  %50 = load i8*, i8** %49, align 8, !dbg !2346, !tbaa !1404
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2347
  call void @llvm.dbg.value(metadata i64 %51, metadata !2298, metadata !DIExpression()), !dbg !2339
  %52 = icmp ugt i64 %38, %51, !dbg !2348
  br i1 %52, label %63, label %53, !dbg !2350

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %54, metadata !2294, metadata !DIExpression()), !dbg !2339
  store i64 %54, i64* %37, align 8, !dbg !2353, !tbaa !2260
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2354
  br i1 %55, label %57, label %56, !dbg !2356

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2357
  br label %57, !dbg !2357

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2194, metadata !DIExpression()) #18, !dbg !2358
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %58, metadata !2296, metadata !DIExpression()), !dbg !2339
  store i8* %58, i8** %39, align 8, !dbg !2361, !tbaa !2247
  %59 = load i32, i32* %44, align 8, !dbg !2362, !tbaa !1326
  %60 = load i8*, i8** %47, align 8, !dbg !2363, !tbaa !1401
  %61 = load i8*, i8** %49, align 8, !dbg !2364, !tbaa !1404
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2365
  br label %63, !dbg !2366

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2339
  call void @llvm.dbg.value(metadata i8* %64, metadata !2296, metadata !DIExpression()), !dbg !2339
  store i32 %6, i32* %5, align 4, !dbg !2367, !tbaa !1141
  ret i8* %64, !dbg !2368
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %1, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %2, metadata !2375, metadata !DIExpression()), !dbg !2376
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2377
  ret i8* %4, !dbg !2378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2379 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2381, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 0, metadata !2275, metadata !DIExpression()) #18, !dbg !2383
  call void @llvm.dbg.value(metadata i8* %0, metadata !2276, metadata !DIExpression()) #18, !dbg !2383
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2385
  ret i8* %2, !dbg !2386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2387 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2391, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %1, metadata !2392, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 0, metadata !2373, metadata !DIExpression()) #18, !dbg !2394
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()) #18, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %1, metadata !2375, metadata !DIExpression()) #18, !dbg !2394
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2396
  ret i8* %3, !dbg !2397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2398 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2402, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %1, metadata !2403, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %2, metadata !2404, metadata !DIExpression()), !dbg !2406
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2407
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2407
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2405, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %1, metadata !2409, metadata !DIExpression()) #18, !dbg !2415
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2414, metadata !DIExpression()) #18, !dbg !2417
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2417, !alias.scope !2418
  %6 = icmp eq i32 %1, 10, !dbg !2421
  br i1 %6, label %7, label %8, !dbg !2423

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2424, !noalias !2418
  unreachable, !dbg !2424

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2425
  store i32 %1, i32* %9, align 8, !dbg !2426, !tbaa !1326, !alias.scope !2418
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2427
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2428
  ret i8* %10, !dbg !2429
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2430 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %1, metadata !2435, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8* %2, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i64 %3, metadata !2437, metadata !DIExpression()), !dbg !2439
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2440
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2440
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %1, metadata !2409, metadata !DIExpression()) #18, !dbg !2442
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2414, metadata !DIExpression()) #18, !dbg !2444
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2444, !alias.scope !2445
  %7 = icmp eq i32 %1, 10, !dbg !2448
  br i1 %7, label %8, label %9, !dbg !2449

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2450, !noalias !2445
  unreachable, !dbg !2450

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2451
  store i32 %1, i32* %10, align 8, !dbg !2452, !tbaa !1326, !alias.scope !2445
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2453
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2454
  ret i8* %11, !dbg !2455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2456 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2414, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2405, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8* %1, metadata !2461, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()) #18, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %0, metadata !2403, metadata !DIExpression()) #18, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %1, metadata !2404, metadata !DIExpression()) #18, !dbg !2467
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2468
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2468
  call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression()) #18, !dbg !2469
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2462, !alias.scope !2470
  %5 = icmp eq i32 %0, 10, !dbg !2473
  br i1 %5, label %6, label %7, !dbg !2474

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2475, !noalias !2470
  unreachable, !dbg !2475

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2476
  store i32 %0, i32* %8, align 8, !dbg !2477, !tbaa !1326, !alias.scope !2470
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2478
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2479
  ret i8* %9, !dbg !2480
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2481 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2414, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2438, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 %0, metadata !2485, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %1, metadata !2486, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %2, metadata !2487, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i32 0, metadata !2434, metadata !DIExpression()) #18, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %0, metadata !2435, metadata !DIExpression()) #18, !dbg !2493
  call void @llvm.dbg.value(metadata i8* %1, metadata !2436, metadata !DIExpression()) #18, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %2, metadata !2437, metadata !DIExpression()) #18, !dbg !2493
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2494
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression()) #18, !dbg !2495
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2488, !alias.scope !2496
  %6 = icmp eq i32 %0, 10, !dbg !2499
  br i1 %6, label %7, label %8, !dbg !2500

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2501, !noalias !2496
  unreachable, !dbg !2501

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2502
  store i32 %0, i32* %9, align 8, !dbg !2503, !tbaa !1326, !alias.scope !2496
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2504
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2505
  ret i8* %10, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2507 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 %2, metadata !2513, metadata !DIExpression()), !dbg !2515
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2516
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2516
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression()), !dbg !2517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2518, !tbaa.struct !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1344, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 %2, metadata !1345, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i32 1, metadata !1346, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 %2, metadata !1347, metadata !DIExpression()), !dbg !2520
  %6 = lshr i8 %2, 5, !dbg !2522
  %7 = zext i8 %6 to i64, !dbg !2522
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2523
  call void @llvm.dbg.value(metadata i32* %8, metadata !1349, metadata !DIExpression()), !dbg !2520
  %9 = and i8 %2, 31, !dbg !2524
  %10 = zext i8 %9 to i32, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %10, metadata !1351, metadata !DIExpression()), !dbg !2520
  %11 = load i32, i32* %8, align 4, !dbg !2525, !tbaa !1141
  %12 = lshr i32 %11, %10, !dbg !2526
  %13 = and i32 %12, 1, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %13, metadata !1352, metadata !DIExpression()), !dbg !2520
  %14 = xor i32 %13, 1, !dbg !2528
  %15 = shl i32 %14, %10, !dbg !2529
  %16 = xor i32 %15, %11, !dbg !2530
  store i32 %16, i32* %8, align 4, !dbg !2530, !tbaa !1141
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2532
  ret i8* %17, !dbg !2533
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2534 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2514, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8* %0, metadata !2538, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 %1, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()) #18, !dbg !2543
  call void @llvm.dbg.value(metadata i64 -1, metadata !2512, metadata !DIExpression()) #18, !dbg !2543
  call void @llvm.dbg.value(metadata i8 %1, metadata !2513, metadata !DIExpression()) #18, !dbg !2543
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2544
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2545, !tbaa.struct !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1344, metadata !DIExpression()) #18, !dbg !2546
  call void @llvm.dbg.value(metadata i8 %1, metadata !1345, metadata !DIExpression()) #18, !dbg !2546
  call void @llvm.dbg.value(metadata i32 1, metadata !1346, metadata !DIExpression()) #18, !dbg !2546
  call void @llvm.dbg.value(metadata i8 %1, metadata !1347, metadata !DIExpression()) #18, !dbg !2546
  %5 = lshr i8 %1, 5, !dbg !2548
  %6 = zext i8 %5 to i64, !dbg !2548
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2549
  call void @llvm.dbg.value(metadata i32* %7, metadata !1349, metadata !DIExpression()) #18, !dbg !2546
  %8 = and i8 %1, 31, !dbg !2550
  %9 = zext i8 %8 to i32, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %9, metadata !1351, metadata !DIExpression()) #18, !dbg !2546
  %10 = load i32, i32* %7, align 4, !dbg !2551, !tbaa !1141
  %11 = lshr i32 %10, %9, !dbg !2552
  %12 = and i32 %11, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %12, metadata !1352, metadata !DIExpression()) #18, !dbg !2546
  %13 = xor i32 %12, 1, !dbg !2554
  %14 = shl i32 %13, %9, !dbg !2555
  %15 = xor i32 %14, %10, !dbg !2556
  store i32 %15, i32* %7, align 4, !dbg !2556, !tbaa !1141
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2557
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2558
  ret i8* %16, !dbg !2559
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2560 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2514, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* %0, metadata !2562, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %0, metadata !2538, metadata !DIExpression()) #18, !dbg !2567
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()) #18, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()) #18, !dbg !2568
  call void @llvm.dbg.value(metadata i64 -1, metadata !2512, metadata !DIExpression()) #18, !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !2513, metadata !DIExpression()) #18, !dbg !2568
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2569
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2570, !tbaa.struct !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1344, metadata !DIExpression()) #18, !dbg !2571
  call void @llvm.dbg.value(metadata i8 58, metadata !1345, metadata !DIExpression()) #18, !dbg !2571
  call void @llvm.dbg.value(metadata i32 1, metadata !1346, metadata !DIExpression()) #18, !dbg !2571
  call void @llvm.dbg.value(metadata i8 58, metadata !1347, metadata !DIExpression()) #18, !dbg !2571
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2573
  call void @llvm.dbg.value(metadata i32* %4, metadata !1349, metadata !DIExpression()) #18, !dbg !2571
  call void @llvm.dbg.value(metadata i32 26, metadata !1351, metadata !DIExpression()) #18, !dbg !2571
  %5 = load i32, i32* %4, align 4, !dbg !2574, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %5, metadata !1352, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2571
  %6 = or i32 %5, 67108864, !dbg !2575
  store i32 %6, i32* %4, align 4, !dbg !2575, !tbaa !1141
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2576
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2577
  ret i8* %7, !dbg !2578
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2579 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2514, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !2581, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %1, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()) #18, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()) #18, !dbg !2586
  call void @llvm.dbg.value(metadata i8 58, metadata !2513, metadata !DIExpression()) #18, !dbg !2586
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2588, !tbaa.struct !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1344, metadata !DIExpression()) #18, !dbg !2589
  call void @llvm.dbg.value(metadata i8 58, metadata !1345, metadata !DIExpression()) #18, !dbg !2589
  call void @llvm.dbg.value(metadata i32 1, metadata !1346, metadata !DIExpression()) #18, !dbg !2589
  call void @llvm.dbg.value(metadata i8 58, metadata !1347, metadata !DIExpression()) #18, !dbg !2589
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2591
  call void @llvm.dbg.value(metadata i32* %5, metadata !1349, metadata !DIExpression()) #18, !dbg !2589
  call void @llvm.dbg.value(metadata i32 26, metadata !1351, metadata !DIExpression()) #18, !dbg !2589
  %6 = load i32, i32* %5, align 4, !dbg !2592, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %6, metadata !1352, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2589
  %7 = or i32 %6, 67108864, !dbg !2593
  store i32 %7, i32* %5, align 4, !dbg !2593, !tbaa !1141
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2594
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2595
  ret i8* %8, !dbg !2596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2597 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2414, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %0, metadata !2599, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 %1, metadata !2600, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %2, metadata !2601, metadata !DIExpression()), !dbg !2605
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2606
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2606
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2602, metadata !DIExpression()), !dbg !2607
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2608
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %1, metadata !2409, metadata !DIExpression()) #18, !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2609
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2603, !alias.scope !2610
  %8 = icmp eq i32 %1, 10, !dbg !2613
  br i1 %8, label %9, label %10, !dbg !2614

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2615, !noalias !2610
  unreachable, !dbg !2615

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2414, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2609
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2608
  store i32 %1, i32* %11, align 8, !dbg !2608, !tbaa.struct !2519
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2608
  %13 = bitcast i32* %12 to i8*, !dbg !2608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2608, !tbaa.struct !2519
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2608
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1344, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 58, metadata !1345, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 1, metadata !1346, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 58, metadata !1347, metadata !DIExpression()), !dbg !2616
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2618
  call void @llvm.dbg.value(metadata i32* %14, metadata !1349, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 26, metadata !1351, metadata !DIExpression()), !dbg !2616
  %15 = load i32, i32* %14, align 4, !dbg !2619, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %15, metadata !1352, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2616
  %16 = or i32 %15, 67108864, !dbg !2620
  store i32 %16, i32* %14, align 4, !dbg !2620, !tbaa !1141
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2622
  ret i8* %17, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2624 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2632, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %2, metadata !2630, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %3, metadata !2631, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()) #18, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %1, metadata !2638, metadata !DIExpression()) #18, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %2, metadata !2639, metadata !DIExpression()) #18, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %3, metadata !2640, metadata !DIExpression()) #18, !dbg !2645
  call void @llvm.dbg.value(metadata i64 -1, metadata !2641, metadata !DIExpression()) #18, !dbg !2645
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2646
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2647, !tbaa.struct !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1385, metadata !DIExpression()) #18, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %1, metadata !1386, metadata !DIExpression()) #18, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %2, metadata !1387, metadata !DIExpression()) #18, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1385, metadata !DIExpression()) #18, !dbg !2648
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2650
  store i32 10, i32* %7, align 8, !dbg !2651, !tbaa !1326
  %8 = icmp ne i8* %1, null, !dbg !2652
  %9 = icmp ne i8* %2, null, !dbg !2653
  %10 = and i1 %8, %9, !dbg !2654
  br i1 %10, label %12, label %11, !dbg !2654

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2655
  unreachable, !dbg !2655

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2656
  store i8* %1, i8** %13, align 8, !dbg !2657, !tbaa !1401
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2658
  store i8* %2, i8** %14, align 8, !dbg !2659, !tbaa !1404
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !2660
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2661
  ret i8* %15, !dbg !2662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2633 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8* %1, metadata !2638, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8* %2, metadata !2639, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8* %3, metadata !2640, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %4, metadata !2641, metadata !DIExpression()), !dbg !2663
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2664
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2632, metadata !DIExpression()), !dbg !2665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2666, !tbaa.struct !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1385, metadata !DIExpression()) #18, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %1, metadata !1386, metadata !DIExpression()) #18, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %2, metadata !1387, metadata !DIExpression()) #18, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1385, metadata !DIExpression()) #18, !dbg !2667
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2669
  store i32 10, i32* %8, align 8, !dbg !2670, !tbaa !1326
  %9 = icmp ne i8* %1, null, !dbg !2671
  %10 = icmp ne i8* %2, null, !dbg !2672
  %11 = and i1 %9, %10, !dbg !2673
  br i1 %11, label %13, label %12, !dbg !2673

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2674
  unreachable, !dbg !2674

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2675
  store i8* %1, i8** %14, align 8, !dbg !2676, !tbaa !1401
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2677
  store i8* %2, i8** %15, align 8, !dbg !2678, !tbaa !1404
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2679
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2680
  ret i8* %16, !dbg !2681
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2682 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2632, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %0, metadata !2686, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8* %1, metadata !2687, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8* %2, metadata !2688, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2628, metadata !DIExpression()) #18, !dbg !2693
  call void @llvm.dbg.value(metadata i8* %0, metadata !2629, metadata !DIExpression()) #18, !dbg !2693
  call void @llvm.dbg.value(metadata i8* %1, metadata !2630, metadata !DIExpression()) #18, !dbg !2693
  call void @llvm.dbg.value(metadata i8* %2, metadata !2631, metadata !DIExpression()) #18, !dbg !2693
  call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()) #18, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %0, metadata !2638, metadata !DIExpression()) #18, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %1, metadata !2639, metadata !DIExpression()) #18, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %2, metadata !2640, metadata !DIExpression()) #18, !dbg !2694
  call void @llvm.dbg.value(metadata i64 -1, metadata !2641, metadata !DIExpression()) #18, !dbg !2694
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2695
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2696, !tbaa.struct !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1385, metadata !DIExpression()) #18, !dbg !2697
  call void @llvm.dbg.value(metadata i8* %0, metadata !1386, metadata !DIExpression()) #18, !dbg !2697
  call void @llvm.dbg.value(metadata i8* %1, metadata !1387, metadata !DIExpression()) #18, !dbg !2697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1385, metadata !DIExpression()) #18, !dbg !2697
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2699
  store i32 10, i32* %6, align 8, !dbg !2700, !tbaa !1326
  %7 = icmp ne i8* %0, null, !dbg !2701
  %8 = icmp ne i8* %1, null, !dbg !2702
  %9 = and i1 %7, %8, !dbg !2703
  br i1 %9, label %11, label %10, !dbg !2703

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2704
  unreachable, !dbg !2704

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2705
  store i8* %0, i8** %12, align 8, !dbg !2706, !tbaa !1401
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2707
  store i8* %1, i8** %13, align 8, !dbg !2708, !tbaa !1404
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !2709
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2710
  ret i8* %14, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2712 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2632, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %1, metadata !2717, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %2, metadata !2718, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %3, metadata !2719, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()) #18, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %0, metadata !2638, metadata !DIExpression()) #18, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %1, metadata !2639, metadata !DIExpression()) #18, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %2, metadata !2640, metadata !DIExpression()) #18, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %3, metadata !2641, metadata !DIExpression()) #18, !dbg !2723
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2724
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2725, !tbaa.struct !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1385, metadata !DIExpression()) #18, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %0, metadata !1386, metadata !DIExpression()) #18, !dbg !2726
  call void @llvm.dbg.value(metadata i8* %1, metadata !1387, metadata !DIExpression()) #18, !dbg !2726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1385, metadata !DIExpression()) #18, !dbg !2726
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2728
  store i32 10, i32* %7, align 8, !dbg !2729, !tbaa !1326
  %8 = icmp ne i8* %0, null, !dbg !2730
  %9 = icmp ne i8* %1, null, !dbg !2731
  %10 = and i1 %8, %9, !dbg !2732
  br i1 %10, label %12, label %11, !dbg !2732

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2733
  unreachable, !dbg !2733

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2734
  store i8* %0, i8** %13, align 8, !dbg !2735, !tbaa !1401
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2736
  store i8* %1, i8** %14, align 8, !dbg !2737, !tbaa !1404
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !2738
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2739
  ret i8* %15, !dbg !2740
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2745, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %1, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %2, metadata !2747, metadata !DIExpression()), !dbg !2748
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2749
  ret i8* %4, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2751 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2755, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %1, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i32 0, metadata !2745, metadata !DIExpression()) #18, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %0, metadata !2746, metadata !DIExpression()) #18, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %1, metadata !2747, metadata !DIExpression()) #18, !dbg !2758
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2760
  ret i8* %3, !dbg !2761
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2762 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8* %1, metadata !2767, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %0, metadata !2745, metadata !DIExpression()) #18, !dbg !2769
  call void @llvm.dbg.value(metadata i8* %1, metadata !2746, metadata !DIExpression()) #18, !dbg !2769
  call void @llvm.dbg.value(metadata i64 -1, metadata !2747, metadata !DIExpression()) #18, !dbg !2769
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2771
  ret i8* %3, !dbg !2772
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2773 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression()) #18, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %0, metadata !2767, metadata !DIExpression()) #18, !dbg !2779
  call void @llvm.dbg.value(metadata i32 0, metadata !2745, metadata !DIExpression()) #18, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %0, metadata !2746, metadata !DIExpression()) #18, !dbg !2781
  call void @llvm.dbg.value(metadata i64 -1, metadata !2747, metadata !DIExpression()) #18, !dbg !2781
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2783
  ret i8* %2, !dbg !2784
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2785 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2793, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %1, metadata !2794, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %2, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %3, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8** %4, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %5, metadata !2798, metadata !DIExpression()), !dbg !2799
  %7 = icmp eq i8* %1, null, !dbg !2800
  br i1 %7, label %10, label %8, !dbg !2802

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !2803
  br label %12, !dbg !2803

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.68, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !2804
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i32 5) #18, !dbg !2805
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !2805
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.70, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2806
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.71, i64 0, i64 0), i32 5) #18, !dbg !2807
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.72, i64 0, i64 0)) #18, !dbg !2807
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.70, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2808
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
  ], !dbg !2809

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.73, i64 0, i64 0), i32 5) #18, !dbg !2810
  %21 = load i8*, i8** %4, align 8, !dbg !2810, !tbaa !1067
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !2810
  br label %147, !dbg !2812

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.74, i64 0, i64 0), i32 5) #18, !dbg !2813
  %25 = load i8*, i8** %4, align 8, !dbg !2813, !tbaa !1067
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2813
  %27 = load i8*, i8** %26, align 8, !dbg !2813, !tbaa !1067
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !2813
  br label %147, !dbg !2814

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.75, i64 0, i64 0), i32 5) #18, !dbg !2815
  %31 = load i8*, i8** %4, align 8, !dbg !2815, !tbaa !1067
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2815
  %33 = load i8*, i8** %32, align 8, !dbg !2815, !tbaa !1067
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2815
  %35 = load i8*, i8** %34, align 8, !dbg !2815, !tbaa !1067
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !2815
  br label %147, !dbg !2816

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.76, i64 0, i64 0), i32 5) #18, !dbg !2817
  %39 = load i8*, i8** %4, align 8, !dbg !2817, !tbaa !1067
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2817
  %41 = load i8*, i8** %40, align 8, !dbg !2817, !tbaa !1067
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2817
  %43 = load i8*, i8** %42, align 8, !dbg !2817, !tbaa !1067
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2817
  %45 = load i8*, i8** %44, align 8, !dbg !2817, !tbaa !1067
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !2817
  br label %147, !dbg !2818

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.77, i64 0, i64 0), i32 5) #18, !dbg !2819
  %49 = load i8*, i8** %4, align 8, !dbg !2819, !tbaa !1067
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2819
  %51 = load i8*, i8** %50, align 8, !dbg !2819, !tbaa !1067
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2819
  %53 = load i8*, i8** %52, align 8, !dbg !2819, !tbaa !1067
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2819
  %55 = load i8*, i8** %54, align 8, !dbg !2819, !tbaa !1067
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2819
  %57 = load i8*, i8** %56, align 8, !dbg !2819, !tbaa !1067
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !2819
  br label %147, !dbg !2820

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.78, i64 0, i64 0), i32 5) #18, !dbg !2821
  %61 = load i8*, i8** %4, align 8, !dbg !2821, !tbaa !1067
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2821
  %63 = load i8*, i8** %62, align 8, !dbg !2821, !tbaa !1067
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2821
  %65 = load i8*, i8** %64, align 8, !dbg !2821, !tbaa !1067
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2821
  %67 = load i8*, i8** %66, align 8, !dbg !2821, !tbaa !1067
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2821
  %69 = load i8*, i8** %68, align 8, !dbg !2821, !tbaa !1067
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2821
  %71 = load i8*, i8** %70, align 8, !dbg !2821, !tbaa !1067
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !2821
  br label %147, !dbg !2822

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.79, i64 0, i64 0), i32 5) #18, !dbg !2823
  %75 = load i8*, i8** %4, align 8, !dbg !2823, !tbaa !1067
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2823
  %77 = load i8*, i8** %76, align 8, !dbg !2823, !tbaa !1067
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2823
  %79 = load i8*, i8** %78, align 8, !dbg !2823, !tbaa !1067
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2823
  %81 = load i8*, i8** %80, align 8, !dbg !2823, !tbaa !1067
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2823
  %83 = load i8*, i8** %82, align 8, !dbg !2823, !tbaa !1067
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2823
  %85 = load i8*, i8** %84, align 8, !dbg !2823, !tbaa !1067
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2823
  %87 = load i8*, i8** %86, align 8, !dbg !2823, !tbaa !1067
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !2823
  br label %147, !dbg !2824

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.80, i64 0, i64 0), i32 5) #18, !dbg !2825
  %91 = load i8*, i8** %4, align 8, !dbg !2825, !tbaa !1067
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2825
  %93 = load i8*, i8** %92, align 8, !dbg !2825, !tbaa !1067
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2825
  %95 = load i8*, i8** %94, align 8, !dbg !2825, !tbaa !1067
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2825
  %97 = load i8*, i8** %96, align 8, !dbg !2825, !tbaa !1067
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2825
  %99 = load i8*, i8** %98, align 8, !dbg !2825, !tbaa !1067
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2825
  %101 = load i8*, i8** %100, align 8, !dbg !2825, !tbaa !1067
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2825
  %103 = load i8*, i8** %102, align 8, !dbg !2825, !tbaa !1067
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2825
  %105 = load i8*, i8** %104, align 8, !dbg !2825, !tbaa !1067
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !2825
  br label %147, !dbg !2826

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.81, i64 0, i64 0), i32 5) #18, !dbg !2827
  %109 = load i8*, i8** %4, align 8, !dbg !2827, !tbaa !1067
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2827
  %111 = load i8*, i8** %110, align 8, !dbg !2827, !tbaa !1067
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2827
  %113 = load i8*, i8** %112, align 8, !dbg !2827, !tbaa !1067
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2827
  %115 = load i8*, i8** %114, align 8, !dbg !2827, !tbaa !1067
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2827
  %117 = load i8*, i8** %116, align 8, !dbg !2827, !tbaa !1067
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2827
  %119 = load i8*, i8** %118, align 8, !dbg !2827, !tbaa !1067
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2827
  %121 = load i8*, i8** %120, align 8, !dbg !2827, !tbaa !1067
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2827
  %123 = load i8*, i8** %122, align 8, !dbg !2827, !tbaa !1067
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2827
  %125 = load i8*, i8** %124, align 8, !dbg !2827, !tbaa !1067
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !2827
  br label %147, !dbg !2828

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.82, i64 0, i64 0), i32 5) #18, !dbg !2829
  %129 = load i8*, i8** %4, align 8, !dbg !2829, !tbaa !1067
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2829
  %131 = load i8*, i8** %130, align 8, !dbg !2829, !tbaa !1067
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2829
  %133 = load i8*, i8** %132, align 8, !dbg !2829, !tbaa !1067
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2829
  %135 = load i8*, i8** %134, align 8, !dbg !2829, !tbaa !1067
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2829
  %137 = load i8*, i8** %136, align 8, !dbg !2829, !tbaa !1067
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2829
  %139 = load i8*, i8** %138, align 8, !dbg !2829, !tbaa !1067
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2829
  %141 = load i8*, i8** %140, align 8, !dbg !2829, !tbaa !1067
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2829
  %143 = load i8*, i8** %142, align 8, !dbg !2829, !tbaa !1067
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2829
  %145 = load i8*, i8** %144, align 8, !dbg !2829, !tbaa !1067
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !2829
  br label %147, !dbg !2830

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2832 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2836, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %2, metadata !2838, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %3, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8** %4, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 0, metadata !2841, metadata !DIExpression()), !dbg !2842
  br label %6, !dbg !2843

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2845
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2846
  %9 = load i8*, i8** %8, align 8, !dbg !2846, !tbaa !1067
  %10 = icmp eq i8* %9, null, !dbg !2848
  %11 = add i64 %7, 1, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %11, metadata !2841, metadata !DIExpression()), !dbg !2842
  br i1 %10, label %12, label %6, !dbg !2848, !llvm.loop !2850

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2842
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2852
  ret void, !dbg !2853
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2854 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2865, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %1, metadata !2866, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %2, metadata !2867, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %3, metadata !2868, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2869, metadata !DIExpression()), !dbg !2873
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2874
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !2874
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 0, metadata !2870, metadata !DIExpression()), !dbg !2873
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2876
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2876
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2876
  %11 = load i32, i32* %8, align 8, !dbg !2879
  %12 = icmp ult i32 %11, 41, !dbg !2879
  br i1 %12, label %13, label %18, !dbg !2879

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2879
  %15 = zext i32 %11 to i64, !dbg !2879
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2879
  %17 = add nuw nsw i32 %11, 8, !dbg !2879
  store i32 %17, i32* %8, align 8, !dbg !2879
  br label %21, !dbg !2879

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2879
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2879
  store i8* %20, i8** %9, align 8, !dbg !2879
  br label %21, !dbg !2879

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2879
  %25 = load i8*, i8** %24, align 8, !dbg !2879
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2880
  store i8* %25, i8** %26, align 16, !dbg !2881, !tbaa !1067
  %27 = icmp eq i8* %25, null, !dbg !2882
  br i1 %27, label %30, label %28, !dbg !2883

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2870, metadata !DIExpression()), !dbg !2873
  %29 = icmp ult i32 %22, 41, !dbg !2879
  br i1 %29, label %35, label %32, !dbg !2879

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2884
  call void @llvm.dbg.value(metadata i64 %31, metadata !2870, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i64 %31, metadata !2870, metadata !DIExpression()), !dbg !2873
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2885
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !2886
  ret void, !dbg !2886

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2879
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2879
  store i8* %34, i8** %9, align 8, !dbg !2879
  br label %40, !dbg !2879

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2879
  %37 = zext i32 %22 to i64, !dbg !2879
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2879
  %39 = add nuw nsw i32 %22, 8, !dbg !2879
  store i32 %39, i32* %8, align 8, !dbg !2879
  br label %40, !dbg !2879

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2879
  %44 = load i8*, i8** %43, align 8, !dbg !2879
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2880
  store i8* %44, i8** %45, align 8, !dbg !2881, !tbaa !1067
  %46 = icmp eq i8* %44, null, !dbg !2882
  br i1 %46, label %30, label %47, !dbg !2883

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2870, metadata !DIExpression()), !dbg !2873
  %48 = icmp ult i32 %41, 41, !dbg !2879
  br i1 %48, label %52, label %49, !dbg !2879

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2879
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2879
  store i8* %51, i8** %9, align 8, !dbg !2879
  br label %57, !dbg !2879

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2879
  %54 = zext i32 %41 to i64, !dbg !2879
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2879
  %56 = add nuw nsw i32 %41, 8, !dbg !2879
  store i32 %56, i32* %8, align 8, !dbg !2879
  br label %57, !dbg !2879

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2879
  %61 = load i8*, i8** %60, align 8, !dbg !2879
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2880
  store i8* %61, i8** %62, align 16, !dbg !2881, !tbaa !1067
  %63 = icmp eq i8* %61, null, !dbg !2882
  br i1 %63, label %30, label %64, !dbg !2883

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2870, metadata !DIExpression()), !dbg !2873
  %65 = icmp ult i32 %58, 41, !dbg !2879
  br i1 %65, label %69, label %66, !dbg !2879

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2879
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2879
  store i8* %68, i8** %9, align 8, !dbg !2879
  br label %74, !dbg !2879

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2879
  %71 = zext i32 %58 to i64, !dbg !2879
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2879
  %73 = add nuw nsw i32 %58, 8, !dbg !2879
  store i32 %73, i32* %8, align 8, !dbg !2879
  br label %74, !dbg !2879

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2879
  %78 = load i8*, i8** %77, align 8, !dbg !2879
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2880
  store i8* %78, i8** %79, align 8, !dbg !2881, !tbaa !1067
  %80 = icmp eq i8* %78, null, !dbg !2882
  br i1 %80, label %30, label %81, !dbg !2883

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2870, metadata !DIExpression()), !dbg !2873
  %82 = icmp ult i32 %75, 41, !dbg !2879
  br i1 %82, label %86, label %83, !dbg !2879

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2879
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2879
  store i8* %85, i8** %9, align 8, !dbg !2879
  br label %91, !dbg !2879

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2879
  %88 = zext i32 %75 to i64, !dbg !2879
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2879
  %90 = add nuw nsw i32 %75, 8, !dbg !2879
  store i32 %90, i32* %8, align 8, !dbg !2879
  br label %91, !dbg !2879

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2879
  %95 = load i8*, i8** %94, align 8, !dbg !2879
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2880
  store i8* %95, i8** %96, align 16, !dbg !2881, !tbaa !1067
  %97 = icmp eq i8* %95, null, !dbg !2882
  br i1 %97, label %30, label %98, !dbg !2883

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2870, metadata !DIExpression()), !dbg !2873
  %99 = icmp ult i32 %92, 41, !dbg !2879
  br i1 %99, label %103, label %100, !dbg !2879

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2879
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2879
  store i8* %102, i8** %9, align 8, !dbg !2879
  br label %108, !dbg !2879

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2879
  %105 = zext i32 %92 to i64, !dbg !2879
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2879
  %107 = add nuw nsw i32 %92, 8, !dbg !2879
  store i32 %107, i32* %8, align 8, !dbg !2879
  br label %108, !dbg !2879

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2879
  %111 = load i8*, i8** %110, align 8, !dbg !2879
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2880
  store i8* %111, i8** %112, align 8, !dbg !2881, !tbaa !1067
  %113 = icmp eq i8* %111, null, !dbg !2882
  br i1 %113, label %30, label %114, !dbg !2883

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2870, metadata !DIExpression()), !dbg !2873
  %115 = load i8*, i8** %9, align 8, !dbg !2879
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2879
  store i8* %116, i8** %9, align 8, !dbg !2879
  %117 = bitcast i8* %115 to i8**, !dbg !2879
  %118 = load i8*, i8** %117, align 8, !dbg !2879
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2880
  store i8* %118, i8** %119, align 16, !dbg !2881, !tbaa !1067
  %120 = icmp eq i8* %118, null, !dbg !2882
  br i1 %120, label %30, label %121, !dbg !2883

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2870, metadata !DIExpression()), !dbg !2873
  %122 = load i8*, i8** %9, align 8, !dbg !2879
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2879
  store i8* %123, i8** %9, align 8, !dbg !2879
  %124 = bitcast i8* %122 to i8**, !dbg !2879
  %125 = load i8*, i8** %124, align 8, !dbg !2879
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2880
  store i8* %125, i8** %126, align 8, !dbg !2881, !tbaa !1067
  %127 = icmp eq i8* %125, null, !dbg !2882
  br i1 %127, label %30, label %128, !dbg !2883

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2870, metadata !DIExpression()), !dbg !2873
  %129 = load i8*, i8** %9, align 8, !dbg !2879
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2879
  store i8* %130, i8** %9, align 8, !dbg !2879
  %131 = bitcast i8* %129 to i8**, !dbg !2879
  %132 = load i8*, i8** %131, align 8, !dbg !2879
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2880
  store i8* %132, i8** %133, align 16, !dbg !2881, !tbaa !1067
  %134 = icmp eq i8* %132, null, !dbg !2882
  br i1 %134, label %30, label %135, !dbg !2883

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2870, metadata !DIExpression()), !dbg !2873
  %136 = load i8*, i8** %9, align 8, !dbg !2879
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2879
  store i8* %137, i8** %9, align 8, !dbg !2879
  %138 = bitcast i8* %136 to i8**, !dbg !2879
  %139 = load i8*, i8** %138, align 8, !dbg !2879
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2880
  store i8* %139, i8** %140, align 8, !dbg !2881, !tbaa !1067
  %141 = icmp eq i8* %139, null, !dbg !2882
  %142 = select i1 %141, i64 9, i64 10, !dbg !2883
  br label %30, !dbg !2883
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2887 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2891, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8* %1, metadata !2892, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8* %2, metadata !2893, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8* %3, metadata !2894, metadata !DIExpression()), !dbg !2901
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2902
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !2902
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2895, metadata !DIExpression()), !dbg !2903
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2904
  call void @llvm.va_start(i8* nonnull %6), !dbg !2904
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2905
  call void @llvm.va_end(i8* nonnull %6), !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !2907
  ret void, !dbg !2907
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2908 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2909, !tbaa !1067
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.70, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2909
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.85, i64 0, i64 0), i32 5) #18, !dbg !2910
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.86, i64 0, i64 0)) #18, !dbg !2910
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.87, i64 0, i64 0), i32 5) #18, !dbg !2911
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.88, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.89, i64 0, i64 0)) #18, !dbg !2911
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.90, i64 0, i64 0), i32 5) #18, !dbg !2912
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.91, i64 0, i64 0)) #18, !dbg !2912
  ret void, !dbg !2913
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !2914 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %1, metadata !2919, metadata !DIExpression()), !dbg !2920
  %3 = udiv i64 9223372036854775807, %1, !dbg !2921
  %4 = icmp ult i64 %3, %0, !dbg !2921
  br i1 %4, label %5, label %6, !dbg !2923

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !2924
  unreachable, !dbg !2924

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %7, metadata !2926, metadata !DIExpression()) #18, !dbg !2932
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %8, metadata !2931, metadata !DIExpression()) #18, !dbg !2932
  %9 = icmp eq i8* %8, null, !dbg !2935
  %10 = icmp ne i64 %7, 0, !dbg !2937
  %11 = and i1 %10, %9, !dbg !2938
  br i1 %11, label %12, label %13, !dbg !2938

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !2939
  unreachable, !dbg !2939

13:                                               ; preds = %6
  ret i8* %8, !dbg !2940
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2927 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2926, metadata !DIExpression()), !dbg !2941
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !2942
  call void @llvm.dbg.value(metadata i8* %2, metadata !2931, metadata !DIExpression()), !dbg !2941
  %3 = icmp eq i8* %2, null, !dbg !2943
  %4 = icmp ne i64 %0, 0, !dbg !2944
  %5 = and i1 %4, %3, !dbg !2945
  br i1 %5, label %6, label %7, !dbg !2945

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !2946
  unreachable, !dbg !2946

7:                                                ; preds = %1
  ret i8* %2, !dbg !2947
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !2948 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2952, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %2, metadata !2954, metadata !DIExpression()), !dbg !2955
  %4 = udiv i64 9223372036854775807, %2, !dbg !2956
  %5 = icmp ult i64 %4, %1, !dbg !2956
  br i1 %5, label %6, label %7, !dbg !2958

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !2959
  unreachable, !dbg !2959

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()) #18, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %8, metadata !2966, metadata !DIExpression()) #18, !dbg !2967
  %9 = icmp eq i64 %8, 0, !dbg !2969
  %10 = icmp ne i8* %0, null, !dbg !2971
  %11 = and i1 %10, %9, !dbg !2972
  br i1 %11, label %12, label %13, !dbg !2972

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !2973
  br label %19, !dbg !2975

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !2976
  call void @llvm.dbg.value(metadata i8* %14, metadata !2961, metadata !DIExpression()) #18, !dbg !2967
  %15 = icmp eq i8* %14, null, !dbg !2977
  %16 = icmp ne i64 %8, 0, !dbg !2979
  %17 = and i1 %16, %15, !dbg !2980
  br i1 %17, label %18, label %19, !dbg !2980

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2981
  unreachable, !dbg !2981

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2967
  ret i8* %20, !dbg !2982
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2962 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %1, metadata !2966, metadata !DIExpression()), !dbg !2983
  %3 = icmp eq i64 %1, 0, !dbg !2984
  %4 = icmp ne i8* %0, null, !dbg !2985
  %5 = and i1 %4, %3, !dbg !2986
  br i1 %5, label %6, label %7, !dbg !2986

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !2987
  br label %13, !dbg !2988

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %8, metadata !2961, metadata !DIExpression()), !dbg !2983
  %9 = icmp eq i8* %8, null, !dbg !2990
  %10 = icmp ne i64 %1, 0, !dbg !2991
  %11 = and i1 %10, %9, !dbg !2992
  br i1 %11, label %12, label %13, !dbg !2992

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !2993
  unreachable, !dbg !2993

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2983
  ret i8* %14, !dbg !2994
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !420 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !425, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64* %1, metadata !426, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %2, metadata !427, metadata !DIExpression()), !dbg !2995
  %4 = load i64, i64* %1, align 8, !dbg !2996, !tbaa !2231
  call void @llvm.dbg.value(metadata i64 %4, metadata !428, metadata !DIExpression()), !dbg !2995
  %5 = icmp eq i8* %0, null, !dbg !2997
  br i1 %5, label %6, label %20, !dbg !2999

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3000
  br i1 %7, label %8, label %13, !dbg !3003

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %9, metadata !428, metadata !DIExpression()), !dbg !2995
  %10 = icmp ugt i64 %2, 128, !dbg !3006
  %11 = zext i1 %10 to i64, !dbg !3006
  %12 = add nuw nsw i64 %9, %11, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %12, metadata !428, metadata !DIExpression()), !dbg !2995
  br label %13, !dbg !3008

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2995
  call void @llvm.dbg.value(metadata i64 %14, metadata !428, metadata !DIExpression()), !dbg !2995
  %15 = udiv i64 9223372036854775807, %2, !dbg !3009
  %16 = icmp ult i64 %15, %14, !dbg !3009
  br i1 %16, label %19, label %17, !dbg !3011

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !428, metadata !DIExpression()), !dbg !2995
  store i64 %14, i64* %1, align 8, !dbg !3012, !tbaa !2231
  %18 = mul i64 %14, %2, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()) #18, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %28, metadata !2966, metadata !DIExpression()) #18, !dbg !3014
  br label %31, !dbg !3016

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3017
  unreachable, !dbg !3017

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3018
  %22 = icmp ugt i64 %21, %4, !dbg !3021
  br i1 %22, label %24, label %23, !dbg !3022

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3023
  unreachable, !dbg !3023

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3024
  %26 = add nuw i64 %4, 1, !dbg !3025
  %27 = add i64 %26, %25, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %27, metadata !428, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %27, metadata !428, metadata !DIExpression()), !dbg !2995
  store i64 %27, i64* %1, align 8, !dbg !3012, !tbaa !2231
  %28 = mul i64 %27, %2, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()) #18, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %28, metadata !2966, metadata !DIExpression()) #18, !dbg !3014
  %29 = icmp eq i64 %28, 0, !dbg !3027
  br i1 %29, label %30, label %31, !dbg !3016

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3028
  br label %38, !dbg !3029

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3030
  call void @llvm.dbg.value(metadata i8* %33, metadata !2961, metadata !DIExpression()) #18, !dbg !3014
  %34 = icmp eq i8* %33, null, !dbg !3031
  %35 = icmp ne i64 %32, 0, !dbg !3032
  %36 = and i1 %35, %34, !dbg !3033
  br i1 %36, label %37, label %38, !dbg !3033

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3034
  unreachable, !dbg !3034

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3014
  ret i8* %39, !dbg !3035
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3036 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3038, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %0, metadata !2926, metadata !DIExpression()) #18, !dbg !3040
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %2, metadata !2931, metadata !DIExpression()) #18, !dbg !3040
  %3 = icmp eq i8* %2, null, !dbg !3043
  %4 = icmp ne i64 %0, 0, !dbg !3044
  %5 = and i1 %4, %3, !dbg !3045
  br i1 %5, label %6, label %7, !dbg !3045

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3046
  unreachable, !dbg !3046

7:                                                ; preds = %1
  ret i8* %2, !dbg !3047
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3048 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64* %1, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %0, metadata !425, metadata !DIExpression()) #18, !dbg !3055
  call void @llvm.dbg.value(metadata i64* %1, metadata !426, metadata !DIExpression()) #18, !dbg !3055
  call void @llvm.dbg.value(metadata i64 1, metadata !427, metadata !DIExpression()) #18, !dbg !3055
  %3 = load i64, i64* %1, align 8, !dbg !3057, !tbaa !2231
  call void @llvm.dbg.value(metadata i64 %3, metadata !428, metadata !DIExpression()) #18, !dbg !3055
  %4 = icmp eq i8* %0, null, !dbg !3058
  br i1 %4, label %5, label %12, !dbg !3059

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3060
  br i1 %6, label %9, label %7, !dbg !3061

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !428, metadata !DIExpression()) #18, !dbg !3055
  %8 = icmp slt i64 %3, 0, !dbg !3062
  br i1 %8, label %11, label %9, !dbg !3063

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !428, metadata !DIExpression()) #18, !dbg !3055
  store i64 %10, i64* %1, align 8, !dbg !3064, !tbaa !2231
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()) #18, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %18, metadata !2966, metadata !DIExpression()) #18, !dbg !3065
  br label %21, !dbg !3067

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3068
  unreachable, !dbg !3068

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3069
  br i1 %13, label %15, label %14, !dbg !3070

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3071
  unreachable, !dbg !3071

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3072
  %17 = add nuw nsw i64 %3, 1, !dbg !3073
  %18 = add nuw nsw i64 %17, %16, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %18, metadata !428, metadata !DIExpression()) #18, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %18, metadata !428, metadata !DIExpression()) #18, !dbg !3055
  store i64 %18, i64* %1, align 8, !dbg !3064, !tbaa !2231
  call void @llvm.dbg.value(metadata i8* %0, metadata !2961, metadata !DIExpression()) #18, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %18, metadata !2966, metadata !DIExpression()) #18, !dbg !3065
  %19 = icmp eq i64 %18, 0, !dbg !3075
  br i1 %19, label %20, label %21, !dbg !3067

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3076
  br label %28, !dbg !3077

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %23, metadata !2961, metadata !DIExpression()) #18, !dbg !3065
  %24 = icmp eq i8* %23, null, !dbg !3079
  %25 = icmp ne i64 %22, 0, !dbg !3080
  %26 = and i1 %25, %24, !dbg !3081
  br i1 %26, label %27, label %28, !dbg !3081

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3082
  unreachable, !dbg !3082

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3065
  ret i8* %29, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3084 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3086, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %0, metadata !3088, metadata !DIExpression()) #18, !dbg !3093
  call void @llvm.dbg.value(metadata i64 1, metadata !3091, metadata !DIExpression()) #18, !dbg !3093
  %2 = icmp slt i64 %0, 0, !dbg !3095
  br i1 %2, label %6, label %3, !dbg !3097

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %4, metadata !3092, metadata !DIExpression()) #18, !dbg !3093
  %5 = icmp eq i8* %4, null, !dbg !3099
  br i1 %5, label %6, label %7, !dbg !3100

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3101
  unreachable, !dbg !3101

7:                                                ; preds = %3
  ret i8* %4, !dbg !3102
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3089 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3088, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3103
  %3 = udiv i64 9223372036854775807, %1, !dbg !3104
  %4 = icmp ult i64 %3, %0, !dbg !3104
  br i1 %4, label %8, label %5, !dbg !3105

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %6, metadata !3092, metadata !DIExpression()), !dbg !3103
  %7 = icmp eq i8* %6, null, !dbg !3107
  br i1 %7, label %8, label %9, !dbg !3108

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3109
  unreachable, !dbg !3109

9:                                                ; preds = %5
  ret i8* %6, !dbg !3110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()) #18, !dbg !3118
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3120
  call void @llvm.dbg.value(metadata i8* %3, metadata !2931, metadata !DIExpression()) #18, !dbg !3118
  %4 = icmp eq i8* %3, null, !dbg !3121
  %5 = icmp ne i64 %1, 0, !dbg !3122
  %6 = and i1 %5, %4, !dbg !3123
  br i1 %6, label %7, label %8, !dbg !3123

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3124
  unreachable, !dbg !3124

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3125, metadata !DIExpression()) #18, !dbg !3134
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()) #18, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()) #18, !dbg !3134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3136
  ret i8* %3, !dbg !3137
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3138 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()), !dbg !3141
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3142
  %3 = add i64 %2, 1, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %0, metadata !3115, metadata !DIExpression()) #18, !dbg !3144
  call void @llvm.dbg.value(metadata i64 %3, metadata !3116, metadata !DIExpression()) #18, !dbg !3144
  call void @llvm.dbg.value(metadata i64 %3, metadata !2926, metadata !DIExpression()) #18, !dbg !3146
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %4, metadata !2931, metadata !DIExpression()) #18, !dbg !3146
  %5 = icmp eq i8* %4, null, !dbg !3149
  %6 = icmp ne i64 %3, 0, !dbg !3150
  %7 = and i1 %6, %5, !dbg !3151
  br i1 %7, label %8, label %9, !dbg !3151

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3152
  unreachable, !dbg !3152

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3125, metadata !DIExpression()) #18, !dbg !3153
  call void @llvm.dbg.value(metadata i8* %0, metadata !3132, metadata !DIExpression()) #18, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %3, metadata !3133, metadata !DIExpression()) #18, !dbg !3153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3155
  ret i8* %4, !dbg !3156
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3157 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3158, !tbaa !1141
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.102, i64 0, i64 0), i32 5) #18, !dbg !3159
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* %2) #18, !dbg !3160
  tail call void @abort() #22, !dbg !3161
  unreachable, !dbg !3161
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3162 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3164, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()), !dbg !3170
  %3 = icmp eq i64 %0, 0, !dbg !3171
  %4 = icmp eq i64 %1, 0, !dbg !3172
  %5 = or i1 %3, %4, !dbg !3173
  br i1 %5, label %11, label %6, !dbg !3173

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3167, metadata !DIExpression()), !dbg !3174
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3175
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3175
  br i1 %8, label %9, label %11, !dbg !3177

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3178
  store i32 12, i32* %10, align 4, !dbg !3180, !tbaa !1141
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3164, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %12, metadata !3165, metadata !DIExpression()), !dbg !3170
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %14, metadata !3166, metadata !DIExpression()), !dbg !3170
  br label %15, !dbg !3182

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3170
  ret i8* %16, !dbg !3183
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3184 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3192, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %1, metadata !3193, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %2, metadata !3194, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3195, metadata !DIExpression()), !dbg !3201
  %6 = bitcast i32* %5 to i8*, !dbg !3202
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3202
  %7 = icmp eq i32* %0, null, !dbg !3203
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3205
  call void @llvm.dbg.value(metadata i32* %8, metadata !3192, metadata !DIExpression()), !dbg !3201
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %9, metadata !3196, metadata !DIExpression()), !dbg !3201
  %10 = icmp ugt i64 %9, -3, !dbg !3207
  %11 = icmp ne i64 %2, 0, !dbg !3208
  %12 = and i1 %11, %10, !dbg !3209
  br i1 %12, label %13, label %18, !dbg !3209

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3210
  br i1 %14, label %18, label %15, !dbg !3211

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3212, !tbaa !1182
  call void @llvm.dbg.value(metadata i8 %16, metadata !3198, metadata !DIExpression()), !dbg !3213
  %17 = zext i8 %16 to i32, !dbg !3214
  store i32 %17, i32* %8, align 4, !dbg !3215, !tbaa !1141
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3201
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3216
  ret i64 %19, !dbg !3216
}

; Function Attrs: nounwind
declare !dbg !446 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3217 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3223, metadata !DIExpression()), !dbg !3228
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3229
  call void @llvm.dbg.value(metadata i1 undef, metadata !3224, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3230, metadata !DIExpression()), !dbg !3234
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3236
  %4 = load i32, i32* %3, align 8, !dbg !3236, !tbaa !3237
  %5 = and i32 %4, 32, !dbg !3236
  %6 = icmp eq i32 %5, 0, !dbg !3239
  call void @llvm.dbg.value(metadata i1 %6, metadata !3226, metadata !DIExpression()), !dbg !3228
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3240
  %8 = icmp ne i32 %7, 0, !dbg !3241
  call void @llvm.dbg.value(metadata i1 %8, metadata !3227, metadata !DIExpression()), !dbg !3228
  br i1 %6, label %9, label %19, !dbg !3242

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3244
  call void @llvm.dbg.value(metadata i1 %10, metadata !3224, metadata !DIExpression()), !dbg !3228
  %11 = xor i1 %8, true, !dbg !3245
  %12 = or i1 %10, %11, !dbg !3245
  %13 = sext i1 %8 to i32, !dbg !3245
  br i1 %12, label %22, label %14, !dbg !3245

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3246
  %16 = load i32, i32* %15, align 4, !dbg !3246, !tbaa !1141
  %17 = icmp ne i32 %16, 9, !dbg !3247
  %18 = sext i1 %17 to i32, !dbg !3248
  br label %22, !dbg !3248

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3249

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3251
  store i32 0, i32* %21, align 4, !dbg !3253, !tbaa !1141
  br label %22, !dbg !3251

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3228
  ret i32 %23, !dbg !3254
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3255 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3257, metadata !DIExpression()), !dbg !3262
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3263
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3263
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3258, metadata !DIExpression()), !dbg !3264
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3265
  %5 = icmp eq i32 %4, 0, !dbg !3265
  br i1 %5, label %6, label %13, !dbg !3267

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3268
  %8 = load i16, i16* %7, align 16, !dbg !3268
  %9 = icmp eq i16 %8, 67, !dbg !3268
  br i1 %9, label %13, label %10, !dbg !3269

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0), i64 6), !dbg !3270
  %12 = icmp ne i32 %11, 0, !dbg !3271
  br label %13, !dbg !3269

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3262
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3272
  ret i1 %14, !dbg !3272
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3273 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %1, metadata !3275, metadata !DIExpression()), !dbg !3277
  %2 = icmp eq i8* %1, null, !dbg !3278
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i64 0, i64 0), i8* %1, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %3, metadata !3275, metadata !DIExpression()), !dbg !3277
  %4 = load i8, i8* %3, align 1, !dbg !3281, !tbaa !1182
  %5 = icmp eq i8 %4, 0, !dbg !3285
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %3, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %6, metadata !3275, metadata !DIExpression()), !dbg !3277
  ret i8* %6, !dbg !3287
}

; Function Attrs: nounwind
declare !dbg !898 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3292, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %1, metadata !3293, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %2, metadata !3294, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 %0, metadata !3296, metadata !DIExpression()) #18, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %1, metadata !3299, metadata !DIExpression()) #18, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %2, metadata !3300, metadata !DIExpression()) #18, !dbg !3305
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()) #18, !dbg !3313
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %4, metadata !3312, metadata !DIExpression()) #18, !dbg !3313
  call void @llvm.dbg.value(metadata i8* %4, metadata !3301, metadata !DIExpression()) #18, !dbg !3305
  %5 = icmp eq i8* %4, null, !dbg !3316
  br i1 %5, label %6, label %9, !dbg !3317

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3318
  br i1 %7, label %19, label %8, !dbg !3321

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3322, !tbaa !1182
  br label %19, !dbg !3323

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %10, metadata !3302, metadata !DIExpression()) #18, !dbg !3325
  %11 = icmp ult i64 %10, %2, !dbg !3326
  br i1 %11, label %12, label %14, !dbg !3328

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %1, metadata !3331, metadata !DIExpression()) #18, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %4, metadata !3334, metadata !DIExpression()) #18, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %13, metadata !3335, metadata !DIExpression()) #18, !dbg !3336
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3338
  br label %19, !dbg !3339

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3340
  br i1 %15, label %19, label %16, !dbg !3343

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !3331, metadata !DIExpression()) #18, !dbg !3346
  call void @llvm.dbg.value(metadata i8* %4, metadata !3334, metadata !DIExpression()) #18, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %17, metadata !3335, metadata !DIExpression()) #18, !dbg !3346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3348
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3349
  store i8 0, i8* %18, align 1, !dbg !3350, !tbaa !1182
  br label %19, !dbg !3351

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3352
  ret i32 %20, !dbg !3353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3354 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()) #18, !dbg !3358
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %2, metadata !3312, metadata !DIExpression()) #18, !dbg !3358
  ret i8* %2, !dbg !3361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3362 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3368, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32 0, metadata !3369, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32 0, metadata !3371, metadata !DIExpression()), !dbg !3372
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3373
  call void @llvm.dbg.value(metadata i32 %2, metadata !3370, metadata !DIExpression()), !dbg !3372
  %3 = icmp slt i32 %2, 0, !dbg !3374
  br i1 %3, label %4, label %6, !dbg !3376

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3377
  br label %24, !dbg !3378

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3379
  %8 = icmp eq i32 %7, 0, !dbg !3379
  br i1 %8, label %13, label %9, !dbg !3381

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3382
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3383
  %12 = icmp eq i64 %11, -1, !dbg !3384
  br i1 %12, label %16, label %13, !dbg !3385

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3386
  %15 = icmp eq i32 %14, 0, !dbg !3386
  br i1 %15, label %16, label %18, !dbg !3387

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3369, metadata !DIExpression()), !dbg !3372
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3388
  call void @llvm.dbg.value(metadata i32 %21, metadata !3371, metadata !DIExpression()), !dbg !3372
  br label %24, !dbg !3389

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3390
  %20 = load i32, i32* %19, align 4, !dbg !3390, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 %20, metadata !3369, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32 %20, metadata !3369, metadata !DIExpression()), !dbg !3372
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3388
  call void @llvm.dbg.value(metadata i32 %21, metadata !3371, metadata !DIExpression()), !dbg !3372
  %22 = icmp eq i32 %20, 0, !dbg !3391
  br i1 %22, label %24, label %23, !dbg !3389

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3393, !tbaa !1141
  call void @llvm.dbg.value(metadata i32 -1, metadata !3371, metadata !DIExpression()), !dbg !3372
  br label %24, !dbg !3395

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3372
  ret i32 %25, !dbg !3396
}

; Function Attrs: nofree nounwind
declare !dbg !907 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !942 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !943 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3397 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3403, metadata !DIExpression()), !dbg !3404
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3405
  br i1 %2, label %6, label %3, !dbg !3407

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3408
  %5 = icmp eq i32 %4, 0, !dbg !3408
  br i1 %5, label %6, label %8, !dbg !3409

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3410
  br label %17, !dbg !3411

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3412, metadata !DIExpression()) #18, !dbg !3417
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3419
  %10 = load i32, i32* %9, align 8, !dbg !3419, !tbaa !3237
  %11 = and i32 %10, 256, !dbg !3421
  %12 = icmp eq i32 %11, 0, !dbg !3421
  br i1 %12, label %15, label %13, !dbg !3422

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3423
  br label %15, !dbg !3423

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3424
  br label %17, !dbg !3425

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3404
  ret i32 %18, !dbg !3426
}

; Function Attrs: nofree nounwind
declare !dbg !951 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3427 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3434, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3435, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %2, metadata !3436, metadata !DIExpression()), !dbg !3440
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3441
  %5 = load i8*, i8** %4, align 8, !dbg !3441, !tbaa !3442
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3443
  %7 = load i8*, i8** %6, align 8, !dbg !3443, !tbaa !3444
  %8 = icmp eq i8* %5, %7, !dbg !3445
  br i1 %8, label %9, label %28, !dbg !3446

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3447
  %11 = load i8*, i8** %10, align 8, !dbg !3447, !tbaa !3448
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3449
  %13 = load i8*, i8** %12, align 8, !dbg !3449, !tbaa !3450
  %14 = icmp eq i8* %11, %13, !dbg !3451
  br i1 %14, label %15, label %28, !dbg !3452

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3453
  %17 = load i8*, i8** %16, align 8, !dbg !3453, !tbaa !3454
  %18 = icmp eq i8* %17, null, !dbg !3455
  br i1 %18, label %19, label %28, !dbg !3456

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3457
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %21, metadata !3437, metadata !DIExpression()), !dbg !3459
  %22 = icmp eq i64 %21, -1, !dbg !3460
  br i1 %22, label %30, label %23, !dbg !3462

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3463
  %25 = load i32, i32* %24, align 8, !dbg !3464, !tbaa !3237
  %26 = and i32 %25, -17, !dbg !3464
  store i32 %26, i32* %24, align 8, !dbg !3464, !tbaa !3237
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3465
  store i64 %21, i64* %27, align 8, !dbg !3466, !tbaa !3467
  br label %30, !dbg !3468

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3469
  br label %30, !dbg !3470

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3440
  ret i32 %31, !dbg !3471
}

; Function Attrs: nofree nounwind
declare !dbg !1027 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !127, !132, !183, !189, !230, !374, !368, !416, !437, !440, !443, !462, !501, !508, !901, !904, !948, !989}
!llvm.ident = !{!1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030, !1030}
!llvm.module.flags = !{!1031, !1032, !1033, !1034, !1035}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 47, type: !122, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !9, globals: !121, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/printenv.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 38, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2, isUnsigned: true)
!9 = !{!10, !20, !81, !85, !89, !92, !95, !102, !14, !71, !117}
!10 = !DISubprogram(name: "dcgettext", scope: !11, file: !11, line: 51, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!11 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !16, !16, !18}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DISubprogram(name: "fputs_unlocked", scope: !21, file: !21, line: 662, type: !22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!22 = !DISubroutineType(types: !23)
!23 = !{!18, !16, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !27)
!26 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !43, !44, !45, !46, !50, !52, !54, !58, !61, !63, !66, !69, !70, !72, !76, !77}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !26, line: 51, baseType: !18, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !25, file: !26, line: 54, baseType: !14, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !25, file: !26, line: 55, baseType: !14, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !25, file: !26, line: 56, baseType: !14, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !25, file: !26, line: 57, baseType: !14, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !25, file: !26, line: 58, baseType: !14, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !25, file: !26, line: 59, baseType: !14, size: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !25, file: !26, line: 60, baseType: !14, size: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !25, file: !26, line: 61, baseType: !14, size: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !25, file: !26, line: 64, baseType: !14, size: 64, offset: 576)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !25, file: !26, line: 65, baseType: !14, size: 64, offset: 640)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !25, file: !26, line: 66, baseType: !14, size: 64, offset: 704)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !25, file: !26, line: 68, baseType: !41, size: 64, offset: 768)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !26, line: 36, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !25, file: !26, line: 70, baseType: !24, size: 64, offset: 832)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !25, file: !26, line: 72, baseType: !18, size: 32, offset: 896)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !26, line: 73, baseType: !18, size: 32, offset: 928)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !25, file: !26, line: 74, baseType: !47, size: 64, offset: 960)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !48, line: 152, baseType: !49)
!48 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !25, file: !26, line: 77, baseType: !51, size: 16, offset: 1024)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !25, file: !26, line: 78, baseType: !53, size: 8, offset: 1040)
!53 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !25, file: !26, line: 79, baseType: !55, size: 8, offset: 1048)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 1)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !26, line: 81, baseType: !59, size: 64, offset: 1088)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !26, line: 43, baseType: null)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !26, line: 89, baseType: !62, size: 64, offset: 1152)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !48, line: 153, baseType: !49)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !25, file: !26, line: 91, baseType: !64, size: 64, offset: 1216)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !26, line: 37, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !25, file: !26, line: 92, baseType: !67, size: 64, offset: 1280)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !26, line: 38, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !25, file: !26, line: 93, baseType: !24, size: 64, offset: 1344)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !25, file: !26, line: 94, baseType: !71, size: 64, offset: 1408)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !25, file: !26, line: 95, baseType: !73, size: 64, offset: 1472)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !25, file: !26, line: 96, baseType: !18, size: 32, offset: 1536)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !25, file: !26, line: 98, baseType: !78, size: 160, offset: 1568)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 20)
!81 = !DISubprogram(name: "set_program_name", scope: !82, file: !82, line: 37, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!82 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!83 = !DISubroutineType(types: !84)
!84 = !{null, !16}
!85 = !DISubprogram(name: "setlocale", scope: !86, file: !86, line: 122, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!86 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!87 = !DISubroutineType(types: !88)
!88 = !{!14, !18, !16}
!89 = !DISubprogram(name: "bindtextdomain", scope: !11, file: !11, line: 86, type: !90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!90 = !DISubroutineType(types: !91)
!91 = !{!14, !16, !16}
!92 = !DISubprogram(name: "textdomain", scope: !11, file: !11, line: 82, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!93 = !DISubroutineType(types: !94)
!94 = !{!14, !16}
!95 = !DISubprogram(name: "atexit", scope: !96, file: !96, line: 595, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!96 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!97 = !DISubroutineType(types: !98)
!98 = !{!18, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{null}
!102 = !DISubprogram(name: "getopt_long", scope: !103, file: !103, line: 66, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!103 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!104 = !DISubroutineType(types: !105)
!105 = !{!18, !18, !106, !16, !108, !115}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !103, line: 50, size: 256, elements: !111)
!111 = !{!112, !113, !114, !116}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !103, line: 52, baseType: !16, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !110, file: !103, line: 55, baseType: !18, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !110, file: !103, line: 56, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !103, line: 57, baseType: !18, size: 32, offset: 192)
!117 = !DISubprogram(name: "version_etc", scope: !118, file: !118, line: 69, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!118 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!119 = !DISubroutineType(types: !120)
!120 = !{null, !24, !16, !16, !16, null}
!121 = !{!0}
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1024, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 4)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "Version", scope: !127, file: !128, line: 2, type: !16, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !129, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!129 = !{!125}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "file_name", scope: !132, file: !133, line: 46, type: !16, isLocal: true, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !134, globals: !177, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!134 = !{!135, !10, !171, !173}
!135 = !DISubprogram(name: "close_stream", scope: !136, file: !136, line: 2, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!136 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!137 = !DISubroutineType(types: !138)
!138 = !{!18, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !140, file: !26, line: 51, baseType: !18, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !140, file: !26, line: 54, baseType: !14, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !140, file: !26, line: 55, baseType: !14, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !140, file: !26, line: 56, baseType: !14, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !140, file: !26, line: 57, baseType: !14, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !140, file: !26, line: 58, baseType: !14, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !140, file: !26, line: 59, baseType: !14, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !140, file: !26, line: 60, baseType: !14, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !140, file: !26, line: 61, baseType: !14, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !140, file: !26, line: 64, baseType: !14, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !140, file: !26, line: 65, baseType: !14, size: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !140, file: !26, line: 66, baseType: !14, size: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !140, file: !26, line: 68, baseType: !41, size: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !140, file: !26, line: 70, baseType: !139, size: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !140, file: !26, line: 72, baseType: !18, size: 32, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !140, file: !26, line: 73, baseType: !18, size: 32, offset: 928)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !140, file: !26, line: 74, baseType: !47, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !140, file: !26, line: 77, baseType: !51, size: 16, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !140, file: !26, line: 78, baseType: !53, size: 8, offset: 1040)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !140, file: !26, line: 79, baseType: !55, size: 8, offset: 1048)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !140, file: !26, line: 81, baseType: !59, size: 64, offset: 1088)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !140, file: !26, line: 89, baseType: !62, size: 64, offset: 1152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !140, file: !26, line: 91, baseType: !64, size: 64, offset: 1216)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !140, file: !26, line: 92, baseType: !67, size: 64, offset: 1280)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !140, file: !26, line: 93, baseType: !139, size: 64, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !140, file: !26, line: 94, baseType: !71, size: 64, offset: 1408)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !140, file: !26, line: 95, baseType: !73, size: 64, offset: 1472)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !140, file: !26, line: 96, baseType: !18, size: 32, offset: 1536)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !140, file: !26, line: 98, baseType: !78, size: 160, offset: 1568)
!171 = !DISubprogram(name: "quotearg_colon", scope: !172, file: !172, line: 391, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!172 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !DISubprogram(name: "error", scope: !174, file: !174, line: 52, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!174 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!175 = !DISubroutineType(types: !176)
!176 = !{null, !18, !18, !16, null}
!177 = !{!130, !178}
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !132, file: !133, line: 56, type: !180, isLocal: true, isDefinition: true)
!180 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "exit_failure", scope: !183, file: !184, line: 24, type: !186, isLocal: false, isDefinition: true)
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !185, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!185 = !{!181}
!186 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "program_name", scope: !189, file: !190, line: 33, type: !16, isLocal: false, isDefinition: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !191, globals: !227, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = !{!71, !192, !14}
!192 = !DISubprogram(name: "fputs", scope: !21, file: !21, line: 626, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!193 = !DISubroutineType(types: !194)
!194 = !{!18, !16, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !196, file: !26, line: 51, baseType: !18, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !196, file: !26, line: 54, baseType: !14, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !196, file: !26, line: 55, baseType: !14, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !196, file: !26, line: 56, baseType: !14, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !196, file: !26, line: 57, baseType: !14, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !196, file: !26, line: 58, baseType: !14, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !196, file: !26, line: 59, baseType: !14, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !196, file: !26, line: 60, baseType: !14, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !196, file: !26, line: 61, baseType: !14, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !196, file: !26, line: 64, baseType: !14, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !196, file: !26, line: 65, baseType: !14, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !196, file: !26, line: 66, baseType: !14, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !196, file: !26, line: 68, baseType: !41, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !196, file: !26, line: 70, baseType: !195, size: 64, offset: 832)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !196, file: !26, line: 72, baseType: !18, size: 32, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !196, file: !26, line: 73, baseType: !18, size: 32, offset: 928)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !196, file: !26, line: 74, baseType: !47, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !196, file: !26, line: 77, baseType: !51, size: 16, offset: 1024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !196, file: !26, line: 78, baseType: !53, size: 8, offset: 1040)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !196, file: !26, line: 79, baseType: !55, size: 8, offset: 1048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !196, file: !26, line: 81, baseType: !59, size: 64, offset: 1088)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !196, file: !26, line: 89, baseType: !62, size: 64, offset: 1152)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !196, file: !26, line: 91, baseType: !64, size: 64, offset: 1216)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !196, file: !26, line: 92, baseType: !67, size: 64, offset: 1280)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !196, file: !26, line: 93, baseType: !195, size: 64, offset: 1344)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !196, file: !26, line: 94, baseType: !71, size: 64, offset: 1408)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !196, file: !26, line: 95, baseType: !73, size: 64, offset: 1472)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !196, file: !26, line: 96, baseType: !18, size: 32, offset: 1536)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !196, file: !26, line: 98, baseType: !78, size: 160, offset: 1568)
!227 = !{!187}
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !230, file: !231, line: 85, type: !362, isLocal: false, isDefinition: true)
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !266, globals: !335, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = !{!233, !246, !251}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !172, line: 32, baseType: !6, size: 32, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!235 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!236 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!237 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!238 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!239 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!240 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!241 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!242 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!243 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!244 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!245 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !172, line: 242, baseType: !6, size: 32, elements: !247)
!247 = !{!248, !249, !250}
!248 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!249 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!250 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !252, line: 46, baseType: !6, size: 32, elements: !253)
!252 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!254 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!255 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!256 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!257 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!258 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!259 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!260 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!261 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!262 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!263 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!264 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!265 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!266 = !{!267, !273, !289, !292, !18, !51, !295, !73, !310, !314, !10, !320, !324, !14, !328, !331, !332}
!267 = !DISubprogram(name: "xmemdup", scope: !268, file: !268, line: 62, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!268 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!269 = !DISubroutineType(types: !270)
!270 = !{!71, !271, !75}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!273 = !DISubprogram(name: "quotearg_alloc_mem", scope: !172, file: !172, line: 342, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!274 = !DISubroutineType(types: !275)
!275 = !{!14, !16, !75, !276, !277}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !231, line: 65, size: 448, elements: !280)
!280 = !{!281, !282, !283, !287, !288}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !279, file: !231, line: 68, baseType: !233, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !231, line: 71, baseType: !18, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !279, file: !231, line: 75, baseType: !284, size: 256, offset: 64)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !279, file: !231, line: 78, baseType: !16, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !279, file: !231, line: 81, baseType: !16, size: 64, offset: 384)
!289 = !DISubprogram(name: "free", scope: !96, file: !96, line: 565, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !71}
!292 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !172, file: !172, line: 408, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!293 = !DISubroutineType(types: !294)
!294 = !{!14, !18, !16, !16, !16, !75}
!295 = !DISubprogram(name: "rpl_mbrtowc", scope: !296, file: !296, line: 717, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!296 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!297 = !DISubroutineType(types: !298)
!298 = !{!75, !115, !16, !75, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 13, size: 64, elements: !302)
!301 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !300, file: !301, line: 15, baseType: !18, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !300, file: !301, line: 20, baseType: !305, size: 32, offset: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !301, line: 16, size: 32, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !305, file: !301, line: 18, baseType: !6, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !305, file: !301, line: 19, baseType: !309, size: 32)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !123)
!310 = !DISubprogram(name: "iswprint", scope: !311, file: !311, line: 120, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!311 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!312 = !DISubroutineType(types: !313)
!313 = !{!18, !6}
!314 = !DISubprogram(name: "mbsinit", scope: !315, file: !315, line: 292, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!315 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!316 = !DISubroutineType(types: !317)
!317 = !{!18, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!320 = !DISubprogram(name: "locale_charset", scope: !321, file: !321, line: 35, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!321 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = !DISubroutineType(types: !323)
!323 = !{!16}
!324 = !DISubprogram(name: "c_strcasecmp", scope: !325, file: !325, line: 42, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!325 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!326 = !DISubroutineType(types: !327)
!327 = !{!18, !16, !16}
!328 = !DISubprogram(name: "xmalloc", scope: !268, file: !268, line: 53, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!329 = !DISubroutineType(types: !330)
!330 = !{!71, !75}
!331 = !DISubprogram(name: "xalloc_die", scope: !268, file: !268, line: 51, type: !100, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !19)
!332 = !DISubprogram(name: "xrealloc", scope: !268, file: !268, line: 59, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!333 = !DISubroutineType(types: !334)
!334 = !{!71, !71, !75}
!335 = !{!228, !336, !342, !344, !346, !351, !358, !360}
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !230, file: !231, line: 101, type: !338, isLocal: false, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 320, elements: !340)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!340 = !{!341}
!341 = !DISubrange(count: 10)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !230, file: !231, line: 1052, type: !279, isLocal: false, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !230, file: !231, line: 116, type: !279, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "slot0", scope: !230, file: !231, line: 842, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 256)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "slotvec", scope: !230, file: !231, line: 845, type: !353, isLocal: true, isDefinition: true)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !231, line: 834, size: 128, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !354, file: !231, line: 836, baseType: !73, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !354, file: !231, line: 837, baseType: !14, size: 64, offset: 64)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "nslots", scope: !230, file: !231, line: 843, type: !18, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "slotvec0", scope: !230, file: !231, line: 844, type: !354, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 704, elements: !364)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!364 = !{!365}
!365 = !DISubrange(count: 11)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !368, file: !369, line: 26, type: !371, isLocal: false, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, globals: !370, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!370 = !{!366}
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 376, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 47)
!374 = distinct !DICompileUnit(language: DW_LANG_C99, file: !375, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !376, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!375 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!376 = !{!377}
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !375, line: 40, baseType: !6, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!380 = !{!10, !381, !71}
!381 = !DISubprogram(name: "fputs_unlocked", scope: !21, file: !21, line: 662, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!382 = !DISubroutineType(types: !383)
!383 = !{!18, !16, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !385, file: !26, line: 51, baseType: !18, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !385, file: !26, line: 54, baseType: !14, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !385, file: !26, line: 55, baseType: !14, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !385, file: !26, line: 56, baseType: !14, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !385, file: !26, line: 57, baseType: !14, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !385, file: !26, line: 58, baseType: !14, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !385, file: !26, line: 59, baseType: !14, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !385, file: !26, line: 60, baseType: !14, size: 64, offset: 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !385, file: !26, line: 61, baseType: !14, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !385, file: !26, line: 64, baseType: !14, size: 64, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !385, file: !26, line: 65, baseType: !14, size: 64, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !385, file: !26, line: 66, baseType: !14, size: 64, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !385, file: !26, line: 68, baseType: !41, size: 64, offset: 768)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !385, file: !26, line: 70, baseType: !384, size: 64, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !385, file: !26, line: 72, baseType: !18, size: 32, offset: 896)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !385, file: !26, line: 73, baseType: !18, size: 32, offset: 928)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !385, file: !26, line: 74, baseType: !47, size: 64, offset: 960)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !385, file: !26, line: 77, baseType: !51, size: 16, offset: 1024)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !385, file: !26, line: 78, baseType: !53, size: 8, offset: 1040)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !385, file: !26, line: 79, baseType: !55, size: 8, offset: 1048)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !385, file: !26, line: 81, baseType: !59, size: 64, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !385, file: !26, line: 89, baseType: !62, size: 64, offset: 1152)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !385, file: !26, line: 91, baseType: !64, size: 64, offset: 1216)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !385, file: !26, line: 92, baseType: !67, size: 64, offset: 1280)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !385, file: !26, line: 93, baseType: !384, size: 64, offset: 1344)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !385, file: !26, line: 94, baseType: !71, size: 64, offset: 1408)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !385, file: !26, line: 95, baseType: !73, size: 64, offset: 1472)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !385, file: !26, line: 96, baseType: !18, size: 32, offset: 1536)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !385, file: !26, line: 98, baseType: !78, size: 160, offset: 1568)
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !418, retainedTypes: !431, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!418 = !{!419}
!419 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !420, file: !268, line: 186, baseType: !6, size: 32, elements: !429)
!420 = distinct !DISubprogram(name: "x2nrealloc", scope: !268, file: !268, line: 174, type: !421, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !424)
!421 = !DISubroutineType(types: !422)
!422 = !{!71, !71, !423, !73}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!424 = !{!425, !426, !427, !428}
!425 = !DILocalVariable(name: "p", arg: 1, scope: !420, file: !268, line: 174, type: !71)
!426 = !DILocalVariable(name: "pn", arg: 2, scope: !420, file: !268, line: 174, type: !423)
!427 = !DILocalVariable(name: "s", arg: 3, scope: !420, file: !268, line: 174, type: !73)
!428 = !DILocalVariable(name: "n", scope: !420, file: !268, line: 176, type: !73)
!429 = !{!430}
!430 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!431 = !{!73, !331, !328, !332, !14, !289, !71, !432, !435}
!432 = !DISubprogram(name: "xcalloc", scope: !268, file: !268, line: 57, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!433 = !DISubroutineType(types: !434)
!434 = !{!71, !75, !75}
!435 = !DISubprogram(name: "rpl_calloc", scope: !436, file: !436, line: 688, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!436 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !439, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!439 = !{!10, !173}
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !442, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!442 = !{!71}
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !445, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!445 = !{!446, !73, !458}
!446 = !DISubprogram(name: "mbrtowc", scope: !315, file: !315, line: 296, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!447 = !DISubroutineType(types: !448)
!448 = !{!75, !115, !16, !75, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 13, size: 64, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !450, file: !301, line: 15, baseType: !18, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !450, file: !301, line: 20, baseType: !454, size: 32, offset: 32)
!454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !450, file: !301, line: 16, size: 32, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !454, file: !301, line: 18, baseType: !6, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !454, file: !301, line: 19, baseType: !309, size: 32)
!458 = !DISubprogram(name: "hard_locale", scope: !459, file: !459, line: 26, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!459 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!460 = !DISubroutineType(types: !461)
!461 = !{!180, !18}
!462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !463, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !464, splitDebugInlining: false, nameTableKind: None)
!463 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!464 = !{!465}
!465 = !DISubprogram(name: "rpl_fclose", scope: !466, file: !466, line: 672, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!466 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!467 = !DISubroutineType(types: !468)
!468 = !{!18, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !470, file: !26, line: 51, baseType: !18, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !470, file: !26, line: 54, baseType: !14, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !470, file: !26, line: 55, baseType: !14, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !470, file: !26, line: 56, baseType: !14, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !470, file: !26, line: 57, baseType: !14, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !470, file: !26, line: 58, baseType: !14, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !470, file: !26, line: 59, baseType: !14, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !470, file: !26, line: 60, baseType: !14, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !470, file: !26, line: 61, baseType: !14, size: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !470, file: !26, line: 64, baseType: !14, size: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !470, file: !26, line: 65, baseType: !14, size: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !470, file: !26, line: 66, baseType: !14, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !470, file: !26, line: 68, baseType: !41, size: 64, offset: 768)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !470, file: !26, line: 70, baseType: !469, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !470, file: !26, line: 72, baseType: !18, size: 32, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !470, file: !26, line: 73, baseType: !18, size: 32, offset: 928)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !470, file: !26, line: 74, baseType: !47, size: 64, offset: 960)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !470, file: !26, line: 77, baseType: !51, size: 16, offset: 1024)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !470, file: !26, line: 78, baseType: !53, size: 8, offset: 1040)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !470, file: !26, line: 79, baseType: !55, size: 8, offset: 1048)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !470, file: !26, line: 81, baseType: !59, size: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !470, file: !26, line: 89, baseType: !62, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !470, file: !26, line: 91, baseType: !64, size: 64, offset: 1216)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !470, file: !26, line: 92, baseType: !67, size: 64, offset: 1280)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !470, file: !26, line: 93, baseType: !469, size: 64, offset: 1344)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !470, file: !26, line: 94, baseType: !71, size: 64, offset: 1408)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !470, file: !26, line: 95, baseType: !73, size: 64, offset: 1472)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !470, file: !26, line: 96, baseType: !18, size: 32, offset: 1536)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !470, file: !26, line: 98, baseType: !78, size: 160, offset: 1568)
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !503, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!503 = !{!504}
!504 = !DISubprogram(name: "setlocale_null_r", scope: !505, file: !505, line: 64, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!505 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!506 = !DISubroutineType(types: !507)
!507 = !{!18, !18, !14, !75}
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !510, retainedTypes: !897, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!510 = !{!511}
!511 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !512, line: 41, baseType: !6, size: 32, elements: !513)
!512 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896}
!514 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!515 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!516 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!517 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!518 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!519 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!520 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!521 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!522 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!523 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!524 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!525 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!526 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!527 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!528 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!529 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!530 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!531 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!532 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!533 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!534 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!535 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!536 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!537 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!538 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!539 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!540 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!541 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!542 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!543 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!544 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!545 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!546 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!547 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!548 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!549 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!550 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!551 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!552 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!553 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!554 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!555 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!556 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!557 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!558 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!559 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!560 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!561 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!562 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!563 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!622 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!625 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!626 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!627 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!628 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!629 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!630 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!631 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!632 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!633 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!634 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!635 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!636 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!709 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!782 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!783 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!784 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!785 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!786 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!787 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!788 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!789 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!790 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!791 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!792 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!793 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!794 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!795 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!796 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!798 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!799 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!800 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!801 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!802 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!803 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!829 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!830 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!831 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!832 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!833 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!838 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!839 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!840 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!841 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!897 = !{!898, !71}
!898 = !DISubprogram(name: "nl_langinfo", scope: !512, file: !512, line: 661, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!899 = !DISubroutineType(types: !900)
!900 = !{!14, !18}
!901 = distinct !DICompileUnit(language: DW_LANG_C99, file: !902, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !903, splitDebugInlining: false, nameTableKind: None)
!902 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!903 = !{!71, !85}
!904 = distinct !DICompileUnit(language: DW_LANG_C99, file: !905, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !906, splitDebugInlining: false, nameTableKind: None)
!905 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!906 = !{!907, !942, !943, !947}
!907 = !DISubprogram(name: "fileno", scope: !21, file: !21, line: 786, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!908 = !DISubroutineType(types: !909)
!909 = !{!18, !910}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !911, file: !26, line: 51, baseType: !18, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !911, file: !26, line: 54, baseType: !14, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !911, file: !26, line: 55, baseType: !14, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !911, file: !26, line: 56, baseType: !14, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !911, file: !26, line: 57, baseType: !14, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !911, file: !26, line: 58, baseType: !14, size: 64, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !911, file: !26, line: 59, baseType: !14, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !911, file: !26, line: 60, baseType: !14, size: 64, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !911, file: !26, line: 61, baseType: !14, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !911, file: !26, line: 64, baseType: !14, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !911, file: !26, line: 65, baseType: !14, size: 64, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !911, file: !26, line: 66, baseType: !14, size: 64, offset: 704)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !911, file: !26, line: 68, baseType: !41, size: 64, offset: 768)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !911, file: !26, line: 70, baseType: !910, size: 64, offset: 832)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !911, file: !26, line: 72, baseType: !18, size: 32, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !911, file: !26, line: 73, baseType: !18, size: 32, offset: 928)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !911, file: !26, line: 74, baseType: !47, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !911, file: !26, line: 77, baseType: !51, size: 16, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !911, file: !26, line: 78, baseType: !53, size: 8, offset: 1040)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !911, file: !26, line: 79, baseType: !55, size: 8, offset: 1048)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !911, file: !26, line: 81, baseType: !59, size: 64, offset: 1088)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !911, file: !26, line: 89, baseType: !62, size: 64, offset: 1152)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !911, file: !26, line: 91, baseType: !64, size: 64, offset: 1216)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !911, file: !26, line: 92, baseType: !67, size: 64, offset: 1280)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !911, file: !26, line: 93, baseType: !910, size: 64, offset: 1344)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !911, file: !26, line: 94, baseType: !71, size: 64, offset: 1408)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !911, file: !26, line: 95, baseType: !73, size: 64, offset: 1472)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !911, file: !26, line: 96, baseType: !18, size: 32, offset: 1536)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !911, file: !26, line: 98, baseType: !78, size: 160, offset: 1568)
!942 = !DISubprogram(name: "fclose", scope: !21, file: !21, line: 213, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!943 = !DISubprogram(name: "lseek", scope: !944, file: !944, line: 334, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!944 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!945 = !DISubroutineType(types: !946)
!946 = !{!49, !18, !49, !18}
!947 = !DISubprogram(name: "rpl_fflush", scope: !466, file: !466, line: 718, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!948 = distinct !DICompileUnit(language: DW_LANG_C99, file: !949, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !950, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!950 = !{!71, !951, !986}
!951 = !DISubprogram(name: "fflush", scope: !21, file: !21, line: 218, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!952 = !DISubroutineType(types: !953)
!953 = !{!18, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !956)
!956 = !{!957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !955, file: !26, line: 51, baseType: !18, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !955, file: !26, line: 54, baseType: !14, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !955, file: !26, line: 55, baseType: !14, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !955, file: !26, line: 56, baseType: !14, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !955, file: !26, line: 57, baseType: !14, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !955, file: !26, line: 58, baseType: !14, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !955, file: !26, line: 59, baseType: !14, size: 64, offset: 384)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !955, file: !26, line: 60, baseType: !14, size: 64, offset: 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !955, file: !26, line: 61, baseType: !14, size: 64, offset: 512)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !955, file: !26, line: 64, baseType: !14, size: 64, offset: 576)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !955, file: !26, line: 65, baseType: !14, size: 64, offset: 640)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !955, file: !26, line: 66, baseType: !14, size: 64, offset: 704)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !955, file: !26, line: 68, baseType: !41, size: 64, offset: 768)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !955, file: !26, line: 70, baseType: !954, size: 64, offset: 832)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !955, file: !26, line: 72, baseType: !18, size: 32, offset: 896)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !955, file: !26, line: 73, baseType: !18, size: 32, offset: 928)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !955, file: !26, line: 74, baseType: !47, size: 64, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !955, file: !26, line: 77, baseType: !51, size: 16, offset: 1024)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !955, file: !26, line: 78, baseType: !53, size: 8, offset: 1040)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !955, file: !26, line: 79, baseType: !55, size: 8, offset: 1048)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !955, file: !26, line: 81, baseType: !59, size: 64, offset: 1088)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !955, file: !26, line: 89, baseType: !62, size: 64, offset: 1152)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !955, file: !26, line: 91, baseType: !64, size: 64, offset: 1216)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !955, file: !26, line: 92, baseType: !67, size: 64, offset: 1280)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !955, file: !26, line: 93, baseType: !954, size: 64, offset: 1344)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !955, file: !26, line: 94, baseType: !71, size: 64, offset: 1408)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !955, file: !26, line: 95, baseType: !73, size: 64, offset: 1472)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !955, file: !26, line: 96, baseType: !18, size: 32, offset: 1536)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !955, file: !26, line: 98, baseType: !78, size: 160, offset: 1568)
!986 = !DISubprogram(name: "rpl_fseeko", scope: !466, file: !466, line: 1034, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!987 = !DISubroutineType(types: !988)
!988 = !{!18, !954, !49, !18}
!989 = distinct !DICompileUnit(language: DW_LANG_C99, file: !990, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !991, splitDebugInlining: false, nameTableKind: None)
!990 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!991 = !{!71, !992, !943, !1027}
!992 = !DISubprogram(name: "fileno", scope: !21, file: !21, line: 786, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!993 = !DISubroutineType(types: !994)
!994 = !{!18, !995}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 49, size: 1728, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !996, file: !26, line: 51, baseType: !18, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !996, file: !26, line: 54, baseType: !14, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !996, file: !26, line: 55, baseType: !14, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !996, file: !26, line: 56, baseType: !14, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !996, file: !26, line: 57, baseType: !14, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !996, file: !26, line: 58, baseType: !14, size: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !996, file: !26, line: 59, baseType: !14, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !996, file: !26, line: 60, baseType: !14, size: 64, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !996, file: !26, line: 61, baseType: !14, size: 64, offset: 512)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !996, file: !26, line: 64, baseType: !14, size: 64, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !996, file: !26, line: 65, baseType: !14, size: 64, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !996, file: !26, line: 66, baseType: !14, size: 64, offset: 704)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !996, file: !26, line: 68, baseType: !41, size: 64, offset: 768)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !996, file: !26, line: 70, baseType: !995, size: 64, offset: 832)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !996, file: !26, line: 72, baseType: !18, size: 32, offset: 896)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !996, file: !26, line: 73, baseType: !18, size: 32, offset: 928)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !996, file: !26, line: 74, baseType: !47, size: 64, offset: 960)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !996, file: !26, line: 77, baseType: !51, size: 16, offset: 1024)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !996, file: !26, line: 78, baseType: !53, size: 8, offset: 1040)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !996, file: !26, line: 79, baseType: !55, size: 8, offset: 1048)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !996, file: !26, line: 81, baseType: !59, size: 64, offset: 1088)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !996, file: !26, line: 89, baseType: !62, size: 64, offset: 1152)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !996, file: !26, line: 91, baseType: !64, size: 64, offset: 1216)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !996, file: !26, line: 92, baseType: !67, size: 64, offset: 1280)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !996, file: !26, line: 93, baseType: !995, size: 64, offset: 1344)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !996, file: !26, line: 94, baseType: !71, size: 64, offset: 1408)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !996, file: !26, line: 95, baseType: !73, size: 64, offset: 1472)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !996, file: !26, line: 96, baseType: !18, size: 32, offset: 1536)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !996, file: !26, line: 98, baseType: !78, size: 160, offset: 1568)
!1027 = !DISubprogram(name: "fseeko", scope: !21, file: !21, line: 707, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !19)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!18, !995, !49, !18}
!1030 = !{!"clang version 10.0.0 "}
!1031 = !{i32 7, !"Dwarf Version", i32 4}
!1032 = !{i32 2, !"Debug Info Version", i32 3}
!1033 = !{i32 1, !"wchar_size", i32 4}
!1034 = !{i32 7, !"PIC Level", i32 2}
!1035 = !{i32 7, !"PIE Level", i32 2}
!1036 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !1037, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !18}
!1039 = !{!1040}
!1040 = !DILocalVariable(name: "status", arg: 1, scope: !1036, file: !3, line: 56, type: !18)
!1041 = !DILocalVariable(name: "infomap", scope: !1042, file: !1043, line: 636, type: !1055)
!1042 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1043, file: !1043, line: 634, type: !83, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1044)
!1043 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1044 = !{!1045, !1041, !1046, !1047, !1054}
!1045 = !DILocalVariable(name: "program", arg: 1, scope: !1042, file: !1043, line: 634, type: !16)
!1046 = !DILocalVariable(name: "node", scope: !1042, file: !1043, line: 646, type: !16)
!1047 = !DILocalVariable(name: "map_prog", scope: !1042, file: !1043, line: 647, type: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1042, file: !1043, line: 636, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1050, file: !1043, line: 636, baseType: !16, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1050, file: !1043, line: 636, baseType: !16, size: 64, offset: 64)
!1054 = !DILocalVariable(name: "lc_messages", scope: !1042, file: !1043, line: 659, type: !16)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1049, size: 896, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 7)
!1058 = !DILocation(line: 636, column: 67, scope: !1042, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 75, column: 7, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 61, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 58, column: 7)
!1062 = !DILocation(line: 0, scope: !1036)
!1063 = !DILocation(line: 58, column: 14, scope: !1061)
!1064 = !DILocation(line: 58, column: 7, scope: !1036)
!1065 = !DILocation(line: 59, column: 5, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 59, column: 5)
!1067 = !{!1068, !1068, i64 0}
!1068 = !{!"any pointer", !1069, i64 0}
!1069 = !{!"omnipotent char", !1070, i64 0}
!1070 = !{!"Simple C/C++ TBAA"}
!1071 = !DILocation(line: 62, column: 7, scope: !1060)
!1072 = !DILocation(line: 69, column: 7, scope: !1060)
!1073 = !DILocation(line: 72, column: 7, scope: !1060)
!1074 = !DILocation(line: 73, column: 7, scope: !1060)
!1075 = !DILocation(line: 74, column: 7, scope: !1060)
!1076 = !DILocation(line: 0, scope: !1042, inlinedAt: !1059)
!1077 = !DILocation(line: 636, column: 3, scope: !1042, inlinedAt: !1059)
!1078 = !DILocation(line: 647, column: 36, scope: !1042, inlinedAt: !1059)
!1079 = !DILocation(line: 649, column: 3, scope: !1042, inlinedAt: !1059)
!1080 = !DILocation(line: 649, column: 33, scope: !1042, inlinedAt: !1059)
!1081 = !DILocation(line: 650, column: 13, scope: !1042, inlinedAt: !1059)
!1082 = !DILocation(line: 649, column: 20, scope: !1042, inlinedAt: !1059)
!1083 = !{!1084, !1068, i64 0}
!1084 = !{!"infomap", !1068, i64 0, !1068, i64 8}
!1085 = !DILocation(line: 649, column: 10, scope: !1042, inlinedAt: !1059)
!1086 = !DILocation(line: 649, column: 28, scope: !1042, inlinedAt: !1059)
!1087 = distinct !{!1087, !1079, !1081}
!1088 = !DILocation(line: 652, column: 17, scope: !1089, inlinedAt: !1059)
!1089 = distinct !DILexicalBlock(scope: !1042, file: !1043, line: 652, column: 7)
!1090 = !{!1084, !1068, i64 8}
!1091 = !DILocation(line: 652, column: 7, scope: !1089, inlinedAt: !1059)
!1092 = !DILocation(line: 652, column: 7, scope: !1042, inlinedAt: !1059)
!1093 = !DILocation(line: 655, column: 3, scope: !1042, inlinedAt: !1059)
!1094 = !DILocation(line: 659, column: 29, scope: !1042, inlinedAt: !1059)
!1095 = !DILocation(line: 660, column: 7, scope: !1096, inlinedAt: !1059)
!1096 = distinct !DILexicalBlock(scope: !1042, file: !1043, line: 660, column: 7)
!1097 = !DILocation(line: 660, column: 19, scope: !1096, inlinedAt: !1059)
!1098 = !DILocation(line: 660, column: 22, scope: !1096, inlinedAt: !1059)
!1099 = !DILocation(line: 660, column: 7, scope: !1042, inlinedAt: !1059)
!1100 = !DILocation(line: 666, column: 7, scope: !1101, inlinedAt: !1059)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !1043, line: 661, column: 5)
!1102 = !DILocation(line: 668, column: 5, scope: !1101, inlinedAt: !1059)
!1103 = !DILocation(line: 669, column: 3, scope: !1042, inlinedAt: !1059)
!1104 = !DILocation(line: 671, column: 3, scope: !1042, inlinedAt: !1059)
!1105 = !DILocation(line: 673, column: 1, scope: !1042, inlinedAt: !1059)
!1106 = !DILocation(line: 77, column: 3, scope: !1036)
!1107 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !1108, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!18, !18, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1124}
!1112 = !DILocalVariable(name: "argc", arg: 1, scope: !1107, file: !3, line: 81, type: !18)
!1113 = !DILocalVariable(name: "argv", arg: 2, scope: !1107, file: !3, line: 81, type: !1110)
!1114 = !DILocalVariable(name: "env", scope: !1107, file: !3, line: 83, type: !1110)
!1115 = !DILocalVariable(name: "ep", scope: !1107, file: !3, line: 84, type: !14)
!1116 = !DILocalVariable(name: "ap", scope: !1107, file: !3, line: 84, type: !14)
!1117 = !DILocalVariable(name: "i", scope: !1107, file: !3, line: 85, type: !18)
!1118 = !DILocalVariable(name: "ok", scope: !1107, file: !3, line: 86, type: !180)
!1119 = !DILocalVariable(name: "optc", scope: !1107, file: !3, line: 87, type: !18)
!1120 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !1107, file: !3, line: 88, type: !180)
!1121 = !DILocalVariable(name: "matches", scope: !1122, file: !3, line: 121, type: !18)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 120, column: 5)
!1123 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 113, column: 7)
!1124 = !DILocalVariable(name: "matched", scope: !1125, file: !3, line: 125, type: !180)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 124, column: 9)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 123, column: 7)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 123, column: 7)
!1128 = !DILocation(line: 0, scope: !1107)
!1129 = !DILocation(line: 91, column: 21, scope: !1107)
!1130 = !DILocation(line: 91, column: 3, scope: !1107)
!1131 = !DILocation(line: 92, column: 3, scope: !1107)
!1132 = !DILocation(line: 93, column: 3, scope: !1107)
!1133 = !DILocation(line: 94, column: 3, scope: !1107)
!1134 = !DILocalVariable(name: "status", arg: 1, scope: !1135, file: !1043, line: 99, type: !18)
!1135 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !1043, file: !1043, line: 99, type: !1037, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1136)
!1136 = !{!1134}
!1137 = !DILocation(line: 0, scope: !1135, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 96, column: 3, scope: !1107)
!1139 = !DILocation(line: 102, column: 18, scope: !1140, inlinedAt: !1138)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !1043, line: 101, column: 7)
!1141 = !{!1142, !1142, i64 0}
!1142 = !{!"int", !1069, i64 0}
!1143 = !DILocation(line: 97, column: 3, scope: !1107)
!1144 = !DILocation(line: 99, column: 3, scope: !1107)
!1145 = !DILocation(line: 99, column: 18, scope: !1107)
!1146 = distinct !{!1146, !1144, !1147}
!1147 = !DILocation(line: 111, column: 5, scope: !1107)
!1148 = !DILocation(line: 106, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 102, column: 9)
!1150 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 100, column: 5)
!1151 = !DILocation(line: 107, column: 9, scope: !1149)
!1152 = !DILocation(line: 109, column: 11, scope: !1149)
!1153 = !DILocation(line: 113, column: 7, scope: !1123)
!1154 = !DILocation(line: 113, column: 14, scope: !1123)
!1155 = !DILocation(line: 113, column: 7, scope: !1107)
!1156 = !DILocation(line: 123, column: 7, scope: !1127)
!1157 = !DILocation(line: 115, column: 18, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 115, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 114, column: 5)
!1160 = !DILocation(line: 115, column: 27, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 115, column: 7)
!1162 = !DILocation(line: 115, column: 32, scope: !1161)
!1163 = !DILocation(line: 115, column: 7, scope: !1158)
!1164 = !DILocation(line: 116, column: 9, scope: !1161)
!1165 = !DILocation(line: 115, column: 41, scope: !1161)
!1166 = distinct !{!1166, !1163, !1167}
!1167 = !DILocation(line: 116, column: 9, scope: !1158)
!1168 = !DILocation(line: 0, scope: !1122)
!1169 = !DILocation(line: 0, scope: !1125)
!1170 = !DILocation(line: 128, column: 23, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 128, column: 15)
!1172 = !DILocation(line: 128, column: 15, scope: !1171)
!1173 = !DILocation(line: 128, column: 15, scope: !1125)
!1174 = !DILocation(line: 131, column: 22, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 131, column: 11)
!1176 = !DILocation(line: 131, column: 31, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 131, column: 11)
!1178 = !DILocation(line: 131, column: 11, scope: !1175)
!1179 = !DILocation(line: 134, column: 20, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 132, column: 13)
!1181 = !DILocation(line: 135, column: 22, scope: !1180)
!1182 = !{!1069, !1069, i64 0}
!1183 = !DILocation(line: 135, column: 26, scope: !1180)
!1184 = !DILocation(line: 135, column: 34, scope: !1180)
!1185 = !DILocation(line: 135, column: 37, scope: !1180)
!1186 = !DILocation(line: 135, column: 41, scope: !1180)
!1187 = !DILocation(line: 135, column: 49, scope: !1180)
!1188 = !DILocation(line: 135, column: 55, scope: !1180)
!1189 = !DILocation(line: 135, column: 64, scope: !1180)
!1190 = !DILocation(line: 135, column: 58, scope: !1180)
!1191 = !DILocation(line: 135, column: 15, scope: !1180)
!1192 = !DILocation(line: 137, column: 23, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 137, column: 23)
!1194 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 136, column: 17)
!1195 = !DILocation(line: 137, column: 34, scope: !1193)
!1196 = !DILocation(line: 137, column: 37, scope: !1193)
!1197 = !DILocation(line: 137, column: 41, scope: !1193)
!1198 = !DILocation(line: 137, column: 23, scope: !1194)
!1199 = !DILocation(line: 139, column: 23, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 138, column: 21)
!1201 = !DILocation(line: 142, column: 23, scope: !1200)
!1202 = distinct !{!1202, !1191, !1203}
!1203 = !DILocation(line: 144, column: 17, scope: !1180)
!1204 = !DILocation(line: 131, column: 37, scope: !1177)
!1205 = distinct !{!1205, !1178, !1206}
!1206 = !DILocation(line: 145, column: 13, scope: !1175)
!1207 = !DILocation(line: 147, column: 22, scope: !1125)
!1208 = !DILocation(line: 147, column: 19, scope: !1125)
!1209 = !DILocation(line: 148, column: 9, scope: !1126)
!1210 = !DILocation(line: 123, column: 34, scope: !1126)
!1211 = !DILocation(line: 123, column: 26, scope: !1126)
!1212 = distinct !{!1212, !1156, !1213}
!1213 = !DILocation(line: 148, column: 9, scope: !1127)
!1214 = !DILocation(line: 150, column: 31, scope: !1122)
!1215 = !DILocation(line: 150, column: 29, scope: !1122)
!1216 = !DILocation(line: 150, column: 21, scope: !1122)
!1217 = !DILocation(line: 154, column: 1, scope: !1107)
!1218 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !133, file: !133, line: 51, type: !83, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132, retainedNodes: !1219)
!1219 = !{!1220}
!1220 = !DILocalVariable(name: "file", arg: 1, scope: !1218, file: !133, line: 51, type: !16)
!1221 = !DILocation(line: 0, scope: !1218)
!1222 = !DILocation(line: 53, column: 13, scope: !1218)
!1223 = !DILocation(line: 54, column: 1, scope: !1218)
!1224 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !133, file: !133, line: 88, type: !1225, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !180}
!1227 = !{!1228}
!1228 = !DILocalVariable(name: "ignore", arg: 1, scope: !1224, file: !133, line: 88, type: !180)
!1229 = !DILocation(line: 0, scope: !1224)
!1230 = !DILocation(line: 90, column: 16, scope: !1224)
!1231 = !{!1232, !1232, i64 0}
!1232 = !{!"_Bool", !1069, i64 0}
!1233 = !DILocation(line: 91, column: 1, scope: !1224)
!1234 = distinct !DISubprogram(name: "close_stdout", scope: !133, file: !133, line: 117, type: !100, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !132, retainedNodes: !1235)
!1235 = !{!1236}
!1236 = !DILocalVariable(name: "write_error", scope: !1237, file: !133, line: 122, type: !16)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !133, line: 121, column: 5)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !133, line: 119, column: 7)
!1239 = !DILocation(line: 119, column: 21, scope: !1238)
!1240 = !DILocation(line: 119, column: 7, scope: !1238)
!1241 = !DILocation(line: 119, column: 29, scope: !1238)
!1242 = !DILocation(line: 120, column: 7, scope: !1238)
!1243 = !DILocation(line: 120, column: 12, scope: !1238)
!1244 = !{i8 0, i8 2}
!1245 = !DILocation(line: 120, column: 25, scope: !1238)
!1246 = !DILocation(line: 120, column: 28, scope: !1238)
!1247 = !DILocation(line: 120, column: 34, scope: !1238)
!1248 = !DILocation(line: 119, column: 7, scope: !1234)
!1249 = !DILocation(line: 122, column: 33, scope: !1237)
!1250 = !DILocation(line: 0, scope: !1237)
!1251 = !DILocation(line: 123, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1237, file: !133, line: 123, column: 11)
!1253 = !DILocation(line: 0, scope: !1252)
!1254 = !DILocation(line: 123, column: 11, scope: !1237)
!1255 = !DILocation(line: 124, column: 36, scope: !1252)
!1256 = !DILocation(line: 124, column: 9, scope: !1252)
!1257 = !DILocation(line: 127, column: 9, scope: !1252)
!1258 = !DILocation(line: 129, column: 14, scope: !1237)
!1259 = !DILocation(line: 129, column: 7, scope: !1237)
!1260 = !DILocation(line: 134, column: 42, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1234, file: !133, line: 134, column: 7)
!1262 = !DILocation(line: 134, column: 28, scope: !1261)
!1263 = !DILocation(line: 134, column: 50, scope: !1261)
!1264 = !DILocation(line: 134, column: 7, scope: !1234)
!1265 = !DILocation(line: 135, column: 12, scope: !1261)
!1266 = !DILocation(line: 135, column: 5, scope: !1261)
!1267 = !DILocation(line: 136, column: 1, scope: !1234)
!1268 = distinct !DISubprogram(name: "set_program_name", scope: !190, file: !190, line: 39, type: !83, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1269)
!1269 = !{!1270, !1271, !1272}
!1270 = !DILocalVariable(name: "argv0", arg: 1, scope: !1268, file: !190, line: 39, type: !16)
!1271 = !DILocalVariable(name: "slash", scope: !1268, file: !190, line: 46, type: !16)
!1272 = !DILocalVariable(name: "base", scope: !1268, file: !190, line: 47, type: !16)
!1273 = !DILocation(line: 0, scope: !1268)
!1274 = !DILocation(line: 51, column: 13, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1268, file: !190, line: 51, column: 7)
!1276 = !DILocation(line: 51, column: 7, scope: !1268)
!1277 = !DILocation(line: 55, column: 14, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !190, line: 52, column: 5)
!1279 = !DILocation(line: 54, column: 7, scope: !1278)
!1280 = !DILocation(line: 56, column: 7, scope: !1278)
!1281 = !DILocation(line: 59, column: 11, scope: !1268)
!1282 = !DILocation(line: 60, column: 17, scope: !1268)
!1283 = !DILocation(line: 60, column: 11, scope: !1268)
!1284 = !DILocation(line: 61, column: 12, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1268, file: !190, line: 61, column: 7)
!1286 = !DILocation(line: 61, column: 20, scope: !1285)
!1287 = !DILocation(line: 61, column: 25, scope: !1285)
!1288 = !DILocation(line: 61, column: 42, scope: !1285)
!1289 = !DILocation(line: 61, column: 28, scope: !1285)
!1290 = !DILocation(line: 61, column: 61, scope: !1285)
!1291 = !DILocation(line: 61, column: 7, scope: !1268)
!1292 = !DILocation(line: 64, column: 11, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !190, line: 64, column: 11)
!1294 = distinct !DILexicalBlock(scope: !1285, file: !190, line: 62, column: 5)
!1295 = !DILocation(line: 64, column: 36, scope: !1293)
!1296 = !DILocation(line: 64, column: 11, scope: !1294)
!1297 = !DILocation(line: 66, column: 24, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !190, line: 65, column: 9)
!1299 = !DILocation(line: 70, column: 41, scope: !1298)
!1300 = !DILocation(line: 72, column: 9, scope: !1298)
!1301 = !DILocation(line: 84, column: 16, scope: !1268)
!1302 = !DILocation(line: 90, column: 27, scope: !1268)
!1303 = !DILocation(line: 92, column: 1, scope: !1268)
!1304 = distinct !DISubprogram(name: "clone_quoting_options", scope: !231, file: !231, line: 122, type: !1305, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1308)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1307, !1307}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!1308 = !{!1309, !1310, !1311}
!1309 = !DILocalVariable(name: "o", arg: 1, scope: !1304, file: !231, line: 122, type: !1307)
!1310 = !DILocalVariable(name: "e", scope: !1304, file: !231, line: 124, type: !18)
!1311 = !DILocalVariable(name: "p", scope: !1304, file: !231, line: 125, type: !1307)
!1312 = !DILocation(line: 0, scope: !1304)
!1313 = !DILocation(line: 124, column: 11, scope: !1304)
!1314 = !DILocation(line: 125, column: 40, scope: !1304)
!1315 = !DILocation(line: 125, column: 31, scope: !1304)
!1316 = !DILocation(line: 127, column: 9, scope: !1304)
!1317 = !DILocation(line: 128, column: 3, scope: !1304)
!1318 = distinct !DISubprogram(name: "get_quoting_style", scope: !231, file: !231, line: 133, type: !1319, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!233, !277}
!1321 = !{!1322}
!1322 = !DILocalVariable(name: "o", arg: 1, scope: !1318, file: !231, line: 133, type: !277)
!1323 = !DILocation(line: 0, scope: !1318)
!1324 = !DILocation(line: 135, column: 11, scope: !1318)
!1325 = !DILocation(line: 135, column: 46, scope: !1318)
!1326 = !{!1327, !1069, i64 0}
!1327 = !{!"quoting_options", !1069, i64 0, !1142, i64 4, !1069, i64 8, !1068, i64 40, !1068, i64 48}
!1328 = !DILocation(line: 135, column: 3, scope: !1318)
!1329 = distinct !DISubprogram(name: "set_quoting_style", scope: !231, file: !231, line: 141, type: !1330, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !1307, !233}
!1332 = !{!1333, !1334}
!1333 = !DILocalVariable(name: "o", arg: 1, scope: !1329, file: !231, line: 141, type: !1307)
!1334 = !DILocalVariable(name: "s", arg: 2, scope: !1329, file: !231, line: 141, type: !233)
!1335 = !DILocation(line: 0, scope: !1329)
!1336 = !DILocation(line: 143, column: 4, scope: !1329)
!1337 = !DILocation(line: 143, column: 39, scope: !1329)
!1338 = !DILocation(line: 143, column: 45, scope: !1329)
!1339 = !DILocation(line: 144, column: 1, scope: !1329)
!1340 = distinct !DISubprogram(name: "set_char_quoting", scope: !231, file: !231, line: 152, type: !1341, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!18, !1307, !15, !18}
!1343 = !{!1344, !1345, !1346, !1347, !1349, !1351, !1352}
!1344 = !DILocalVariable(name: "o", arg: 1, scope: !1340, file: !231, line: 152, type: !1307)
!1345 = !DILocalVariable(name: "c", arg: 2, scope: !1340, file: !231, line: 152, type: !15)
!1346 = !DILocalVariable(name: "i", arg: 3, scope: !1340, file: !231, line: 152, type: !18)
!1347 = !DILocalVariable(name: "uc", scope: !1340, file: !231, line: 154, type: !1348)
!1348 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1349 = !DILocalVariable(name: "p", scope: !1340, file: !231, line: 155, type: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1351 = !DILocalVariable(name: "shift", scope: !1340, file: !231, line: 157, type: !18)
!1352 = !DILocalVariable(name: "r", scope: !1340, file: !231, line: 158, type: !18)
!1353 = !DILocation(line: 0, scope: !1340)
!1354 = !DILocation(line: 156, column: 6, scope: !1340)
!1355 = !DILocation(line: 156, column: 62, scope: !1340)
!1356 = !DILocation(line: 156, column: 57, scope: !1340)
!1357 = !DILocation(line: 157, column: 15, scope: !1340)
!1358 = !DILocation(line: 158, column: 12, scope: !1340)
!1359 = !DILocation(line: 158, column: 15, scope: !1340)
!1360 = !DILocation(line: 158, column: 25, scope: !1340)
!1361 = !DILocation(line: 159, column: 13, scope: !1340)
!1362 = !DILocation(line: 159, column: 18, scope: !1340)
!1363 = !DILocation(line: 159, column: 23, scope: !1340)
!1364 = !DILocation(line: 159, column: 6, scope: !1340)
!1365 = !DILocation(line: 160, column: 3, scope: !1340)
!1366 = distinct !DISubprogram(name: "set_quoting_flags", scope: !231, file: !231, line: 168, type: !1367, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1369)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!18, !1307, !18}
!1369 = !{!1370, !1371, !1372}
!1370 = !DILocalVariable(name: "o", arg: 1, scope: !1366, file: !231, line: 168, type: !1307)
!1371 = !DILocalVariable(name: "i", arg: 2, scope: !1366, file: !231, line: 168, type: !18)
!1372 = !DILocalVariable(name: "r", scope: !1366, file: !231, line: 170, type: !18)
!1373 = !DILocation(line: 0, scope: !1366)
!1374 = !DILocation(line: 171, column: 8, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1366, file: !231, line: 171, column: 7)
!1376 = !DILocation(line: 171, column: 7, scope: !1366)
!1377 = !DILocation(line: 173, column: 10, scope: !1366)
!1378 = !{!1327, !1142, i64 4}
!1379 = !DILocation(line: 174, column: 12, scope: !1366)
!1380 = !DILocation(line: 175, column: 3, scope: !1366)
!1381 = distinct !DISubprogram(name: "set_custom_quoting", scope: !231, file: !231, line: 179, type: !1382, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1307, !16, !16}
!1384 = !{!1385, !1386, !1387}
!1385 = !DILocalVariable(name: "o", arg: 1, scope: !1381, file: !231, line: 179, type: !1307)
!1386 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1381, file: !231, line: 180, type: !16)
!1387 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1381, file: !231, line: 180, type: !16)
!1388 = !DILocation(line: 0, scope: !1381)
!1389 = !DILocation(line: 182, column: 8, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !231, line: 182, column: 7)
!1391 = !DILocation(line: 182, column: 7, scope: !1381)
!1392 = !DILocation(line: 184, column: 6, scope: !1381)
!1393 = !DILocation(line: 184, column: 12, scope: !1381)
!1394 = !DILocation(line: 185, column: 8, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1381, file: !231, line: 185, column: 7)
!1396 = !DILocation(line: 185, column: 23, scope: !1395)
!1397 = !DILocation(line: 185, column: 19, scope: !1395)
!1398 = !DILocation(line: 186, column: 5, scope: !1395)
!1399 = !DILocation(line: 187, column: 6, scope: !1381)
!1400 = !DILocation(line: 187, column: 17, scope: !1381)
!1401 = !{!1327, !1068, i64 40}
!1402 = !DILocation(line: 188, column: 6, scope: !1381)
!1403 = !DILocation(line: 188, column: 18, scope: !1381)
!1404 = !{!1327, !1068, i64 48}
!1405 = !DILocation(line: 189, column: 1, scope: !1381)
!1406 = distinct !DISubprogram(name: "quotearg_buffer", scope: !231, file: !231, line: 784, type: !1407, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!73, !14, !73, !16, !73, !277}
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1410 = !DILocalVariable(name: "buffer", arg: 1, scope: !1406, file: !231, line: 784, type: !14)
!1411 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1406, file: !231, line: 784, type: !73)
!1412 = !DILocalVariable(name: "arg", arg: 3, scope: !1406, file: !231, line: 785, type: !16)
!1413 = !DILocalVariable(name: "argsize", arg: 4, scope: !1406, file: !231, line: 785, type: !73)
!1414 = !DILocalVariable(name: "o", arg: 5, scope: !1406, file: !231, line: 786, type: !277)
!1415 = !DILocalVariable(name: "p", scope: !1406, file: !231, line: 788, type: !277)
!1416 = !DILocalVariable(name: "e", scope: !1406, file: !231, line: 789, type: !18)
!1417 = !DILocalVariable(name: "r", scope: !1406, file: !231, line: 790, type: !73)
!1418 = !DILocation(line: 0, scope: !1406)
!1419 = !DILocation(line: 788, column: 37, scope: !1406)
!1420 = !DILocation(line: 789, column: 11, scope: !1406)
!1421 = !DILocation(line: 791, column: 43, scope: !1406)
!1422 = !DILocation(line: 791, column: 53, scope: !1406)
!1423 = !DILocation(line: 791, column: 60, scope: !1406)
!1424 = !DILocation(line: 792, column: 43, scope: !1406)
!1425 = !DILocation(line: 792, column: 58, scope: !1406)
!1426 = !DILocation(line: 790, column: 14, scope: !1406)
!1427 = !DILocation(line: 793, column: 9, scope: !1406)
!1428 = !DILocation(line: 794, column: 3, scope: !1406)
!1429 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !231, file: !231, line: 256, type: !1430, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1434)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!73, !14, !73, !16, !73, !233, !18, !1432, !16, !16}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1459, !1460, !1461, !1462, !1463, !1466, !1467, !1473, !1476, !1477, !1484, !1487, !1488, !1489, !1490, !1491, !1492}
!1435 = !DILocalVariable(name: "buffer", arg: 1, scope: !1429, file: !231, line: 256, type: !14)
!1436 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1429, file: !231, line: 256, type: !73)
!1437 = !DILocalVariable(name: "arg", arg: 3, scope: !1429, file: !231, line: 257, type: !16)
!1438 = !DILocalVariable(name: "argsize", arg: 4, scope: !1429, file: !231, line: 257, type: !73)
!1439 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1429, file: !231, line: 258, type: !233)
!1440 = !DILocalVariable(name: "flags", arg: 6, scope: !1429, file: !231, line: 258, type: !18)
!1441 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1429, file: !231, line: 259, type: !1432)
!1442 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1429, file: !231, line: 260, type: !16)
!1443 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1429, file: !231, line: 261, type: !16)
!1444 = !DILocalVariable(name: "i", scope: !1429, file: !231, line: 263, type: !73)
!1445 = !DILocalVariable(name: "len", scope: !1429, file: !231, line: 264, type: !73)
!1446 = !DILocalVariable(name: "orig_buffersize", scope: !1429, file: !231, line: 265, type: !73)
!1447 = !DILocalVariable(name: "quote_string", scope: !1429, file: !231, line: 266, type: !16)
!1448 = !DILocalVariable(name: "quote_string_len", scope: !1429, file: !231, line: 267, type: !73)
!1449 = !DILocalVariable(name: "backslash_escapes", scope: !1429, file: !231, line: 268, type: !180)
!1450 = !DILocalVariable(name: "unibyte_locale", scope: !1429, file: !231, line: 269, type: !180)
!1451 = !DILocalVariable(name: "elide_outer_quotes", scope: !1429, file: !231, line: 270, type: !180)
!1452 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1429, file: !231, line: 271, type: !180)
!1453 = !DILocalVariable(name: "encountered_single_quote", scope: !1429, file: !231, line: 272, type: !180)
!1454 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1429, file: !231, line: 273, type: !180)
!1455 = !DILocalVariable(name: "c", scope: !1456, file: !231, line: 402, type: !1348)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !231, line: 401, column: 5)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !231, line: 400, column: 3)
!1458 = distinct !DILexicalBlock(scope: !1429, file: !231, line: 400, column: 3)
!1459 = !DILocalVariable(name: "esc", scope: !1456, file: !231, line: 403, type: !1348)
!1460 = !DILocalVariable(name: "is_right_quote", scope: !1456, file: !231, line: 404, type: !180)
!1461 = !DILocalVariable(name: "escaping", scope: !1456, file: !231, line: 405, type: !180)
!1462 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1456, file: !231, line: 406, type: !180)
!1463 = !DILocalVariable(name: "m", scope: !1464, file: !231, line: 610, type: !73)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 608, column: 11)
!1465 = distinct !DILexicalBlock(scope: !1456, file: !231, line: 426, column: 9)
!1466 = !DILocalVariable(name: "printable", scope: !1464, file: !231, line: 612, type: !180)
!1467 = !DILocalVariable(name: "mbstate", scope: !1468, file: !231, line: 621, type: !1470)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !231, line: 620, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !231, line: 614, column: 17)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1471, line: 6, baseType: !1472)
!1471 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !301, line: 21, baseType: !300)
!1473 = !DILocalVariable(name: "w", scope: !1474, file: !231, line: 631, type: !1475)
!1474 = distinct !DILexicalBlock(scope: !1468, file: !231, line: 630, column: 19)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !18)
!1476 = !DILocalVariable(name: "bytes", scope: !1474, file: !231, line: 632, type: !73)
!1477 = !DILocalVariable(name: "j", scope: !1478, file: !231, line: 657, type: !73)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !231, line: 656, column: 27)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !231, line: 654, column: 29)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !231, line: 649, column: 23)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !231, line: 641, column: 30)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !231, line: 636, column: 30)
!1483 = distinct !DILexicalBlock(scope: !1474, file: !231, line: 634, column: 25)
!1484 = !DILocalVariable(name: "ilim", scope: !1485, file: !231, line: 684, type: !73)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !231, line: 681, column: 15)
!1486 = distinct !DILexicalBlock(scope: !1464, file: !231, line: 680, column: 17)
!1487 = !DILabel(scope: !1429, name: "process_input", file: !231, line: 314)
!1488 = !DILabel(scope: !1465, name: "c_and_shell_escape", file: !231, line: 512)
!1489 = !DILabel(scope: !1465, name: "c_escape", file: !231, line: 517)
!1490 = !DILabel(scope: !1456, name: "store_escape", file: !231, line: 719)
!1491 = !DILabel(scope: !1456, name: "store_c", file: !231, line: 722)
!1492 = !DILabel(scope: !1429, name: "force_outer_quoting_style", file: !231, line: 763)
!1493 = !DILocation(line: 0, scope: !1429)
!1494 = !DILocation(line: 269, column: 25, scope: !1429)
!1495 = !DILocation(line: 269, column: 36, scope: !1429)
!1496 = !DILocation(line: 270, column: 8, scope: !1429)
!1497 = !DILocation(line: 0, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 526, column: 15)
!1499 = !DILocation(line: 0, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !231, line: 462, column: 19)
!1501 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 455, column: 13)
!1502 = !DILocation(line: 0, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !231, line: 449, column: 20)
!1504 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 428, column: 15)
!1505 = !DILocation(line: 0, scope: !1468)
!1506 = !DILocation(line: 0, scope: !1474)
!1507 = !DILocation(line: 0, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1456, file: !231, line: 712, column: 11)
!1509 = !DILocation(line: 273, column: 3, scope: !1429)
!1510 = !DILocation(line: 265, column: 10, scope: !1429)
!1511 = !DILocation(line: 266, column: 15, scope: !1429)
!1512 = !DILocation(line: 267, column: 10, scope: !1429)
!1513 = !DILocation(line: 268, column: 8, scope: !1429)
!1514 = !DILocation(line: 271, column: 8, scope: !1429)
!1515 = !DILocation(line: 272, column: 8, scope: !1429)
!1516 = !DILocation(line: 273, column: 8, scope: !1429)
!1517 = !DILocation(line: 314, column: 2, scope: !1429)
!1518 = !DILocation(line: 316, column: 3, scope: !1429)
!1519 = !DILocation(line: 323, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1429, file: !231, line: 317, column: 5)
!1521 = !DILocation(line: 323, column: 12, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1520, file: !231, line: 323, column: 11)
!1523 = !DILocation(line: 324, column: 9, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !231, line: 324, column: 9)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !231, line: 324, column: 9)
!1526 = !DILocation(line: 324, column: 9, scope: !1525)
!1527 = !DILocation(line: 362, column: 26, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !231, line: 340, column: 11)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !231, line: 339, column: 13)
!1530 = distinct !DILexicalBlock(scope: !1520, file: !231, line: 338, column: 7)
!1531 = !DILocation(line: 363, column: 27, scope: !1528)
!1532 = !DILocation(line: 364, column: 11, scope: !1528)
!1533 = !DILocation(line: 365, column: 14, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !231, line: 365, column: 13)
!1535 = !DILocation(line: 365, column: 13, scope: !1530)
!1536 = !DILocation(line: 366, column: 43, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !231, line: 366, column: 11)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !231, line: 366, column: 11)
!1539 = !DILocation(line: 366, column: 11, scope: !1538)
!1540 = !DILocation(line: 367, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !231, line: 367, column: 13)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !231, line: 367, column: 13)
!1543 = !DILocation(line: 367, column: 13, scope: !1542)
!1544 = !DILocation(line: 366, column: 70, scope: !1537)
!1545 = distinct !{!1545, !1539, !1546}
!1546 = !DILocation(line: 367, column: 13, scope: !1538)
!1547 = !DILocation(line: 264, column: 10, scope: !1429)
!1548 = !DILocation(line: 370, column: 28, scope: !1530)
!1549 = !DILocation(line: 372, column: 7, scope: !1520)
!1550 = !DILocation(line: 376, column: 7, scope: !1520)
!1551 = !DILocation(line: 379, column: 7, scope: !1520)
!1552 = !DILocation(line: 381, column: 12, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1520, file: !231, line: 381, column: 11)
!1554 = !DILocation(line: 381, column: 11, scope: !1520)
!1555 = !DILocation(line: 386, column: 12, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1520, file: !231, line: 386, column: 11)
!1557 = !DILocation(line: 386, column: 11, scope: !1520)
!1558 = !DILocation(line: 387, column: 9, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !231, line: 387, column: 9)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !231, line: 387, column: 9)
!1561 = !DILocation(line: 387, column: 9, scope: !1560)
!1562 = !DILocation(line: 394, column: 7, scope: !1520)
!1563 = !DILocation(line: 397, column: 7, scope: !1520)
!1564 = !DILocation(line: 0, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1456, file: !231, line: 408, column: 11)
!1566 = !DILocation(line: 0, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !231, line: 419, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !231, line: 418, column: 9)
!1569 = !DILocation(line: 0, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 556, column: 15)
!1571 = !DILocation(line: 0, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 548, column: 15)
!1573 = !DILocation(line: 0, scope: !1479)
!1574 = !DILocation(line: 0, scope: !1486)
!1575 = !DILocation(line: 0, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 509, column: 15)
!1577 = !DILocation(line: 400, column: 8, scope: !1458)
!1578 = !DILocation(line: 0, scope: !1458)
!1579 = !DILocation(line: 400, column: 27, scope: !1457)
!1580 = !DILocation(line: 400, column: 19, scope: !1457)
!1581 = !DILocation(line: 400, column: 41, scope: !1457)
!1582 = !DILocation(line: 400, column: 48, scope: !1457)
!1583 = !DILocation(line: 400, column: 3, scope: !1458)
!1584 = !DILocation(line: 400, column: 60, scope: !1457)
!1585 = !DILocation(line: 0, scope: !1456)
!1586 = !DILocation(line: 409, column: 11, scope: !1565)
!1587 = !DILocation(line: 411, column: 17, scope: !1565)
!1588 = !DILocation(line: 412, column: 39, scope: !1565)
!1589 = !DILocation(line: 416, column: 32, scope: !1565)
!1590 = !DILocation(line: 412, column: 19, scope: !1565)
!1591 = !DILocation(line: 412, column: 15, scope: !1565)
!1592 = !DILocation(line: 417, column: 11, scope: !1565)
!1593 = !DILocation(line: 417, column: 26, scope: !1565)
!1594 = !DILocation(line: 417, column: 14, scope: !1565)
!1595 = !DILocation(line: 417, column: 63, scope: !1565)
!1596 = !DILocation(line: 408, column: 11, scope: !1456)
!1597 = !DILocation(line: 424, column: 11, scope: !1456)
!1598 = !DILocation(line: 425, column: 7, scope: !1456)
!1599 = !DILocation(line: 428, column: 15, scope: !1465)
!1600 = !DILocation(line: 430, column: 15, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !231, line: 430, column: 15)
!1602 = distinct !DILexicalBlock(scope: !1504, file: !231, line: 429, column: 13)
!1603 = !DILocation(line: 430, column: 15, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !231, line: 430, column: 15)
!1605 = !DILocation(line: 430, column: 15, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !231, line: 430, column: 15)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !231, line: 430, column: 15)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !231, line: 430, column: 15)
!1609 = !DILocation(line: 430, column: 15, scope: !1607)
!1610 = !DILocation(line: 430, column: 15, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !231, line: 430, column: 15)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !231, line: 430, column: 15)
!1613 = !DILocation(line: 430, column: 15, scope: !1612)
!1614 = !DILocation(line: 430, column: 15, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !231, line: 430, column: 15)
!1616 = distinct !DILexicalBlock(scope: !1608, file: !231, line: 430, column: 15)
!1617 = !DILocation(line: 430, column: 15, scope: !1616)
!1618 = !DILocation(line: 430, column: 15, scope: !1608)
!1619 = !DILocation(line: 430, column: 15, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !231, line: 430, column: 15)
!1621 = distinct !DILexicalBlock(scope: !1601, file: !231, line: 430, column: 15)
!1622 = !DILocation(line: 430, column: 15, scope: !1621)
!1623 = !DILocation(line: 438, column: 19, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1602, file: !231, line: 437, column: 19)
!1625 = !DILocation(line: 438, column: 24, scope: !1624)
!1626 = !DILocation(line: 438, column: 28, scope: !1624)
!1627 = !DILocation(line: 438, column: 38, scope: !1624)
!1628 = !DILocation(line: 438, column: 48, scope: !1624)
!1629 = !DILocation(line: 438, column: 59, scope: !1624)
!1630 = !DILocation(line: 440, column: 19, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !231, line: 440, column: 19)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !231, line: 440, column: 19)
!1633 = distinct !DILexicalBlock(scope: !1624, file: !231, line: 439, column: 17)
!1634 = !DILocation(line: 440, column: 19, scope: !1632)
!1635 = !DILocation(line: 441, column: 19, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !231, line: 441, column: 19)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !231, line: 441, column: 19)
!1638 = !DILocation(line: 441, column: 19, scope: !1637)
!1639 = !DILocation(line: 442, column: 17, scope: !1633)
!1640 = !DILocation(line: 449, column: 20, scope: !1504)
!1641 = !DILocation(line: 454, column: 11, scope: !1465)
!1642 = !DILocation(line: 457, column: 19, scope: !1501)
!1643 = !DILocation(line: 463, column: 19, scope: !1500)
!1644 = !DILocation(line: 463, column: 24, scope: !1500)
!1645 = !DILocation(line: 463, column: 28, scope: !1500)
!1646 = !DILocation(line: 463, column: 38, scope: !1500)
!1647 = !DILocation(line: 463, column: 47, scope: !1500)
!1648 = !DILocation(line: 463, column: 41, scope: !1500)
!1649 = !DILocation(line: 463, column: 52, scope: !1500)
!1650 = !DILocation(line: 462, column: 19, scope: !1501)
!1651 = !DILocation(line: 464, column: 25, scope: !1500)
!1652 = !DILocation(line: 464, column: 17, scope: !1500)
!1653 = !DILocation(line: 471, column: 25, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1500, file: !231, line: 465, column: 19)
!1655 = !DILocation(line: 475, column: 21, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !231, line: 475, column: 21)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !231, line: 475, column: 21)
!1658 = !DILocation(line: 475, column: 21, scope: !1657)
!1659 = !DILocation(line: 476, column: 21, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !231, line: 476, column: 21)
!1661 = distinct !DILexicalBlock(scope: !1654, file: !231, line: 476, column: 21)
!1662 = !DILocation(line: 476, column: 21, scope: !1661)
!1663 = !DILocation(line: 477, column: 21, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !231, line: 477, column: 21)
!1665 = distinct !DILexicalBlock(scope: !1654, file: !231, line: 477, column: 21)
!1666 = !DILocation(line: 477, column: 21, scope: !1665)
!1667 = !DILocation(line: 478, column: 21, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !231, line: 478, column: 21)
!1669 = distinct !DILexicalBlock(scope: !1654, file: !231, line: 478, column: 21)
!1670 = !DILocation(line: 478, column: 21, scope: !1669)
!1671 = !DILocation(line: 479, column: 21, scope: !1654)
!1672 = !DILocation(line: 492, column: 31, scope: !1465)
!1673 = !DILocation(line: 493, column: 31, scope: !1465)
!1674 = !DILocation(line: 495, column: 31, scope: !1465)
!1675 = !DILocation(line: 496, column: 31, scope: !1465)
!1676 = !DILocation(line: 497, column: 31, scope: !1465)
!1677 = !DILocation(line: 500, column: 15, scope: !1465)
!1678 = !DILocation(line: 502, column: 19, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !231, line: 501, column: 13)
!1680 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 500, column: 15)
!1681 = !DILocation(line: 509, column: 33, scope: !1576)
!1682 = !DILocation(line: 0, scope: !1465)
!1683 = !DILocation(line: 512, column: 9, scope: !1465)
!1684 = !DILocation(line: 514, column: 15, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 513, column: 15)
!1686 = !DILocation(line: 517, column: 9, scope: !1465)
!1687 = !DILocation(line: 518, column: 15, scope: !1465)
!1688 = !DILocation(line: 526, column: 15, scope: !1465)
!1689 = !DILocation(line: 526, column: 40, scope: !1498)
!1690 = !DILocation(line: 526, column: 47, scope: !1498)
!1691 = !DILocation(line: 526, column: 18, scope: !1498)
!1692 = !DILocation(line: 530, column: 17, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1465, file: !231, line: 530, column: 15)
!1694 = !DILocation(line: 530, column: 15, scope: !1465)
!1695 = !DILocation(line: 535, column: 11, scope: !1465)
!1696 = !DILocation(line: 549, column: 15, scope: !1572)
!1697 = !DILocation(line: 556, column: 15, scope: !1465)
!1698 = !DILocation(line: 558, column: 19, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1570, file: !231, line: 557, column: 13)
!1700 = !DILocation(line: 561, column: 19, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1699, file: !231, line: 561, column: 19)
!1702 = !DILocation(line: 561, column: 35, scope: !1701)
!1703 = !DILocation(line: 561, column: 30, scope: !1701)
!1704 = !DILocation(line: 570, column: 15, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !231, line: 570, column: 15)
!1706 = distinct !DILexicalBlock(scope: !1699, file: !231, line: 570, column: 15)
!1707 = !DILocation(line: 570, column: 15, scope: !1706)
!1708 = !DILocation(line: 571, column: 15, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !231, line: 571, column: 15)
!1710 = distinct !DILexicalBlock(scope: !1699, file: !231, line: 571, column: 15)
!1711 = !DILocation(line: 571, column: 15, scope: !1710)
!1712 = !DILocation(line: 572, column: 15, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !231, line: 572, column: 15)
!1714 = distinct !DILexicalBlock(scope: !1699, file: !231, line: 572, column: 15)
!1715 = !DILocation(line: 572, column: 15, scope: !1714)
!1716 = !DILocation(line: 574, column: 13, scope: !1699)
!1717 = !DILocation(line: 614, column: 17, scope: !1464)
!1718 = !DILocation(line: 0, scope: !1464)
!1719 = !DILocation(line: 617, column: 29, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1469, file: !231, line: 615, column: 15)
!1721 = !{!1722, !1722, i64 0}
!1722 = !{!"short", !1069, i64 0}
!1723 = !DILocation(line: 617, column: 27, scope: !1720)
!1724 = !DILocation(line: 618, column: 15, scope: !1720)
!1725 = !DILocation(line: 621, column: 17, scope: !1468)
!1726 = !DILocation(line: 621, column: 27, scope: !1468)
!1727 = !DILocalVariable(name: "__dest", arg: 1, scope: !1728, file: !1729, line: 59, type: !71)
!1728 = distinct !DISubprogram(name: "memset", scope: !1729, file: !1729, line: 59, type: !1730, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1732)
!1729 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!71, !71, !18, !73}
!1732 = !{!1727, !1733, !1734}
!1733 = !DILocalVariable(name: "__ch", arg: 2, scope: !1728, file: !1729, line: 59, type: !18)
!1734 = !DILocalVariable(name: "__len", arg: 3, scope: !1728, file: !1729, line: 59, type: !73)
!1735 = !DILocation(line: 0, scope: !1728, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 622, column: 17, scope: !1468)
!1737 = !DILocation(line: 71, column: 10, scope: !1728, inlinedAt: !1736)
!1738 = !DILocation(line: 626, column: 29, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1468, file: !231, line: 626, column: 21)
!1740 = !DILocation(line: 626, column: 21, scope: !1468)
!1741 = !DILocation(line: 627, column: 29, scope: !1739)
!1742 = !DILocation(line: 627, column: 19, scope: !1739)
!1743 = !DILocation(line: 629, column: 17, scope: !1468)
!1744 = !DILocation(line: 624, column: 19, scope: !1468)
!1745 = !DILocation(line: 625, column: 27, scope: !1468)
!1746 = !DILocation(line: 631, column: 21, scope: !1474)
!1747 = !DILocation(line: 632, column: 56, scope: !1474)
!1748 = !DILocation(line: 632, column: 50, scope: !1474)
!1749 = !DILocation(line: 633, column: 53, scope: !1474)
!1750 = !DILocation(line: 632, column: 36, scope: !1474)
!1751 = !DILocation(line: 634, column: 25, scope: !1474)
!1752 = !DILocation(line: 644, column: 38, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1481, file: !231, line: 642, column: 23)
!1754 = !DILocation(line: 644, column: 48, scope: !1753)
!1755 = !DILocation(line: 644, column: 25, scope: !1753)
!1756 = !DILocation(line: 644, column: 51, scope: !1753)
!1757 = !DILocation(line: 645, column: 28, scope: !1753)
!1758 = !DILocation(line: 644, column: 34, scope: !1753)
!1759 = distinct !{!1759, !1755, !1757}
!1760 = !DILocation(line: 658, column: 43, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !231, line: 658, column: 29)
!1762 = distinct !DILexicalBlock(scope: !1478, file: !231, line: 658, column: 29)
!1763 = !DILocation(line: 655, column: 29, scope: !1479)
!1764 = !DILocation(line: 0, scope: !1478)
!1765 = !DILocation(line: 659, column: 49, scope: !1761)
!1766 = !DILocation(line: 659, column: 39, scope: !1761)
!1767 = !DILocation(line: 659, column: 31, scope: !1761)
!1768 = !DILocation(line: 658, column: 53, scope: !1761)
!1769 = !DILocation(line: 658, column: 29, scope: !1762)
!1770 = distinct !{!1770, !1769, !1771}
!1771 = !DILocation(line: 667, column: 33, scope: !1762)
!1772 = !DILocation(line: 674, column: 19, scope: !1468)
!1773 = !DILocation(line: 670, column: 41, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1480, file: !231, line: 670, column: 29)
!1775 = !DILocation(line: 670, column: 31, scope: !1774)
!1776 = !DILocation(line: 670, column: 29, scope: !1480)
!1777 = !DILocation(line: 672, column: 27, scope: !1480)
!1778 = !DILocation(line: 675, column: 26, scope: !1468)
!1779 = !DILocation(line: 675, column: 24, scope: !1468)
!1780 = !DILocation(line: 674, column: 19, scope: !1474)
!1781 = distinct !{!1781, !1743, !1782}
!1782 = !DILocation(line: 675, column: 44, scope: !1468)
!1783 = !DILocation(line: 676, column: 15, scope: !1469)
!1784 = !DILocation(line: 0, scope: !1469)
!1785 = !DILocation(line: 678, column: 40, scope: !1464)
!1786 = !DILocation(line: 680, column: 19, scope: !1486)
!1787 = !DILocation(line: 680, column: 45, scope: !1486)
!1788 = !DILocation(line: 680, column: 23, scope: !1486)
!1789 = !DILocation(line: 684, column: 33, scope: !1485)
!1790 = !DILocation(line: 0, scope: !1485)
!1791 = !DILocation(line: 686, column: 17, scope: !1485)
!1792 = !DILocation(line: 405, column: 12, scope: !1456)
!1793 = !DILocation(line: 688, column: 43, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !231, line: 688, column: 25)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !231, line: 687, column: 19)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !231, line: 686, column: 17)
!1797 = distinct !DILexicalBlock(scope: !1485, file: !231, line: 686, column: 17)
!1798 = !DILocation(line: 690, column: 25, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !231, line: 690, column: 25)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !231, line: 689, column: 23)
!1801 = !DILocation(line: 690, column: 25, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !231, line: 690, column: 25)
!1803 = !DILocation(line: 690, column: 25, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !231, line: 690, column: 25)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !231, line: 690, column: 25)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !231, line: 690, column: 25)
!1807 = !DILocation(line: 690, column: 25, scope: !1805)
!1808 = !DILocation(line: 690, column: 25, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !231, line: 690, column: 25)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !231, line: 690, column: 25)
!1811 = !DILocation(line: 690, column: 25, scope: !1810)
!1812 = !DILocation(line: 690, column: 25, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !231, line: 690, column: 25)
!1814 = distinct !DILexicalBlock(scope: !1806, file: !231, line: 690, column: 25)
!1815 = !DILocation(line: 690, column: 25, scope: !1814)
!1816 = !DILocation(line: 690, column: 25, scope: !1806)
!1817 = !DILocation(line: 690, column: 25, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !231, line: 690, column: 25)
!1819 = distinct !DILexicalBlock(scope: !1799, file: !231, line: 690, column: 25)
!1820 = !DILocation(line: 690, column: 25, scope: !1819)
!1821 = !DILocation(line: 691, column: 25, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !231, line: 691, column: 25)
!1823 = distinct !DILexicalBlock(scope: !1800, file: !231, line: 691, column: 25)
!1824 = !DILocation(line: 691, column: 25, scope: !1823)
!1825 = !DILocation(line: 692, column: 25, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !231, line: 692, column: 25)
!1827 = distinct !DILexicalBlock(scope: !1800, file: !231, line: 692, column: 25)
!1828 = !DILocation(line: 692, column: 25, scope: !1827)
!1829 = !DILocation(line: 693, column: 38, scope: !1800)
!1830 = !DILocation(line: 693, column: 33, scope: !1800)
!1831 = !DILocation(line: 694, column: 23, scope: !1800)
!1832 = !DILocation(line: 695, column: 30, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1794, file: !231, line: 695, column: 30)
!1834 = !DILocation(line: 695, column: 30, scope: !1794)
!1835 = !DILocation(line: 697, column: 25, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !231, line: 697, column: 25)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !231, line: 697, column: 25)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !231, line: 696, column: 23)
!1839 = !DILocation(line: 697, column: 25, scope: !1837)
!1840 = !DILocation(line: 699, column: 23, scope: !1838)
!1841 = !DILocation(line: 700, column: 35, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1795, file: !231, line: 700, column: 25)
!1843 = !DILocation(line: 700, column: 30, scope: !1842)
!1844 = !DILocation(line: 700, column: 25, scope: !1795)
!1845 = !DILocation(line: 702, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !231, line: 702, column: 21)
!1847 = distinct !DILexicalBlock(scope: !1795, file: !231, line: 702, column: 21)
!1848 = !DILocation(line: 702, column: 21, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !231, line: 702, column: 21)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !231, line: 702, column: 21)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !231, line: 702, column: 21)
!1852 = !DILocation(line: 702, column: 21, scope: !1850)
!1853 = !DILocation(line: 702, column: 21, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !231, line: 702, column: 21)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !231, line: 702, column: 21)
!1856 = !DILocation(line: 702, column: 21, scope: !1855)
!1857 = !DILocation(line: 702, column: 21, scope: !1851)
!1858 = !DILocation(line: 0, scope: !1795)
!1859 = !DILocation(line: 703, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !231, line: 703, column: 21)
!1861 = distinct !DILexicalBlock(scope: !1795, file: !231, line: 703, column: 21)
!1862 = !DILocation(line: 703, column: 21, scope: !1861)
!1863 = !DILocation(line: 704, column: 25, scope: !1795)
!1864 = !DILocation(line: 686, column: 17, scope: !1796)
!1865 = distinct !{!1865, !1866, !1867}
!1866 = !DILocation(line: 686, column: 17, scope: !1797)
!1867 = !DILocation(line: 705, column: 19, scope: !1797)
!1868 = !DILocation(line: 416, column: 30, scope: !1565)
!1869 = !DILocation(line: 712, column: 34, scope: !1508)
!1870 = !DILocation(line: 715, column: 35, scope: !1508)
!1871 = !DILocation(line: 715, column: 17, scope: !1508)
!1872 = !DILocation(line: 715, column: 47, scope: !1508)
!1873 = !DILocation(line: 715, column: 65, scope: !1508)
!1874 = !DILocation(line: 716, column: 15, scope: !1508)
!1875 = !DILocation(line: 716, column: 11, scope: !1508)
!1876 = !DILocation(line: 712, column: 11, scope: !1456)
!1877 = !DILocation(line: 400, column: 10, scope: !1458)
!1878 = !DILocation(line: 719, column: 5, scope: !1456)
!1879 = !DILocation(line: 720, column: 7, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1456, file: !231, line: 720, column: 7)
!1881 = !DILocation(line: 720, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1880, file: !231, line: 720, column: 7)
!1883 = !DILocation(line: 720, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !231, line: 720, column: 7)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !231, line: 720, column: 7)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !231, line: 720, column: 7)
!1887 = !DILocation(line: 720, column: 7, scope: !1885)
!1888 = !DILocation(line: 720, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !231, line: 720, column: 7)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !231, line: 720, column: 7)
!1891 = !DILocation(line: 720, column: 7, scope: !1890)
!1892 = !DILocation(line: 720, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !231, line: 720, column: 7)
!1894 = distinct !DILexicalBlock(scope: !1886, file: !231, line: 720, column: 7)
!1895 = !DILocation(line: 720, column: 7, scope: !1894)
!1896 = !DILocation(line: 720, column: 7, scope: !1886)
!1897 = !DILocation(line: 720, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !231, line: 720, column: 7)
!1899 = distinct !DILexicalBlock(scope: !1880, file: !231, line: 720, column: 7)
!1900 = !DILocation(line: 720, column: 7, scope: !1899)
!1901 = !DILocation(line: 722, column: 5, scope: !1456)
!1902 = !DILocation(line: 723, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !231, line: 723, column: 7)
!1904 = distinct !DILexicalBlock(scope: !1456, file: !231, line: 723, column: 7)
!1905 = !DILocation(line: 424, column: 9, scope: !1456)
!1906 = !DILocation(line: 723, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !231, line: 723, column: 7)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !231, line: 723, column: 7)
!1909 = distinct !DILexicalBlock(scope: !1903, file: !231, line: 723, column: 7)
!1910 = !DILocation(line: 723, column: 7, scope: !1908)
!1911 = !DILocation(line: 723, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !231, line: 723, column: 7)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !231, line: 723, column: 7)
!1914 = !DILocation(line: 723, column: 7, scope: !1913)
!1915 = !DILocation(line: 723, column: 7, scope: !1909)
!1916 = !DILocation(line: 724, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !231, line: 724, column: 7)
!1918 = distinct !DILexicalBlock(scope: !1456, file: !231, line: 724, column: 7)
!1919 = !DILocation(line: 724, column: 7, scope: !1918)
!1920 = !DILocation(line: 726, column: 13, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1456, file: !231, line: 726, column: 11)
!1922 = !DILocation(line: 726, column: 11, scope: !1456)
!1923 = !DILocation(line: 728, column: 5, scope: !1457)
!1924 = !DILocation(line: 400, column: 75, scope: !1457)
!1925 = !DILocation(line: 400, column: 3, scope: !1457)
!1926 = distinct !{!1926, !1583, !1927}
!1927 = !DILocation(line: 728, column: 5, scope: !1458)
!1928 = !DILocation(line: 730, column: 11, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1429, file: !231, line: 730, column: 7)
!1930 = !DILocation(line: 730, column: 16, scope: !1929)
!1931 = !DILocation(line: 738, column: 51, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1429, file: !231, line: 738, column: 7)
!1933 = !DILocation(line: 739, column: 10, scope: !1932)
!1934 = !DILocation(line: 741, column: 11, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !231, line: 741, column: 11)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !231, line: 740, column: 5)
!1937 = !DILocation(line: 741, column: 11, scope: !1936)
!1938 = !DILocation(line: 742, column: 16, scope: !1935)
!1939 = !DILocation(line: 742, column: 9, scope: !1935)
!1940 = !DILocation(line: 746, column: 18, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1935, file: !231, line: 746, column: 16)
!1942 = !DILocation(line: 746, column: 32, scope: !1941)
!1943 = !DILocation(line: 746, column: 29, scope: !1941)
!1944 = !DILocation(line: 755, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1429, file: !231, line: 755, column: 7)
!1946 = !DILocation(line: 755, column: 20, scope: !1945)
!1947 = !DILocation(line: 756, column: 12, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !231, line: 756, column: 5)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !231, line: 756, column: 5)
!1950 = !DILocation(line: 756, column: 5, scope: !1949)
!1951 = !DILocation(line: 757, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !231, line: 757, column: 7)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !231, line: 757, column: 7)
!1954 = !DILocation(line: 757, column: 7, scope: !1953)
!1955 = !DILocation(line: 756, column: 39, scope: !1948)
!1956 = distinct !{!1956, !1950, !1957}
!1957 = !DILocation(line: 757, column: 7, scope: !1949)
!1958 = !DILocation(line: 759, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1429, file: !231, line: 759, column: 7)
!1960 = !DILocation(line: 759, column: 7, scope: !1429)
!1961 = !DILocation(line: 760, column: 5, scope: !1959)
!1962 = !DILocation(line: 760, column: 17, scope: !1959)
!1963 = !DILocation(line: 763, column: 2, scope: !1429)
!1964 = !DILocation(line: 766, column: 51, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1429, file: !231, line: 766, column: 7)
!1966 = !DILocation(line: 766, column: 21, scope: !1965)
!1967 = !DILocation(line: 770, column: 42, scope: !1429)
!1968 = !DILocation(line: 768, column: 10, scope: !1429)
!1969 = !DILocation(line: 768, column: 3, scope: !1429)
!1970 = !DILocation(line: 772, column: 1, scope: !1429)
!1971 = distinct !DISubprogram(name: "gettext_quote", scope: !231, file: !231, line: 207, type: !1972, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!16, !16, !233}
!1974 = !{!1975, !1976, !1977, !1978}
!1975 = !DILocalVariable(name: "msgid", arg: 1, scope: !1971, file: !231, line: 207, type: !16)
!1976 = !DILocalVariable(name: "s", arg: 2, scope: !1971, file: !231, line: 207, type: !233)
!1977 = !DILocalVariable(name: "translation", scope: !1971, file: !231, line: 209, type: !16)
!1978 = !DILocalVariable(name: "locale_code", scope: !1971, file: !231, line: 210, type: !16)
!1979 = !DILocation(line: 0, scope: !1971)
!1980 = !DILocation(line: 209, column: 29, scope: !1971)
!1981 = !DILocation(line: 212, column: 19, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1971, file: !231, line: 212, column: 7)
!1983 = !DILocation(line: 212, column: 7, scope: !1971)
!1984 = !DILocation(line: 233, column: 17, scope: !1971)
!1985 = !DILocalVariable(name: "s1", arg: 1, scope: !1986, file: !1987, line: 160, type: !16)
!1986 = distinct !DISubprogram(name: "strcaseeq0", scope: !1987, file: !1987, line: 160, type: !1988, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !1990)
!1987 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!18, !16, !16, !15, !15, !15, !15, !15, !15, !15, !15, !15}
!1990 = !{!1985, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000}
!1991 = !DILocalVariable(name: "s2", arg: 2, scope: !1986, file: !1987, line: 160, type: !16)
!1992 = !DILocalVariable(name: "s20", arg: 3, scope: !1986, file: !1987, line: 160, type: !15)
!1993 = !DILocalVariable(name: "s21", arg: 4, scope: !1986, file: !1987, line: 160, type: !15)
!1994 = !DILocalVariable(name: "s22", arg: 5, scope: !1986, file: !1987, line: 160, type: !15)
!1995 = !DILocalVariable(name: "s23", arg: 6, scope: !1986, file: !1987, line: 160, type: !15)
!1996 = !DILocalVariable(name: "s24", arg: 7, scope: !1986, file: !1987, line: 160, type: !15)
!1997 = !DILocalVariable(name: "s25", arg: 8, scope: !1986, file: !1987, line: 160, type: !15)
!1998 = !DILocalVariable(name: "s26", arg: 9, scope: !1986, file: !1987, line: 160, type: !15)
!1999 = !DILocalVariable(name: "s27", arg: 10, scope: !1986, file: !1987, line: 160, type: !15)
!2000 = !DILocalVariable(name: "s28", arg: 11, scope: !1986, file: !1987, line: 160, type: !15)
!2001 = !DILocation(line: 0, scope: !1986, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 234, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1971, file: !231, line: 234, column: 7)
!2004 = !DILocation(line: 162, column: 7, scope: !2005, inlinedAt: !2002)
!2005 = distinct !DILexicalBlock(scope: !1986, file: !1987, line: 162, column: 7)
!2006 = !DILocalVariable(name: "s1", arg: 1, scope: !2007, file: !1987, line: 146, type: !16)
!2007 = distinct !DISubprogram(name: "strcaseeq1", scope: !1987, file: !1987, line: 146, type: !2008, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!18, !16, !16, !15, !15, !15, !15, !15, !15, !15, !15}
!2010 = !{!2006, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!2011 = !DILocalVariable(name: "s2", arg: 2, scope: !2007, file: !1987, line: 146, type: !16)
!2012 = !DILocalVariable(name: "s21", arg: 3, scope: !2007, file: !1987, line: 146, type: !15)
!2013 = !DILocalVariable(name: "s22", arg: 4, scope: !2007, file: !1987, line: 146, type: !15)
!2014 = !DILocalVariable(name: "s23", arg: 5, scope: !2007, file: !1987, line: 146, type: !15)
!2015 = !DILocalVariable(name: "s24", arg: 6, scope: !2007, file: !1987, line: 146, type: !15)
!2016 = !DILocalVariable(name: "s25", arg: 7, scope: !2007, file: !1987, line: 146, type: !15)
!2017 = !DILocalVariable(name: "s26", arg: 8, scope: !2007, file: !1987, line: 146, type: !15)
!2018 = !DILocalVariable(name: "s27", arg: 9, scope: !2007, file: !1987, line: 146, type: !15)
!2019 = !DILocalVariable(name: "s28", arg: 10, scope: !2007, file: !1987, line: 146, type: !15)
!2020 = !DILocation(line: 0, scope: !2007, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 167, column: 16, scope: !2022, inlinedAt: !2002)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !1987, line: 164, column: 11)
!2023 = distinct !DILexicalBlock(scope: !2005, file: !1987, line: 163, column: 5)
!2024 = !DILocation(line: 148, column: 7, scope: !2025, inlinedAt: !2021)
!2025 = distinct !DILexicalBlock(scope: !2007, file: !1987, line: 148, column: 7)
!2026 = !DILocalVariable(name: "s1", arg: 1, scope: !2027, file: !1987, line: 132, type: !16)
!2027 = distinct !DISubprogram(name: "strcaseeq2", scope: !1987, file: !1987, line: 132, type: !2028, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!18, !16, !16, !15, !15, !15, !15, !15, !15, !15}
!2030 = !{!2026, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!2031 = !DILocalVariable(name: "s2", arg: 2, scope: !2027, file: !1987, line: 132, type: !16)
!2032 = !DILocalVariable(name: "s22", arg: 3, scope: !2027, file: !1987, line: 132, type: !15)
!2033 = !DILocalVariable(name: "s23", arg: 4, scope: !2027, file: !1987, line: 132, type: !15)
!2034 = !DILocalVariable(name: "s24", arg: 5, scope: !2027, file: !1987, line: 132, type: !15)
!2035 = !DILocalVariable(name: "s25", arg: 6, scope: !2027, file: !1987, line: 132, type: !15)
!2036 = !DILocalVariable(name: "s26", arg: 7, scope: !2027, file: !1987, line: 132, type: !15)
!2037 = !DILocalVariable(name: "s27", arg: 8, scope: !2027, file: !1987, line: 132, type: !15)
!2038 = !DILocalVariable(name: "s28", arg: 9, scope: !2027, file: !1987, line: 132, type: !15)
!2039 = !DILocation(line: 0, scope: !2027, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 153, column: 16, scope: !2041, inlinedAt: !2021)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !1987, line: 150, column: 11)
!2042 = distinct !DILexicalBlock(scope: !2025, file: !1987, line: 149, column: 5)
!2043 = !DILocation(line: 134, column: 7, scope: !2044, inlinedAt: !2040)
!2044 = distinct !DILexicalBlock(scope: !2027, file: !1987, line: 134, column: 7)
!2045 = !DILocalVariable(name: "s1", arg: 1, scope: !2046, file: !1987, line: 118, type: !16)
!2046 = distinct !DISubprogram(name: "strcaseeq3", scope: !1987, file: !1987, line: 118, type: !2047, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!18, !16, !16, !15, !15, !15, !15, !15, !15}
!2049 = !{!2045, !2050, !2051, !2052, !2053, !2054, !2055, !2056}
!2050 = !DILocalVariable(name: "s2", arg: 2, scope: !2046, file: !1987, line: 118, type: !16)
!2051 = !DILocalVariable(name: "s23", arg: 3, scope: !2046, file: !1987, line: 118, type: !15)
!2052 = !DILocalVariable(name: "s24", arg: 4, scope: !2046, file: !1987, line: 118, type: !15)
!2053 = !DILocalVariable(name: "s25", arg: 5, scope: !2046, file: !1987, line: 118, type: !15)
!2054 = !DILocalVariable(name: "s26", arg: 6, scope: !2046, file: !1987, line: 118, type: !15)
!2055 = !DILocalVariable(name: "s27", arg: 7, scope: !2046, file: !1987, line: 118, type: !15)
!2056 = !DILocalVariable(name: "s28", arg: 8, scope: !2046, file: !1987, line: 118, type: !15)
!2057 = !DILocation(line: 0, scope: !2046, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 139, column: 16, scope: !2059, inlinedAt: !2040)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !1987, line: 136, column: 11)
!2060 = distinct !DILexicalBlock(scope: !2044, file: !1987, line: 135, column: 5)
!2061 = !DILocation(line: 120, column: 7, scope: !2062, inlinedAt: !2058)
!2062 = distinct !DILexicalBlock(scope: !2046, file: !1987, line: 120, column: 7)
!2063 = !DILocation(line: 120, column: 7, scope: !2046, inlinedAt: !2058)
!2064 = !DILocalVariable(name: "s1", arg: 1, scope: !2065, file: !1987, line: 104, type: !16)
!2065 = distinct !DISubprogram(name: "strcaseeq4", scope: !1987, file: !1987, line: 104, type: !2066, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!18, !16, !16, !15, !15, !15, !15, !15}
!2068 = !{!2064, !2069, !2070, !2071, !2072, !2073, !2074}
!2069 = !DILocalVariable(name: "s2", arg: 2, scope: !2065, file: !1987, line: 104, type: !16)
!2070 = !DILocalVariable(name: "s24", arg: 3, scope: !2065, file: !1987, line: 104, type: !15)
!2071 = !DILocalVariable(name: "s25", arg: 4, scope: !2065, file: !1987, line: 104, type: !15)
!2072 = !DILocalVariable(name: "s26", arg: 5, scope: !2065, file: !1987, line: 104, type: !15)
!2073 = !DILocalVariable(name: "s27", arg: 6, scope: !2065, file: !1987, line: 104, type: !15)
!2074 = !DILocalVariable(name: "s28", arg: 7, scope: !2065, file: !1987, line: 104, type: !15)
!2075 = !DILocation(line: 0, scope: !2065, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 125, column: 16, scope: !2077, inlinedAt: !2058)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !1987, line: 122, column: 11)
!2078 = distinct !DILexicalBlock(scope: !2062, file: !1987, line: 121, column: 5)
!2079 = !DILocation(line: 106, column: 7, scope: !2080, inlinedAt: !2076)
!2080 = distinct !DILexicalBlock(scope: !2065, file: !1987, line: 106, column: 7)
!2081 = !DILocation(line: 106, column: 7, scope: !2065, inlinedAt: !2076)
!2082 = !DILocalVariable(name: "s1", arg: 1, scope: !2083, file: !1987, line: 90, type: !16)
!2083 = distinct !DISubprogram(name: "strcaseeq5", scope: !1987, file: !1987, line: 90, type: !2084, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!18, !16, !16, !15, !15, !15, !15}
!2086 = !{!2082, !2087, !2088, !2089, !2090, !2091}
!2087 = !DILocalVariable(name: "s2", arg: 2, scope: !2083, file: !1987, line: 90, type: !16)
!2088 = !DILocalVariable(name: "s25", arg: 3, scope: !2083, file: !1987, line: 90, type: !15)
!2089 = !DILocalVariable(name: "s26", arg: 4, scope: !2083, file: !1987, line: 90, type: !15)
!2090 = !DILocalVariable(name: "s27", arg: 5, scope: !2083, file: !1987, line: 90, type: !15)
!2091 = !DILocalVariable(name: "s28", arg: 6, scope: !2083, file: !1987, line: 90, type: !15)
!2092 = !DILocation(line: 0, scope: !2083, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 111, column: 16, scope: !2094, inlinedAt: !2076)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !1987, line: 108, column: 11)
!2095 = distinct !DILexicalBlock(scope: !2080, file: !1987, line: 107, column: 5)
!2096 = !DILocation(line: 92, column: 7, scope: !2097, inlinedAt: !2093)
!2097 = distinct !DILexicalBlock(scope: !2083, file: !1987, line: 92, column: 7)
!2098 = !DILocation(line: 92, column: 7, scope: !2083, inlinedAt: !2093)
!2099 = !DILocation(line: 235, column: 12, scope: !2003)
!2100 = !DILocation(line: 235, column: 21, scope: !2003)
!2101 = !DILocation(line: 235, column: 5, scope: !2003)
!2102 = !DILocation(line: 0, scope: !2007, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 167, column: 16, scope: !2022, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 236, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1971, file: !231, line: 236, column: 7)
!2106 = !DILocation(line: 148, column: 7, scope: !2025, inlinedAt: !2103)
!2107 = !DILocation(line: 0, scope: !2027, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 153, column: 16, scope: !2041, inlinedAt: !2103)
!2109 = !DILocation(line: 134, column: 7, scope: !2044, inlinedAt: !2108)
!2110 = !DILocation(line: 134, column: 7, scope: !2027, inlinedAt: !2108)
!2111 = !DILocation(line: 0, scope: !2046, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 139, column: 16, scope: !2059, inlinedAt: !2108)
!2113 = !DILocation(line: 120, column: 7, scope: !2062, inlinedAt: !2112)
!2114 = !DILocation(line: 120, column: 7, scope: !2046, inlinedAt: !2112)
!2115 = !DILocation(line: 0, scope: !2065, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 125, column: 16, scope: !2077, inlinedAt: !2112)
!2117 = !DILocation(line: 106, column: 7, scope: !2080, inlinedAt: !2116)
!2118 = !DILocation(line: 106, column: 7, scope: !2065, inlinedAt: !2116)
!2119 = !DILocation(line: 0, scope: !2083, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 111, column: 16, scope: !2094, inlinedAt: !2116)
!2121 = !DILocation(line: 92, column: 7, scope: !2097, inlinedAt: !2120)
!2122 = !DILocation(line: 92, column: 7, scope: !2083, inlinedAt: !2120)
!2123 = !DILocalVariable(name: "s1", arg: 1, scope: !2124, file: !1987, line: 76, type: !16)
!2124 = distinct !DISubprogram(name: "strcaseeq6", scope: !1987, file: !1987, line: 76, type: !2125, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!18, !16, !16, !15, !15, !15}
!2127 = !{!2123, !2128, !2129, !2130, !2131}
!2128 = !DILocalVariable(name: "s2", arg: 2, scope: !2124, file: !1987, line: 76, type: !16)
!2129 = !DILocalVariable(name: "s26", arg: 3, scope: !2124, file: !1987, line: 76, type: !15)
!2130 = !DILocalVariable(name: "s27", arg: 4, scope: !2124, file: !1987, line: 76, type: !15)
!2131 = !DILocalVariable(name: "s28", arg: 5, scope: !2124, file: !1987, line: 76, type: !15)
!2132 = !DILocation(line: 0, scope: !2124, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 97, column: 16, scope: !2134, inlinedAt: !2120)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !1987, line: 94, column: 11)
!2135 = distinct !DILexicalBlock(scope: !2097, file: !1987, line: 93, column: 5)
!2136 = !DILocation(line: 78, column: 7, scope: !2137, inlinedAt: !2133)
!2137 = distinct !DILexicalBlock(scope: !2124, file: !1987, line: 78, column: 7)
!2138 = !DILocation(line: 78, column: 7, scope: !2124, inlinedAt: !2133)
!2139 = !DILocalVariable(name: "s1", arg: 1, scope: !2140, file: !1987, line: 62, type: !16)
!2140 = distinct !DISubprogram(name: "strcaseeq7", scope: !1987, file: !1987, line: 62, type: !2141, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!18, !16, !16, !15, !15}
!2143 = !{!2139, !2144, !2145, !2146}
!2144 = !DILocalVariable(name: "s2", arg: 2, scope: !2140, file: !1987, line: 62, type: !16)
!2145 = !DILocalVariable(name: "s27", arg: 3, scope: !2140, file: !1987, line: 62, type: !15)
!2146 = !DILocalVariable(name: "s28", arg: 4, scope: !2140, file: !1987, line: 62, type: !15)
!2147 = !DILocation(line: 0, scope: !2140, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 83, column: 16, scope: !2149, inlinedAt: !2133)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !1987, line: 80, column: 11)
!2150 = distinct !DILexicalBlock(scope: !2137, file: !1987, line: 79, column: 5)
!2151 = !DILocation(line: 64, column: 7, scope: !2152, inlinedAt: !2148)
!2152 = distinct !DILexicalBlock(scope: !2140, file: !1987, line: 64, column: 7)
!2153 = !DILocation(line: 236, column: 7, scope: !1971)
!2154 = !DILocation(line: 237, column: 12, scope: !2105)
!2155 = !DILocation(line: 237, column: 21, scope: !2105)
!2156 = !DILocation(line: 237, column: 5, scope: !2105)
!2157 = !DILocation(line: 239, column: 13, scope: !1971)
!2158 = !DILocation(line: 239, column: 11, scope: !1971)
!2159 = !DILocation(line: 239, column: 3, scope: !1971)
!2160 = !DILocation(line: 240, column: 1, scope: !1971)
!2161 = distinct !DISubprogram(name: "quotearg_alloc", scope: !231, file: !231, line: 799, type: !2162, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!14, !16, !73, !277}
!2164 = !{!2165, !2166, !2167}
!2165 = !DILocalVariable(name: "arg", arg: 1, scope: !2161, file: !231, line: 799, type: !16)
!2166 = !DILocalVariable(name: "argsize", arg: 2, scope: !2161, file: !231, line: 799, type: !73)
!2167 = !DILocalVariable(name: "o", arg: 3, scope: !2161, file: !231, line: 800, type: !277)
!2168 = !DILocation(line: 0, scope: !2161)
!2169 = !DILocalVariable(name: "arg", arg: 1, scope: !2170, file: !231, line: 812, type: !16)
!2170 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !231, file: !231, line: 812, type: !2171, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!14, !16, !73, !423, !277}
!2173 = !{!2169, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181}
!2174 = !DILocalVariable(name: "argsize", arg: 2, scope: !2170, file: !231, line: 812, type: !73)
!2175 = !DILocalVariable(name: "size", arg: 3, scope: !2170, file: !231, line: 812, type: !423)
!2176 = !DILocalVariable(name: "o", arg: 4, scope: !2170, file: !231, line: 813, type: !277)
!2177 = !DILocalVariable(name: "p", scope: !2170, file: !231, line: 815, type: !277)
!2178 = !DILocalVariable(name: "e", scope: !2170, file: !231, line: 816, type: !18)
!2179 = !DILocalVariable(name: "flags", scope: !2170, file: !231, line: 818, type: !18)
!2180 = !DILocalVariable(name: "bufsize", scope: !2170, file: !231, line: 819, type: !73)
!2181 = !DILocalVariable(name: "buf", scope: !2170, file: !231, line: 823, type: !14)
!2182 = !DILocation(line: 0, scope: !2170, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 802, column: 10, scope: !2161)
!2184 = !DILocation(line: 815, column: 37, scope: !2170, inlinedAt: !2183)
!2185 = !DILocation(line: 816, column: 11, scope: !2170, inlinedAt: !2183)
!2186 = !DILocation(line: 818, column: 18, scope: !2170, inlinedAt: !2183)
!2187 = !DILocation(line: 818, column: 24, scope: !2170, inlinedAt: !2183)
!2188 = !DILocation(line: 819, column: 69, scope: !2170, inlinedAt: !2183)
!2189 = !DILocation(line: 820, column: 53, scope: !2170, inlinedAt: !2183)
!2190 = !DILocation(line: 821, column: 49, scope: !2170, inlinedAt: !2183)
!2191 = !DILocation(line: 822, column: 49, scope: !2170, inlinedAt: !2183)
!2192 = !DILocation(line: 819, column: 20, scope: !2170, inlinedAt: !2183)
!2193 = !DILocation(line: 822, column: 62, scope: !2170, inlinedAt: !2183)
!2194 = !DILocalVariable(name: "n", arg: 1, scope: !2195, file: !268, line: 216, type: !73)
!2195 = distinct !DISubprogram(name: "xcharalloc", scope: !268, file: !268, line: 216, type: !2196, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!14, !73}
!2198 = !{!2194}
!2199 = !DILocation(line: 0, scope: !2195, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 823, column: 15, scope: !2170, inlinedAt: !2183)
!2201 = !DILocation(line: 218, column: 10, scope: !2195, inlinedAt: !2200)
!2202 = !DILocation(line: 824, column: 60, scope: !2170, inlinedAt: !2183)
!2203 = !DILocation(line: 826, column: 32, scope: !2170, inlinedAt: !2183)
!2204 = !DILocation(line: 826, column: 47, scope: !2170, inlinedAt: !2183)
!2205 = !DILocation(line: 824, column: 3, scope: !2170, inlinedAt: !2183)
!2206 = !DILocation(line: 827, column: 9, scope: !2170, inlinedAt: !2183)
!2207 = !DILocation(line: 802, column: 3, scope: !2161)
!2208 = !DILocation(line: 0, scope: !2170)
!2209 = !DILocation(line: 815, column: 37, scope: !2170)
!2210 = !DILocation(line: 816, column: 11, scope: !2170)
!2211 = !DILocation(line: 818, column: 18, scope: !2170)
!2212 = !DILocation(line: 818, column: 27, scope: !2170)
!2213 = !DILocation(line: 818, column: 24, scope: !2170)
!2214 = !DILocation(line: 819, column: 69, scope: !2170)
!2215 = !DILocation(line: 820, column: 53, scope: !2170)
!2216 = !DILocation(line: 821, column: 49, scope: !2170)
!2217 = !DILocation(line: 822, column: 49, scope: !2170)
!2218 = !DILocation(line: 819, column: 20, scope: !2170)
!2219 = !DILocation(line: 822, column: 62, scope: !2170)
!2220 = !DILocation(line: 0, scope: !2195, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 823, column: 15, scope: !2170)
!2222 = !DILocation(line: 218, column: 10, scope: !2195, inlinedAt: !2221)
!2223 = !DILocation(line: 824, column: 60, scope: !2170)
!2224 = !DILocation(line: 826, column: 32, scope: !2170)
!2225 = !DILocation(line: 826, column: 47, scope: !2170)
!2226 = !DILocation(line: 824, column: 3, scope: !2170)
!2227 = !DILocation(line: 827, column: 9, scope: !2170)
!2228 = !DILocation(line: 828, column: 7, scope: !2170)
!2229 = !DILocation(line: 829, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2170, file: !231, line: 828, column: 7)
!2231 = !{!2232, !2232, i64 0}
!2232 = !{!"long", !1069, i64 0}
!2233 = !DILocation(line: 829, column: 5, scope: !2230)
!2234 = !DILocation(line: 830, column: 3, scope: !2170)
!2235 = distinct !DISubprogram(name: "quotearg_free", scope: !231, file: !231, line: 848, type: !100, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2236)
!2236 = !{!2237, !2238}
!2237 = !DILocalVariable(name: "sv", scope: !2235, file: !231, line: 850, type: !353)
!2238 = !DILocalVariable(name: "i", scope: !2235, file: !231, line: 851, type: !18)
!2239 = !DILocation(line: 850, column: 24, scope: !2235)
!2240 = !DILocation(line: 0, scope: !2235)
!2241 = !DILocation(line: 852, column: 19, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !231, line: 852, column: 3)
!2243 = distinct !DILexicalBlock(scope: !2235, file: !231, line: 852, column: 3)
!2244 = !DILocation(line: 852, column: 17, scope: !2242)
!2245 = !DILocation(line: 852, column: 3, scope: !2243)
!2246 = !DILocation(line: 853, column: 17, scope: !2242)
!2247 = !{!2248, !1068, i64 8}
!2248 = !{!"slotvec", !2232, i64 0, !1068, i64 8}
!2249 = !DILocation(line: 853, column: 5, scope: !2242)
!2250 = !DILocation(line: 852, column: 28, scope: !2242)
!2251 = distinct !{!2251, !2245, !2252}
!2252 = !DILocation(line: 853, column: 20, scope: !2243)
!2253 = !DILocation(line: 854, column: 13, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2235, file: !231, line: 854, column: 7)
!2255 = !DILocation(line: 854, column: 17, scope: !2254)
!2256 = !DILocation(line: 854, column: 7, scope: !2235)
!2257 = !DILocation(line: 856, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !231, line: 855, column: 5)
!2259 = !DILocation(line: 857, column: 21, scope: !2258)
!2260 = !{!2248, !2232, i64 0}
!2261 = !DILocation(line: 858, column: 20, scope: !2258)
!2262 = !DILocation(line: 859, column: 5, scope: !2258)
!2263 = !DILocation(line: 860, column: 10, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2235, file: !231, line: 860, column: 7)
!2265 = !DILocation(line: 860, column: 7, scope: !2235)
!2266 = !DILocation(line: 862, column: 13, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !231, line: 861, column: 5)
!2268 = !DILocation(line: 862, column: 7, scope: !2267)
!2269 = !DILocation(line: 863, column: 15, scope: !2267)
!2270 = !DILocation(line: 864, column: 5, scope: !2267)
!2271 = !DILocation(line: 865, column: 10, scope: !2235)
!2272 = !DILocation(line: 866, column: 1, scope: !2235)
!2273 = distinct !DISubprogram(name: "quotearg_n", scope: !231, file: !231, line: 931, type: !87, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2274)
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "n", arg: 1, scope: !2273, file: !231, line: 931, type: !18)
!2276 = !DILocalVariable(name: "arg", arg: 2, scope: !2273, file: !231, line: 931, type: !16)
!2277 = !DILocation(line: 0, scope: !2273)
!2278 = !DILocation(line: 933, column: 10, scope: !2273)
!2279 = !DILocation(line: 933, column: 3, scope: !2273)
!2280 = distinct !DISubprogram(name: "quotearg_n_options", scope: !231, file: !231, line: 877, type: !2281, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!14, !18, !16, !73, !277}
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2293, !2294, !2296, !2297, !2298}
!2284 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !231, line: 877, type: !18)
!2285 = !DILocalVariable(name: "arg", arg: 2, scope: !2280, file: !231, line: 877, type: !16)
!2286 = !DILocalVariable(name: "argsize", arg: 3, scope: !2280, file: !231, line: 877, type: !73)
!2287 = !DILocalVariable(name: "options", arg: 4, scope: !2280, file: !231, line: 878, type: !277)
!2288 = !DILocalVariable(name: "e", scope: !2280, file: !231, line: 880, type: !18)
!2289 = !DILocalVariable(name: "sv", scope: !2280, file: !231, line: 882, type: !353)
!2290 = !DILocalVariable(name: "preallocated", scope: !2291, file: !231, line: 889, type: !180)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !231, line: 888, column: 5)
!2292 = distinct !DILexicalBlock(scope: !2280, file: !231, line: 887, column: 7)
!2293 = !DILocalVariable(name: "nmax", scope: !2291, file: !231, line: 890, type: !18)
!2294 = !DILocalVariable(name: "size", scope: !2295, file: !231, line: 903, type: !73)
!2295 = distinct !DILexicalBlock(scope: !2280, file: !231, line: 902, column: 3)
!2296 = !DILocalVariable(name: "val", scope: !2295, file: !231, line: 904, type: !14)
!2297 = !DILocalVariable(name: "flags", scope: !2295, file: !231, line: 906, type: !18)
!2298 = !DILocalVariable(name: "qsize", scope: !2295, file: !231, line: 907, type: !73)
!2299 = !DILocation(line: 0, scope: !2280)
!2300 = !DILocation(line: 880, column: 11, scope: !2280)
!2301 = !DILocation(line: 882, column: 24, scope: !2280)
!2302 = !DILocation(line: 884, column: 9, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2280, file: !231, line: 884, column: 7)
!2304 = !DILocation(line: 884, column: 7, scope: !2280)
!2305 = !DILocation(line: 885, column: 5, scope: !2303)
!2306 = !DILocation(line: 887, column: 7, scope: !2292)
!2307 = !DILocation(line: 887, column: 14, scope: !2292)
!2308 = !DILocation(line: 887, column: 7, scope: !2280)
!2309 = !DILocation(line: 889, column: 31, scope: !2291)
!2310 = !DILocation(line: 0, scope: !2291)
!2311 = !DILocation(line: 892, column: 16, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2291, file: !231, line: 892, column: 11)
!2313 = !DILocation(line: 892, column: 11, scope: !2291)
!2314 = !DILocation(line: 893, column: 9, scope: !2312)
!2315 = !DILocation(line: 895, column: 32, scope: !2291)
!2316 = !DILocation(line: 895, column: 61, scope: !2291)
!2317 = !DILocation(line: 895, column: 58, scope: !2291)
!2318 = !DILocation(line: 895, column: 66, scope: !2291)
!2319 = !DILocation(line: 895, column: 22, scope: !2291)
!2320 = !DILocation(line: 895, column: 15, scope: !2291)
!2321 = !DILocation(line: 896, column: 11, scope: !2291)
!2322 = !DILocation(line: 897, column: 15, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2291, file: !231, line: 896, column: 11)
!2324 = !{i64 0, i64 8, !2231, i64 8, i64 8, !1067}
!2325 = !DILocation(line: 897, column: 9, scope: !2323)
!2326 = !DILocation(line: 898, column: 20, scope: !2291)
!2327 = !DILocation(line: 898, column: 18, scope: !2291)
!2328 = !DILocation(line: 898, column: 15, scope: !2291)
!2329 = !DILocation(line: 898, column: 38, scope: !2291)
!2330 = !DILocation(line: 898, column: 31, scope: !2291)
!2331 = !DILocation(line: 898, column: 48, scope: !2291)
!2332 = !DILocation(line: 0, scope: !1728, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 898, column: 7, scope: !2291)
!2334 = !DILocation(line: 71, column: 10, scope: !1728, inlinedAt: !2333)
!2335 = !DILocation(line: 899, column: 14, scope: !2291)
!2336 = !DILocation(line: 900, column: 5, scope: !2291)
!2337 = !DILocation(line: 903, column: 19, scope: !2295)
!2338 = !DILocation(line: 903, column: 25, scope: !2295)
!2339 = !DILocation(line: 0, scope: !2295)
!2340 = !DILocation(line: 904, column: 23, scope: !2295)
!2341 = !DILocation(line: 906, column: 26, scope: !2295)
!2342 = !DILocation(line: 906, column: 32, scope: !2295)
!2343 = !DILocation(line: 908, column: 55, scope: !2295)
!2344 = !DILocation(line: 909, column: 46, scope: !2295)
!2345 = !DILocation(line: 910, column: 55, scope: !2295)
!2346 = !DILocation(line: 911, column: 55, scope: !2295)
!2347 = !DILocation(line: 907, column: 20, scope: !2295)
!2348 = !DILocation(line: 913, column: 14, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2295, file: !231, line: 913, column: 9)
!2350 = !DILocation(line: 913, column: 9, scope: !2295)
!2351 = !DILocation(line: 915, column: 35, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !231, line: 914, column: 7)
!2353 = !DILocation(line: 915, column: 20, scope: !2352)
!2354 = !DILocation(line: 916, column: 17, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !231, line: 916, column: 13)
!2356 = !DILocation(line: 916, column: 13, scope: !2352)
!2357 = !DILocation(line: 917, column: 11, scope: !2355)
!2358 = !DILocation(line: 0, scope: !2195, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 918, column: 27, scope: !2352)
!2360 = !DILocation(line: 218, column: 10, scope: !2195, inlinedAt: !2359)
!2361 = !DILocation(line: 918, column: 19, scope: !2352)
!2362 = !DILocation(line: 919, column: 69, scope: !2352)
!2363 = !DILocation(line: 921, column: 44, scope: !2352)
!2364 = !DILocation(line: 922, column: 44, scope: !2352)
!2365 = !DILocation(line: 919, column: 9, scope: !2352)
!2366 = !DILocation(line: 923, column: 7, scope: !2352)
!2367 = !DILocation(line: 925, column: 11, scope: !2295)
!2368 = !DILocation(line: 926, column: 5, scope: !2295)
!2369 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !231, file: !231, line: 937, type: !2370, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!14, !18, !16, !73}
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "n", arg: 1, scope: !2369, file: !231, line: 937, type: !18)
!2374 = !DILocalVariable(name: "arg", arg: 2, scope: !2369, file: !231, line: 937, type: !16)
!2375 = !DILocalVariable(name: "argsize", arg: 3, scope: !2369, file: !231, line: 937, type: !73)
!2376 = !DILocation(line: 0, scope: !2369)
!2377 = !DILocation(line: 939, column: 10, scope: !2369)
!2378 = !DILocation(line: 939, column: 3, scope: !2369)
!2379 = distinct !DISubprogram(name: "quotearg", scope: !231, file: !231, line: 943, type: !93, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2380)
!2380 = !{!2381}
!2381 = !DILocalVariable(name: "arg", arg: 1, scope: !2379, file: !231, line: 943, type: !16)
!2382 = !DILocation(line: 0, scope: !2379)
!2383 = !DILocation(line: 0, scope: !2273, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 945, column: 10, scope: !2379)
!2385 = !DILocation(line: 933, column: 10, scope: !2273, inlinedAt: !2384)
!2386 = !DILocation(line: 945, column: 3, scope: !2379)
!2387 = distinct !DISubprogram(name: "quotearg_mem", scope: !231, file: !231, line: 949, type: !2388, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!14, !16, !73}
!2390 = !{!2391, !2392}
!2391 = !DILocalVariable(name: "arg", arg: 1, scope: !2387, file: !231, line: 949, type: !16)
!2392 = !DILocalVariable(name: "argsize", arg: 2, scope: !2387, file: !231, line: 949, type: !73)
!2393 = !DILocation(line: 0, scope: !2387)
!2394 = !DILocation(line: 0, scope: !2369, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 951, column: 10, scope: !2387)
!2396 = !DILocation(line: 939, column: 10, scope: !2369, inlinedAt: !2395)
!2397 = !DILocation(line: 951, column: 3, scope: !2387)
!2398 = distinct !DISubprogram(name: "quotearg_n_style", scope: !231, file: !231, line: 955, type: !2399, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!14, !18, !233, !16}
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DILocalVariable(name: "n", arg: 1, scope: !2398, file: !231, line: 955, type: !18)
!2403 = !DILocalVariable(name: "s", arg: 2, scope: !2398, file: !231, line: 955, type: !233)
!2404 = !DILocalVariable(name: "arg", arg: 3, scope: !2398, file: !231, line: 955, type: !16)
!2405 = !DILocalVariable(name: "o", scope: !2398, file: !231, line: 957, type: !278)
!2406 = !DILocation(line: 0, scope: !2398)
!2407 = !DILocation(line: 957, column: 3, scope: !2398)
!2408 = !DILocation(line: 957, column: 32, scope: !2398)
!2409 = !DILocalVariable(name: "style", arg: 1, scope: !2410, file: !231, line: 193, type: !233)
!2410 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !231, file: !231, line: 193, type: !2411, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!279, !233}
!2413 = !{!2409, !2414}
!2414 = !DILocalVariable(name: "o", scope: !2410, file: !231, line: 195, type: !279)
!2415 = !DILocation(line: 0, scope: !2410, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 957, column: 36, scope: !2398)
!2417 = !DILocation(line: 195, column: 26, scope: !2410, inlinedAt: !2416)
!2418 = !{!2419}
!2419 = distinct !{!2419, !2420, !"quoting_options_from_style: argument 0"}
!2420 = distinct !{!2420, !"quoting_options_from_style"}
!2421 = !DILocation(line: 196, column: 13, scope: !2422, inlinedAt: !2416)
!2422 = distinct !DILexicalBlock(scope: !2410, file: !231, line: 196, column: 7)
!2423 = !DILocation(line: 196, column: 7, scope: !2410, inlinedAt: !2416)
!2424 = !DILocation(line: 197, column: 5, scope: !2422, inlinedAt: !2416)
!2425 = !DILocation(line: 198, column: 5, scope: !2410, inlinedAt: !2416)
!2426 = !DILocation(line: 198, column: 11, scope: !2410, inlinedAt: !2416)
!2427 = !DILocation(line: 958, column: 10, scope: !2398)
!2428 = !DILocation(line: 959, column: 1, scope: !2398)
!2429 = !DILocation(line: 958, column: 3, scope: !2398)
!2430 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !231, file: !231, line: 962, type: !2431, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!14, !18, !233, !16, !73}
!2433 = !{!2434, !2435, !2436, !2437, !2438}
!2434 = !DILocalVariable(name: "n", arg: 1, scope: !2430, file: !231, line: 962, type: !18)
!2435 = !DILocalVariable(name: "s", arg: 2, scope: !2430, file: !231, line: 962, type: !233)
!2436 = !DILocalVariable(name: "arg", arg: 3, scope: !2430, file: !231, line: 963, type: !16)
!2437 = !DILocalVariable(name: "argsize", arg: 4, scope: !2430, file: !231, line: 963, type: !73)
!2438 = !DILocalVariable(name: "o", scope: !2430, file: !231, line: 965, type: !278)
!2439 = !DILocation(line: 0, scope: !2430)
!2440 = !DILocation(line: 965, column: 3, scope: !2430)
!2441 = !DILocation(line: 965, column: 32, scope: !2430)
!2442 = !DILocation(line: 0, scope: !2410, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 965, column: 36, scope: !2430)
!2444 = !DILocation(line: 195, column: 26, scope: !2410, inlinedAt: !2443)
!2445 = !{!2446}
!2446 = distinct !{!2446, !2447, !"quoting_options_from_style: argument 0"}
!2447 = distinct !{!2447, !"quoting_options_from_style"}
!2448 = !DILocation(line: 196, column: 13, scope: !2422, inlinedAt: !2443)
!2449 = !DILocation(line: 196, column: 7, scope: !2410, inlinedAt: !2443)
!2450 = !DILocation(line: 197, column: 5, scope: !2422, inlinedAt: !2443)
!2451 = !DILocation(line: 198, column: 5, scope: !2410, inlinedAt: !2443)
!2452 = !DILocation(line: 198, column: 11, scope: !2410, inlinedAt: !2443)
!2453 = !DILocation(line: 966, column: 10, scope: !2430)
!2454 = !DILocation(line: 967, column: 1, scope: !2430)
!2455 = !DILocation(line: 966, column: 3, scope: !2430)
!2456 = distinct !DISubprogram(name: "quotearg_style", scope: !231, file: !231, line: 970, type: !2457, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!14, !233, !16}
!2459 = !{!2460, !2461}
!2460 = !DILocalVariable(name: "s", arg: 1, scope: !2456, file: !231, line: 970, type: !233)
!2461 = !DILocalVariable(name: "arg", arg: 2, scope: !2456, file: !231, line: 970, type: !16)
!2462 = !DILocation(line: 195, column: 26, scope: !2410, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 957, column: 36, scope: !2398, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 972, column: 10, scope: !2456)
!2465 = !DILocation(line: 957, column: 32, scope: !2398, inlinedAt: !2464)
!2466 = !DILocation(line: 0, scope: !2456)
!2467 = !DILocation(line: 0, scope: !2398, inlinedAt: !2464)
!2468 = !DILocation(line: 957, column: 3, scope: !2398, inlinedAt: !2464)
!2469 = !DILocation(line: 0, scope: !2410, inlinedAt: !2463)
!2470 = !{!2471}
!2471 = distinct !{!2471, !2472, !"quoting_options_from_style: argument 0"}
!2472 = distinct !{!2472, !"quoting_options_from_style"}
!2473 = !DILocation(line: 196, column: 13, scope: !2422, inlinedAt: !2463)
!2474 = !DILocation(line: 196, column: 7, scope: !2410, inlinedAt: !2463)
!2475 = !DILocation(line: 197, column: 5, scope: !2422, inlinedAt: !2463)
!2476 = !DILocation(line: 198, column: 5, scope: !2410, inlinedAt: !2463)
!2477 = !DILocation(line: 198, column: 11, scope: !2410, inlinedAt: !2463)
!2478 = !DILocation(line: 958, column: 10, scope: !2398, inlinedAt: !2464)
!2479 = !DILocation(line: 959, column: 1, scope: !2398, inlinedAt: !2464)
!2480 = !DILocation(line: 972, column: 3, scope: !2456)
!2481 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !231, file: !231, line: 976, type: !2482, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2484)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!14, !233, !16, !73}
!2484 = !{!2485, !2486, !2487}
!2485 = !DILocalVariable(name: "s", arg: 1, scope: !2481, file: !231, line: 976, type: !233)
!2486 = !DILocalVariable(name: "arg", arg: 2, scope: !2481, file: !231, line: 976, type: !16)
!2487 = !DILocalVariable(name: "argsize", arg: 3, scope: !2481, file: !231, line: 976, type: !73)
!2488 = !DILocation(line: 195, column: 26, scope: !2410, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 965, column: 36, scope: !2430, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 978, column: 10, scope: !2481)
!2491 = !DILocation(line: 965, column: 32, scope: !2430, inlinedAt: !2490)
!2492 = !DILocation(line: 0, scope: !2481)
!2493 = !DILocation(line: 0, scope: !2430, inlinedAt: !2490)
!2494 = !DILocation(line: 965, column: 3, scope: !2430, inlinedAt: !2490)
!2495 = !DILocation(line: 0, scope: !2410, inlinedAt: !2489)
!2496 = !{!2497}
!2497 = distinct !{!2497, !2498, !"quoting_options_from_style: argument 0"}
!2498 = distinct !{!2498, !"quoting_options_from_style"}
!2499 = !DILocation(line: 196, column: 13, scope: !2422, inlinedAt: !2489)
!2500 = !DILocation(line: 196, column: 7, scope: !2410, inlinedAt: !2489)
!2501 = !DILocation(line: 197, column: 5, scope: !2422, inlinedAt: !2489)
!2502 = !DILocation(line: 198, column: 5, scope: !2410, inlinedAt: !2489)
!2503 = !DILocation(line: 198, column: 11, scope: !2410, inlinedAt: !2489)
!2504 = !DILocation(line: 966, column: 10, scope: !2430, inlinedAt: !2490)
!2505 = !DILocation(line: 967, column: 1, scope: !2430, inlinedAt: !2490)
!2506 = !DILocation(line: 978, column: 3, scope: !2481)
!2507 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !231, file: !231, line: 982, type: !2508, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!14, !16, !73, !15}
!2510 = !{!2511, !2512, !2513, !2514}
!2511 = !DILocalVariable(name: "arg", arg: 1, scope: !2507, file: !231, line: 982, type: !16)
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2507, file: !231, line: 982, type: !73)
!2513 = !DILocalVariable(name: "ch", arg: 3, scope: !2507, file: !231, line: 982, type: !15)
!2514 = !DILocalVariable(name: "options", scope: !2507, file: !231, line: 984, type: !279)
!2515 = !DILocation(line: 0, scope: !2507)
!2516 = !DILocation(line: 984, column: 3, scope: !2507)
!2517 = !DILocation(line: 984, column: 26, scope: !2507)
!2518 = !DILocation(line: 985, column: 13, scope: !2507)
!2519 = !{i64 0, i64 4, !1182, i64 4, i64 4, !1141, i64 8, i64 32, !1182, i64 40, i64 8, !1067, i64 48, i64 8, !1067}
!2520 = !DILocation(line: 0, scope: !1340, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 986, column: 3, scope: !2507)
!2522 = !DILocation(line: 156, column: 62, scope: !1340, inlinedAt: !2521)
!2523 = !DILocation(line: 156, column: 57, scope: !1340, inlinedAt: !2521)
!2524 = !DILocation(line: 157, column: 15, scope: !1340, inlinedAt: !2521)
!2525 = !DILocation(line: 158, column: 12, scope: !1340, inlinedAt: !2521)
!2526 = !DILocation(line: 158, column: 15, scope: !1340, inlinedAt: !2521)
!2527 = !DILocation(line: 158, column: 25, scope: !1340, inlinedAt: !2521)
!2528 = !DILocation(line: 159, column: 18, scope: !1340, inlinedAt: !2521)
!2529 = !DILocation(line: 159, column: 23, scope: !1340, inlinedAt: !2521)
!2530 = !DILocation(line: 159, column: 6, scope: !1340, inlinedAt: !2521)
!2531 = !DILocation(line: 987, column: 10, scope: !2507)
!2532 = !DILocation(line: 988, column: 1, scope: !2507)
!2533 = !DILocation(line: 987, column: 3, scope: !2507)
!2534 = distinct !DISubprogram(name: "quotearg_char", scope: !231, file: !231, line: 991, type: !2535, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!14, !16, !15}
!2537 = !{!2538, !2539}
!2538 = !DILocalVariable(name: "arg", arg: 1, scope: !2534, file: !231, line: 991, type: !16)
!2539 = !DILocalVariable(name: "ch", arg: 2, scope: !2534, file: !231, line: 991, type: !15)
!2540 = !DILocation(line: 984, column: 26, scope: !2507, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 993, column: 10, scope: !2534)
!2542 = !DILocation(line: 0, scope: !2534)
!2543 = !DILocation(line: 0, scope: !2507, inlinedAt: !2541)
!2544 = !DILocation(line: 984, column: 3, scope: !2507, inlinedAt: !2541)
!2545 = !DILocation(line: 985, column: 13, scope: !2507, inlinedAt: !2541)
!2546 = !DILocation(line: 0, scope: !1340, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 986, column: 3, scope: !2507, inlinedAt: !2541)
!2548 = !DILocation(line: 156, column: 62, scope: !1340, inlinedAt: !2547)
!2549 = !DILocation(line: 156, column: 57, scope: !1340, inlinedAt: !2547)
!2550 = !DILocation(line: 157, column: 15, scope: !1340, inlinedAt: !2547)
!2551 = !DILocation(line: 158, column: 12, scope: !1340, inlinedAt: !2547)
!2552 = !DILocation(line: 158, column: 15, scope: !1340, inlinedAt: !2547)
!2553 = !DILocation(line: 158, column: 25, scope: !1340, inlinedAt: !2547)
!2554 = !DILocation(line: 159, column: 18, scope: !1340, inlinedAt: !2547)
!2555 = !DILocation(line: 159, column: 23, scope: !1340, inlinedAt: !2547)
!2556 = !DILocation(line: 159, column: 6, scope: !1340, inlinedAt: !2547)
!2557 = !DILocation(line: 987, column: 10, scope: !2507, inlinedAt: !2541)
!2558 = !DILocation(line: 988, column: 1, scope: !2507, inlinedAt: !2541)
!2559 = !DILocation(line: 993, column: 3, scope: !2534)
!2560 = distinct !DISubprogram(name: "quotearg_colon", scope: !231, file: !231, line: 997, type: !93, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2561)
!2561 = !{!2562}
!2562 = !DILocalVariable(name: "arg", arg: 1, scope: !2560, file: !231, line: 997, type: !16)
!2563 = !DILocation(line: 984, column: 26, scope: !2507, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 993, column: 10, scope: !2534, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 999, column: 10, scope: !2560)
!2566 = !DILocation(line: 0, scope: !2560)
!2567 = !DILocation(line: 0, scope: !2534, inlinedAt: !2565)
!2568 = !DILocation(line: 0, scope: !2507, inlinedAt: !2564)
!2569 = !DILocation(line: 984, column: 3, scope: !2507, inlinedAt: !2564)
!2570 = !DILocation(line: 985, column: 13, scope: !2507, inlinedAt: !2564)
!2571 = !DILocation(line: 0, scope: !1340, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 986, column: 3, scope: !2507, inlinedAt: !2564)
!2573 = !DILocation(line: 156, column: 57, scope: !1340, inlinedAt: !2572)
!2574 = !DILocation(line: 158, column: 12, scope: !1340, inlinedAt: !2572)
!2575 = !DILocation(line: 159, column: 6, scope: !1340, inlinedAt: !2572)
!2576 = !DILocation(line: 987, column: 10, scope: !2507, inlinedAt: !2564)
!2577 = !DILocation(line: 988, column: 1, scope: !2507, inlinedAt: !2564)
!2578 = !DILocation(line: 999, column: 3, scope: !2560)
!2579 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !231, file: !231, line: 1003, type: !2388, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2580)
!2580 = !{!2581, !2582}
!2581 = !DILocalVariable(name: "arg", arg: 1, scope: !2579, file: !231, line: 1003, type: !16)
!2582 = !DILocalVariable(name: "argsize", arg: 2, scope: !2579, file: !231, line: 1003, type: !73)
!2583 = !DILocation(line: 984, column: 26, scope: !2507, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1005, column: 10, scope: !2579)
!2585 = !DILocation(line: 0, scope: !2579)
!2586 = !DILocation(line: 0, scope: !2507, inlinedAt: !2584)
!2587 = !DILocation(line: 984, column: 3, scope: !2507, inlinedAt: !2584)
!2588 = !DILocation(line: 985, column: 13, scope: !2507, inlinedAt: !2584)
!2589 = !DILocation(line: 0, scope: !1340, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 986, column: 3, scope: !2507, inlinedAt: !2584)
!2591 = !DILocation(line: 156, column: 57, scope: !1340, inlinedAt: !2590)
!2592 = !DILocation(line: 158, column: 12, scope: !1340, inlinedAt: !2590)
!2593 = !DILocation(line: 159, column: 6, scope: !1340, inlinedAt: !2590)
!2594 = !DILocation(line: 987, column: 10, scope: !2507, inlinedAt: !2584)
!2595 = !DILocation(line: 988, column: 1, scope: !2507, inlinedAt: !2584)
!2596 = !DILocation(line: 1005, column: 3, scope: !2579)
!2597 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !231, file: !231, line: 1009, type: !2399, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2598)
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DILocalVariable(name: "n", arg: 1, scope: !2597, file: !231, line: 1009, type: !18)
!2600 = !DILocalVariable(name: "s", arg: 2, scope: !2597, file: !231, line: 1009, type: !233)
!2601 = !DILocalVariable(name: "arg", arg: 3, scope: !2597, file: !231, line: 1009, type: !16)
!2602 = !DILocalVariable(name: "options", scope: !2597, file: !231, line: 1011, type: !279)
!2603 = !DILocation(line: 195, column: 26, scope: !2410, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1012, column: 13, scope: !2597)
!2605 = !DILocation(line: 0, scope: !2597)
!2606 = !DILocation(line: 1011, column: 3, scope: !2597)
!2607 = !DILocation(line: 1011, column: 26, scope: !2597)
!2608 = !DILocation(line: 1012, column: 13, scope: !2597)
!2609 = !DILocation(line: 0, scope: !2410, inlinedAt: !2604)
!2610 = !{!2611}
!2611 = distinct !{!2611, !2612, !"quoting_options_from_style: argument 0"}
!2612 = distinct !{!2612, !"quoting_options_from_style"}
!2613 = !DILocation(line: 196, column: 13, scope: !2422, inlinedAt: !2604)
!2614 = !DILocation(line: 196, column: 7, scope: !2410, inlinedAt: !2604)
!2615 = !DILocation(line: 197, column: 5, scope: !2422, inlinedAt: !2604)
!2616 = !DILocation(line: 0, scope: !1340, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1013, column: 3, scope: !2597)
!2618 = !DILocation(line: 156, column: 57, scope: !1340, inlinedAt: !2617)
!2619 = !DILocation(line: 158, column: 12, scope: !1340, inlinedAt: !2617)
!2620 = !DILocation(line: 159, column: 6, scope: !1340, inlinedAt: !2617)
!2621 = !DILocation(line: 1014, column: 10, scope: !2597)
!2622 = !DILocation(line: 1015, column: 1, scope: !2597)
!2623 = !DILocation(line: 1014, column: 3, scope: !2597)
!2624 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !231, file: !231, line: 1018, type: !2625, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!14, !18, !16, !16, !16}
!2627 = !{!2628, !2629, !2630, !2631}
!2628 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !231, line: 1018, type: !18)
!2629 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2624, file: !231, line: 1018, type: !16)
!2630 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2624, file: !231, line: 1019, type: !16)
!2631 = !DILocalVariable(name: "arg", arg: 4, scope: !2624, file: !231, line: 1019, type: !16)
!2632 = !DILocalVariable(name: "o", scope: !2633, file: !231, line: 1030, type: !279)
!2633 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !231, file: !231, line: 1026, type: !2634, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!14, !18, !16, !16, !16, !73}
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2632}
!2637 = !DILocalVariable(name: "n", arg: 1, scope: !2633, file: !231, line: 1026, type: !18)
!2638 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2633, file: !231, line: 1026, type: !16)
!2639 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2633, file: !231, line: 1027, type: !16)
!2640 = !DILocalVariable(name: "arg", arg: 4, scope: !2633, file: !231, line: 1028, type: !16)
!2641 = !DILocalVariable(name: "argsize", arg: 5, scope: !2633, file: !231, line: 1028, type: !73)
!2642 = !DILocation(line: 1030, column: 26, scope: !2633, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1021, column: 10, scope: !2624)
!2644 = !DILocation(line: 0, scope: !2624)
!2645 = !DILocation(line: 0, scope: !2633, inlinedAt: !2643)
!2646 = !DILocation(line: 1030, column: 3, scope: !2633, inlinedAt: !2643)
!2647 = !DILocation(line: 1030, column: 30, scope: !2633, inlinedAt: !2643)
!2648 = !DILocation(line: 0, scope: !1381, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1031, column: 3, scope: !2633, inlinedAt: !2643)
!2650 = !DILocation(line: 184, column: 6, scope: !1381, inlinedAt: !2649)
!2651 = !DILocation(line: 184, column: 12, scope: !1381, inlinedAt: !2649)
!2652 = !DILocation(line: 185, column: 8, scope: !1395, inlinedAt: !2649)
!2653 = !DILocation(line: 185, column: 23, scope: !1395, inlinedAt: !2649)
!2654 = !DILocation(line: 185, column: 19, scope: !1395, inlinedAt: !2649)
!2655 = !DILocation(line: 186, column: 5, scope: !1395, inlinedAt: !2649)
!2656 = !DILocation(line: 187, column: 6, scope: !1381, inlinedAt: !2649)
!2657 = !DILocation(line: 187, column: 17, scope: !1381, inlinedAt: !2649)
!2658 = !DILocation(line: 188, column: 6, scope: !1381, inlinedAt: !2649)
!2659 = !DILocation(line: 188, column: 18, scope: !1381, inlinedAt: !2649)
!2660 = !DILocation(line: 1032, column: 10, scope: !2633, inlinedAt: !2643)
!2661 = !DILocation(line: 1033, column: 1, scope: !2633, inlinedAt: !2643)
!2662 = !DILocation(line: 1021, column: 3, scope: !2624)
!2663 = !DILocation(line: 0, scope: !2633)
!2664 = !DILocation(line: 1030, column: 3, scope: !2633)
!2665 = !DILocation(line: 1030, column: 26, scope: !2633)
!2666 = !DILocation(line: 1030, column: 30, scope: !2633)
!2667 = !DILocation(line: 0, scope: !1381, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 1031, column: 3, scope: !2633)
!2669 = !DILocation(line: 184, column: 6, scope: !1381, inlinedAt: !2668)
!2670 = !DILocation(line: 184, column: 12, scope: !1381, inlinedAt: !2668)
!2671 = !DILocation(line: 185, column: 8, scope: !1395, inlinedAt: !2668)
!2672 = !DILocation(line: 185, column: 23, scope: !1395, inlinedAt: !2668)
!2673 = !DILocation(line: 185, column: 19, scope: !1395, inlinedAt: !2668)
!2674 = !DILocation(line: 186, column: 5, scope: !1395, inlinedAt: !2668)
!2675 = !DILocation(line: 187, column: 6, scope: !1381, inlinedAt: !2668)
!2676 = !DILocation(line: 187, column: 17, scope: !1381, inlinedAt: !2668)
!2677 = !DILocation(line: 188, column: 6, scope: !1381, inlinedAt: !2668)
!2678 = !DILocation(line: 188, column: 18, scope: !1381, inlinedAt: !2668)
!2679 = !DILocation(line: 1032, column: 10, scope: !2633)
!2680 = !DILocation(line: 1033, column: 1, scope: !2633)
!2681 = !DILocation(line: 1032, column: 3, scope: !2633)
!2682 = distinct !DISubprogram(name: "quotearg_custom", scope: !231, file: !231, line: 1036, type: !2683, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!14, !16, !16, !16}
!2685 = !{!2686, !2687, !2688}
!2686 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2682, file: !231, line: 1036, type: !16)
!2687 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2682, file: !231, line: 1036, type: !16)
!2688 = !DILocalVariable(name: "arg", arg: 3, scope: !2682, file: !231, line: 1037, type: !16)
!2689 = !DILocation(line: 1030, column: 26, scope: !2633, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1021, column: 10, scope: !2624, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 1039, column: 10, scope: !2682)
!2692 = !DILocation(line: 0, scope: !2682)
!2693 = !DILocation(line: 0, scope: !2624, inlinedAt: !2691)
!2694 = !DILocation(line: 0, scope: !2633, inlinedAt: !2690)
!2695 = !DILocation(line: 1030, column: 3, scope: !2633, inlinedAt: !2690)
!2696 = !DILocation(line: 1030, column: 30, scope: !2633, inlinedAt: !2690)
!2697 = !DILocation(line: 0, scope: !1381, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1031, column: 3, scope: !2633, inlinedAt: !2690)
!2699 = !DILocation(line: 184, column: 6, scope: !1381, inlinedAt: !2698)
!2700 = !DILocation(line: 184, column: 12, scope: !1381, inlinedAt: !2698)
!2701 = !DILocation(line: 185, column: 8, scope: !1395, inlinedAt: !2698)
!2702 = !DILocation(line: 185, column: 23, scope: !1395, inlinedAt: !2698)
!2703 = !DILocation(line: 185, column: 19, scope: !1395, inlinedAt: !2698)
!2704 = !DILocation(line: 186, column: 5, scope: !1395, inlinedAt: !2698)
!2705 = !DILocation(line: 187, column: 6, scope: !1381, inlinedAt: !2698)
!2706 = !DILocation(line: 187, column: 17, scope: !1381, inlinedAt: !2698)
!2707 = !DILocation(line: 188, column: 6, scope: !1381, inlinedAt: !2698)
!2708 = !DILocation(line: 188, column: 18, scope: !1381, inlinedAt: !2698)
!2709 = !DILocation(line: 1032, column: 10, scope: !2633, inlinedAt: !2690)
!2710 = !DILocation(line: 1033, column: 1, scope: !2633, inlinedAt: !2690)
!2711 = !DILocation(line: 1039, column: 3, scope: !2682)
!2712 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !231, file: !231, line: 1043, type: !2713, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!14, !16, !16, !16, !73}
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2712, file: !231, line: 1043, type: !16)
!2717 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2712, file: !231, line: 1043, type: !16)
!2718 = !DILocalVariable(name: "arg", arg: 3, scope: !2712, file: !231, line: 1044, type: !16)
!2719 = !DILocalVariable(name: "argsize", arg: 4, scope: !2712, file: !231, line: 1044, type: !73)
!2720 = !DILocation(line: 1030, column: 26, scope: !2633, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 1046, column: 10, scope: !2712)
!2722 = !DILocation(line: 0, scope: !2712)
!2723 = !DILocation(line: 0, scope: !2633, inlinedAt: !2721)
!2724 = !DILocation(line: 1030, column: 3, scope: !2633, inlinedAt: !2721)
!2725 = !DILocation(line: 1030, column: 30, scope: !2633, inlinedAt: !2721)
!2726 = !DILocation(line: 0, scope: !1381, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1031, column: 3, scope: !2633, inlinedAt: !2721)
!2728 = !DILocation(line: 184, column: 6, scope: !1381, inlinedAt: !2727)
!2729 = !DILocation(line: 184, column: 12, scope: !1381, inlinedAt: !2727)
!2730 = !DILocation(line: 185, column: 8, scope: !1395, inlinedAt: !2727)
!2731 = !DILocation(line: 185, column: 23, scope: !1395, inlinedAt: !2727)
!2732 = !DILocation(line: 185, column: 19, scope: !1395, inlinedAt: !2727)
!2733 = !DILocation(line: 186, column: 5, scope: !1395, inlinedAt: !2727)
!2734 = !DILocation(line: 187, column: 6, scope: !1381, inlinedAt: !2727)
!2735 = !DILocation(line: 187, column: 17, scope: !1381, inlinedAt: !2727)
!2736 = !DILocation(line: 188, column: 6, scope: !1381, inlinedAt: !2727)
!2737 = !DILocation(line: 188, column: 18, scope: !1381, inlinedAt: !2727)
!2738 = !DILocation(line: 1032, column: 10, scope: !2633, inlinedAt: !2721)
!2739 = !DILocation(line: 1033, column: 1, scope: !2633, inlinedAt: !2721)
!2740 = !DILocation(line: 1046, column: 3, scope: !2712)
!2741 = distinct !DISubprogram(name: "quote_n_mem", scope: !231, file: !231, line: 1061, type: !2742, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!16, !18, !16, !73}
!2744 = !{!2745, !2746, !2747}
!2745 = !DILocalVariable(name: "n", arg: 1, scope: !2741, file: !231, line: 1061, type: !18)
!2746 = !DILocalVariable(name: "arg", arg: 2, scope: !2741, file: !231, line: 1061, type: !16)
!2747 = !DILocalVariable(name: "argsize", arg: 3, scope: !2741, file: !231, line: 1061, type: !73)
!2748 = !DILocation(line: 0, scope: !2741)
!2749 = !DILocation(line: 1063, column: 10, scope: !2741)
!2750 = !DILocation(line: 1063, column: 3, scope: !2741)
!2751 = distinct !DISubprogram(name: "quote_mem", scope: !231, file: !231, line: 1067, type: !2752, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!16, !16, !73}
!2754 = !{!2755, !2756}
!2755 = !DILocalVariable(name: "arg", arg: 1, scope: !2751, file: !231, line: 1067, type: !16)
!2756 = !DILocalVariable(name: "argsize", arg: 2, scope: !2751, file: !231, line: 1067, type: !73)
!2757 = !DILocation(line: 0, scope: !2751)
!2758 = !DILocation(line: 0, scope: !2741, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 1069, column: 10, scope: !2751)
!2760 = !DILocation(line: 1063, column: 10, scope: !2741, inlinedAt: !2759)
!2761 = !DILocation(line: 1069, column: 3, scope: !2751)
!2762 = distinct !DISubprogram(name: "quote_n", scope: !231, file: !231, line: 1073, type: !2763, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!16, !18, !16}
!2765 = !{!2766, !2767}
!2766 = !DILocalVariable(name: "n", arg: 1, scope: !2762, file: !231, line: 1073, type: !18)
!2767 = !DILocalVariable(name: "arg", arg: 2, scope: !2762, file: !231, line: 1073, type: !16)
!2768 = !DILocation(line: 0, scope: !2762)
!2769 = !DILocation(line: 0, scope: !2741, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1075, column: 10, scope: !2762)
!2771 = !DILocation(line: 1063, column: 10, scope: !2741, inlinedAt: !2770)
!2772 = !DILocation(line: 1075, column: 3, scope: !2762)
!2773 = distinct !DISubprogram(name: "quote", scope: !231, file: !231, line: 1079, type: !2774, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!16, !16}
!2776 = !{!2777}
!2777 = !DILocalVariable(name: "arg", arg: 1, scope: !2773, file: !231, line: 1079, type: !16)
!2778 = !DILocation(line: 0, scope: !2773)
!2779 = !DILocation(line: 0, scope: !2762, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1081, column: 10, scope: !2773)
!2781 = !DILocation(line: 0, scope: !2741, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1075, column: 10, scope: !2762, inlinedAt: !2780)
!2783 = !DILocation(line: 1063, column: 10, scope: !2741, inlinedAt: !2782)
!2784 = !DILocation(line: 1081, column: 3, scope: !2773)
!2785 = distinct !DISubprogram(name: "version_etc_arn", scope: !375, file: !375, line: 61, type: !2786, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !2792)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{null, !2788, !16, !16, !16, !2791, !73}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2790, line: 7, baseType: !385)
!2790 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798}
!2793 = !DILocalVariable(name: "stream", arg: 1, scope: !2785, file: !375, line: 61, type: !2788)
!2794 = !DILocalVariable(name: "command_name", arg: 2, scope: !2785, file: !375, line: 62, type: !16)
!2795 = !DILocalVariable(name: "package", arg: 3, scope: !2785, file: !375, line: 62, type: !16)
!2796 = !DILocalVariable(name: "version", arg: 4, scope: !2785, file: !375, line: 63, type: !16)
!2797 = !DILocalVariable(name: "authors", arg: 5, scope: !2785, file: !375, line: 64, type: !2791)
!2798 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2785, file: !375, line: 64, type: !73)
!2799 = !DILocation(line: 0, scope: !2785)
!2800 = !DILocation(line: 66, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2785, file: !375, line: 66, column: 7)
!2802 = !DILocation(line: 66, column: 7, scope: !2785)
!2803 = !DILocation(line: 67, column: 5, scope: !2801)
!2804 = !DILocation(line: 69, column: 5, scope: !2801)
!2805 = !DILocation(line: 83, column: 3, scope: !2785)
!2806 = !DILocation(line: 85, column: 3, scope: !2785)
!2807 = !DILocation(line: 88, column: 3, scope: !2785)
!2808 = !DILocation(line: 95, column: 3, scope: !2785)
!2809 = !DILocation(line: 97, column: 3, scope: !2785)
!2810 = !DILocation(line: 105, column: 7, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2785, file: !375, line: 98, column: 5)
!2812 = !DILocation(line: 106, column: 7, scope: !2811)
!2813 = !DILocation(line: 109, column: 7, scope: !2811)
!2814 = !DILocation(line: 110, column: 7, scope: !2811)
!2815 = !DILocation(line: 113, column: 7, scope: !2811)
!2816 = !DILocation(line: 115, column: 7, scope: !2811)
!2817 = !DILocation(line: 120, column: 7, scope: !2811)
!2818 = !DILocation(line: 122, column: 7, scope: !2811)
!2819 = !DILocation(line: 127, column: 7, scope: !2811)
!2820 = !DILocation(line: 129, column: 7, scope: !2811)
!2821 = !DILocation(line: 134, column: 7, scope: !2811)
!2822 = !DILocation(line: 137, column: 7, scope: !2811)
!2823 = !DILocation(line: 142, column: 7, scope: !2811)
!2824 = !DILocation(line: 145, column: 7, scope: !2811)
!2825 = !DILocation(line: 150, column: 7, scope: !2811)
!2826 = !DILocation(line: 154, column: 7, scope: !2811)
!2827 = !DILocation(line: 159, column: 7, scope: !2811)
!2828 = !DILocation(line: 163, column: 7, scope: !2811)
!2829 = !DILocation(line: 170, column: 7, scope: !2811)
!2830 = !DILocation(line: 174, column: 7, scope: !2811)
!2831 = !DILocation(line: 176, column: 1, scope: !2785)
!2832 = distinct !DISubprogram(name: "version_etc_ar", scope: !375, file: !375, line: 183, type: !2833, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2788, !16, !16, !16, !2791}
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841}
!2836 = !DILocalVariable(name: "stream", arg: 1, scope: !2832, file: !375, line: 183, type: !2788)
!2837 = !DILocalVariable(name: "command_name", arg: 2, scope: !2832, file: !375, line: 184, type: !16)
!2838 = !DILocalVariable(name: "package", arg: 3, scope: !2832, file: !375, line: 184, type: !16)
!2839 = !DILocalVariable(name: "version", arg: 4, scope: !2832, file: !375, line: 185, type: !16)
!2840 = !DILocalVariable(name: "authors", arg: 5, scope: !2832, file: !375, line: 185, type: !2791)
!2841 = !DILocalVariable(name: "n_authors", scope: !2832, file: !375, line: 187, type: !73)
!2842 = !DILocation(line: 0, scope: !2832)
!2843 = !DILocation(line: 189, column: 8, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2832, file: !375, line: 189, column: 3)
!2845 = !DILocation(line: 0, scope: !2844)
!2846 = !DILocation(line: 189, column: 23, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !375, line: 189, column: 3)
!2848 = !DILocation(line: 189, column: 3, scope: !2844)
!2849 = !DILocation(line: 189, column: 52, scope: !2847)
!2850 = distinct !{!2850, !2848, !2851}
!2851 = !DILocation(line: 190, column: 5, scope: !2844)
!2852 = !DILocation(line: 191, column: 3, scope: !2832)
!2853 = !DILocation(line: 192, column: 1, scope: !2832)
!2854 = distinct !DISubprogram(name: "version_etc_va", scope: !375, file: !375, line: 199, type: !2855, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !2864)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !2788, !16, !16, !16, !2857}
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !375, line: 192, size: 192, elements: !2859)
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2858, file: !375, line: 192, baseType: !6, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2858, file: !375, line: 192, baseType: !6, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2858, file: !375, line: 192, baseType: !71, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2858, file: !375, line: 192, baseType: !71, size: 64, offset: 128)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870, !2871}
!2865 = !DILocalVariable(name: "stream", arg: 1, scope: !2854, file: !375, line: 199, type: !2788)
!2866 = !DILocalVariable(name: "command_name", arg: 2, scope: !2854, file: !375, line: 200, type: !16)
!2867 = !DILocalVariable(name: "package", arg: 3, scope: !2854, file: !375, line: 200, type: !16)
!2868 = !DILocalVariable(name: "version", arg: 4, scope: !2854, file: !375, line: 201, type: !16)
!2869 = !DILocalVariable(name: "authors", arg: 5, scope: !2854, file: !375, line: 201, type: !2857)
!2870 = !DILocalVariable(name: "n_authors", scope: !2854, file: !375, line: 203, type: !73)
!2871 = !DILocalVariable(name: "authtab", scope: !2854, file: !375, line: 204, type: !2872)
!2872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 640, elements: !340)
!2873 = !DILocation(line: 0, scope: !2854)
!2874 = !DILocation(line: 204, column: 3, scope: !2854)
!2875 = !DILocation(line: 204, column: 15, scope: !2854)
!2876 = !DILocation(line: 0, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !375, line: 206, column: 3)
!2878 = distinct !DILexicalBlock(scope: !2854, file: !375, line: 206, column: 3)
!2879 = !DILocation(line: 208, column: 35, scope: !2877)
!2880 = !DILocation(line: 208, column: 14, scope: !2877)
!2881 = !DILocation(line: 208, column: 33, scope: !2877)
!2882 = !DILocation(line: 208, column: 67, scope: !2877)
!2883 = !DILocation(line: 206, column: 3, scope: !2878)
!2884 = !DILocation(line: 0, scope: !2878)
!2885 = !DILocation(line: 211, column: 3, scope: !2854)
!2886 = !DILocation(line: 213, column: 1, scope: !2854)
!2887 = distinct !DISubprogram(name: "version_etc", scope: !375, file: !375, line: 230, type: !2888, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{null, !2788, !16, !16, !16, null}
!2890 = !{!2891, !2892, !2893, !2894, !2895}
!2891 = !DILocalVariable(name: "stream", arg: 1, scope: !2887, file: !375, line: 230, type: !2788)
!2892 = !DILocalVariable(name: "command_name", arg: 2, scope: !2887, file: !375, line: 231, type: !16)
!2893 = !DILocalVariable(name: "package", arg: 3, scope: !2887, file: !375, line: 231, type: !16)
!2894 = !DILocalVariable(name: "version", arg: 4, scope: !2887, file: !375, line: 232, type: !16)
!2895 = !DILocalVariable(name: "authors", scope: !2887, file: !375, line: 234, type: !2896)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !21, line: 52, baseType: !2897)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2898, line: 32, baseType: !2899)
!2898 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !375, line: 234, baseType: !2900)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2858, size: 192, elements: !56)
!2901 = !DILocation(line: 0, scope: !2887)
!2902 = !DILocation(line: 234, column: 3, scope: !2887)
!2903 = !DILocation(line: 234, column: 11, scope: !2887)
!2904 = !DILocation(line: 236, column: 3, scope: !2887)
!2905 = !DILocation(line: 237, column: 3, scope: !2887)
!2906 = !DILocation(line: 238, column: 3, scope: !2887)
!2907 = !DILocation(line: 239, column: 1, scope: !2887)
!2908 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !375, file: !375, line: 242, type: !100, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !19)
!2909 = !DILocation(line: 244, column: 3, scope: !2908)
!2910 = !DILocation(line: 249, column: 3, scope: !2908)
!2911 = !DILocation(line: 255, column: 3, scope: !2908)
!2912 = !DILocation(line: 260, column: 3, scope: !2908)
!2913 = !DILocation(line: 262, column: 1, scope: !2908)
!2914 = distinct !DISubprogram(name: "xnmalloc", scope: !268, file: !268, line: 99, type: !2915, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!71, !73, !73}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "n", arg: 1, scope: !2914, file: !268, line: 99, type: !73)
!2919 = !DILocalVariable(name: "s", arg: 2, scope: !2914, file: !268, line: 99, type: !73)
!2920 = !DILocation(line: 0, scope: !2914)
!2921 = !DILocation(line: 101, column: 7, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2914, file: !268, line: 101, column: 7)
!2923 = !DILocation(line: 101, column: 7, scope: !2914)
!2924 = !DILocation(line: 102, column: 5, scope: !2922)
!2925 = !DILocation(line: 103, column: 21, scope: !2914)
!2926 = !DILocalVariable(name: "n", arg: 1, scope: !2927, file: !417, line: 39, type: !73)
!2927 = distinct !DISubprogram(name: "xmalloc", scope: !417, file: !417, line: 39, type: !2928, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!71, !73}
!2930 = !{!2926, !2931}
!2931 = !DILocalVariable(name: "p", scope: !2927, file: !417, line: 41, type: !71)
!2932 = !DILocation(line: 0, scope: !2927, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 103, column: 10, scope: !2914)
!2934 = !DILocation(line: 41, column: 13, scope: !2927, inlinedAt: !2933)
!2935 = !DILocation(line: 42, column: 8, scope: !2936, inlinedAt: !2933)
!2936 = distinct !DILexicalBlock(scope: !2927, file: !417, line: 42, column: 7)
!2937 = !DILocation(line: 42, column: 15, scope: !2936, inlinedAt: !2933)
!2938 = !DILocation(line: 42, column: 10, scope: !2936, inlinedAt: !2933)
!2939 = !DILocation(line: 43, column: 5, scope: !2936, inlinedAt: !2933)
!2940 = !DILocation(line: 103, column: 3, scope: !2914)
!2941 = !DILocation(line: 0, scope: !2927)
!2942 = !DILocation(line: 41, column: 13, scope: !2927)
!2943 = !DILocation(line: 42, column: 8, scope: !2936)
!2944 = !DILocation(line: 42, column: 15, scope: !2936)
!2945 = !DILocation(line: 42, column: 10, scope: !2936)
!2946 = !DILocation(line: 43, column: 5, scope: !2936)
!2947 = !DILocation(line: 44, column: 3, scope: !2927)
!2948 = distinct !DISubprogram(name: "xnrealloc", scope: !268, file: !268, line: 112, type: !2949, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!71, !71, !73, !73}
!2951 = !{!2952, !2953, !2954}
!2952 = !DILocalVariable(name: "p", arg: 1, scope: !2948, file: !268, line: 112, type: !71)
!2953 = !DILocalVariable(name: "n", arg: 2, scope: !2948, file: !268, line: 112, type: !73)
!2954 = !DILocalVariable(name: "s", arg: 3, scope: !2948, file: !268, line: 112, type: !73)
!2955 = !DILocation(line: 0, scope: !2948)
!2956 = !DILocation(line: 114, column: 7, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2948, file: !268, line: 114, column: 7)
!2958 = !DILocation(line: 114, column: 7, scope: !2948)
!2959 = !DILocation(line: 115, column: 5, scope: !2957)
!2960 = !DILocation(line: 116, column: 25, scope: !2948)
!2961 = !DILocalVariable(name: "p", arg: 1, scope: !2962, file: !417, line: 51, type: !71)
!2962 = distinct !DISubprogram(name: "xrealloc", scope: !417, file: !417, line: 51, type: !2963, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!71, !71, !73}
!2965 = !{!2961, !2966}
!2966 = !DILocalVariable(name: "n", arg: 2, scope: !2962, file: !417, line: 51, type: !73)
!2967 = !DILocation(line: 0, scope: !2962, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 116, column: 10, scope: !2948)
!2969 = !DILocation(line: 53, column: 8, scope: !2970, inlinedAt: !2968)
!2970 = distinct !DILexicalBlock(scope: !2962, file: !417, line: 53, column: 7)
!2971 = !DILocation(line: 53, column: 13, scope: !2970, inlinedAt: !2968)
!2972 = !DILocation(line: 53, column: 10, scope: !2970, inlinedAt: !2968)
!2973 = !DILocation(line: 57, column: 7, scope: !2974, inlinedAt: !2968)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !417, line: 54, column: 5)
!2975 = !DILocation(line: 58, column: 7, scope: !2974, inlinedAt: !2968)
!2976 = !DILocation(line: 61, column: 7, scope: !2962, inlinedAt: !2968)
!2977 = !DILocation(line: 62, column: 8, scope: !2978, inlinedAt: !2968)
!2978 = distinct !DILexicalBlock(scope: !2962, file: !417, line: 62, column: 7)
!2979 = !DILocation(line: 62, column: 13, scope: !2978, inlinedAt: !2968)
!2980 = !DILocation(line: 62, column: 10, scope: !2978, inlinedAt: !2968)
!2981 = !DILocation(line: 63, column: 5, scope: !2978, inlinedAt: !2968)
!2982 = !DILocation(line: 116, column: 3, scope: !2948)
!2983 = !DILocation(line: 0, scope: !2962)
!2984 = !DILocation(line: 53, column: 8, scope: !2970)
!2985 = !DILocation(line: 53, column: 13, scope: !2970)
!2986 = !DILocation(line: 53, column: 10, scope: !2970)
!2987 = !DILocation(line: 57, column: 7, scope: !2974)
!2988 = !DILocation(line: 58, column: 7, scope: !2974)
!2989 = !DILocation(line: 61, column: 7, scope: !2962)
!2990 = !DILocation(line: 62, column: 8, scope: !2978)
!2991 = !DILocation(line: 62, column: 13, scope: !2978)
!2992 = !DILocation(line: 62, column: 10, scope: !2978)
!2993 = !DILocation(line: 63, column: 5, scope: !2978)
!2994 = !DILocation(line: 65, column: 1, scope: !2962)
!2995 = !DILocation(line: 0, scope: !420)
!2996 = !DILocation(line: 176, column: 14, scope: !420)
!2997 = !DILocation(line: 178, column: 9, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !420, file: !268, line: 178, column: 7)
!2999 = !DILocation(line: 178, column: 7, scope: !420)
!3000 = !DILocation(line: 180, column: 13, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !268, line: 180, column: 11)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !268, line: 179, column: 5)
!3003 = !DILocation(line: 180, column: 11, scope: !3002)
!3004 = !DILocation(line: 188, column: 30, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3001, file: !268, line: 181, column: 9)
!3006 = !DILocation(line: 189, column: 16, scope: !3005)
!3007 = !DILocation(line: 189, column: 13, scope: !3005)
!3008 = !DILocation(line: 190, column: 9, scope: !3005)
!3009 = !DILocation(line: 191, column: 11, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3002, file: !268, line: 191, column: 11)
!3011 = !DILocation(line: 191, column: 11, scope: !3002)
!3012 = !DILocation(line: 206, column: 7, scope: !420)
!3013 = !DILocation(line: 207, column: 25, scope: !420)
!3014 = !DILocation(line: 0, scope: !2962, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 207, column: 10, scope: !420)
!3016 = !DILocation(line: 53, column: 10, scope: !2970, inlinedAt: !3015)
!3017 = !DILocation(line: 192, column: 9, scope: !3010)
!3018 = !DILocation(line: 200, column: 69, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !268, line: 200, column: 11)
!3020 = distinct !DILexicalBlock(scope: !2998, file: !268, line: 195, column: 5)
!3021 = !DILocation(line: 201, column: 11, scope: !3019)
!3022 = !DILocation(line: 200, column: 11, scope: !3020)
!3023 = !DILocation(line: 202, column: 9, scope: !3019)
!3024 = !DILocation(line: 203, column: 14, scope: !3020)
!3025 = !DILocation(line: 203, column: 18, scope: !3020)
!3026 = !DILocation(line: 203, column: 9, scope: !3020)
!3027 = !DILocation(line: 53, column: 8, scope: !2970, inlinedAt: !3015)
!3028 = !DILocation(line: 57, column: 7, scope: !2974, inlinedAt: !3015)
!3029 = !DILocation(line: 58, column: 7, scope: !2974, inlinedAt: !3015)
!3030 = !DILocation(line: 61, column: 7, scope: !2962, inlinedAt: !3015)
!3031 = !DILocation(line: 62, column: 8, scope: !2978, inlinedAt: !3015)
!3032 = !DILocation(line: 62, column: 13, scope: !2978, inlinedAt: !3015)
!3033 = !DILocation(line: 62, column: 10, scope: !2978, inlinedAt: !3015)
!3034 = !DILocation(line: 63, column: 5, scope: !2978, inlinedAt: !3015)
!3035 = !DILocation(line: 207, column: 3, scope: !420)
!3036 = distinct !DISubprogram(name: "xcharalloc", scope: !268, file: !268, line: 216, type: !2196, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3037)
!3037 = !{!3038}
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3036, file: !268, line: 216, type: !73)
!3039 = !DILocation(line: 0, scope: !3036)
!3040 = !DILocation(line: 0, scope: !2927, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 218, column: 10, scope: !3036)
!3042 = !DILocation(line: 41, column: 13, scope: !2927, inlinedAt: !3041)
!3043 = !DILocation(line: 42, column: 8, scope: !2936, inlinedAt: !3041)
!3044 = !DILocation(line: 42, column: 15, scope: !2936, inlinedAt: !3041)
!3045 = !DILocation(line: 42, column: 10, scope: !2936, inlinedAt: !3041)
!3046 = !DILocation(line: 43, column: 5, scope: !2936, inlinedAt: !3041)
!3047 = !DILocation(line: 218, column: 3, scope: !3036)
!3048 = distinct !DISubprogram(name: "x2realloc", scope: !417, file: !417, line: 74, type: !3049, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!71, !71, !423}
!3051 = !{!3052, !3053}
!3052 = !DILocalVariable(name: "p", arg: 1, scope: !3048, file: !417, line: 74, type: !71)
!3053 = !DILocalVariable(name: "pn", arg: 2, scope: !3048, file: !417, line: 74, type: !423)
!3054 = !DILocation(line: 0, scope: !3048)
!3055 = !DILocation(line: 0, scope: !420, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 76, column: 10, scope: !3048)
!3057 = !DILocation(line: 176, column: 14, scope: !420, inlinedAt: !3056)
!3058 = !DILocation(line: 178, column: 9, scope: !2998, inlinedAt: !3056)
!3059 = !DILocation(line: 178, column: 7, scope: !420, inlinedAt: !3056)
!3060 = !DILocation(line: 180, column: 13, scope: !3001, inlinedAt: !3056)
!3061 = !DILocation(line: 180, column: 11, scope: !3002, inlinedAt: !3056)
!3062 = !DILocation(line: 191, column: 11, scope: !3010, inlinedAt: !3056)
!3063 = !DILocation(line: 191, column: 11, scope: !3002, inlinedAt: !3056)
!3064 = !DILocation(line: 206, column: 7, scope: !420, inlinedAt: !3056)
!3065 = !DILocation(line: 0, scope: !2962, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 207, column: 10, scope: !420, inlinedAt: !3056)
!3067 = !DILocation(line: 53, column: 10, scope: !2970, inlinedAt: !3066)
!3068 = !DILocation(line: 192, column: 9, scope: !3010, inlinedAt: !3056)
!3069 = !DILocation(line: 201, column: 11, scope: !3019, inlinedAt: !3056)
!3070 = !DILocation(line: 200, column: 11, scope: !3020, inlinedAt: !3056)
!3071 = !DILocation(line: 202, column: 9, scope: !3019, inlinedAt: !3056)
!3072 = !DILocation(line: 203, column: 14, scope: !3020, inlinedAt: !3056)
!3073 = !DILocation(line: 203, column: 18, scope: !3020, inlinedAt: !3056)
!3074 = !DILocation(line: 203, column: 9, scope: !3020, inlinedAt: !3056)
!3075 = !DILocation(line: 53, column: 8, scope: !2970, inlinedAt: !3066)
!3076 = !DILocation(line: 57, column: 7, scope: !2974, inlinedAt: !3066)
!3077 = !DILocation(line: 58, column: 7, scope: !2974, inlinedAt: !3066)
!3078 = !DILocation(line: 61, column: 7, scope: !2962, inlinedAt: !3066)
!3079 = !DILocation(line: 62, column: 8, scope: !2978, inlinedAt: !3066)
!3080 = !DILocation(line: 62, column: 13, scope: !2978, inlinedAt: !3066)
!3081 = !DILocation(line: 62, column: 10, scope: !2978, inlinedAt: !3066)
!3082 = !DILocation(line: 63, column: 5, scope: !2978, inlinedAt: !3066)
!3083 = !DILocation(line: 76, column: 3, scope: !3048)
!3084 = distinct !DISubprogram(name: "xzalloc", scope: !417, file: !417, line: 84, type: !2928, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3085)
!3085 = !{!3086}
!3086 = !DILocalVariable(name: "n", arg: 1, scope: !3084, file: !417, line: 84, type: !73)
!3087 = !DILocation(line: 0, scope: !3084)
!3088 = !DILocalVariable(name: "n", arg: 1, scope: !3089, file: !417, line: 93, type: !73)
!3089 = distinct !DISubprogram(name: "xcalloc", scope: !417, file: !417, line: 93, type: !2915, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3090)
!3090 = !{!3088, !3091, !3092}
!3091 = !DILocalVariable(name: "s", arg: 2, scope: !3089, file: !417, line: 93, type: !73)
!3092 = !DILocalVariable(name: "p", scope: !3089, file: !417, line: 95, type: !71)
!3093 = !DILocation(line: 0, scope: !3089, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 86, column: 10, scope: !3084)
!3095 = !DILocation(line: 100, column: 7, scope: !3096, inlinedAt: !3094)
!3096 = distinct !DILexicalBlock(scope: !3089, file: !417, line: 100, column: 7)
!3097 = !DILocation(line: 101, column: 7, scope: !3096, inlinedAt: !3094)
!3098 = !DILocation(line: 101, column: 18, scope: !3096, inlinedAt: !3094)
!3099 = !DILocation(line: 101, column: 16, scope: !3096, inlinedAt: !3094)
!3100 = !DILocation(line: 100, column: 7, scope: !3089, inlinedAt: !3094)
!3101 = !DILocation(line: 102, column: 5, scope: !3096, inlinedAt: !3094)
!3102 = !DILocation(line: 86, column: 3, scope: !3084)
!3103 = !DILocation(line: 0, scope: !3089)
!3104 = !DILocation(line: 100, column: 7, scope: !3096)
!3105 = !DILocation(line: 101, column: 7, scope: !3096)
!3106 = !DILocation(line: 101, column: 18, scope: !3096)
!3107 = !DILocation(line: 101, column: 16, scope: !3096)
!3108 = !DILocation(line: 100, column: 7, scope: !3089)
!3109 = !DILocation(line: 102, column: 5, scope: !3096)
!3110 = !DILocation(line: 103, column: 3, scope: !3089)
!3111 = distinct !DISubprogram(name: "xmemdup", scope: !417, file: !417, line: 111, type: !3112, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!71, !271, !73}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "p", arg: 1, scope: !3111, file: !417, line: 111, type: !271)
!3116 = !DILocalVariable(name: "s", arg: 2, scope: !3111, file: !417, line: 111, type: !73)
!3117 = !DILocation(line: 0, scope: !3111)
!3118 = !DILocation(line: 0, scope: !2927, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 113, column: 18, scope: !3111)
!3120 = !DILocation(line: 41, column: 13, scope: !2927, inlinedAt: !3119)
!3121 = !DILocation(line: 42, column: 8, scope: !2936, inlinedAt: !3119)
!3122 = !DILocation(line: 42, column: 15, scope: !2936, inlinedAt: !3119)
!3123 = !DILocation(line: 42, column: 10, scope: !2936, inlinedAt: !3119)
!3124 = !DILocation(line: 43, column: 5, scope: !2936, inlinedAt: !3119)
!3125 = !DILocalVariable(name: "__dest", arg: 1, scope: !3126, file: !1729, line: 31, type: !3129)
!3126 = distinct !DISubprogram(name: "memcpy", scope: !1729, file: !1729, line: 31, type: !3127, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3131)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!71, !3129, !3130, !73}
!3129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!3130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !271)
!3131 = !{!3125, !3132, !3133}
!3132 = !DILocalVariable(name: "__src", arg: 2, scope: !3126, file: !1729, line: 31, type: !3130)
!3133 = !DILocalVariable(name: "__len", arg: 3, scope: !3126, file: !1729, line: 31, type: !73)
!3134 = !DILocation(line: 0, scope: !3126, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 113, column: 10, scope: !3111)
!3136 = !DILocation(line: 34, column: 10, scope: !3126, inlinedAt: !3135)
!3137 = !DILocation(line: 113, column: 3, scope: !3111)
!3138 = distinct !DISubprogram(name: "xstrdup", scope: !417, file: !417, line: 119, type: !93, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3139)
!3139 = !{!3140}
!3140 = !DILocalVariable(name: "string", arg: 1, scope: !3138, file: !417, line: 119, type: !16)
!3141 = !DILocation(line: 0, scope: !3138)
!3142 = !DILocation(line: 121, column: 27, scope: !3138)
!3143 = !DILocation(line: 121, column: 43, scope: !3138)
!3144 = !DILocation(line: 0, scope: !3111, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 121, column: 10, scope: !3138)
!3146 = !DILocation(line: 0, scope: !2927, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 113, column: 18, scope: !3111, inlinedAt: !3145)
!3148 = !DILocation(line: 41, column: 13, scope: !2927, inlinedAt: !3147)
!3149 = !DILocation(line: 42, column: 8, scope: !2936, inlinedAt: !3147)
!3150 = !DILocation(line: 42, column: 15, scope: !2936, inlinedAt: !3147)
!3151 = !DILocation(line: 42, column: 10, scope: !2936, inlinedAt: !3147)
!3152 = !DILocation(line: 43, column: 5, scope: !2936, inlinedAt: !3147)
!3153 = !DILocation(line: 0, scope: !3126, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 113, column: 10, scope: !3111, inlinedAt: !3145)
!3155 = !DILocation(line: 34, column: 10, scope: !3126, inlinedAt: !3154)
!3156 = !DILocation(line: 121, column: 3, scope: !3138)
!3157 = distinct !DISubprogram(name: "xalloc_die", scope: !438, file: !438, line: 32, type: !100, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !19)
!3158 = !DILocation(line: 34, column: 10, scope: !3157)
!3159 = !DILocation(line: 34, column: 33, scope: !3157)
!3160 = !DILocation(line: 34, column: 3, scope: !3157)
!3161 = !DILocation(line: 40, column: 3, scope: !3157)
!3162 = distinct !DISubprogram(name: "rpl_calloc", scope: !441, file: !441, line: 42, type: !2915, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !3163)
!3163 = !{!3164, !3165, !3166, !3167}
!3164 = !DILocalVariable(name: "n", arg: 1, scope: !3162, file: !441, line: 42, type: !73)
!3165 = !DILocalVariable(name: "s", arg: 2, scope: !3162, file: !441, line: 42, type: !73)
!3166 = !DILocalVariable(name: "result", scope: !3162, file: !441, line: 44, type: !71)
!3167 = !DILocalVariable(name: "bytes", scope: !3168, file: !441, line: 56, type: !73)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !441, line: 53, column: 5)
!3169 = distinct !DILexicalBlock(scope: !3162, file: !441, line: 47, column: 7)
!3170 = !DILocation(line: 0, scope: !3162)
!3171 = !DILocation(line: 47, column: 9, scope: !3169)
!3172 = !DILocation(line: 47, column: 19, scope: !3169)
!3173 = !DILocation(line: 47, column: 14, scope: !3169)
!3174 = !DILocation(line: 0, scope: !3168)
!3175 = !DILocation(line: 57, column: 21, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3168, file: !441, line: 57, column: 11)
!3177 = !DILocation(line: 57, column: 11, scope: !3168)
!3178 = !DILocation(line: 59, column: 11, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !441, line: 58, column: 9)
!3180 = !DILocation(line: 59, column: 17, scope: !3179)
!3181 = !DILocation(line: 65, column: 12, scope: !3162)
!3182 = !DILocation(line: 72, column: 3, scope: !3162)
!3183 = !DILocation(line: 73, column: 1, scope: !3162)
!3184 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !444, file: !444, line: 86, type: !3185, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3191)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!73, !3187, !16, !73, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1471, line: 6, baseType: !3190)
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !301, line: 21, baseType: !450)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197, !3198}
!3192 = !DILocalVariable(name: "pwc", arg: 1, scope: !3184, file: !444, line: 86, type: !3187)
!3193 = !DILocalVariable(name: "s", arg: 2, scope: !3184, file: !444, line: 86, type: !16)
!3194 = !DILocalVariable(name: "n", arg: 3, scope: !3184, file: !444, line: 86, type: !73)
!3195 = !DILocalVariable(name: "ps", arg: 4, scope: !3184, file: !444, line: 86, type: !3188)
!3196 = !DILocalVariable(name: "ret", scope: !3184, file: !444, line: 88, type: !73)
!3197 = !DILocalVariable(name: "wc", scope: !3184, file: !444, line: 89, type: !1475)
!3198 = !DILocalVariable(name: "uc", scope: !3199, file: !444, line: 156, type: !1348)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !444, line: 155, column: 5)
!3200 = distinct !DILexicalBlock(scope: !3184, file: !444, line: 154, column: 7)
!3201 = !DILocation(line: 0, scope: !3184)
!3202 = !DILocation(line: 89, column: 3, scope: !3184)
!3203 = !DILocation(line: 105, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3184, file: !444, line: 105, column: 7)
!3205 = !DILocation(line: 105, column: 7, scope: !3184)
!3206 = !DILocation(line: 145, column: 9, scope: !3184)
!3207 = !DILocation(line: 154, column: 19, scope: !3200)
!3208 = !DILocation(line: 154, column: 31, scope: !3200)
!3209 = !DILocation(line: 154, column: 26, scope: !3200)
!3210 = !DILocation(line: 154, column: 41, scope: !3200)
!3211 = !DILocation(line: 154, column: 7, scope: !3184)
!3212 = !DILocation(line: 156, column: 26, scope: !3199)
!3213 = !DILocation(line: 0, scope: !3199)
!3214 = !DILocation(line: 157, column: 14, scope: !3199)
!3215 = !DILocation(line: 157, column: 12, scope: !3199)
!3216 = !DILocation(line: 163, column: 1, scope: !3184)
!3217 = distinct !DISubprogram(name: "close_stream", scope: !463, file: !463, line: 56, type: !3218, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3222)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!18, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2790, line: 7, baseType: !470)
!3222 = !{!3223, !3224, !3226, !3227}
!3223 = !DILocalVariable(name: "stream", arg: 1, scope: !3217, file: !463, line: 56, type: !3220)
!3224 = !DILocalVariable(name: "some_pending", scope: !3217, file: !463, line: 58, type: !3225)
!3225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!3226 = !DILocalVariable(name: "prev_fail", scope: !3217, file: !463, line: 59, type: !3225)
!3227 = !DILocalVariable(name: "fclose_fail", scope: !3217, file: !463, line: 60, type: !3225)
!3228 = !DILocation(line: 0, scope: !3217)
!3229 = !DILocation(line: 58, column: 30, scope: !3217)
!3230 = !DILocalVariable(name: "__stream", arg: 1, scope: !3231, file: !3232, line: 135, type: !3220)
!3231 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3232, file: !3232, line: 135, type: !3218, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !3233)
!3232 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3233 = !{!3230}
!3234 = !DILocation(line: 0, scope: !3231, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 59, column: 27, scope: !3217)
!3236 = !DILocation(line: 137, column: 10, scope: !3231, inlinedAt: !3235)
!3237 = !{!3238, !1142, i64 0}
!3238 = !{!"_IO_FILE", !1142, i64 0, !1068, i64 8, !1068, i64 16, !1068, i64 24, !1068, i64 32, !1068, i64 40, !1068, i64 48, !1068, i64 56, !1068, i64 64, !1068, i64 72, !1068, i64 80, !1068, i64 88, !1068, i64 96, !1068, i64 104, !1142, i64 112, !1142, i64 116, !2232, i64 120, !1722, i64 128, !1069, i64 130, !1069, i64 131, !1068, i64 136, !2232, i64 144, !1068, i64 152, !1068, i64 160, !1068, i64 168, !1068, i64 176, !2232, i64 184, !1142, i64 192, !1069, i64 196}
!3239 = !DILocation(line: 59, column: 43, scope: !3217)
!3240 = !DILocation(line: 60, column: 29, scope: !3217)
!3241 = !DILocation(line: 60, column: 45, scope: !3217)
!3242 = !DILocation(line: 70, column: 17, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3217, file: !463, line: 70, column: 7)
!3244 = !DILocation(line: 58, column: 50, scope: !3217)
!3245 = !DILocation(line: 70, column: 33, scope: !3243)
!3246 = !DILocation(line: 70, column: 53, scope: !3243)
!3247 = !DILocation(line: 70, column: 59, scope: !3243)
!3248 = !DILocation(line: 70, column: 7, scope: !3217)
!3249 = !DILocation(line: 72, column: 11, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3243, file: !463, line: 71, column: 5)
!3251 = !DILocation(line: 73, column: 9, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3250, file: !463, line: 72, column: 11)
!3253 = !DILocation(line: 73, column: 15, scope: !3252)
!3254 = !DILocation(line: 78, column: 1, scope: !3217)
!3255 = distinct !DISubprogram(name: "hard_locale", scope: !502, file: !502, line: 27, type: !460, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !3256)
!3256 = !{!3257, !3258}
!3257 = !DILocalVariable(name: "category", arg: 1, scope: !3255, file: !502, line: 27, type: !18)
!3258 = !DILocalVariable(name: "locale", scope: !3255, file: !502, line: 29, type: !3259)
!3259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2056, elements: !3260)
!3260 = !{!3261}
!3261 = !DISubrange(count: 257)
!3262 = !DILocation(line: 0, scope: !3255)
!3263 = !DILocation(line: 29, column: 3, scope: !3255)
!3264 = !DILocation(line: 29, column: 8, scope: !3255)
!3265 = !DILocation(line: 31, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3255, file: !502, line: 31, column: 7)
!3267 = !DILocation(line: 31, column: 7, scope: !3255)
!3268 = !DILocation(line: 34, column: 12, scope: !3255)
!3269 = !DILocation(line: 34, column: 38, scope: !3255)
!3270 = !DILocation(line: 34, column: 41, scope: !3255)
!3271 = !DILocation(line: 34, column: 66, scope: !3255)
!3272 = !DILocation(line: 35, column: 1, scope: !3255)
!3273 = distinct !DISubprogram(name: "locale_charset", scope: !509, file: !509, line: 831, type: !322, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !3274)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "codeset", scope: !3273, file: !509, line: 833, type: !16)
!3276 = !DILocation(line: 847, column: 13, scope: !3273)
!3277 = !DILocation(line: 0, scope: !3273)
!3278 = !DILocation(line: 911, column: 15, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3273, file: !509, line: 911, column: 7)
!3280 = !DILocation(line: 911, column: 7, scope: !3273)
!3281 = !DILocation(line: 1070, column: 13, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !509, line: 1070, column: 13)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !509, line: 1060, column: 7)
!3284 = distinct !DILexicalBlock(scope: !3273, file: !509, line: 1019, column: 3)
!3285 = !DILocation(line: 1070, column: 24, scope: !3282)
!3286 = !DILocation(line: 1070, column: 13, scope: !3283)
!3287 = !DILocation(line: 1158, column: 3, scope: !3273)
!3288 = distinct !DISubprogram(name: "setlocale_null_r", scope: !902, file: !902, line: 269, type: !3289, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!18, !18, !14, !73}
!3291 = !{!3292, !3293, !3294}
!3292 = !DILocalVariable(name: "category", arg: 1, scope: !3288, file: !902, line: 269, type: !18)
!3293 = !DILocalVariable(name: "buf", arg: 2, scope: !3288, file: !902, line: 269, type: !14)
!3294 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3288, file: !902, line: 269, type: !73)
!3295 = !DILocation(line: 0, scope: !3288)
!3296 = !DILocalVariable(name: "category", arg: 1, scope: !3297, file: !902, line: 91, type: !18)
!3297 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !902, file: !902, line: 91, type: !3289, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !3298)
!3298 = !{!3296, !3299, !3300, !3301, !3302}
!3299 = !DILocalVariable(name: "buf", arg: 2, scope: !3297, file: !902, line: 91, type: !14)
!3300 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3297, file: !902, line: 91, type: !73)
!3301 = !DILocalVariable(name: "result", scope: !3297, file: !902, line: 140, type: !16)
!3302 = !DILocalVariable(name: "length", scope: !3303, file: !902, line: 154, type: !73)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !902, line: 153, column: 5)
!3304 = distinct !DILexicalBlock(scope: !3297, file: !902, line: 142, column: 7)
!3305 = !DILocation(line: 0, scope: !3297, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 274, column: 10, scope: !3288)
!3307 = !DILocalVariable(name: "category", arg: 1, scope: !3308, file: !902, line: 60, type: !18)
!3308 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !902, file: !902, line: 60, type: !3309, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!16, !18}
!3311 = !{!3307, !3312}
!3312 = !DILocalVariable(name: "result", scope: !3308, file: !902, line: 62, type: !16)
!3313 = !DILocation(line: 0, scope: !3308, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 140, column: 24, scope: !3297, inlinedAt: !3306)
!3315 = !DILocation(line: 62, column: 24, scope: !3308, inlinedAt: !3314)
!3316 = !DILocation(line: 142, column: 14, scope: !3304, inlinedAt: !3306)
!3317 = !DILocation(line: 142, column: 7, scope: !3297, inlinedAt: !3306)
!3318 = !DILocation(line: 145, column: 19, scope: !3319, inlinedAt: !3306)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !902, line: 145, column: 11)
!3320 = distinct !DILexicalBlock(scope: !3304, file: !902, line: 143, column: 5)
!3321 = !DILocation(line: 145, column: 11, scope: !3320, inlinedAt: !3306)
!3322 = !DILocation(line: 149, column: 16, scope: !3319, inlinedAt: !3306)
!3323 = !DILocation(line: 149, column: 9, scope: !3319, inlinedAt: !3306)
!3324 = !DILocation(line: 154, column: 23, scope: !3303, inlinedAt: !3306)
!3325 = !DILocation(line: 0, scope: !3303, inlinedAt: !3306)
!3326 = !DILocation(line: 155, column: 18, scope: !3327, inlinedAt: !3306)
!3327 = distinct !DILexicalBlock(scope: !3303, file: !902, line: 155, column: 11)
!3328 = !DILocation(line: 155, column: 11, scope: !3303, inlinedAt: !3306)
!3329 = !DILocation(line: 157, column: 39, scope: !3330, inlinedAt: !3306)
!3330 = distinct !DILexicalBlock(scope: !3327, file: !902, line: 156, column: 9)
!3331 = !DILocalVariable(name: "__dest", arg: 1, scope: !3332, file: !1729, line: 31, type: !3129)
!3332 = distinct !DISubprogram(name: "memcpy", scope: !1729, file: !1729, line: 31, type: !3127, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !3333)
!3333 = !{!3331, !3334, !3335}
!3334 = !DILocalVariable(name: "__src", arg: 2, scope: !3332, file: !1729, line: 31, type: !3130)
!3335 = !DILocalVariable(name: "__len", arg: 3, scope: !3332, file: !1729, line: 31, type: !73)
!3336 = !DILocation(line: 0, scope: !3332, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 157, column: 11, scope: !3330, inlinedAt: !3306)
!3338 = !DILocation(line: 34, column: 10, scope: !3332, inlinedAt: !3337)
!3339 = !DILocation(line: 158, column: 11, scope: !3330, inlinedAt: !3306)
!3340 = !DILocation(line: 162, column: 23, scope: !3341, inlinedAt: !3306)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !902, line: 162, column: 15)
!3342 = distinct !DILexicalBlock(scope: !3327, file: !902, line: 161, column: 9)
!3343 = !DILocation(line: 162, column: 15, scope: !3342, inlinedAt: !3306)
!3344 = !DILocation(line: 167, column: 44, scope: !3345, inlinedAt: !3306)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !902, line: 163, column: 13)
!3346 = !DILocation(line: 0, scope: !3332, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 167, column: 15, scope: !3345, inlinedAt: !3306)
!3348 = !DILocation(line: 34, column: 10, scope: !3332, inlinedAt: !3347)
!3349 = !DILocation(line: 168, column: 15, scope: !3345, inlinedAt: !3306)
!3350 = !DILocation(line: 168, column: 32, scope: !3345, inlinedAt: !3306)
!3351 = !DILocation(line: 169, column: 13, scope: !3345, inlinedAt: !3306)
!3352 = !DILocation(line: 0, scope: !3304, inlinedAt: !3306)
!3353 = !DILocation(line: 274, column: 3, scope: !3288)
!3354 = distinct !DISubprogram(name: "setlocale_null", scope: !902, file: !902, line: 301, type: !3309, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !901, retainedNodes: !3355)
!3355 = !{!3356}
!3356 = !DILocalVariable(name: "category", arg: 1, scope: !3354, file: !902, line: 301, type: !18)
!3357 = !DILocation(line: 0, scope: !3354)
!3358 = !DILocation(line: 0, scope: !3308, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 304, column: 10, scope: !3354)
!3360 = !DILocation(line: 62, column: 24, scope: !3308, inlinedAt: !3359)
!3361 = !DILocation(line: 304, column: 3, scope: !3354)
!3362 = distinct !DISubprogram(name: "rpl_fclose", scope: !905, file: !905, line: 58, type: !3363, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !904, retainedNodes: !3367)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!18, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2790, line: 7, baseType: !911)
!3367 = !{!3368, !3369, !3370, !3371}
!3368 = !DILocalVariable(name: "fp", arg: 1, scope: !3362, file: !905, line: 58, type: !3365)
!3369 = !DILocalVariable(name: "saved_errno", scope: !3362, file: !905, line: 60, type: !18)
!3370 = !DILocalVariable(name: "fd", scope: !3362, file: !905, line: 61, type: !18)
!3371 = !DILocalVariable(name: "result", scope: !3362, file: !905, line: 62, type: !18)
!3372 = !DILocation(line: 0, scope: !3362)
!3373 = !DILocation(line: 65, column: 8, scope: !3362)
!3374 = !DILocation(line: 66, column: 10, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3362, file: !905, line: 66, column: 7)
!3376 = !DILocation(line: 66, column: 7, scope: !3362)
!3377 = !DILocation(line: 67, column: 12, scope: !3375)
!3378 = !DILocation(line: 67, column: 5, scope: !3375)
!3379 = !DILocation(line: 72, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3362, file: !905, line: 72, column: 7)
!3381 = !DILocation(line: 72, column: 23, scope: !3380)
!3382 = !DILocation(line: 72, column: 33, scope: !3380)
!3383 = !DILocation(line: 72, column: 26, scope: !3380)
!3384 = !DILocation(line: 72, column: 59, scope: !3380)
!3385 = !DILocation(line: 73, column: 7, scope: !3380)
!3386 = !DILocation(line: 73, column: 10, scope: !3380)
!3387 = !DILocation(line: 72, column: 7, scope: !3362)
!3388 = !DILocation(line: 100, column: 12, scope: !3362)
!3389 = !DILocation(line: 105, column: 7, scope: !3362)
!3390 = !DILocation(line: 74, column: 19, scope: !3380)
!3391 = !DILocation(line: 105, column: 19, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3362, file: !905, line: 105, column: 7)
!3393 = !DILocation(line: 107, column: 13, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3392, file: !905, line: 106, column: 5)
!3395 = !DILocation(line: 109, column: 5, scope: !3394)
!3396 = !DILocation(line: 112, column: 1, scope: !3362)
!3397 = distinct !DISubprogram(name: "rpl_fflush", scope: !949, file: !949, line: 129, type: !3398, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !3402)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!18, !3400}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2790, line: 7, baseType: !955)
!3402 = !{!3403}
!3403 = !DILocalVariable(name: "stream", arg: 1, scope: !3397, file: !949, line: 129, type: !3400)
!3404 = !DILocation(line: 0, scope: !3397)
!3405 = !DILocation(line: 150, column: 14, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3397, file: !949, line: 150, column: 7)
!3407 = !DILocation(line: 150, column: 22, scope: !3406)
!3408 = !DILocation(line: 150, column: 27, scope: !3406)
!3409 = !DILocation(line: 150, column: 7, scope: !3397)
!3410 = !DILocation(line: 151, column: 12, scope: !3406)
!3411 = !DILocation(line: 151, column: 5, scope: !3406)
!3412 = !DILocalVariable(name: "fp", arg: 1, scope: !3413, file: !949, line: 41, type: !3400)
!3413 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !949, file: !949, line: 41, type: !3414, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !3400}
!3416 = !{!3412}
!3417 = !DILocation(line: 0, scope: !3413, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 156, column: 3, scope: !3397)
!3419 = !DILocation(line: 43, column: 11, scope: !3420, inlinedAt: !3418)
!3420 = distinct !DILexicalBlock(scope: !3413, file: !949, line: 43, column: 7)
!3421 = !DILocation(line: 43, column: 18, scope: !3420, inlinedAt: !3418)
!3422 = !DILocation(line: 43, column: 7, scope: !3413, inlinedAt: !3418)
!3423 = !DILocation(line: 45, column: 5, scope: !3420, inlinedAt: !3418)
!3424 = !DILocation(line: 158, column: 10, scope: !3397)
!3425 = !DILocation(line: 158, column: 3, scope: !3397)
!3426 = !DILocation(line: 235, column: 1, scope: !3397)
!3427 = distinct !DISubprogram(name: "rpl_fseeko", scope: !990, file: !990, line: 28, type: !3428, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !989, retainedNodes: !3433)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!18, !3430, !3432, !18}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2790, line: 7, baseType: !996)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !21, line: 63, baseType: !47)
!3433 = !{!3434, !3435, !3436, !3437}
!3434 = !DILocalVariable(name: "fp", arg: 1, scope: !3427, file: !990, line: 28, type: !3430)
!3435 = !DILocalVariable(name: "offset", arg: 2, scope: !3427, file: !990, line: 28, type: !3432)
!3436 = !DILocalVariable(name: "whence", arg: 3, scope: !3427, file: !990, line: 28, type: !18)
!3437 = !DILocalVariable(name: "pos", scope: !3438, file: !990, line: 117, type: !3432)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !990, line: 113, column: 5)
!3439 = distinct !DILexicalBlock(scope: !3427, file: !990, line: 52, column: 7)
!3440 = !DILocation(line: 0, scope: !3427)
!3441 = !DILocation(line: 52, column: 11, scope: !3439)
!3442 = !{!3238, !1068, i64 16}
!3443 = !DILocation(line: 52, column: 31, scope: !3439)
!3444 = !{!3238, !1068, i64 8}
!3445 = !DILocation(line: 52, column: 24, scope: !3439)
!3446 = !DILocation(line: 53, column: 7, scope: !3439)
!3447 = !DILocation(line: 53, column: 14, scope: !3439)
!3448 = !{!3238, !1068, i64 40}
!3449 = !DILocation(line: 53, column: 35, scope: !3439)
!3450 = !{!3238, !1068, i64 32}
!3451 = !DILocation(line: 53, column: 28, scope: !3439)
!3452 = !DILocation(line: 54, column: 7, scope: !3439)
!3453 = !DILocation(line: 54, column: 14, scope: !3439)
!3454 = !{!3238, !1068, i64 72}
!3455 = !DILocation(line: 54, column: 28, scope: !3439)
!3456 = !DILocation(line: 52, column: 7, scope: !3427)
!3457 = !DILocation(line: 117, column: 26, scope: !3438)
!3458 = !DILocation(line: 117, column: 19, scope: !3438)
!3459 = !DILocation(line: 0, scope: !3438)
!3460 = !DILocation(line: 118, column: 15, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3438, file: !990, line: 118, column: 11)
!3462 = !DILocation(line: 118, column: 11, scope: !3438)
!3463 = !DILocation(line: 129, column: 11, scope: !3438)
!3464 = !DILocation(line: 129, column: 18, scope: !3438)
!3465 = !DILocation(line: 130, column: 11, scope: !3438)
!3466 = !DILocation(line: 130, column: 19, scope: !3438)
!3467 = !{!3238, !2232, i64 144}
!3468 = !DILocation(line: 161, column: 7, scope: !3438)
!3469 = !DILocation(line: 163, column: 10, scope: !3427)
!3470 = !DILocation(line: 163, column: 3, scope: !3427)
!3471 = !DILocation(line: 164, column: 1, scope: !3427)
