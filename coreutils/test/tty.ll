; ModuleID = 'coreutils-8.32/src/tty.bc'
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
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [135 x i8] c"Print the file name of the terminal connected to standard input.\0A\0A  -s, --silent, --quiet   print nothing, only return an exit status\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@silent = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !143
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"not a tty\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !149
@.str.33 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !154
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !198
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !200
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !206
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !247
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !357
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !363
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !365
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !372
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !379
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !367
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !381
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.72 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.73 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.74 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.75 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.76 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.77 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.78 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.79 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.80 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.81 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.82 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.83 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.84 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.87 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.88 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.89 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.90 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.91 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.92 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.93 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !387
@.str.1.104 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1054 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1059, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i32 %0, metadata !1058, metadata !DIExpression()), !dbg !1080
  %3 = icmp eq i32 %0, 0, !dbg !1081
  br i1 %3, label %9, label %4, !dbg !1082

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1083, !tbaa !1085
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1083
  %7 = load i8*, i8** @program_name, align 8, !dbg !1083, !tbaa !1085
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1083
  br label %58, !dbg !1083

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1089
  %11 = load i8*, i8** @program_name, align 8, !dbg !1089, !tbaa !1085
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1089
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1090
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1090, !tbaa !1085
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1090
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1091
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1091, !tbaa !1085
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1091
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1092
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1092, !tbaa !1085
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1092
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), metadata !1063, metadata !DIExpression()) #18, !dbg !1093
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1094
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #18, !dbg !1094
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1076
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), metadata !1064, metadata !DIExpression()) #18, !dbg !1093
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1065, metadata !DIExpression()) #18, !dbg !1093
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1065, metadata !DIExpression()) #18, !dbg !1093
  br label %24, !dbg !1096

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1065, metadata !DIExpression()) #18, !dbg !1093
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #21, !dbg !1097
  %28 = icmp eq i32 %27, 0, !dbg !1097
  br i1 %28, label %34, label %29, !dbg !1096

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1098
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1065, metadata !DIExpression()) #18, !dbg !1093
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1099
  %32 = load i8*, i8** %31, align 8, !dbg !1099, !tbaa !1100
  %33 = icmp eq i8* %32, null, !dbg !1102
  br i1 %33, label %34, label %24, !dbg !1103, !llvm.loop !1104

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1065, metadata !DIExpression()) #18, !dbg !1093
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1065, metadata !DIExpression()) #18, !dbg !1093
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1105
  %37 = load i8*, i8** %36, align 8, !dbg !1105, !tbaa !1107
  %38 = icmp eq i8* %37, null, !dbg !1108
  %39 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %39, metadata !1064, metadata !DIExpression()) #18, !dbg !1093
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #18, !dbg !1110
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #18, !dbg !1110
  %42 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %42, metadata !1072, metadata !DIExpression()) #18, !dbg !1093
  %43 = icmp eq i8* %42, null, !dbg !1112
  br i1 %43, label %51, label %44, !dbg !1114

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #21, !dbg !1115
  %46 = icmp eq i32 %45, 0, !dbg !1115
  br i1 %46, label %51, label %47, !dbg !1116

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #18, !dbg !1117
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1117, !tbaa !1085
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #18, !dbg !1117
  br label %51, !dbg !1119

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1120
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !1120
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1121
  %55 = icmp eq i8* %39, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !1121
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1121
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #18, !dbg !1121
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #18, !dbg !1122
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #22, !dbg !1123
  unreachable, !dbg !1123
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !12 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !22 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !87 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1129, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8** %1, metadata !1130, metadata !DIExpression()), !dbg !1134
  %3 = load i8*, i8** %1, align 8, !dbg !1135, !tbaa !1085
  tail call void @set_program_name(i8* %3) #18, !dbg !1136
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1137
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1138
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1139
  call void @llvm.dbg.value(metadata i32 3, metadata !1140, metadata !DIExpression()), !dbg !1143
  store volatile i32 3, i32* @exit_failure, align 4, !dbg !1145, !tbaa !1147
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1149
  br label %8, !dbg !1150

8:                                                ; preds = %8, %2
  %9 = phi i1 [ false, %2 ], [ true, %8 ], !dbg !1134
  store i1 %9, i1* @silent, align 1, !dbg !1134
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %10, metadata !1131, metadata !DIExpression()), !dbg !1134
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 115, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1150, !llvm.loop !1152

11:                                               ; preds = %8
  tail call void @usage(i32 0) #23, !dbg !1154
  unreachable, !dbg !1154

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1157, !tbaa !1085
  %14 = load i8*, i8** @Version, align 8, !dbg !1157, !tbaa !1085
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #18, !dbg !1157
  tail call void @exit(i32 0) #22, !dbg !1157
  unreachable, !dbg !1157

15:                                               ; preds = %8
  tail call void @usage(i32 2) #23, !dbg !1158
  unreachable, !dbg !1158

16:                                               ; preds = %8
  %17 = load i32, i32* @optind, align 4, !dbg !1159, !tbaa !1147
  %18 = icmp slt i32 %17, %0, !dbg !1161
  br i1 %18, label %19, label %26, !dbg !1162

19:                                               ; preds = %16
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1163
  %21 = load i32, i32* @optind, align 4, !dbg !1165, !tbaa !1147
  %22 = sext i32 %21 to i64, !dbg !1166
  %23 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !1166
  %24 = load i8*, i8** %23, align 8, !dbg !1166, !tbaa !1085
  %25 = tail call i8* @quote(i8* %24) #18, !dbg !1167
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %20, i8* %25) #18, !dbg !1168
  tail call void @usage(i32 2) #23, !dbg !1169
  unreachable, !dbg !1169

26:                                               ; preds = %16
  %27 = tail call i32* @__errno_location() #24, !dbg !1170
  store i32 2, i32* %27, align 4, !dbg !1171, !tbaa !1147
  %28 = load i1, i1* @silent, align 1, !dbg !1172
  br i1 %28, label %29, label %33, !dbg !1174

29:                                               ; preds = %26
  %30 = tail call i32 @isatty(i32 0) #18, !dbg !1175
  %31 = icmp eq i32 %30, 0, !dbg !1175
  %32 = zext i1 %31 to i32, !dbg !1175
  br label %42, !dbg !1176

33:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 0, metadata !1132, metadata !DIExpression()), !dbg !1134
  %34 = tail call i8* @ttyname(i32 0) #18, !dbg !1177
  call void @llvm.dbg.value(metadata i8* %34, metadata !1133, metadata !DIExpression()), !dbg !1134
  %35 = icmp eq i8* %34, null, !dbg !1178
  br i1 %35, label %36, label %38, !dbg !1180

36:                                               ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 5) #18, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %37, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 1, metadata !1132, metadata !DIExpression()), !dbg !1134
  br label %38, !dbg !1183

38:                                               ; preds = %33, %36
  %39 = phi i32 [ 0, %33 ], [ 1, %36 ], !dbg !1134
  %40 = phi i8* [ %34, %33 ], [ %37, %36 ], !dbg !1134
  call void @llvm.dbg.value(metadata i8* %40, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 %39, metadata !1132, metadata !DIExpression()), !dbg !1134
  %41 = tail call i32 @puts(i8* nonnull dereferenceable(1) %40), !dbg !1184
  br label %42

42:                                               ; preds = %38, %29
  %43 = phi i32 [ %32, %29 ], [ %39, %38 ], !dbg !1134
  ret i32 %43, !dbg !1185
}

; Function Attrs: nounwind
declare !dbg !91 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !94 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !97 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !127 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !131 i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !135 i8* @ttyname(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !138 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1188, metadata !DIExpression()), !dbg !1189
  store i8* %0, i8** @file_name, align 8, !dbg !1190, !tbaa !1085
  ret void, !dbg !1191
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1192 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1196, metadata !DIExpression()), !dbg !1197
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1198, !tbaa !1199
  ret void, !dbg !1201
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1202 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1207, !tbaa !1085
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1208
  %3 = icmp eq i32 %2, 0, !dbg !1209
  br i1 %3, label %22, label %4, !dbg !1210

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1211, !tbaa !1199, !range !1212
  %6 = icmp eq i8 %5, 0, !dbg !1211
  br i1 %6, label %11, label %7, !dbg !1213

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1214
  %9 = load i32, i32* %8, align 4, !dbg !1214, !tbaa !1147
  %10 = icmp eq i32 %9, 32, !dbg !1215
  br i1 %10, label %22, label %11, !dbg !1216

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 5) #18, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %12, metadata !1204, metadata !DIExpression()), !dbg !1218
  %13 = load i8*, i8** @file_name, align 8, !dbg !1219, !tbaa !1085
  %14 = icmp eq i8* %13, null, !dbg !1219
  %15 = tail call i32* @__errno_location() #24, !dbg !1221
  %16 = load i32, i32* %15, align 4, !dbg !1221, !tbaa !1147
  br i1 %14, label %19, label %17, !dbg !1222

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1223
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1224
  br label %20, !dbg !1224

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %12) #18, !dbg !1225
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1226, !tbaa !1147
  tail call void @_exit(i32 %21) #22, !dbg !1227
  unreachable, !dbg !1227

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1228, !tbaa !1085
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1230
  %25 = icmp eq i32 %24, 0, !dbg !1231
  br i1 %25, label %28, label %26, !dbg !1232

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1233, !tbaa !1147
  tail call void @_exit(i32 %27) #22, !dbg !1234
  unreachable, !dbg !1234

28:                                               ; preds = %22
  ret void, !dbg !1235
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1236 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1238, metadata !DIExpression()), !dbg !1241
  %2 = icmp eq i8* %0, null, !dbg !1242
  br i1 %2, label %3, label %6, !dbg !1244

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1245, !tbaa !1085
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1247
  tail call void @abort() #22, !dbg !1248
  unreachable, !dbg !1248

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %7, metadata !1239, metadata !DIExpression()), !dbg !1241
  %8 = icmp eq i8* %7, null, !dbg !1250
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1251
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %10, metadata !1240, metadata !DIExpression()), !dbg !1241
  %11 = ptrtoint i8* %10 to i64, !dbg !1252
  %12 = ptrtoint i8* %0 to i64, !dbg !1252
  %13 = sub i64 %11, %12, !dbg !1252
  %14 = icmp sgt i64 %13, 6, !dbg !1254
  br i1 %14, label %15, label %24, !dbg !1255

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1256
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #21, !dbg !1257
  %18 = icmp eq i32 %17, 0, !dbg !1258
  br i1 %18, label %19, label %24, !dbg !1259

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1238, metadata !DIExpression()), !dbg !1241
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #21, !dbg !1260
  %21 = icmp eq i32 %20, 0, !dbg !1263
  br i1 %21, label %22, label %24, !dbg !1264

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1265
  call void @llvm.dbg.value(metadata i8* %23, metadata !1238, metadata !DIExpression()), !dbg !1241
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1267, !tbaa !1085
  br label %24, !dbg !1268

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1238, metadata !DIExpression()), !dbg !1241
  store i8* %25, i8** @program_name, align 8, !dbg !1269, !tbaa !1085
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1270, !tbaa !1085
  ret void, !dbg !1271
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1272 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1277, metadata !DIExpression()), !dbg !1280
  %2 = tail call i32* @__errno_location() #24, !dbg !1281
  %3 = load i32, i32* %2, align 4, !dbg !1281, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %3, metadata !1278, metadata !DIExpression()), !dbg !1280
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1282
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1282
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1282
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1283
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1283
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i32 %3, i32* %2, align 4, !dbg !1284, !tbaa !1147
  ret %struct.quoting_options* %8, !dbg !1285
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1286 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1290, metadata !DIExpression()), !dbg !1291
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1292
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1292
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1293
  %5 = load i32, i32* %4, align 8, !dbg !1293, !tbaa !1294
  ret i32 %5, !dbg !1296
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1297 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1301, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %1, metadata !1302, metadata !DIExpression()), !dbg !1303
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1304
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1304
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1305
  store i32 %1, i32* %5, align 8, !dbg !1306, !tbaa !1294
  ret void, !dbg !1307
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1308 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1312, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %1, metadata !1313, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 %2, metadata !1314, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8 %1, metadata !1315, metadata !DIExpression()), !dbg !1321
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1322
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1322
  %6 = lshr i8 %1, 5, !dbg !1323
  %7 = zext i8 %6 to i64, !dbg !1323
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1324
  call void @llvm.dbg.value(metadata i32* %8, metadata !1317, metadata !DIExpression()), !dbg !1321
  %9 = and i8 %1, 31, !dbg !1325
  %10 = zext i8 %9 to i32, !dbg !1325
  call void @llvm.dbg.value(metadata i32 %10, metadata !1319, metadata !DIExpression()), !dbg !1321
  %11 = load i32, i32* %8, align 4, !dbg !1326, !tbaa !1147
  %12 = lshr i32 %11, %10, !dbg !1327
  %13 = and i32 %12, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i32 %13, metadata !1320, metadata !DIExpression()), !dbg !1321
  %14 = and i32 %2, 1, !dbg !1329
  %15 = xor i32 %13, %14, !dbg !1330
  %16 = shl i32 %15, %10, !dbg !1331
  %17 = xor i32 %16, %11, !dbg !1332
  store i32 %17, i32* %8, align 4, !dbg !1332, !tbaa !1147
  ret i32 %13, !dbg !1333
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1334 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1338, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %1, metadata !1339, metadata !DIExpression()), !dbg !1341
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1342
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1338, metadata !DIExpression()), !dbg !1341
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1345
  %6 = load i32, i32* %5, align 4, !dbg !1345, !tbaa !1346
  call void @llvm.dbg.value(metadata i32 %6, metadata !1340, metadata !DIExpression()), !dbg !1341
  store i32 %1, i32* %5, align 4, !dbg !1347, !tbaa !1346
  ret i32 %6, !dbg !1348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1349 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %1, metadata !1354, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %2, metadata !1355, metadata !DIExpression()), !dbg !1356
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1357
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1359
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1353, metadata !DIExpression()), !dbg !1356
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1360
  store i32 10, i32* %6, align 8, !dbg !1361, !tbaa !1294
  %7 = icmp ne i8* %1, null, !dbg !1362
  %8 = icmp ne i8* %2, null, !dbg !1364
  %9 = and i1 %7, %8, !dbg !1365
  br i1 %9, label %11, label %10, !dbg !1365

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1366
  unreachable, !dbg !1366

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1367
  store i8* %1, i8** %12, align 8, !dbg !1368, !tbaa !1369
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1370
  store i8* %2, i8** %13, align 8, !dbg !1371, !tbaa !1372
  ret void, !dbg !1373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1378, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %1, metadata !1379, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i8* %2, metadata !1380, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i64 %3, metadata !1381, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1382, metadata !DIExpression()), !dbg !1386
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1387
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1387
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1383, metadata !DIExpression()), !dbg !1386
  %8 = tail call i32* @__errno_location() #24, !dbg !1388
  %9 = load i32, i32* %8, align 4, !dbg !1388, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %9, metadata !1384, metadata !DIExpression()), !dbg !1386
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1389
  %11 = load i32, i32* %10, align 8, !dbg !1389, !tbaa !1294
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1390
  %13 = load i32, i32* %12, align 4, !dbg !1390, !tbaa !1346
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1391
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1392
  %16 = load i8*, i8** %15, align 8, !dbg !1392, !tbaa !1369
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1393
  %18 = load i8*, i8** %17, align 8, !dbg !1393, !tbaa !1372
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %19, metadata !1385, metadata !DIExpression()), !dbg !1386
  store i32 %9, i32* %8, align 4, !dbg !1395, !tbaa !1147
  ret i64 %19, !dbg !1396
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1397 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1403, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %1, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %2, metadata !1405, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %3, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %4, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %5, metadata !1408, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32* %6, metadata !1409, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %7, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %8, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 0, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 0, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* null, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 0, metadata !1416, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !1417, metadata !DIExpression()), !dbg !1461
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1462
  %14 = icmp eq i64 %13, 1, !dbg !1463
  call void @llvm.dbg.value(metadata i1 %14, metadata !1418, metadata !DIExpression()), !dbg !1461
  %15 = lshr i32 %5, 1, !dbg !1464
  %16 = trunc i32 %15 to i8, !dbg !1464
  %17 = and i8 %16, 1, !dbg !1464
  call void @llvm.dbg.value(metadata i8 %17, metadata !1419, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1422, metadata !DIExpression()), !dbg !1461
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1465
  %19 = and i32 %5, 4, !dbg !1467
  %20 = icmp eq i32 %19, 0, !dbg !1467
  %21 = and i32 %5, 1, !dbg !1470
  %22 = icmp eq i32 %21, 0, !dbg !1470
  %23 = bitcast i64* %10 to i8*, !dbg !1473
  %24 = bitcast i32* %12 to i8*, !dbg !1474
  %25 = icmp eq i32* %6, null, !dbg !1475
  br label %26, !dbg !1477

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1478
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1479
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1480
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1481
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1461
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1482
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1483
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1484
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %38, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %37, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %36, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %35, metadata !1419, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %34, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %33, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %32, metadata !1416, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %31, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %30, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 0, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %29, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %28, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %27, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.label(metadata !1455), !dbg !1485
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
  ], !dbg !1486

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1419, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %35, metadata !1419, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 5, metadata !1407, metadata !DIExpression()), !dbg !1461
  br label %92, !dbg !1487

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1419, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 5, metadata !1407, metadata !DIExpression()), !dbg !1461
  %42 = and i8 %35, 1, !dbg !1489
  %43 = icmp eq i8 %42, 0, !dbg !1489
  br i1 %43, label %44, label %92, !dbg !1487

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1491
  br i1 %45, label %92, label %46, !dbg !1494

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1491, !tbaa !1495
  br label %92, !dbg !1491

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %27), !dbg !1496
  call void @llvm.dbg.value(metadata i8* %48, metadata !1410, metadata !DIExpression()), !dbg !1461
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %27), !dbg !1500
  call void @llvm.dbg.value(metadata i8* %49, metadata !1411, metadata !DIExpression()), !dbg !1461
  br label %50, !dbg !1501

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %51, metadata !1410, metadata !DIExpression()), !dbg !1461
  %53 = and i8 %35, 1, !dbg !1502
  %54 = icmp eq i8 %53, 0, !dbg !1502
  br i1 %54, label %55, label %70, !dbg !1504

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 0, metadata !1413, metadata !DIExpression()), !dbg !1461
  %56 = load i8, i8* %51, align 1, !dbg !1505, !tbaa !1495
  %57 = icmp eq i8 %56, 0, !dbg !1508
  br i1 %57, label %70, label %58, !dbg !1508

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %61, metadata !1413, metadata !DIExpression()), !dbg !1461
  %62 = icmp ult i64 %61, %39, !dbg !1509
  br i1 %62, label %63, label %65, !dbg !1512

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1509
  store i8 %59, i8* %64, align 1, !dbg !1509, !tbaa !1495
  br label %65, !dbg !1509

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %66, metadata !1413, metadata !DIExpression()), !dbg !1461
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %67, metadata !1415, metadata !DIExpression()), !dbg !1461
  %68 = load i8, i8* %67, align 1, !dbg !1505, !tbaa !1495
  %69 = icmp eq i8 %68, 0, !dbg !1508
  br i1 %69, label %70, label %58, !dbg !1508, !llvm.loop !1514

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1516
  call void @llvm.dbg.value(metadata i64 %71, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %52, metadata !1415, metadata !DIExpression()), !dbg !1461
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %72, metadata !1416, metadata !DIExpression()), !dbg !1461
  br label %92, !dbg !1518

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1417, metadata !DIExpression()), !dbg !1461
  br label %74, !dbg !1519

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %75, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1419, metadata !DIExpression()), !dbg !1461
  br label %76, !dbg !1520

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1481
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %78, metadata !1419, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %77, metadata !1417, metadata !DIExpression()), !dbg !1461
  %79 = and i8 %78, 1, !dbg !1521
  %80 = icmp eq i8 %79, 0, !dbg !1521
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1523
  br label %82, !dbg !1523

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1461
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1464
  call void @llvm.dbg.value(metadata i8 %84, metadata !1419, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %83, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  %85 = and i8 %84, 1, !dbg !1524
  %86 = icmp eq i8 %85, 0, !dbg !1524
  br i1 %86, label %87, label %92, !dbg !1526

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1527
  br i1 %88, label %92, label %89, !dbg !1530

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1527, !tbaa !1495
  br label %92, !dbg !1527

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1419, metadata !DIExpression()), !dbg !1461
  br label %92, !dbg !1531

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1532
  unreachable, !dbg !1532

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1516
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %40 ], !dbg !1461
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1461
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1461
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %100, metadata !1419, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %98, metadata !1416, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %96, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 %93, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 0, metadata !1412, metadata !DIExpression()), !dbg !1461
  %101 = and i8 %99, 1, !dbg !1533
  %102 = icmp ne i8 %101, 0, !dbg !1533
  %103 = icmp ne i32 %93, 2, !dbg !1533
  %104 = and i1 %103, %102, !dbg !1533
  %105 = icmp ne i64 %98, 0, !dbg !1533
  %106 = and i1 %105, %104, !dbg !1533
  %107 = icmp ugt i64 %98, 1, !dbg !1533
  %108 = and i8 %100, 1, !dbg !1535
  %109 = icmp eq i8 %108, 0, !dbg !1535
  %110 = icmp eq i32 %93, 2, !dbg !1538
  %111 = or i1 %103, %109, !dbg !1540
  %112 = icmp ne i8 %108, 0, !dbg !1542
  %113 = and i1 %110, %112, !dbg !1542
  %114 = xor i1 %102, true, !dbg !1543
  %115 = xor i1 %104, true, !dbg !1475
  %116 = and i1 %109, %115, !dbg !1475
  %117 = or i1 %25, %116, !dbg !1475
  %118 = and i8 %99, %100, !dbg !1544
  %119 = and i8 %118, 1, !dbg !1544
  %120 = icmp ne i8 %119, 0, !dbg !1544
  %121 = and i1 %120, %105, !dbg !1544
  br label %122, !dbg !1546

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1547
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1516
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1478
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1482
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1483
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1484
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %126, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %123, metadata !1412, metadata !DIExpression()), !dbg !1461
  %131 = icmp eq i64 %126, -1, !dbg !1548
  br i1 %131, label %132, label %136, !dbg !1549

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1550
  %134 = load i8, i8* %133, align 1, !dbg !1550, !tbaa !1495
  %135 = icmp eq i8 %134, 0, !dbg !1551
  br i1 %135, label %581, label %138, !dbg !1552

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1553
  br i1 %137, label %581, label %138, !dbg !1552

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1428, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1429, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 0, metadata !1430, metadata !DIExpression()), !dbg !1554
  br i1 %106, label %139, label %154, !dbg !1555

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1556
  %141 = and i1 %107, %131, !dbg !1557
  br i1 %141, label %142, label %144, !dbg !1557

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1558
  call void @llvm.dbg.value(metadata i64 %143, metadata !1406, metadata !DIExpression()), !dbg !1461
  br label %144, !dbg !1559

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1406, metadata !DIExpression()), !dbg !1461
  %146 = icmp ugt i64 %140, %145, !dbg !1560
  br i1 %146, label %154, label %147, !dbg !1561

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1562
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1563
  %150 = icmp ne i32 %149, 0, !dbg !1564
  %151 = or i1 %150, %109, !dbg !1565
  %152 = xor i1 %150, true, !dbg !1565
  %153 = zext i1 %152 to i8, !dbg !1565
  br i1 %151, label %154, label %639, !dbg !1565

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %156, metadata !1428, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %155, metadata !1406, metadata !DIExpression()), !dbg !1461
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1566
  %158 = load i8, i8* %157, align 1, !dbg !1566, !tbaa !1495
  call void @llvm.dbg.value(metadata i8 %158, metadata !1423, metadata !DIExpression()), !dbg !1554
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
  ], !dbg !1567

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1568

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1569

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1429, metadata !DIExpression()), !dbg !1554
  %162 = and i8 %127, 1, !dbg !1572
  %163 = icmp eq i8 %162, 0, !dbg !1572
  %164 = and i1 %110, %163, !dbg !1572
  br i1 %164, label %165, label %181, !dbg !1572

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1574
  br i1 %166, label %167, label %169, !dbg !1578

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1574
  store i8 39, i8* %168, align 1, !dbg !1574, !tbaa !1495
  br label %169, !dbg !1574

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %170, metadata !1413, metadata !DIExpression()), !dbg !1461
  %171 = icmp ult i64 %170, %130, !dbg !1579
  br i1 %171, label %172, label %174, !dbg !1582

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1579
  store i8 36, i8* %173, align 1, !dbg !1579, !tbaa !1495
  br label %174, !dbg !1579

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %175, metadata !1413, metadata !DIExpression()), !dbg !1461
  %176 = icmp ult i64 %175, %130, !dbg !1583
  br i1 %176, label %177, label %179, !dbg !1586

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1583
  store i8 39, i8* %178, align 1, !dbg !1583, !tbaa !1495
  br label %179, !dbg !1583

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %180, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1420, metadata !DIExpression()), !dbg !1461
  br label %181, !dbg !1587

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1461
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %183, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %182, metadata !1413, metadata !DIExpression()), !dbg !1461
  %184 = icmp ult i64 %182, %130, !dbg !1588
  br i1 %184, label %185, label %187, !dbg !1591

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1588
  store i8 92, i8* %186, align 1, !dbg !1588, !tbaa !1495
  br label %187, !dbg !1588

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %188, metadata !1413, metadata !DIExpression()), !dbg !1461
  br i1 %103, label %189, label %463, !dbg !1592

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1594
  %191 = icmp ult i64 %190, %155, !dbg !1595
  br i1 %191, label %192, label %463, !dbg !1596

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1597
  %194 = load i8, i8* %193, align 1, !dbg !1597, !tbaa !1495
  %195 = add i8 %194, -48, !dbg !1598
  %196 = icmp ult i8 %195, 10, !dbg !1598
  br i1 %196, label %197, label %463, !dbg !1598

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1599
  br i1 %198, label %199, label %201, !dbg !1603

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1599
  store i8 48, i8* %200, align 1, !dbg !1599, !tbaa !1495
  br label %201, !dbg !1599

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %202, metadata !1413, metadata !DIExpression()), !dbg !1461
  %203 = icmp ult i64 %202, %130, !dbg !1604
  br i1 %203, label %204, label %206, !dbg !1607

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1604
  store i8 48, i8* %205, align 1, !dbg !1604, !tbaa !1495
  br label %206, !dbg !1604

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %207, metadata !1413, metadata !DIExpression()), !dbg !1461
  br label %463, !dbg !1608

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1609

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1610

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1611

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1612

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1613
  %214 = icmp ult i64 %213, %155, !dbg !1614
  br i1 %214, label %215, label %463, !dbg !1615

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1616
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1617
  %218 = load i8, i8* %217, align 1, !dbg !1617, !tbaa !1495
  %219 = icmp eq i8 %218, 63, !dbg !1618
  br i1 %219, label %220, label %463, !dbg !1619

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1620
  %222 = load i8, i8* %221, align 1, !dbg !1620, !tbaa !1495
  %223 = sext i8 %222 to i32, !dbg !1620
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
  ], !dbg !1621

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1622

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1423, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %213, metadata !1412, metadata !DIExpression()), !dbg !1461
  %226 = icmp ult i64 %124, %130, !dbg !1624
  br i1 %226, label %227, label %229, !dbg !1627

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1624
  store i8 63, i8* %228, align 1, !dbg !1624, !tbaa !1495
  br label %229, !dbg !1624

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %230, metadata !1413, metadata !DIExpression()), !dbg !1461
  %231 = icmp ult i64 %230, %130, !dbg !1628
  br i1 %231, label %232, label %234, !dbg !1631

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1628
  store i8 34, i8* %233, align 1, !dbg !1628, !tbaa !1495
  br label %234, !dbg !1628

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %235, metadata !1413, metadata !DIExpression()), !dbg !1461
  %236 = icmp ult i64 %235, %130, !dbg !1632
  br i1 %236, label %237, label %239, !dbg !1635

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1632
  store i8 34, i8* %238, align 1, !dbg !1632, !tbaa !1495
  br label %239, !dbg !1632

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %240, metadata !1413, metadata !DIExpression()), !dbg !1461
  %241 = icmp ult i64 %240, %130, !dbg !1636
  br i1 %241, label %242, label %244, !dbg !1639

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1636
  store i8 63, i8* %243, align 1, !dbg !1636, !tbaa !1495
  br label %244, !dbg !1636

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %245, metadata !1413, metadata !DIExpression()), !dbg !1461
  br label %463, !dbg !1640

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1427, metadata !DIExpression()), !dbg !1554
  br label %256, !dbg !1641

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1427, metadata !DIExpression()), !dbg !1554
  br label %256, !dbg !1642

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1427, metadata !DIExpression()), !dbg !1554
  br label %254, !dbg !1643

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1427, metadata !DIExpression()), !dbg !1554
  br label %254, !dbg !1644

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1427, metadata !DIExpression()), !dbg !1554
  br label %256, !dbg !1645

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1427, metadata !DIExpression()), !dbg !1554
  br i1 %110, label %252, label %253, !dbg !1646

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1647

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1650

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1651
  call void @llvm.dbg.value(metadata i8 %255, metadata !1427, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.label(metadata !1456), !dbg !1652
  br i1 %111, label %256, label %625, !dbg !1653

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1651
  call void @llvm.dbg.value(metadata i8 %257, metadata !1427, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.label(metadata !1457), !dbg !1655
  br i1 %102, label %488, label %463, !dbg !1656

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1657

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1658, !tbaa !1495
  %261 = icmp eq i8 %260, 0, !dbg !1659
  br i1 %261, label %262, label %463, !dbg !1660

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1661
  br i1 %263, label %264, label %463, !dbg !1663

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1430, metadata !DIExpression()), !dbg !1554
  br label %265, !dbg !1664

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %266, metadata !1430, metadata !DIExpression()), !dbg !1554
  br i1 %111, label %463, label %625, !dbg !1665

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1430, metadata !DIExpression()), !dbg !1554
  br i1 %110, label %268, label %463, !dbg !1666

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1667

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1669
  %271 = icmp ne i64 %125, 0, !dbg !1671
  %272 = or i1 %271, %270, !dbg !1672
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1672
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %274, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %273, metadata !1414, metadata !DIExpression()), !dbg !1461
  %275 = icmp ult i64 %124, %274, !dbg !1673
  br i1 %275, label %276, label %278, !dbg !1676

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1673
  store i8 39, i8* %277, align 1, !dbg !1673, !tbaa !1495
  br label %278, !dbg !1673

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i64 %279, metadata !1413, metadata !DIExpression()), !dbg !1461
  %280 = icmp ult i64 %279, %274, !dbg !1677
  br i1 %280, label %281, label %283, !dbg !1680

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1677
  store i8 92, i8* %282, align 1, !dbg !1677, !tbaa !1495
  br label %283, !dbg !1677

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %284, metadata !1413, metadata !DIExpression()), !dbg !1461
  %285 = icmp ult i64 %284, %274, !dbg !1681
  br i1 %285, label %286, label %288, !dbg !1684

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1681
  store i8 39, i8* %287, align 1, !dbg !1681, !tbaa !1495
  br label %288, !dbg !1681

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %289, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !1420, metadata !DIExpression()), !dbg !1461
  br label %463, !dbg !1685

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1686

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1431, metadata !DIExpression()), !dbg !1687
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1688
  %293 = load i16*, i16** %292, align 8, !dbg !1688, !tbaa !1085
  %294 = zext i8 %158 to i64, !dbg !1688
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1688
  %296 = load i16, i16* %295, align 2, !dbg !1688, !tbaa !1690
  %297 = lshr i16 %296, 14, !dbg !1692
  %298 = trunc i16 %297 to i8, !dbg !1692
  %299 = and i8 %298, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i8 %299, metadata !1434, metadata !DIExpression()), !dbg !1687
  br label %355, !dbg !1693

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1694
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1435, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* %23, metadata !1696, metadata !DIExpression()) #18, !dbg !1704
  call void @llvm.dbg.value(metadata i32 0, metadata !1702, metadata !DIExpression()) #18, !dbg !1704
  call void @llvm.dbg.value(metadata i64 8, metadata !1703, metadata !DIExpression()) #18, !dbg !1704
  store i64 0, i64* %10, align 8, !dbg !1706
  call void @llvm.dbg.value(metadata i64 0, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 1, metadata !1434, metadata !DIExpression()), !dbg !1687
  %301 = icmp eq i64 %155, -1, !dbg !1707
  br i1 %301, label %302, label %304, !dbg !1709

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %303, metadata !1406, metadata !DIExpression()), !dbg !1461
  br label %304, !dbg !1711

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1554
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  br label %306, !dbg !1712

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1713
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1714
  call void @llvm.dbg.value(metadata i8 %308, metadata !1434, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1715
  %309 = add i64 %307, %123, !dbg !1716
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1717
  %311 = sub i64 %305, %309, !dbg !1718
  call void @llvm.dbg.value(metadata i32* %12, metadata !1441, metadata !DIExpression(DW_OP_deref)), !dbg !1474
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %312, metadata !1444, metadata !DIExpression()), !dbg !1474
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1720

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  %314 = icmp ugt i64 %305, %309, !dbg !1721
  br i1 %314, label %315, label %340, !dbg !1723

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1724
  br label %317, !dbg !1724

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1431, metadata !DIExpression()), !dbg !1687
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1725
  %321 = load i8, i8* %320, align 1, !dbg !1725, !tbaa !1495
  %322 = icmp eq i8 %321, 0, !dbg !1723
  br i1 %322, label %340, label %323, !dbg !1724

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %324, metadata !1431, metadata !DIExpression()), !dbg !1687
  %325 = add i64 %324, %123, !dbg !1727
  %326 = icmp ult i64 %325, %305, !dbg !1721
  br i1 %326, label %317, label %340, !dbg !1723, !llvm.loop !1728

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1729
  %329 = and i1 %113, %328, !dbg !1732
  call void @llvm.dbg.value(metadata i64 1, metadata !1445, metadata !DIExpression()), !dbg !1733
  br i1 %329, label %330, label %343, !dbg !1732

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1445, metadata !DIExpression()), !dbg !1733
  %332 = add i64 %331, %309, !dbg !1734
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1735
  %334 = load i8, i8* %333, align 1, !dbg !1735, !tbaa !1495
  %335 = sext i8 %334 to i32, !dbg !1735
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1736

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %337, metadata !1445, metadata !DIExpression()), !dbg !1733
  %338 = icmp eq i64 %337, %312, !dbg !1729
  br i1 %338, label %343, label %330, !dbg !1738, !llvm.loop !1739

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 %308, metadata !1434, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %307, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 %308, metadata !1434, metadata !DIExpression()), !dbg !1687
  br label %340, !dbg !1741

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1741
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1742, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %344, metadata !1441, metadata !DIExpression()), !dbg !1474
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !1744
  %346 = icmp eq i32 %345, 0, !dbg !1744
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1745
  call void @llvm.dbg.value(metadata i8 %347, metadata !1434, metadata !DIExpression()), !dbg !1687
  %348 = add i64 %312, %307, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %348, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 %347, metadata !1434, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %348, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1741
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1747
  %350 = icmp eq i32 %349, 0, !dbg !1748
  br i1 %350, label %306, label %351, !dbg !1749, !llvm.loop !1750

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1752
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i32 2, metadata !1407, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %99, metadata !1417, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %305, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1741
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1752
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1554
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1753
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1753
  call void @llvm.dbg.value(metadata i8 %358, metadata !1434, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %357, metadata !1431, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i64 %356, metadata !1406, metadata !DIExpression()), !dbg !1461
  %359 = and i8 %358, 1, !dbg !1754
  %360 = icmp ne i8 %359, 0, !dbg !1754
  call void @llvm.dbg.value(metadata i8 %359, metadata !1430, metadata !DIExpression()), !dbg !1554
  %361 = icmp ult i64 %357, 2, !dbg !1755
  %362 = or i1 %360, %114, !dbg !1756
  %363 = and i1 %361, %362, !dbg !1757
  br i1 %363, label %463, label %364, !dbg !1757

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %365, metadata !1452, metadata !DIExpression()), !dbg !1759
  br label %366, !dbg !1760

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1547
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1461
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1482
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1554
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1554
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1761
  call void @llvm.dbg.value(metadata i8 %372, metadata !1429, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %371, metadata !1428, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %370, metadata !1423, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %369, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %368, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %367, metadata !1412, metadata !DIExpression()), !dbg !1461
  br i1 %362, label %419, label %373, !dbg !1762

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1767

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1429, metadata !DIExpression()), !dbg !1554
  %375 = and i8 %369, 1, !dbg !1770
  %376 = icmp eq i8 %375, 0, !dbg !1770
  %377 = and i1 %110, %376, !dbg !1770
  br i1 %377, label %378, label %394, !dbg !1770

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1772
  br i1 %379, label %380, label %382, !dbg !1776

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1772
  store i8 39, i8* %381, align 1, !dbg !1772, !tbaa !1495
  br label %382, !dbg !1772

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %383, metadata !1413, metadata !DIExpression()), !dbg !1461
  %384 = icmp ult i64 %383, %130, !dbg !1777
  br i1 %384, label %385, label %387, !dbg !1780

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1777
  store i8 36, i8* %386, align 1, !dbg !1777, !tbaa !1495
  br label %387, !dbg !1777

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %388, metadata !1413, metadata !DIExpression()), !dbg !1461
  %389 = icmp ult i64 %388, %130, !dbg !1781
  br i1 %389, label %390, label %392, !dbg !1784

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1781
  store i8 39, i8* %391, align 1, !dbg !1781, !tbaa !1495
  br label %392, !dbg !1781

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %393, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1420, metadata !DIExpression()), !dbg !1461
  br label %394, !dbg !1785

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1461
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %396, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %395, metadata !1413, metadata !DIExpression()), !dbg !1461
  %397 = icmp ult i64 %395, %130, !dbg !1786
  br i1 %397, label %398, label %400, !dbg !1789

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1786
  store i8 92, i8* %399, align 1, !dbg !1786, !tbaa !1495
  br label %400, !dbg !1786

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %401, metadata !1413, metadata !DIExpression()), !dbg !1461
  %402 = icmp ult i64 %401, %130, !dbg !1790
  br i1 %402, label %403, label %407, !dbg !1793

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1790
  %405 = or i8 %404, 48, !dbg !1790
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1790
  store i8 %405, i8* %406, align 1, !dbg !1790, !tbaa !1495
  br label %407, !dbg !1790

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %408, metadata !1413, metadata !DIExpression()), !dbg !1461
  %409 = icmp ult i64 %408, %130, !dbg !1794
  br i1 %409, label %410, label %415, !dbg !1797

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1794
  %412 = and i8 %411, 7, !dbg !1794
  %413 = or i8 %412, 48, !dbg !1794
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1794
  store i8 %413, i8* %414, align 1, !dbg !1794, !tbaa !1495
  br label %415, !dbg !1794

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %416, metadata !1413, metadata !DIExpression()), !dbg !1461
  %417 = and i8 %370, 7, !dbg !1798
  %418 = or i8 %417, 48, !dbg !1799
  call void @llvm.dbg.value(metadata i8 %418, metadata !1423, metadata !DIExpression()), !dbg !1554
  br label %428, !dbg !1800

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1801
  %421 = icmp eq i8 %420, 0, !dbg !1801
  br i1 %421, label %428, label %422, !dbg !1803

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1804
  br i1 %423, label %424, label %426, !dbg !1808

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1804
  store i8 92, i8* %425, align 1, !dbg !1804, !tbaa !1495
  br label %426, !dbg !1804

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %427, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !1428, metadata !DIExpression()), !dbg !1554
  br label %428, !dbg !1809

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1461
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1482
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1554
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1554
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8 %433, metadata !1429, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %432, metadata !1428, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %431, metadata !1423, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %430, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %429, metadata !1413, metadata !DIExpression()), !dbg !1461
  %434 = add i64 %367, 1, !dbg !1810
  %435 = icmp ugt i64 %365, %434, !dbg !1812
  br i1 %435, label %436, label %526, !dbg !1813

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1814
  %438 = icmp ne i8 %437, 0, !dbg !1814
  %439 = and i8 %433, 1, !dbg !1814
  %440 = icmp eq i8 %439, 0, !dbg !1814
  %441 = and i1 %438, %440, !dbg !1814
  br i1 %441, label %442, label %453, !dbg !1814

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1817
  br i1 %443, label %444, label %446, !dbg !1821

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1817
  store i8 39, i8* %445, align 1, !dbg !1817, !tbaa !1495
  br label %446, !dbg !1817

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %447, metadata !1413, metadata !DIExpression()), !dbg !1461
  %448 = icmp ult i64 %447, %130, !dbg !1822
  br i1 %448, label %449, label %451, !dbg !1825

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1822
  store i8 39, i8* %450, align 1, !dbg !1822, !tbaa !1495
  br label %451, !dbg !1822

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %452, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !1420, metadata !DIExpression()), !dbg !1461
  br label %453, !dbg !1826

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1827
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %455, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %454, metadata !1413, metadata !DIExpression()), !dbg !1461
  %456 = icmp ult i64 %454, %130, !dbg !1828
  br i1 %456, label %457, label %459, !dbg !1831

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1828
  store i8 %431, i8* %458, align 1, !dbg !1828, !tbaa !1495
  br label %459, !dbg !1828

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %460, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %434, metadata !1412, metadata !DIExpression()), !dbg !1461
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1832
  %462 = load i8, i8* %461, align 1, !dbg !1832, !tbaa !1495
  call void @llvm.dbg.value(metadata i8 %462, metadata !1423, metadata !DIExpression()), !dbg !1554
  br label %366, !dbg !1833, !llvm.loop !1834

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1547
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1461
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1478
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1837
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1461
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1461
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1554
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1554
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1554
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %472, metadata !1430, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %471, metadata !1429, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %156, metadata !1428, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %470, metadata !1423, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %469, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %468, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %467, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %466, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %465, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %464, metadata !1412, metadata !DIExpression()), !dbg !1461
  br i1 %117, label %486, label %474, !dbg !1838

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1839
  %476 = zext i8 %475 to i64, !dbg !1839
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1840
  %478 = load i32, i32* %477, align 4, !dbg !1840, !tbaa !1147
  %479 = and i8 %470, 31, !dbg !1841
  %480 = zext i8 %479 to i32, !dbg !1841
  %481 = shl nuw i32 1, %480, !dbg !1842
  %482 = and i32 %478, %481, !dbg !1842
  %483 = icmp eq i32 %482, 0, !dbg !1842
  %484 = icmp eq i8 %156, 0, !dbg !1843
  %485 = and i1 %484, %483, !dbg !1844
  br i1 %485, label %526, label %488, !dbg !1844

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1843
  br i1 %487, label %526, label %488, !dbg !1845

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1846
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1461
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1478
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1837
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1482
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1483
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1554
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1554
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %496, metadata !1430, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %495, metadata !1423, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %494, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %493, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %492, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %491, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %490, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %489, metadata !1412, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.label(metadata !1458), !dbg !1847
  br i1 %109, label %498, label %629, !dbg !1848

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1429, metadata !DIExpression()), !dbg !1554
  %499 = and i8 %493, 1, !dbg !1850
  %500 = icmp eq i8 %499, 0, !dbg !1850
  %501 = and i1 %110, %500, !dbg !1850
  br i1 %501, label %502, label %518, !dbg !1850

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1852
  br i1 %503, label %504, label %506, !dbg !1856

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1852
  store i8 39, i8* %505, align 1, !dbg !1852, !tbaa !1495
  br label %506, !dbg !1852

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %507, metadata !1413, metadata !DIExpression()), !dbg !1461
  %508 = icmp ult i64 %507, %497, !dbg !1857
  br i1 %508, label %509, label %511, !dbg !1860

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1857
  store i8 36, i8* %510, align 1, !dbg !1857, !tbaa !1495
  br label %511, !dbg !1857

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %512, metadata !1413, metadata !DIExpression()), !dbg !1461
  %513 = icmp ult i64 %512, %497, !dbg !1861
  br i1 %513, label %514, label %516, !dbg !1864

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1861
  store i8 39, i8* %515, align 1, !dbg !1861, !tbaa !1495
  br label %516, !dbg !1861

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %517, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 1, metadata !1420, metadata !DIExpression()), !dbg !1461
  br label %518, !dbg !1865

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1554
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %520, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %519, metadata !1413, metadata !DIExpression()), !dbg !1461
  %521 = icmp ult i64 %519, %497, !dbg !1866
  br i1 %521, label %522, label %524, !dbg !1869

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1866
  store i8 92, i8* %523, align 1, !dbg !1866, !tbaa !1495
  br label %524, !dbg !1866

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %525, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %536, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %535, metadata !1430, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %534, metadata !1429, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %533, metadata !1423, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %532, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %531, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %530, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %529, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %528, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %527, metadata !1412, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.label(metadata !1459), !dbg !1870
  br label %553, !dbg !1871

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1846
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1461
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1478
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1837
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1482
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1483
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1874
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1554
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1554
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %535, metadata !1430, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %534, metadata !1429, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %533, metadata !1423, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %532, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %531, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %530, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %529, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %528, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %527, metadata !1412, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.label(metadata !1459), !dbg !1870
  %537 = and i8 %531, 1, !dbg !1871
  %538 = icmp ne i8 %537, 0, !dbg !1871
  %539 = and i8 %534, 1, !dbg !1871
  %540 = icmp eq i8 %539, 0, !dbg !1871
  %541 = and i1 %538, %540, !dbg !1871
  br i1 %541, label %542, label %553, !dbg !1871

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1875
  br i1 %543, label %544, label %546, !dbg !1879

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1875
  store i8 39, i8* %545, align 1, !dbg !1875, !tbaa !1495
  br label %546, !dbg !1875

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %547, metadata !1413, metadata !DIExpression()), !dbg !1461
  %548 = icmp ult i64 %547, %536, !dbg !1880
  br i1 %548, label %549, label %551, !dbg !1883

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1880
  store i8 39, i8* %550, align 1, !dbg !1880, !tbaa !1495
  br label %551, !dbg !1880

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %552, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 0, metadata !1420, metadata !DIExpression()), !dbg !1461
  br label %553, !dbg !1884

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1554
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %562, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %561, metadata !1413, metadata !DIExpression()), !dbg !1461
  %563 = icmp ult i64 %561, %554, !dbg !1885
  br i1 %563, label %564, label %566, !dbg !1888

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1885
  store i8 %556, i8* %565, align 1, !dbg !1885, !tbaa !1495
  br label %566, !dbg !1885

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %567, metadata !1413, metadata !DIExpression()), !dbg !1461
  %568 = and i8 %555, 1, !dbg !1889
  %569 = icmp eq i8 %568, 0, !dbg !1889
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1891
  call void @llvm.dbg.value(metadata i8 %570, metadata !1422, metadata !DIExpression()), !dbg !1461
  br label %571, !dbg !1892

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1846
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1461
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1478
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1837
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1482
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1461
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1484
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %578, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %577, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %576, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %575, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %574, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %573, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %572, metadata !1412, metadata !DIExpression()), !dbg !1461
  %580 = add i64 %572, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %580, metadata !1412, metadata !DIExpression()), !dbg !1461
  br label %122, !dbg !1894, !llvm.loop !1895

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %127, metadata !1420, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %128, metadata !1421, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8 %129, metadata !1422, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  %583 = icmp eq i64 %124, 0, !dbg !1897
  %584 = and i1 %110, %583, !dbg !1899
  %585 = xor i1 %584, true, !dbg !1899
  %586 = or i1 %109, %585, !dbg !1899
  br i1 %586, label %587, label %629, !dbg !1899

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1900
  %589 = xor i1 %588, true, !dbg !1900
  %590 = and i8 %128, 1, !dbg !1902
  %591 = icmp eq i8 %590, 0, !dbg !1902
  %592 = or i1 %591, %589, !dbg !1900
  br i1 %592, label %602, label %593, !dbg !1900

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1903
  %595 = icmp eq i8 %594, 0, !dbg !1903
  br i1 %595, label %598, label %596, !dbg !1906

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %94, metadata !1410, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %95, metadata !1411, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %125, metadata !1414, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %582, metadata !1406, metadata !DIExpression()), !dbg !1461
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1907
  br label %645, !dbg !1908

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !1909
  %600 = icmp ne i64 %125, 0, !dbg !1911
  %601 = and i1 %600, %599, !dbg !1912
  br i1 %601, label %26, label %602, !dbg !1912

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %130, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  %603 = icmp ne i8* %97, null, !dbg !1913
  %604 = and i1 %603, %109, !dbg !1915
  br i1 %604, label %605, label %620, !dbg !1915

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %124, metadata !1413, metadata !DIExpression()), !dbg !1461
  %606 = load i8, i8* %97, align 1, !dbg !1916, !tbaa !1495
  %607 = icmp eq i8 %606, 0, !dbg !1919
  br i1 %607, label %620, label %608, !dbg !1919

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1415, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %611, metadata !1413, metadata !DIExpression()), !dbg !1461
  %612 = icmp ult i64 %611, %130, !dbg !1920
  br i1 %612, label %613, label %615, !dbg !1923

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !1920
  store i8 %609, i8* %614, align 1, !dbg !1920, !tbaa !1495
  br label %615, !dbg !1920

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %616, metadata !1413, metadata !DIExpression()), !dbg !1461
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %617, metadata !1415, metadata !DIExpression()), !dbg !1461
  %618 = load i8, i8* %617, align 1, !dbg !1916, !tbaa !1495
  %619 = icmp eq i8 %618, 0, !dbg !1919
  br i1 %619, label %620, label %608, !dbg !1919, !llvm.loop !1925

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1516
  call void @llvm.dbg.value(metadata i64 %621, metadata !1413, metadata !DIExpression()), !dbg !1461
  %622 = icmp ult i64 %621, %130, !dbg !1927
  br i1 %622, label %623, label %645, !dbg !1929

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !1930
  store i8 0, i8* %624, align 1, !dbg !1931, !tbaa !1495
  br label %645, !dbg !1930

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %630, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.label(metadata !1460), !dbg !1932
  %627 = icmp eq i8 %101, 0, !dbg !1933
  %628 = select i1 %627, i32 2, i32 4, !dbg !1933
  br label %635, !dbg !1933

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1404, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %630, metadata !1406, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.label(metadata !1460), !dbg !1932
  %632 = icmp eq i32 %93, 2, !dbg !1935
  %633 = icmp eq i8 %101, 0, !dbg !1933
  %634 = select i1 %633, i32 2, i32 4, !dbg !1933
  br i1 %632, label %635, label %639, !dbg !1933

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !1933

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1407, metadata !DIExpression()), !dbg !1461
  %643 = and i32 %5, -3, !dbg !1936
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !1937
  br label %645, !dbg !1938

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !1939
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1940 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1944, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %1, metadata !1945, metadata !DIExpression()), !dbg !1948
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !1949
  call void @llvm.dbg.value(metadata i8* %3, metadata !1946, metadata !DIExpression()), !dbg !1948
  %4 = icmp eq i8* %3, %0, !dbg !1950
  br i1 %4, label %5, label %71, !dbg !1952

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !1953
  call void @llvm.dbg.value(metadata i8* %6, metadata !1947, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8* %6, metadata !1954, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* undef, metadata !1960, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 85, metadata !1961, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 84, metadata !1962, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 70, metadata !1963, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 45, metadata !1964, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 56, metadata !1965, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1966, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1969, metadata !DIExpression()), !dbg !1970
  %7 = load i8, i8* %6, align 1, !dbg !1973, !tbaa !1495
  %8 = and i8 %7, -33, !dbg !1973
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1973

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1975, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8* undef, metadata !1980, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 84, metadata !1981, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 70, metadata !1982, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 45, metadata !1983, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 56, metadata !1984, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 0, metadata !1985, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !1989
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1993
  %11 = load i8, i8* %10, align 1, !dbg !1993, !tbaa !1495
  %12 = and i8 %11, -33, !dbg !1993
  %13 = icmp eq i8 %12, 84, !dbg !1993
  br i1 %13, label %14, label %68, !dbg !1993

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1995, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* undef, metadata !2000, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 70, metadata !2001, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 45, metadata !2002, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 56, metadata !2003, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !2007, metadata !DIExpression()), !dbg !2008
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2012
  %16 = load i8, i8* %15, align 1, !dbg !2012, !tbaa !1495
  %17 = and i8 %16, -33, !dbg !2012
  %18 = icmp eq i8 %17, 70, !dbg !2012
  br i1 %18, label %19, label %68, !dbg !2012

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2014, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8* undef, metadata !2019, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 45, metadata !2020, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 56, metadata !2021, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2026
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2030
  %21 = load i8, i8* %20, align 1, !dbg !2030, !tbaa !1495
  %22 = icmp eq i8 %21, 45, !dbg !2030
  br i1 %22, label %23, label %68, !dbg !2032

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2033, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8* undef, metadata !2038, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 56, metadata !2039, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2044
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2048
  %25 = load i8, i8* %24, align 1, !dbg !2048, !tbaa !1495
  %26 = icmp eq i8 %25, 56, !dbg !2048
  br i1 %26, label %27, label %68, !dbg !2050

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2051, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8* undef, metadata !2056, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 0, metadata !2057, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2061
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2065
  %29 = load i8, i8* %28, align 1, !dbg !2065, !tbaa !1495
  %30 = icmp eq i8 %29, 0, !dbg !2065
  br i1 %30, label %31, label %68, !dbg !2067

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2068, !tbaa !1495
  %33 = icmp eq i8 %32, 96, !dbg !2069
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !2068
  br label %71, !dbg !2070

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1975, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* undef, metadata !1980, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 66, metadata !1981, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 49, metadata !1982, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 56, metadata !1983, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 48, metadata !1984, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 51, metadata !1985, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 48, metadata !1986, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !2071
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2075
  %37 = load i8, i8* %36, align 1, !dbg !2075, !tbaa !1495
  %38 = and i8 %37, -33, !dbg !2075
  %39 = icmp eq i8 %38, 66, !dbg !2075
  br i1 %39, label %40, label %68, !dbg !2075

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1995, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* undef, metadata !2000, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 49, metadata !2001, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 56, metadata !2002, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 48, metadata !2003, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 51, metadata !2004, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 48, metadata !2005, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8 0, metadata !2007, metadata !DIExpression()), !dbg !2076
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2078
  %42 = load i8, i8* %41, align 1, !dbg !2078, !tbaa !1495
  %43 = icmp eq i8 %42, 49, !dbg !2078
  br i1 %43, label %44, label %68, !dbg !2079

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2014, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8* undef, metadata !2019, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 56, metadata !2020, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 48, metadata !2021, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 51, metadata !2022, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 48, metadata !2023, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2080
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2082
  %46 = load i8, i8* %45, align 1, !dbg !2082, !tbaa !1495
  %47 = icmp eq i8 %46, 56, !dbg !2082
  br i1 %47, label %48, label %68, !dbg !2083

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2033, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* undef, metadata !2038, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 48, metadata !2039, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 51, metadata !2040, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 48, metadata !2041, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !2043, metadata !DIExpression()), !dbg !2084
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2086
  %50 = load i8, i8* %49, align 1, !dbg !2086, !tbaa !1495
  %51 = icmp eq i8 %50, 48, !dbg !2086
  br i1 %51, label %52, label %68, !dbg !2087

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2051, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* undef, metadata !2056, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 51, metadata !2057, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 48, metadata !2058, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2088
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2090
  %54 = load i8, i8* %53, align 1, !dbg !2090, !tbaa !1495
  %55 = icmp eq i8 %54, 51, !dbg !2090
  br i1 %55, label %56, label %68, !dbg !2091

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2092, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* undef, metadata !2097, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 48, metadata !2098, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2099, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8 0, metadata !2100, metadata !DIExpression()), !dbg !2101
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2105
  %58 = load i8, i8* %57, align 1, !dbg !2105, !tbaa !1495
  %59 = icmp eq i8 %58, 48, !dbg !2105
  br i1 %59, label %60, label %68, !dbg !2107

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2108, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8* undef, metadata !2113, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2116
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2120
  %62 = load i8, i8* %61, align 1, !dbg !2120, !tbaa !1495
  %63 = icmp eq i8 %62, 0, !dbg !2120
  br i1 %63, label %64, label %68, !dbg !2122

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2123, !tbaa !1495
  %66 = icmp eq i8 %65, 96, !dbg !2124
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !2123
  br label %71, !dbg !2125

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2126
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !2127
  br label %71, !dbg !2128

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1948
  ret i8* %72, !dbg !2129
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !331 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !335 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %1, metadata !2135, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2136, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8* %0, metadata !2138, metadata !DIExpression()) #18, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %1, metadata !2143, metadata !DIExpression()) #18, !dbg !2151
  call void @llvm.dbg.value(metadata i64* null, metadata !2144, metadata !DIExpression()) #18, !dbg !2151
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2145, metadata !DIExpression()) #18, !dbg !2151
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2153
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2153
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2146, metadata !DIExpression()) #18, !dbg !2151
  %6 = tail call i32* @__errno_location() #24, !dbg !2154
  %7 = load i32, i32* %6, align 4, !dbg !2154, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %7, metadata !2147, metadata !DIExpression()) #18, !dbg !2151
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2155
  %9 = load i32, i32* %8, align 4, !dbg !2155, !tbaa !1346
  %10 = or i32 %9, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i32 %10, metadata !2148, metadata !DIExpression()) #18, !dbg !2151
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2157
  %12 = load i32, i32* %11, align 8, !dbg !2157, !tbaa !1294
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2158
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2159
  %15 = load i8*, i8** %14, align 8, !dbg !2159, !tbaa !1369
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2160
  %17 = load i8*, i8** %16, align 8, !dbg !2160, !tbaa !1372
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2161
  %19 = add i64 %18, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %19, metadata !2149, metadata !DIExpression()) #18, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %19, metadata !2163, metadata !DIExpression()) #18, !dbg !2168
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2170
  call void @llvm.dbg.value(metadata i8* %20, metadata !2150, metadata !DIExpression()) #18, !dbg !2151
  %21 = load i32, i32* %11, align 8, !dbg !2171, !tbaa !1294
  %22 = load i8*, i8** %14, align 8, !dbg !2172, !tbaa !1369
  %23 = load i8*, i8** %16, align 8, !dbg !2173, !tbaa !1372
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2174
  store i32 %7, i32* %6, align 4, !dbg !2175, !tbaa !1147
  ret i8* %20, !dbg !2176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2139 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2138, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %1, metadata !2143, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i64* %2, metadata !2144, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2145, metadata !DIExpression()), !dbg !2177
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2178
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2178
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2146, metadata !DIExpression()), !dbg !2177
  %7 = tail call i32* @__errno_location() #24, !dbg !2179
  %8 = load i32, i32* %7, align 4, !dbg !2179, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %8, metadata !2147, metadata !DIExpression()), !dbg !2177
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2180
  %10 = load i32, i32* %9, align 4, !dbg !2180, !tbaa !1346
  %11 = icmp ne i64* %2, null, !dbg !2181
  %12 = xor i1 %11, true, !dbg !2181
  %13 = zext i1 %12 to i32, !dbg !2181
  %14 = or i32 %10, %13, !dbg !2182
  call void @llvm.dbg.value(metadata i32 %14, metadata !2148, metadata !DIExpression()), !dbg !2177
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2183
  %16 = load i32, i32* %15, align 8, !dbg !2183, !tbaa !1294
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2184
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2185
  %19 = load i8*, i8** %18, align 8, !dbg !2185, !tbaa !1369
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2186
  %21 = load i8*, i8** %20, align 8, !dbg !2186, !tbaa !1372
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2187
  %23 = add i64 %22, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %23, metadata !2149, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %23, metadata !2163, metadata !DIExpression()) #18, !dbg !2189
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2191
  call void @llvm.dbg.value(metadata i8* %24, metadata !2150, metadata !DIExpression()), !dbg !2177
  %25 = load i32, i32* %15, align 8, !dbg !2192, !tbaa !1294
  %26 = load i8*, i8** %18, align 8, !dbg !2193, !tbaa !1369
  %27 = load i8*, i8** %20, align 8, !dbg !2194, !tbaa !1372
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2195
  store i32 %8, i32* %7, align 4, !dbg !2196, !tbaa !1147
  br i1 %11, label %29, label %30, !dbg !2197

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2198, !tbaa !2200
  br label %30, !dbg !2202

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2204 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2208, !tbaa !1085
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 1, metadata !2207, metadata !DIExpression()), !dbg !2209
  %2 = load i32, i32* @nslots, align 4, !dbg !2210, !tbaa !1147
  %3 = icmp sgt i32 %2, 1, !dbg !2213
  br i1 %3, label %4, label %12, !dbg !2214

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2207, metadata !DIExpression()), !dbg !2209
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2215
  %7 = load i8*, i8** %6, align 8, !dbg !2215, !tbaa !2216
  tail call void @free(i8* %7) #18, !dbg !2218
  %8 = add nuw nsw i64 %5, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %8, metadata !2207, metadata !DIExpression()), !dbg !2209
  %9 = load i32, i32* @nslots, align 4, !dbg !2210, !tbaa !1147
  %10 = sext i32 %9 to i64, !dbg !2213
  %11 = icmp slt i64 %8, %10, !dbg !2213
  br i1 %11, label %4, label %12, !dbg !2214, !llvm.loop !2220

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2222
  %14 = load i8*, i8** %13, align 8, !dbg !2222, !tbaa !2216
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2224
  br i1 %15, label %17, label %16, !dbg !2225

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2226
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2228, !tbaa !2229
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2230, !tbaa !2216
  br label %17, !dbg !2231

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2232
  br i1 %18, label %21, label %19, !dbg !2234

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2235
  tail call void @free(i8* %20) #18, !dbg !2237
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2238, !tbaa !1085
  br label %21, !dbg !2239

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2240, !tbaa !1147
  ret void, !dbg !2241
}

; Function Attrs: nounwind
declare !dbg !308 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %1, metadata !2245, metadata !DIExpression()), !dbg !2246
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2247
  ret i8* %3, !dbg !2248
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2253, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8* %1, metadata !2254, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %2, metadata !2255, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2256, metadata !DIExpression()), !dbg !2268
  %5 = tail call i32* @__errno_location() #24, !dbg !2269
  %6 = load i32, i32* %5, align 4, !dbg !2269, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %6, metadata !2257, metadata !DIExpression()), !dbg !2268
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2270, !tbaa !1085
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2258, metadata !DIExpression()), !dbg !2268
  %8 = icmp slt i32 %0, 0, !dbg !2271
  br i1 %8, label %9, label %10, !dbg !2273

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2274
  unreachable, !dbg !2274

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2275, !tbaa !1147
  %12 = icmp sgt i32 %11, %0, !dbg !2276
  br i1 %12, label %34, label %13, !dbg !2277

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2278
  call void @llvm.dbg.value(metadata i1 %14, metadata !2259, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2262, metadata !DIExpression()), !dbg !2279
  %15 = icmp eq i32 %0, 2147483647, !dbg !2280
  br i1 %15, label %16, label %17, !dbg !2282

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2283
  unreachable, !dbg !2283

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2284
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2284
  %20 = add nuw nsw i32 %0, 1, !dbg !2285
  %21 = sext i32 %20 to i64, !dbg !2286
  %22 = shl nuw nsw i64 %21, 4, !dbg !2287
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2288
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2288
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2258, metadata !DIExpression()), !dbg !2268
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2289, !tbaa !1085
  br i1 %14, label %25, label %26, !dbg !2290

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2291, !tbaa.struct !2293
  br label %26, !dbg !2294

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2295, !tbaa !1147
  %28 = sext i32 %27 to i64, !dbg !2296
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2296
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2297
  %31 = sub nsw i32 %20, %27, !dbg !2298
  %32 = sext i32 %31 to i64, !dbg !2299
  %33 = shl nsw i64 %32, 4, !dbg !2300
  call void @llvm.dbg.value(metadata i8* %30, metadata !1696, metadata !DIExpression()) #18, !dbg !2301
  call void @llvm.dbg.value(metadata i32 0, metadata !1702, metadata !DIExpression()) #18, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %33, metadata !1703, metadata !DIExpression()) #18, !dbg !2301
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2303
  store i32 %20, i32* @nslots, align 4, !dbg !2304, !tbaa !1147
  br label %34, !dbg !2305

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2268
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2258, metadata !DIExpression()), !dbg !2268
  %36 = zext i32 %0 to i64, !dbg !2306
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2307
  %38 = load i64, i64* %37, align 8, !dbg !2307, !tbaa !2229
  call void @llvm.dbg.value(metadata i64 %38, metadata !2263, metadata !DIExpression()), !dbg !2308
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2309
  %40 = load i8*, i8** %39, align 8, !dbg !2309, !tbaa !2216
  call void @llvm.dbg.value(metadata i8* %40, metadata !2265, metadata !DIExpression()), !dbg !2308
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2310
  %42 = load i32, i32* %41, align 4, !dbg !2310, !tbaa !1346
  %43 = or i32 %42, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %43, metadata !2266, metadata !DIExpression()), !dbg !2308
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2312
  %45 = load i32, i32* %44, align 8, !dbg !2312, !tbaa !1294
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2313
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2314
  %48 = load i8*, i8** %47, align 8, !dbg !2314, !tbaa !1369
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2315
  %50 = load i8*, i8** %49, align 8, !dbg !2315, !tbaa !1372
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %51, metadata !2267, metadata !DIExpression()), !dbg !2308
  %52 = icmp ugt i64 %38, %51, !dbg !2317
  br i1 %52, label %63, label %53, !dbg !2319

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %54, metadata !2263, metadata !DIExpression()), !dbg !2308
  store i64 %54, i64* %37, align 8, !dbg !2322, !tbaa !2229
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2323
  br i1 %55, label %57, label %56, !dbg !2325

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2326
  br label %57, !dbg !2326

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2163, metadata !DIExpression()) #18, !dbg !2327
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %58, metadata !2265, metadata !DIExpression()), !dbg !2308
  store i8* %58, i8** %39, align 8, !dbg !2330, !tbaa !2216
  %59 = load i32, i32* %44, align 8, !dbg !2331, !tbaa !1294
  %60 = load i8*, i8** %47, align 8, !dbg !2332, !tbaa !1369
  %61 = load i8*, i8** %49, align 8, !dbg !2333, !tbaa !1372
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2334
  br label %63, !dbg !2335

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2308
  call void @llvm.dbg.value(metadata i8* %64, metadata !2265, metadata !DIExpression()), !dbg !2308
  store i32 %6, i32* %5, align 4, !dbg !2336, !tbaa !1147
  ret i8* %64, !dbg !2337
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %1, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %2, metadata !2344, metadata !DIExpression()), !dbg !2345
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2346
  ret i8* %4, !dbg !2347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 0, metadata !2244, metadata !DIExpression()) #18, !dbg !2352
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()) #18, !dbg !2352
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2354
  ret i8* %2, !dbg !2355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2356 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %1, metadata !2361, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 0, metadata !2342, metadata !DIExpression()) #18, !dbg !2363
  call void @llvm.dbg.value(metadata i8* %0, metadata !2343, metadata !DIExpression()) #18, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %1, metadata !2344, metadata !DIExpression()) #18, !dbg !2363
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2365
  ret i8* %3, !dbg !2366
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2367 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2371, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %1, metadata !2372, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8* %2, metadata !2373, metadata !DIExpression()), !dbg !2375
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2376
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2376
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2374, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 %1, metadata !2378, metadata !DIExpression()) #18, !dbg !2384
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2383, metadata !DIExpression()) #18, !dbg !2386
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2386, !alias.scope !2387
  %6 = icmp eq i32 %1, 10, !dbg !2390
  br i1 %6, label %7, label %8, !dbg !2392

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2393, !noalias !2387
  unreachable, !dbg !2393

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2394
  store i32 %1, i32* %9, align 8, !dbg !2395, !tbaa !1294, !alias.scope !2387
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2397
  ret i8* %10, !dbg !2398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2399 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2403, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8* %2, metadata !2405, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %3, metadata !2406, metadata !DIExpression()), !dbg !2408
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2409
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2407, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %1, metadata !2378, metadata !DIExpression()) #18, !dbg !2411
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2383, metadata !DIExpression()) #18, !dbg !2413
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2413, !alias.scope !2414
  %7 = icmp eq i32 %1, 10, !dbg !2417
  br i1 %7, label %8, label %9, !dbg !2418

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2419, !noalias !2414
  unreachable, !dbg !2419

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2420
  store i32 %1, i32* %10, align 8, !dbg !2421, !tbaa !1294, !alias.scope !2414
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2423
  ret i8* %11, !dbg !2424
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2425 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2383, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2374, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8* %1, metadata !2430, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()) #18, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()) #18, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %1, metadata !2373, metadata !DIExpression()) #18, !dbg !2436
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2437
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %0, metadata !2378, metadata !DIExpression()) #18, !dbg !2438
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2431, !alias.scope !2439
  %5 = icmp eq i32 %0, 10, !dbg !2442
  br i1 %5, label %6, label %7, !dbg !2443

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2444, !noalias !2439
  unreachable, !dbg !2444

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2445
  store i32 %0, i32* %8, align 8, !dbg !2446, !tbaa !1294, !alias.scope !2439
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2447
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2448
  ret i8* %9, !dbg !2449
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2450 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2383, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2407, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %1, metadata !2455, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %2, metadata !2456, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression()) #18, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()) #18, !dbg !2462
  call void @llvm.dbg.value(metadata i8* %1, metadata !2405, metadata !DIExpression()) #18, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %2, metadata !2406, metadata !DIExpression()) #18, !dbg !2462
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2463
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %0, metadata !2378, metadata !DIExpression()) #18, !dbg !2464
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2457, !alias.scope !2465
  %6 = icmp eq i32 %0, 10, !dbg !2468
  br i1 %6, label %7, label %8, !dbg !2469

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2470, !noalias !2465
  unreachable, !dbg !2470

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2471
  store i32 %0, i32* %9, align 8, !dbg !2472, !tbaa !1294, !alias.scope !2465
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2473
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2474
  ret i8* %10, !dbg !2475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2476 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2480, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 %2, metadata !2482, metadata !DIExpression()), !dbg !2484
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2485
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2485
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2483, metadata !DIExpression()), !dbg !2486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2487, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1312, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 %2, metadata !1313, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 1, metadata !1314, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 %2, metadata !1315, metadata !DIExpression()), !dbg !2489
  %6 = lshr i8 %2, 5, !dbg !2491
  %7 = zext i8 %6 to i64, !dbg !2491
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2492
  call void @llvm.dbg.value(metadata i32* %8, metadata !1317, metadata !DIExpression()), !dbg !2489
  %9 = and i8 %2, 31, !dbg !2493
  %10 = zext i8 %9 to i32, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %10, metadata !1319, metadata !DIExpression()), !dbg !2489
  %11 = load i32, i32* %8, align 4, !dbg !2494, !tbaa !1147
  %12 = lshr i32 %11, %10, !dbg !2495
  %13 = and i32 %12, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %13, metadata !1320, metadata !DIExpression()), !dbg !2489
  %14 = xor i32 %13, 1, !dbg !2497
  %15 = shl i32 %14, %10, !dbg !2498
  %16 = xor i32 %15, %11, !dbg !2499
  store i32 %16, i32* %8, align 4, !dbg !2499, !tbaa !1147
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2501
  ret i8* %17, !dbg !2502
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2503 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2483, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %0, metadata !2507, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 %1, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %0, metadata !2480, metadata !DIExpression()) #18, !dbg !2512
  call void @llvm.dbg.value(metadata i64 -1, metadata !2481, metadata !DIExpression()) #18, !dbg !2512
  call void @llvm.dbg.value(metadata i8 %1, metadata !2482, metadata !DIExpression()) #18, !dbg !2512
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2514, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1312, metadata !DIExpression()) #18, !dbg !2515
  call void @llvm.dbg.value(metadata i8 %1, metadata !1313, metadata !DIExpression()) #18, !dbg !2515
  call void @llvm.dbg.value(metadata i32 1, metadata !1314, metadata !DIExpression()) #18, !dbg !2515
  call void @llvm.dbg.value(metadata i8 %1, metadata !1315, metadata !DIExpression()) #18, !dbg !2515
  %5 = lshr i8 %1, 5, !dbg !2517
  %6 = zext i8 %5 to i64, !dbg !2517
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2518
  call void @llvm.dbg.value(metadata i32* %7, metadata !1317, metadata !DIExpression()) #18, !dbg !2515
  %8 = and i8 %1, 31, !dbg !2519
  %9 = zext i8 %8 to i32, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %9, metadata !1319, metadata !DIExpression()) #18, !dbg !2515
  %10 = load i32, i32* %7, align 4, !dbg !2520, !tbaa !1147
  %11 = lshr i32 %10, %9, !dbg !2521
  %12 = and i32 %11, 1, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %12, metadata !1320, metadata !DIExpression()) #18, !dbg !2515
  %13 = xor i32 %12, 1, !dbg !2523
  %14 = shl i32 %13, %9, !dbg !2524
  %15 = xor i32 %14, %10, !dbg !2525
  store i32 %15, i32* %7, align 4, !dbg !2525, !tbaa !1147
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2526
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2527
  ret i8* %16, !dbg !2528
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2529 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2483, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %0, metadata !2531, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %0, metadata !2507, metadata !DIExpression()) #18, !dbg !2536
  call void @llvm.dbg.value(metadata i8 58, metadata !2508, metadata !DIExpression()) #18, !dbg !2536
  call void @llvm.dbg.value(metadata i8* %0, metadata !2480, metadata !DIExpression()) #18, !dbg !2537
  call void @llvm.dbg.value(metadata i64 -1, metadata !2481, metadata !DIExpression()) #18, !dbg !2537
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()) #18, !dbg !2537
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2539, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1312, metadata !DIExpression()) #18, !dbg !2540
  call void @llvm.dbg.value(metadata i8 58, metadata !1313, metadata !DIExpression()) #18, !dbg !2540
  call void @llvm.dbg.value(metadata i32 1, metadata !1314, metadata !DIExpression()) #18, !dbg !2540
  call void @llvm.dbg.value(metadata i8 58, metadata !1315, metadata !DIExpression()) #18, !dbg !2540
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2542
  call void @llvm.dbg.value(metadata i32* %4, metadata !1317, metadata !DIExpression()) #18, !dbg !2540
  call void @llvm.dbg.value(metadata i32 26, metadata !1319, metadata !DIExpression()) #18, !dbg !2540
  %5 = load i32, i32* %4, align 4, !dbg !2543, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %5, metadata !1320, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2540
  %6 = or i32 %5, 67108864, !dbg !2544
  store i32 %6, i32* %4, align 4, !dbg !2544, !tbaa !1147
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2545
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2546
  ret i8* %7, !dbg !2547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2548 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2483, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %0, metadata !2550, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %1, metadata !2551, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %0, metadata !2480, metadata !DIExpression()) #18, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()) #18, !dbg !2555
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()) #18, !dbg !2555
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2556
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2557, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1312, metadata !DIExpression()) #18, !dbg !2558
  call void @llvm.dbg.value(metadata i8 58, metadata !1313, metadata !DIExpression()) #18, !dbg !2558
  call void @llvm.dbg.value(metadata i32 1, metadata !1314, metadata !DIExpression()) #18, !dbg !2558
  call void @llvm.dbg.value(metadata i8 58, metadata !1315, metadata !DIExpression()) #18, !dbg !2558
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2560
  call void @llvm.dbg.value(metadata i32* %5, metadata !1317, metadata !DIExpression()) #18, !dbg !2558
  call void @llvm.dbg.value(metadata i32 26, metadata !1319, metadata !DIExpression()) #18, !dbg !2558
  %6 = load i32, i32* %5, align 4, !dbg !2561, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %6, metadata !1320, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2558
  %7 = or i32 %6, 67108864, !dbg !2562
  store i32 %7, i32* %5, align 4, !dbg !2562, !tbaa !1147
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2563
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2564
  ret i8* %8, !dbg !2565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2566 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2383, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %0, metadata !2568, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %1, metadata !2569, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* %2, metadata !2570, metadata !DIExpression()), !dbg !2574
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2575
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2571, metadata !DIExpression()), !dbg !2576
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2577
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %1, metadata !2378, metadata !DIExpression()) #18, !dbg !2578
  call void @llvm.dbg.value(metadata i32 0, metadata !2383, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2578
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2572, !alias.scope !2579
  %8 = icmp eq i32 %1, 10, !dbg !2582
  br i1 %8, label %9, label %10, !dbg !2583

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2584, !noalias !2579
  unreachable, !dbg !2584

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2383, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2578
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2577
  store i32 %1, i32* %11, align 8, !dbg !2577, !tbaa.struct !2488
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2577
  %13 = bitcast i32* %12 to i8*, !dbg !2577
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2577, !tbaa.struct !2488
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1312, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 58, metadata !1313, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 1, metadata !1314, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 58, metadata !1315, metadata !DIExpression()), !dbg !2585
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2587
  call void @llvm.dbg.value(metadata i32* %14, metadata !1317, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 26, metadata !1319, metadata !DIExpression()), !dbg !2585
  %15 = load i32, i32* %14, align 4, !dbg !2588, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %15, metadata !1320, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2585
  %16 = or i32 %15, 67108864, !dbg !2589
  store i32 %16, i32* %14, align 4, !dbg !2589, !tbaa !1147
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2590
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2591
  ret i8* %17, !dbg !2592
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2593 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2601, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %1, metadata !2598, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %2, metadata !2599, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %3, metadata !2600, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()) #18, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %1, metadata !2607, metadata !DIExpression()) #18, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %2, metadata !2608, metadata !DIExpression()) #18, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %3, metadata !2609, metadata !DIExpression()) #18, !dbg !2614
  call void @llvm.dbg.value(metadata i64 -1, metadata !2610, metadata !DIExpression()) #18, !dbg !2614
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2615
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2616, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1353, metadata !DIExpression()) #18, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %1, metadata !1354, metadata !DIExpression()) #18, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %2, metadata !1355, metadata !DIExpression()) #18, !dbg !2617
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1353, metadata !DIExpression()) #18, !dbg !2617
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2619
  store i32 10, i32* %7, align 8, !dbg !2620, !tbaa !1294
  %8 = icmp ne i8* %1, null, !dbg !2621
  %9 = icmp ne i8* %2, null, !dbg !2622
  %10 = and i1 %8, %9, !dbg !2623
  br i1 %10, label %12, label %11, !dbg !2623

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2624
  unreachable, !dbg !2624

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2625
  store i8* %1, i8** %13, align 8, !dbg !2626, !tbaa !1369
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2627
  store i8* %2, i8** %14, align 8, !dbg !2628, !tbaa !1372
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2630
  ret i8* %15, !dbg !2631
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2602 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %1, metadata !2607, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %2, metadata !2608, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %3, metadata !2609, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %4, metadata !2610, metadata !DIExpression()), !dbg !2632
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2633
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2633
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2601, metadata !DIExpression()), !dbg !2634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2635, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1353, metadata !DIExpression()) #18, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %1, metadata !1354, metadata !DIExpression()) #18, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %2, metadata !1355, metadata !DIExpression()) #18, !dbg !2636
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1353, metadata !DIExpression()) #18, !dbg !2636
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2638
  store i32 10, i32* %8, align 8, !dbg !2639, !tbaa !1294
  %9 = icmp ne i8* %1, null, !dbg !2640
  %10 = icmp ne i8* %2, null, !dbg !2641
  %11 = and i1 %9, %10, !dbg !2642
  br i1 %11, label %13, label %12, !dbg !2642

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2643
  unreachable, !dbg !2643

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2644
  store i8* %1, i8** %14, align 8, !dbg !2645, !tbaa !1369
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2646
  store i8* %2, i8** %15, align 8, !dbg !2647, !tbaa !1372
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2648
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2649
  ret i8* %16, !dbg !2650
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2651 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2601, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %1, metadata !2656, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %2, metadata !2657, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()) #18, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %0, metadata !2598, metadata !DIExpression()) #18, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %1, metadata !2599, metadata !DIExpression()) #18, !dbg !2662
  call void @llvm.dbg.value(metadata i8* %2, metadata !2600, metadata !DIExpression()) #18, !dbg !2662
  call void @llvm.dbg.value(metadata i32 0, metadata !2606, metadata !DIExpression()) #18, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()) #18, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %1, metadata !2608, metadata !DIExpression()) #18, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %2, metadata !2609, metadata !DIExpression()) #18, !dbg !2663
  call void @llvm.dbg.value(metadata i64 -1, metadata !2610, metadata !DIExpression()) #18, !dbg !2663
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2665, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1353, metadata !DIExpression()) #18, !dbg !2666
  call void @llvm.dbg.value(metadata i8* %0, metadata !1354, metadata !DIExpression()) #18, !dbg !2666
  call void @llvm.dbg.value(metadata i8* %1, metadata !1355, metadata !DIExpression()) #18, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1353, metadata !DIExpression()) #18, !dbg !2666
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2668
  store i32 10, i32* %6, align 8, !dbg !2669, !tbaa !1294
  %7 = icmp ne i8* %0, null, !dbg !2670
  %8 = icmp ne i8* %1, null, !dbg !2671
  %9 = and i1 %7, %8, !dbg !2672
  br i1 %9, label %11, label %10, !dbg !2672

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2673
  unreachable, !dbg !2673

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2674
  store i8* %0, i8** %12, align 8, !dbg !2675, !tbaa !1369
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2676
  store i8* %1, i8** %13, align 8, !dbg !2677, !tbaa !1372
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !2678
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2679
  ret i8* %14, !dbg !2680
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2681 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2601, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %0, metadata !2685, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2686, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %2, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %3, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2606, metadata !DIExpression()) #18, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()) #18, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %1, metadata !2608, metadata !DIExpression()) #18, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %2, metadata !2609, metadata !DIExpression()) #18, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %3, metadata !2610, metadata !DIExpression()) #18, !dbg !2692
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2693
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2694, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1353, metadata !DIExpression()) #18, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %0, metadata !1354, metadata !DIExpression()) #18, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %1, metadata !1355, metadata !DIExpression()) #18, !dbg !2695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1353, metadata !DIExpression()) #18, !dbg !2695
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2697
  store i32 10, i32* %7, align 8, !dbg !2698, !tbaa !1294
  %8 = icmp ne i8* %0, null, !dbg !2699
  %9 = icmp ne i8* %1, null, !dbg !2700
  %10 = and i1 %8, %9, !dbg !2701
  br i1 %10, label %12, label %11, !dbg !2701

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2702
  unreachable, !dbg !2702

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2703
  store i8* %0, i8** %13, align 8, !dbg !2704, !tbaa !1369
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2705
  store i8* %1, i8** %14, align 8, !dbg !2706, !tbaa !1372
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !2707
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2708
  ret i8* %15, !dbg !2709
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2710 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2714, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %1, metadata !2715, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %2, metadata !2716, metadata !DIExpression()), !dbg !2717
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2718
  ret i8* %4, !dbg !2719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2724, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 %1, metadata !2725, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()) #18, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %0, metadata !2715, metadata !DIExpression()) #18, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1, metadata !2716, metadata !DIExpression()) #18, !dbg !2727
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2729
  ret i8* %3, !dbg !2730
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %1, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %0, metadata !2714, metadata !DIExpression()) #18, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %1, metadata !2715, metadata !DIExpression()) #18, !dbg !2738
  call void @llvm.dbg.value(metadata i64 -1, metadata !2716, metadata !DIExpression()) #18, !dbg !2738
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2740
  ret i8* %3, !dbg !2741
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2742 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 0, metadata !2735, metadata !DIExpression()) #18, !dbg !2746
  call void @llvm.dbg.value(metadata i8* %0, metadata !2736, metadata !DIExpression()) #18, !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()) #18, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %0, metadata !2715, metadata !DIExpression()) #18, !dbg !2748
  call void @llvm.dbg.value(metadata i64 -1, metadata !2716, metadata !DIExpression()) #18, !dbg !2748
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2750
  ret i8* %2, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2752 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2760, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %1, metadata !2761, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %2, metadata !2762, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %3, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8** %4, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %5, metadata !2765, metadata !DIExpression()), !dbg !2766
  %7 = icmp eq i8* %1, null, !dbg !2767
  br i1 %7, label %10, label %8, !dbg !2769

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !2770
  br label %12, !dbg !2770

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !2771
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #18, !dbg !2772
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !2772
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2773
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #18, !dbg !2774
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.74, i64 0, i64 0)) #18, !dbg !2774
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2775
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
  ], !dbg !2776

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #18, !dbg !2777
  %21 = load i8*, i8** %4, align 8, !dbg !2777, !tbaa !1085
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !2777
  br label %147, !dbg !2779

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #18, !dbg !2780
  %25 = load i8*, i8** %4, align 8, !dbg !2780, !tbaa !1085
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2780
  %27 = load i8*, i8** %26, align 8, !dbg !2780, !tbaa !1085
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !2780
  br label %147, !dbg !2781

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #18, !dbg !2782
  %31 = load i8*, i8** %4, align 8, !dbg !2782, !tbaa !1085
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2782
  %33 = load i8*, i8** %32, align 8, !dbg !2782, !tbaa !1085
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2782
  %35 = load i8*, i8** %34, align 8, !dbg !2782, !tbaa !1085
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !2782
  br label %147, !dbg !2783

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #18, !dbg !2784
  %39 = load i8*, i8** %4, align 8, !dbg !2784, !tbaa !1085
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2784
  %41 = load i8*, i8** %40, align 8, !dbg !2784, !tbaa !1085
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2784
  %43 = load i8*, i8** %42, align 8, !dbg !2784, !tbaa !1085
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2784
  %45 = load i8*, i8** %44, align 8, !dbg !2784, !tbaa !1085
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !2784
  br label %147, !dbg !2785

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #18, !dbg !2786
  %49 = load i8*, i8** %4, align 8, !dbg !2786, !tbaa !1085
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2786
  %51 = load i8*, i8** %50, align 8, !dbg !2786, !tbaa !1085
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2786
  %53 = load i8*, i8** %52, align 8, !dbg !2786, !tbaa !1085
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2786
  %55 = load i8*, i8** %54, align 8, !dbg !2786, !tbaa !1085
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2786
  %57 = load i8*, i8** %56, align 8, !dbg !2786, !tbaa !1085
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !2786
  br label %147, !dbg !2787

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #18, !dbg !2788
  %61 = load i8*, i8** %4, align 8, !dbg !2788, !tbaa !1085
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2788
  %63 = load i8*, i8** %62, align 8, !dbg !2788, !tbaa !1085
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2788
  %65 = load i8*, i8** %64, align 8, !dbg !2788, !tbaa !1085
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2788
  %67 = load i8*, i8** %66, align 8, !dbg !2788, !tbaa !1085
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2788
  %69 = load i8*, i8** %68, align 8, !dbg !2788, !tbaa !1085
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2788
  %71 = load i8*, i8** %70, align 8, !dbg !2788, !tbaa !1085
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !2788
  br label %147, !dbg !2789

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #18, !dbg !2790
  %75 = load i8*, i8** %4, align 8, !dbg !2790, !tbaa !1085
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2790
  %77 = load i8*, i8** %76, align 8, !dbg !2790, !tbaa !1085
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2790
  %79 = load i8*, i8** %78, align 8, !dbg !2790, !tbaa !1085
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2790
  %81 = load i8*, i8** %80, align 8, !dbg !2790, !tbaa !1085
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2790
  %83 = load i8*, i8** %82, align 8, !dbg !2790, !tbaa !1085
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2790
  %85 = load i8*, i8** %84, align 8, !dbg !2790, !tbaa !1085
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2790
  %87 = load i8*, i8** %86, align 8, !dbg !2790, !tbaa !1085
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !2790
  br label %147, !dbg !2791

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #18, !dbg !2792
  %91 = load i8*, i8** %4, align 8, !dbg !2792, !tbaa !1085
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2792
  %93 = load i8*, i8** %92, align 8, !dbg !2792, !tbaa !1085
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2792
  %95 = load i8*, i8** %94, align 8, !dbg !2792, !tbaa !1085
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2792
  %97 = load i8*, i8** %96, align 8, !dbg !2792, !tbaa !1085
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2792
  %99 = load i8*, i8** %98, align 8, !dbg !2792, !tbaa !1085
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2792
  %101 = load i8*, i8** %100, align 8, !dbg !2792, !tbaa !1085
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2792
  %103 = load i8*, i8** %102, align 8, !dbg !2792, !tbaa !1085
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2792
  %105 = load i8*, i8** %104, align 8, !dbg !2792, !tbaa !1085
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !2792
  br label %147, !dbg !2793

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.83, i64 0, i64 0), i32 5) #18, !dbg !2794
  %109 = load i8*, i8** %4, align 8, !dbg !2794, !tbaa !1085
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2794
  %111 = load i8*, i8** %110, align 8, !dbg !2794, !tbaa !1085
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2794
  %113 = load i8*, i8** %112, align 8, !dbg !2794, !tbaa !1085
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2794
  %115 = load i8*, i8** %114, align 8, !dbg !2794, !tbaa !1085
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2794
  %117 = load i8*, i8** %116, align 8, !dbg !2794, !tbaa !1085
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2794
  %119 = load i8*, i8** %118, align 8, !dbg !2794, !tbaa !1085
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2794
  %121 = load i8*, i8** %120, align 8, !dbg !2794, !tbaa !1085
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2794
  %123 = load i8*, i8** %122, align 8, !dbg !2794, !tbaa !1085
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2794
  %125 = load i8*, i8** %124, align 8, !dbg !2794, !tbaa !1085
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !2794
  br label %147, !dbg !2795

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.84, i64 0, i64 0), i32 5) #18, !dbg !2796
  %129 = load i8*, i8** %4, align 8, !dbg !2796, !tbaa !1085
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2796
  %131 = load i8*, i8** %130, align 8, !dbg !2796, !tbaa !1085
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2796
  %133 = load i8*, i8** %132, align 8, !dbg !2796, !tbaa !1085
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2796
  %135 = load i8*, i8** %134, align 8, !dbg !2796, !tbaa !1085
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2796
  %137 = load i8*, i8** %136, align 8, !dbg !2796, !tbaa !1085
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2796
  %139 = load i8*, i8** %138, align 8, !dbg !2796, !tbaa !1085
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2796
  %141 = load i8*, i8** %140, align 8, !dbg !2796, !tbaa !1085
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2796
  %143 = load i8*, i8** %142, align 8, !dbg !2796, !tbaa !1085
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2796
  %145 = load i8*, i8** %144, align 8, !dbg !2796, !tbaa !1085
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !2796
  br label %147, !dbg !2797

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2798
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2799 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2803, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %1, metadata !2804, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %2, metadata !2805, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %3, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8** %4, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 0, metadata !2808, metadata !DIExpression()), !dbg !2809
  br label %6, !dbg !2810

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2812
  call void @llvm.dbg.value(metadata i64 %7, metadata !2808, metadata !DIExpression()), !dbg !2809
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2813
  %9 = load i8*, i8** %8, align 8, !dbg !2813, !tbaa !1085
  %10 = icmp eq i8* %9, null, !dbg !2815
  %11 = add i64 %7, 1, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %11, metadata !2808, metadata !DIExpression()), !dbg !2809
  br i1 %10, label %12, label %6, !dbg !2815, !llvm.loop !2817

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %7, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %7, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %7, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %7, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %7, metadata !2808, metadata !DIExpression()), !dbg !2809
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2819
  ret void, !dbg !2820
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2821 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2832, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* %1, metadata !2833, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* %2, metadata !2834, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* %3, metadata !2835, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2836, metadata !DIExpression()), !dbg !2840
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !2841
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2838, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 0, metadata !2837, metadata !DIExpression()), !dbg !2840
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2843
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2843
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2843
  %11 = load i32, i32* %8, align 8, !dbg !2846
  %12 = icmp ult i32 %11, 41, !dbg !2846
  br i1 %12, label %13, label %18, !dbg !2846

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2846
  %15 = zext i32 %11 to i64, !dbg !2846
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2846
  %17 = add nuw nsw i32 %11, 8, !dbg !2846
  store i32 %17, i32* %8, align 8, !dbg !2846
  br label %21, !dbg !2846

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2846
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2846
  store i8* %20, i8** %9, align 8, !dbg !2846
  br label %21, !dbg !2846

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2846
  %25 = load i8*, i8** %24, align 8, !dbg !2846
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2847
  store i8* %25, i8** %26, align 16, !dbg !2848, !tbaa !1085
  %27 = icmp eq i8* %25, null, !dbg !2849
  br i1 %27, label %30, label %28, !dbg !2850

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2837, metadata !DIExpression()), !dbg !2840
  %29 = icmp ult i32 %22, 41, !dbg !2846
  br i1 %29, label %35, label %32, !dbg !2846

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2851
  call void @llvm.dbg.value(metadata i64 %31, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %31, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2852
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !2853
  ret void, !dbg !2853

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2846
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2846
  store i8* %34, i8** %9, align 8, !dbg !2846
  br label %40, !dbg !2846

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2846
  %37 = zext i32 %22 to i64, !dbg !2846
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2846
  %39 = add nuw nsw i32 %22, 8, !dbg !2846
  store i32 %39, i32* %8, align 8, !dbg !2846
  br label %40, !dbg !2846

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2846
  %44 = load i8*, i8** %43, align 8, !dbg !2846
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2847
  store i8* %44, i8** %45, align 8, !dbg !2848, !tbaa !1085
  %46 = icmp eq i8* %44, null, !dbg !2849
  br i1 %46, label %30, label %47, !dbg !2850

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2837, metadata !DIExpression()), !dbg !2840
  %48 = icmp ult i32 %41, 41, !dbg !2846
  br i1 %48, label %52, label %49, !dbg !2846

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2846
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2846
  store i8* %51, i8** %9, align 8, !dbg !2846
  br label %57, !dbg !2846

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2846
  %54 = zext i32 %41 to i64, !dbg !2846
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2846
  %56 = add nuw nsw i32 %41, 8, !dbg !2846
  store i32 %56, i32* %8, align 8, !dbg !2846
  br label %57, !dbg !2846

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2846
  %61 = load i8*, i8** %60, align 8, !dbg !2846
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2847
  store i8* %61, i8** %62, align 16, !dbg !2848, !tbaa !1085
  %63 = icmp eq i8* %61, null, !dbg !2849
  br i1 %63, label %30, label %64, !dbg !2850

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2837, metadata !DIExpression()), !dbg !2840
  %65 = icmp ult i32 %58, 41, !dbg !2846
  br i1 %65, label %69, label %66, !dbg !2846

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2846
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2846
  store i8* %68, i8** %9, align 8, !dbg !2846
  br label %74, !dbg !2846

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2846
  %71 = zext i32 %58 to i64, !dbg !2846
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2846
  %73 = add nuw nsw i32 %58, 8, !dbg !2846
  store i32 %73, i32* %8, align 8, !dbg !2846
  br label %74, !dbg !2846

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2846
  %78 = load i8*, i8** %77, align 8, !dbg !2846
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2847
  store i8* %78, i8** %79, align 8, !dbg !2848, !tbaa !1085
  %80 = icmp eq i8* %78, null, !dbg !2849
  br i1 %80, label %30, label %81, !dbg !2850

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2837, metadata !DIExpression()), !dbg !2840
  %82 = icmp ult i32 %75, 41, !dbg !2846
  br i1 %82, label %86, label %83, !dbg !2846

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2846
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2846
  store i8* %85, i8** %9, align 8, !dbg !2846
  br label %91, !dbg !2846

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2846
  %88 = zext i32 %75 to i64, !dbg !2846
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2846
  %90 = add nuw nsw i32 %75, 8, !dbg !2846
  store i32 %90, i32* %8, align 8, !dbg !2846
  br label %91, !dbg !2846

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2846
  %95 = load i8*, i8** %94, align 8, !dbg !2846
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2847
  store i8* %95, i8** %96, align 16, !dbg !2848, !tbaa !1085
  %97 = icmp eq i8* %95, null, !dbg !2849
  br i1 %97, label %30, label %98, !dbg !2850

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2837, metadata !DIExpression()), !dbg !2840
  %99 = icmp ult i32 %92, 41, !dbg !2846
  br i1 %99, label %103, label %100, !dbg !2846

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2846
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2846
  store i8* %102, i8** %9, align 8, !dbg !2846
  br label %108, !dbg !2846

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2846
  %105 = zext i32 %92 to i64, !dbg !2846
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2846
  %107 = add nuw nsw i32 %92, 8, !dbg !2846
  store i32 %107, i32* %8, align 8, !dbg !2846
  br label %108, !dbg !2846

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2846
  %111 = load i8*, i8** %110, align 8, !dbg !2846
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2847
  store i8* %111, i8** %112, align 8, !dbg !2848, !tbaa !1085
  %113 = icmp eq i8* %111, null, !dbg !2849
  br i1 %113, label %30, label %114, !dbg !2850

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2837, metadata !DIExpression()), !dbg !2840
  %115 = load i8*, i8** %9, align 8, !dbg !2846
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2846
  store i8* %116, i8** %9, align 8, !dbg !2846
  %117 = bitcast i8* %115 to i8**, !dbg !2846
  %118 = load i8*, i8** %117, align 8, !dbg !2846
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2847
  store i8* %118, i8** %119, align 16, !dbg !2848, !tbaa !1085
  %120 = icmp eq i8* %118, null, !dbg !2849
  br i1 %120, label %30, label %121, !dbg !2850

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2837, metadata !DIExpression()), !dbg !2840
  %122 = load i8*, i8** %9, align 8, !dbg !2846
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2846
  store i8* %123, i8** %9, align 8, !dbg !2846
  %124 = bitcast i8* %122 to i8**, !dbg !2846
  %125 = load i8*, i8** %124, align 8, !dbg !2846
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2847
  store i8* %125, i8** %126, align 8, !dbg !2848, !tbaa !1085
  %127 = icmp eq i8* %125, null, !dbg !2849
  br i1 %127, label %30, label %128, !dbg !2850

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2837, metadata !DIExpression()), !dbg !2840
  %129 = load i8*, i8** %9, align 8, !dbg !2846
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2846
  store i8* %130, i8** %9, align 8, !dbg !2846
  %131 = bitcast i8* %129 to i8**, !dbg !2846
  %132 = load i8*, i8** %131, align 8, !dbg !2846
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2847
  store i8* %132, i8** %133, align 16, !dbg !2848, !tbaa !1085
  %134 = icmp eq i8* %132, null, !dbg !2849
  br i1 %134, label %30, label %135, !dbg !2850

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2837, metadata !DIExpression()), !dbg !2840
  %136 = load i8*, i8** %9, align 8, !dbg !2846
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2846
  store i8* %137, i8** %9, align 8, !dbg !2846
  %138 = bitcast i8* %136 to i8**, !dbg !2846
  %139 = load i8*, i8** %138, align 8, !dbg !2846
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2847
  store i8* %139, i8** %140, align 8, !dbg !2848, !tbaa !1085
  %141 = icmp eq i8* %139, null, !dbg !2849
  %142 = select i1 %141, i64 9, i64 10, !dbg !2850
  br label %30, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2854 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2858, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !2859, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %2, metadata !2860, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %3, metadata !2861, metadata !DIExpression()), !dbg !2868
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2869
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !2869
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2862, metadata !DIExpression()), !dbg !2870
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2871
  call void @llvm.va_start(i8* nonnull %6), !dbg !2871
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2872
  call void @llvm.va_end(i8* nonnull %6), !dbg !2873
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !2874
  ret void, !dbg !2874
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2875 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2876, !tbaa !1085
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2876
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #18, !dbg !2877
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.88, i64 0, i64 0)) #18, !dbg !2877
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.89, i64 0, i64 0), i32 5) #18, !dbg !2878
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.90, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.91, i64 0, i64 0)) #18, !dbg !2878
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.92, i64 0, i64 0), i32 5) #18, !dbg !2879
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.93, i64 0, i64 0)) #18, !dbg !2879
  ret void, !dbg !2880
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !2881 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %1, metadata !2886, metadata !DIExpression()), !dbg !2887
  %3 = udiv i64 9223372036854775807, %1, !dbg !2888
  %4 = icmp ult i64 %3, %0, !dbg !2888
  br i1 %4, label %5, label %6, !dbg !2890

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !2891
  unreachable, !dbg !2891

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %7, metadata !2893, metadata !DIExpression()) #18, !dbg !2899
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !2901
  call void @llvm.dbg.value(metadata i8* %8, metadata !2898, metadata !DIExpression()) #18, !dbg !2899
  %9 = icmp eq i8* %8, null, !dbg !2902
  %10 = icmp ne i64 %7, 0, !dbg !2904
  %11 = and i1 %10, %9, !dbg !2905
  br i1 %11, label %12, label %13, !dbg !2905

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !2906
  unreachable, !dbg !2906

13:                                               ; preds = %6
  ret i8* %8, !dbg !2907
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2894 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()), !dbg !2908
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %2, metadata !2898, metadata !DIExpression()), !dbg !2908
  %3 = icmp eq i8* %2, null, !dbg !2910
  %4 = icmp ne i64 %0, 0, !dbg !2911
  %5 = and i1 %4, %3, !dbg !2912
  br i1 %5, label %6, label %7, !dbg !2912

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !2913
  unreachable, !dbg !2913

7:                                                ; preds = %1
  ret i8* %2, !dbg !2914
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !2915 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %1, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %2, metadata !2921, metadata !DIExpression()), !dbg !2922
  %4 = udiv i64 9223372036854775807, %2, !dbg !2923
  %5 = icmp ult i64 %4, %1, !dbg !2923
  br i1 %5, label %6, label %7, !dbg !2925

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !2926
  unreachable, !dbg !2926

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #18, !dbg !2934
  call void @llvm.dbg.value(metadata i64 %8, metadata !2933, metadata !DIExpression()) #18, !dbg !2934
  %9 = icmp eq i64 %8, 0, !dbg !2936
  %10 = icmp ne i8* %0, null, !dbg !2938
  %11 = and i1 %10, %9, !dbg !2939
  br i1 %11, label %12, label %13, !dbg !2939

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !2940
  br label %19, !dbg !2942

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %14, metadata !2928, metadata !DIExpression()) #18, !dbg !2934
  %15 = icmp eq i8* %14, null, !dbg !2944
  %16 = icmp ne i64 %8, 0, !dbg !2946
  %17 = and i1 %16, %15, !dbg !2947
  br i1 %17, label %18, label %19, !dbg !2947

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2948
  unreachable, !dbg !2948

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2934
  ret i8* %20, !dbg !2949
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2929 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !2950
  %3 = icmp eq i64 %1, 0, !dbg !2951
  %4 = icmp ne i8* %0, null, !dbg !2952
  %5 = and i1 %4, %3, !dbg !2953
  br i1 %5, label %6, label %7, !dbg !2953

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !2954
  br label %13, !dbg !2955

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %8, metadata !2928, metadata !DIExpression()), !dbg !2950
  %9 = icmp eq i8* %8, null, !dbg !2957
  %10 = icmp ne i64 %1, 0, !dbg !2958
  %11 = and i1 %10, %9, !dbg !2959
  br i1 %11, label %12, label %13, !dbg !2959

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !2960
  unreachable, !dbg !2960

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2950
  ret i8* %14, !dbg !2961
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !441 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !446, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64* %1, metadata !447, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %2, metadata !448, metadata !DIExpression()), !dbg !2962
  %4 = load i64, i64* %1, align 8, !dbg !2963, !tbaa !2200
  call void @llvm.dbg.value(metadata i64 %4, metadata !449, metadata !DIExpression()), !dbg !2962
  %5 = icmp eq i8* %0, null, !dbg !2964
  br i1 %5, label %6, label %20, !dbg !2966

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2967
  br i1 %7, label %8, label %13, !dbg !2970

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %9, metadata !449, metadata !DIExpression()), !dbg !2962
  %10 = icmp ugt i64 %2, 128, !dbg !2973
  %11 = zext i1 %10 to i64, !dbg !2973
  %12 = add nuw nsw i64 %9, %11, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %12, metadata !449, metadata !DIExpression()), !dbg !2962
  br label %13, !dbg !2975

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2962
  call void @llvm.dbg.value(metadata i64 %14, metadata !449, metadata !DIExpression()), !dbg !2962
  %15 = udiv i64 9223372036854775807, %2, !dbg !2976
  %16 = icmp ult i64 %15, %14, !dbg !2976
  br i1 %16, label %19, label %17, !dbg !2978

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !449, metadata !DIExpression()), !dbg !2962
  store i64 %14, i64* %1, align 8, !dbg !2979, !tbaa !2200
  %18 = mul i64 %14, %2, !dbg !2980
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #18, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %28, metadata !2933, metadata !DIExpression()) #18, !dbg !2981
  br label %31, !dbg !2983

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2984
  unreachable, !dbg !2984

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2985
  %22 = icmp ugt i64 %21, %4, !dbg !2988
  br i1 %22, label %24, label %23, !dbg !2989

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !2990
  unreachable, !dbg !2990

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2991
  %26 = add nuw i64 %4, 1, !dbg !2992
  %27 = add i64 %26, %25, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %27, metadata !449, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 %27, metadata !449, metadata !DIExpression()), !dbg !2962
  store i64 %27, i64* %1, align 8, !dbg !2979, !tbaa !2200
  %28 = mul i64 %27, %2, !dbg !2980
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #18, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %28, metadata !2933, metadata !DIExpression()) #18, !dbg !2981
  %29 = icmp eq i64 %28, 0, !dbg !2994
  br i1 %29, label %30, label %31, !dbg !2983

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !2995
  br label %38, !dbg !2996

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !2997
  call void @llvm.dbg.value(metadata i8* %33, metadata !2928, metadata !DIExpression()) #18, !dbg !2981
  %34 = icmp eq i8* %33, null, !dbg !2998
  %35 = icmp ne i64 %32, 0, !dbg !2999
  %36 = and i1 %35, %34, !dbg !3000
  br i1 %36, label %37, label %38, !dbg !3000

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3001
  unreachable, !dbg !3001

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2981
  ret i8* %39, !dbg !3002
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3003 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()) #18, !dbg !3007
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3009
  call void @llvm.dbg.value(metadata i8* %2, metadata !2898, metadata !DIExpression()) #18, !dbg !3007
  %3 = icmp eq i8* %2, null, !dbg !3010
  %4 = icmp ne i64 %0, 0, !dbg !3011
  %5 = and i1 %4, %3, !dbg !3012
  br i1 %5, label %6, label %7, !dbg !3012

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3013
  unreachable, !dbg !3013

7:                                                ; preds = %1
  ret i8* %2, !dbg !3014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64* %1, metadata !3020, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %0, metadata !446, metadata !DIExpression()) #18, !dbg !3022
  call void @llvm.dbg.value(metadata i64* %1, metadata !447, metadata !DIExpression()) #18, !dbg !3022
  call void @llvm.dbg.value(metadata i64 1, metadata !448, metadata !DIExpression()) #18, !dbg !3022
  %3 = load i64, i64* %1, align 8, !dbg !3024, !tbaa !2200
  call void @llvm.dbg.value(metadata i64 %3, metadata !449, metadata !DIExpression()) #18, !dbg !3022
  %4 = icmp eq i8* %0, null, !dbg !3025
  br i1 %4, label %5, label %12, !dbg !3026

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3027
  br i1 %6, label %9, label %7, !dbg !3028

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !449, metadata !DIExpression()) #18, !dbg !3022
  %8 = icmp slt i64 %3, 0, !dbg !3029
  br i1 %8, label %11, label %9, !dbg !3030

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !449, metadata !DIExpression()) #18, !dbg !3022
  store i64 %10, i64* %1, align 8, !dbg !3031, !tbaa !2200
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #18, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %18, metadata !2933, metadata !DIExpression()) #18, !dbg !3032
  br label %21, !dbg !3034

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3035
  unreachable, !dbg !3035

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3036
  br i1 %13, label %15, label %14, !dbg !3037

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3038
  unreachable, !dbg !3038

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3039
  %17 = add nuw nsw i64 %3, 1, !dbg !3040
  %18 = add nuw nsw i64 %17, %16, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %18, metadata !449, metadata !DIExpression()) #18, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %18, metadata !449, metadata !DIExpression()) #18, !dbg !3022
  store i64 %18, i64* %1, align 8, !dbg !3031, !tbaa !2200
  call void @llvm.dbg.value(metadata i8* %0, metadata !2928, metadata !DIExpression()) #18, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %18, metadata !2933, metadata !DIExpression()) #18, !dbg !3032
  %19 = icmp eq i64 %18, 0, !dbg !3042
  br i1 %19, label %20, label %21, !dbg !3034

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3043
  br label %28, !dbg !3044

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %23, metadata !2928, metadata !DIExpression()) #18, !dbg !3032
  %24 = icmp eq i8* %23, null, !dbg !3046
  %25 = icmp ne i64 %22, 0, !dbg !3047
  %26 = and i1 %25, %24, !dbg !3048
  br i1 %26, label %27, label %28, !dbg !3048

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3049
  unreachable, !dbg !3049

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3032
  ret i8* %29, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3051 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %0, metadata !3055, metadata !DIExpression()) #18, !dbg !3060
  call void @llvm.dbg.value(metadata i64 1, metadata !3058, metadata !DIExpression()) #18, !dbg !3060
  %2 = icmp slt i64 %0, 0, !dbg !3062
  br i1 %2, label %6, label %3, !dbg !3064

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %4, metadata !3059, metadata !DIExpression()) #18, !dbg !3060
  %5 = icmp eq i8* %4, null, !dbg !3066
  br i1 %5, label %6, label %7, !dbg !3067

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3068
  unreachable, !dbg !3068

7:                                                ; preds = %3
  ret i8* %4, !dbg !3069
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3056 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3055, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()), !dbg !3070
  %3 = udiv i64 9223372036854775807, %1, !dbg !3071
  %4 = icmp ult i64 %3, %0, !dbg !3071
  br i1 %4, label %8, label %5, !dbg !3072

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %6, metadata !3059, metadata !DIExpression()), !dbg !3070
  %7 = icmp eq i8* %6, null, !dbg !3074
  br i1 %7, label %8, label %9, !dbg !3075

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3076
  unreachable, !dbg !3076

9:                                                ; preds = %5
  ret i8* %6, !dbg !3077
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3078 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %1, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %1, metadata !2893, metadata !DIExpression()) #18, !dbg !3085
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %3, metadata !2898, metadata !DIExpression()) #18, !dbg !3085
  %4 = icmp eq i8* %3, null, !dbg !3088
  %5 = icmp ne i64 %1, 0, !dbg !3089
  %6 = and i1 %5, %4, !dbg !3090
  br i1 %6, label %7, label %8, !dbg !3090

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3091
  unreachable, !dbg !3091

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3092, metadata !DIExpression()) #18, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %0, metadata !3099, metadata !DIExpression()) #18, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()) #18, !dbg !3101
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3103
  ret i8* %3, !dbg !3104
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3107, metadata !DIExpression()), !dbg !3108
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3109
  %3 = add i64 %2, 1, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %0, metadata !3082, metadata !DIExpression()) #18, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %3, metadata !3083, metadata !DIExpression()) #18, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %3, metadata !2893, metadata !DIExpression()) #18, !dbg !3113
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3115
  call void @llvm.dbg.value(metadata i8* %4, metadata !2898, metadata !DIExpression()) #18, !dbg !3113
  %5 = icmp eq i8* %4, null, !dbg !3116
  %6 = icmp ne i64 %3, 0, !dbg !3117
  %7 = and i1 %6, %5, !dbg !3118
  br i1 %7, label %8, label %9, !dbg !3118

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3119
  unreachable, !dbg !3119

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3092, metadata !DIExpression()) #18, !dbg !3120
  call void @llvm.dbg.value(metadata i8* %0, metadata !3099, metadata !DIExpression()) #18, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %3, metadata !3100, metadata !DIExpression()) #18, !dbg !3120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3122
  ret i8* %4, !dbg !3123
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3124 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3125, !tbaa !1147
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.104, i64 0, i64 0), i32 5) #18, !dbg !3126
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), i8* %2) #18, !dbg !3127
  tail call void @abort() #22, !dbg !3128
  unreachable, !dbg !3128
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3129 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3131, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %1, metadata !3132, metadata !DIExpression()), !dbg !3137
  %3 = icmp eq i64 %0, 0, !dbg !3138
  %4 = icmp eq i64 %1, 0, !dbg !3139
  %5 = or i1 %3, %4, !dbg !3140
  br i1 %5, label %11, label %6, !dbg !3140

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3134, metadata !DIExpression()), !dbg !3141
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3142
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3142
  br i1 %8, label %9, label %11, !dbg !3144

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3145
  store i32 12, i32* %10, align 4, !dbg !3147, !tbaa !1147
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3131, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %12, metadata !3132, metadata !DIExpression()), !dbg !3137
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %14, metadata !3133, metadata !DIExpression()), !dbg !3137
  br label %15, !dbg !3149

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3137
  ret i8* %16, !dbg !3150
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3151 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3159, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i64 %2, metadata !3161, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3162, metadata !DIExpression()), !dbg !3168
  %6 = bitcast i32* %5 to i8*, !dbg !3169
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3169
  %7 = icmp eq i32* %0, null, !dbg !3170
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3172
  call void @llvm.dbg.value(metadata i32* %8, metadata !3159, metadata !DIExpression()), !dbg !3168
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %9, metadata !3163, metadata !DIExpression()), !dbg !3168
  %10 = icmp ugt i64 %9, -3, !dbg !3174
  %11 = icmp ne i64 %2, 0, !dbg !3175
  %12 = and i1 %11, %10, !dbg !3176
  br i1 %12, label %13, label %18, !dbg !3176

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3177
  br i1 %14, label %18, label %15, !dbg !3178

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3179, !tbaa !1495
  call void @llvm.dbg.value(metadata i8 %16, metadata !3165, metadata !DIExpression()), !dbg !3180
  %17 = zext i8 %16 to i32, !dbg !3181
  store i32 %17, i32* %8, align 4, !dbg !3182, !tbaa !1147
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3183
  ret i64 %19, !dbg !3183
}

; Function Attrs: nounwind
declare !dbg !467 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3184 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3190, metadata !DIExpression()), !dbg !3195
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3196
  call void @llvm.dbg.value(metadata i1 undef, metadata !3191, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3197, metadata !DIExpression()), !dbg !3201
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3203
  %4 = load i32, i32* %3, align 8, !dbg !3203, !tbaa !3204
  %5 = and i32 %4, 32, !dbg !3203
  %6 = icmp eq i32 %5, 0, !dbg !3206
  call void @llvm.dbg.value(metadata i1 %6, metadata !3193, metadata !DIExpression()), !dbg !3195
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3207
  %8 = icmp ne i32 %7, 0, !dbg !3208
  call void @llvm.dbg.value(metadata i1 %8, metadata !3194, metadata !DIExpression()), !dbg !3195
  br i1 %6, label %9, label %19, !dbg !3209

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3211
  call void @llvm.dbg.value(metadata i1 %10, metadata !3191, metadata !DIExpression()), !dbg !3195
  %11 = xor i1 %8, true, !dbg !3212
  %12 = or i1 %10, %11, !dbg !3212
  %13 = sext i1 %8 to i32, !dbg !3212
  br i1 %12, label %22, label %14, !dbg !3212

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3213
  %16 = load i32, i32* %15, align 4, !dbg !3213, !tbaa !1147
  %17 = icmp ne i32 %16, 9, !dbg !3214
  %18 = sext i1 %17 to i32, !dbg !3215
  br label %22, !dbg !3215

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3216

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3218
  store i32 0, i32* %21, align 4, !dbg !3220, !tbaa !1147
  br label %22, !dbg !3218

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3195
  ret i32 %23, !dbg !3221
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3222 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3224, metadata !DIExpression()), !dbg !3229
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3230
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3230
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3225, metadata !DIExpression()), !dbg !3231
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3232
  %5 = icmp eq i32 %4, 0, !dbg !3232
  br i1 %5, label %6, label %13, !dbg !3234

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3235
  %8 = load i16, i16* %7, align 16, !dbg !3235
  %9 = icmp eq i16 %8, 67, !dbg !3235
  br i1 %9, label %13, label %10, !dbg !3236

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i64 0, i64 0), i64 6), !dbg !3237
  %12 = icmp ne i32 %11, 0, !dbg !3238
  br label %13, !dbg !3236

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3229
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3239
  ret i1 %14, !dbg !3239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3240 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %1, metadata !3242, metadata !DIExpression()), !dbg !3244
  %2 = icmp eq i8* %1, null, !dbg !3245
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.117, i64 0, i64 0), i8* %1, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %3, metadata !3242, metadata !DIExpression()), !dbg !3244
  %4 = load i8, i8* %3, align 1, !dbg !3248, !tbaa !1495
  %5 = icmp eq i8 %4, 0, !dbg !3252
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i8* %3, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %6, metadata !3242, metadata !DIExpression()), !dbg !3244
  ret i8* %6, !dbg !3254
}

; Function Attrs: nounwind
declare !dbg !919 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3259, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %2, metadata !3261, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i32 %0, metadata !3263, metadata !DIExpression()) #18, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %1, metadata !3266, metadata !DIExpression()) #18, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %2, metadata !3267, metadata !DIExpression()) #18, !dbg !3272
  call void @llvm.dbg.value(metadata i32 %0, metadata !3274, metadata !DIExpression()) #18, !dbg !3280
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %4, metadata !3279, metadata !DIExpression()) #18, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %4, metadata !3268, metadata !DIExpression()) #18, !dbg !3272
  %5 = icmp eq i8* %4, null, !dbg !3283
  br i1 %5, label %6, label %9, !dbg !3284

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3285
  br i1 %7, label %19, label %8, !dbg !3288

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3289, !tbaa !1495
  br label %19, !dbg !3290

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %10, metadata !3269, metadata !DIExpression()) #18, !dbg !3292
  %11 = icmp ult i64 %10, %2, !dbg !3293
  br i1 %11, label %12, label %14, !dbg !3295

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %1, metadata !3298, metadata !DIExpression()) #18, !dbg !3303
  call void @llvm.dbg.value(metadata i8* %4, metadata !3301, metadata !DIExpression()) #18, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %13, metadata !3302, metadata !DIExpression()) #18, !dbg !3303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3305
  br label %19, !dbg !3306

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3307
  br i1 %15, label %19, label %16, !dbg !3310

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %1, metadata !3298, metadata !DIExpression()) #18, !dbg !3313
  call void @llvm.dbg.value(metadata i8* %4, metadata !3301, metadata !DIExpression()) #18, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %17, metadata !3302, metadata !DIExpression()) #18, !dbg !3313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3315
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3316
  store i8 0, i8* %18, align 1, !dbg !3317, !tbaa !1495
  br label %19, !dbg !3318

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3319
  ret i32 %20, !dbg !3320
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3321 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 %0, metadata !3274, metadata !DIExpression()) #18, !dbg !3325
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %2, metadata !3279, metadata !DIExpression()) #18, !dbg !3325
  ret i8* %2, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3329 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3335, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 0, metadata !3336, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 0, metadata !3338, metadata !DIExpression()), !dbg !3339
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3340
  call void @llvm.dbg.value(metadata i32 %2, metadata !3337, metadata !DIExpression()), !dbg !3339
  %3 = icmp slt i32 %2, 0, !dbg !3341
  br i1 %3, label %4, label %6, !dbg !3343

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3344
  br label %24, !dbg !3345

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3346
  %8 = icmp eq i32 %7, 0, !dbg !3346
  br i1 %8, label %13, label %9, !dbg !3348

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3349
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3350
  %12 = icmp eq i64 %11, -1, !dbg !3351
  br i1 %12, label %16, label %13, !dbg !3352

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3353
  %15 = icmp eq i32 %14, 0, !dbg !3353
  br i1 %15, label %16, label %18, !dbg !3354

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3336, metadata !DIExpression()), !dbg !3339
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %21, metadata !3338, metadata !DIExpression()), !dbg !3339
  br label %24, !dbg !3356

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3357
  %20 = load i32, i32* %19, align 4, !dbg !3357, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 %20, metadata !3336, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %20, metadata !3336, metadata !DIExpression()), !dbg !3339
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %21, metadata !3338, metadata !DIExpression()), !dbg !3339
  %22 = icmp eq i32 %20, 0, !dbg !3358
  br i1 %22, label %24, label %23, !dbg !3356

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3360, !tbaa !1147
  call void @llvm.dbg.value(metadata i32 -1, metadata !3338, metadata !DIExpression()), !dbg !3339
  br label %24, !dbg !3362

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3339
  ret i32 %25, !dbg !3363
}

; Function Attrs: nofree nounwind
declare !dbg !926 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !961 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !962 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3364 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3370, metadata !DIExpression()), !dbg !3371
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3372
  br i1 %2, label %6, label %3, !dbg !3374

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3375
  %5 = icmp eq i32 %4, 0, !dbg !3375
  br i1 %5, label %6, label %8, !dbg !3376

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3377
  br label %17, !dbg !3378

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3379, metadata !DIExpression()) #18, !dbg !3384
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3386
  %10 = load i32, i32* %9, align 8, !dbg !3386, !tbaa !3204
  %11 = and i32 %10, 256, !dbg !3388
  %12 = icmp eq i32 %11, 0, !dbg !3388
  br i1 %12, label %15, label %13, !dbg !3389

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3390
  br label %15, !dbg !3390

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3391
  br label %17, !dbg !3392

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3371
  ret i32 %18, !dbg !3393
}

; Function Attrs: nofree nounwind
declare !dbg !969 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3394 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3401, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i32 %2, metadata !3403, metadata !DIExpression()), !dbg !3407
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3408
  %5 = load i8*, i8** %4, align 8, !dbg !3408, !tbaa !3409
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3410
  %7 = load i8*, i8** %6, align 8, !dbg !3410, !tbaa !3411
  %8 = icmp eq i8* %5, %7, !dbg !3412
  br i1 %8, label %9, label %28, !dbg !3413

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3414
  %11 = load i8*, i8** %10, align 8, !dbg !3414, !tbaa !3415
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3416
  %13 = load i8*, i8** %12, align 8, !dbg !3416, !tbaa !3417
  %14 = icmp eq i8* %11, %13, !dbg !3418
  br i1 %14, label %15, label %28, !dbg !3419

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3420
  %17 = load i8*, i8** %16, align 8, !dbg !3420, !tbaa !3421
  %18 = icmp eq i8* %17, null, !dbg !3422
  br i1 %18, label %19, label %28, !dbg !3423

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3424
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %21, metadata !3404, metadata !DIExpression()), !dbg !3426
  %22 = icmp eq i64 %21, -1, !dbg !3427
  br i1 %22, label %30, label %23, !dbg !3429

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3430
  %25 = load i32, i32* %24, align 8, !dbg !3431, !tbaa !3204
  %26 = and i32 %25, -17, !dbg !3431
  store i32 %26, i32* %24, align 8, !dbg !3431, !tbaa !3204
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3432
  store i64 %21, i64* %27, align 8, !dbg !3433, !tbaa !3434
  br label %30, !dbg !3435

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3436
  br label %30, !dbg !3437

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3407
  ret i32 %31, !dbg !3438
}

; Function Attrs: nofree nounwind
declare !dbg !1045 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!2, !151, !156, !202, !208, !249, !395, !389, !437, !458, !461, !464, !483, !522, !529, !920, !923, !966, !1007}
!llvm.ident = !{!1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048, !1048}
!llvm.module.flags = !{!1049, !1050, !1051, !1052, !1053}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "silent", scope: !2, file: !3, line: 47, type: !148, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !141, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tty.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 34, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "TTY_STDIN_NOTTY", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "TTY_FAILURE", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "TTY_WRITE_ERROR", value: 3, isUnsigned: true)
!11 = !{!12, !22, !83, !87, !91, !94, !97, !104, !16, !73, !119, !123, !127, !131, !135, !138}
!12 = !DISubprogram(name: "dcgettext", scope: !13, file: !13, line: 51, type: !14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!13 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !18, !18, !20}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DISubprogram(name: "fputs_unlocked", scope: !23, file: !23, line: 662, type: !24, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!23 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!24 = !DISubroutineType(types: !25)
!25 = !{!20, !18, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !29)
!28 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !45, !46, !47, !48, !52, !54, !56, !60, !63, !65, !68, !71, !72, !74, !78, !79}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !28, line: 51, baseType: !20, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !27, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !27, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !27, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !27, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !27, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !27, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !27, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !27, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !27, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !27, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !27, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !27, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !28, line: 36, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !27, file: !28, line: 70, baseType: !26, size: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !27, file: !28, line: 72, baseType: !20, size: 32, offset: 896)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !28, line: 73, baseType: !20, size: 32, offset: 928)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !27, file: !28, line: 74, baseType: !49, size: 64, offset: 960)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !50, line: 152, baseType: !51)
!50 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !27, file: !28, line: 77, baseType: !53, size: 16, offset: 1024)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !27, file: !28, line: 78, baseType: !55, size: 8, offset: 1040)
!55 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !27, file: !28, line: 79, baseType: !57, size: 8, offset: 1048)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 1)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !28, line: 81, baseType: !61, size: 64, offset: 1088)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !28, line: 43, baseType: null)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !28, line: 89, baseType: !64, size: 64, offset: 1152)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !50, line: 153, baseType: !51)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !27, file: !28, line: 91, baseType: !66, size: 64, offset: 1216)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !28, line: 37, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !27, file: !28, line: 92, baseType: !69, size: 64, offset: 1280)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !28, line: 38, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !27, file: !28, line: 93, baseType: !26, size: 64, offset: 1344)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !27, file: !28, line: 94, baseType: !73, size: 64, offset: 1408)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !27, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !27, file: !28, line: 96, baseType: !20, size: 32, offset: 1536)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !27, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 20)
!83 = !DISubprogram(name: "set_program_name", scope: !84, file: !84, line: 37, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!84 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!85 = !DISubroutineType(types: !86)
!86 = !{null, !18}
!87 = !DISubprogram(name: "setlocale", scope: !88, file: !88, line: 122, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!88 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!89 = !DISubroutineType(types: !90)
!90 = !{!16, !20, !18}
!91 = !DISubprogram(name: "bindtextdomain", scope: !13, file: !13, line: 86, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!92 = !DISubroutineType(types: !93)
!93 = !{!16, !18, !18}
!94 = !DISubprogram(name: "textdomain", scope: !13, file: !13, line: 82, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!95 = !DISubroutineType(types: !96)
!96 = !{!16, !18}
!97 = !DISubprogram(name: "atexit", scope: !98, file: !98, line: 595, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!98 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!99 = !DISubroutineType(types: !100)
!100 = !{!20, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null}
!104 = !DISubprogram(name: "getopt_long", scope: !105, file: !105, line: 66, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!105 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!20, !20, !108, !18, !110, !117}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !105, line: 50, size: 256, elements: !113)
!113 = !{!114, !115, !116, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !105, line: 52, baseType: !18, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !112, file: !105, line: 55, baseType: !20, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !112, file: !105, line: 56, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !112, file: !105, line: 57, baseType: !20, size: 32, offset: 192)
!119 = !DISubprogram(name: "version_etc", scope: !120, file: !120, line: 69, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!120 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!121 = !DISubroutineType(types: !122)
!122 = !{null, !26, !18, !18, !18, null}
!123 = !DISubprogram(name: "quote", scope: !124, file: !124, line: 44, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!124 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!125 = !DISubroutineType(types: !126)
!126 = !{!18, !18}
!127 = !DISubprogram(name: "error", scope: !128, file: !128, line: 52, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!128 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!129 = !DISubroutineType(types: !130)
!130 = !{null, !20, !20, !18, null}
!131 = !DISubprogram(name: "isatty", scope: !132, file: !132, line: 779, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!132 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!133 = !DISubroutineType(types: !134)
!134 = !{!20, !20}
!135 = !DISubprogram(name: "ttyname", scope: !132, file: !132, line: 770, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!136 = !DISubroutineType(types: !137)
!137 = !{!16, !20}
!138 = !DISubprogram(name: "puts", scope: !23, file: !23, line: 632, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!139 = !DISubroutineType(types: !140)
!140 = !{!20, !18}
!141 = !{!142, !143}
!142 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1280, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 5)
!148 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "Version", scope: !151, file: !152, line: 2, type: !18, isLocal: false, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, globals: !153, splitDebugInlining: false, nameTableKind: None)
!152 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !{!149}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "file_name", scope: !156, file: !157, line: 46, type: !18, isLocal: true, isDefinition: true)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !158, globals: !197, splitDebugInlining: false, nameTableKind: None)
!157 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !{!159, !12, !195, !127}
!159 = !DISubprogram(name: "close_stream", scope: !160, file: !160, line: 2, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!160 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!161 = !DISubroutineType(types: !162)
!162 = !{!20, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !164, file: !28, line: 51, baseType: !20, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !164, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !164, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !164, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !164, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !164, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !164, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !164, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !164, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !164, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !164, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !164, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !164, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !164, file: !28, line: 70, baseType: !163, size: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !164, file: !28, line: 72, baseType: !20, size: 32, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !164, file: !28, line: 73, baseType: !20, size: 32, offset: 928)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !164, file: !28, line: 74, baseType: !49, size: 64, offset: 960)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !164, file: !28, line: 77, baseType: !53, size: 16, offset: 1024)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !164, file: !28, line: 78, baseType: !55, size: 8, offset: 1040)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !164, file: !28, line: 79, baseType: !57, size: 8, offset: 1048)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !164, file: !28, line: 81, baseType: !61, size: 64, offset: 1088)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !164, file: !28, line: 89, baseType: !64, size: 64, offset: 1152)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !164, file: !28, line: 91, baseType: !66, size: 64, offset: 1216)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !164, file: !28, line: 92, baseType: !69, size: 64, offset: 1280)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !164, file: !28, line: 93, baseType: !163, size: 64, offset: 1344)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !164, file: !28, line: 94, baseType: !73, size: 64, offset: 1408)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !164, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !164, file: !28, line: 96, baseType: !20, size: 32, offset: 1536)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !164, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!195 = !DISubprogram(name: "quotearg_colon", scope: !196, file: !196, line: 391, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!196 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = !{!154, !198}
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !156, file: !157, line: 56, type: !148, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "exit_failure", scope: !202, file: !203, line: 24, type: !205, isLocal: false, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, globals: !204, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = !{!200}
!205 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "program_name", scope: !208, file: !209, line: 33, type: !18, isLocal: false, isDefinition: true)
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !210, globals: !246, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!210 = !{!73, !211, !16}
!211 = !DISubprogram(name: "fputs", scope: !23, file: !23, line: 626, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!212 = !DISubroutineType(types: !213)
!213 = !{!20, !18, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !215, file: !28, line: 51, baseType: !20, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !215, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !215, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !215, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !215, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !215, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !215, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !215, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !215, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !215, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !215, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !215, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !215, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !215, file: !28, line: 70, baseType: !214, size: 64, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !215, file: !28, line: 72, baseType: !20, size: 32, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !215, file: !28, line: 73, baseType: !20, size: 32, offset: 928)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !215, file: !28, line: 74, baseType: !49, size: 64, offset: 960)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !215, file: !28, line: 77, baseType: !53, size: 16, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !215, file: !28, line: 78, baseType: !55, size: 8, offset: 1040)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !215, file: !28, line: 79, baseType: !57, size: 8, offset: 1048)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !215, file: !28, line: 81, baseType: !61, size: 64, offset: 1088)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !215, file: !28, line: 89, baseType: !64, size: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !215, file: !28, line: 91, baseType: !66, size: 64, offset: 1216)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !215, file: !28, line: 92, baseType: !69, size: 64, offset: 1280)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !215, file: !28, line: 93, baseType: !214, size: 64, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !215, file: !28, line: 94, baseType: !73, size: 64, offset: 1408)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !215, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !215, file: !28, line: 96, baseType: !20, size: 32, offset: 1536)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !215, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!246 = !{!206}
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !249, file: !250, line: 85, type: !383, isLocal: false, isDefinition: true)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !251, retainedTypes: !285, globals: !356, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = !{!252, !265, !270}
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !196, line: 32, baseType: !6, size: 32, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!254 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!255 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!256 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!257 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!258 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!259 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!260 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!261 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!262 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!263 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!264 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !196, line: 242, baseType: !6, size: 32, elements: !266)
!266 = !{!267, !268, !269}
!267 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!268 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!269 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !271, line: 46, baseType: !6, size: 32, elements: !272)
!271 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!273 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!274 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!275 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!276 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!277 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!278 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!279 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!280 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!281 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!282 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!283 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!284 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!285 = !{!286, !292, !308, !311, !20, !53, !314, !75, !331, !335, !12, !341, !345, !16, !349, !352, !353}
!286 = !DISubprogram(name: "xmemdup", scope: !287, file: !287, line: 62, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!287 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!288 = !DISubroutineType(types: !289)
!289 = !{!73, !290, !77}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!292 = !DISubprogram(name: "quotearg_alloc_mem", scope: !196, file: !196, line: 342, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!293 = !DISubroutineType(types: !294)
!294 = !{!16, !18, !77, !295, !296}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !250, line: 65, size: 448, elements: !299)
!299 = !{!300, !301, !302, !306, !307}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !298, file: !250, line: 68, baseType: !252, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !250, line: 71, baseType: !20, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !298, file: !250, line: 75, baseType: !303, size: 256, offset: 64)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 8)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !298, file: !250, line: 78, baseType: !18, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !298, file: !250, line: 81, baseType: !18, size: 64, offset: 384)
!308 = !DISubprogram(name: "free", scope: !98, file: !98, line: 565, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !73}
!311 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !196, file: !196, line: 408, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!312 = !DISubroutineType(types: !313)
!313 = !{!16, !20, !18, !18, !18, !77}
!314 = !DISubprogram(name: "rpl_mbrtowc", scope: !315, file: !315, line: 717, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!315 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!316 = !DISubroutineType(types: !317)
!317 = !{!77, !117, !18, !77, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 13, size: 64, elements: !321)
!320 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !319, file: !320, line: 15, baseType: !20, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !319, file: !320, line: 20, baseType: !324, size: 32, offset: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !320, line: 16, size: 32, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !324, file: !320, line: 18, baseType: !6, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !324, file: !320, line: 19, baseType: !328, size: 32)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 4)
!331 = !DISubprogram(name: "iswprint", scope: !332, file: !332, line: 120, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!332 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!333 = !DISubroutineType(types: !334)
!334 = !{!20, !6}
!335 = !DISubprogram(name: "mbsinit", scope: !336, file: !336, line: 292, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!336 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!337 = !DISubroutineType(types: !338)
!338 = !{!20, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!341 = !DISubprogram(name: "locale_charset", scope: !342, file: !342, line: 35, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!342 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!343 = !DISubroutineType(types: !344)
!344 = !{!18}
!345 = !DISubprogram(name: "c_strcasecmp", scope: !346, file: !346, line: 42, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!346 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!347 = !DISubroutineType(types: !348)
!348 = !{!20, !18, !18}
!349 = !DISubprogram(name: "xmalloc", scope: !287, file: !287, line: 53, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!350 = !DISubroutineType(types: !351)
!351 = !{!73, !77}
!352 = !DISubprogram(name: "xalloc_die", scope: !287, file: !287, line: 51, type: !102, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !21)
!353 = !DISubprogram(name: "xrealloc", scope: !287, file: !287, line: 59, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!354 = !DISubroutineType(types: !355)
!355 = !{!73, !73, !77}
!356 = !{!247, !357, !363, !365, !367, !372, !379, !381}
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !249, file: !250, line: 101, type: !359, isLocal: false, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 320, elements: !361)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!361 = !{!362}
!362 = !DISubrange(count: 10)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !249, file: !250, line: 1052, type: !298, isLocal: false, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !249, file: !250, line: 116, type: !298, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "slot0", scope: !249, file: !250, line: 842, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 256)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "slotvec", scope: !249, file: !250, line: 845, type: !374, isLocal: true, isDefinition: true)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !250, line: 834, size: 128, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !375, file: !250, line: 836, baseType: !75, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !375, file: !250, line: 837, baseType: !16, size: 64, offset: 64)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "nslots", scope: !249, file: !250, line: 843, type: !20, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "slotvec0", scope: !249, file: !250, line: 844, type: !375, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 704, elements: !385)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!385 = !{!386}
!386 = !DISubrange(count: 11)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !389, file: !390, line: 26, type: !392, isLocal: false, isDefinition: true)
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, globals: !391, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!391 = !{!387}
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 376, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 47)
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !397, retainedTypes: !401, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!397 = !{!398}
!398 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !396, line: 40, baseType: !6, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!401 = !{!12, !402, !73}
!402 = !DISubprogram(name: "fputs_unlocked", scope: !23, file: !23, line: 662, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!403 = !DISubroutineType(types: !404)
!404 = !{!20, !18, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !406, file: !28, line: 51, baseType: !20, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !406, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !406, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !406, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !406, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !406, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !406, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !406, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !406, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !406, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !406, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !406, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !406, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !406, file: !28, line: 70, baseType: !405, size: 64, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !406, file: !28, line: 72, baseType: !20, size: 32, offset: 896)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !406, file: !28, line: 73, baseType: !20, size: 32, offset: 928)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !406, file: !28, line: 74, baseType: !49, size: 64, offset: 960)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !406, file: !28, line: 77, baseType: !53, size: 16, offset: 1024)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !406, file: !28, line: 78, baseType: !55, size: 8, offset: 1040)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !406, file: !28, line: 79, baseType: !57, size: 8, offset: 1048)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !406, file: !28, line: 81, baseType: !61, size: 64, offset: 1088)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !406, file: !28, line: 89, baseType: !64, size: 64, offset: 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !406, file: !28, line: 91, baseType: !66, size: 64, offset: 1216)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !406, file: !28, line: 92, baseType: !69, size: 64, offset: 1280)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !406, file: !28, line: 93, baseType: !405, size: 64, offset: 1344)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !406, file: !28, line: 94, baseType: !73, size: 64, offset: 1408)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !406, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !406, file: !28, line: 96, baseType: !20, size: 32, offset: 1536)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !406, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !439, retainedTypes: !452, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!439 = !{!440}
!440 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !441, file: !287, line: 186, baseType: !6, size: 32, elements: !450)
!441 = distinct !DISubprogram(name: "x2nrealloc", scope: !287, file: !287, line: 174, type: !442, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !445)
!442 = !DISubroutineType(types: !443)
!443 = !{!73, !73, !444, !75}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!445 = !{!446, !447, !448, !449}
!446 = !DILocalVariable(name: "p", arg: 1, scope: !441, file: !287, line: 174, type: !73)
!447 = !DILocalVariable(name: "pn", arg: 2, scope: !441, file: !287, line: 174, type: !444)
!448 = !DILocalVariable(name: "s", arg: 3, scope: !441, file: !287, line: 174, type: !75)
!449 = !DILocalVariable(name: "n", scope: !441, file: !287, line: 176, type: !75)
!450 = !{!451}
!451 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!452 = !{!75, !352, !349, !353, !16, !308, !73, !453, !456}
!453 = !DISubprogram(name: "xcalloc", scope: !287, file: !287, line: 57, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!454 = !DISubroutineType(types: !455)
!455 = !{!73, !77, !77}
!456 = !DISubprogram(name: "rpl_calloc", scope: !457, file: !457, line: 688, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!457 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !460, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!460 = !{!12, !127}
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !463, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!463 = !{!73}
!464 = distinct !DICompileUnit(language: DW_LANG_C99, file: !465, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !466, splitDebugInlining: false, nameTableKind: None)
!465 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!466 = !{!467, !75, !479}
!467 = !DISubprogram(name: "mbrtowc", scope: !336, file: !336, line: 296, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!468 = !DISubroutineType(types: !469)
!469 = !{!77, !117, !18, !77, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 13, size: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !471, file: !320, line: 15, baseType: !20, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !471, file: !320, line: 20, baseType: !475, size: 32, offset: 32)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !471, file: !320, line: 16, size: 32, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !475, file: !320, line: 18, baseType: !6, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !475, file: !320, line: 19, baseType: !328, size: 32)
!479 = !DISubprogram(name: "hard_locale", scope: !480, file: !480, line: 26, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!480 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!481 = !DISubroutineType(types: !482)
!482 = !{!148, !20}
!483 = distinct !DICompileUnit(language: DW_LANG_C99, file: !484, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !485, splitDebugInlining: false, nameTableKind: None)
!484 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!485 = !{!486}
!486 = !DISubprogram(name: "rpl_fclose", scope: !487, file: !487, line: 672, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!487 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!488 = !DISubroutineType(types: !489)
!489 = !{!20, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !491, file: !28, line: 51, baseType: !20, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !491, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !491, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !491, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !491, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !491, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !491, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !491, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !491, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !491, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !491, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !491, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !491, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !491, file: !28, line: 70, baseType: !490, size: 64, offset: 832)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !491, file: !28, line: 72, baseType: !20, size: 32, offset: 896)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !491, file: !28, line: 73, baseType: !20, size: 32, offset: 928)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !491, file: !28, line: 74, baseType: !49, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !491, file: !28, line: 77, baseType: !53, size: 16, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !491, file: !28, line: 78, baseType: !55, size: 8, offset: 1040)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !491, file: !28, line: 79, baseType: !57, size: 8, offset: 1048)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !491, file: !28, line: 81, baseType: !61, size: 64, offset: 1088)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !491, file: !28, line: 89, baseType: !64, size: 64, offset: 1152)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !491, file: !28, line: 91, baseType: !66, size: 64, offset: 1216)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !491, file: !28, line: 92, baseType: !69, size: 64, offset: 1280)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !491, file: !28, line: 93, baseType: !490, size: 64, offset: 1344)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !491, file: !28, line: 94, baseType: !73, size: 64, offset: 1408)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !491, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !491, file: !28, line: 96, baseType: !20, size: 32, offset: 1536)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !491, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !524, splitDebugInlining: false, nameTableKind: None)
!523 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!524 = !{!525}
!525 = !DISubprogram(name: "setlocale_null_r", scope: !526, file: !526, line: 64, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!526 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!527 = !DISubroutineType(types: !528)
!528 = !{!20, !20, !16, !77}
!529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !530, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !531, retainedTypes: !918, splitDebugInlining: false, nameTableKind: None)
!530 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!531 = !{!532}
!532 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !533, line: 41, baseType: !6, size: 32, elements: !534)
!533 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917}
!535 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!536 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!537 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!538 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!539 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!540 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!541 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!542 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!543 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!544 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!545 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!546 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!547 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!548 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!549 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!550 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!551 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!552 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!553 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!554 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!555 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!556 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!557 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!558 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!559 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!560 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!561 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!562 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!563 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!564 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!565 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!566 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!567 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!568 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!569 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!570 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!571 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!572 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!573 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!574 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!575 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!576 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!577 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!578 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!579 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!580 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!581 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!582 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!583 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!584 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!643 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!646 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!647 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!648 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!649 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!650 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!651 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!652 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!653 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!654 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!655 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!656 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!657 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!730 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!803 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!804 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!805 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!806 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!807 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!808 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!809 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!810 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!811 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!812 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!813 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!814 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!815 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!816 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!817 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!819 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!820 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!821 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!822 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!823 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!824 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!850 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!851 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!852 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!853 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!854 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!859 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!860 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!861 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!862 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!918 = !{!919, !73}
!919 = !DISubprogram(name: "nl_langinfo", scope: !533, file: !533, line: 661, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!920 = distinct !DICompileUnit(language: DW_LANG_C99, file: !921, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !922, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!922 = !{!73, !87}
!923 = distinct !DICompileUnit(language: DW_LANG_C99, file: !924, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !925, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!925 = !{!926, !961, !962, !965}
!926 = !DISubprogram(name: "fileno", scope: !23, file: !23, line: 786, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!927 = !DISubroutineType(types: !928)
!928 = !{!20, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !931)
!931 = !{!932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !930, file: !28, line: 51, baseType: !20, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !930, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !930, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !930, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !930, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !930, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !930, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !930, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !930, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !930, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !930, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !930, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !930, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !930, file: !28, line: 70, baseType: !929, size: 64, offset: 832)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !930, file: !28, line: 72, baseType: !20, size: 32, offset: 896)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !930, file: !28, line: 73, baseType: !20, size: 32, offset: 928)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !930, file: !28, line: 74, baseType: !49, size: 64, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !930, file: !28, line: 77, baseType: !53, size: 16, offset: 1024)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !930, file: !28, line: 78, baseType: !55, size: 8, offset: 1040)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !930, file: !28, line: 79, baseType: !57, size: 8, offset: 1048)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !930, file: !28, line: 81, baseType: !61, size: 64, offset: 1088)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !930, file: !28, line: 89, baseType: !64, size: 64, offset: 1152)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !930, file: !28, line: 91, baseType: !66, size: 64, offset: 1216)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !930, file: !28, line: 92, baseType: !69, size: 64, offset: 1280)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !930, file: !28, line: 93, baseType: !929, size: 64, offset: 1344)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !930, file: !28, line: 94, baseType: !73, size: 64, offset: 1408)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !930, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !930, file: !28, line: 96, baseType: !20, size: 32, offset: 1536)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !930, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!961 = !DISubprogram(name: "fclose", scope: !23, file: !23, line: 213, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!962 = !DISubprogram(name: "lseek", scope: !132, file: !132, line: 334, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!963 = !DISubroutineType(types: !964)
!964 = !{!51, !20, !51, !20}
!965 = !DISubprogram(name: "rpl_fflush", scope: !487, file: !487, line: 718, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!966 = distinct !DICompileUnit(language: DW_LANG_C99, file: !967, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !968, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!968 = !{!73, !969, !1004}
!969 = !DISubprogram(name: "fflush", scope: !23, file: !23, line: 218, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!970 = !DISubroutineType(types: !971)
!971 = !{!20, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !974)
!974 = !{!975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !973, file: !28, line: 51, baseType: !20, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !973, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !973, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !973, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !973, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !973, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !973, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !973, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !973, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !973, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !973, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !973, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !973, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !973, file: !28, line: 70, baseType: !972, size: 64, offset: 832)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !973, file: !28, line: 72, baseType: !20, size: 32, offset: 896)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !973, file: !28, line: 73, baseType: !20, size: 32, offset: 928)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !973, file: !28, line: 74, baseType: !49, size: 64, offset: 960)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !973, file: !28, line: 77, baseType: !53, size: 16, offset: 1024)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !973, file: !28, line: 78, baseType: !55, size: 8, offset: 1040)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !973, file: !28, line: 79, baseType: !57, size: 8, offset: 1048)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !973, file: !28, line: 81, baseType: !61, size: 64, offset: 1088)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !973, file: !28, line: 89, baseType: !64, size: 64, offset: 1152)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !973, file: !28, line: 91, baseType: !66, size: 64, offset: 1216)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !973, file: !28, line: 92, baseType: !69, size: 64, offset: 1280)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !973, file: !28, line: 93, baseType: !972, size: 64, offset: 1344)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !973, file: !28, line: 94, baseType: !73, size: 64, offset: 1408)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !973, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !973, file: !28, line: 96, baseType: !20, size: 32, offset: 1536)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !973, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!1004 = !DISubprogram(name: "rpl_fseeko", scope: !487, file: !487, line: 1034, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!20, !972, !51, !20}
!1007 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1008, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !1009, splitDebugInlining: false, nameTableKind: None)
!1008 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1009 = !{!73, !1010, !962, !1045}
!1010 = !DISubprogram(name: "fileno", scope: !23, file: !23, line: 786, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!20, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1014, file: !28, line: 51, baseType: !20, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1014, file: !28, line: 54, baseType: !16, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1014, file: !28, line: 55, baseType: !16, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1014, file: !28, line: 56, baseType: !16, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1014, file: !28, line: 57, baseType: !16, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1014, file: !28, line: 58, baseType: !16, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1014, file: !28, line: 59, baseType: !16, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1014, file: !28, line: 60, baseType: !16, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1014, file: !28, line: 61, baseType: !16, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1014, file: !28, line: 64, baseType: !16, size: 64, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1014, file: !28, line: 65, baseType: !16, size: 64, offset: 640)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1014, file: !28, line: 66, baseType: !16, size: 64, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1014, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1014, file: !28, line: 70, baseType: !1013, size: 64, offset: 832)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1014, file: !28, line: 72, baseType: !20, size: 32, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1014, file: !28, line: 73, baseType: !20, size: 32, offset: 928)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1014, file: !28, line: 74, baseType: !49, size: 64, offset: 960)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1014, file: !28, line: 77, baseType: !53, size: 16, offset: 1024)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1014, file: !28, line: 78, baseType: !55, size: 8, offset: 1040)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1014, file: !28, line: 79, baseType: !57, size: 8, offset: 1048)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1014, file: !28, line: 81, baseType: !61, size: 64, offset: 1088)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1014, file: !28, line: 89, baseType: !64, size: 64, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1014, file: !28, line: 91, baseType: !66, size: 64, offset: 1216)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1014, file: !28, line: 92, baseType: !69, size: 64, offset: 1280)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1014, file: !28, line: 93, baseType: !1013, size: 64, offset: 1344)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1014, file: !28, line: 94, baseType: !73, size: 64, offset: 1408)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1014, file: !28, line: 95, baseType: !75, size: 64, offset: 1472)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1014, file: !28, line: 96, baseType: !20, size: 32, offset: 1536)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1014, file: !28, line: 98, baseType: !80, size: 160, offset: 1568)
!1045 = !DISubprogram(name: "fseeko", scope: !23, file: !23, line: 707, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !21)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!20, !1013, !51, !20}
!1048 = !{!"clang version 10.0.0 "}
!1049 = !{i32 7, !"Dwarf Version", i32 4}
!1050 = !{i32 2, !"Debug Info Version", i32 3}
!1051 = !{i32 1, !"wchar_size", i32 4}
!1052 = !{i32 7, !"PIC Level", i32 2}
!1053 = !{i32 7, !"PIE Level", i32 2}
!1054 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !1055, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !20}
!1057 = !{!1058}
!1058 = !DILocalVariable(name: "status", arg: 1, scope: !1054, file: !3, line: 59, type: !20)
!1059 = !DILocalVariable(name: "infomap", scope: !1060, file: !1061, line: 636, type: !1073)
!1060 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1061, file: !1061, line: 634, type: !85, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1062)
!1061 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1062 = !{!1063, !1059, !1064, !1065, !1072}
!1063 = !DILocalVariable(name: "program", arg: 1, scope: !1060, file: !1061, line: 634, type: !18)
!1064 = !DILocalVariable(name: "node", scope: !1060, file: !1061, line: 646, type: !18)
!1065 = !DILocalVariable(name: "map_prog", scope: !1060, file: !1061, line: 647, type: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1060, file: !1061, line: 636, size: 128, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1068, file: !1061, line: 636, baseType: !18, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1068, file: !1061, line: 636, baseType: !18, size: 64, offset: 64)
!1072 = !DILocalVariable(name: "lc_messages", scope: !1060, file: !1061, line: 659, type: !18)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 896, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 7)
!1076 = !DILocation(line: 636, column: 67, scope: !1060, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 73, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 64, column: 5)
!1079 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 61, column: 7)
!1080 = !DILocation(line: 0, scope: !1054)
!1081 = !DILocation(line: 61, column: 14, scope: !1079)
!1082 = !DILocation(line: 61, column: 7, scope: !1054)
!1083 = !DILocation(line: 62, column: 5, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 62, column: 5)
!1085 = !{!1086, !1086, i64 0}
!1086 = !{!"any pointer", !1087, i64 0}
!1087 = !{!"omnipotent char", !1088, i64 0}
!1088 = !{!"Simple C/C++ TBAA"}
!1089 = !DILocation(line: 65, column: 7, scope: !1078)
!1090 = !DILocation(line: 66, column: 7, scope: !1078)
!1091 = !DILocation(line: 71, column: 7, scope: !1078)
!1092 = !DILocation(line: 72, column: 7, scope: !1078)
!1093 = !DILocation(line: 0, scope: !1060, inlinedAt: !1077)
!1094 = !DILocation(line: 636, column: 3, scope: !1060, inlinedAt: !1077)
!1095 = !DILocation(line: 647, column: 36, scope: !1060, inlinedAt: !1077)
!1096 = !DILocation(line: 649, column: 3, scope: !1060, inlinedAt: !1077)
!1097 = !DILocation(line: 649, column: 33, scope: !1060, inlinedAt: !1077)
!1098 = !DILocation(line: 650, column: 13, scope: !1060, inlinedAt: !1077)
!1099 = !DILocation(line: 649, column: 20, scope: !1060, inlinedAt: !1077)
!1100 = !{!1101, !1086, i64 0}
!1101 = !{!"infomap", !1086, i64 0, !1086, i64 8}
!1102 = !DILocation(line: 649, column: 10, scope: !1060, inlinedAt: !1077)
!1103 = !DILocation(line: 649, column: 28, scope: !1060, inlinedAt: !1077)
!1104 = distinct !{!1104, !1096, !1098}
!1105 = !DILocation(line: 652, column: 17, scope: !1106, inlinedAt: !1077)
!1106 = distinct !DILexicalBlock(scope: !1060, file: !1061, line: 652, column: 7)
!1107 = !{!1101, !1086, i64 8}
!1108 = !DILocation(line: 652, column: 7, scope: !1106, inlinedAt: !1077)
!1109 = !DILocation(line: 652, column: 7, scope: !1060, inlinedAt: !1077)
!1110 = !DILocation(line: 655, column: 3, scope: !1060, inlinedAt: !1077)
!1111 = !DILocation(line: 659, column: 29, scope: !1060, inlinedAt: !1077)
!1112 = !DILocation(line: 660, column: 7, scope: !1113, inlinedAt: !1077)
!1113 = distinct !DILexicalBlock(scope: !1060, file: !1061, line: 660, column: 7)
!1114 = !DILocation(line: 660, column: 19, scope: !1113, inlinedAt: !1077)
!1115 = !DILocation(line: 660, column: 22, scope: !1113, inlinedAt: !1077)
!1116 = !DILocation(line: 660, column: 7, scope: !1060, inlinedAt: !1077)
!1117 = !DILocation(line: 666, column: 7, scope: !1118, inlinedAt: !1077)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !1061, line: 661, column: 5)
!1119 = !DILocation(line: 668, column: 5, scope: !1118, inlinedAt: !1077)
!1120 = !DILocation(line: 669, column: 3, scope: !1060, inlinedAt: !1077)
!1121 = !DILocation(line: 671, column: 3, scope: !1060, inlinedAt: !1077)
!1122 = !DILocation(line: 673, column: 1, scope: !1060, inlinedAt: !1077)
!1123 = !DILocation(line: 75, column: 3, scope: !1054)
!1124 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 79, type: !1125, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1128)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!20, !20, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1128 = !{!1129, !1130, !1131, !1132, !1133}
!1129 = !DILocalVariable(name: "argc", arg: 1, scope: !1124, file: !3, line: 79, type: !20)
!1130 = !DILocalVariable(name: "argv", arg: 2, scope: !1124, file: !3, line: 79, type: !1127)
!1131 = !DILocalVariable(name: "optc", scope: !1124, file: !3, line: 81, type: !20)
!1132 = !DILocalVariable(name: "status", scope: !1124, file: !3, line: 122, type: !20)
!1133 = !DILocalVariable(name: "tty", scope: !1124, file: !3, line: 123, type: !18)
!1134 = !DILocation(line: 0, scope: !1124)
!1135 = !DILocation(line: 84, column: 21, scope: !1124)
!1136 = !DILocation(line: 84, column: 3, scope: !1124)
!1137 = !DILocation(line: 85, column: 3, scope: !1124)
!1138 = !DILocation(line: 86, column: 3, scope: !1124)
!1139 = !DILocation(line: 87, column: 3, scope: !1124)
!1140 = !DILocalVariable(name: "status", arg: 1, scope: !1141, file: !1061, line: 99, type: !20)
!1141 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !1061, file: !1061, line: 99, type: !1055, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1142)
!1142 = !{!1140}
!1143 = !DILocation(line: 0, scope: !1141, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 89, column: 3, scope: !1124)
!1145 = !DILocation(line: 102, column: 18, scope: !1146, inlinedAt: !1144)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !1061, line: 101, column: 7)
!1147 = !{!1148, !1148, i64 0}
!1148 = !{!"int", !1087, i64 0}
!1149 = !DILocation(line: 90, column: 3, scope: !1124)
!1150 = !DILocation(line: 94, column: 3, scope: !1124)
!1151 = !DILocation(line: 94, column: 18, scope: !1124)
!1152 = distinct !{!1152, !1150, !1153}
!1153 = !DILocation(line: 109, column: 5, scope: !1124)
!1154 = !DILocation(line: 102, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 97, column: 9)
!1156 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 95, column: 5)
!1157 = !DILocation(line: 104, column: 9, scope: !1155)
!1158 = !DILocation(line: 107, column: 11, scope: !1155)
!1159 = !DILocation(line: 111, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 111, column: 7)
!1161 = !DILocation(line: 111, column: 14, scope: !1160)
!1162 = !DILocation(line: 111, column: 7, scope: !1124)
!1163 = !DILocation(line: 113, column: 20, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 112, column: 5)
!1165 = !DILocation(line: 113, column: 55, scope: !1164)
!1166 = !DILocation(line: 113, column: 50, scope: !1164)
!1167 = !DILocation(line: 113, column: 43, scope: !1164)
!1168 = !DILocation(line: 113, column: 7, scope: !1164)
!1169 = !DILocation(line: 114, column: 7, scope: !1164)
!1170 = !DILocation(line: 117, column: 3, scope: !1124)
!1171 = !DILocation(line: 117, column: 9, scope: !1124)
!1172 = !DILocation(line: 119, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 119, column: 7)
!1174 = !DILocation(line: 119, column: 7, scope: !1124)
!1175 = !DILocation(line: 120, column: 12, scope: !1173)
!1176 = !DILocation(line: 120, column: 5, scope: !1173)
!1177 = !DILocation(line: 123, column: 21, scope: !1124)
!1178 = !DILocation(line: 125, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 125, column: 7)
!1180 = !DILocation(line: 125, column: 7, scope: !1124)
!1181 = !DILocation(line: 127, column: 13, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 126, column: 5)
!1183 = !DILocation(line: 129, column: 5, scope: !1182)
!1184 = !DILocation(line: 131, column: 3, scope: !1124)
!1185 = !DILocation(line: 133, column: 1, scope: !1124)
!1186 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !157, file: !157, line: 51, type: !85, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1187)
!1187 = !{!1188}
!1188 = !DILocalVariable(name: "file", arg: 1, scope: !1186, file: !157, line: 51, type: !18)
!1189 = !DILocation(line: 0, scope: !1186)
!1190 = !DILocation(line: 53, column: 13, scope: !1186)
!1191 = !DILocation(line: 54, column: 1, scope: !1186)
!1192 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !157, file: !157, line: 88, type: !1193, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !148}
!1195 = !{!1196}
!1196 = !DILocalVariable(name: "ignore", arg: 1, scope: !1192, file: !157, line: 88, type: !148)
!1197 = !DILocation(line: 0, scope: !1192)
!1198 = !DILocation(line: 90, column: 16, scope: !1192)
!1199 = !{!1200, !1200, i64 0}
!1200 = !{!"_Bool", !1087, i64 0}
!1201 = !DILocation(line: 91, column: 1, scope: !1192)
!1202 = distinct !DISubprogram(name: "close_stdout", scope: !157, file: !157, line: 117, type: !102, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !156, retainedNodes: !1203)
!1203 = !{!1204}
!1204 = !DILocalVariable(name: "write_error", scope: !1205, file: !157, line: 122, type: !18)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !157, line: 121, column: 5)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !157, line: 119, column: 7)
!1207 = !DILocation(line: 119, column: 21, scope: !1206)
!1208 = !DILocation(line: 119, column: 7, scope: !1206)
!1209 = !DILocation(line: 119, column: 29, scope: !1206)
!1210 = !DILocation(line: 120, column: 7, scope: !1206)
!1211 = !DILocation(line: 120, column: 12, scope: !1206)
!1212 = !{i8 0, i8 2}
!1213 = !DILocation(line: 120, column: 25, scope: !1206)
!1214 = !DILocation(line: 120, column: 28, scope: !1206)
!1215 = !DILocation(line: 120, column: 34, scope: !1206)
!1216 = !DILocation(line: 119, column: 7, scope: !1202)
!1217 = !DILocation(line: 122, column: 33, scope: !1205)
!1218 = !DILocation(line: 0, scope: !1205)
!1219 = !DILocation(line: 123, column: 11, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1205, file: !157, line: 123, column: 11)
!1221 = !DILocation(line: 0, scope: !1220)
!1222 = !DILocation(line: 123, column: 11, scope: !1205)
!1223 = !DILocation(line: 124, column: 36, scope: !1220)
!1224 = !DILocation(line: 124, column: 9, scope: !1220)
!1225 = !DILocation(line: 127, column: 9, scope: !1220)
!1226 = !DILocation(line: 129, column: 14, scope: !1205)
!1227 = !DILocation(line: 129, column: 7, scope: !1205)
!1228 = !DILocation(line: 134, column: 42, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1202, file: !157, line: 134, column: 7)
!1230 = !DILocation(line: 134, column: 28, scope: !1229)
!1231 = !DILocation(line: 134, column: 50, scope: !1229)
!1232 = !DILocation(line: 134, column: 7, scope: !1202)
!1233 = !DILocation(line: 135, column: 12, scope: !1229)
!1234 = !DILocation(line: 135, column: 5, scope: !1229)
!1235 = !DILocation(line: 136, column: 1, scope: !1202)
!1236 = distinct !DISubprogram(name: "set_program_name", scope: !209, file: !209, line: 39, type: !85, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !208, retainedNodes: !1237)
!1237 = !{!1238, !1239, !1240}
!1238 = !DILocalVariable(name: "argv0", arg: 1, scope: !1236, file: !209, line: 39, type: !18)
!1239 = !DILocalVariable(name: "slash", scope: !1236, file: !209, line: 46, type: !18)
!1240 = !DILocalVariable(name: "base", scope: !1236, file: !209, line: 47, type: !18)
!1241 = !DILocation(line: 0, scope: !1236)
!1242 = !DILocation(line: 51, column: 13, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !209, line: 51, column: 7)
!1244 = !DILocation(line: 51, column: 7, scope: !1236)
!1245 = !DILocation(line: 55, column: 14, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !209, line: 52, column: 5)
!1247 = !DILocation(line: 54, column: 7, scope: !1246)
!1248 = !DILocation(line: 56, column: 7, scope: !1246)
!1249 = !DILocation(line: 59, column: 11, scope: !1236)
!1250 = !DILocation(line: 60, column: 17, scope: !1236)
!1251 = !DILocation(line: 60, column: 11, scope: !1236)
!1252 = !DILocation(line: 61, column: 12, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1236, file: !209, line: 61, column: 7)
!1254 = !DILocation(line: 61, column: 20, scope: !1253)
!1255 = !DILocation(line: 61, column: 25, scope: !1253)
!1256 = !DILocation(line: 61, column: 42, scope: !1253)
!1257 = !DILocation(line: 61, column: 28, scope: !1253)
!1258 = !DILocation(line: 61, column: 61, scope: !1253)
!1259 = !DILocation(line: 61, column: 7, scope: !1236)
!1260 = !DILocation(line: 64, column: 11, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !209, line: 64, column: 11)
!1262 = distinct !DILexicalBlock(scope: !1253, file: !209, line: 62, column: 5)
!1263 = !DILocation(line: 64, column: 36, scope: !1261)
!1264 = !DILocation(line: 64, column: 11, scope: !1262)
!1265 = !DILocation(line: 66, column: 24, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !209, line: 65, column: 9)
!1267 = !DILocation(line: 70, column: 41, scope: !1266)
!1268 = !DILocation(line: 72, column: 9, scope: !1266)
!1269 = !DILocation(line: 84, column: 16, scope: !1236)
!1270 = !DILocation(line: 90, column: 27, scope: !1236)
!1271 = !DILocation(line: 92, column: 1, scope: !1236)
!1272 = distinct !DISubprogram(name: "clone_quoting_options", scope: !250, file: !250, line: 122, type: !1273, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1276)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!1275, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!1276 = !{!1277, !1278, !1279}
!1277 = !DILocalVariable(name: "o", arg: 1, scope: !1272, file: !250, line: 122, type: !1275)
!1278 = !DILocalVariable(name: "e", scope: !1272, file: !250, line: 124, type: !20)
!1279 = !DILocalVariable(name: "p", scope: !1272, file: !250, line: 125, type: !1275)
!1280 = !DILocation(line: 0, scope: !1272)
!1281 = !DILocation(line: 124, column: 11, scope: !1272)
!1282 = !DILocation(line: 125, column: 40, scope: !1272)
!1283 = !DILocation(line: 125, column: 31, scope: !1272)
!1284 = !DILocation(line: 127, column: 9, scope: !1272)
!1285 = !DILocation(line: 128, column: 3, scope: !1272)
!1286 = distinct !DISubprogram(name: "get_quoting_style", scope: !250, file: !250, line: 133, type: !1287, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!252, !296}
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "o", arg: 1, scope: !1286, file: !250, line: 133, type: !296)
!1291 = !DILocation(line: 0, scope: !1286)
!1292 = !DILocation(line: 135, column: 11, scope: !1286)
!1293 = !DILocation(line: 135, column: 46, scope: !1286)
!1294 = !{!1295, !1087, i64 0}
!1295 = !{!"quoting_options", !1087, i64 0, !1148, i64 4, !1087, i64 8, !1086, i64 40, !1086, i64 48}
!1296 = !DILocation(line: 135, column: 3, scope: !1286)
!1297 = distinct !DISubprogram(name: "set_quoting_style", scope: !250, file: !250, line: 141, type: !1298, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1300)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !1275, !252}
!1300 = !{!1301, !1302}
!1301 = !DILocalVariable(name: "o", arg: 1, scope: !1297, file: !250, line: 141, type: !1275)
!1302 = !DILocalVariable(name: "s", arg: 2, scope: !1297, file: !250, line: 141, type: !252)
!1303 = !DILocation(line: 0, scope: !1297)
!1304 = !DILocation(line: 143, column: 4, scope: !1297)
!1305 = !DILocation(line: 143, column: 39, scope: !1297)
!1306 = !DILocation(line: 143, column: 45, scope: !1297)
!1307 = !DILocation(line: 144, column: 1, scope: !1297)
!1308 = distinct !DISubprogram(name: "set_char_quoting", scope: !250, file: !250, line: 152, type: !1309, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!20, !1275, !17, !20}
!1311 = !{!1312, !1313, !1314, !1315, !1317, !1319, !1320}
!1312 = !DILocalVariable(name: "o", arg: 1, scope: !1308, file: !250, line: 152, type: !1275)
!1313 = !DILocalVariable(name: "c", arg: 2, scope: !1308, file: !250, line: 152, type: !17)
!1314 = !DILocalVariable(name: "i", arg: 3, scope: !1308, file: !250, line: 152, type: !20)
!1315 = !DILocalVariable(name: "uc", scope: !1308, file: !250, line: 154, type: !1316)
!1316 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1317 = !DILocalVariable(name: "p", scope: !1308, file: !250, line: 155, type: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1319 = !DILocalVariable(name: "shift", scope: !1308, file: !250, line: 157, type: !20)
!1320 = !DILocalVariable(name: "r", scope: !1308, file: !250, line: 158, type: !20)
!1321 = !DILocation(line: 0, scope: !1308)
!1322 = !DILocation(line: 156, column: 6, scope: !1308)
!1323 = !DILocation(line: 156, column: 62, scope: !1308)
!1324 = !DILocation(line: 156, column: 57, scope: !1308)
!1325 = !DILocation(line: 157, column: 15, scope: !1308)
!1326 = !DILocation(line: 158, column: 12, scope: !1308)
!1327 = !DILocation(line: 158, column: 15, scope: !1308)
!1328 = !DILocation(line: 158, column: 25, scope: !1308)
!1329 = !DILocation(line: 159, column: 13, scope: !1308)
!1330 = !DILocation(line: 159, column: 18, scope: !1308)
!1331 = !DILocation(line: 159, column: 23, scope: !1308)
!1332 = !DILocation(line: 159, column: 6, scope: !1308)
!1333 = !DILocation(line: 160, column: 3, scope: !1308)
!1334 = distinct !DISubprogram(name: "set_quoting_flags", scope: !250, file: !250, line: 168, type: !1335, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!20, !1275, !20}
!1337 = !{!1338, !1339, !1340}
!1338 = !DILocalVariable(name: "o", arg: 1, scope: !1334, file: !250, line: 168, type: !1275)
!1339 = !DILocalVariable(name: "i", arg: 2, scope: !1334, file: !250, line: 168, type: !20)
!1340 = !DILocalVariable(name: "r", scope: !1334, file: !250, line: 170, type: !20)
!1341 = !DILocation(line: 0, scope: !1334)
!1342 = !DILocation(line: 171, column: 8, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1334, file: !250, line: 171, column: 7)
!1344 = !DILocation(line: 171, column: 7, scope: !1334)
!1345 = !DILocation(line: 173, column: 10, scope: !1334)
!1346 = !{!1295, !1148, i64 4}
!1347 = !DILocation(line: 174, column: 12, scope: !1334)
!1348 = !DILocation(line: 175, column: 3, scope: !1334)
!1349 = distinct !DISubprogram(name: "set_custom_quoting", scope: !250, file: !250, line: 179, type: !1350, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1275, !18, !18}
!1352 = !{!1353, !1354, !1355}
!1353 = !DILocalVariable(name: "o", arg: 1, scope: !1349, file: !250, line: 179, type: !1275)
!1354 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1349, file: !250, line: 180, type: !18)
!1355 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1349, file: !250, line: 180, type: !18)
!1356 = !DILocation(line: 0, scope: !1349)
!1357 = !DILocation(line: 182, column: 8, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !250, line: 182, column: 7)
!1359 = !DILocation(line: 182, column: 7, scope: !1349)
!1360 = !DILocation(line: 184, column: 6, scope: !1349)
!1361 = !DILocation(line: 184, column: 12, scope: !1349)
!1362 = !DILocation(line: 185, column: 8, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1349, file: !250, line: 185, column: 7)
!1364 = !DILocation(line: 185, column: 23, scope: !1363)
!1365 = !DILocation(line: 185, column: 19, scope: !1363)
!1366 = !DILocation(line: 186, column: 5, scope: !1363)
!1367 = !DILocation(line: 187, column: 6, scope: !1349)
!1368 = !DILocation(line: 187, column: 17, scope: !1349)
!1369 = !{!1295, !1086, i64 40}
!1370 = !DILocation(line: 188, column: 6, scope: !1349)
!1371 = !DILocation(line: 188, column: 18, scope: !1349)
!1372 = !{!1295, !1086, i64 48}
!1373 = !DILocation(line: 189, column: 1, scope: !1349)
!1374 = distinct !DISubprogram(name: "quotearg_buffer", scope: !250, file: !250, line: 784, type: !1375, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!75, !16, !75, !18, !75, !296}
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1378 = !DILocalVariable(name: "buffer", arg: 1, scope: !1374, file: !250, line: 784, type: !16)
!1379 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1374, file: !250, line: 784, type: !75)
!1380 = !DILocalVariable(name: "arg", arg: 3, scope: !1374, file: !250, line: 785, type: !18)
!1381 = !DILocalVariable(name: "argsize", arg: 4, scope: !1374, file: !250, line: 785, type: !75)
!1382 = !DILocalVariable(name: "o", arg: 5, scope: !1374, file: !250, line: 786, type: !296)
!1383 = !DILocalVariable(name: "p", scope: !1374, file: !250, line: 788, type: !296)
!1384 = !DILocalVariable(name: "e", scope: !1374, file: !250, line: 789, type: !20)
!1385 = !DILocalVariable(name: "r", scope: !1374, file: !250, line: 790, type: !75)
!1386 = !DILocation(line: 0, scope: !1374)
!1387 = !DILocation(line: 788, column: 37, scope: !1374)
!1388 = !DILocation(line: 789, column: 11, scope: !1374)
!1389 = !DILocation(line: 791, column: 43, scope: !1374)
!1390 = !DILocation(line: 791, column: 53, scope: !1374)
!1391 = !DILocation(line: 791, column: 60, scope: !1374)
!1392 = !DILocation(line: 792, column: 43, scope: !1374)
!1393 = !DILocation(line: 792, column: 58, scope: !1374)
!1394 = !DILocation(line: 790, column: 14, scope: !1374)
!1395 = !DILocation(line: 793, column: 9, scope: !1374)
!1396 = !DILocation(line: 794, column: 3, scope: !1374)
!1397 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !250, file: !250, line: 256, type: !1398, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1402)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!75, !16, !75, !18, !75, !252, !20, !1400, !18, !18}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1427, !1428, !1429, !1430, !1431, !1434, !1435, !1441, !1444, !1445, !1452, !1455, !1456, !1457, !1458, !1459, !1460}
!1403 = !DILocalVariable(name: "buffer", arg: 1, scope: !1397, file: !250, line: 256, type: !16)
!1404 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1397, file: !250, line: 256, type: !75)
!1405 = !DILocalVariable(name: "arg", arg: 3, scope: !1397, file: !250, line: 257, type: !18)
!1406 = !DILocalVariable(name: "argsize", arg: 4, scope: !1397, file: !250, line: 257, type: !75)
!1407 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1397, file: !250, line: 258, type: !252)
!1408 = !DILocalVariable(name: "flags", arg: 6, scope: !1397, file: !250, line: 258, type: !20)
!1409 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1397, file: !250, line: 259, type: !1400)
!1410 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1397, file: !250, line: 260, type: !18)
!1411 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1397, file: !250, line: 261, type: !18)
!1412 = !DILocalVariable(name: "i", scope: !1397, file: !250, line: 263, type: !75)
!1413 = !DILocalVariable(name: "len", scope: !1397, file: !250, line: 264, type: !75)
!1414 = !DILocalVariable(name: "orig_buffersize", scope: !1397, file: !250, line: 265, type: !75)
!1415 = !DILocalVariable(name: "quote_string", scope: !1397, file: !250, line: 266, type: !18)
!1416 = !DILocalVariable(name: "quote_string_len", scope: !1397, file: !250, line: 267, type: !75)
!1417 = !DILocalVariable(name: "backslash_escapes", scope: !1397, file: !250, line: 268, type: !148)
!1418 = !DILocalVariable(name: "unibyte_locale", scope: !1397, file: !250, line: 269, type: !148)
!1419 = !DILocalVariable(name: "elide_outer_quotes", scope: !1397, file: !250, line: 270, type: !148)
!1420 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1397, file: !250, line: 271, type: !148)
!1421 = !DILocalVariable(name: "encountered_single_quote", scope: !1397, file: !250, line: 272, type: !148)
!1422 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1397, file: !250, line: 273, type: !148)
!1423 = !DILocalVariable(name: "c", scope: !1424, file: !250, line: 402, type: !1316)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !250, line: 401, column: 5)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !250, line: 400, column: 3)
!1426 = distinct !DILexicalBlock(scope: !1397, file: !250, line: 400, column: 3)
!1427 = !DILocalVariable(name: "esc", scope: !1424, file: !250, line: 403, type: !1316)
!1428 = !DILocalVariable(name: "is_right_quote", scope: !1424, file: !250, line: 404, type: !148)
!1429 = !DILocalVariable(name: "escaping", scope: !1424, file: !250, line: 405, type: !148)
!1430 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1424, file: !250, line: 406, type: !148)
!1431 = !DILocalVariable(name: "m", scope: !1432, file: !250, line: 610, type: !75)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 608, column: 11)
!1433 = distinct !DILexicalBlock(scope: !1424, file: !250, line: 426, column: 9)
!1434 = !DILocalVariable(name: "printable", scope: !1432, file: !250, line: 612, type: !148)
!1435 = !DILocalVariable(name: "mbstate", scope: !1436, file: !250, line: 621, type: !1438)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !250, line: 620, column: 15)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !250, line: 614, column: 17)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1439, line: 6, baseType: !1440)
!1439 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !320, line: 21, baseType: !319)
!1441 = !DILocalVariable(name: "w", scope: !1442, file: !250, line: 631, type: !1443)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !250, line: 630, column: 19)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !20)
!1444 = !DILocalVariable(name: "bytes", scope: !1442, file: !250, line: 632, type: !75)
!1445 = !DILocalVariable(name: "j", scope: !1446, file: !250, line: 657, type: !75)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !250, line: 656, column: 27)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !250, line: 654, column: 29)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !250, line: 649, column: 23)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !250, line: 641, column: 30)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !250, line: 636, column: 30)
!1451 = distinct !DILexicalBlock(scope: !1442, file: !250, line: 634, column: 25)
!1452 = !DILocalVariable(name: "ilim", scope: !1453, file: !250, line: 684, type: !75)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !250, line: 681, column: 15)
!1454 = distinct !DILexicalBlock(scope: !1432, file: !250, line: 680, column: 17)
!1455 = !DILabel(scope: !1397, name: "process_input", file: !250, line: 314)
!1456 = !DILabel(scope: !1433, name: "c_and_shell_escape", file: !250, line: 512)
!1457 = !DILabel(scope: !1433, name: "c_escape", file: !250, line: 517)
!1458 = !DILabel(scope: !1424, name: "store_escape", file: !250, line: 719)
!1459 = !DILabel(scope: !1424, name: "store_c", file: !250, line: 722)
!1460 = !DILabel(scope: !1397, name: "force_outer_quoting_style", file: !250, line: 763)
!1461 = !DILocation(line: 0, scope: !1397)
!1462 = !DILocation(line: 269, column: 25, scope: !1397)
!1463 = !DILocation(line: 269, column: 36, scope: !1397)
!1464 = !DILocation(line: 270, column: 8, scope: !1397)
!1465 = !DILocation(line: 0, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 526, column: 15)
!1467 = !DILocation(line: 0, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !250, line: 462, column: 19)
!1469 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 455, column: 13)
!1470 = !DILocation(line: 0, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !250, line: 449, column: 20)
!1472 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 428, column: 15)
!1473 = !DILocation(line: 0, scope: !1436)
!1474 = !DILocation(line: 0, scope: !1442)
!1475 = !DILocation(line: 0, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1424, file: !250, line: 712, column: 11)
!1477 = !DILocation(line: 273, column: 3, scope: !1397)
!1478 = !DILocation(line: 265, column: 10, scope: !1397)
!1479 = !DILocation(line: 266, column: 15, scope: !1397)
!1480 = !DILocation(line: 267, column: 10, scope: !1397)
!1481 = !DILocation(line: 268, column: 8, scope: !1397)
!1482 = !DILocation(line: 271, column: 8, scope: !1397)
!1483 = !DILocation(line: 272, column: 8, scope: !1397)
!1484 = !DILocation(line: 273, column: 8, scope: !1397)
!1485 = !DILocation(line: 314, column: 2, scope: !1397)
!1486 = !DILocation(line: 316, column: 3, scope: !1397)
!1487 = !DILocation(line: 323, column: 11, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1397, file: !250, line: 317, column: 5)
!1489 = !DILocation(line: 323, column: 12, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1488, file: !250, line: 323, column: 11)
!1491 = !DILocation(line: 324, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !250, line: 324, column: 9)
!1493 = distinct !DILexicalBlock(scope: !1490, file: !250, line: 324, column: 9)
!1494 = !DILocation(line: 324, column: 9, scope: !1493)
!1495 = !{!1087, !1087, i64 0}
!1496 = !DILocation(line: 362, column: 26, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !250, line: 340, column: 11)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !250, line: 339, column: 13)
!1499 = distinct !DILexicalBlock(scope: !1488, file: !250, line: 338, column: 7)
!1500 = !DILocation(line: 363, column: 27, scope: !1497)
!1501 = !DILocation(line: 364, column: 11, scope: !1497)
!1502 = !DILocation(line: 365, column: 14, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !250, line: 365, column: 13)
!1504 = !DILocation(line: 365, column: 13, scope: !1499)
!1505 = !DILocation(line: 366, column: 43, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !250, line: 366, column: 11)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !250, line: 366, column: 11)
!1508 = !DILocation(line: 366, column: 11, scope: !1507)
!1509 = !DILocation(line: 367, column: 13, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !250, line: 367, column: 13)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !250, line: 367, column: 13)
!1512 = !DILocation(line: 367, column: 13, scope: !1511)
!1513 = !DILocation(line: 366, column: 70, scope: !1506)
!1514 = distinct !{!1514, !1508, !1515}
!1515 = !DILocation(line: 367, column: 13, scope: !1507)
!1516 = !DILocation(line: 264, column: 10, scope: !1397)
!1517 = !DILocation(line: 370, column: 28, scope: !1499)
!1518 = !DILocation(line: 372, column: 7, scope: !1488)
!1519 = !DILocation(line: 376, column: 7, scope: !1488)
!1520 = !DILocation(line: 379, column: 7, scope: !1488)
!1521 = !DILocation(line: 381, column: 12, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1488, file: !250, line: 381, column: 11)
!1523 = !DILocation(line: 381, column: 11, scope: !1488)
!1524 = !DILocation(line: 386, column: 12, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1488, file: !250, line: 386, column: 11)
!1526 = !DILocation(line: 386, column: 11, scope: !1488)
!1527 = !DILocation(line: 387, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !250, line: 387, column: 9)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !250, line: 387, column: 9)
!1530 = !DILocation(line: 387, column: 9, scope: !1529)
!1531 = !DILocation(line: 394, column: 7, scope: !1488)
!1532 = !DILocation(line: 397, column: 7, scope: !1488)
!1533 = !DILocation(line: 0, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1424, file: !250, line: 408, column: 11)
!1535 = !DILocation(line: 0, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !250, line: 419, column: 15)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !250, line: 418, column: 9)
!1538 = !DILocation(line: 0, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 556, column: 15)
!1540 = !DILocation(line: 0, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 548, column: 15)
!1542 = !DILocation(line: 0, scope: !1447)
!1543 = !DILocation(line: 0, scope: !1454)
!1544 = !DILocation(line: 0, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 509, column: 15)
!1546 = !DILocation(line: 400, column: 8, scope: !1426)
!1547 = !DILocation(line: 0, scope: !1426)
!1548 = !DILocation(line: 400, column: 27, scope: !1425)
!1549 = !DILocation(line: 400, column: 19, scope: !1425)
!1550 = !DILocation(line: 400, column: 41, scope: !1425)
!1551 = !DILocation(line: 400, column: 48, scope: !1425)
!1552 = !DILocation(line: 400, column: 3, scope: !1426)
!1553 = !DILocation(line: 400, column: 60, scope: !1425)
!1554 = !DILocation(line: 0, scope: !1424)
!1555 = !DILocation(line: 409, column: 11, scope: !1534)
!1556 = !DILocation(line: 411, column: 17, scope: !1534)
!1557 = !DILocation(line: 412, column: 39, scope: !1534)
!1558 = !DILocation(line: 416, column: 32, scope: !1534)
!1559 = !DILocation(line: 412, column: 19, scope: !1534)
!1560 = !DILocation(line: 412, column: 15, scope: !1534)
!1561 = !DILocation(line: 417, column: 11, scope: !1534)
!1562 = !DILocation(line: 417, column: 26, scope: !1534)
!1563 = !DILocation(line: 417, column: 14, scope: !1534)
!1564 = !DILocation(line: 417, column: 63, scope: !1534)
!1565 = !DILocation(line: 408, column: 11, scope: !1424)
!1566 = !DILocation(line: 424, column: 11, scope: !1424)
!1567 = !DILocation(line: 425, column: 7, scope: !1424)
!1568 = !DILocation(line: 428, column: 15, scope: !1433)
!1569 = !DILocation(line: 430, column: 15, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !250, line: 430, column: 15)
!1571 = distinct !DILexicalBlock(scope: !1472, file: !250, line: 429, column: 13)
!1572 = !DILocation(line: 430, column: 15, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !250, line: 430, column: 15)
!1574 = !DILocation(line: 430, column: 15, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !250, line: 430, column: 15)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !250, line: 430, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !250, line: 430, column: 15)
!1578 = !DILocation(line: 430, column: 15, scope: !1576)
!1579 = !DILocation(line: 430, column: 15, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !250, line: 430, column: 15)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !250, line: 430, column: 15)
!1582 = !DILocation(line: 430, column: 15, scope: !1581)
!1583 = !DILocation(line: 430, column: 15, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !250, line: 430, column: 15)
!1585 = distinct !DILexicalBlock(scope: !1577, file: !250, line: 430, column: 15)
!1586 = !DILocation(line: 430, column: 15, scope: !1585)
!1587 = !DILocation(line: 430, column: 15, scope: !1577)
!1588 = !DILocation(line: 430, column: 15, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !250, line: 430, column: 15)
!1590 = distinct !DILexicalBlock(scope: !1570, file: !250, line: 430, column: 15)
!1591 = !DILocation(line: 430, column: 15, scope: !1590)
!1592 = !DILocation(line: 438, column: 19, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1571, file: !250, line: 437, column: 19)
!1594 = !DILocation(line: 438, column: 24, scope: !1593)
!1595 = !DILocation(line: 438, column: 28, scope: !1593)
!1596 = !DILocation(line: 438, column: 38, scope: !1593)
!1597 = !DILocation(line: 438, column: 48, scope: !1593)
!1598 = !DILocation(line: 438, column: 59, scope: !1593)
!1599 = !DILocation(line: 440, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !250, line: 440, column: 19)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !250, line: 440, column: 19)
!1602 = distinct !DILexicalBlock(scope: !1593, file: !250, line: 439, column: 17)
!1603 = !DILocation(line: 440, column: 19, scope: !1601)
!1604 = !DILocation(line: 441, column: 19, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !250, line: 441, column: 19)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !250, line: 441, column: 19)
!1607 = !DILocation(line: 441, column: 19, scope: !1606)
!1608 = !DILocation(line: 442, column: 17, scope: !1602)
!1609 = !DILocation(line: 449, column: 20, scope: !1472)
!1610 = !DILocation(line: 454, column: 11, scope: !1433)
!1611 = !DILocation(line: 457, column: 19, scope: !1469)
!1612 = !DILocation(line: 463, column: 19, scope: !1468)
!1613 = !DILocation(line: 463, column: 24, scope: !1468)
!1614 = !DILocation(line: 463, column: 28, scope: !1468)
!1615 = !DILocation(line: 463, column: 38, scope: !1468)
!1616 = !DILocation(line: 463, column: 47, scope: !1468)
!1617 = !DILocation(line: 463, column: 41, scope: !1468)
!1618 = !DILocation(line: 463, column: 52, scope: !1468)
!1619 = !DILocation(line: 462, column: 19, scope: !1469)
!1620 = !DILocation(line: 464, column: 25, scope: !1468)
!1621 = !DILocation(line: 464, column: 17, scope: !1468)
!1622 = !DILocation(line: 471, column: 25, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1468, file: !250, line: 465, column: 19)
!1624 = !DILocation(line: 475, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !250, line: 475, column: 21)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !250, line: 475, column: 21)
!1627 = !DILocation(line: 475, column: 21, scope: !1626)
!1628 = !DILocation(line: 476, column: 21, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !250, line: 476, column: 21)
!1630 = distinct !DILexicalBlock(scope: !1623, file: !250, line: 476, column: 21)
!1631 = !DILocation(line: 476, column: 21, scope: !1630)
!1632 = !DILocation(line: 477, column: 21, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !250, line: 477, column: 21)
!1634 = distinct !DILexicalBlock(scope: !1623, file: !250, line: 477, column: 21)
!1635 = !DILocation(line: 477, column: 21, scope: !1634)
!1636 = !DILocation(line: 478, column: 21, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !250, line: 478, column: 21)
!1638 = distinct !DILexicalBlock(scope: !1623, file: !250, line: 478, column: 21)
!1639 = !DILocation(line: 478, column: 21, scope: !1638)
!1640 = !DILocation(line: 479, column: 21, scope: !1623)
!1641 = !DILocation(line: 492, column: 31, scope: !1433)
!1642 = !DILocation(line: 493, column: 31, scope: !1433)
!1643 = !DILocation(line: 495, column: 31, scope: !1433)
!1644 = !DILocation(line: 496, column: 31, scope: !1433)
!1645 = !DILocation(line: 497, column: 31, scope: !1433)
!1646 = !DILocation(line: 500, column: 15, scope: !1433)
!1647 = !DILocation(line: 502, column: 19, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !250, line: 501, column: 13)
!1649 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 500, column: 15)
!1650 = !DILocation(line: 509, column: 33, scope: !1545)
!1651 = !DILocation(line: 0, scope: !1433)
!1652 = !DILocation(line: 512, column: 9, scope: !1433)
!1653 = !DILocation(line: 514, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 513, column: 15)
!1655 = !DILocation(line: 517, column: 9, scope: !1433)
!1656 = !DILocation(line: 518, column: 15, scope: !1433)
!1657 = !DILocation(line: 526, column: 15, scope: !1433)
!1658 = !DILocation(line: 526, column: 40, scope: !1466)
!1659 = !DILocation(line: 526, column: 47, scope: !1466)
!1660 = !DILocation(line: 526, column: 18, scope: !1466)
!1661 = !DILocation(line: 530, column: 17, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1433, file: !250, line: 530, column: 15)
!1663 = !DILocation(line: 530, column: 15, scope: !1433)
!1664 = !DILocation(line: 535, column: 11, scope: !1433)
!1665 = !DILocation(line: 549, column: 15, scope: !1541)
!1666 = !DILocation(line: 556, column: 15, scope: !1433)
!1667 = !DILocation(line: 558, column: 19, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1539, file: !250, line: 557, column: 13)
!1669 = !DILocation(line: 561, column: 19, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1668, file: !250, line: 561, column: 19)
!1671 = !DILocation(line: 561, column: 35, scope: !1670)
!1672 = !DILocation(line: 561, column: 30, scope: !1670)
!1673 = !DILocation(line: 570, column: 15, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !250, line: 570, column: 15)
!1675 = distinct !DILexicalBlock(scope: !1668, file: !250, line: 570, column: 15)
!1676 = !DILocation(line: 570, column: 15, scope: !1675)
!1677 = !DILocation(line: 571, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !250, line: 571, column: 15)
!1679 = distinct !DILexicalBlock(scope: !1668, file: !250, line: 571, column: 15)
!1680 = !DILocation(line: 571, column: 15, scope: !1679)
!1681 = !DILocation(line: 572, column: 15, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !250, line: 572, column: 15)
!1683 = distinct !DILexicalBlock(scope: !1668, file: !250, line: 572, column: 15)
!1684 = !DILocation(line: 572, column: 15, scope: !1683)
!1685 = !DILocation(line: 574, column: 13, scope: !1668)
!1686 = !DILocation(line: 614, column: 17, scope: !1432)
!1687 = !DILocation(line: 0, scope: !1432)
!1688 = !DILocation(line: 617, column: 29, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1437, file: !250, line: 615, column: 15)
!1690 = !{!1691, !1691, i64 0}
!1691 = !{!"short", !1087, i64 0}
!1692 = !DILocation(line: 617, column: 27, scope: !1689)
!1693 = !DILocation(line: 618, column: 15, scope: !1689)
!1694 = !DILocation(line: 621, column: 17, scope: !1436)
!1695 = !DILocation(line: 621, column: 27, scope: !1436)
!1696 = !DILocalVariable(name: "__dest", arg: 1, scope: !1697, file: !1698, line: 59, type: !73)
!1697 = distinct !DISubprogram(name: "memset", scope: !1698, file: !1698, line: 59, type: !1699, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1701)
!1698 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!73, !73, !20, !75}
!1701 = !{!1696, !1702, !1703}
!1702 = !DILocalVariable(name: "__ch", arg: 2, scope: !1697, file: !1698, line: 59, type: !20)
!1703 = !DILocalVariable(name: "__len", arg: 3, scope: !1697, file: !1698, line: 59, type: !75)
!1704 = !DILocation(line: 0, scope: !1697, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 622, column: 17, scope: !1436)
!1706 = !DILocation(line: 71, column: 10, scope: !1697, inlinedAt: !1705)
!1707 = !DILocation(line: 626, column: 29, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1436, file: !250, line: 626, column: 21)
!1709 = !DILocation(line: 626, column: 21, scope: !1436)
!1710 = !DILocation(line: 627, column: 29, scope: !1708)
!1711 = !DILocation(line: 627, column: 19, scope: !1708)
!1712 = !DILocation(line: 629, column: 17, scope: !1436)
!1713 = !DILocation(line: 624, column: 19, scope: !1436)
!1714 = !DILocation(line: 625, column: 27, scope: !1436)
!1715 = !DILocation(line: 631, column: 21, scope: !1442)
!1716 = !DILocation(line: 632, column: 56, scope: !1442)
!1717 = !DILocation(line: 632, column: 50, scope: !1442)
!1718 = !DILocation(line: 633, column: 53, scope: !1442)
!1719 = !DILocation(line: 632, column: 36, scope: !1442)
!1720 = !DILocation(line: 634, column: 25, scope: !1442)
!1721 = !DILocation(line: 644, column: 38, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1449, file: !250, line: 642, column: 23)
!1723 = !DILocation(line: 644, column: 48, scope: !1722)
!1724 = !DILocation(line: 644, column: 25, scope: !1722)
!1725 = !DILocation(line: 644, column: 51, scope: !1722)
!1726 = !DILocation(line: 645, column: 28, scope: !1722)
!1727 = !DILocation(line: 644, column: 34, scope: !1722)
!1728 = distinct !{!1728, !1724, !1726}
!1729 = !DILocation(line: 658, column: 43, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !250, line: 658, column: 29)
!1731 = distinct !DILexicalBlock(scope: !1446, file: !250, line: 658, column: 29)
!1732 = !DILocation(line: 655, column: 29, scope: !1447)
!1733 = !DILocation(line: 0, scope: !1446)
!1734 = !DILocation(line: 659, column: 49, scope: !1730)
!1735 = !DILocation(line: 659, column: 39, scope: !1730)
!1736 = !DILocation(line: 659, column: 31, scope: !1730)
!1737 = !DILocation(line: 658, column: 53, scope: !1730)
!1738 = !DILocation(line: 658, column: 29, scope: !1731)
!1739 = distinct !{!1739, !1738, !1740}
!1740 = !DILocation(line: 667, column: 33, scope: !1731)
!1741 = !DILocation(line: 674, column: 19, scope: !1436)
!1742 = !DILocation(line: 670, column: 41, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1448, file: !250, line: 670, column: 29)
!1744 = !DILocation(line: 670, column: 31, scope: !1743)
!1745 = !DILocation(line: 670, column: 29, scope: !1448)
!1746 = !DILocation(line: 672, column: 27, scope: !1448)
!1747 = !DILocation(line: 675, column: 26, scope: !1436)
!1748 = !DILocation(line: 675, column: 24, scope: !1436)
!1749 = !DILocation(line: 674, column: 19, scope: !1442)
!1750 = distinct !{!1750, !1712, !1751}
!1751 = !DILocation(line: 675, column: 44, scope: !1436)
!1752 = !DILocation(line: 676, column: 15, scope: !1437)
!1753 = !DILocation(line: 0, scope: !1437)
!1754 = !DILocation(line: 678, column: 40, scope: !1432)
!1755 = !DILocation(line: 680, column: 19, scope: !1454)
!1756 = !DILocation(line: 680, column: 45, scope: !1454)
!1757 = !DILocation(line: 680, column: 23, scope: !1454)
!1758 = !DILocation(line: 684, column: 33, scope: !1453)
!1759 = !DILocation(line: 0, scope: !1453)
!1760 = !DILocation(line: 686, column: 17, scope: !1453)
!1761 = !DILocation(line: 405, column: 12, scope: !1424)
!1762 = !DILocation(line: 688, column: 43, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !250, line: 688, column: 25)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !250, line: 687, column: 19)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !250, line: 686, column: 17)
!1766 = distinct !DILexicalBlock(scope: !1453, file: !250, line: 686, column: 17)
!1767 = !DILocation(line: 690, column: 25, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !250, line: 690, column: 25)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !250, line: 689, column: 23)
!1770 = !DILocation(line: 690, column: 25, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !250, line: 690, column: 25)
!1772 = !DILocation(line: 690, column: 25, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !250, line: 690, column: 25)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !250, line: 690, column: 25)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !250, line: 690, column: 25)
!1776 = !DILocation(line: 690, column: 25, scope: !1774)
!1777 = !DILocation(line: 690, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !250, line: 690, column: 25)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !250, line: 690, column: 25)
!1780 = !DILocation(line: 690, column: 25, scope: !1779)
!1781 = !DILocation(line: 690, column: 25, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !250, line: 690, column: 25)
!1783 = distinct !DILexicalBlock(scope: !1775, file: !250, line: 690, column: 25)
!1784 = !DILocation(line: 690, column: 25, scope: !1783)
!1785 = !DILocation(line: 690, column: 25, scope: !1775)
!1786 = !DILocation(line: 690, column: 25, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !250, line: 690, column: 25)
!1788 = distinct !DILexicalBlock(scope: !1768, file: !250, line: 690, column: 25)
!1789 = !DILocation(line: 690, column: 25, scope: !1788)
!1790 = !DILocation(line: 691, column: 25, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !250, line: 691, column: 25)
!1792 = distinct !DILexicalBlock(scope: !1769, file: !250, line: 691, column: 25)
!1793 = !DILocation(line: 691, column: 25, scope: !1792)
!1794 = !DILocation(line: 692, column: 25, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !250, line: 692, column: 25)
!1796 = distinct !DILexicalBlock(scope: !1769, file: !250, line: 692, column: 25)
!1797 = !DILocation(line: 692, column: 25, scope: !1796)
!1798 = !DILocation(line: 693, column: 38, scope: !1769)
!1799 = !DILocation(line: 693, column: 33, scope: !1769)
!1800 = !DILocation(line: 694, column: 23, scope: !1769)
!1801 = !DILocation(line: 695, column: 30, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1763, file: !250, line: 695, column: 30)
!1803 = !DILocation(line: 695, column: 30, scope: !1763)
!1804 = !DILocation(line: 697, column: 25, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !250, line: 697, column: 25)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !250, line: 697, column: 25)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !250, line: 696, column: 23)
!1808 = !DILocation(line: 697, column: 25, scope: !1806)
!1809 = !DILocation(line: 699, column: 23, scope: !1807)
!1810 = !DILocation(line: 700, column: 35, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1764, file: !250, line: 700, column: 25)
!1812 = !DILocation(line: 700, column: 30, scope: !1811)
!1813 = !DILocation(line: 700, column: 25, scope: !1764)
!1814 = !DILocation(line: 702, column: 21, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !250, line: 702, column: 21)
!1816 = distinct !DILexicalBlock(scope: !1764, file: !250, line: 702, column: 21)
!1817 = !DILocation(line: 702, column: 21, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !250, line: 702, column: 21)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !250, line: 702, column: 21)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !250, line: 702, column: 21)
!1821 = !DILocation(line: 702, column: 21, scope: !1819)
!1822 = !DILocation(line: 702, column: 21, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !250, line: 702, column: 21)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !250, line: 702, column: 21)
!1825 = !DILocation(line: 702, column: 21, scope: !1824)
!1826 = !DILocation(line: 702, column: 21, scope: !1820)
!1827 = !DILocation(line: 0, scope: !1764)
!1828 = !DILocation(line: 703, column: 21, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !250, line: 703, column: 21)
!1830 = distinct !DILexicalBlock(scope: !1764, file: !250, line: 703, column: 21)
!1831 = !DILocation(line: 703, column: 21, scope: !1830)
!1832 = !DILocation(line: 704, column: 25, scope: !1764)
!1833 = !DILocation(line: 686, column: 17, scope: !1765)
!1834 = distinct !{!1834, !1835, !1836}
!1835 = !DILocation(line: 686, column: 17, scope: !1766)
!1836 = !DILocation(line: 705, column: 19, scope: !1766)
!1837 = !DILocation(line: 416, column: 30, scope: !1534)
!1838 = !DILocation(line: 712, column: 34, scope: !1476)
!1839 = !DILocation(line: 715, column: 35, scope: !1476)
!1840 = !DILocation(line: 715, column: 17, scope: !1476)
!1841 = !DILocation(line: 715, column: 47, scope: !1476)
!1842 = !DILocation(line: 715, column: 65, scope: !1476)
!1843 = !DILocation(line: 716, column: 15, scope: !1476)
!1844 = !DILocation(line: 716, column: 11, scope: !1476)
!1845 = !DILocation(line: 712, column: 11, scope: !1424)
!1846 = !DILocation(line: 400, column: 10, scope: !1426)
!1847 = !DILocation(line: 719, column: 5, scope: !1424)
!1848 = !DILocation(line: 720, column: 7, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1424, file: !250, line: 720, column: 7)
!1850 = !DILocation(line: 720, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1849, file: !250, line: 720, column: 7)
!1852 = !DILocation(line: 720, column: 7, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !250, line: 720, column: 7)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !250, line: 720, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !250, line: 720, column: 7)
!1856 = !DILocation(line: 720, column: 7, scope: !1854)
!1857 = !DILocation(line: 720, column: 7, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !250, line: 720, column: 7)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !250, line: 720, column: 7)
!1860 = !DILocation(line: 720, column: 7, scope: !1859)
!1861 = !DILocation(line: 720, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !250, line: 720, column: 7)
!1863 = distinct !DILexicalBlock(scope: !1855, file: !250, line: 720, column: 7)
!1864 = !DILocation(line: 720, column: 7, scope: !1863)
!1865 = !DILocation(line: 720, column: 7, scope: !1855)
!1866 = !DILocation(line: 720, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !250, line: 720, column: 7)
!1868 = distinct !DILexicalBlock(scope: !1849, file: !250, line: 720, column: 7)
!1869 = !DILocation(line: 720, column: 7, scope: !1868)
!1870 = !DILocation(line: 722, column: 5, scope: !1424)
!1871 = !DILocation(line: 723, column: 7, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !250, line: 723, column: 7)
!1873 = distinct !DILexicalBlock(scope: !1424, file: !250, line: 723, column: 7)
!1874 = !DILocation(line: 424, column: 9, scope: !1424)
!1875 = !DILocation(line: 723, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !250, line: 723, column: 7)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !250, line: 723, column: 7)
!1878 = distinct !DILexicalBlock(scope: !1872, file: !250, line: 723, column: 7)
!1879 = !DILocation(line: 723, column: 7, scope: !1877)
!1880 = !DILocation(line: 723, column: 7, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !250, line: 723, column: 7)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !250, line: 723, column: 7)
!1883 = !DILocation(line: 723, column: 7, scope: !1882)
!1884 = !DILocation(line: 723, column: 7, scope: !1878)
!1885 = !DILocation(line: 724, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !250, line: 724, column: 7)
!1887 = distinct !DILexicalBlock(scope: !1424, file: !250, line: 724, column: 7)
!1888 = !DILocation(line: 724, column: 7, scope: !1887)
!1889 = !DILocation(line: 726, column: 13, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1424, file: !250, line: 726, column: 11)
!1891 = !DILocation(line: 726, column: 11, scope: !1424)
!1892 = !DILocation(line: 728, column: 5, scope: !1425)
!1893 = !DILocation(line: 400, column: 75, scope: !1425)
!1894 = !DILocation(line: 400, column: 3, scope: !1425)
!1895 = distinct !{!1895, !1552, !1896}
!1896 = !DILocation(line: 728, column: 5, scope: !1426)
!1897 = !DILocation(line: 730, column: 11, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1397, file: !250, line: 730, column: 7)
!1899 = !DILocation(line: 730, column: 16, scope: !1898)
!1900 = !DILocation(line: 738, column: 51, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1397, file: !250, line: 738, column: 7)
!1902 = !DILocation(line: 739, column: 10, scope: !1901)
!1903 = !DILocation(line: 741, column: 11, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !250, line: 741, column: 11)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !250, line: 740, column: 5)
!1906 = !DILocation(line: 741, column: 11, scope: !1905)
!1907 = !DILocation(line: 742, column: 16, scope: !1904)
!1908 = !DILocation(line: 742, column: 9, scope: !1904)
!1909 = !DILocation(line: 746, column: 18, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !250, line: 746, column: 16)
!1911 = !DILocation(line: 746, column: 32, scope: !1910)
!1912 = !DILocation(line: 746, column: 29, scope: !1910)
!1913 = !DILocation(line: 755, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1397, file: !250, line: 755, column: 7)
!1915 = !DILocation(line: 755, column: 20, scope: !1914)
!1916 = !DILocation(line: 756, column: 12, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !250, line: 756, column: 5)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !250, line: 756, column: 5)
!1919 = !DILocation(line: 756, column: 5, scope: !1918)
!1920 = !DILocation(line: 757, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !250, line: 757, column: 7)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !250, line: 757, column: 7)
!1923 = !DILocation(line: 757, column: 7, scope: !1922)
!1924 = !DILocation(line: 756, column: 39, scope: !1917)
!1925 = distinct !{!1925, !1919, !1926}
!1926 = !DILocation(line: 757, column: 7, scope: !1918)
!1927 = !DILocation(line: 759, column: 11, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1397, file: !250, line: 759, column: 7)
!1929 = !DILocation(line: 759, column: 7, scope: !1397)
!1930 = !DILocation(line: 760, column: 5, scope: !1928)
!1931 = !DILocation(line: 760, column: 17, scope: !1928)
!1932 = !DILocation(line: 763, column: 2, scope: !1397)
!1933 = !DILocation(line: 766, column: 51, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1397, file: !250, line: 766, column: 7)
!1935 = !DILocation(line: 766, column: 21, scope: !1934)
!1936 = !DILocation(line: 770, column: 42, scope: !1397)
!1937 = !DILocation(line: 768, column: 10, scope: !1397)
!1938 = !DILocation(line: 768, column: 3, scope: !1397)
!1939 = !DILocation(line: 772, column: 1, scope: !1397)
!1940 = distinct !DISubprogram(name: "gettext_quote", scope: !250, file: !250, line: 207, type: !1941, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!18, !18, !252}
!1943 = !{!1944, !1945, !1946, !1947}
!1944 = !DILocalVariable(name: "msgid", arg: 1, scope: !1940, file: !250, line: 207, type: !18)
!1945 = !DILocalVariable(name: "s", arg: 2, scope: !1940, file: !250, line: 207, type: !252)
!1946 = !DILocalVariable(name: "translation", scope: !1940, file: !250, line: 209, type: !18)
!1947 = !DILocalVariable(name: "locale_code", scope: !1940, file: !250, line: 210, type: !18)
!1948 = !DILocation(line: 0, scope: !1940)
!1949 = !DILocation(line: 209, column: 29, scope: !1940)
!1950 = !DILocation(line: 212, column: 19, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1940, file: !250, line: 212, column: 7)
!1952 = !DILocation(line: 212, column: 7, scope: !1940)
!1953 = !DILocation(line: 233, column: 17, scope: !1940)
!1954 = !DILocalVariable(name: "s1", arg: 1, scope: !1955, file: !1956, line: 160, type: !18)
!1955 = distinct !DISubprogram(name: "strcaseeq0", scope: !1956, file: !1956, line: 160, type: !1957, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1959)
!1956 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!20, !18, !18, !17, !17, !17, !17, !17, !17, !17, !17, !17}
!1959 = !{!1954, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1960 = !DILocalVariable(name: "s2", arg: 2, scope: !1955, file: !1956, line: 160, type: !18)
!1961 = !DILocalVariable(name: "s20", arg: 3, scope: !1955, file: !1956, line: 160, type: !17)
!1962 = !DILocalVariable(name: "s21", arg: 4, scope: !1955, file: !1956, line: 160, type: !17)
!1963 = !DILocalVariable(name: "s22", arg: 5, scope: !1955, file: !1956, line: 160, type: !17)
!1964 = !DILocalVariable(name: "s23", arg: 6, scope: !1955, file: !1956, line: 160, type: !17)
!1965 = !DILocalVariable(name: "s24", arg: 7, scope: !1955, file: !1956, line: 160, type: !17)
!1966 = !DILocalVariable(name: "s25", arg: 8, scope: !1955, file: !1956, line: 160, type: !17)
!1967 = !DILocalVariable(name: "s26", arg: 9, scope: !1955, file: !1956, line: 160, type: !17)
!1968 = !DILocalVariable(name: "s27", arg: 10, scope: !1955, file: !1956, line: 160, type: !17)
!1969 = !DILocalVariable(name: "s28", arg: 11, scope: !1955, file: !1956, line: 160, type: !17)
!1970 = !DILocation(line: 0, scope: !1955, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 234, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1940, file: !250, line: 234, column: 7)
!1973 = !DILocation(line: 162, column: 7, scope: !1974, inlinedAt: !1971)
!1974 = distinct !DILexicalBlock(scope: !1955, file: !1956, line: 162, column: 7)
!1975 = !DILocalVariable(name: "s1", arg: 1, scope: !1976, file: !1956, line: 146, type: !18)
!1976 = distinct !DISubprogram(name: "strcaseeq1", scope: !1956, file: !1956, line: 146, type: !1977, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1979)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!20, !18, !18, !17, !17, !17, !17, !17, !17, !17, !17}
!1979 = !{!1975, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988}
!1980 = !DILocalVariable(name: "s2", arg: 2, scope: !1976, file: !1956, line: 146, type: !18)
!1981 = !DILocalVariable(name: "s21", arg: 3, scope: !1976, file: !1956, line: 146, type: !17)
!1982 = !DILocalVariable(name: "s22", arg: 4, scope: !1976, file: !1956, line: 146, type: !17)
!1983 = !DILocalVariable(name: "s23", arg: 5, scope: !1976, file: !1956, line: 146, type: !17)
!1984 = !DILocalVariable(name: "s24", arg: 6, scope: !1976, file: !1956, line: 146, type: !17)
!1985 = !DILocalVariable(name: "s25", arg: 7, scope: !1976, file: !1956, line: 146, type: !17)
!1986 = !DILocalVariable(name: "s26", arg: 8, scope: !1976, file: !1956, line: 146, type: !17)
!1987 = !DILocalVariable(name: "s27", arg: 9, scope: !1976, file: !1956, line: 146, type: !17)
!1988 = !DILocalVariable(name: "s28", arg: 10, scope: !1976, file: !1956, line: 146, type: !17)
!1989 = !DILocation(line: 0, scope: !1976, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 167, column: 16, scope: !1991, inlinedAt: !1971)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !1956, line: 164, column: 11)
!1992 = distinct !DILexicalBlock(scope: !1974, file: !1956, line: 163, column: 5)
!1993 = !DILocation(line: 148, column: 7, scope: !1994, inlinedAt: !1990)
!1994 = distinct !DILexicalBlock(scope: !1976, file: !1956, line: 148, column: 7)
!1995 = !DILocalVariable(name: "s1", arg: 1, scope: !1996, file: !1956, line: 132, type: !18)
!1996 = distinct !DISubprogram(name: "strcaseeq2", scope: !1956, file: !1956, line: 132, type: !1997, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!20, !18, !18, !17, !17, !17, !17, !17, !17, !17}
!1999 = !{!1995, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!2000 = !DILocalVariable(name: "s2", arg: 2, scope: !1996, file: !1956, line: 132, type: !18)
!2001 = !DILocalVariable(name: "s22", arg: 3, scope: !1996, file: !1956, line: 132, type: !17)
!2002 = !DILocalVariable(name: "s23", arg: 4, scope: !1996, file: !1956, line: 132, type: !17)
!2003 = !DILocalVariable(name: "s24", arg: 5, scope: !1996, file: !1956, line: 132, type: !17)
!2004 = !DILocalVariable(name: "s25", arg: 6, scope: !1996, file: !1956, line: 132, type: !17)
!2005 = !DILocalVariable(name: "s26", arg: 7, scope: !1996, file: !1956, line: 132, type: !17)
!2006 = !DILocalVariable(name: "s27", arg: 8, scope: !1996, file: !1956, line: 132, type: !17)
!2007 = !DILocalVariable(name: "s28", arg: 9, scope: !1996, file: !1956, line: 132, type: !17)
!2008 = !DILocation(line: 0, scope: !1996, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 153, column: 16, scope: !2010, inlinedAt: !1990)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !1956, line: 150, column: 11)
!2011 = distinct !DILexicalBlock(scope: !1994, file: !1956, line: 149, column: 5)
!2012 = !DILocation(line: 134, column: 7, scope: !2013, inlinedAt: !2009)
!2013 = distinct !DILexicalBlock(scope: !1996, file: !1956, line: 134, column: 7)
!2014 = !DILocalVariable(name: "s1", arg: 1, scope: !2015, file: !1956, line: 118, type: !18)
!2015 = distinct !DISubprogram(name: "strcaseeq3", scope: !1956, file: !1956, line: 118, type: !2016, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!20, !18, !18, !17, !17, !17, !17, !17, !17}
!2018 = !{!2014, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2019 = !DILocalVariable(name: "s2", arg: 2, scope: !2015, file: !1956, line: 118, type: !18)
!2020 = !DILocalVariable(name: "s23", arg: 3, scope: !2015, file: !1956, line: 118, type: !17)
!2021 = !DILocalVariable(name: "s24", arg: 4, scope: !2015, file: !1956, line: 118, type: !17)
!2022 = !DILocalVariable(name: "s25", arg: 5, scope: !2015, file: !1956, line: 118, type: !17)
!2023 = !DILocalVariable(name: "s26", arg: 6, scope: !2015, file: !1956, line: 118, type: !17)
!2024 = !DILocalVariable(name: "s27", arg: 7, scope: !2015, file: !1956, line: 118, type: !17)
!2025 = !DILocalVariable(name: "s28", arg: 8, scope: !2015, file: !1956, line: 118, type: !17)
!2026 = !DILocation(line: 0, scope: !2015, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 139, column: 16, scope: !2028, inlinedAt: !2009)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !1956, line: 136, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2013, file: !1956, line: 135, column: 5)
!2030 = !DILocation(line: 120, column: 7, scope: !2031, inlinedAt: !2027)
!2031 = distinct !DILexicalBlock(scope: !2015, file: !1956, line: 120, column: 7)
!2032 = !DILocation(line: 120, column: 7, scope: !2015, inlinedAt: !2027)
!2033 = !DILocalVariable(name: "s1", arg: 1, scope: !2034, file: !1956, line: 104, type: !18)
!2034 = distinct !DISubprogram(name: "strcaseeq4", scope: !1956, file: !1956, line: 104, type: !2035, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!20, !18, !18, !17, !17, !17, !17, !17}
!2037 = !{!2033, !2038, !2039, !2040, !2041, !2042, !2043}
!2038 = !DILocalVariable(name: "s2", arg: 2, scope: !2034, file: !1956, line: 104, type: !18)
!2039 = !DILocalVariable(name: "s24", arg: 3, scope: !2034, file: !1956, line: 104, type: !17)
!2040 = !DILocalVariable(name: "s25", arg: 4, scope: !2034, file: !1956, line: 104, type: !17)
!2041 = !DILocalVariable(name: "s26", arg: 5, scope: !2034, file: !1956, line: 104, type: !17)
!2042 = !DILocalVariable(name: "s27", arg: 6, scope: !2034, file: !1956, line: 104, type: !17)
!2043 = !DILocalVariable(name: "s28", arg: 7, scope: !2034, file: !1956, line: 104, type: !17)
!2044 = !DILocation(line: 0, scope: !2034, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 125, column: 16, scope: !2046, inlinedAt: !2027)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1956, line: 122, column: 11)
!2047 = distinct !DILexicalBlock(scope: !2031, file: !1956, line: 121, column: 5)
!2048 = !DILocation(line: 106, column: 7, scope: !2049, inlinedAt: !2045)
!2049 = distinct !DILexicalBlock(scope: !2034, file: !1956, line: 106, column: 7)
!2050 = !DILocation(line: 106, column: 7, scope: !2034, inlinedAt: !2045)
!2051 = !DILocalVariable(name: "s1", arg: 1, scope: !2052, file: !1956, line: 90, type: !18)
!2052 = distinct !DISubprogram(name: "strcaseeq5", scope: !1956, file: !1956, line: 90, type: !2053, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!20, !18, !18, !17, !17, !17, !17}
!2055 = !{!2051, !2056, !2057, !2058, !2059, !2060}
!2056 = !DILocalVariable(name: "s2", arg: 2, scope: !2052, file: !1956, line: 90, type: !18)
!2057 = !DILocalVariable(name: "s25", arg: 3, scope: !2052, file: !1956, line: 90, type: !17)
!2058 = !DILocalVariable(name: "s26", arg: 4, scope: !2052, file: !1956, line: 90, type: !17)
!2059 = !DILocalVariable(name: "s27", arg: 5, scope: !2052, file: !1956, line: 90, type: !17)
!2060 = !DILocalVariable(name: "s28", arg: 6, scope: !2052, file: !1956, line: 90, type: !17)
!2061 = !DILocation(line: 0, scope: !2052, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 111, column: 16, scope: !2063, inlinedAt: !2045)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !1956, line: 108, column: 11)
!2064 = distinct !DILexicalBlock(scope: !2049, file: !1956, line: 107, column: 5)
!2065 = !DILocation(line: 92, column: 7, scope: !2066, inlinedAt: !2062)
!2066 = distinct !DILexicalBlock(scope: !2052, file: !1956, line: 92, column: 7)
!2067 = !DILocation(line: 92, column: 7, scope: !2052, inlinedAt: !2062)
!2068 = !DILocation(line: 235, column: 12, scope: !1972)
!2069 = !DILocation(line: 235, column: 21, scope: !1972)
!2070 = !DILocation(line: 235, column: 5, scope: !1972)
!2071 = !DILocation(line: 0, scope: !1976, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 167, column: 16, scope: !1991, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 236, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1940, file: !250, line: 236, column: 7)
!2075 = !DILocation(line: 148, column: 7, scope: !1994, inlinedAt: !2072)
!2076 = !DILocation(line: 0, scope: !1996, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 153, column: 16, scope: !2010, inlinedAt: !2072)
!2078 = !DILocation(line: 134, column: 7, scope: !2013, inlinedAt: !2077)
!2079 = !DILocation(line: 134, column: 7, scope: !1996, inlinedAt: !2077)
!2080 = !DILocation(line: 0, scope: !2015, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 139, column: 16, scope: !2028, inlinedAt: !2077)
!2082 = !DILocation(line: 120, column: 7, scope: !2031, inlinedAt: !2081)
!2083 = !DILocation(line: 120, column: 7, scope: !2015, inlinedAt: !2081)
!2084 = !DILocation(line: 0, scope: !2034, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 125, column: 16, scope: !2046, inlinedAt: !2081)
!2086 = !DILocation(line: 106, column: 7, scope: !2049, inlinedAt: !2085)
!2087 = !DILocation(line: 106, column: 7, scope: !2034, inlinedAt: !2085)
!2088 = !DILocation(line: 0, scope: !2052, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 111, column: 16, scope: !2063, inlinedAt: !2085)
!2090 = !DILocation(line: 92, column: 7, scope: !2066, inlinedAt: !2089)
!2091 = !DILocation(line: 92, column: 7, scope: !2052, inlinedAt: !2089)
!2092 = !DILocalVariable(name: "s1", arg: 1, scope: !2093, file: !1956, line: 76, type: !18)
!2093 = distinct !DISubprogram(name: "strcaseeq6", scope: !1956, file: !1956, line: 76, type: !2094, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2096)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!20, !18, !18, !17, !17, !17}
!2096 = !{!2092, !2097, !2098, !2099, !2100}
!2097 = !DILocalVariable(name: "s2", arg: 2, scope: !2093, file: !1956, line: 76, type: !18)
!2098 = !DILocalVariable(name: "s26", arg: 3, scope: !2093, file: !1956, line: 76, type: !17)
!2099 = !DILocalVariable(name: "s27", arg: 4, scope: !2093, file: !1956, line: 76, type: !17)
!2100 = !DILocalVariable(name: "s28", arg: 5, scope: !2093, file: !1956, line: 76, type: !17)
!2101 = !DILocation(line: 0, scope: !2093, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 97, column: 16, scope: !2103, inlinedAt: !2089)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !1956, line: 94, column: 11)
!2104 = distinct !DILexicalBlock(scope: !2066, file: !1956, line: 93, column: 5)
!2105 = !DILocation(line: 78, column: 7, scope: !2106, inlinedAt: !2102)
!2106 = distinct !DILexicalBlock(scope: !2093, file: !1956, line: 78, column: 7)
!2107 = !DILocation(line: 78, column: 7, scope: !2093, inlinedAt: !2102)
!2108 = !DILocalVariable(name: "s1", arg: 1, scope: !2109, file: !1956, line: 62, type: !18)
!2109 = distinct !DISubprogram(name: "strcaseeq7", scope: !1956, file: !1956, line: 62, type: !2110, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!20, !18, !18, !17, !17}
!2112 = !{!2108, !2113, !2114, !2115}
!2113 = !DILocalVariable(name: "s2", arg: 2, scope: !2109, file: !1956, line: 62, type: !18)
!2114 = !DILocalVariable(name: "s27", arg: 3, scope: !2109, file: !1956, line: 62, type: !17)
!2115 = !DILocalVariable(name: "s28", arg: 4, scope: !2109, file: !1956, line: 62, type: !17)
!2116 = !DILocation(line: 0, scope: !2109, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 83, column: 16, scope: !2118, inlinedAt: !2102)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !1956, line: 80, column: 11)
!2119 = distinct !DILexicalBlock(scope: !2106, file: !1956, line: 79, column: 5)
!2120 = !DILocation(line: 64, column: 7, scope: !2121, inlinedAt: !2117)
!2121 = distinct !DILexicalBlock(scope: !2109, file: !1956, line: 64, column: 7)
!2122 = !DILocation(line: 236, column: 7, scope: !1940)
!2123 = !DILocation(line: 237, column: 12, scope: !2074)
!2124 = !DILocation(line: 237, column: 21, scope: !2074)
!2125 = !DILocation(line: 237, column: 5, scope: !2074)
!2126 = !DILocation(line: 239, column: 13, scope: !1940)
!2127 = !DILocation(line: 239, column: 11, scope: !1940)
!2128 = !DILocation(line: 239, column: 3, scope: !1940)
!2129 = !DILocation(line: 240, column: 1, scope: !1940)
!2130 = distinct !DISubprogram(name: "quotearg_alloc", scope: !250, file: !250, line: 799, type: !2131, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!16, !18, !75, !296}
!2133 = !{!2134, !2135, !2136}
!2134 = !DILocalVariable(name: "arg", arg: 1, scope: !2130, file: !250, line: 799, type: !18)
!2135 = !DILocalVariable(name: "argsize", arg: 2, scope: !2130, file: !250, line: 799, type: !75)
!2136 = !DILocalVariable(name: "o", arg: 3, scope: !2130, file: !250, line: 800, type: !296)
!2137 = !DILocation(line: 0, scope: !2130)
!2138 = !DILocalVariable(name: "arg", arg: 1, scope: !2139, file: !250, line: 812, type: !18)
!2139 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !250, file: !250, line: 812, type: !2140, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!16, !18, !75, !444, !296}
!2142 = !{!2138, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150}
!2143 = !DILocalVariable(name: "argsize", arg: 2, scope: !2139, file: !250, line: 812, type: !75)
!2144 = !DILocalVariable(name: "size", arg: 3, scope: !2139, file: !250, line: 812, type: !444)
!2145 = !DILocalVariable(name: "o", arg: 4, scope: !2139, file: !250, line: 813, type: !296)
!2146 = !DILocalVariable(name: "p", scope: !2139, file: !250, line: 815, type: !296)
!2147 = !DILocalVariable(name: "e", scope: !2139, file: !250, line: 816, type: !20)
!2148 = !DILocalVariable(name: "flags", scope: !2139, file: !250, line: 818, type: !20)
!2149 = !DILocalVariable(name: "bufsize", scope: !2139, file: !250, line: 819, type: !75)
!2150 = !DILocalVariable(name: "buf", scope: !2139, file: !250, line: 823, type: !16)
!2151 = !DILocation(line: 0, scope: !2139, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 802, column: 10, scope: !2130)
!2153 = !DILocation(line: 815, column: 37, scope: !2139, inlinedAt: !2152)
!2154 = !DILocation(line: 816, column: 11, scope: !2139, inlinedAt: !2152)
!2155 = !DILocation(line: 818, column: 18, scope: !2139, inlinedAt: !2152)
!2156 = !DILocation(line: 818, column: 24, scope: !2139, inlinedAt: !2152)
!2157 = !DILocation(line: 819, column: 69, scope: !2139, inlinedAt: !2152)
!2158 = !DILocation(line: 820, column: 53, scope: !2139, inlinedAt: !2152)
!2159 = !DILocation(line: 821, column: 49, scope: !2139, inlinedAt: !2152)
!2160 = !DILocation(line: 822, column: 49, scope: !2139, inlinedAt: !2152)
!2161 = !DILocation(line: 819, column: 20, scope: !2139, inlinedAt: !2152)
!2162 = !DILocation(line: 822, column: 62, scope: !2139, inlinedAt: !2152)
!2163 = !DILocalVariable(name: "n", arg: 1, scope: !2164, file: !287, line: 216, type: !75)
!2164 = distinct !DISubprogram(name: "xcharalloc", scope: !287, file: !287, line: 216, type: !2165, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!16, !75}
!2167 = !{!2163}
!2168 = !DILocation(line: 0, scope: !2164, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 823, column: 15, scope: !2139, inlinedAt: !2152)
!2170 = !DILocation(line: 218, column: 10, scope: !2164, inlinedAt: !2169)
!2171 = !DILocation(line: 824, column: 60, scope: !2139, inlinedAt: !2152)
!2172 = !DILocation(line: 826, column: 32, scope: !2139, inlinedAt: !2152)
!2173 = !DILocation(line: 826, column: 47, scope: !2139, inlinedAt: !2152)
!2174 = !DILocation(line: 824, column: 3, scope: !2139, inlinedAt: !2152)
!2175 = !DILocation(line: 827, column: 9, scope: !2139, inlinedAt: !2152)
!2176 = !DILocation(line: 802, column: 3, scope: !2130)
!2177 = !DILocation(line: 0, scope: !2139)
!2178 = !DILocation(line: 815, column: 37, scope: !2139)
!2179 = !DILocation(line: 816, column: 11, scope: !2139)
!2180 = !DILocation(line: 818, column: 18, scope: !2139)
!2181 = !DILocation(line: 818, column: 27, scope: !2139)
!2182 = !DILocation(line: 818, column: 24, scope: !2139)
!2183 = !DILocation(line: 819, column: 69, scope: !2139)
!2184 = !DILocation(line: 820, column: 53, scope: !2139)
!2185 = !DILocation(line: 821, column: 49, scope: !2139)
!2186 = !DILocation(line: 822, column: 49, scope: !2139)
!2187 = !DILocation(line: 819, column: 20, scope: !2139)
!2188 = !DILocation(line: 822, column: 62, scope: !2139)
!2189 = !DILocation(line: 0, scope: !2164, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 823, column: 15, scope: !2139)
!2191 = !DILocation(line: 218, column: 10, scope: !2164, inlinedAt: !2190)
!2192 = !DILocation(line: 824, column: 60, scope: !2139)
!2193 = !DILocation(line: 826, column: 32, scope: !2139)
!2194 = !DILocation(line: 826, column: 47, scope: !2139)
!2195 = !DILocation(line: 824, column: 3, scope: !2139)
!2196 = !DILocation(line: 827, column: 9, scope: !2139)
!2197 = !DILocation(line: 828, column: 7, scope: !2139)
!2198 = !DILocation(line: 829, column: 11, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2139, file: !250, line: 828, column: 7)
!2200 = !{!2201, !2201, i64 0}
!2201 = !{!"long", !1087, i64 0}
!2202 = !DILocation(line: 829, column: 5, scope: !2199)
!2203 = !DILocation(line: 830, column: 3, scope: !2139)
!2204 = distinct !DISubprogram(name: "quotearg_free", scope: !250, file: !250, line: 848, type: !102, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2205)
!2205 = !{!2206, !2207}
!2206 = !DILocalVariable(name: "sv", scope: !2204, file: !250, line: 850, type: !374)
!2207 = !DILocalVariable(name: "i", scope: !2204, file: !250, line: 851, type: !20)
!2208 = !DILocation(line: 850, column: 24, scope: !2204)
!2209 = !DILocation(line: 0, scope: !2204)
!2210 = !DILocation(line: 852, column: 19, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !250, line: 852, column: 3)
!2212 = distinct !DILexicalBlock(scope: !2204, file: !250, line: 852, column: 3)
!2213 = !DILocation(line: 852, column: 17, scope: !2211)
!2214 = !DILocation(line: 852, column: 3, scope: !2212)
!2215 = !DILocation(line: 853, column: 17, scope: !2211)
!2216 = !{!2217, !1086, i64 8}
!2217 = !{!"slotvec", !2201, i64 0, !1086, i64 8}
!2218 = !DILocation(line: 853, column: 5, scope: !2211)
!2219 = !DILocation(line: 852, column: 28, scope: !2211)
!2220 = distinct !{!2220, !2214, !2221}
!2221 = !DILocation(line: 853, column: 20, scope: !2212)
!2222 = !DILocation(line: 854, column: 13, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2204, file: !250, line: 854, column: 7)
!2224 = !DILocation(line: 854, column: 17, scope: !2223)
!2225 = !DILocation(line: 854, column: 7, scope: !2204)
!2226 = !DILocation(line: 856, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !250, line: 855, column: 5)
!2228 = !DILocation(line: 857, column: 21, scope: !2227)
!2229 = !{!2217, !2201, i64 0}
!2230 = !DILocation(line: 858, column: 20, scope: !2227)
!2231 = !DILocation(line: 859, column: 5, scope: !2227)
!2232 = !DILocation(line: 860, column: 10, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2204, file: !250, line: 860, column: 7)
!2234 = !DILocation(line: 860, column: 7, scope: !2204)
!2235 = !DILocation(line: 862, column: 13, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !250, line: 861, column: 5)
!2237 = !DILocation(line: 862, column: 7, scope: !2236)
!2238 = !DILocation(line: 863, column: 15, scope: !2236)
!2239 = !DILocation(line: 864, column: 5, scope: !2236)
!2240 = !DILocation(line: 865, column: 10, scope: !2204)
!2241 = !DILocation(line: 866, column: 1, scope: !2204)
!2242 = distinct !DISubprogram(name: "quotearg_n", scope: !250, file: !250, line: 931, type: !89, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2243)
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "n", arg: 1, scope: !2242, file: !250, line: 931, type: !20)
!2245 = !DILocalVariable(name: "arg", arg: 2, scope: !2242, file: !250, line: 931, type: !18)
!2246 = !DILocation(line: 0, scope: !2242)
!2247 = !DILocation(line: 933, column: 10, scope: !2242)
!2248 = !DILocation(line: 933, column: 3, scope: !2242)
!2249 = distinct !DISubprogram(name: "quotearg_n_options", scope: !250, file: !250, line: 877, type: !2250, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!16, !20, !18, !75, !296}
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2262, !2263, !2265, !2266, !2267}
!2253 = !DILocalVariable(name: "n", arg: 1, scope: !2249, file: !250, line: 877, type: !20)
!2254 = !DILocalVariable(name: "arg", arg: 2, scope: !2249, file: !250, line: 877, type: !18)
!2255 = !DILocalVariable(name: "argsize", arg: 3, scope: !2249, file: !250, line: 877, type: !75)
!2256 = !DILocalVariable(name: "options", arg: 4, scope: !2249, file: !250, line: 878, type: !296)
!2257 = !DILocalVariable(name: "e", scope: !2249, file: !250, line: 880, type: !20)
!2258 = !DILocalVariable(name: "sv", scope: !2249, file: !250, line: 882, type: !374)
!2259 = !DILocalVariable(name: "preallocated", scope: !2260, file: !250, line: 889, type: !148)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !250, line: 888, column: 5)
!2261 = distinct !DILexicalBlock(scope: !2249, file: !250, line: 887, column: 7)
!2262 = !DILocalVariable(name: "nmax", scope: !2260, file: !250, line: 890, type: !20)
!2263 = !DILocalVariable(name: "size", scope: !2264, file: !250, line: 903, type: !75)
!2264 = distinct !DILexicalBlock(scope: !2249, file: !250, line: 902, column: 3)
!2265 = !DILocalVariable(name: "val", scope: !2264, file: !250, line: 904, type: !16)
!2266 = !DILocalVariable(name: "flags", scope: !2264, file: !250, line: 906, type: !20)
!2267 = !DILocalVariable(name: "qsize", scope: !2264, file: !250, line: 907, type: !75)
!2268 = !DILocation(line: 0, scope: !2249)
!2269 = !DILocation(line: 880, column: 11, scope: !2249)
!2270 = !DILocation(line: 882, column: 24, scope: !2249)
!2271 = !DILocation(line: 884, column: 9, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2249, file: !250, line: 884, column: 7)
!2273 = !DILocation(line: 884, column: 7, scope: !2249)
!2274 = !DILocation(line: 885, column: 5, scope: !2272)
!2275 = !DILocation(line: 887, column: 7, scope: !2261)
!2276 = !DILocation(line: 887, column: 14, scope: !2261)
!2277 = !DILocation(line: 887, column: 7, scope: !2249)
!2278 = !DILocation(line: 889, column: 31, scope: !2260)
!2279 = !DILocation(line: 0, scope: !2260)
!2280 = !DILocation(line: 892, column: 16, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2260, file: !250, line: 892, column: 11)
!2282 = !DILocation(line: 892, column: 11, scope: !2260)
!2283 = !DILocation(line: 893, column: 9, scope: !2281)
!2284 = !DILocation(line: 895, column: 32, scope: !2260)
!2285 = !DILocation(line: 895, column: 61, scope: !2260)
!2286 = !DILocation(line: 895, column: 58, scope: !2260)
!2287 = !DILocation(line: 895, column: 66, scope: !2260)
!2288 = !DILocation(line: 895, column: 22, scope: !2260)
!2289 = !DILocation(line: 895, column: 15, scope: !2260)
!2290 = !DILocation(line: 896, column: 11, scope: !2260)
!2291 = !DILocation(line: 897, column: 15, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2260, file: !250, line: 896, column: 11)
!2293 = !{i64 0, i64 8, !2200, i64 8, i64 8, !1085}
!2294 = !DILocation(line: 897, column: 9, scope: !2292)
!2295 = !DILocation(line: 898, column: 20, scope: !2260)
!2296 = !DILocation(line: 898, column: 18, scope: !2260)
!2297 = !DILocation(line: 898, column: 15, scope: !2260)
!2298 = !DILocation(line: 898, column: 38, scope: !2260)
!2299 = !DILocation(line: 898, column: 31, scope: !2260)
!2300 = !DILocation(line: 898, column: 48, scope: !2260)
!2301 = !DILocation(line: 0, scope: !1697, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 898, column: 7, scope: !2260)
!2303 = !DILocation(line: 71, column: 10, scope: !1697, inlinedAt: !2302)
!2304 = !DILocation(line: 899, column: 14, scope: !2260)
!2305 = !DILocation(line: 900, column: 5, scope: !2260)
!2306 = !DILocation(line: 903, column: 19, scope: !2264)
!2307 = !DILocation(line: 903, column: 25, scope: !2264)
!2308 = !DILocation(line: 0, scope: !2264)
!2309 = !DILocation(line: 904, column: 23, scope: !2264)
!2310 = !DILocation(line: 906, column: 26, scope: !2264)
!2311 = !DILocation(line: 906, column: 32, scope: !2264)
!2312 = !DILocation(line: 908, column: 55, scope: !2264)
!2313 = !DILocation(line: 909, column: 46, scope: !2264)
!2314 = !DILocation(line: 910, column: 55, scope: !2264)
!2315 = !DILocation(line: 911, column: 55, scope: !2264)
!2316 = !DILocation(line: 907, column: 20, scope: !2264)
!2317 = !DILocation(line: 913, column: 14, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2264, file: !250, line: 913, column: 9)
!2319 = !DILocation(line: 913, column: 9, scope: !2264)
!2320 = !DILocation(line: 915, column: 35, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !250, line: 914, column: 7)
!2322 = !DILocation(line: 915, column: 20, scope: !2321)
!2323 = !DILocation(line: 916, column: 17, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !250, line: 916, column: 13)
!2325 = !DILocation(line: 916, column: 13, scope: !2321)
!2326 = !DILocation(line: 917, column: 11, scope: !2324)
!2327 = !DILocation(line: 0, scope: !2164, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 918, column: 27, scope: !2321)
!2329 = !DILocation(line: 218, column: 10, scope: !2164, inlinedAt: !2328)
!2330 = !DILocation(line: 918, column: 19, scope: !2321)
!2331 = !DILocation(line: 919, column: 69, scope: !2321)
!2332 = !DILocation(line: 921, column: 44, scope: !2321)
!2333 = !DILocation(line: 922, column: 44, scope: !2321)
!2334 = !DILocation(line: 919, column: 9, scope: !2321)
!2335 = !DILocation(line: 923, column: 7, scope: !2321)
!2336 = !DILocation(line: 925, column: 11, scope: !2264)
!2337 = !DILocation(line: 926, column: 5, scope: !2264)
!2338 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !250, file: !250, line: 937, type: !2339, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!16, !20, !18, !75}
!2341 = !{!2342, !2343, !2344}
!2342 = !DILocalVariable(name: "n", arg: 1, scope: !2338, file: !250, line: 937, type: !20)
!2343 = !DILocalVariable(name: "arg", arg: 2, scope: !2338, file: !250, line: 937, type: !18)
!2344 = !DILocalVariable(name: "argsize", arg: 3, scope: !2338, file: !250, line: 937, type: !75)
!2345 = !DILocation(line: 0, scope: !2338)
!2346 = !DILocation(line: 939, column: 10, scope: !2338)
!2347 = !DILocation(line: 939, column: 3, scope: !2338)
!2348 = distinct !DISubprogram(name: "quotearg", scope: !250, file: !250, line: 943, type: !95, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2349)
!2349 = !{!2350}
!2350 = !DILocalVariable(name: "arg", arg: 1, scope: !2348, file: !250, line: 943, type: !18)
!2351 = !DILocation(line: 0, scope: !2348)
!2352 = !DILocation(line: 0, scope: !2242, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 945, column: 10, scope: !2348)
!2354 = !DILocation(line: 933, column: 10, scope: !2242, inlinedAt: !2353)
!2355 = !DILocation(line: 945, column: 3, scope: !2348)
!2356 = distinct !DISubprogram(name: "quotearg_mem", scope: !250, file: !250, line: 949, type: !2357, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!16, !18, !75}
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "arg", arg: 1, scope: !2356, file: !250, line: 949, type: !18)
!2361 = !DILocalVariable(name: "argsize", arg: 2, scope: !2356, file: !250, line: 949, type: !75)
!2362 = !DILocation(line: 0, scope: !2356)
!2363 = !DILocation(line: 0, scope: !2338, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 951, column: 10, scope: !2356)
!2365 = !DILocation(line: 939, column: 10, scope: !2338, inlinedAt: !2364)
!2366 = !DILocation(line: 951, column: 3, scope: !2356)
!2367 = distinct !DISubprogram(name: "quotearg_n_style", scope: !250, file: !250, line: 955, type: !2368, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!16, !20, !252, !18}
!2370 = !{!2371, !2372, !2373, !2374}
!2371 = !DILocalVariable(name: "n", arg: 1, scope: !2367, file: !250, line: 955, type: !20)
!2372 = !DILocalVariable(name: "s", arg: 2, scope: !2367, file: !250, line: 955, type: !252)
!2373 = !DILocalVariable(name: "arg", arg: 3, scope: !2367, file: !250, line: 955, type: !18)
!2374 = !DILocalVariable(name: "o", scope: !2367, file: !250, line: 957, type: !297)
!2375 = !DILocation(line: 0, scope: !2367)
!2376 = !DILocation(line: 957, column: 3, scope: !2367)
!2377 = !DILocation(line: 957, column: 32, scope: !2367)
!2378 = !DILocalVariable(name: "style", arg: 1, scope: !2379, file: !250, line: 193, type: !252)
!2379 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !250, file: !250, line: 193, type: !2380, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!298, !252}
!2382 = !{!2378, !2383}
!2383 = !DILocalVariable(name: "o", scope: !2379, file: !250, line: 195, type: !298)
!2384 = !DILocation(line: 0, scope: !2379, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 957, column: 36, scope: !2367)
!2386 = !DILocation(line: 195, column: 26, scope: !2379, inlinedAt: !2385)
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"quoting_options_from_style: argument 0"}
!2389 = distinct !{!2389, !"quoting_options_from_style"}
!2390 = !DILocation(line: 196, column: 13, scope: !2391, inlinedAt: !2385)
!2391 = distinct !DILexicalBlock(scope: !2379, file: !250, line: 196, column: 7)
!2392 = !DILocation(line: 196, column: 7, scope: !2379, inlinedAt: !2385)
!2393 = !DILocation(line: 197, column: 5, scope: !2391, inlinedAt: !2385)
!2394 = !DILocation(line: 198, column: 5, scope: !2379, inlinedAt: !2385)
!2395 = !DILocation(line: 198, column: 11, scope: !2379, inlinedAt: !2385)
!2396 = !DILocation(line: 958, column: 10, scope: !2367)
!2397 = !DILocation(line: 959, column: 1, scope: !2367)
!2398 = !DILocation(line: 958, column: 3, scope: !2367)
!2399 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !250, file: !250, line: 962, type: !2400, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!16, !20, !252, !18, !75}
!2402 = !{!2403, !2404, !2405, !2406, !2407}
!2403 = !DILocalVariable(name: "n", arg: 1, scope: !2399, file: !250, line: 962, type: !20)
!2404 = !DILocalVariable(name: "s", arg: 2, scope: !2399, file: !250, line: 962, type: !252)
!2405 = !DILocalVariable(name: "arg", arg: 3, scope: !2399, file: !250, line: 963, type: !18)
!2406 = !DILocalVariable(name: "argsize", arg: 4, scope: !2399, file: !250, line: 963, type: !75)
!2407 = !DILocalVariable(name: "o", scope: !2399, file: !250, line: 965, type: !297)
!2408 = !DILocation(line: 0, scope: !2399)
!2409 = !DILocation(line: 965, column: 3, scope: !2399)
!2410 = !DILocation(line: 965, column: 32, scope: !2399)
!2411 = !DILocation(line: 0, scope: !2379, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 965, column: 36, scope: !2399)
!2413 = !DILocation(line: 195, column: 26, scope: !2379, inlinedAt: !2412)
!2414 = !{!2415}
!2415 = distinct !{!2415, !2416, !"quoting_options_from_style: argument 0"}
!2416 = distinct !{!2416, !"quoting_options_from_style"}
!2417 = !DILocation(line: 196, column: 13, scope: !2391, inlinedAt: !2412)
!2418 = !DILocation(line: 196, column: 7, scope: !2379, inlinedAt: !2412)
!2419 = !DILocation(line: 197, column: 5, scope: !2391, inlinedAt: !2412)
!2420 = !DILocation(line: 198, column: 5, scope: !2379, inlinedAt: !2412)
!2421 = !DILocation(line: 198, column: 11, scope: !2379, inlinedAt: !2412)
!2422 = !DILocation(line: 966, column: 10, scope: !2399)
!2423 = !DILocation(line: 967, column: 1, scope: !2399)
!2424 = !DILocation(line: 966, column: 3, scope: !2399)
!2425 = distinct !DISubprogram(name: "quotearg_style", scope: !250, file: !250, line: 970, type: !2426, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!16, !252, !18}
!2428 = !{!2429, !2430}
!2429 = !DILocalVariable(name: "s", arg: 1, scope: !2425, file: !250, line: 970, type: !252)
!2430 = !DILocalVariable(name: "arg", arg: 2, scope: !2425, file: !250, line: 970, type: !18)
!2431 = !DILocation(line: 195, column: 26, scope: !2379, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 957, column: 36, scope: !2367, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 972, column: 10, scope: !2425)
!2434 = !DILocation(line: 957, column: 32, scope: !2367, inlinedAt: !2433)
!2435 = !DILocation(line: 0, scope: !2425)
!2436 = !DILocation(line: 0, scope: !2367, inlinedAt: !2433)
!2437 = !DILocation(line: 957, column: 3, scope: !2367, inlinedAt: !2433)
!2438 = !DILocation(line: 0, scope: !2379, inlinedAt: !2432)
!2439 = !{!2440}
!2440 = distinct !{!2440, !2441, !"quoting_options_from_style: argument 0"}
!2441 = distinct !{!2441, !"quoting_options_from_style"}
!2442 = !DILocation(line: 196, column: 13, scope: !2391, inlinedAt: !2432)
!2443 = !DILocation(line: 196, column: 7, scope: !2379, inlinedAt: !2432)
!2444 = !DILocation(line: 197, column: 5, scope: !2391, inlinedAt: !2432)
!2445 = !DILocation(line: 198, column: 5, scope: !2379, inlinedAt: !2432)
!2446 = !DILocation(line: 198, column: 11, scope: !2379, inlinedAt: !2432)
!2447 = !DILocation(line: 958, column: 10, scope: !2367, inlinedAt: !2433)
!2448 = !DILocation(line: 959, column: 1, scope: !2367, inlinedAt: !2433)
!2449 = !DILocation(line: 972, column: 3, scope: !2425)
!2450 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !250, file: !250, line: 976, type: !2451, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!16, !252, !18, !75}
!2453 = !{!2454, !2455, !2456}
!2454 = !DILocalVariable(name: "s", arg: 1, scope: !2450, file: !250, line: 976, type: !252)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !250, line: 976, type: !18)
!2456 = !DILocalVariable(name: "argsize", arg: 3, scope: !2450, file: !250, line: 976, type: !75)
!2457 = !DILocation(line: 195, column: 26, scope: !2379, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 965, column: 36, scope: !2399, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 978, column: 10, scope: !2450)
!2460 = !DILocation(line: 965, column: 32, scope: !2399, inlinedAt: !2459)
!2461 = !DILocation(line: 0, scope: !2450)
!2462 = !DILocation(line: 0, scope: !2399, inlinedAt: !2459)
!2463 = !DILocation(line: 965, column: 3, scope: !2399, inlinedAt: !2459)
!2464 = !DILocation(line: 0, scope: !2379, inlinedAt: !2458)
!2465 = !{!2466}
!2466 = distinct !{!2466, !2467, !"quoting_options_from_style: argument 0"}
!2467 = distinct !{!2467, !"quoting_options_from_style"}
!2468 = !DILocation(line: 196, column: 13, scope: !2391, inlinedAt: !2458)
!2469 = !DILocation(line: 196, column: 7, scope: !2379, inlinedAt: !2458)
!2470 = !DILocation(line: 197, column: 5, scope: !2391, inlinedAt: !2458)
!2471 = !DILocation(line: 198, column: 5, scope: !2379, inlinedAt: !2458)
!2472 = !DILocation(line: 198, column: 11, scope: !2379, inlinedAt: !2458)
!2473 = !DILocation(line: 966, column: 10, scope: !2399, inlinedAt: !2459)
!2474 = !DILocation(line: 967, column: 1, scope: !2399, inlinedAt: !2459)
!2475 = !DILocation(line: 978, column: 3, scope: !2450)
!2476 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !250, file: !250, line: 982, type: !2477, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!16, !18, !75, !17}
!2479 = !{!2480, !2481, !2482, !2483}
!2480 = !DILocalVariable(name: "arg", arg: 1, scope: !2476, file: !250, line: 982, type: !18)
!2481 = !DILocalVariable(name: "argsize", arg: 2, scope: !2476, file: !250, line: 982, type: !75)
!2482 = !DILocalVariable(name: "ch", arg: 3, scope: !2476, file: !250, line: 982, type: !17)
!2483 = !DILocalVariable(name: "options", scope: !2476, file: !250, line: 984, type: !298)
!2484 = !DILocation(line: 0, scope: !2476)
!2485 = !DILocation(line: 984, column: 3, scope: !2476)
!2486 = !DILocation(line: 984, column: 26, scope: !2476)
!2487 = !DILocation(line: 985, column: 13, scope: !2476)
!2488 = !{i64 0, i64 4, !1495, i64 4, i64 4, !1147, i64 8, i64 32, !1495, i64 40, i64 8, !1085, i64 48, i64 8, !1085}
!2489 = !DILocation(line: 0, scope: !1308, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 986, column: 3, scope: !2476)
!2491 = !DILocation(line: 156, column: 62, scope: !1308, inlinedAt: !2490)
!2492 = !DILocation(line: 156, column: 57, scope: !1308, inlinedAt: !2490)
!2493 = !DILocation(line: 157, column: 15, scope: !1308, inlinedAt: !2490)
!2494 = !DILocation(line: 158, column: 12, scope: !1308, inlinedAt: !2490)
!2495 = !DILocation(line: 158, column: 15, scope: !1308, inlinedAt: !2490)
!2496 = !DILocation(line: 158, column: 25, scope: !1308, inlinedAt: !2490)
!2497 = !DILocation(line: 159, column: 18, scope: !1308, inlinedAt: !2490)
!2498 = !DILocation(line: 159, column: 23, scope: !1308, inlinedAt: !2490)
!2499 = !DILocation(line: 159, column: 6, scope: !1308, inlinedAt: !2490)
!2500 = !DILocation(line: 987, column: 10, scope: !2476)
!2501 = !DILocation(line: 988, column: 1, scope: !2476)
!2502 = !DILocation(line: 987, column: 3, scope: !2476)
!2503 = distinct !DISubprogram(name: "quotearg_char", scope: !250, file: !250, line: 991, type: !2504, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!16, !18, !17}
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "arg", arg: 1, scope: !2503, file: !250, line: 991, type: !18)
!2508 = !DILocalVariable(name: "ch", arg: 2, scope: !2503, file: !250, line: 991, type: !17)
!2509 = !DILocation(line: 984, column: 26, scope: !2476, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 993, column: 10, scope: !2503)
!2511 = !DILocation(line: 0, scope: !2503)
!2512 = !DILocation(line: 0, scope: !2476, inlinedAt: !2510)
!2513 = !DILocation(line: 984, column: 3, scope: !2476, inlinedAt: !2510)
!2514 = !DILocation(line: 985, column: 13, scope: !2476, inlinedAt: !2510)
!2515 = !DILocation(line: 0, scope: !1308, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 986, column: 3, scope: !2476, inlinedAt: !2510)
!2517 = !DILocation(line: 156, column: 62, scope: !1308, inlinedAt: !2516)
!2518 = !DILocation(line: 156, column: 57, scope: !1308, inlinedAt: !2516)
!2519 = !DILocation(line: 157, column: 15, scope: !1308, inlinedAt: !2516)
!2520 = !DILocation(line: 158, column: 12, scope: !1308, inlinedAt: !2516)
!2521 = !DILocation(line: 158, column: 15, scope: !1308, inlinedAt: !2516)
!2522 = !DILocation(line: 158, column: 25, scope: !1308, inlinedAt: !2516)
!2523 = !DILocation(line: 159, column: 18, scope: !1308, inlinedAt: !2516)
!2524 = !DILocation(line: 159, column: 23, scope: !1308, inlinedAt: !2516)
!2525 = !DILocation(line: 159, column: 6, scope: !1308, inlinedAt: !2516)
!2526 = !DILocation(line: 987, column: 10, scope: !2476, inlinedAt: !2510)
!2527 = !DILocation(line: 988, column: 1, scope: !2476, inlinedAt: !2510)
!2528 = !DILocation(line: 993, column: 3, scope: !2503)
!2529 = distinct !DISubprogram(name: "quotearg_colon", scope: !250, file: !250, line: 997, type: !95, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2530)
!2530 = !{!2531}
!2531 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !250, line: 997, type: !18)
!2532 = !DILocation(line: 984, column: 26, scope: !2476, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 993, column: 10, scope: !2503, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 999, column: 10, scope: !2529)
!2535 = !DILocation(line: 0, scope: !2529)
!2536 = !DILocation(line: 0, scope: !2503, inlinedAt: !2534)
!2537 = !DILocation(line: 0, scope: !2476, inlinedAt: !2533)
!2538 = !DILocation(line: 984, column: 3, scope: !2476, inlinedAt: !2533)
!2539 = !DILocation(line: 985, column: 13, scope: !2476, inlinedAt: !2533)
!2540 = !DILocation(line: 0, scope: !1308, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 986, column: 3, scope: !2476, inlinedAt: !2533)
!2542 = !DILocation(line: 156, column: 57, scope: !1308, inlinedAt: !2541)
!2543 = !DILocation(line: 158, column: 12, scope: !1308, inlinedAt: !2541)
!2544 = !DILocation(line: 159, column: 6, scope: !1308, inlinedAt: !2541)
!2545 = !DILocation(line: 987, column: 10, scope: !2476, inlinedAt: !2533)
!2546 = !DILocation(line: 988, column: 1, scope: !2476, inlinedAt: !2533)
!2547 = !DILocation(line: 999, column: 3, scope: !2529)
!2548 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !250, file: !250, line: 1003, type: !2357, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2549)
!2549 = !{!2550, !2551}
!2550 = !DILocalVariable(name: "arg", arg: 1, scope: !2548, file: !250, line: 1003, type: !18)
!2551 = !DILocalVariable(name: "argsize", arg: 2, scope: !2548, file: !250, line: 1003, type: !75)
!2552 = !DILocation(line: 984, column: 26, scope: !2476, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 1005, column: 10, scope: !2548)
!2554 = !DILocation(line: 0, scope: !2548)
!2555 = !DILocation(line: 0, scope: !2476, inlinedAt: !2553)
!2556 = !DILocation(line: 984, column: 3, scope: !2476, inlinedAt: !2553)
!2557 = !DILocation(line: 985, column: 13, scope: !2476, inlinedAt: !2553)
!2558 = !DILocation(line: 0, scope: !1308, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 986, column: 3, scope: !2476, inlinedAt: !2553)
!2560 = !DILocation(line: 156, column: 57, scope: !1308, inlinedAt: !2559)
!2561 = !DILocation(line: 158, column: 12, scope: !1308, inlinedAt: !2559)
!2562 = !DILocation(line: 159, column: 6, scope: !1308, inlinedAt: !2559)
!2563 = !DILocation(line: 987, column: 10, scope: !2476, inlinedAt: !2553)
!2564 = !DILocation(line: 988, column: 1, scope: !2476, inlinedAt: !2553)
!2565 = !DILocation(line: 1005, column: 3, scope: !2548)
!2566 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !250, file: !250, line: 1009, type: !2368, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2567)
!2567 = !{!2568, !2569, !2570, !2571}
!2568 = !DILocalVariable(name: "n", arg: 1, scope: !2566, file: !250, line: 1009, type: !20)
!2569 = !DILocalVariable(name: "s", arg: 2, scope: !2566, file: !250, line: 1009, type: !252)
!2570 = !DILocalVariable(name: "arg", arg: 3, scope: !2566, file: !250, line: 1009, type: !18)
!2571 = !DILocalVariable(name: "options", scope: !2566, file: !250, line: 1011, type: !298)
!2572 = !DILocation(line: 195, column: 26, scope: !2379, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 1012, column: 13, scope: !2566)
!2574 = !DILocation(line: 0, scope: !2566)
!2575 = !DILocation(line: 1011, column: 3, scope: !2566)
!2576 = !DILocation(line: 1011, column: 26, scope: !2566)
!2577 = !DILocation(line: 1012, column: 13, scope: !2566)
!2578 = !DILocation(line: 0, scope: !2379, inlinedAt: !2573)
!2579 = !{!2580}
!2580 = distinct !{!2580, !2581, !"quoting_options_from_style: argument 0"}
!2581 = distinct !{!2581, !"quoting_options_from_style"}
!2582 = !DILocation(line: 196, column: 13, scope: !2391, inlinedAt: !2573)
!2583 = !DILocation(line: 196, column: 7, scope: !2379, inlinedAt: !2573)
!2584 = !DILocation(line: 197, column: 5, scope: !2391, inlinedAt: !2573)
!2585 = !DILocation(line: 0, scope: !1308, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 1013, column: 3, scope: !2566)
!2587 = !DILocation(line: 156, column: 57, scope: !1308, inlinedAt: !2586)
!2588 = !DILocation(line: 158, column: 12, scope: !1308, inlinedAt: !2586)
!2589 = !DILocation(line: 159, column: 6, scope: !1308, inlinedAt: !2586)
!2590 = !DILocation(line: 1014, column: 10, scope: !2566)
!2591 = !DILocation(line: 1015, column: 1, scope: !2566)
!2592 = !DILocation(line: 1014, column: 3, scope: !2566)
!2593 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !250, file: !250, line: 1018, type: !2594, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!16, !20, !18, !18, !18}
!2596 = !{!2597, !2598, !2599, !2600}
!2597 = !DILocalVariable(name: "n", arg: 1, scope: !2593, file: !250, line: 1018, type: !20)
!2598 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2593, file: !250, line: 1018, type: !18)
!2599 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2593, file: !250, line: 1019, type: !18)
!2600 = !DILocalVariable(name: "arg", arg: 4, scope: !2593, file: !250, line: 1019, type: !18)
!2601 = !DILocalVariable(name: "o", scope: !2602, file: !250, line: 1030, type: !298)
!2602 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !250, file: !250, line: 1026, type: !2603, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!16, !20, !18, !18, !18, !75}
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2601}
!2606 = !DILocalVariable(name: "n", arg: 1, scope: !2602, file: !250, line: 1026, type: !20)
!2607 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2602, file: !250, line: 1026, type: !18)
!2608 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2602, file: !250, line: 1027, type: !18)
!2609 = !DILocalVariable(name: "arg", arg: 4, scope: !2602, file: !250, line: 1028, type: !18)
!2610 = !DILocalVariable(name: "argsize", arg: 5, scope: !2602, file: !250, line: 1028, type: !75)
!2611 = !DILocation(line: 1030, column: 26, scope: !2602, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1021, column: 10, scope: !2593)
!2613 = !DILocation(line: 0, scope: !2593)
!2614 = !DILocation(line: 0, scope: !2602, inlinedAt: !2612)
!2615 = !DILocation(line: 1030, column: 3, scope: !2602, inlinedAt: !2612)
!2616 = !DILocation(line: 1030, column: 30, scope: !2602, inlinedAt: !2612)
!2617 = !DILocation(line: 0, scope: !1349, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 1031, column: 3, scope: !2602, inlinedAt: !2612)
!2619 = !DILocation(line: 184, column: 6, scope: !1349, inlinedAt: !2618)
!2620 = !DILocation(line: 184, column: 12, scope: !1349, inlinedAt: !2618)
!2621 = !DILocation(line: 185, column: 8, scope: !1363, inlinedAt: !2618)
!2622 = !DILocation(line: 185, column: 23, scope: !1363, inlinedAt: !2618)
!2623 = !DILocation(line: 185, column: 19, scope: !1363, inlinedAt: !2618)
!2624 = !DILocation(line: 186, column: 5, scope: !1363, inlinedAt: !2618)
!2625 = !DILocation(line: 187, column: 6, scope: !1349, inlinedAt: !2618)
!2626 = !DILocation(line: 187, column: 17, scope: !1349, inlinedAt: !2618)
!2627 = !DILocation(line: 188, column: 6, scope: !1349, inlinedAt: !2618)
!2628 = !DILocation(line: 188, column: 18, scope: !1349, inlinedAt: !2618)
!2629 = !DILocation(line: 1032, column: 10, scope: !2602, inlinedAt: !2612)
!2630 = !DILocation(line: 1033, column: 1, scope: !2602, inlinedAt: !2612)
!2631 = !DILocation(line: 1021, column: 3, scope: !2593)
!2632 = !DILocation(line: 0, scope: !2602)
!2633 = !DILocation(line: 1030, column: 3, scope: !2602)
!2634 = !DILocation(line: 1030, column: 26, scope: !2602)
!2635 = !DILocation(line: 1030, column: 30, scope: !2602)
!2636 = !DILocation(line: 0, scope: !1349, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1031, column: 3, scope: !2602)
!2638 = !DILocation(line: 184, column: 6, scope: !1349, inlinedAt: !2637)
!2639 = !DILocation(line: 184, column: 12, scope: !1349, inlinedAt: !2637)
!2640 = !DILocation(line: 185, column: 8, scope: !1363, inlinedAt: !2637)
!2641 = !DILocation(line: 185, column: 23, scope: !1363, inlinedAt: !2637)
!2642 = !DILocation(line: 185, column: 19, scope: !1363, inlinedAt: !2637)
!2643 = !DILocation(line: 186, column: 5, scope: !1363, inlinedAt: !2637)
!2644 = !DILocation(line: 187, column: 6, scope: !1349, inlinedAt: !2637)
!2645 = !DILocation(line: 187, column: 17, scope: !1349, inlinedAt: !2637)
!2646 = !DILocation(line: 188, column: 6, scope: !1349, inlinedAt: !2637)
!2647 = !DILocation(line: 188, column: 18, scope: !1349, inlinedAt: !2637)
!2648 = !DILocation(line: 1032, column: 10, scope: !2602)
!2649 = !DILocation(line: 1033, column: 1, scope: !2602)
!2650 = !DILocation(line: 1032, column: 3, scope: !2602)
!2651 = distinct !DISubprogram(name: "quotearg_custom", scope: !250, file: !250, line: 1036, type: !2652, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!16, !18, !18, !18}
!2654 = !{!2655, !2656, !2657}
!2655 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2651, file: !250, line: 1036, type: !18)
!2656 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2651, file: !250, line: 1036, type: !18)
!2657 = !DILocalVariable(name: "arg", arg: 3, scope: !2651, file: !250, line: 1037, type: !18)
!2658 = !DILocation(line: 1030, column: 26, scope: !2602, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1021, column: 10, scope: !2593, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1039, column: 10, scope: !2651)
!2661 = !DILocation(line: 0, scope: !2651)
!2662 = !DILocation(line: 0, scope: !2593, inlinedAt: !2660)
!2663 = !DILocation(line: 0, scope: !2602, inlinedAt: !2659)
!2664 = !DILocation(line: 1030, column: 3, scope: !2602, inlinedAt: !2659)
!2665 = !DILocation(line: 1030, column: 30, scope: !2602, inlinedAt: !2659)
!2666 = !DILocation(line: 0, scope: !1349, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 1031, column: 3, scope: !2602, inlinedAt: !2659)
!2668 = !DILocation(line: 184, column: 6, scope: !1349, inlinedAt: !2667)
!2669 = !DILocation(line: 184, column: 12, scope: !1349, inlinedAt: !2667)
!2670 = !DILocation(line: 185, column: 8, scope: !1363, inlinedAt: !2667)
!2671 = !DILocation(line: 185, column: 23, scope: !1363, inlinedAt: !2667)
!2672 = !DILocation(line: 185, column: 19, scope: !1363, inlinedAt: !2667)
!2673 = !DILocation(line: 186, column: 5, scope: !1363, inlinedAt: !2667)
!2674 = !DILocation(line: 187, column: 6, scope: !1349, inlinedAt: !2667)
!2675 = !DILocation(line: 187, column: 17, scope: !1349, inlinedAt: !2667)
!2676 = !DILocation(line: 188, column: 6, scope: !1349, inlinedAt: !2667)
!2677 = !DILocation(line: 188, column: 18, scope: !1349, inlinedAt: !2667)
!2678 = !DILocation(line: 1032, column: 10, scope: !2602, inlinedAt: !2659)
!2679 = !DILocation(line: 1033, column: 1, scope: !2602, inlinedAt: !2659)
!2680 = !DILocation(line: 1039, column: 3, scope: !2651)
!2681 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !250, file: !250, line: 1043, type: !2682, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!16, !18, !18, !18, !75}
!2684 = !{!2685, !2686, !2687, !2688}
!2685 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2681, file: !250, line: 1043, type: !18)
!2686 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2681, file: !250, line: 1043, type: !18)
!2687 = !DILocalVariable(name: "arg", arg: 3, scope: !2681, file: !250, line: 1044, type: !18)
!2688 = !DILocalVariable(name: "argsize", arg: 4, scope: !2681, file: !250, line: 1044, type: !75)
!2689 = !DILocation(line: 1030, column: 26, scope: !2602, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1046, column: 10, scope: !2681)
!2691 = !DILocation(line: 0, scope: !2681)
!2692 = !DILocation(line: 0, scope: !2602, inlinedAt: !2690)
!2693 = !DILocation(line: 1030, column: 3, scope: !2602, inlinedAt: !2690)
!2694 = !DILocation(line: 1030, column: 30, scope: !2602, inlinedAt: !2690)
!2695 = !DILocation(line: 0, scope: !1349, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1031, column: 3, scope: !2602, inlinedAt: !2690)
!2697 = !DILocation(line: 184, column: 6, scope: !1349, inlinedAt: !2696)
!2698 = !DILocation(line: 184, column: 12, scope: !1349, inlinedAt: !2696)
!2699 = !DILocation(line: 185, column: 8, scope: !1363, inlinedAt: !2696)
!2700 = !DILocation(line: 185, column: 23, scope: !1363, inlinedAt: !2696)
!2701 = !DILocation(line: 185, column: 19, scope: !1363, inlinedAt: !2696)
!2702 = !DILocation(line: 186, column: 5, scope: !1363, inlinedAt: !2696)
!2703 = !DILocation(line: 187, column: 6, scope: !1349, inlinedAt: !2696)
!2704 = !DILocation(line: 187, column: 17, scope: !1349, inlinedAt: !2696)
!2705 = !DILocation(line: 188, column: 6, scope: !1349, inlinedAt: !2696)
!2706 = !DILocation(line: 188, column: 18, scope: !1349, inlinedAt: !2696)
!2707 = !DILocation(line: 1032, column: 10, scope: !2602, inlinedAt: !2690)
!2708 = !DILocation(line: 1033, column: 1, scope: !2602, inlinedAt: !2690)
!2709 = !DILocation(line: 1046, column: 3, scope: !2681)
!2710 = distinct !DISubprogram(name: "quote_n_mem", scope: !250, file: !250, line: 1061, type: !2711, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!18, !20, !18, !75}
!2713 = !{!2714, !2715, !2716}
!2714 = !DILocalVariable(name: "n", arg: 1, scope: !2710, file: !250, line: 1061, type: !20)
!2715 = !DILocalVariable(name: "arg", arg: 2, scope: !2710, file: !250, line: 1061, type: !18)
!2716 = !DILocalVariable(name: "argsize", arg: 3, scope: !2710, file: !250, line: 1061, type: !75)
!2717 = !DILocation(line: 0, scope: !2710)
!2718 = !DILocation(line: 1063, column: 10, scope: !2710)
!2719 = !DILocation(line: 1063, column: 3, scope: !2710)
!2720 = distinct !DISubprogram(name: "quote_mem", scope: !250, file: !250, line: 1067, type: !2721, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!18, !18, !75}
!2723 = !{!2724, !2725}
!2724 = !DILocalVariable(name: "arg", arg: 1, scope: !2720, file: !250, line: 1067, type: !18)
!2725 = !DILocalVariable(name: "argsize", arg: 2, scope: !2720, file: !250, line: 1067, type: !75)
!2726 = !DILocation(line: 0, scope: !2720)
!2727 = !DILocation(line: 0, scope: !2710, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1069, column: 10, scope: !2720)
!2729 = !DILocation(line: 1063, column: 10, scope: !2710, inlinedAt: !2728)
!2730 = !DILocation(line: 1069, column: 3, scope: !2720)
!2731 = distinct !DISubprogram(name: "quote_n", scope: !250, file: !250, line: 1073, type: !2732, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!18, !20, !18}
!2734 = !{!2735, !2736}
!2735 = !DILocalVariable(name: "n", arg: 1, scope: !2731, file: !250, line: 1073, type: !20)
!2736 = !DILocalVariable(name: "arg", arg: 2, scope: !2731, file: !250, line: 1073, type: !18)
!2737 = !DILocation(line: 0, scope: !2731)
!2738 = !DILocation(line: 0, scope: !2710, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1075, column: 10, scope: !2731)
!2740 = !DILocation(line: 1063, column: 10, scope: !2710, inlinedAt: !2739)
!2741 = !DILocation(line: 1075, column: 3, scope: !2731)
!2742 = distinct !DISubprogram(name: "quote", scope: !250, file: !250, line: 1079, type: !125, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !249, retainedNodes: !2743)
!2743 = !{!2744}
!2744 = !DILocalVariable(name: "arg", arg: 1, scope: !2742, file: !250, line: 1079, type: !18)
!2745 = !DILocation(line: 0, scope: !2742)
!2746 = !DILocation(line: 0, scope: !2731, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1081, column: 10, scope: !2742)
!2748 = !DILocation(line: 0, scope: !2710, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1075, column: 10, scope: !2731, inlinedAt: !2747)
!2750 = !DILocation(line: 1063, column: 10, scope: !2710, inlinedAt: !2749)
!2751 = !DILocation(line: 1081, column: 3, scope: !2742)
!2752 = distinct !DISubprogram(name: "version_etc_arn", scope: !396, file: !396, line: 61, type: !2753, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !2759)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !2755, !18, !18, !18, !2758, !75}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2757, line: 7, baseType: !406)
!2757 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2759 = !{!2760, !2761, !2762, !2763, !2764, !2765}
!2760 = !DILocalVariable(name: "stream", arg: 1, scope: !2752, file: !396, line: 61, type: !2755)
!2761 = !DILocalVariable(name: "command_name", arg: 2, scope: !2752, file: !396, line: 62, type: !18)
!2762 = !DILocalVariable(name: "package", arg: 3, scope: !2752, file: !396, line: 62, type: !18)
!2763 = !DILocalVariable(name: "version", arg: 4, scope: !2752, file: !396, line: 63, type: !18)
!2764 = !DILocalVariable(name: "authors", arg: 5, scope: !2752, file: !396, line: 64, type: !2758)
!2765 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2752, file: !396, line: 64, type: !75)
!2766 = !DILocation(line: 0, scope: !2752)
!2767 = !DILocation(line: 66, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2752, file: !396, line: 66, column: 7)
!2769 = !DILocation(line: 66, column: 7, scope: !2752)
!2770 = !DILocation(line: 67, column: 5, scope: !2768)
!2771 = !DILocation(line: 69, column: 5, scope: !2768)
!2772 = !DILocation(line: 83, column: 3, scope: !2752)
!2773 = !DILocation(line: 85, column: 3, scope: !2752)
!2774 = !DILocation(line: 88, column: 3, scope: !2752)
!2775 = !DILocation(line: 95, column: 3, scope: !2752)
!2776 = !DILocation(line: 97, column: 3, scope: !2752)
!2777 = !DILocation(line: 105, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2752, file: !396, line: 98, column: 5)
!2779 = !DILocation(line: 106, column: 7, scope: !2778)
!2780 = !DILocation(line: 109, column: 7, scope: !2778)
!2781 = !DILocation(line: 110, column: 7, scope: !2778)
!2782 = !DILocation(line: 113, column: 7, scope: !2778)
!2783 = !DILocation(line: 115, column: 7, scope: !2778)
!2784 = !DILocation(line: 120, column: 7, scope: !2778)
!2785 = !DILocation(line: 122, column: 7, scope: !2778)
!2786 = !DILocation(line: 127, column: 7, scope: !2778)
!2787 = !DILocation(line: 129, column: 7, scope: !2778)
!2788 = !DILocation(line: 134, column: 7, scope: !2778)
!2789 = !DILocation(line: 137, column: 7, scope: !2778)
!2790 = !DILocation(line: 142, column: 7, scope: !2778)
!2791 = !DILocation(line: 145, column: 7, scope: !2778)
!2792 = !DILocation(line: 150, column: 7, scope: !2778)
!2793 = !DILocation(line: 154, column: 7, scope: !2778)
!2794 = !DILocation(line: 159, column: 7, scope: !2778)
!2795 = !DILocation(line: 163, column: 7, scope: !2778)
!2796 = !DILocation(line: 170, column: 7, scope: !2778)
!2797 = !DILocation(line: 174, column: 7, scope: !2778)
!2798 = !DILocation(line: 176, column: 1, scope: !2752)
!2799 = distinct !DISubprogram(name: "version_etc_ar", scope: !396, file: !396, line: 183, type: !2800, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{null, !2755, !18, !18, !18, !2758}
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808}
!2803 = !DILocalVariable(name: "stream", arg: 1, scope: !2799, file: !396, line: 183, type: !2755)
!2804 = !DILocalVariable(name: "command_name", arg: 2, scope: !2799, file: !396, line: 184, type: !18)
!2805 = !DILocalVariable(name: "package", arg: 3, scope: !2799, file: !396, line: 184, type: !18)
!2806 = !DILocalVariable(name: "version", arg: 4, scope: !2799, file: !396, line: 185, type: !18)
!2807 = !DILocalVariable(name: "authors", arg: 5, scope: !2799, file: !396, line: 185, type: !2758)
!2808 = !DILocalVariable(name: "n_authors", scope: !2799, file: !396, line: 187, type: !75)
!2809 = !DILocation(line: 0, scope: !2799)
!2810 = !DILocation(line: 189, column: 8, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2799, file: !396, line: 189, column: 3)
!2812 = !DILocation(line: 0, scope: !2811)
!2813 = !DILocation(line: 189, column: 23, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !396, line: 189, column: 3)
!2815 = !DILocation(line: 189, column: 3, scope: !2811)
!2816 = !DILocation(line: 189, column: 52, scope: !2814)
!2817 = distinct !{!2817, !2815, !2818}
!2818 = !DILocation(line: 190, column: 5, scope: !2811)
!2819 = !DILocation(line: 191, column: 3, scope: !2799)
!2820 = !DILocation(line: 192, column: 1, scope: !2799)
!2821 = distinct !DISubprogram(name: "version_etc_va", scope: !396, file: !396, line: 199, type: !2822, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !2831)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !2755, !18, !18, !18, !2824}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !396, line: 192, size: 192, elements: !2826)
!2826 = !{!2827, !2828, !2829, !2830}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2825, file: !396, line: 192, baseType: !6, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2825, file: !396, line: 192, baseType: !6, size: 32, offset: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2825, file: !396, line: 192, baseType: !73, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2825, file: !396, line: 192, baseType: !73, size: 64, offset: 128)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838}
!2832 = !DILocalVariable(name: "stream", arg: 1, scope: !2821, file: !396, line: 199, type: !2755)
!2833 = !DILocalVariable(name: "command_name", arg: 2, scope: !2821, file: !396, line: 200, type: !18)
!2834 = !DILocalVariable(name: "package", arg: 3, scope: !2821, file: !396, line: 200, type: !18)
!2835 = !DILocalVariable(name: "version", arg: 4, scope: !2821, file: !396, line: 201, type: !18)
!2836 = !DILocalVariable(name: "authors", arg: 5, scope: !2821, file: !396, line: 201, type: !2824)
!2837 = !DILocalVariable(name: "n_authors", scope: !2821, file: !396, line: 203, type: !75)
!2838 = !DILocalVariable(name: "authtab", scope: !2821, file: !396, line: 204, type: !2839)
!2839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 640, elements: !361)
!2840 = !DILocation(line: 0, scope: !2821)
!2841 = !DILocation(line: 204, column: 3, scope: !2821)
!2842 = !DILocation(line: 204, column: 15, scope: !2821)
!2843 = !DILocation(line: 0, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !396, line: 206, column: 3)
!2845 = distinct !DILexicalBlock(scope: !2821, file: !396, line: 206, column: 3)
!2846 = !DILocation(line: 208, column: 35, scope: !2844)
!2847 = !DILocation(line: 208, column: 14, scope: !2844)
!2848 = !DILocation(line: 208, column: 33, scope: !2844)
!2849 = !DILocation(line: 208, column: 67, scope: !2844)
!2850 = !DILocation(line: 206, column: 3, scope: !2845)
!2851 = !DILocation(line: 0, scope: !2845)
!2852 = !DILocation(line: 211, column: 3, scope: !2821)
!2853 = !DILocation(line: 213, column: 1, scope: !2821)
!2854 = distinct !DISubprogram(name: "version_etc", scope: !396, file: !396, line: 230, type: !2855, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !2755, !18, !18, !18, null}
!2857 = !{!2858, !2859, !2860, !2861, !2862}
!2858 = !DILocalVariable(name: "stream", arg: 1, scope: !2854, file: !396, line: 230, type: !2755)
!2859 = !DILocalVariable(name: "command_name", arg: 2, scope: !2854, file: !396, line: 231, type: !18)
!2860 = !DILocalVariable(name: "package", arg: 3, scope: !2854, file: !396, line: 231, type: !18)
!2861 = !DILocalVariable(name: "version", arg: 4, scope: !2854, file: !396, line: 232, type: !18)
!2862 = !DILocalVariable(name: "authors", scope: !2854, file: !396, line: 234, type: !2863)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !23, line: 52, baseType: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2865, line: 32, baseType: !2866)
!2865 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !396, line: 234, baseType: !2867)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2825, size: 192, elements: !58)
!2868 = !DILocation(line: 0, scope: !2854)
!2869 = !DILocation(line: 234, column: 3, scope: !2854)
!2870 = !DILocation(line: 234, column: 11, scope: !2854)
!2871 = !DILocation(line: 236, column: 3, scope: !2854)
!2872 = !DILocation(line: 237, column: 3, scope: !2854)
!2873 = !DILocation(line: 238, column: 3, scope: !2854)
!2874 = !DILocation(line: 239, column: 1, scope: !2854)
!2875 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !396, file: !396, line: 242, type: !102, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !21)
!2876 = !DILocation(line: 244, column: 3, scope: !2875)
!2877 = !DILocation(line: 249, column: 3, scope: !2875)
!2878 = !DILocation(line: 255, column: 3, scope: !2875)
!2879 = !DILocation(line: 260, column: 3, scope: !2875)
!2880 = !DILocation(line: 262, column: 1, scope: !2875)
!2881 = distinct !DISubprogram(name: "xnmalloc", scope: !287, file: !287, line: 99, type: !2882, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!73, !75, !75}
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "n", arg: 1, scope: !2881, file: !287, line: 99, type: !75)
!2886 = !DILocalVariable(name: "s", arg: 2, scope: !2881, file: !287, line: 99, type: !75)
!2887 = !DILocation(line: 0, scope: !2881)
!2888 = !DILocation(line: 101, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2881, file: !287, line: 101, column: 7)
!2890 = !DILocation(line: 101, column: 7, scope: !2881)
!2891 = !DILocation(line: 102, column: 5, scope: !2889)
!2892 = !DILocation(line: 103, column: 21, scope: !2881)
!2893 = !DILocalVariable(name: "n", arg: 1, scope: !2894, file: !438, line: 39, type: !75)
!2894 = distinct !DISubprogram(name: "xmalloc", scope: !438, file: !438, line: 39, type: !2895, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!73, !75}
!2897 = !{!2893, !2898}
!2898 = !DILocalVariable(name: "p", scope: !2894, file: !438, line: 41, type: !73)
!2899 = !DILocation(line: 0, scope: !2894, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 103, column: 10, scope: !2881)
!2901 = !DILocation(line: 41, column: 13, scope: !2894, inlinedAt: !2900)
!2902 = !DILocation(line: 42, column: 8, scope: !2903, inlinedAt: !2900)
!2903 = distinct !DILexicalBlock(scope: !2894, file: !438, line: 42, column: 7)
!2904 = !DILocation(line: 42, column: 15, scope: !2903, inlinedAt: !2900)
!2905 = !DILocation(line: 42, column: 10, scope: !2903, inlinedAt: !2900)
!2906 = !DILocation(line: 43, column: 5, scope: !2903, inlinedAt: !2900)
!2907 = !DILocation(line: 103, column: 3, scope: !2881)
!2908 = !DILocation(line: 0, scope: !2894)
!2909 = !DILocation(line: 41, column: 13, scope: !2894)
!2910 = !DILocation(line: 42, column: 8, scope: !2903)
!2911 = !DILocation(line: 42, column: 15, scope: !2903)
!2912 = !DILocation(line: 42, column: 10, scope: !2903)
!2913 = !DILocation(line: 43, column: 5, scope: !2903)
!2914 = !DILocation(line: 44, column: 3, scope: !2894)
!2915 = distinct !DISubprogram(name: "xnrealloc", scope: !287, file: !287, line: 112, type: !2916, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!73, !73, !75, !75}
!2918 = !{!2919, !2920, !2921}
!2919 = !DILocalVariable(name: "p", arg: 1, scope: !2915, file: !287, line: 112, type: !73)
!2920 = !DILocalVariable(name: "n", arg: 2, scope: !2915, file: !287, line: 112, type: !75)
!2921 = !DILocalVariable(name: "s", arg: 3, scope: !2915, file: !287, line: 112, type: !75)
!2922 = !DILocation(line: 0, scope: !2915)
!2923 = !DILocation(line: 114, column: 7, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2915, file: !287, line: 114, column: 7)
!2925 = !DILocation(line: 114, column: 7, scope: !2915)
!2926 = !DILocation(line: 115, column: 5, scope: !2924)
!2927 = !DILocation(line: 116, column: 25, scope: !2915)
!2928 = !DILocalVariable(name: "p", arg: 1, scope: !2929, file: !438, line: 51, type: !73)
!2929 = distinct !DISubprogram(name: "xrealloc", scope: !438, file: !438, line: 51, type: !2930, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!73, !73, !75}
!2932 = !{!2928, !2933}
!2933 = !DILocalVariable(name: "n", arg: 2, scope: !2929, file: !438, line: 51, type: !75)
!2934 = !DILocation(line: 0, scope: !2929, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 116, column: 10, scope: !2915)
!2936 = !DILocation(line: 53, column: 8, scope: !2937, inlinedAt: !2935)
!2937 = distinct !DILexicalBlock(scope: !2929, file: !438, line: 53, column: 7)
!2938 = !DILocation(line: 53, column: 13, scope: !2937, inlinedAt: !2935)
!2939 = !DILocation(line: 53, column: 10, scope: !2937, inlinedAt: !2935)
!2940 = !DILocation(line: 57, column: 7, scope: !2941, inlinedAt: !2935)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !438, line: 54, column: 5)
!2942 = !DILocation(line: 58, column: 7, scope: !2941, inlinedAt: !2935)
!2943 = !DILocation(line: 61, column: 7, scope: !2929, inlinedAt: !2935)
!2944 = !DILocation(line: 62, column: 8, scope: !2945, inlinedAt: !2935)
!2945 = distinct !DILexicalBlock(scope: !2929, file: !438, line: 62, column: 7)
!2946 = !DILocation(line: 62, column: 13, scope: !2945, inlinedAt: !2935)
!2947 = !DILocation(line: 62, column: 10, scope: !2945, inlinedAt: !2935)
!2948 = !DILocation(line: 63, column: 5, scope: !2945, inlinedAt: !2935)
!2949 = !DILocation(line: 116, column: 3, scope: !2915)
!2950 = !DILocation(line: 0, scope: !2929)
!2951 = !DILocation(line: 53, column: 8, scope: !2937)
!2952 = !DILocation(line: 53, column: 13, scope: !2937)
!2953 = !DILocation(line: 53, column: 10, scope: !2937)
!2954 = !DILocation(line: 57, column: 7, scope: !2941)
!2955 = !DILocation(line: 58, column: 7, scope: !2941)
!2956 = !DILocation(line: 61, column: 7, scope: !2929)
!2957 = !DILocation(line: 62, column: 8, scope: !2945)
!2958 = !DILocation(line: 62, column: 13, scope: !2945)
!2959 = !DILocation(line: 62, column: 10, scope: !2945)
!2960 = !DILocation(line: 63, column: 5, scope: !2945)
!2961 = !DILocation(line: 65, column: 1, scope: !2929)
!2962 = !DILocation(line: 0, scope: !441)
!2963 = !DILocation(line: 176, column: 14, scope: !441)
!2964 = !DILocation(line: 178, column: 9, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !441, file: !287, line: 178, column: 7)
!2966 = !DILocation(line: 178, column: 7, scope: !441)
!2967 = !DILocation(line: 180, column: 13, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !287, line: 180, column: 11)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !287, line: 179, column: 5)
!2970 = !DILocation(line: 180, column: 11, scope: !2969)
!2971 = !DILocation(line: 188, column: 30, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2968, file: !287, line: 181, column: 9)
!2973 = !DILocation(line: 189, column: 16, scope: !2972)
!2974 = !DILocation(line: 189, column: 13, scope: !2972)
!2975 = !DILocation(line: 190, column: 9, scope: !2972)
!2976 = !DILocation(line: 191, column: 11, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2969, file: !287, line: 191, column: 11)
!2978 = !DILocation(line: 191, column: 11, scope: !2969)
!2979 = !DILocation(line: 206, column: 7, scope: !441)
!2980 = !DILocation(line: 207, column: 25, scope: !441)
!2981 = !DILocation(line: 0, scope: !2929, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 207, column: 10, scope: !441)
!2983 = !DILocation(line: 53, column: 10, scope: !2937, inlinedAt: !2982)
!2984 = !DILocation(line: 192, column: 9, scope: !2977)
!2985 = !DILocation(line: 200, column: 69, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !287, line: 200, column: 11)
!2987 = distinct !DILexicalBlock(scope: !2965, file: !287, line: 195, column: 5)
!2988 = !DILocation(line: 201, column: 11, scope: !2986)
!2989 = !DILocation(line: 200, column: 11, scope: !2987)
!2990 = !DILocation(line: 202, column: 9, scope: !2986)
!2991 = !DILocation(line: 203, column: 14, scope: !2987)
!2992 = !DILocation(line: 203, column: 18, scope: !2987)
!2993 = !DILocation(line: 203, column: 9, scope: !2987)
!2994 = !DILocation(line: 53, column: 8, scope: !2937, inlinedAt: !2982)
!2995 = !DILocation(line: 57, column: 7, scope: !2941, inlinedAt: !2982)
!2996 = !DILocation(line: 58, column: 7, scope: !2941, inlinedAt: !2982)
!2997 = !DILocation(line: 61, column: 7, scope: !2929, inlinedAt: !2982)
!2998 = !DILocation(line: 62, column: 8, scope: !2945, inlinedAt: !2982)
!2999 = !DILocation(line: 62, column: 13, scope: !2945, inlinedAt: !2982)
!3000 = !DILocation(line: 62, column: 10, scope: !2945, inlinedAt: !2982)
!3001 = !DILocation(line: 63, column: 5, scope: !2945, inlinedAt: !2982)
!3002 = !DILocation(line: 207, column: 3, scope: !441)
!3003 = distinct !DISubprogram(name: "xcharalloc", scope: !287, file: !287, line: 216, type: !2165, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3004)
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "n", arg: 1, scope: !3003, file: !287, line: 216, type: !75)
!3006 = !DILocation(line: 0, scope: !3003)
!3007 = !DILocation(line: 0, scope: !2894, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 218, column: 10, scope: !3003)
!3009 = !DILocation(line: 41, column: 13, scope: !2894, inlinedAt: !3008)
!3010 = !DILocation(line: 42, column: 8, scope: !2903, inlinedAt: !3008)
!3011 = !DILocation(line: 42, column: 15, scope: !2903, inlinedAt: !3008)
!3012 = !DILocation(line: 42, column: 10, scope: !2903, inlinedAt: !3008)
!3013 = !DILocation(line: 43, column: 5, scope: !2903, inlinedAt: !3008)
!3014 = !DILocation(line: 218, column: 3, scope: !3003)
!3015 = distinct !DISubprogram(name: "x2realloc", scope: !438, file: !438, line: 74, type: !3016, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!73, !73, !444}
!3018 = !{!3019, !3020}
!3019 = !DILocalVariable(name: "p", arg: 1, scope: !3015, file: !438, line: 74, type: !73)
!3020 = !DILocalVariable(name: "pn", arg: 2, scope: !3015, file: !438, line: 74, type: !444)
!3021 = !DILocation(line: 0, scope: !3015)
!3022 = !DILocation(line: 0, scope: !441, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 76, column: 10, scope: !3015)
!3024 = !DILocation(line: 176, column: 14, scope: !441, inlinedAt: !3023)
!3025 = !DILocation(line: 178, column: 9, scope: !2965, inlinedAt: !3023)
!3026 = !DILocation(line: 178, column: 7, scope: !441, inlinedAt: !3023)
!3027 = !DILocation(line: 180, column: 13, scope: !2968, inlinedAt: !3023)
!3028 = !DILocation(line: 180, column: 11, scope: !2969, inlinedAt: !3023)
!3029 = !DILocation(line: 191, column: 11, scope: !2977, inlinedAt: !3023)
!3030 = !DILocation(line: 191, column: 11, scope: !2969, inlinedAt: !3023)
!3031 = !DILocation(line: 206, column: 7, scope: !441, inlinedAt: !3023)
!3032 = !DILocation(line: 0, scope: !2929, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 207, column: 10, scope: !441, inlinedAt: !3023)
!3034 = !DILocation(line: 53, column: 10, scope: !2937, inlinedAt: !3033)
!3035 = !DILocation(line: 192, column: 9, scope: !2977, inlinedAt: !3023)
!3036 = !DILocation(line: 201, column: 11, scope: !2986, inlinedAt: !3023)
!3037 = !DILocation(line: 200, column: 11, scope: !2987, inlinedAt: !3023)
!3038 = !DILocation(line: 202, column: 9, scope: !2986, inlinedAt: !3023)
!3039 = !DILocation(line: 203, column: 14, scope: !2987, inlinedAt: !3023)
!3040 = !DILocation(line: 203, column: 18, scope: !2987, inlinedAt: !3023)
!3041 = !DILocation(line: 203, column: 9, scope: !2987, inlinedAt: !3023)
!3042 = !DILocation(line: 53, column: 8, scope: !2937, inlinedAt: !3033)
!3043 = !DILocation(line: 57, column: 7, scope: !2941, inlinedAt: !3033)
!3044 = !DILocation(line: 58, column: 7, scope: !2941, inlinedAt: !3033)
!3045 = !DILocation(line: 61, column: 7, scope: !2929, inlinedAt: !3033)
!3046 = !DILocation(line: 62, column: 8, scope: !2945, inlinedAt: !3033)
!3047 = !DILocation(line: 62, column: 13, scope: !2945, inlinedAt: !3033)
!3048 = !DILocation(line: 62, column: 10, scope: !2945, inlinedAt: !3033)
!3049 = !DILocation(line: 63, column: 5, scope: !2945, inlinedAt: !3033)
!3050 = !DILocation(line: 76, column: 3, scope: !3015)
!3051 = distinct !DISubprogram(name: "xzalloc", scope: !438, file: !438, line: 84, type: !2895, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3052)
!3052 = !{!3053}
!3053 = !DILocalVariable(name: "n", arg: 1, scope: !3051, file: !438, line: 84, type: !75)
!3054 = !DILocation(line: 0, scope: !3051)
!3055 = !DILocalVariable(name: "n", arg: 1, scope: !3056, file: !438, line: 93, type: !75)
!3056 = distinct !DISubprogram(name: "xcalloc", scope: !438, file: !438, line: 93, type: !2882, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3057)
!3057 = !{!3055, !3058, !3059}
!3058 = !DILocalVariable(name: "s", arg: 2, scope: !3056, file: !438, line: 93, type: !75)
!3059 = !DILocalVariable(name: "p", scope: !3056, file: !438, line: 95, type: !73)
!3060 = !DILocation(line: 0, scope: !3056, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 86, column: 10, scope: !3051)
!3062 = !DILocation(line: 100, column: 7, scope: !3063, inlinedAt: !3061)
!3063 = distinct !DILexicalBlock(scope: !3056, file: !438, line: 100, column: 7)
!3064 = !DILocation(line: 101, column: 7, scope: !3063, inlinedAt: !3061)
!3065 = !DILocation(line: 101, column: 18, scope: !3063, inlinedAt: !3061)
!3066 = !DILocation(line: 101, column: 16, scope: !3063, inlinedAt: !3061)
!3067 = !DILocation(line: 100, column: 7, scope: !3056, inlinedAt: !3061)
!3068 = !DILocation(line: 102, column: 5, scope: !3063, inlinedAt: !3061)
!3069 = !DILocation(line: 86, column: 3, scope: !3051)
!3070 = !DILocation(line: 0, scope: !3056)
!3071 = !DILocation(line: 100, column: 7, scope: !3063)
!3072 = !DILocation(line: 101, column: 7, scope: !3063)
!3073 = !DILocation(line: 101, column: 18, scope: !3063)
!3074 = !DILocation(line: 101, column: 16, scope: !3063)
!3075 = !DILocation(line: 100, column: 7, scope: !3056)
!3076 = !DILocation(line: 102, column: 5, scope: !3063)
!3077 = !DILocation(line: 103, column: 3, scope: !3056)
!3078 = distinct !DISubprogram(name: "xmemdup", scope: !438, file: !438, line: 111, type: !3079, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!73, !290, !75}
!3081 = !{!3082, !3083}
!3082 = !DILocalVariable(name: "p", arg: 1, scope: !3078, file: !438, line: 111, type: !290)
!3083 = !DILocalVariable(name: "s", arg: 2, scope: !3078, file: !438, line: 111, type: !75)
!3084 = !DILocation(line: 0, scope: !3078)
!3085 = !DILocation(line: 0, scope: !2894, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 113, column: 18, scope: !3078)
!3087 = !DILocation(line: 41, column: 13, scope: !2894, inlinedAt: !3086)
!3088 = !DILocation(line: 42, column: 8, scope: !2903, inlinedAt: !3086)
!3089 = !DILocation(line: 42, column: 15, scope: !2903, inlinedAt: !3086)
!3090 = !DILocation(line: 42, column: 10, scope: !2903, inlinedAt: !3086)
!3091 = !DILocation(line: 43, column: 5, scope: !2903, inlinedAt: !3086)
!3092 = !DILocalVariable(name: "__dest", arg: 1, scope: !3093, file: !1698, line: 31, type: !3096)
!3093 = distinct !DISubprogram(name: "memcpy", scope: !1698, file: !1698, line: 31, type: !3094, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3098)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!73, !3096, !3097, !75}
!3096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!3097 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !290)
!3098 = !{!3092, !3099, !3100}
!3099 = !DILocalVariable(name: "__src", arg: 2, scope: !3093, file: !1698, line: 31, type: !3097)
!3100 = !DILocalVariable(name: "__len", arg: 3, scope: !3093, file: !1698, line: 31, type: !75)
!3101 = !DILocation(line: 0, scope: !3093, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 113, column: 10, scope: !3078)
!3103 = !DILocation(line: 34, column: 10, scope: !3093, inlinedAt: !3102)
!3104 = !DILocation(line: 113, column: 3, scope: !3078)
!3105 = distinct !DISubprogram(name: "xstrdup", scope: !438, file: !438, line: 119, type: !95, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3106)
!3106 = !{!3107}
!3107 = !DILocalVariable(name: "string", arg: 1, scope: !3105, file: !438, line: 119, type: !18)
!3108 = !DILocation(line: 0, scope: !3105)
!3109 = !DILocation(line: 121, column: 27, scope: !3105)
!3110 = !DILocation(line: 121, column: 43, scope: !3105)
!3111 = !DILocation(line: 0, scope: !3078, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 121, column: 10, scope: !3105)
!3113 = !DILocation(line: 0, scope: !2894, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 113, column: 18, scope: !3078, inlinedAt: !3112)
!3115 = !DILocation(line: 41, column: 13, scope: !2894, inlinedAt: !3114)
!3116 = !DILocation(line: 42, column: 8, scope: !2903, inlinedAt: !3114)
!3117 = !DILocation(line: 42, column: 15, scope: !2903, inlinedAt: !3114)
!3118 = !DILocation(line: 42, column: 10, scope: !2903, inlinedAt: !3114)
!3119 = !DILocation(line: 43, column: 5, scope: !2903, inlinedAt: !3114)
!3120 = !DILocation(line: 0, scope: !3093, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 113, column: 10, scope: !3078, inlinedAt: !3112)
!3122 = !DILocation(line: 34, column: 10, scope: !3093, inlinedAt: !3121)
!3123 = !DILocation(line: 121, column: 3, scope: !3105)
!3124 = distinct !DISubprogram(name: "xalloc_die", scope: !459, file: !459, line: 32, type: !102, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !21)
!3125 = !DILocation(line: 34, column: 10, scope: !3124)
!3126 = !DILocation(line: 34, column: 33, scope: !3124)
!3127 = !DILocation(line: 34, column: 3, scope: !3124)
!3128 = !DILocation(line: 40, column: 3, scope: !3124)
!3129 = distinct !DISubprogram(name: "rpl_calloc", scope: !462, file: !462, line: 42, type: !2882, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !3130)
!3130 = !{!3131, !3132, !3133, !3134}
!3131 = !DILocalVariable(name: "n", arg: 1, scope: !3129, file: !462, line: 42, type: !75)
!3132 = !DILocalVariable(name: "s", arg: 2, scope: !3129, file: !462, line: 42, type: !75)
!3133 = !DILocalVariable(name: "result", scope: !3129, file: !462, line: 44, type: !73)
!3134 = !DILocalVariable(name: "bytes", scope: !3135, file: !462, line: 56, type: !75)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !462, line: 53, column: 5)
!3136 = distinct !DILexicalBlock(scope: !3129, file: !462, line: 47, column: 7)
!3137 = !DILocation(line: 0, scope: !3129)
!3138 = !DILocation(line: 47, column: 9, scope: !3136)
!3139 = !DILocation(line: 47, column: 19, scope: !3136)
!3140 = !DILocation(line: 47, column: 14, scope: !3136)
!3141 = !DILocation(line: 0, scope: !3135)
!3142 = !DILocation(line: 57, column: 21, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3135, file: !462, line: 57, column: 11)
!3144 = !DILocation(line: 57, column: 11, scope: !3135)
!3145 = !DILocation(line: 59, column: 11, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !462, line: 58, column: 9)
!3147 = !DILocation(line: 59, column: 17, scope: !3146)
!3148 = !DILocation(line: 65, column: 12, scope: !3129)
!3149 = !DILocation(line: 72, column: 3, scope: !3129)
!3150 = !DILocation(line: 73, column: 1, scope: !3129)
!3151 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !465, file: !465, line: 86, type: !3152, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !3158)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!75, !3154, !18, !75, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1439, line: 6, baseType: !3157)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !320, line: 21, baseType: !471)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164, !3165}
!3159 = !DILocalVariable(name: "pwc", arg: 1, scope: !3151, file: !465, line: 86, type: !3154)
!3160 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !465, line: 86, type: !18)
!3161 = !DILocalVariable(name: "n", arg: 3, scope: !3151, file: !465, line: 86, type: !75)
!3162 = !DILocalVariable(name: "ps", arg: 4, scope: !3151, file: !465, line: 86, type: !3155)
!3163 = !DILocalVariable(name: "ret", scope: !3151, file: !465, line: 88, type: !75)
!3164 = !DILocalVariable(name: "wc", scope: !3151, file: !465, line: 89, type: !1443)
!3165 = !DILocalVariable(name: "uc", scope: !3166, file: !465, line: 156, type: !1316)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !465, line: 155, column: 5)
!3167 = distinct !DILexicalBlock(scope: !3151, file: !465, line: 154, column: 7)
!3168 = !DILocation(line: 0, scope: !3151)
!3169 = !DILocation(line: 89, column: 3, scope: !3151)
!3170 = !DILocation(line: 105, column: 9, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3151, file: !465, line: 105, column: 7)
!3172 = !DILocation(line: 105, column: 7, scope: !3151)
!3173 = !DILocation(line: 145, column: 9, scope: !3151)
!3174 = !DILocation(line: 154, column: 19, scope: !3167)
!3175 = !DILocation(line: 154, column: 31, scope: !3167)
!3176 = !DILocation(line: 154, column: 26, scope: !3167)
!3177 = !DILocation(line: 154, column: 41, scope: !3167)
!3178 = !DILocation(line: 154, column: 7, scope: !3151)
!3179 = !DILocation(line: 156, column: 26, scope: !3166)
!3180 = !DILocation(line: 0, scope: !3166)
!3181 = !DILocation(line: 157, column: 14, scope: !3166)
!3182 = !DILocation(line: 157, column: 12, scope: !3166)
!3183 = !DILocation(line: 163, column: 1, scope: !3151)
!3184 = distinct !DISubprogram(name: "close_stream", scope: !484, file: !484, line: 56, type: !3185, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !3189)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!20, !3187}
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2757, line: 7, baseType: !491)
!3189 = !{!3190, !3191, !3193, !3194}
!3190 = !DILocalVariable(name: "stream", arg: 1, scope: !3184, file: !484, line: 56, type: !3187)
!3191 = !DILocalVariable(name: "some_pending", scope: !3184, file: !484, line: 58, type: !3192)
!3192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!3193 = !DILocalVariable(name: "prev_fail", scope: !3184, file: !484, line: 59, type: !3192)
!3194 = !DILocalVariable(name: "fclose_fail", scope: !3184, file: !484, line: 60, type: !3192)
!3195 = !DILocation(line: 0, scope: !3184)
!3196 = !DILocation(line: 58, column: 30, scope: !3184)
!3197 = !DILocalVariable(name: "__stream", arg: 1, scope: !3198, file: !3199, line: 135, type: !3187)
!3198 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3199, file: !3199, line: 135, type: !3185, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !3200)
!3199 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3200 = !{!3197}
!3201 = !DILocation(line: 0, scope: !3198, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 59, column: 27, scope: !3184)
!3203 = !DILocation(line: 137, column: 10, scope: !3198, inlinedAt: !3202)
!3204 = !{!3205, !1148, i64 0}
!3205 = !{!"_IO_FILE", !1148, i64 0, !1086, i64 8, !1086, i64 16, !1086, i64 24, !1086, i64 32, !1086, i64 40, !1086, i64 48, !1086, i64 56, !1086, i64 64, !1086, i64 72, !1086, i64 80, !1086, i64 88, !1086, i64 96, !1086, i64 104, !1148, i64 112, !1148, i64 116, !2201, i64 120, !1691, i64 128, !1087, i64 130, !1087, i64 131, !1086, i64 136, !2201, i64 144, !1086, i64 152, !1086, i64 160, !1086, i64 168, !1086, i64 176, !2201, i64 184, !1148, i64 192, !1087, i64 196}
!3206 = !DILocation(line: 59, column: 43, scope: !3184)
!3207 = !DILocation(line: 60, column: 29, scope: !3184)
!3208 = !DILocation(line: 60, column: 45, scope: !3184)
!3209 = !DILocation(line: 70, column: 17, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3184, file: !484, line: 70, column: 7)
!3211 = !DILocation(line: 58, column: 50, scope: !3184)
!3212 = !DILocation(line: 70, column: 33, scope: !3210)
!3213 = !DILocation(line: 70, column: 53, scope: !3210)
!3214 = !DILocation(line: 70, column: 59, scope: !3210)
!3215 = !DILocation(line: 70, column: 7, scope: !3184)
!3216 = !DILocation(line: 72, column: 11, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3210, file: !484, line: 71, column: 5)
!3218 = !DILocation(line: 73, column: 9, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3217, file: !484, line: 72, column: 11)
!3220 = !DILocation(line: 73, column: 15, scope: !3219)
!3221 = !DILocation(line: 78, column: 1, scope: !3184)
!3222 = distinct !DISubprogram(name: "hard_locale", scope: !523, file: !523, line: 27, type: !481, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3223)
!3223 = !{!3224, !3225}
!3224 = !DILocalVariable(name: "category", arg: 1, scope: !3222, file: !523, line: 27, type: !20)
!3225 = !DILocalVariable(name: "locale", scope: !3222, file: !523, line: 29, type: !3226)
!3226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2056, elements: !3227)
!3227 = !{!3228}
!3228 = !DISubrange(count: 257)
!3229 = !DILocation(line: 0, scope: !3222)
!3230 = !DILocation(line: 29, column: 3, scope: !3222)
!3231 = !DILocation(line: 29, column: 8, scope: !3222)
!3232 = !DILocation(line: 31, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3222, file: !523, line: 31, column: 7)
!3234 = !DILocation(line: 31, column: 7, scope: !3222)
!3235 = !DILocation(line: 34, column: 12, scope: !3222)
!3236 = !DILocation(line: 34, column: 38, scope: !3222)
!3237 = !DILocation(line: 34, column: 41, scope: !3222)
!3238 = !DILocation(line: 34, column: 66, scope: !3222)
!3239 = !DILocation(line: 35, column: 1, scope: !3222)
!3240 = distinct !DISubprogram(name: "locale_charset", scope: !530, file: !530, line: 831, type: !343, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !3241)
!3241 = !{!3242}
!3242 = !DILocalVariable(name: "codeset", scope: !3240, file: !530, line: 833, type: !18)
!3243 = !DILocation(line: 847, column: 13, scope: !3240)
!3244 = !DILocation(line: 0, scope: !3240)
!3245 = !DILocation(line: 911, column: 15, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3240, file: !530, line: 911, column: 7)
!3247 = !DILocation(line: 911, column: 7, scope: !3240)
!3248 = !DILocation(line: 1070, column: 13, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !530, line: 1070, column: 13)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !530, line: 1060, column: 7)
!3251 = distinct !DILexicalBlock(scope: !3240, file: !530, line: 1019, column: 3)
!3252 = !DILocation(line: 1070, column: 24, scope: !3249)
!3253 = !DILocation(line: 1070, column: 13, scope: !3250)
!3254 = !DILocation(line: 1158, column: 3, scope: !3240)
!3255 = distinct !DISubprogram(name: "setlocale_null_r", scope: !921, file: !921, line: 269, type: !3256, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!20, !20, !16, !75}
!3258 = !{!3259, !3260, !3261}
!3259 = !DILocalVariable(name: "category", arg: 1, scope: !3255, file: !921, line: 269, type: !20)
!3260 = !DILocalVariable(name: "buf", arg: 2, scope: !3255, file: !921, line: 269, type: !16)
!3261 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3255, file: !921, line: 269, type: !75)
!3262 = !DILocation(line: 0, scope: !3255)
!3263 = !DILocalVariable(name: "category", arg: 1, scope: !3264, file: !921, line: 91, type: !20)
!3264 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !921, file: !921, line: 91, type: !3256, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !3265)
!3265 = !{!3263, !3266, !3267, !3268, !3269}
!3266 = !DILocalVariable(name: "buf", arg: 2, scope: !3264, file: !921, line: 91, type: !16)
!3267 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3264, file: !921, line: 91, type: !75)
!3268 = !DILocalVariable(name: "result", scope: !3264, file: !921, line: 140, type: !18)
!3269 = !DILocalVariable(name: "length", scope: !3270, file: !921, line: 154, type: !75)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !921, line: 153, column: 5)
!3271 = distinct !DILexicalBlock(scope: !3264, file: !921, line: 142, column: 7)
!3272 = !DILocation(line: 0, scope: !3264, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 274, column: 10, scope: !3255)
!3274 = !DILocalVariable(name: "category", arg: 1, scope: !3275, file: !921, line: 60, type: !20)
!3275 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !921, file: !921, line: 60, type: !3276, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!18, !20}
!3278 = !{!3274, !3279}
!3279 = !DILocalVariable(name: "result", scope: !3275, file: !921, line: 62, type: !18)
!3280 = !DILocation(line: 0, scope: !3275, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 140, column: 24, scope: !3264, inlinedAt: !3273)
!3282 = !DILocation(line: 62, column: 24, scope: !3275, inlinedAt: !3281)
!3283 = !DILocation(line: 142, column: 14, scope: !3271, inlinedAt: !3273)
!3284 = !DILocation(line: 142, column: 7, scope: !3264, inlinedAt: !3273)
!3285 = !DILocation(line: 145, column: 19, scope: !3286, inlinedAt: !3273)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !921, line: 145, column: 11)
!3287 = distinct !DILexicalBlock(scope: !3271, file: !921, line: 143, column: 5)
!3288 = !DILocation(line: 145, column: 11, scope: !3287, inlinedAt: !3273)
!3289 = !DILocation(line: 149, column: 16, scope: !3286, inlinedAt: !3273)
!3290 = !DILocation(line: 149, column: 9, scope: !3286, inlinedAt: !3273)
!3291 = !DILocation(line: 154, column: 23, scope: !3270, inlinedAt: !3273)
!3292 = !DILocation(line: 0, scope: !3270, inlinedAt: !3273)
!3293 = !DILocation(line: 155, column: 18, scope: !3294, inlinedAt: !3273)
!3294 = distinct !DILexicalBlock(scope: !3270, file: !921, line: 155, column: 11)
!3295 = !DILocation(line: 155, column: 11, scope: !3270, inlinedAt: !3273)
!3296 = !DILocation(line: 157, column: 39, scope: !3297, inlinedAt: !3273)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !921, line: 156, column: 9)
!3298 = !DILocalVariable(name: "__dest", arg: 1, scope: !3299, file: !1698, line: 31, type: !3096)
!3299 = distinct !DISubprogram(name: "memcpy", scope: !1698, file: !1698, line: 31, type: !3094, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !3300)
!3300 = !{!3298, !3301, !3302}
!3301 = !DILocalVariable(name: "__src", arg: 2, scope: !3299, file: !1698, line: 31, type: !3097)
!3302 = !DILocalVariable(name: "__len", arg: 3, scope: !3299, file: !1698, line: 31, type: !75)
!3303 = !DILocation(line: 0, scope: !3299, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 157, column: 11, scope: !3297, inlinedAt: !3273)
!3305 = !DILocation(line: 34, column: 10, scope: !3299, inlinedAt: !3304)
!3306 = !DILocation(line: 158, column: 11, scope: !3297, inlinedAt: !3273)
!3307 = !DILocation(line: 162, column: 23, scope: !3308, inlinedAt: !3273)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !921, line: 162, column: 15)
!3309 = distinct !DILexicalBlock(scope: !3294, file: !921, line: 161, column: 9)
!3310 = !DILocation(line: 162, column: 15, scope: !3309, inlinedAt: !3273)
!3311 = !DILocation(line: 167, column: 44, scope: !3312, inlinedAt: !3273)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !921, line: 163, column: 13)
!3313 = !DILocation(line: 0, scope: !3299, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 167, column: 15, scope: !3312, inlinedAt: !3273)
!3315 = !DILocation(line: 34, column: 10, scope: !3299, inlinedAt: !3314)
!3316 = !DILocation(line: 168, column: 15, scope: !3312, inlinedAt: !3273)
!3317 = !DILocation(line: 168, column: 32, scope: !3312, inlinedAt: !3273)
!3318 = !DILocation(line: 169, column: 13, scope: !3312, inlinedAt: !3273)
!3319 = !DILocation(line: 0, scope: !3271, inlinedAt: !3273)
!3320 = !DILocation(line: 274, column: 3, scope: !3255)
!3321 = distinct !DISubprogram(name: "setlocale_null", scope: !921, file: !921, line: 301, type: !3276, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !3322)
!3322 = !{!3323}
!3323 = !DILocalVariable(name: "category", arg: 1, scope: !3321, file: !921, line: 301, type: !20)
!3324 = !DILocation(line: 0, scope: !3321)
!3325 = !DILocation(line: 0, scope: !3275, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 304, column: 10, scope: !3321)
!3327 = !DILocation(line: 62, column: 24, scope: !3275, inlinedAt: !3326)
!3328 = !DILocation(line: 304, column: 3, scope: !3321)
!3329 = distinct !DISubprogram(name: "rpl_fclose", scope: !924, file: !924, line: 58, type: !3330, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !3334)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!20, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2757, line: 7, baseType: !930)
!3334 = !{!3335, !3336, !3337, !3338}
!3335 = !DILocalVariable(name: "fp", arg: 1, scope: !3329, file: !924, line: 58, type: !3332)
!3336 = !DILocalVariable(name: "saved_errno", scope: !3329, file: !924, line: 60, type: !20)
!3337 = !DILocalVariable(name: "fd", scope: !3329, file: !924, line: 61, type: !20)
!3338 = !DILocalVariable(name: "result", scope: !3329, file: !924, line: 62, type: !20)
!3339 = !DILocation(line: 0, scope: !3329)
!3340 = !DILocation(line: 65, column: 8, scope: !3329)
!3341 = !DILocation(line: 66, column: 10, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3329, file: !924, line: 66, column: 7)
!3343 = !DILocation(line: 66, column: 7, scope: !3329)
!3344 = !DILocation(line: 67, column: 12, scope: !3342)
!3345 = !DILocation(line: 67, column: 5, scope: !3342)
!3346 = !DILocation(line: 72, column: 9, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3329, file: !924, line: 72, column: 7)
!3348 = !DILocation(line: 72, column: 23, scope: !3347)
!3349 = !DILocation(line: 72, column: 33, scope: !3347)
!3350 = !DILocation(line: 72, column: 26, scope: !3347)
!3351 = !DILocation(line: 72, column: 59, scope: !3347)
!3352 = !DILocation(line: 73, column: 7, scope: !3347)
!3353 = !DILocation(line: 73, column: 10, scope: !3347)
!3354 = !DILocation(line: 72, column: 7, scope: !3329)
!3355 = !DILocation(line: 100, column: 12, scope: !3329)
!3356 = !DILocation(line: 105, column: 7, scope: !3329)
!3357 = !DILocation(line: 74, column: 19, scope: !3347)
!3358 = !DILocation(line: 105, column: 19, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3329, file: !924, line: 105, column: 7)
!3360 = !DILocation(line: 107, column: 13, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3359, file: !924, line: 106, column: 5)
!3362 = !DILocation(line: 109, column: 5, scope: !3361)
!3363 = !DILocation(line: 112, column: 1, scope: !3329)
!3364 = distinct !DISubprogram(name: "rpl_fflush", scope: !967, file: !967, line: 129, type: !3365, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3369)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!20, !3367}
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2757, line: 7, baseType: !973)
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "stream", arg: 1, scope: !3364, file: !967, line: 129, type: !3367)
!3371 = !DILocation(line: 0, scope: !3364)
!3372 = !DILocation(line: 150, column: 14, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3364, file: !967, line: 150, column: 7)
!3374 = !DILocation(line: 150, column: 22, scope: !3373)
!3375 = !DILocation(line: 150, column: 27, scope: !3373)
!3376 = !DILocation(line: 150, column: 7, scope: !3364)
!3377 = !DILocation(line: 151, column: 12, scope: !3373)
!3378 = !DILocation(line: 151, column: 5, scope: !3373)
!3379 = !DILocalVariable(name: "fp", arg: 1, scope: !3380, file: !967, line: 41, type: !3367)
!3380 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !967, file: !967, line: 41, type: !3381, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !3367}
!3383 = !{!3379}
!3384 = !DILocation(line: 0, scope: !3380, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 156, column: 3, scope: !3364)
!3386 = !DILocation(line: 43, column: 11, scope: !3387, inlinedAt: !3385)
!3387 = distinct !DILexicalBlock(scope: !3380, file: !967, line: 43, column: 7)
!3388 = !DILocation(line: 43, column: 18, scope: !3387, inlinedAt: !3385)
!3389 = !DILocation(line: 43, column: 7, scope: !3380, inlinedAt: !3385)
!3390 = !DILocation(line: 45, column: 5, scope: !3387, inlinedAt: !3385)
!3391 = !DILocation(line: 158, column: 10, scope: !3364)
!3392 = !DILocation(line: 158, column: 3, scope: !3364)
!3393 = !DILocation(line: 235, column: 1, scope: !3364)
!3394 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1008, file: !1008, line: 28, type: !3395, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !3400)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!20, !3397, !3399, !20}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2757, line: 7, baseType: !1014)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !23, line: 63, baseType: !49)
!3400 = !{!3401, !3402, !3403, !3404}
!3401 = !DILocalVariable(name: "fp", arg: 1, scope: !3394, file: !1008, line: 28, type: !3397)
!3402 = !DILocalVariable(name: "offset", arg: 2, scope: !3394, file: !1008, line: 28, type: !3399)
!3403 = !DILocalVariable(name: "whence", arg: 3, scope: !3394, file: !1008, line: 28, type: !20)
!3404 = !DILocalVariable(name: "pos", scope: !3405, file: !1008, line: 117, type: !3399)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !1008, line: 113, column: 5)
!3406 = distinct !DILexicalBlock(scope: !3394, file: !1008, line: 52, column: 7)
!3407 = !DILocation(line: 0, scope: !3394)
!3408 = !DILocation(line: 52, column: 11, scope: !3406)
!3409 = !{!3205, !1086, i64 16}
!3410 = !DILocation(line: 52, column: 31, scope: !3406)
!3411 = !{!3205, !1086, i64 8}
!3412 = !DILocation(line: 52, column: 24, scope: !3406)
!3413 = !DILocation(line: 53, column: 7, scope: !3406)
!3414 = !DILocation(line: 53, column: 14, scope: !3406)
!3415 = !{!3205, !1086, i64 40}
!3416 = !DILocation(line: 53, column: 35, scope: !3406)
!3417 = !{!3205, !1086, i64 32}
!3418 = !DILocation(line: 53, column: 28, scope: !3406)
!3419 = !DILocation(line: 54, column: 7, scope: !3406)
!3420 = !DILocation(line: 54, column: 14, scope: !3406)
!3421 = !{!3205, !1086, i64 72}
!3422 = !DILocation(line: 54, column: 28, scope: !3406)
!3423 = !DILocation(line: 52, column: 7, scope: !3394)
!3424 = !DILocation(line: 117, column: 26, scope: !3405)
!3425 = !DILocation(line: 117, column: 19, scope: !3405)
!3426 = !DILocation(line: 0, scope: !3405)
!3427 = !DILocation(line: 118, column: 15, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3405, file: !1008, line: 118, column: 11)
!3429 = !DILocation(line: 118, column: 11, scope: !3405)
!3430 = !DILocation(line: 129, column: 11, scope: !3405)
!3431 = !DILocation(line: 129, column: 18, scope: !3405)
!3432 = !DILocation(line: 130, column: 11, scope: !3405)
!3433 = !DILocation(line: 130, column: 19, scope: !3405)
!3434 = !{!3205, !2201, i64 144}
!3435 = !DILocation(line: 161, column: 7, scope: !3405)
!3436 = !DILocation(line: 163, column: 10, scope: !3394)
!3437 = !DILocation(line: 163, column: 3, scope: !3394)
!3438 = !DILocation(line: 164, column: 1, scope: !3394)
