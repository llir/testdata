; ModuleID = 'coreutils-8.32/src/sleep.bc'
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
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [296 x i8] c"Usage: %s NUMBER[SUFFIX]...\0A  or:  %s OPTION\0APause for NUMBER seconds.  SUFFIX may be 's' for seconds (the default),\0A'm' for minutes, 'h' for hours or 'd' for days.  NUMBER need not be an\0Ainteger.  Given two or more arguments, pause for the amount of time\0Aspecified by the sum of their values.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"invalid time interval %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot read realtime clock\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !0
@.str.29 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.40, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.41, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !99
@.str.2.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !167
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !209
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !328
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !330
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !337
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !344
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !332
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !346
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.77 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.91 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.92 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.93 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.95 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.96 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.97 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !352
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !360
@.str.122 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1195 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1198, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i32 %0, metadata !1197, metadata !DIExpression()), !dbg !1219
  %3 = icmp eq i32 %0, 0, !dbg !1220
  br i1 %3, label %9, label %4, !dbg !1221

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1222, !tbaa !1224
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !1222
  %7 = load i8*, i8** @program_name, align 8, !dbg !1222, !tbaa !1224
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !1222
  br label %55, !dbg !1222

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([296 x i8], [296 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !1228
  %11 = load i8*, i8** @program_name, align 8, !dbg !1228, !tbaa !1224
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #12, !dbg !1228
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !1229
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1229, !tbaa !1224
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1229
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !1230
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230, !tbaa !1224
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1230
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), metadata !1202, metadata !DIExpression()) #12, !dbg !1231
  %19 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1232
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %19) #12, !dbg !1232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %19, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !1215
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), metadata !1203, metadata !DIExpression()) #12, !dbg !1231
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1204, metadata !DIExpression()) #12, !dbg !1231
  %20 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1233
  call void @llvm.dbg.value(metadata %struct.infomap* %20, metadata !1204, metadata !DIExpression()) #12, !dbg !1231
  br label %21, !dbg !1234

21:                                               ; preds = %26, %9
  %22 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %23 = phi %struct.infomap* [ %27, %26 ], [ %20, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1204, metadata !DIExpression()) #12, !dbg !1231
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %22) #22, !dbg !1235
  %25 = icmp eq i32 %24, 0, !dbg !1235
  br i1 %25, label %31, label %26, !dbg !1234

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 1, !dbg !1236
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !1204, metadata !DIExpression()) #12, !dbg !1231
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %27, i64 0, i32 0, !dbg !1237
  %29 = load i8*, i8** %28, align 8, !dbg !1237, !tbaa !1238
  %30 = icmp eq i8* %29, null, !dbg !1240
  br i1 %30, label %31, label %21, !dbg !1241, !llvm.loop !1242

31:                                               ; preds = %26, %21
  %32 = phi %struct.infomap* [ %27, %26 ], [ %23, %21 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1204, metadata !DIExpression()) #12, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1204, metadata !DIExpression()) #12, !dbg !1231
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 1, !dbg !1243
  %34 = load i8*, i8** %33, align 8, !dbg !1243, !tbaa !1245
  %35 = icmp eq i8* %34, null, !dbg !1246
  %36 = select i1 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %34, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %36, metadata !1203, metadata !DIExpression()) #12, !dbg !1231
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #12, !dbg !1248
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !1248
  %39 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !1249
  call void @llvm.dbg.value(metadata i8* %39, metadata !1211, metadata !DIExpression()) #12, !dbg !1231
  %40 = icmp eq i8* %39, null, !dbg !1250
  br i1 %40, label %48, label %41, !dbg !1252

41:                                               ; preds = %31
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #22, !dbg !1253
  %43 = icmp eq i32 %42, 0, !dbg !1253
  br i1 %43, label %48, label %44, !dbg !1254

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1255
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1255, !tbaa !1224
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #12, !dbg !1255
  br label %48, !dbg !1257

48:                                               ; preds = %31, %41, %44
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !1258
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1258
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !1259
  %52 = icmp eq i8* %36, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), !dbg !1259
  %53 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !1259
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* %36, i8* %53) #12, !dbg !1259
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %19) #12, !dbg !1260
  br label %55

55:                                               ; preds = %48, %4
  tail call void @exit(i32 %0) #23, !dbg !1261
  unreachable, !dbg !1261
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !77 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !401 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !440 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1262 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1266, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8** %1, metadata !1267, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1268, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8 1, metadata !1269, metadata !DIExpression()), !dbg !1276
  %5 = load i8*, i8** %1, align 8, !dbg !1277, !tbaa !1224
  tail call void @set_program_name(i8* %5) #12, !dbg !1278
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !1279
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !1280
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !1281
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !1282
  %10 = load i8*, i8** @Version, align 8, !dbg !1283, !tbaa !1224
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %10, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* null) #12, !dbg !1284
  %11 = icmp eq i32 %0, 1, !dbg !1285
  br i1 %11, label %12, label %14, !dbg !1287

12:                                               ; preds = %2
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !1288
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #12, !dbg !1290
  tail call void @usage(i32 1) #24, !dbg !1291
  unreachable, !dbg !1291

14:                                               ; preds = %2
  %15 = load i32, i32* @optind, align 4, !dbg !1292, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %15, metadata !1270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 1, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1268, metadata !DIExpression()), !dbg !1276
  %16 = icmp slt i32 %15, %0, !dbg !1296
  br i1 %16, label %17, label %67, !dbg !1297

17:                                               ; preds = %14
  %18 = bitcast double* %3 to i8*, !dbg !1298
  %19 = bitcast i8** %4 to i8*, !dbg !1298
  %20 = sext i32 %15 to i64, !dbg !1297
  br label %24, !dbg !1297

21:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i8 %61, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8 %61, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8 %61, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8 %61, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata double %62, metadata !1268, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8 %61, metadata !1269, metadata !DIExpression()), !dbg !1276
  %22 = and i8 %61, 1, !dbg !1299
  %23 = icmp eq i8 %22, 0, !dbg !1299
  br i1 %23, label %66, label %67, !dbg !1301

24:                                               ; preds = %59, %17
  %25 = phi i64 [ %20, %17 ], [ %63, %59 ]
  %26 = phi i8 [ 1, %17 ], [ %61, %59 ]
  %27 = phi double [ 0.000000e+00, %17 ], [ %62, %59 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !1270, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %26, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata double %27, metadata !1268, metadata !DIExpression()), !dbg !1276
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1302
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1303
  %28 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !1304
  %29 = load i8*, i8** %28, align 8, !dbg !1304, !tbaa !1224
  call void @llvm.dbg.value(metadata double* %3, metadata !1272, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  call void @llvm.dbg.value(metadata i8** %4, metadata !1275, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  %30 = call zeroext i1 @xstrtod(i8* %29, i8** nonnull %4, double* nonnull %3, double (i8*, i8**)* nonnull @cl_strtod) #12, !dbg !1306
  br i1 %30, label %35, label %31, !dbg !1307

31:                                               ; preds = %24
  %32 = tail call i32* @__errno_location() #25, !dbg !1308
  %33 = load i32, i32* %32, align 4, !dbg !1308, !tbaa !1293
  %34 = icmp eq i32 %33, 34, !dbg !1309
  br i1 %34, label %35, label %54, !dbg !1310

35:                                               ; preds = %31, %24
  %36 = load double, double* %3, align 8, !dbg !1311, !tbaa !1312
  call void @llvm.dbg.value(metadata double %36, metadata !1272, metadata !DIExpression()), !dbg !1298
  %37 = fcmp ult double %36, 0.000000e+00, !dbg !1314
  br i1 %37, label %54, label %38, !dbg !1315

38:                                               ; preds = %35
  %39 = load i8*, i8** %4, align 8, !dbg !1316, !tbaa !1224
  call void @llvm.dbg.value(metadata i8* %39, metadata !1275, metadata !DIExpression()), !dbg !1298
  %40 = load i8, i8* %39, align 1, !dbg !1317, !tbaa !1318
  %41 = icmp eq i8 %40, 0, !dbg !1317
  br i1 %41, label %46, label %42, !dbg !1319

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1320
  %44 = load i8, i8* %43, align 1, !dbg !1321, !tbaa !1318
  %45 = icmp eq i8 %44, 0, !dbg !1321
  br i1 %45, label %46, label %54, !dbg !1322

46:                                               ; preds = %42, %38
  call void @llvm.dbg.value(metadata i8* %39, metadata !1275, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata double* %3, metadata !1272, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  call void @llvm.dbg.value(metadata double* %3, metadata !1323, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %40, metadata !1328, metadata !DIExpression()), !dbg !1330
  %47 = sext i8 %40 to i32, !dbg !1332
  switch i32 %47, label %54 [
    i32 0, label %51
    i32 115, label %51
    i32 109, label %48
    i32 104, label %49
    i32 100, label %50
  ], !dbg !1333

48:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 60, metadata !1329, metadata !DIExpression()), !dbg !1330
  br label %51, !dbg !1334

49:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 3600, metadata !1329, metadata !DIExpression()), !dbg !1330
  br label %51, !dbg !1336

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 86400, metadata !1329, metadata !DIExpression()), !dbg !1330
  br label %51, !dbg !1337

51:                                               ; preds = %46, %46, %48, %49, %50
  %52 = phi double [ 8.640000e+04, %50 ], [ 3.600000e+03, %49 ], [ 6.000000e+01, %48 ], [ 1.000000e+00, %46 ], [ 1.000000e+00, %46 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1329, metadata !DIExpression()), !dbg !1330
  %53 = fmul double %36, %52, !dbg !1338
  store double %53, double* %3, align 8, !dbg !1338, !tbaa !1312
  br label %59, !dbg !1339

54:                                               ; preds = %46, %42, %35, %31
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !1340
  %56 = load i8*, i8** %28, align 8, !dbg !1342, !tbaa !1224
  %57 = call i8* @quote(i8* %56) #12, !dbg !1343
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55, i8* %57) #12, !dbg !1344
  call void @llvm.dbg.value(metadata i8 0, metadata !1269, metadata !DIExpression()), !dbg !1276
  %58 = load double, double* %3, align 8, !dbg !1345, !tbaa !1312
  br label %59, !dbg !1346

59:                                               ; preds = %51, %54
  %60 = phi double [ %58, %54 ], [ %53, %51 ], !dbg !1345
  %61 = phi i8 [ 0, %54 ], [ %26, %51 ], !dbg !1276
  call void @llvm.dbg.value(metadata i8 %61, metadata !1269, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata double %60, metadata !1272, metadata !DIExpression()), !dbg !1298
  %62 = fadd double %27, %60, !dbg !1347
  call void @llvm.dbg.value(metadata double %62, metadata !1268, metadata !DIExpression()), !dbg !1276
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1348
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #12, !dbg !1348
  %63 = add nsw i64 %25, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %63, metadata !1270, metadata !DIExpression()), !dbg !1295
  %64 = trunc i64 %63 to i32, !dbg !1296
  %65 = icmp eq i32 %64, %0, !dbg !1296
  br i1 %65, label %21, label %24, !dbg !1297, !llvm.loop !1350

66:                                               ; preds = %21
  call void @usage(i32 1) #24, !dbg !1352
  unreachable, !dbg !1352

67:                                               ; preds = %14, %21
  %68 = phi double [ %62, %21 ], [ 0.000000e+00, %14 ]
  %69 = call i32 @xnanosleep(double %68) #12, !dbg !1353
  %70 = icmp eq i32 %69, 0, !dbg !1353
  br i1 %70, label %75, label %71, !dbg !1355

71:                                               ; preds = %67
  %72 = tail call i32* @__errno_location() #25, !dbg !1356
  %73 = load i32, i32* %72, align 4, !dbg !1356, !tbaa !1293
  %74 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !1356
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %73, i8* %74) #12, !dbg !1356
  unreachable, !dbg !1356

75:                                               ; preds = %67
  ret i32 0, !dbg !1357
}

; Function Attrs: nounwind
declare !dbg !443 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !446 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !447 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @cl_strtod(i8* %0, i8** noalias %1) #8 !dbg !1358 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1363, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8** %1, metadata !1364, metadata !DIExpression()), !dbg !1372
  %5 = bitcast i8** %3 to i8*, !dbg !1373
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1373
  call void @llvm.dbg.value(metadata i8** %3, metadata !1365, metadata !DIExpression(DW_OP_deref)), !dbg !1372
  %6 = call double @strtod(i8* %0, i8** nonnull %3) #12, !dbg !1374
  call void @llvm.dbg.value(metadata double %6, metadata !1366, metadata !DIExpression()), !dbg !1372
  %7 = load i8*, i8** %3, align 8, !dbg !1375, !tbaa !1224
  call void @llvm.dbg.value(metadata i8* %7, metadata !1365, metadata !DIExpression()), !dbg !1372
  %8 = load i8, i8* %7, align 1, !dbg !1376, !tbaa !1318
  %9 = icmp eq i8 %8, 0, !dbg !1376
  %10 = ptrtoint i8* %7 to i64, !dbg !1377
  br i1 %9, label %24, label %11, !dbg !1377

11:                                               ; preds = %2
  %12 = tail call i32* @__errno_location() #25, !dbg !1378
  %13 = load i32, i32* %12, align 4, !dbg !1378, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %13, metadata !1367, metadata !DIExpression()), !dbg !1379
  %14 = bitcast i8** %4 to i8*, !dbg !1380
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #12, !dbg !1380
  call void @llvm.dbg.value(metadata i8** %4, metadata !1370, metadata !DIExpression(DW_OP_deref)), !dbg !1379
  %15 = call double @c_strtod(i8* %0, i8** nonnull %4) #12, !dbg !1381
  call void @llvm.dbg.value(metadata double %15, metadata !1371, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %7, metadata !1365, metadata !DIExpression()), !dbg !1372
  %16 = load i8*, i8** %4, align 8, !dbg !1382, !tbaa !1224
  call void @llvm.dbg.value(metadata i8* %16, metadata !1370, metadata !DIExpression()), !dbg !1379
  %17 = icmp ult i8* %7, %16, !dbg !1384
  br i1 %17, label %18, label %20, !dbg !1385

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata double %15, metadata !1366, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8* %16, metadata !1365, metadata !DIExpression()), !dbg !1372
  store i8* %16, i8** %3, align 8, !dbg !1386, !tbaa !1224
  %19 = ptrtoint i8* %16 to i64, !dbg !1387
  br label %21, !dbg !1387

20:                                               ; preds = %11
  store i32 %13, i32* %12, align 4, !dbg !1388, !tbaa !1293
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ %10, %20 ]
  %23 = phi double [ %15, %18 ], [ %6, %20 ], !dbg !1372
  call void @llvm.dbg.value(metadata double %23, metadata !1366, metadata !DIExpression()), !dbg !1372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #12, !dbg !1389
  br label %24, !dbg !1390

24:                                               ; preds = %2, %21
  %25 = phi i64 [ %22, %21 ], [ %10, %2 ]
  %26 = phi double [ %23, %21 ], [ %6, %2 ], !dbg !1372
  call void @llvm.dbg.value(metadata double %26, metadata !1366, metadata !DIExpression()), !dbg !1372
  %27 = icmp eq i8** %1, null, !dbg !1391
  br i1 %27, label %30, label %28, !dbg !1393

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* undef, metadata !1365, metadata !DIExpression()), !dbg !1372
  %29 = bitcast i8** %1 to i64*, !dbg !1394
  store i64 %25, i64* %29, align 8, !dbg !1394, !tbaa !1224
  br label %30, !dbg !1395

30:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #12, !dbg !1396
  ret double %26, !dbg !1397
}

; Function Attrs: nofree nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1398 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1400, metadata !DIExpression()), !dbg !1401
  store i8* %0, i8** @file_name, align 8, !dbg !1402, !tbaa !1224
  ret void, !dbg !1403
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1404 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1410, !tbaa !1411
  ret void, !dbg !1413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1414 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1419, !tbaa !1224
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1420
  %3 = icmp eq i32 %2, 0, !dbg !1421
  br i1 %3, label %22, label %4, !dbg !1422

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1423, !tbaa !1411, !range !1424
  %6 = icmp eq i8 %5, 0, !dbg !1423
  br i1 %6, label %11, label %7, !dbg !1425

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1426
  %9 = load i32, i32* %8, align 4, !dbg !1426, !tbaa !1293
  %10 = icmp eq i32 %9, 32, !dbg !1427
  br i1 %10, label %22, label %11, !dbg !1428

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #12, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %12, metadata !1416, metadata !DIExpression()), !dbg !1430
  %13 = load i8*, i8** @file_name, align 8, !dbg !1431, !tbaa !1224
  %14 = icmp eq i8* %13, null, !dbg !1431
  %15 = tail call i32* @__errno_location() #25, !dbg !1433
  %16 = load i32, i32* %15, align 4, !dbg !1433, !tbaa !1293
  br i1 %14, label %19, label %17, !dbg !1434

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1435
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1436
  br label %20, !dbg !1436

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #12, !dbg !1437
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1438, !tbaa !1293
  tail call void @_exit(i32 %21) #23, !dbg !1439
  unreachable, !dbg !1439

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1440, !tbaa !1224
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1442
  %25 = icmp eq i32 %24, 0, !dbg !1443
  br i1 %25, label %28, label %26, !dbg !1444

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1445, !tbaa !1293
  tail call void @_exit(i32 %27) #23, !dbg !1446
  unreachable, !dbg !1446

28:                                               ; preds = %22
  ret void, !dbg !1447
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1448 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1452, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8** %1, metadata !1453, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8* %2, metadata !1454, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8* %3, metadata !1455, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8* %4, metadata !1456, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1457, metadata !DIExpression()), !dbg !1470
  %8 = load i32, i32* @opterr, align 4, !dbg !1471, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %8, metadata !1459, metadata !DIExpression()), !dbg !1470
  store i32 0, i32* @opterr, align 4, !dbg !1472, !tbaa !1293
  %9 = icmp eq i32 %0, 2, !dbg !1473
  br i1 %9, label %10, label %17, !dbg !1474

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %11, metadata !1458, metadata !DIExpression()), !dbg !1470
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1476

12:                                               ; preds = %10
  tail call void %5(i32 0) #12, !dbg !1477
  br label %17, !dbg !1478

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1479
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #12, !dbg !1479
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1460, metadata !DIExpression()), !dbg !1480
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1481
  call void @llvm.va_start(i8* nonnull %14), !dbg !1481
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1482, !tbaa !1224
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #12, !dbg !1483
  call void @exit(i32 0) #23, !dbg !1484
  unreachable, !dbg !1484

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1485, !tbaa !1293
  store i32 0, i32* @optind, align 4, !dbg !1486, !tbaa !1293
  ret void, !dbg !1487
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1488 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1490, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8** %1, metadata !1491, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %2, metadata !1492, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %3, metadata !1493, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %4, metadata !1494, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i1 %5, metadata !1495, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1496, metadata !DIExpression()), !dbg !1505
  %9 = load i32, i32* @opterr, align 4, !dbg !1506, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %9, metadata !1498, metadata !DIExpression()), !dbg !1505
  store i32 1, i32* @opterr, align 4, !dbg !1507, !tbaa !1293
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), !dbg !1508
  call void @llvm.dbg.value(metadata i8* %10, metadata !1499, metadata !DIExpression()), !dbg !1505
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %11, metadata !1497, metadata !DIExpression()), !dbg !1505
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1510

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1511
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1511
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1500, metadata !DIExpression()), !dbg !1512
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1513
  call void @llvm.va_start(i8* nonnull %13), !dbg !1513
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1514, !tbaa !1224
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #12, !dbg !1515
  call void @exit(i32 0) #23, !dbg !1516
  unreachable, !dbg !1516

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1517, !tbaa !1293
  br label %18, !dbg !1518

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #12, !dbg !1519
  br label %20, !dbg !1520

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1520, !tbaa !1293
  ret void, !dbg !1521
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1524, metadata !DIExpression()), !dbg !1527
  %2 = icmp eq i8* %0, null, !dbg !1528
  br i1 %2, label %3, label %6, !dbg !1530

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1531, !tbaa !1224
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1533
  tail call void @abort() #23, !dbg !1534
  unreachable, !dbg !1534

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1535
  call void @llvm.dbg.value(metadata i8* %7, metadata !1525, metadata !DIExpression()), !dbg !1527
  %8 = icmp eq i8* %7, null, !dbg !1536
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1537
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1537
  call void @llvm.dbg.value(metadata i8* %10, metadata !1526, metadata !DIExpression()), !dbg !1527
  %11 = ptrtoint i8* %10 to i64, !dbg !1538
  %12 = ptrtoint i8* %0 to i64, !dbg !1538
  %13 = sub i64 %11, %12, !dbg !1538
  %14 = icmp sgt i64 %13, 6, !dbg !1540
  br i1 %14, label %15, label %24, !dbg !1541

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1542
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #22, !dbg !1543
  %18 = icmp eq i32 %17, 0, !dbg !1544
  br i1 %18, label %19, label %24, !dbg !1545

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1524, metadata !DIExpression()), !dbg !1527
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #22, !dbg !1546
  %21 = icmp eq i32 %20, 0, !dbg !1549
  br i1 %21, label %22, label %24, !dbg !1550

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1551
  call void @llvm.dbg.value(metadata i8* %23, metadata !1524, metadata !DIExpression()), !dbg !1527
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1553, !tbaa !1224
  br label %24, !dbg !1554

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1524, metadata !DIExpression()), !dbg !1527
  store i8* %25, i8** @program_name, align 8, !dbg !1555, !tbaa !1224
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1556, !tbaa !1224
  ret void, !dbg !1557
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1558 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1563, metadata !DIExpression()), !dbg !1566
  %2 = tail call i32* @__errno_location() #25, !dbg !1567
  %3 = load i32, i32* %2, align 4, !dbg !1567, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %3, metadata !1564, metadata !DIExpression()), !dbg !1566
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1568
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1568
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1568
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1569
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i32 %3, i32* %2, align 4, !dbg !1570, !tbaa !1293
  ret %struct.quoting_options* %8, !dbg !1571
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1572 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1576, metadata !DIExpression()), !dbg !1577
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1578
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1578
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1579
  %5 = load i32, i32* %4, align 8, !dbg !1579, !tbaa !1580
  ret i32 %5, !dbg !1582
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1583 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1587, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %1, metadata !1588, metadata !DIExpression()), !dbg !1589
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1590
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1590
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1591
  store i32 %1, i32* %5, align 8, !dbg !1592, !tbaa !1580
  ret void, !dbg !1593
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1594 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1598, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %1, metadata !1599, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %2, metadata !1600, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8 %1, metadata !1601, metadata !DIExpression()), !dbg !1607
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1608
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1608
  %6 = lshr i8 %1, 5, !dbg !1609
  %7 = zext i8 %6 to i64, !dbg !1609
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1610
  call void @llvm.dbg.value(metadata i32* %8, metadata !1603, metadata !DIExpression()), !dbg !1607
  %9 = and i8 %1, 31, !dbg !1611
  %10 = zext i8 %9 to i32, !dbg !1611
  call void @llvm.dbg.value(metadata i32 %10, metadata !1605, metadata !DIExpression()), !dbg !1607
  %11 = load i32, i32* %8, align 4, !dbg !1612, !tbaa !1293
  %12 = lshr i32 %11, %10, !dbg !1613
  %13 = and i32 %12, 1, !dbg !1614
  call void @llvm.dbg.value(metadata i32 %13, metadata !1606, metadata !DIExpression()), !dbg !1607
  %14 = and i32 %2, 1, !dbg !1615
  %15 = xor i32 %13, %14, !dbg !1616
  %16 = shl i32 %15, %10, !dbg !1617
  %17 = xor i32 %16, %11, !dbg !1618
  store i32 %17, i32* %8, align 4, !dbg !1618, !tbaa !1293
  ret i32 %13, !dbg !1619
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1620 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1624, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %1, metadata !1625, metadata !DIExpression()), !dbg !1627
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1628
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1630
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1624, metadata !DIExpression()), !dbg !1627
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1631
  %6 = load i32, i32* %5, align 4, !dbg !1631, !tbaa !1632
  call void @llvm.dbg.value(metadata i32 %6, metadata !1626, metadata !DIExpression()), !dbg !1627
  store i32 %1, i32* %5, align 4, !dbg !1633, !tbaa !1632
  ret i32 %6, !dbg !1634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1635 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1639, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %1, metadata !1640, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %2, metadata !1641, metadata !DIExpression()), !dbg !1642
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1643
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1639, metadata !DIExpression()), !dbg !1642
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1646
  store i32 10, i32* %6, align 8, !dbg !1647, !tbaa !1580
  %7 = icmp ne i8* %1, null, !dbg !1648
  %8 = icmp ne i8* %2, null, !dbg !1650
  %9 = and i1 %7, %8, !dbg !1651
  br i1 %9, label %11, label %10, !dbg !1651

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1652
  unreachable, !dbg !1652

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1653
  store i8* %1, i8** %12, align 8, !dbg !1654, !tbaa !1655
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1656
  store i8* %2, i8** %13, align 8, !dbg !1657, !tbaa !1658
  ret void, !dbg !1659
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1660 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1664, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i64 %1, metadata !1665, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8* %2, metadata !1666, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i64 %3, metadata !1667, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1668, metadata !DIExpression()), !dbg !1672
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1673
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1673
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1669, metadata !DIExpression()), !dbg !1672
  %8 = tail call i32* @__errno_location() #25, !dbg !1674
  %9 = load i32, i32* %8, align 4, !dbg !1674, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %9, metadata !1670, metadata !DIExpression()), !dbg !1672
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1675
  %11 = load i32, i32* %10, align 8, !dbg !1675, !tbaa !1580
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1676
  %13 = load i32, i32* %12, align 4, !dbg !1676, !tbaa !1632
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1677
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1678
  %16 = load i8*, i8** %15, align 8, !dbg !1678, !tbaa !1655
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1679
  %18 = load i8*, i8** %17, align 8, !dbg !1679, !tbaa !1658
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1680
  call void @llvm.dbg.value(metadata i64 %19, metadata !1671, metadata !DIExpression()), !dbg !1672
  store i32 %9, i32* %8, align 4, !dbg !1681, !tbaa !1293
  ret i64 %19, !dbg !1682
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1683 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1689, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %1, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %2, metadata !1691, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %3, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %4, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %5, metadata !1694, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32* %6, metadata !1695, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %7, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %8, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* null, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1702, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1747
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1748
  %14 = icmp eq i64 %13, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i1 %14, metadata !1704, metadata !DIExpression()), !dbg !1747
  %15 = lshr i32 %5, 1, !dbg !1750
  %16 = trunc i32 %15 to i8, !dbg !1750
  %17 = and i8 %16, 1, !dbg !1750
  call void @llvm.dbg.value(metadata i8 %17, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1708, metadata !DIExpression()), !dbg !1747
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1751
  %19 = and i32 %5, 4, !dbg !1753
  %20 = icmp eq i32 %19, 0, !dbg !1753
  %21 = and i32 %5, 1, !dbg !1756
  %22 = icmp eq i32 %21, 0, !dbg !1756
  %23 = bitcast i64* %10 to i8*, !dbg !1759
  %24 = bitcast i32* %12 to i8*, !dbg !1760
  %25 = icmp eq i32* %6, null, !dbg !1761
  br label %26, !dbg !1763

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1764
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1765
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1766
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1767
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1747
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1768
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1769
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1770
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %38, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %37, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %36, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %35, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %34, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %33, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %32, metadata !1702, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %31, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %30, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %29, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %28, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %27, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1741), !dbg !1771
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
  ], !dbg !1772

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %35, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 5, metadata !1693, metadata !DIExpression()), !dbg !1747
  br label %92, !dbg !1773

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 5, metadata !1693, metadata !DIExpression()), !dbg !1747
  %42 = and i8 %35, 1, !dbg !1775
  %43 = icmp eq i8 %42, 0, !dbg !1775
  br i1 %43, label %44, label %92, !dbg !1773

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1777
  br i1 %45, label %92, label %46, !dbg !1780

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1777, !tbaa !1318
  br label %92, !dbg !1777

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %27), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %48, metadata !1696, metadata !DIExpression()), !dbg !1747
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %27), !dbg !1785
  call void @llvm.dbg.value(metadata i8* %49, metadata !1697, metadata !DIExpression()), !dbg !1747
  br label %50, !dbg !1786

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %51, metadata !1696, metadata !DIExpression()), !dbg !1747
  %53 = and i8 %35, 1, !dbg !1787
  %54 = icmp eq i8 %53, 0, !dbg !1787
  br i1 %54, label %55, label %70, !dbg !1789

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1699, metadata !DIExpression()), !dbg !1747
  %56 = load i8, i8* %51, align 1, !dbg !1790, !tbaa !1318
  %57 = icmp eq i8 %56, 0, !dbg !1793
  br i1 %57, label %70, label %58, !dbg !1793

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %61, metadata !1699, metadata !DIExpression()), !dbg !1747
  %62 = icmp ult i64 %61, %39, !dbg !1794
  br i1 %62, label %63, label %65, !dbg !1797

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1794
  store i8 %59, i8* %64, align 1, !dbg !1794, !tbaa !1318
  br label %65, !dbg !1794

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %66, metadata !1699, metadata !DIExpression()), !dbg !1747
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1798
  call void @llvm.dbg.value(metadata i8* %67, metadata !1701, metadata !DIExpression()), !dbg !1747
  %68 = load i8, i8* %67, align 1, !dbg !1790, !tbaa !1318
  %69 = icmp eq i8 %68, 0, !dbg !1793
  br i1 %69, label %70, label %58, !dbg !1793, !llvm.loop !1799

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1801
  call void @llvm.dbg.value(metadata i64 %71, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %52, metadata !1701, metadata !DIExpression()), !dbg !1747
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %72, metadata !1702, metadata !DIExpression()), !dbg !1747
  br label %92, !dbg !1803

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1703, metadata !DIExpression()), !dbg !1747
  br label %74, !dbg !1804

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %75, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1705, metadata !DIExpression()), !dbg !1747
  br label %76, !dbg !1805

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1767
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %78, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %77, metadata !1703, metadata !DIExpression()), !dbg !1747
  %79 = and i8 %78, 1, !dbg !1806
  %80 = icmp eq i8 %79, 0, !dbg !1806
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1808
  br label %82, !dbg !1808

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1747
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %84, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %83, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  %85 = and i8 %84, 1, !dbg !1809
  %86 = icmp eq i8 %85, 0, !dbg !1809
  br i1 %86, label %87, label %92, !dbg !1811

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1812
  br i1 %88, label %92, label %89, !dbg !1815

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1812, !tbaa !1318
  br label %92, !dbg !1812

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1747
  br label %92, !dbg !1816

91:                                               ; preds = %26
  call void @abort() #23, !dbg !1817
  unreachable, !dbg !1817

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1801
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %40 ], !dbg !1747
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1747
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1747
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %100, metadata !1705, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %98, metadata !1702, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %96, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 %93, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1698, metadata !DIExpression()), !dbg !1747
  %101 = and i8 %99, 1, !dbg !1818
  %102 = icmp ne i8 %101, 0, !dbg !1818
  %103 = icmp ne i32 %93, 2, !dbg !1818
  %104 = and i1 %103, %102, !dbg !1818
  %105 = icmp ne i64 %98, 0, !dbg !1818
  %106 = and i1 %105, %104, !dbg !1818
  %107 = icmp ugt i64 %98, 1, !dbg !1818
  %108 = and i8 %100, 1, !dbg !1820
  %109 = icmp eq i8 %108, 0, !dbg !1820
  %110 = icmp eq i32 %93, 2, !dbg !1823
  %111 = or i1 %103, %109, !dbg !1825
  %112 = icmp ne i8 %108, 0, !dbg !1827
  %113 = and i1 %110, %112, !dbg !1827
  %114 = xor i1 %102, true, !dbg !1828
  %115 = xor i1 %104, true, !dbg !1761
  %116 = and i1 %109, %115, !dbg !1761
  %117 = or i1 %25, %116, !dbg !1761
  %118 = and i8 %99, %100, !dbg !1829
  %119 = and i8 %118, 1, !dbg !1829
  %120 = icmp ne i8 %119, 0, !dbg !1829
  %121 = and i1 %120, %105, !dbg !1829
  br label %122, !dbg !1831

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1832
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1801
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1764
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1768
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1769
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1770
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %126, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %123, metadata !1698, metadata !DIExpression()), !dbg !1747
  %131 = icmp eq i64 %126, -1, !dbg !1833
  br i1 %131, label %132, label %136, !dbg !1834

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1835
  %134 = load i8, i8* %133, align 1, !dbg !1835, !tbaa !1318
  %135 = icmp eq i8 %134, 0, !dbg !1836
  br i1 %135, label %581, label %138, !dbg !1837

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1838
  br i1 %137, label %581, label %138, !dbg !1837

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1839
  br i1 %106, label %139, label %154, !dbg !1840

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1841
  %141 = and i1 %107, %131, !dbg !1842
  br i1 %141, label %142, label %144, !dbg !1842

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %143, metadata !1692, metadata !DIExpression()), !dbg !1747
  br label %144, !dbg !1844

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1692, metadata !DIExpression()), !dbg !1747
  %146 = icmp ugt i64 %140, %145, !dbg !1845
  br i1 %146, label %154, label %147, !dbg !1846

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1847
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1848
  %150 = icmp ne i32 %149, 0, !dbg !1849
  %151 = or i1 %150, %109, !dbg !1850
  %152 = xor i1 %150, true, !dbg !1850
  %153 = zext i1 %152 to i8, !dbg !1850
  br i1 %151, label %154, label %639, !dbg !1850

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1839
  call void @llvm.dbg.value(metadata i8 %156, metadata !1714, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %155, metadata !1692, metadata !DIExpression()), !dbg !1747
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1851
  %158 = load i8, i8* %157, align 1, !dbg !1851, !tbaa !1318
  call void @llvm.dbg.value(metadata i8 %158, metadata !1709, metadata !DIExpression()), !dbg !1839
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
  ], !dbg !1852

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1853

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1854

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1839
  %162 = and i8 %127, 1, !dbg !1857
  %163 = icmp eq i8 %162, 0, !dbg !1857
  %164 = and i1 %110, %163, !dbg !1857
  br i1 %164, label %165, label %181, !dbg !1857

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1859
  br i1 %166, label %167, label %169, !dbg !1863

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1859
  store i8 39, i8* %168, align 1, !dbg !1859, !tbaa !1318
  br label %169, !dbg !1859

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %170, metadata !1699, metadata !DIExpression()), !dbg !1747
  %171 = icmp ult i64 %170, %130, !dbg !1864
  br i1 %171, label %172, label %174, !dbg !1867

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1864
  store i8 36, i8* %173, align 1, !dbg !1864, !tbaa !1318
  br label %174, !dbg !1864

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %175, metadata !1699, metadata !DIExpression()), !dbg !1747
  %176 = icmp ult i64 %175, %130, !dbg !1868
  br i1 %176, label %177, label %179, !dbg !1871

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1868
  store i8 39, i8* %178, align 1, !dbg !1868, !tbaa !1318
  br label %179, !dbg !1868

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %180, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1706, metadata !DIExpression()), !dbg !1747
  br label %181, !dbg !1872

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1747
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %183, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %182, metadata !1699, metadata !DIExpression()), !dbg !1747
  %184 = icmp ult i64 %182, %130, !dbg !1873
  br i1 %184, label %185, label %187, !dbg !1876

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1873
  store i8 92, i8* %186, align 1, !dbg !1873, !tbaa !1318
  br label %187, !dbg !1873

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %188, metadata !1699, metadata !DIExpression()), !dbg !1747
  br i1 %103, label %189, label %463, !dbg !1877

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1879
  %191 = icmp ult i64 %190, %155, !dbg !1880
  br i1 %191, label %192, label %463, !dbg !1881

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1882
  %194 = load i8, i8* %193, align 1, !dbg !1882, !tbaa !1318
  %195 = add i8 %194, -48, !dbg !1883
  %196 = icmp ult i8 %195, 10, !dbg !1883
  br i1 %196, label %197, label %463, !dbg !1883

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1884
  br i1 %198, label %199, label %201, !dbg !1888

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1884
  store i8 48, i8* %200, align 1, !dbg !1884, !tbaa !1318
  br label %201, !dbg !1884

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %202, metadata !1699, metadata !DIExpression()), !dbg !1747
  %203 = icmp ult i64 %202, %130, !dbg !1889
  br i1 %203, label %204, label %206, !dbg !1892

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1889
  store i8 48, i8* %205, align 1, !dbg !1889, !tbaa !1318
  br label %206, !dbg !1889

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %207, metadata !1699, metadata !DIExpression()), !dbg !1747
  br label %463, !dbg !1893

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1894

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1895

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1896

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1897

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1898
  %214 = icmp ult i64 %213, %155, !dbg !1899
  br i1 %214, label %215, label %463, !dbg !1900

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1901
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1902
  %218 = load i8, i8* %217, align 1, !dbg !1902, !tbaa !1318
  %219 = icmp eq i8 %218, 63, !dbg !1903
  br i1 %219, label %220, label %463, !dbg !1904

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1905
  %222 = load i8, i8* %221, align 1, !dbg !1905, !tbaa !1318
  %223 = sext i8 %222 to i32, !dbg !1905
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
  ], !dbg !1906

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1907

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %213, metadata !1698, metadata !DIExpression()), !dbg !1747
  %226 = icmp ult i64 %124, %130, !dbg !1909
  br i1 %226, label %227, label %229, !dbg !1912

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1909
  store i8 63, i8* %228, align 1, !dbg !1909, !tbaa !1318
  br label %229, !dbg !1909

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %230, metadata !1699, metadata !DIExpression()), !dbg !1747
  %231 = icmp ult i64 %230, %130, !dbg !1913
  br i1 %231, label %232, label %234, !dbg !1916

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1913
  store i8 34, i8* %233, align 1, !dbg !1913, !tbaa !1318
  br label %234, !dbg !1913

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %235, metadata !1699, metadata !DIExpression()), !dbg !1747
  %236 = icmp ult i64 %235, %130, !dbg !1917
  br i1 %236, label %237, label %239, !dbg !1920

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1917
  store i8 34, i8* %238, align 1, !dbg !1917, !tbaa !1318
  br label %239, !dbg !1917

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %240, metadata !1699, metadata !DIExpression()), !dbg !1747
  %241 = icmp ult i64 %240, %130, !dbg !1921
  br i1 %241, label %242, label %244, !dbg !1924

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1921
  store i8 63, i8* %243, align 1, !dbg !1921, !tbaa !1318
  br label %244, !dbg !1921

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %245, metadata !1699, metadata !DIExpression()), !dbg !1747
  br label %463, !dbg !1925

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1713, metadata !DIExpression()), !dbg !1839
  br label %256, !dbg !1926

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1713, metadata !DIExpression()), !dbg !1839
  br label %256, !dbg !1927

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1713, metadata !DIExpression()), !dbg !1839
  br label %254, !dbg !1928

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1713, metadata !DIExpression()), !dbg !1839
  br label %254, !dbg !1929

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1713, metadata !DIExpression()), !dbg !1839
  br label %256, !dbg !1930

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1713, metadata !DIExpression()), !dbg !1839
  br i1 %110, label %252, label %253, !dbg !1931

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1932

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1935

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1936
  call void @llvm.dbg.value(metadata i8 %255, metadata !1713, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.label(metadata !1742), !dbg !1937
  br i1 %111, label %256, label %625, !dbg !1938

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1936
  call void @llvm.dbg.value(metadata i8 %257, metadata !1713, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.label(metadata !1743), !dbg !1940
  br i1 %102, label %488, label %463, !dbg !1941

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1942

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1943, !tbaa !1318
  %261 = icmp eq i8 %260, 0, !dbg !1944
  br i1 %261, label %262, label %463, !dbg !1945

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1946
  br i1 %263, label %264, label %463, !dbg !1948

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1839
  br label %265, !dbg !1949

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1839
  call void @llvm.dbg.value(metadata i8 %266, metadata !1716, metadata !DIExpression()), !dbg !1839
  br i1 %111, label %463, label %625, !dbg !1950

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1716, metadata !DIExpression()), !dbg !1839
  br i1 %110, label %268, label %463, !dbg !1951

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1952

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1954
  %271 = icmp ne i64 %125, 0, !dbg !1956
  %272 = or i1 %271, %270, !dbg !1957
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1957
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %274, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %273, metadata !1700, metadata !DIExpression()), !dbg !1747
  %275 = icmp ult i64 %124, %274, !dbg !1958
  br i1 %275, label %276, label %278, !dbg !1961

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1958
  store i8 39, i8* %277, align 1, !dbg !1958, !tbaa !1318
  br label %278, !dbg !1958

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %279, metadata !1699, metadata !DIExpression()), !dbg !1747
  %280 = icmp ult i64 %279, %274, !dbg !1962
  br i1 %280, label %281, label %283, !dbg !1965

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1962
  store i8 92, i8* %282, align 1, !dbg !1962, !tbaa !1318
  br label %283, !dbg !1962

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %284, metadata !1699, metadata !DIExpression()), !dbg !1747
  %285 = icmp ult i64 %284, %274, !dbg !1966
  br i1 %285, label %286, label %288, !dbg !1969

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1966
  store i8 39, i8* %287, align 1, !dbg !1966, !tbaa !1318
  br label %288, !dbg !1966

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %289, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1747
  br label %463, !dbg !1970

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1971

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1717, metadata !DIExpression()), !dbg !1972
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !1973
  %293 = load i16*, i16** %292, align 8, !dbg !1973, !tbaa !1224
  %294 = zext i8 %158 to i64, !dbg !1973
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1973
  %296 = load i16, i16* %295, align 2, !dbg !1973, !tbaa !1975
  %297 = lshr i16 %296, 14, !dbg !1977
  %298 = trunc i16 %297 to i8, !dbg !1977
  %299 = and i8 %298, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i8 %299, metadata !1720, metadata !DIExpression()), !dbg !1972
  br label %355, !dbg !1978

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1979
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1721, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8* %23, metadata !1981, metadata !DIExpression()) #12, !dbg !1989
  call void @llvm.dbg.value(metadata i32 0, metadata !1987, metadata !DIExpression()) #12, !dbg !1989
  call void @llvm.dbg.value(metadata i64 8, metadata !1988, metadata !DIExpression()) #12, !dbg !1989
  store i64 0, i64* %10, align 8, !dbg !1991
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 1, metadata !1720, metadata !DIExpression()), !dbg !1972
  %301 = icmp eq i64 %155, -1, !dbg !1992
  br i1 %301, label %302, label %304, !dbg !1994

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %303, metadata !1692, metadata !DIExpression()), !dbg !1747
  br label %304, !dbg !1996

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1839
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  br label %306, !dbg !1997

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1998
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8 %308, metadata !1720, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12, !dbg !2000
  %309 = add i64 %307, %123, !dbg !2001
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2002
  %311 = sub i64 %305, %309, !dbg !2003
  call void @llvm.dbg.value(metadata i32* %12, metadata !1727, metadata !DIExpression(DW_OP_deref)), !dbg !1760
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #12, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %312, metadata !1730, metadata !DIExpression()), !dbg !1760
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2005

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  %314 = icmp ugt i64 %305, %309, !dbg !2006
  br i1 %314, label %315, label %340, !dbg !2008

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2009
  br label %317, !dbg !2009

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1717, metadata !DIExpression()), !dbg !1972
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2010
  %321 = load i8, i8* %320, align 1, !dbg !2010, !tbaa !1318
  %322 = icmp eq i8 %321, 0, !dbg !2008
  br i1 %322, label %340, label %323, !dbg !2009

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %324, metadata !1717, metadata !DIExpression()), !dbg !1972
  %325 = add i64 %324, %123, !dbg !2012
  %326 = icmp ult i64 %325, %305, !dbg !2006
  br i1 %326, label %317, label %340, !dbg !2008, !llvm.loop !2013

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2014
  %329 = and i1 %113, %328, !dbg !2017
  call void @llvm.dbg.value(metadata i64 1, metadata !1731, metadata !DIExpression()), !dbg !2018
  br i1 %329, label %330, label %343, !dbg !2017

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1731, metadata !DIExpression()), !dbg !2018
  %332 = add i64 %331, %309, !dbg !2019
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2020
  %334 = load i8, i8* %333, align 1, !dbg !2020, !tbaa !1318
  %335 = sext i8 %334 to i32, !dbg !2020
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2021

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %337, metadata !1731, metadata !DIExpression()), !dbg !2018
  %338 = icmp eq i64 %337, %312, !dbg !2014
  br i1 %338, label %343, label %330, !dbg !2023, !llvm.loop !2024

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 %308, metadata !1720, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %307, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 %308, metadata !1720, metadata !DIExpression()), !dbg !1972
  br label %340, !dbg !2026

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !2026
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2027, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %344, metadata !1727, metadata !DIExpression()), !dbg !1760
  %345 = call i32 @iswprint(i32 %344) #12, !dbg !2029
  %346 = icmp eq i32 %345, 0, !dbg !2029
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2030
  call void @llvm.dbg.value(metadata i8 %347, metadata !1720, metadata !DIExpression()), !dbg !1972
  %348 = add i64 %312, %307, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %348, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 %347, metadata !1720, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %348, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !2026
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2032
  %350 = icmp eq i32 %349, 0, !dbg !2033
  br i1 %350, label %306, label %351, !dbg !2034, !llvm.loop !2035

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !2037
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i32 2, metadata !1693, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %99, metadata !1703, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %305, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !2026
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !2037
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1839
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2038
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2038
  call void @llvm.dbg.value(metadata i8 %358, metadata !1720, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %357, metadata !1717, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %356, metadata !1692, metadata !DIExpression()), !dbg !1747
  %359 = and i8 %358, 1, !dbg !2039
  %360 = icmp ne i8 %359, 0, !dbg !2039
  call void @llvm.dbg.value(metadata i8 %359, metadata !1716, metadata !DIExpression()), !dbg !1839
  %361 = icmp ult i64 %357, 2, !dbg !2040
  %362 = or i1 %360, %114, !dbg !2041
  %363 = and i1 %361, %362, !dbg !2042
  br i1 %363, label %463, label %364, !dbg !2042

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %365, metadata !1738, metadata !DIExpression()), !dbg !2044
  br label %366, !dbg !2045

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1832
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1747
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1768
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1839
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1839
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2046
  call void @llvm.dbg.value(metadata i8 %372, metadata !1715, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %371, metadata !1714, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %370, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %369, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %368, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %367, metadata !1698, metadata !DIExpression()), !dbg !1747
  br i1 %362, label %419, label %373, !dbg !2047

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2052

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1839
  %375 = and i8 %369, 1, !dbg !2055
  %376 = icmp eq i8 %375, 0, !dbg !2055
  %377 = and i1 %110, %376, !dbg !2055
  br i1 %377, label %378, label %394, !dbg !2055

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2057
  br i1 %379, label %380, label %382, !dbg !2061

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2057
  store i8 39, i8* %381, align 1, !dbg !2057, !tbaa !1318
  br label %382, !dbg !2057

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %383, metadata !1699, metadata !DIExpression()), !dbg !1747
  %384 = icmp ult i64 %383, %130, !dbg !2062
  br i1 %384, label %385, label %387, !dbg !2065

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2062
  store i8 36, i8* %386, align 1, !dbg !2062, !tbaa !1318
  br label %387, !dbg !2062

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %388, metadata !1699, metadata !DIExpression()), !dbg !1747
  %389 = icmp ult i64 %388, %130, !dbg !2066
  br i1 %389, label %390, label %392, !dbg !2069

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2066
  store i8 39, i8* %391, align 1, !dbg !2066, !tbaa !1318
  br label %392, !dbg !2066

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %393, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1706, metadata !DIExpression()), !dbg !1747
  br label %394, !dbg !2070

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1747
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %396, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %395, metadata !1699, metadata !DIExpression()), !dbg !1747
  %397 = icmp ult i64 %395, %130, !dbg !2071
  br i1 %397, label %398, label %400, !dbg !2074

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2071
  store i8 92, i8* %399, align 1, !dbg !2071, !tbaa !1318
  br label %400, !dbg !2071

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %401, metadata !1699, metadata !DIExpression()), !dbg !1747
  %402 = icmp ult i64 %401, %130, !dbg !2075
  br i1 %402, label %403, label %407, !dbg !2078

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2075
  %405 = or i8 %404, 48, !dbg !2075
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2075
  store i8 %405, i8* %406, align 1, !dbg !2075, !tbaa !1318
  br label %407, !dbg !2075

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %408, metadata !1699, metadata !DIExpression()), !dbg !1747
  %409 = icmp ult i64 %408, %130, !dbg !2079
  br i1 %409, label %410, label %415, !dbg !2082

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2079
  %412 = and i8 %411, 7, !dbg !2079
  %413 = or i8 %412, 48, !dbg !2079
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2079
  store i8 %413, i8* %414, align 1, !dbg !2079, !tbaa !1318
  br label %415, !dbg !2079

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %416, metadata !1699, metadata !DIExpression()), !dbg !1747
  %417 = and i8 %370, 7, !dbg !2083
  %418 = or i8 %417, 48, !dbg !2084
  call void @llvm.dbg.value(metadata i8 %418, metadata !1709, metadata !DIExpression()), !dbg !1839
  br label %428, !dbg !2085

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2086
  %421 = icmp eq i8 %420, 0, !dbg !2086
  br i1 %421, label %428, label %422, !dbg !2088

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2089
  br i1 %423, label %424, label %426, !dbg !2093

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2089
  store i8 92, i8* %425, align 1, !dbg !2089, !tbaa !1318
  br label %426, !dbg !2089

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %427, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1839
  br label %428, !dbg !2094

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1747
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1768
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1839
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1839
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1839
  call void @llvm.dbg.value(metadata i8 %433, metadata !1715, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %432, metadata !1714, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %431, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %430, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %429, metadata !1699, metadata !DIExpression()), !dbg !1747
  %434 = add i64 %367, 1, !dbg !2095
  %435 = icmp ugt i64 %365, %434, !dbg !2097
  br i1 %435, label %436, label %526, !dbg !2098

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2099
  %438 = icmp ne i8 %437, 0, !dbg !2099
  %439 = and i8 %433, 1, !dbg !2099
  %440 = icmp eq i8 %439, 0, !dbg !2099
  %441 = and i1 %438, %440, !dbg !2099
  br i1 %441, label %442, label %453, !dbg !2099

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2102
  br i1 %443, label %444, label %446, !dbg !2106

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2102
  store i8 39, i8* %445, align 1, !dbg !2102, !tbaa !1318
  br label %446, !dbg !2102

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %447, metadata !1699, metadata !DIExpression()), !dbg !1747
  %448 = icmp ult i64 %447, %130, !dbg !2107
  br i1 %448, label %449, label %451, !dbg !2110

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2107
  store i8 39, i8* %450, align 1, !dbg !2107, !tbaa !1318
  br label %451, !dbg !2107

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %452, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1747
  br label %453, !dbg !2111

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2112
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %455, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %454, metadata !1699, metadata !DIExpression()), !dbg !1747
  %456 = icmp ult i64 %454, %130, !dbg !2113
  br i1 %456, label %457, label %459, !dbg !2116

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2113
  store i8 %431, i8* %458, align 1, !dbg !2113, !tbaa !1318
  br label %459, !dbg !2113

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %460, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %434, metadata !1698, metadata !DIExpression()), !dbg !1747
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2117
  %462 = load i8, i8* %461, align 1, !dbg !2117, !tbaa !1318
  call void @llvm.dbg.value(metadata i8 %462, metadata !1709, metadata !DIExpression()), !dbg !1839
  br label %366, !dbg !2118, !llvm.loop !2119

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1832
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1747
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1764
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2122
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1747
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1747
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1839
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1839
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1839
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %472, metadata !1716, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %471, metadata !1715, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %156, metadata !1714, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %470, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %469, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %468, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %467, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %466, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %465, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %464, metadata !1698, metadata !DIExpression()), !dbg !1747
  br i1 %117, label %486, label %474, !dbg !2123

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2124
  %476 = zext i8 %475 to i64, !dbg !2124
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2125
  %478 = load i32, i32* %477, align 4, !dbg !2125, !tbaa !1293
  %479 = and i8 %470, 31, !dbg !2126
  %480 = zext i8 %479 to i32, !dbg !2126
  %481 = shl nuw i32 1, %480, !dbg !2127
  %482 = and i32 %478, %481, !dbg !2127
  %483 = icmp eq i32 %482, 0, !dbg !2127
  %484 = icmp eq i8 %156, 0, !dbg !2128
  %485 = and i1 %484, %483, !dbg !2129
  br i1 %485, label %526, label %488, !dbg !2129

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2128
  br i1 %487, label %526, label %488, !dbg !2130

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2131
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1747
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1764
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2122
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1768
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1769
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1839
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1839
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %496, metadata !1716, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %495, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %494, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %493, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %492, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %491, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %490, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %489, metadata !1698, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1744), !dbg !2132
  br i1 %109, label %498, label %629, !dbg !2133

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1715, metadata !DIExpression()), !dbg !1839
  %499 = and i8 %493, 1, !dbg !2135
  %500 = icmp eq i8 %499, 0, !dbg !2135
  %501 = and i1 %110, %500, !dbg !2135
  br i1 %501, label %502, label %518, !dbg !2135

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2137
  br i1 %503, label %504, label %506, !dbg !2141

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2137
  store i8 39, i8* %505, align 1, !dbg !2137, !tbaa !1318
  br label %506, !dbg !2137

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %507, metadata !1699, metadata !DIExpression()), !dbg !1747
  %508 = icmp ult i64 %507, %497, !dbg !2142
  br i1 %508, label %509, label %511, !dbg !2145

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2142
  store i8 36, i8* %510, align 1, !dbg !2142, !tbaa !1318
  br label %511, !dbg !2142

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %512, metadata !1699, metadata !DIExpression()), !dbg !1747
  %513 = icmp ult i64 %512, %497, !dbg !2146
  br i1 %513, label %514, label %516, !dbg !2149

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2146
  store i8 39, i8* %515, align 1, !dbg !2146, !tbaa !1318
  br label %516, !dbg !2146

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %517, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 1, metadata !1706, metadata !DIExpression()), !dbg !1747
  br label %518, !dbg !2150

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1839
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %520, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %519, metadata !1699, metadata !DIExpression()), !dbg !1747
  %521 = icmp ult i64 %519, %497, !dbg !2151
  br i1 %521, label %522, label %524, !dbg !2154

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2151
  store i8 92, i8* %523, align 1, !dbg !2151, !tbaa !1318
  br label %524, !dbg !2151

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %525, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %536, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %535, metadata !1716, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %534, metadata !1715, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %533, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %532, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %531, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %530, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %529, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %528, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %527, metadata !1698, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1745), !dbg !2155
  br label %553, !dbg !2156

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2131
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1747
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1764
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2122
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1768
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1769
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2159
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1839
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1839
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %535, metadata !1716, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %534, metadata !1715, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %533, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %532, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %531, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %530, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %529, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %528, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %527, metadata !1698, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1745), !dbg !2155
  %537 = and i8 %531, 1, !dbg !2156
  %538 = icmp ne i8 %537, 0, !dbg !2156
  %539 = and i8 %534, 1, !dbg !2156
  %540 = icmp eq i8 %539, 0, !dbg !2156
  %541 = and i1 %538, %540, !dbg !2156
  br i1 %541, label %542, label %553, !dbg !2156

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2160
  br i1 %543, label %544, label %546, !dbg !2164

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2160
  store i8 39, i8* %545, align 1, !dbg !2160, !tbaa !1318
  br label %546, !dbg !2160

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %547, metadata !1699, metadata !DIExpression()), !dbg !1747
  %548 = icmp ult i64 %547, %536, !dbg !2165
  br i1 %548, label %549, label %551, !dbg !2168

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2165
  store i8 39, i8* %550, align 1, !dbg !2165, !tbaa !1318
  br label %551, !dbg !2165

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %552, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1706, metadata !DIExpression()), !dbg !1747
  br label %553, !dbg !2169

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1839
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %562, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %561, metadata !1699, metadata !DIExpression()), !dbg !1747
  %563 = icmp ult i64 %561, %554, !dbg !2170
  br i1 %563, label %564, label %566, !dbg !2173

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2170
  store i8 %556, i8* %565, align 1, !dbg !2170, !tbaa !1318
  br label %566, !dbg !2170

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %567, metadata !1699, metadata !DIExpression()), !dbg !1747
  %568 = and i8 %555, 1, !dbg !2174
  %569 = icmp eq i8 %568, 0, !dbg !2174
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2176
  call void @llvm.dbg.value(metadata i8 %570, metadata !1708, metadata !DIExpression()), !dbg !1747
  br label %571, !dbg !2177

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2131
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1747
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1764
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2122
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1768
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1747
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1770
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %578, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %577, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %576, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %575, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %574, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %573, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %572, metadata !1698, metadata !DIExpression()), !dbg !1747
  %580 = add i64 %572, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %580, metadata !1698, metadata !DIExpression()), !dbg !1747
  br label %122, !dbg !2179, !llvm.loop !2180

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %127, metadata !1706, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %128, metadata !1707, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %129, metadata !1708, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  %583 = icmp eq i64 %124, 0, !dbg !2182
  %584 = and i1 %110, %583, !dbg !2184
  %585 = xor i1 %584, true, !dbg !2184
  %586 = or i1 %109, %585, !dbg !2184
  br i1 %586, label %587, label %629, !dbg !2184

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2185
  %589 = xor i1 %588, true, !dbg !2185
  %590 = and i8 %128, 1, !dbg !2187
  %591 = icmp eq i8 %590, 0, !dbg !2187
  %592 = or i1 %591, %589, !dbg !2185
  br i1 %592, label %602, label %593, !dbg !2185

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2188
  %595 = icmp eq i8 %594, 0, !dbg !2188
  br i1 %595, label %598, label %596, !dbg !2191

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %94, metadata !1696, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %95, metadata !1697, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %125, metadata !1700, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %582, metadata !1692, metadata !DIExpression()), !dbg !1747
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2192
  br label %645, !dbg !2193

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2194
  %600 = icmp ne i64 %125, 0, !dbg !2196
  %601 = and i1 %600, %599, !dbg !2197
  br i1 %601, label %26, label %602, !dbg !2197

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %130, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  %603 = icmp ne i8* %97, null, !dbg !2198
  %604 = and i1 %603, %109, !dbg !2200
  br i1 %604, label %605, label %620, !dbg !2200

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %124, metadata !1699, metadata !DIExpression()), !dbg !1747
  %606 = load i8, i8* %97, align 1, !dbg !2201, !tbaa !1318
  %607 = icmp eq i8 %606, 0, !dbg !2204
  br i1 %607, label %620, label %608, !dbg !2204

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1701, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %611, metadata !1699, metadata !DIExpression()), !dbg !1747
  %612 = icmp ult i64 %611, %130, !dbg !2205
  br i1 %612, label %613, label %615, !dbg !2208

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2205
  store i8 %609, i8* %614, align 1, !dbg !2205, !tbaa !1318
  br label %615, !dbg !2205

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %616, metadata !1699, metadata !DIExpression()), !dbg !1747
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2209
  call void @llvm.dbg.value(metadata i8* %617, metadata !1701, metadata !DIExpression()), !dbg !1747
  %618 = load i8, i8* %617, align 1, !dbg !2201, !tbaa !1318
  %619 = icmp eq i8 %618, 0, !dbg !2204
  br i1 %619, label %620, label %608, !dbg !2204, !llvm.loop !2210

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1801
  call void @llvm.dbg.value(metadata i64 %621, metadata !1699, metadata !DIExpression()), !dbg !1747
  %622 = icmp ult i64 %621, %130, !dbg !2212
  br i1 %622, label %623, label %645, !dbg !2214

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2215
  store i8 0, i8* %624, align 1, !dbg !2216, !tbaa !1318
  br label %645, !dbg !2215

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %630, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1746), !dbg !2217
  %627 = icmp eq i8 %101, 0, !dbg !2218
  %628 = select i1 %627, i32 2, i32 4, !dbg !2218
  br label %635, !dbg !2218

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1690, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %630, metadata !1692, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.label(metadata !1746), !dbg !2217
  %632 = icmp eq i32 %93, 2, !dbg !2220
  %633 = icmp eq i8 %101, 0, !dbg !2218
  %634 = select i1 %633, i32 2, i32 4, !dbg !2218
  br i1 %632, label %635, label %639, !dbg !2218

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2218

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1693, metadata !DIExpression()), !dbg !1747
  %643 = and i32 %5, -3, !dbg !2221
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2222
  br label %645, !dbg !2223

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2224
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2229, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 %1, metadata !2230, metadata !DIExpression()), !dbg !2233
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2234
  call void @llvm.dbg.value(metadata i8* %3, metadata !2231, metadata !DIExpression()), !dbg !2233
  %4 = icmp eq i8* %3, %0, !dbg !2235
  br i1 %4, label %5, label %71, !dbg !2237

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2238
  call void @llvm.dbg.value(metadata i8* %6, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8* %6, metadata !2239, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* undef, metadata !2245, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 85, metadata !2246, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 84, metadata !2247, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 70, metadata !2248, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 45, metadata !2249, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 56, metadata !2250, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 0, metadata !2251, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 0, metadata !2252, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 0, metadata !2254, metadata !DIExpression()), !dbg !2255
  %7 = load i8, i8* %6, align 1, !dbg !2258, !tbaa !1318
  %8 = and i8 %7, -33, !dbg !2258
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2258

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2260, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8* undef, metadata !2265, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 84, metadata !2266, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 70, metadata !2267, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 45, metadata !2268, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 56, metadata !2269, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 0, metadata !2271, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 0, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 0, metadata !2273, metadata !DIExpression()), !dbg !2274
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2278
  %11 = load i8, i8* %10, align 1, !dbg !2278, !tbaa !1318
  %12 = and i8 %11, -33, !dbg !2278
  %13 = icmp eq i8 %12, 84, !dbg !2278
  br i1 %13, label %14, label %68, !dbg !2278

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2280, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* undef, metadata !2285, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 70, metadata !2286, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 45, metadata !2287, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 56, metadata !2288, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 0, metadata !2289, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2293
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2297
  %16 = load i8, i8* %15, align 1, !dbg !2297, !tbaa !1318
  %17 = and i8 %16, -33, !dbg !2297
  %18 = icmp eq i8 %17, 70, !dbg !2297
  br i1 %18, label %19, label %68, !dbg !2297

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2299, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 45, metadata !2305, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 56, metadata !2306, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2311
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2315
  %21 = load i8, i8* %20, align 1, !dbg !2315, !tbaa !1318
  %22 = icmp eq i8 %21, 45, !dbg !2315
  br i1 %22, label %23, label %68, !dbg !2317

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2318, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8* undef, metadata !2323, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 56, metadata !2324, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 0, metadata !2327, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 0, metadata !2328, metadata !DIExpression()), !dbg !2329
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2333
  %25 = load i8, i8* %24, align 1, !dbg !2333, !tbaa !1318
  %26 = icmp eq i8 %25, 56, !dbg !2333
  br i1 %26, label %27, label %68, !dbg !2335

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2336, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* undef, metadata !2341, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2346
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2350
  %29 = load i8, i8* %28, align 1, !dbg !2350, !tbaa !1318
  %30 = icmp eq i8 %29, 0, !dbg !2350
  br i1 %30, label %31, label %68, !dbg !2352

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2353, !tbaa !1318
  %33 = icmp eq i8 %32, 96, !dbg !2354
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !2353
  br label %71, !dbg !2355

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2260, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8* undef, metadata !2265, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 66, metadata !2266, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 49, metadata !2267, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 56, metadata !2268, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 48, metadata !2269, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 51, metadata !2270, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 48, metadata !2271, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2272, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i8 0, metadata !2273, metadata !DIExpression()), !dbg !2356
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2360
  %37 = load i8, i8* %36, align 1, !dbg !2360, !tbaa !1318
  %38 = and i8 %37, -33, !dbg !2360
  %39 = icmp eq i8 %38, 66, !dbg !2360
  br i1 %39, label %40, label %68, !dbg !2360

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2280, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* undef, metadata !2285, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 49, metadata !2286, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 56, metadata !2287, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 48, metadata !2288, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 51, metadata !2289, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 48, metadata !2290, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8 0, metadata !2292, metadata !DIExpression()), !dbg !2361
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2363
  %42 = load i8, i8* %41, align 1, !dbg !2363, !tbaa !1318
  %43 = icmp eq i8 %42, 49, !dbg !2363
  br i1 %43, label %44, label %68, !dbg !2364

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2299, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8* undef, metadata !2304, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 56, metadata !2305, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 48, metadata !2306, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 51, metadata !2307, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 48, metadata !2308, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2365
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2367
  %46 = load i8, i8* %45, align 1, !dbg !2367, !tbaa !1318
  %47 = icmp eq i8 %46, 56, !dbg !2367
  br i1 %47, label %48, label %68, !dbg !2368

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2318, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* undef, metadata !2323, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 48, metadata !2324, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 51, metadata !2325, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 48, metadata !2326, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 0, metadata !2327, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 0, metadata !2328, metadata !DIExpression()), !dbg !2369
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2371
  %50 = load i8, i8* %49, align 1, !dbg !2371, !tbaa !1318
  %51 = icmp eq i8 %50, 48, !dbg !2371
  br i1 %51, label %52, label %68, !dbg !2372

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2336, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* undef, metadata !2341, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 51, metadata !2342, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 48, metadata !2343, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2373
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2375
  %54 = load i8, i8* %53, align 1, !dbg !2375, !tbaa !1318
  %55 = icmp eq i8 %54, 51, !dbg !2375
  br i1 %55, label %56, label %68, !dbg !2376

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2377, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* undef, metadata !2382, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 48, metadata !2383, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2385, metadata !DIExpression()), !dbg !2386
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2390
  %58 = load i8, i8* %57, align 1, !dbg !2390, !tbaa !1318
  %59 = icmp eq i8 %58, 48, !dbg !2390
  br i1 %59, label %60, label %68, !dbg !2392

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2393, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* undef, metadata !2398, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2401
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2405
  %62 = load i8, i8* %61, align 1, !dbg !2405, !tbaa !1318
  %63 = icmp eq i8 %62, 0, !dbg !2405
  br i1 %63, label %64, label %68, !dbg !2407

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2408, !tbaa !1318
  %66 = icmp eq i8 %65, 96, !dbg !2409
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !2408
  br label %71, !dbg !2410

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2411
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !2412
  br label %71, !dbg !2413

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2233
  ret i8* %72, !dbg !2414
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !294 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !298 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 %1, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()) #12, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %1, metadata !2428, metadata !DIExpression()) #12, !dbg !2436
  call void @llvm.dbg.value(metadata i64* null, metadata !2429, metadata !DIExpression()) #12, !dbg !2436
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2430, metadata !DIExpression()) #12, !dbg !2436
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2438
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2431, metadata !DIExpression()) #12, !dbg !2436
  %6 = tail call i32* @__errno_location() #25, !dbg !2439
  %7 = load i32, i32* %6, align 4, !dbg !2439, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %7, metadata !2432, metadata !DIExpression()) #12, !dbg !2436
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2440
  %9 = load i32, i32* %8, align 4, !dbg !2440, !tbaa !1632
  %10 = or i32 %9, 1, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %10, metadata !2433, metadata !DIExpression()) #12, !dbg !2436
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2442
  %12 = load i32, i32* %11, align 8, !dbg !2442, !tbaa !1580
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2443
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2444
  %15 = load i8*, i8** %14, align 8, !dbg !2444, !tbaa !1655
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2445
  %17 = load i8*, i8** %16, align 8, !dbg !2445, !tbaa !1658
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2446
  %19 = add i64 %18, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %19, metadata !2434, metadata !DIExpression()) #12, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %19, metadata !2448, metadata !DIExpression()) #12, !dbg !2453
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %20, metadata !2435, metadata !DIExpression()) #12, !dbg !2436
  %21 = load i32, i32* %11, align 8, !dbg !2456, !tbaa !1580
  %22 = load i8*, i8** %14, align 8, !dbg !2457, !tbaa !1655
  %23 = load i8*, i8** %16, align 8, !dbg !2458, !tbaa !1658
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2459
  store i32 %7, i32* %6, align 4, !dbg !2460, !tbaa !1293
  ret i8* %20, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2423, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %1, metadata !2428, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i64* %2, metadata !2429, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2430, metadata !DIExpression()), !dbg !2462
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2463
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2431, metadata !DIExpression()), !dbg !2462
  %7 = tail call i32* @__errno_location() #25, !dbg !2464
  %8 = load i32, i32* %7, align 4, !dbg !2464, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %8, metadata !2432, metadata !DIExpression()), !dbg !2462
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2465
  %10 = load i32, i32* %9, align 4, !dbg !2465, !tbaa !1632
  %11 = icmp ne i64* %2, null, !dbg !2466
  %12 = xor i1 %11, true, !dbg !2466
  %13 = zext i1 %12 to i32, !dbg !2466
  %14 = or i32 %10, %13, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %14, metadata !2433, metadata !DIExpression()), !dbg !2462
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2468
  %16 = load i32, i32* %15, align 8, !dbg !2468, !tbaa !1580
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2469
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2470
  %19 = load i8*, i8** %18, align 8, !dbg !2470, !tbaa !1655
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2471
  %21 = load i8*, i8** %20, align 8, !dbg !2471, !tbaa !1658
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2472
  %23 = add i64 %22, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %23, metadata !2434, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %23, metadata !2448, metadata !DIExpression()) #12, !dbg !2474
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2476
  call void @llvm.dbg.value(metadata i8* %24, metadata !2435, metadata !DIExpression()), !dbg !2462
  %25 = load i32, i32* %15, align 8, !dbg !2477, !tbaa !1580
  %26 = load i8*, i8** %18, align 8, !dbg !2478, !tbaa !1655
  %27 = load i8*, i8** %20, align 8, !dbg !2479, !tbaa !1658
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2480
  store i32 %8, i32* %7, align 4, !dbg !2481, !tbaa !1293
  br i1 %11, label %29, label %30, !dbg !2482

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2483, !tbaa !2485
  br label %30, !dbg !2487

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2488
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2489 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2493, !tbaa !1224
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 1, metadata !2492, metadata !DIExpression()), !dbg !2494
  %2 = load i32, i32* @nslots, align 4, !dbg !2495, !tbaa !1293
  %3 = icmp sgt i32 %2, 1, !dbg !2498
  br i1 %3, label %4, label %12, !dbg !2499

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2492, metadata !DIExpression()), !dbg !2494
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2500
  %7 = load i8*, i8** %6, align 8, !dbg !2500, !tbaa !2501
  tail call void @free(i8* %7) #12, !dbg !2503
  %8 = add nuw nsw i64 %5, 1, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %8, metadata !2492, metadata !DIExpression()), !dbg !2494
  %9 = load i32, i32* @nslots, align 4, !dbg !2495, !tbaa !1293
  %10 = sext i32 %9 to i64, !dbg !2498
  %11 = icmp slt i64 %8, %10, !dbg !2498
  br i1 %11, label %4, label %12, !dbg !2499, !llvm.loop !2505

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2507
  %14 = load i8*, i8** %13, align 8, !dbg !2507, !tbaa !2501
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2509
  br i1 %15, label %17, label %16, !dbg !2510

16:                                               ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2511
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2513, !tbaa !2514
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2515, !tbaa !2501
  br label %17, !dbg !2516

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2517
  br i1 %18, label %21, label %19, !dbg !2519

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2520
  tail call void @free(i8* %20) #12, !dbg !2522
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2523, !tbaa !1224
  br label %21, !dbg !2524

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2525, !tbaa !1293
  ret void, !dbg !2526
}

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2529, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8* %1, metadata !2530, metadata !DIExpression()), !dbg !2531
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2532
  ret i8* %3, !dbg !2533
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2534 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2538, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* %1, metadata !2539, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i64 %2, metadata !2540, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2541, metadata !DIExpression()), !dbg !2553
  %5 = tail call i32* @__errno_location() #25, !dbg !2554
  %6 = load i32, i32* %5, align 4, !dbg !2554, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %6, metadata !2542, metadata !DIExpression()), !dbg !2553
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2555, !tbaa !1224
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2543, metadata !DIExpression()), !dbg !2553
  %8 = icmp slt i32 %0, 0, !dbg !2556
  br i1 %8, label %9, label %10, !dbg !2558

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2559
  unreachable, !dbg !2559

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2560, !tbaa !1293
  %12 = icmp sgt i32 %11, %0, !dbg !2561
  br i1 %12, label %34, label %13, !dbg !2562

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2563
  call void @llvm.dbg.value(metadata i1 %14, metadata !2544, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2547, metadata !DIExpression()), !dbg !2564
  %15 = icmp eq i32 %0, 2147483647, !dbg !2565
  br i1 %15, label %16, label %17, !dbg !2567

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2568
  unreachable, !dbg !2568

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2569
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2569
  %20 = add nuw nsw i32 %0, 1, !dbg !2570
  %21 = sext i32 %20 to i64, !dbg !2571
  %22 = shl nuw nsw i64 %21, 4, !dbg !2572
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2573
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2573
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2543, metadata !DIExpression()), !dbg !2553
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2574, !tbaa !1224
  br i1 %14, label %25, label %26, !dbg !2575

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2576, !tbaa.struct !2578
  br label %26, !dbg !2579

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2580, !tbaa !1293
  %28 = sext i32 %27 to i64, !dbg !2581
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2581
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2582
  %31 = sub nsw i32 %20, %27, !dbg !2583
  %32 = sext i32 %31 to i64, !dbg !2584
  %33 = shl nsw i64 %32, 4, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %30, metadata !1981, metadata !DIExpression()) #12, !dbg !2586
  call void @llvm.dbg.value(metadata i32 0, metadata !1987, metadata !DIExpression()) #12, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %33, metadata !1988, metadata !DIExpression()) #12, !dbg !2586
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #12, !dbg !2588
  store i32 %20, i32* @nslots, align 4, !dbg !2589, !tbaa !1293
  br label %34, !dbg !2590

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2553
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2543, metadata !DIExpression()), !dbg !2553
  %36 = zext i32 %0 to i64, !dbg !2591
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2592
  %38 = load i64, i64* %37, align 8, !dbg !2592, !tbaa !2514
  call void @llvm.dbg.value(metadata i64 %38, metadata !2548, metadata !DIExpression()), !dbg !2593
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2594
  %40 = load i8*, i8** %39, align 8, !dbg !2594, !tbaa !2501
  call void @llvm.dbg.value(metadata i8* %40, metadata !2550, metadata !DIExpression()), !dbg !2593
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2595
  %42 = load i32, i32* %41, align 4, !dbg !2595, !tbaa !1632
  %43 = or i32 %42, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %43, metadata !2551, metadata !DIExpression()), !dbg !2593
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2597
  %45 = load i32, i32* %44, align 8, !dbg !2597, !tbaa !1580
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2598
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2599
  %48 = load i8*, i8** %47, align 8, !dbg !2599, !tbaa !1655
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2600
  %50 = load i8*, i8** %49, align 8, !dbg !2600, !tbaa !1658
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2601
  call void @llvm.dbg.value(metadata i64 %51, metadata !2552, metadata !DIExpression()), !dbg !2593
  %52 = icmp ugt i64 %38, %51, !dbg !2602
  br i1 %52, label %63, label %53, !dbg !2604

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %54, metadata !2548, metadata !DIExpression()), !dbg !2593
  store i64 %54, i64* %37, align 8, !dbg !2607, !tbaa !2514
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2608
  br i1 %55, label %57, label %56, !dbg !2610

56:                                               ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2611
  br label %57, !dbg !2611

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2448, metadata !DIExpression()) #12, !dbg !2612
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %58, metadata !2550, metadata !DIExpression()), !dbg !2593
  store i8* %58, i8** %39, align 8, !dbg !2615, !tbaa !2501
  %59 = load i32, i32* %44, align 8, !dbg !2616, !tbaa !1580
  %60 = load i8*, i8** %47, align 8, !dbg !2617, !tbaa !1655
  %61 = load i8*, i8** %49, align 8, !dbg !2618, !tbaa !1658
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2619
  br label %63, !dbg !2620

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2593
  call void @llvm.dbg.value(metadata i8* %64, metadata !2550, metadata !DIExpression()), !dbg !2593
  store i32 %6, i32* %5, align 4, !dbg !2621, !tbaa !1293
  ret i8* %64, !dbg !2622
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8* %1, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %2, metadata !2629, metadata !DIExpression()), !dbg !2630
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2631
  ret i8* %4, !dbg !2632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2633 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i32 0, metadata !2529, metadata !DIExpression()) #12, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %0, metadata !2530, metadata !DIExpression()) #12, !dbg !2637
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2639
  ret i8* %2, !dbg !2640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2641 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2645, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i64 %1, metadata !2646, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()) #12, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %0, metadata !2628, metadata !DIExpression()) #12, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %1, metadata !2629, metadata !DIExpression()) #12, !dbg !2648
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2650
  ret i8* %3, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2652 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2656, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i32 %1, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !2658, metadata !DIExpression()), !dbg !2660
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2661
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2659, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 %1, metadata !2663, metadata !DIExpression()) #12, !dbg !2669
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2668, metadata !DIExpression()) #12, !dbg !2671
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2671, !alias.scope !2672
  %6 = icmp eq i32 %1, 10, !dbg !2675
  br i1 %6, label %7, label %8, !dbg !2677

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2678, !noalias !2672
  unreachable, !dbg !2678

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2679
  store i32 %1, i32* %9, align 8, !dbg !2680, !tbaa !1580, !alias.scope !2672
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2681
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2682
  ret i8* %10, !dbg !2683
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2684 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2688, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %1, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %2, metadata !2690, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %3, metadata !2691, metadata !DIExpression()), !dbg !2693
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2694
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2692, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %1, metadata !2663, metadata !DIExpression()) #12, !dbg !2696
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2668, metadata !DIExpression()) #12, !dbg !2698
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #12, !dbg !2698, !alias.scope !2699
  %7 = icmp eq i32 %1, 10, !dbg !2702
  br i1 %7, label %8, label %9, !dbg !2703

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2704, !noalias !2699
  unreachable, !dbg !2704

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2705
  store i32 %1, i32* %10, align 8, !dbg !2706, !tbaa !1580, !alias.scope !2699
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2707
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2708
  ret i8* %11, !dbg !2709
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2710 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2668, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2659, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32 %0, metadata !2714, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8* %1, metadata !2715, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 0, metadata !2656, metadata !DIExpression()) #12, !dbg !2721
  call void @llvm.dbg.value(metadata i32 %0, metadata !2657, metadata !DIExpression()) #12, !dbg !2721
  call void @llvm.dbg.value(metadata i8* %1, metadata !2658, metadata !DIExpression()) #12, !dbg !2721
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2722
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()) #12, !dbg !2723
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #12, !dbg !2716, !alias.scope !2724
  %5 = icmp eq i32 %0, 10, !dbg !2727
  br i1 %5, label %6, label %7, !dbg !2728

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2729, !noalias !2724
  unreachable, !dbg !2729

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2730
  store i32 %0, i32* %8, align 8, !dbg !2731, !tbaa !1580, !alias.scope !2724
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2732
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2733
  ret i8* %9, !dbg !2734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2735 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2668, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2692, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 %0, metadata !2739, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8* %1, metadata !2740, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %2, metadata !2741, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2688, metadata !DIExpression()) #12, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %0, metadata !2689, metadata !DIExpression()) #12, !dbg !2747
  call void @llvm.dbg.value(metadata i8* %1, metadata !2690, metadata !DIExpression()) #12, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %2, metadata !2691, metadata !DIExpression()) #12, !dbg !2747
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2748
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2748
  call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()) #12, !dbg !2749
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2742, !alias.scope !2750
  %6 = icmp eq i32 %0, 10, !dbg !2753
  br i1 %6, label %7, label %8, !dbg !2754

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2755, !noalias !2750
  unreachable, !dbg !2755

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2756
  store i32 %0, i32* %9, align 8, !dbg !2757, !tbaa !1580, !alias.scope !2750
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2758
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2759
  ret i8* %10, !dbg !2760
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2761 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %1, metadata !2766, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8 %2, metadata !2767, metadata !DIExpression()), !dbg !2769
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2770
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2770
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2768, metadata !DIExpression()), !dbg !2771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2772, !tbaa.struct !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1598, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8 %2, metadata !1599, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 1, metadata !1600, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8 %2, metadata !1601, metadata !DIExpression()), !dbg !2774
  %6 = lshr i8 %2, 5, !dbg !2776
  %7 = zext i8 %6 to i64, !dbg !2776
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2777
  call void @llvm.dbg.value(metadata i32* %8, metadata !1603, metadata !DIExpression()), !dbg !2774
  %9 = and i8 %2, 31, !dbg !2778
  %10 = zext i8 %9 to i32, !dbg !2778
  call void @llvm.dbg.value(metadata i32 %10, metadata !1605, metadata !DIExpression()), !dbg !2774
  %11 = load i32, i32* %8, align 4, !dbg !2779, !tbaa !1293
  %12 = lshr i32 %11, %10, !dbg !2780
  %13 = and i32 %12, 1, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %13, metadata !1606, metadata !DIExpression()), !dbg !2774
  %14 = xor i32 %13, 1, !dbg !2782
  %15 = shl i32 %14, %10, !dbg !2783
  %16 = xor i32 %15, %11, !dbg !2784
  store i32 %16, i32* %8, align 4, !dbg !2784, !tbaa !1293
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2786
  ret i8* %17, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2788 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2768, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %0, metadata !2792, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8 %1, metadata !2793, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()) #12, !dbg !2797
  call void @llvm.dbg.value(metadata i64 -1, metadata !2766, metadata !DIExpression()) #12, !dbg !2797
  call void @llvm.dbg.value(metadata i8 %1, metadata !2767, metadata !DIExpression()) #12, !dbg !2797
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2798
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2799, !tbaa.struct !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1598, metadata !DIExpression()) #12, !dbg !2800
  call void @llvm.dbg.value(metadata i8 %1, metadata !1599, metadata !DIExpression()) #12, !dbg !2800
  call void @llvm.dbg.value(metadata i32 1, metadata !1600, metadata !DIExpression()) #12, !dbg !2800
  call void @llvm.dbg.value(metadata i8 %1, metadata !1601, metadata !DIExpression()) #12, !dbg !2800
  %5 = lshr i8 %1, 5, !dbg !2802
  %6 = zext i8 %5 to i64, !dbg !2802
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2803
  call void @llvm.dbg.value(metadata i32* %7, metadata !1603, metadata !DIExpression()) #12, !dbg !2800
  %8 = and i8 %1, 31, !dbg !2804
  %9 = zext i8 %8 to i32, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %9, metadata !1605, metadata !DIExpression()) #12, !dbg !2800
  %10 = load i32, i32* %7, align 4, !dbg !2805, !tbaa !1293
  %11 = lshr i32 %10, %9, !dbg !2806
  %12 = and i32 %11, 1, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %12, metadata !1606, metadata !DIExpression()) #12, !dbg !2800
  %13 = xor i32 %12, 1, !dbg !2808
  %14 = shl i32 %13, %9, !dbg !2809
  %15 = xor i32 %14, %10, !dbg !2810
  store i32 %15, i32* %7, align 4, !dbg !2810, !tbaa !1293
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2811
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2812
  ret i8* %16, !dbg !2813
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2814 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2768, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8* %0, metadata !2816, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %0, metadata !2792, metadata !DIExpression()) #12, !dbg !2821
  call void @llvm.dbg.value(metadata i8 58, metadata !2793, metadata !DIExpression()) #12, !dbg !2821
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()) #12, !dbg !2822
  call void @llvm.dbg.value(metadata i64 -1, metadata !2766, metadata !DIExpression()) #12, !dbg !2822
  call void @llvm.dbg.value(metadata i8 58, metadata !2767, metadata !DIExpression()) #12, !dbg !2822
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2823
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2824, !tbaa.struct !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1598, metadata !DIExpression()) #12, !dbg !2825
  call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()) #12, !dbg !2825
  call void @llvm.dbg.value(metadata i32 1, metadata !1600, metadata !DIExpression()) #12, !dbg !2825
  call void @llvm.dbg.value(metadata i8 58, metadata !1601, metadata !DIExpression()) #12, !dbg !2825
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2827
  call void @llvm.dbg.value(metadata i32* %4, metadata !1603, metadata !DIExpression()) #12, !dbg !2825
  call void @llvm.dbg.value(metadata i32 26, metadata !1605, metadata !DIExpression()) #12, !dbg !2825
  %5 = load i32, i32* %4, align 4, !dbg !2828, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %5, metadata !1606, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2825
  %6 = or i32 %5, 67108864, !dbg !2829
  store i32 %6, i32* %4, align 4, !dbg !2829, !tbaa !1293
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2831
  ret i8* %7, !dbg !2832
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2833 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2768, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %0, metadata !2835, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %1, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %0, metadata !2765, metadata !DIExpression()) #12, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %1, metadata !2766, metadata !DIExpression()) #12, !dbg !2840
  call void @llvm.dbg.value(metadata i8 58, metadata !2767, metadata !DIExpression()) #12, !dbg !2840
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2841
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2842, !tbaa.struct !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1598, metadata !DIExpression()) #12, !dbg !2843
  call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()) #12, !dbg !2843
  call void @llvm.dbg.value(metadata i32 1, metadata !1600, metadata !DIExpression()) #12, !dbg !2843
  call void @llvm.dbg.value(metadata i8 58, metadata !1601, metadata !DIExpression()) #12, !dbg !2843
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2845
  call void @llvm.dbg.value(metadata i32* %5, metadata !1603, metadata !DIExpression()) #12, !dbg !2843
  call void @llvm.dbg.value(metadata i32 26, metadata !1605, metadata !DIExpression()) #12, !dbg !2843
  %6 = load i32, i32* %5, align 4, !dbg !2846, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %6, metadata !1606, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2843
  %7 = or i32 %6, 67108864, !dbg !2847
  store i32 %7, i32* %5, align 4, !dbg !2847, !tbaa !1293
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2848
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2849
  ret i8* %8, !dbg !2850
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2851 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2668, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2857
  call void @llvm.dbg.value(metadata i32 %0, metadata !2853, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i32 %1, metadata !2854, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %2, metadata !2855, metadata !DIExpression()), !dbg !2859
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2860
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2860
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2856, metadata !DIExpression()), !dbg !2861
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2862
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2862
  call void @llvm.dbg.value(metadata i32 %1, metadata !2663, metadata !DIExpression()) #12, !dbg !2863
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2863
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2857, !alias.scope !2864
  %8 = icmp eq i32 %1, 10, !dbg !2867
  br i1 %8, label %9, label %10, !dbg !2868

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2869, !noalias !2864
  unreachable, !dbg !2869

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2668, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2863
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2862
  store i32 %1, i32* %11, align 8, !dbg !2862, !tbaa.struct !2773
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2862
  %13 = bitcast i32* %12 to i8*, !dbg !2862
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2862, !tbaa.struct !2773
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2862
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1598, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 58, metadata !1599, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 1, metadata !1600, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8 58, metadata !1601, metadata !DIExpression()), !dbg !2870
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2872
  call void @llvm.dbg.value(metadata i32* %14, metadata !1603, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i32 26, metadata !1605, metadata !DIExpression()), !dbg !2870
  %15 = load i32, i32* %14, align 4, !dbg !2873, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %15, metadata !1606, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2870
  %16 = or i32 %15, 67108864, !dbg !2874
  store i32 %16, i32* %14, align 4, !dbg !2874, !tbaa !1293
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2876
  ret i8* %17, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2878 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2886, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i32 %0, metadata !2882, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %1, metadata !2883, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %2, metadata !2884, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %3, metadata !2885, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()) #12, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %1, metadata !2892, metadata !DIExpression()) #12, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %2, metadata !2893, metadata !DIExpression()) #12, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %3, metadata !2894, metadata !DIExpression()) #12, !dbg !2899
  call void @llvm.dbg.value(metadata i64 -1, metadata !2895, metadata !DIExpression()) #12, !dbg !2899
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2900
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2900
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2901, !tbaa.struct !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1639, metadata !DIExpression()) #12, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %1, metadata !1640, metadata !DIExpression()) #12, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %2, metadata !1641, metadata !DIExpression()) #12, !dbg !2902
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1639, metadata !DIExpression()) #12, !dbg !2902
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2904
  store i32 10, i32* %7, align 8, !dbg !2905, !tbaa !1580
  %8 = icmp ne i8* %1, null, !dbg !2906
  %9 = icmp ne i8* %2, null, !dbg !2907
  %10 = and i1 %8, %9, !dbg !2908
  br i1 %10, label %12, label %11, !dbg !2908

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2909
  unreachable, !dbg !2909

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2910
  store i8* %1, i8** %13, align 8, !dbg !2911, !tbaa !1655
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2912
  store i8* %2, i8** %14, align 8, !dbg !2913, !tbaa !1658
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2914
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2915
  ret i8* %15, !dbg !2916
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2887 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8* %1, metadata !2892, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8* %2, metadata !2893, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8* %3, metadata !2894, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 %4, metadata !2895, metadata !DIExpression()), !dbg !2917
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2918
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2918
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2886, metadata !DIExpression()), !dbg !2919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2920, !tbaa.struct !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1639, metadata !DIExpression()) #12, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %1, metadata !1640, metadata !DIExpression()) #12, !dbg !2921
  call void @llvm.dbg.value(metadata i8* %2, metadata !1641, metadata !DIExpression()) #12, !dbg !2921
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1639, metadata !DIExpression()) #12, !dbg !2921
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2923
  store i32 10, i32* %8, align 8, !dbg !2924, !tbaa !1580
  %9 = icmp ne i8* %1, null, !dbg !2925
  %10 = icmp ne i8* %2, null, !dbg !2926
  %11 = and i1 %9, %10, !dbg !2927
  br i1 %11, label %13, label %12, !dbg !2927

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !2928
  unreachable, !dbg !2928

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2929
  store i8* %1, i8** %14, align 8, !dbg !2930, !tbaa !1655
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2931
  store i8* %2, i8** %15, align 8, !dbg !2932, !tbaa !1658
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2933
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2934
  ret i8* %16, !dbg !2935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2936 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2886, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* %0, metadata !2940, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8* %1, metadata !2941, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8* %2, metadata !2942, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 0, metadata !2882, metadata !DIExpression()) #12, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2883, metadata !DIExpression()) #12, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %1, metadata !2884, metadata !DIExpression()) #12, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %2, metadata !2885, metadata !DIExpression()) #12, !dbg !2947
  call void @llvm.dbg.value(metadata i32 0, metadata !2891, metadata !DIExpression()) #12, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %0, metadata !2892, metadata !DIExpression()) #12, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %1, metadata !2893, metadata !DIExpression()) #12, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %2, metadata !2894, metadata !DIExpression()) #12, !dbg !2948
  call void @llvm.dbg.value(metadata i64 -1, metadata !2895, metadata !DIExpression()) #12, !dbg !2948
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2949
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2949
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2950, !tbaa.struct !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1639, metadata !DIExpression()) #12, !dbg !2951
  call void @llvm.dbg.value(metadata i8* %0, metadata !1640, metadata !DIExpression()) #12, !dbg !2951
  call void @llvm.dbg.value(metadata i8* %1, metadata !1641, metadata !DIExpression()) #12, !dbg !2951
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1639, metadata !DIExpression()) #12, !dbg !2951
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2953
  store i32 10, i32* %6, align 8, !dbg !2954, !tbaa !1580
  %7 = icmp ne i8* %0, null, !dbg !2955
  %8 = icmp ne i8* %1, null, !dbg !2956
  %9 = and i1 %7, %8, !dbg !2957
  br i1 %9, label %11, label %10, !dbg !2957

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2958
  unreachable, !dbg !2958

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2959
  store i8* %0, i8** %12, align 8, !dbg !2960, !tbaa !1655
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2961
  store i8* %1, i8** %13, align 8, !dbg !2962, !tbaa !1658
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2963
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2964
  ret i8* %14, !dbg !2965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2966 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2886, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* %0, metadata !2970, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* %1, metadata !2971, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* %2, metadata !2972, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %3, metadata !2973, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 0, metadata !2891, metadata !DIExpression()) #12, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %0, metadata !2892, metadata !DIExpression()) #12, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %1, metadata !2893, metadata !DIExpression()) #12, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %2, metadata !2894, metadata !DIExpression()) #12, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %3, metadata !2895, metadata !DIExpression()) #12, !dbg !2977
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2978
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2979, !tbaa.struct !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1639, metadata !DIExpression()) #12, !dbg !2980
  call void @llvm.dbg.value(metadata i8* %0, metadata !1640, metadata !DIExpression()) #12, !dbg !2980
  call void @llvm.dbg.value(metadata i8* %1, metadata !1641, metadata !DIExpression()) #12, !dbg !2980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1639, metadata !DIExpression()) #12, !dbg !2980
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2982
  store i32 10, i32* %7, align 8, !dbg !2983, !tbaa !1580
  %8 = icmp ne i8* %0, null, !dbg !2984
  %9 = icmp ne i8* %1, null, !dbg !2985
  %10 = and i1 %8, %9, !dbg !2986
  br i1 %10, label %12, label %11, !dbg !2986

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2987
  unreachable, !dbg !2987

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2988
  store i8* %0, i8** %13, align 8, !dbg !2989, !tbaa !1655
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2990
  store i8* %1, i8** %14, align 8, !dbg !2991, !tbaa !1658
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2992
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2993
  ret i8* %15, !dbg !2994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i8* %1, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %2, metadata !3001, metadata !DIExpression()), !dbg !3002
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3003
  ret i8* %4, !dbg !3004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3005 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()) #12, !dbg !3012
  call void @llvm.dbg.value(metadata i8* %0, metadata !3000, metadata !DIExpression()) #12, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()) #12, !dbg !3012
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3014
  ret i8* %3, !dbg !3015
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8* %1, metadata !3021, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()) #12, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %1, metadata !3000, metadata !DIExpression()) #12, !dbg !3023
  call void @llvm.dbg.value(metadata i64 -1, metadata !3001, metadata !DIExpression()) #12, !dbg !3023
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3025
  ret i8* %3, !dbg !3026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3027 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3029, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i32 0, metadata !3020, metadata !DIExpression()) #12, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #12, !dbg !3031
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %0, metadata !3000, metadata !DIExpression()) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i64 -1, metadata !3001, metadata !DIExpression()) #12, !dbg !3033
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3035
  ret i8* %2, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3037 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3045, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8* %1, metadata !3046, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8* %2, metadata !3047, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8* %3, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8** %4, metadata !3049, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %5, metadata !3050, metadata !DIExpression()), !dbg !3051
  %7 = icmp eq i8* %1, null, !dbg !3052
  br i1 %7, label %10, label %8, !dbg !3054

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3055
  br label %12, !dbg !3055

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3056
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 5) #12, !dbg !3057
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #12, !dbg !3057
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3058
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.77, i64 0, i64 0), i32 5) #12, !dbg !3059
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.78, i64 0, i64 0)) #12, !dbg !3059
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3060
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
  ], !dbg !3061

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.79, i64 0, i64 0), i32 5) #12, !dbg !3062
  %21 = load i8*, i8** %4, align 8, !dbg !3062, !tbaa !1224
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #12, !dbg !3062
  br label %147, !dbg !3064

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.80, i64 0, i64 0), i32 5) #12, !dbg !3065
  %25 = load i8*, i8** %4, align 8, !dbg !3065, !tbaa !1224
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3065
  %27 = load i8*, i8** %26, align 8, !dbg !3065, !tbaa !1224
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #12, !dbg !3065
  br label %147, !dbg !3066

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.81, i64 0, i64 0), i32 5) #12, !dbg !3067
  %31 = load i8*, i8** %4, align 8, !dbg !3067, !tbaa !1224
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3067
  %33 = load i8*, i8** %32, align 8, !dbg !3067, !tbaa !1224
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3067
  %35 = load i8*, i8** %34, align 8, !dbg !3067, !tbaa !1224
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #12, !dbg !3067
  br label %147, !dbg !3068

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.82, i64 0, i64 0), i32 5) #12, !dbg !3069
  %39 = load i8*, i8** %4, align 8, !dbg !3069, !tbaa !1224
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3069
  %41 = load i8*, i8** %40, align 8, !dbg !3069, !tbaa !1224
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3069
  %43 = load i8*, i8** %42, align 8, !dbg !3069, !tbaa !1224
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3069
  %45 = load i8*, i8** %44, align 8, !dbg !3069, !tbaa !1224
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #12, !dbg !3069
  br label %147, !dbg !3070

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.83, i64 0, i64 0), i32 5) #12, !dbg !3071
  %49 = load i8*, i8** %4, align 8, !dbg !3071, !tbaa !1224
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3071
  %51 = load i8*, i8** %50, align 8, !dbg !3071, !tbaa !1224
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3071
  %53 = load i8*, i8** %52, align 8, !dbg !3071, !tbaa !1224
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3071
  %55 = load i8*, i8** %54, align 8, !dbg !3071, !tbaa !1224
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3071
  %57 = load i8*, i8** %56, align 8, !dbg !3071, !tbaa !1224
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #12, !dbg !3071
  br label %147, !dbg !3072

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.84, i64 0, i64 0), i32 5) #12, !dbg !3073
  %61 = load i8*, i8** %4, align 8, !dbg !3073, !tbaa !1224
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3073
  %63 = load i8*, i8** %62, align 8, !dbg !3073, !tbaa !1224
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3073
  %65 = load i8*, i8** %64, align 8, !dbg !3073, !tbaa !1224
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3073
  %67 = load i8*, i8** %66, align 8, !dbg !3073, !tbaa !1224
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3073
  %69 = load i8*, i8** %68, align 8, !dbg !3073, !tbaa !1224
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3073
  %71 = load i8*, i8** %70, align 8, !dbg !3073, !tbaa !1224
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #12, !dbg !3073
  br label %147, !dbg !3074

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.85, i64 0, i64 0), i32 5) #12, !dbg !3075
  %75 = load i8*, i8** %4, align 8, !dbg !3075, !tbaa !1224
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3075
  %77 = load i8*, i8** %76, align 8, !dbg !3075, !tbaa !1224
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3075
  %79 = load i8*, i8** %78, align 8, !dbg !3075, !tbaa !1224
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3075
  %81 = load i8*, i8** %80, align 8, !dbg !3075, !tbaa !1224
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3075
  %83 = load i8*, i8** %82, align 8, !dbg !3075, !tbaa !1224
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3075
  %85 = load i8*, i8** %84, align 8, !dbg !3075, !tbaa !1224
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3075
  %87 = load i8*, i8** %86, align 8, !dbg !3075, !tbaa !1224
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #12, !dbg !3075
  br label %147, !dbg !3076

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.86, i64 0, i64 0), i32 5) #12, !dbg !3077
  %91 = load i8*, i8** %4, align 8, !dbg !3077, !tbaa !1224
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3077
  %93 = load i8*, i8** %92, align 8, !dbg !3077, !tbaa !1224
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3077
  %95 = load i8*, i8** %94, align 8, !dbg !3077, !tbaa !1224
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3077
  %97 = load i8*, i8** %96, align 8, !dbg !3077, !tbaa !1224
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3077
  %99 = load i8*, i8** %98, align 8, !dbg !3077, !tbaa !1224
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3077
  %101 = load i8*, i8** %100, align 8, !dbg !3077, !tbaa !1224
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3077
  %103 = load i8*, i8** %102, align 8, !dbg !3077, !tbaa !1224
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3077
  %105 = load i8*, i8** %104, align 8, !dbg !3077, !tbaa !1224
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #12, !dbg !3077
  br label %147, !dbg !3078

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.87, i64 0, i64 0), i32 5) #12, !dbg !3079
  %109 = load i8*, i8** %4, align 8, !dbg !3079, !tbaa !1224
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3079
  %111 = load i8*, i8** %110, align 8, !dbg !3079, !tbaa !1224
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3079
  %113 = load i8*, i8** %112, align 8, !dbg !3079, !tbaa !1224
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3079
  %115 = load i8*, i8** %114, align 8, !dbg !3079, !tbaa !1224
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3079
  %117 = load i8*, i8** %116, align 8, !dbg !3079, !tbaa !1224
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3079
  %119 = load i8*, i8** %118, align 8, !dbg !3079, !tbaa !1224
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3079
  %121 = load i8*, i8** %120, align 8, !dbg !3079, !tbaa !1224
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3079
  %123 = load i8*, i8** %122, align 8, !dbg !3079, !tbaa !1224
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3079
  %125 = load i8*, i8** %124, align 8, !dbg !3079, !tbaa !1224
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #12, !dbg !3079
  br label %147, !dbg !3080

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.88, i64 0, i64 0), i32 5) #12, !dbg !3081
  %129 = load i8*, i8** %4, align 8, !dbg !3081, !tbaa !1224
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3081
  %131 = load i8*, i8** %130, align 8, !dbg !3081, !tbaa !1224
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3081
  %133 = load i8*, i8** %132, align 8, !dbg !3081, !tbaa !1224
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3081
  %135 = load i8*, i8** %134, align 8, !dbg !3081, !tbaa !1224
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3081
  %137 = load i8*, i8** %136, align 8, !dbg !3081, !tbaa !1224
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3081
  %139 = load i8*, i8** %138, align 8, !dbg !3081, !tbaa !1224
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3081
  %141 = load i8*, i8** %140, align 8, !dbg !3081, !tbaa !1224
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3081
  %143 = load i8*, i8** %142, align 8, !dbg !3081, !tbaa !1224
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3081
  %145 = load i8*, i8** %144, align 8, !dbg !3081, !tbaa !1224
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #12, !dbg !3081
  br label %147, !dbg !3082

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3084 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3088, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3089, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %2, metadata !3090, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %3, metadata !3091, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8** %4, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 0, metadata !3093, metadata !DIExpression()), !dbg !3094
  br label %6, !dbg !3095

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3097
  call void @llvm.dbg.value(metadata i64 %7, metadata !3093, metadata !DIExpression()), !dbg !3094
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3098
  %9 = load i8*, i8** %8, align 8, !dbg !3098, !tbaa !1224
  %10 = icmp eq i8* %9, null, !dbg !3100
  %11 = add i64 %7, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %11, metadata !3093, metadata !DIExpression()), !dbg !3094
  br i1 %10, label %12, label %6, !dbg !3100, !llvm.loop !3102

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %7, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %7, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %7, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %7, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %7, metadata !3093, metadata !DIExpression()), !dbg !3094
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3104
  ret void, !dbg !3105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3106 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3117, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %1, metadata !3118, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !3119, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %3, metadata !3120, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3121, metadata !DIExpression()), !dbg !3125
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3126
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3126
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3123, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 0, metadata !3122, metadata !DIExpression()), !dbg !3125
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3128
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3128
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3128
  %11 = load i32, i32* %8, align 8, !dbg !3131
  %12 = icmp ult i32 %11, 41, !dbg !3131
  br i1 %12, label %13, label %18, !dbg !3131

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3131
  %15 = zext i32 %11 to i64, !dbg !3131
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3131
  %17 = add nuw nsw i32 %11, 8, !dbg !3131
  store i32 %17, i32* %8, align 8, !dbg !3131
  br label %21, !dbg !3131

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3131
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3131
  store i8* %20, i8** %9, align 8, !dbg !3131
  br label %21, !dbg !3131

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3131
  %25 = load i8*, i8** %24, align 8, !dbg !3131
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3132
  store i8* %25, i8** %26, align 16, !dbg !3133, !tbaa !1224
  %27 = icmp eq i8* %25, null, !dbg !3134
  br i1 %27, label %30, label %28, !dbg !3135

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3122, metadata !DIExpression()), !dbg !3125
  %29 = icmp ult i32 %22, 41, !dbg !3131
  br i1 %29, label %35, label %32, !dbg !3131

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3136
  call void @llvm.dbg.value(metadata i64 %31, metadata !3122, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %31, metadata !3122, metadata !DIExpression()), !dbg !3125
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3137
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3138
  ret void, !dbg !3138

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3131
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3131
  store i8* %34, i8** %9, align 8, !dbg !3131
  br label %40, !dbg !3131

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3131
  %37 = zext i32 %22 to i64, !dbg !3131
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3131
  %39 = add nuw nsw i32 %22, 8, !dbg !3131
  store i32 %39, i32* %8, align 8, !dbg !3131
  br label %40, !dbg !3131

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3131
  %44 = load i8*, i8** %43, align 8, !dbg !3131
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3132
  store i8* %44, i8** %45, align 8, !dbg !3133, !tbaa !1224
  %46 = icmp eq i8* %44, null, !dbg !3134
  br i1 %46, label %30, label %47, !dbg !3135

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3122, metadata !DIExpression()), !dbg !3125
  %48 = icmp ult i32 %41, 41, !dbg !3131
  br i1 %48, label %52, label %49, !dbg !3131

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3131
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3131
  store i8* %51, i8** %9, align 8, !dbg !3131
  br label %57, !dbg !3131

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3131
  %54 = zext i32 %41 to i64, !dbg !3131
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3131
  %56 = add nuw nsw i32 %41, 8, !dbg !3131
  store i32 %56, i32* %8, align 8, !dbg !3131
  br label %57, !dbg !3131

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3131
  %61 = load i8*, i8** %60, align 8, !dbg !3131
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3132
  store i8* %61, i8** %62, align 16, !dbg !3133, !tbaa !1224
  %63 = icmp eq i8* %61, null, !dbg !3134
  br i1 %63, label %30, label %64, !dbg !3135

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3122, metadata !DIExpression()), !dbg !3125
  %65 = icmp ult i32 %58, 41, !dbg !3131
  br i1 %65, label %69, label %66, !dbg !3131

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3131
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3131
  store i8* %68, i8** %9, align 8, !dbg !3131
  br label %74, !dbg !3131

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3131
  %71 = zext i32 %58 to i64, !dbg !3131
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3131
  %73 = add nuw nsw i32 %58, 8, !dbg !3131
  store i32 %73, i32* %8, align 8, !dbg !3131
  br label %74, !dbg !3131

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3131
  %78 = load i8*, i8** %77, align 8, !dbg !3131
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3132
  store i8* %78, i8** %79, align 8, !dbg !3133, !tbaa !1224
  %80 = icmp eq i8* %78, null, !dbg !3134
  br i1 %80, label %30, label %81, !dbg !3135

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3122, metadata !DIExpression()), !dbg !3125
  %82 = icmp ult i32 %75, 41, !dbg !3131
  br i1 %82, label %86, label %83, !dbg !3131

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3131
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3131
  store i8* %85, i8** %9, align 8, !dbg !3131
  br label %91, !dbg !3131

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3131
  %88 = zext i32 %75 to i64, !dbg !3131
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3131
  %90 = add nuw nsw i32 %75, 8, !dbg !3131
  store i32 %90, i32* %8, align 8, !dbg !3131
  br label %91, !dbg !3131

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3131
  %95 = load i8*, i8** %94, align 8, !dbg !3131
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3132
  store i8* %95, i8** %96, align 16, !dbg !3133, !tbaa !1224
  %97 = icmp eq i8* %95, null, !dbg !3134
  br i1 %97, label %30, label %98, !dbg !3135

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3122, metadata !DIExpression()), !dbg !3125
  %99 = icmp ult i32 %92, 41, !dbg !3131
  br i1 %99, label %103, label %100, !dbg !3131

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3131
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3131
  store i8* %102, i8** %9, align 8, !dbg !3131
  br label %108, !dbg !3131

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3131
  %105 = zext i32 %92 to i64, !dbg !3131
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3131
  %107 = add nuw nsw i32 %92, 8, !dbg !3131
  store i32 %107, i32* %8, align 8, !dbg !3131
  br label %108, !dbg !3131

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3131
  %111 = load i8*, i8** %110, align 8, !dbg !3131
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3132
  store i8* %111, i8** %112, align 8, !dbg !3133, !tbaa !1224
  %113 = icmp eq i8* %111, null, !dbg !3134
  br i1 %113, label %30, label %114, !dbg !3135

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3122, metadata !DIExpression()), !dbg !3125
  %115 = load i8*, i8** %9, align 8, !dbg !3131
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3131
  store i8* %116, i8** %9, align 8, !dbg !3131
  %117 = bitcast i8* %115 to i8**, !dbg !3131
  %118 = load i8*, i8** %117, align 8, !dbg !3131
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3132
  store i8* %118, i8** %119, align 16, !dbg !3133, !tbaa !1224
  %120 = icmp eq i8* %118, null, !dbg !3134
  br i1 %120, label %30, label %121, !dbg !3135

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3122, metadata !DIExpression()), !dbg !3125
  %122 = load i8*, i8** %9, align 8, !dbg !3131
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3131
  store i8* %123, i8** %9, align 8, !dbg !3131
  %124 = bitcast i8* %122 to i8**, !dbg !3131
  %125 = load i8*, i8** %124, align 8, !dbg !3131
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3132
  store i8* %125, i8** %126, align 8, !dbg !3133, !tbaa !1224
  %127 = icmp eq i8* %125, null, !dbg !3134
  br i1 %127, label %30, label %128, !dbg !3135

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3122, metadata !DIExpression()), !dbg !3125
  %129 = load i8*, i8** %9, align 8, !dbg !3131
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3131
  store i8* %130, i8** %9, align 8, !dbg !3131
  %131 = bitcast i8* %129 to i8**, !dbg !3131
  %132 = load i8*, i8** %131, align 8, !dbg !3131
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3132
  store i8* %132, i8** %133, align 16, !dbg !3133, !tbaa !1224
  %134 = icmp eq i8* %132, null, !dbg !3134
  br i1 %134, label %30, label %135, !dbg !3135

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3122, metadata !DIExpression()), !dbg !3125
  %136 = load i8*, i8** %9, align 8, !dbg !3131
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3131
  store i8* %137, i8** %9, align 8, !dbg !3131
  %138 = bitcast i8* %136 to i8**, !dbg !3131
  %139 = load i8*, i8** %138, align 8, !dbg !3131
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3132
  store i8* %139, i8** %140, align 8, !dbg !3133, !tbaa !1224
  %141 = icmp eq i8* %139, null, !dbg !3134
  %142 = select i1 %141, i64 9, i64 10, !dbg !3135
  br label %30, !dbg !3135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3139 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3143, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i8* %1, metadata !3144, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i8* %2, metadata !3145, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i8* %3, metadata !3146, metadata !DIExpression()), !dbg !3152
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3153
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3153
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3147, metadata !DIExpression()), !dbg !3154
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3155
  call void @llvm.va_start(i8* nonnull %6), !dbg !3155
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3156
  call void @llvm.va_end(i8* nonnull %6), !dbg !3157
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3158
  ret void, !dbg !3158
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3159 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3160, !tbaa !1224
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3160
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.91, i64 0, i64 0), i32 5) #12, !dbg !3161
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.92, i64 0, i64 0)) #12, !dbg !3161
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.93, i64 0, i64 0), i32 5) #12, !dbg !3162
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.94, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.95, i64 0, i64 0)) #12, !dbg !3162
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.96, i64 0, i64 0), i32 5) #12, !dbg !3163
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.97, i64 0, i64 0)) #12, !dbg !3163
  ret void, !dbg !3164
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3165 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3169, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %1, metadata !3170, metadata !DIExpression()), !dbg !3171
  %3 = udiv i64 9223372036854775807, %1, !dbg !3172
  %4 = icmp ult i64 %3, %0, !dbg !3172
  br i1 %4, label %5, label %6, !dbg !3174

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3175
  unreachable, !dbg !3175

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %7, metadata !3177, metadata !DIExpression()) #12, !dbg !3183
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %8, metadata !3182, metadata !DIExpression()) #12, !dbg !3183
  %9 = icmp eq i8* %8, null, !dbg !3186
  %10 = icmp ne i64 %7, 0, !dbg !3188
  %11 = and i1 %10, %9, !dbg !3189
  br i1 %11, label %12, label %13, !dbg !3189

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3190
  unreachable, !dbg !3190

13:                                               ; preds = %6
  ret i8* %8, !dbg !3191
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3178 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3177, metadata !DIExpression()), !dbg !3192
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3193
  call void @llvm.dbg.value(metadata i8* %2, metadata !3182, metadata !DIExpression()), !dbg !3192
  %3 = icmp eq i8* %2, null, !dbg !3194
  %4 = icmp ne i64 %0, 0, !dbg !3195
  %5 = and i1 %4, %3, !dbg !3196
  br i1 %5, label %6, label %7, !dbg !3196

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3197
  unreachable, !dbg !3197

7:                                                ; preds = %1
  ret i8* %2, !dbg !3198
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3203, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %1, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %2, metadata !3205, metadata !DIExpression()), !dbg !3206
  %4 = udiv i64 9223372036854775807, %2, !dbg !3207
  %5 = icmp ult i64 %4, %1, !dbg !3207
  br i1 %5, label %6, label %7, !dbg !3209

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3210
  unreachable, !dbg !3210

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()) #12, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %8, metadata !3217, metadata !DIExpression()) #12, !dbg !3218
  %9 = icmp eq i64 %8, 0, !dbg !3220
  %10 = icmp ne i8* %0, null, !dbg !3222
  %11 = and i1 %10, %9, !dbg !3223
  br i1 %11, label %12, label %13, !dbg !3223

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3224
  br label %19, !dbg !3226

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %14, metadata !3212, metadata !DIExpression()) #12, !dbg !3218
  %15 = icmp eq i8* %14, null, !dbg !3228
  %16 = icmp ne i64 %8, 0, !dbg !3230
  %17 = and i1 %16, %15, !dbg !3231
  br i1 %17, label %18, label %19, !dbg !3231

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3232
  unreachable, !dbg !3232

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3218
  ret i8* %20, !dbg !3233
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3217, metadata !DIExpression()), !dbg !3234
  %3 = icmp eq i64 %1, 0, !dbg !3235
  %4 = icmp ne i8* %0, null, !dbg !3236
  %5 = and i1 %4, %3, !dbg !3237
  br i1 %5, label %6, label %7, !dbg !3237

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3238
  br label %13, !dbg !3239

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %8, metadata !3212, metadata !DIExpression()), !dbg !3234
  %9 = icmp eq i8* %8, null, !dbg !3241
  %10 = icmp ne i64 %1, 0, !dbg !3242
  %11 = and i1 %10, %9, !dbg !3243
  br i1 %11, label %12, label %13, !dbg !3243

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3244
  unreachable, !dbg !3244

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3234
  ret i8* %14, !dbg !3245
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !526 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !531, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64* %1, metadata !532, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %2, metadata !533, metadata !DIExpression()), !dbg !3246
  %4 = load i64, i64* %1, align 8, !dbg !3247, !tbaa !2485
  call void @llvm.dbg.value(metadata i64 %4, metadata !534, metadata !DIExpression()), !dbg !3246
  %5 = icmp eq i8* %0, null, !dbg !3248
  br i1 %5, label %6, label %20, !dbg !3250

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3251
  br i1 %7, label %8, label %13, !dbg !3254

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %9, metadata !534, metadata !DIExpression()), !dbg !3246
  %10 = icmp ugt i64 %2, 128, !dbg !3257
  %11 = zext i1 %10 to i64, !dbg !3257
  %12 = add nuw nsw i64 %9, %11, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %12, metadata !534, metadata !DIExpression()), !dbg !3246
  br label %13, !dbg !3259

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3246
  call void @llvm.dbg.value(metadata i64 %14, metadata !534, metadata !DIExpression()), !dbg !3246
  %15 = udiv i64 9223372036854775807, %2, !dbg !3260
  %16 = icmp ult i64 %15, %14, !dbg !3260
  br i1 %16, label %19, label %17, !dbg !3262

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !534, metadata !DIExpression()), !dbg !3246
  store i64 %14, i64* %1, align 8, !dbg !3263, !tbaa !2485
  %18 = mul i64 %14, %2, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()) #12, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %28, metadata !3217, metadata !DIExpression()) #12, !dbg !3265
  br label %31, !dbg !3267

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3268
  unreachable, !dbg !3268

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3269
  %22 = icmp ugt i64 %21, %4, !dbg !3272
  br i1 %22, label %24, label %23, !dbg !3273

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3274
  unreachable, !dbg !3274

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3275
  %26 = add nuw i64 %4, 1, !dbg !3276
  %27 = add i64 %26, %25, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %27, metadata !534, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %27, metadata !534, metadata !DIExpression()), !dbg !3246
  store i64 %27, i64* %1, align 8, !dbg !3263, !tbaa !2485
  %28 = mul i64 %27, %2, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()) #12, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %28, metadata !3217, metadata !DIExpression()) #12, !dbg !3265
  %29 = icmp eq i64 %28, 0, !dbg !3278
  br i1 %29, label %30, label %31, !dbg !3267

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3279
  br label %38, !dbg !3280

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %33, metadata !3212, metadata !DIExpression()) #12, !dbg !3265
  %34 = icmp eq i8* %33, null, !dbg !3282
  %35 = icmp ne i64 %32, 0, !dbg !3283
  %36 = and i1 %35, %34, !dbg !3284
  br i1 %36, label %37, label %38, !dbg !3284

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3285
  unreachable, !dbg !3285

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3265
  ret i8* %39, !dbg !3286
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3287 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %0, metadata !3177, metadata !DIExpression()) #12, !dbg !3291
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %2, metadata !3182, metadata !DIExpression()) #12, !dbg !3291
  %3 = icmp eq i8* %2, null, !dbg !3294
  %4 = icmp ne i64 %0, 0, !dbg !3295
  %5 = and i1 %4, %3, !dbg !3296
  br i1 %5, label %6, label %7, !dbg !3296

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3297
  unreachable, !dbg !3297

7:                                                ; preds = %1
  ret i8* %2, !dbg !3298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3303, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64* %1, metadata !3304, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i8* %0, metadata !531, metadata !DIExpression()) #12, !dbg !3306
  call void @llvm.dbg.value(metadata i64* %1, metadata !532, metadata !DIExpression()) #12, !dbg !3306
  call void @llvm.dbg.value(metadata i64 1, metadata !533, metadata !DIExpression()) #12, !dbg !3306
  %3 = load i64, i64* %1, align 8, !dbg !3308, !tbaa !2485
  call void @llvm.dbg.value(metadata i64 %3, metadata !534, metadata !DIExpression()) #12, !dbg !3306
  %4 = icmp eq i8* %0, null, !dbg !3309
  br i1 %4, label %5, label %12, !dbg !3310

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3311
  br i1 %6, label %9, label %7, !dbg !3312

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !534, metadata !DIExpression()) #12, !dbg !3306
  %8 = icmp slt i64 %3, 0, !dbg !3313
  br i1 %8, label %11, label %9, !dbg !3314

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !534, metadata !DIExpression()) #12, !dbg !3306
  store i64 %10, i64* %1, align 8, !dbg !3315, !tbaa !2485
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()) #12, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %18, metadata !3217, metadata !DIExpression()) #12, !dbg !3316
  br label %21, !dbg !3318

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3319
  unreachable, !dbg !3319

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3320
  br i1 %13, label %15, label %14, !dbg !3321

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3322
  unreachable, !dbg !3322

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3323
  %17 = add nuw nsw i64 %3, 1, !dbg !3324
  %18 = add nuw nsw i64 %17, %16, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %18, metadata !534, metadata !DIExpression()) #12, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %18, metadata !534, metadata !DIExpression()) #12, !dbg !3306
  store i64 %18, i64* %1, align 8, !dbg !3315, !tbaa !2485
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()) #12, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %18, metadata !3217, metadata !DIExpression()) #12, !dbg !3316
  %19 = icmp eq i64 %18, 0, !dbg !3326
  br i1 %19, label %20, label %21, !dbg !3318

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3327
  br label %28, !dbg !3328

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %23, metadata !3212, metadata !DIExpression()) #12, !dbg !3316
  %24 = icmp eq i8* %23, null, !dbg !3330
  %25 = icmp ne i64 %22, 0, !dbg !3331
  %26 = and i1 %25, %24, !dbg !3332
  br i1 %26, label %27, label %28, !dbg !3332

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3333
  unreachable, !dbg !3333

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3316
  ret i8* %29, !dbg !3334
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3335 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %0, metadata !3339, metadata !DIExpression()) #12, !dbg !3344
  call void @llvm.dbg.value(metadata i64 1, metadata !3342, metadata !DIExpression()) #12, !dbg !3344
  %2 = icmp slt i64 %0, 0, !dbg !3346
  br i1 %2, label %6, label %3, !dbg !3348

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #12, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %4, metadata !3343, metadata !DIExpression()) #12, !dbg !3344
  %5 = icmp eq i8* %4, null, !dbg !3350
  br i1 %5, label %6, label %7, !dbg !3351

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3352
  unreachable, !dbg !3352

7:                                                ; preds = %3
  ret i8* %4, !dbg !3353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3340 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3339, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()), !dbg !3354
  %3 = udiv i64 9223372036854775807, %1, !dbg !3355
  %4 = icmp ult i64 %3, %0, !dbg !3355
  br i1 %4, label %8, label %5, !dbg !3356

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %6, metadata !3343, metadata !DIExpression()), !dbg !3354
  %7 = icmp eq i8* %6, null, !dbg !3358
  br i1 %7, label %8, label %9, !dbg !3359

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3360
  unreachable, !dbg !3360

9:                                                ; preds = %5
  ret i8* %6, !dbg !3361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3362 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3366, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %1, metadata !3367, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %1, metadata !3177, metadata !DIExpression()) #12, !dbg !3369
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %3, metadata !3182, metadata !DIExpression()) #12, !dbg !3369
  %4 = icmp eq i8* %3, null, !dbg !3372
  %5 = icmp ne i64 %1, 0, !dbg !3373
  %6 = and i1 %5, %4, !dbg !3374
  br i1 %6, label %7, label %8, !dbg !3374

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3375
  unreachable, !dbg !3375

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3376, metadata !DIExpression()) #12, !dbg !3385
  call void @llvm.dbg.value(metadata i8* %0, metadata !3383, metadata !DIExpression()) #12, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()) #12, !dbg !3385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #12, !dbg !3387
  ret i8* %3, !dbg !3388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3389 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3391, metadata !DIExpression()), !dbg !3392
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3393
  %3 = add i64 %2, 1, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %0, metadata !3366, metadata !DIExpression()) #12, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %3, metadata !3367, metadata !DIExpression()) #12, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %3, metadata !3177, metadata !DIExpression()) #12, !dbg !3397
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3399
  call void @llvm.dbg.value(metadata i8* %4, metadata !3182, metadata !DIExpression()) #12, !dbg !3397
  %5 = icmp eq i8* %4, null, !dbg !3400
  %6 = icmp ne i64 %3, 0, !dbg !3401
  %7 = and i1 %6, %5, !dbg !3402
  br i1 %7, label %8, label %9, !dbg !3402

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3403
  unreachable, !dbg !3403

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3376, metadata !DIExpression()) #12, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %0, metadata !3383, metadata !DIExpression()) #12, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %3, metadata !3384, metadata !DIExpression()) #12, !dbg !3404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #12, !dbg !3406
  ret i8* %4, !dbg !3407
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3408 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3409, !tbaa !1293
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #12, !dbg !3410
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #12, !dbg !3411
  tail call void @abort() #23, !dbg !3412
  unreachable, !dbg !3412
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xnanosleep(double %0) local_unnamed_addr #8 !dbg !3413 {
  %2 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata double %0, metadata !3415, metadata !DIExpression()), !dbg !3417
  %3 = fcmp ult double %0, 0x43E0000000000000, !dbg !3418
  br i1 %3, label %4, label %6, !dbg !3420

4:                                                ; preds = %1
  %5 = tail call i32* @__errno_location() #25, !dbg !3421
  br label %11, !dbg !3420

6:                                                ; preds = %1, %6
  %7 = tail call i32 @pause() #12, !dbg !3425
  %8 = tail call i32* @__errno_location() #25, !dbg !3427
  %9 = load i32, i32* %8, align 4, !dbg !3427, !tbaa !1293
  %10 = icmp eq i32 %9, 4, !dbg !3428
  br i1 %10, label %6, label %11, !dbg !3425, !llvm.loop !3429

11:                                               ; preds = %6, %4
  %12 = phi i32* [ %5, %4 ], [ %8, %6 ], !dbg !3421
  %13 = bitcast %struct.timespec* %2 to i8*, !dbg !3432
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #12, !dbg !3432
  call void @llvm.dbg.declare(metadata %struct.timespec* %2, metadata !3416, metadata !DIExpression()), !dbg !3433
  %14 = tail call { i64, i64 } @dtotimespec(double %0) #25, !dbg !3434
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0, !dbg !3434
  %16 = extractvalue { i64, i64 } %14, 0, !dbg !3434
  store i64 %16, i64* %15, align 8, !dbg !3434
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1, !dbg !3434
  %18 = extractvalue { i64, i64 } %14, 1, !dbg !3434
  store i64 %18, i64* %17, align 8, !dbg !3434
  store i32 0, i32* %12, align 4, !dbg !3435, !tbaa !1293
  %19 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* nonnull %2) #12, !dbg !3436
  %20 = icmp eq i32 %19, 0, !dbg !3438
  br i1 %20, label %26, label %21, !dbg !3439

21:                                               ; preds = %11, %23
  %22 = load i32, i32* %12, align 4, !dbg !3440, !tbaa !1293
  switch i32 %22, label %26 [
    i32 4, label %23
    i32 0, label %23
  ], !dbg !3442

23:                                               ; preds = %21, %21
  store i32 0, i32* %12, align 4, !dbg !3435, !tbaa !1293
  %24 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* nonnull %2) #12, !dbg !3436
  %25 = icmp eq i32 %24, 0, !dbg !3438
  br i1 %25, label %26, label %21, !dbg !3439, !llvm.loop !3443

26:                                               ; preds = %21, %23, %11
  %27 = phi i32 [ 0, %11 ], [ 0, %23 ], [ -1, %21 ], !dbg !3417
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #12, !dbg !3446
  ret i32 %27, !dbg !3446
}

declare !dbg !552 i32 @pause() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @xstrtod(i8* %0, i8** %1, double* nocapture %2, double (i8*, i8**)* nocapture %3) local_unnamed_addr #8 !dbg !3447 {
  %5 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3449, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8** %1, metadata !3450, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata double* %2, metadata !3451, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata double (i8*, i8**)* %3, metadata !3452, metadata !DIExpression()), !dbg !3456
  %6 = bitcast i8** %5 to i8*, !dbg !3457
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3457
  call void @llvm.dbg.value(metadata i8 1, metadata !3455, metadata !DIExpression()), !dbg !3456
  %7 = tail call i32* @__errno_location() #25, !dbg !3458
  store i32 0, i32* %7, align 4, !dbg !3459, !tbaa !1293
  call void @llvm.dbg.value(metadata i8** %5, metadata !3454, metadata !DIExpression(DW_OP_deref)), !dbg !3456
  %8 = call double %3(i8* %0, i8** nonnull %5) #12, !dbg !3460
  call void @llvm.dbg.value(metadata double %8, metadata !3453, metadata !DIExpression()), !dbg !3456
  %9 = load i8*, i8** %5, align 8, !dbg !3461, !tbaa !1224
  call void @llvm.dbg.value(metadata i8* %9, metadata !3454, metadata !DIExpression()), !dbg !3456
  %10 = icmp eq i8* %9, %0, !dbg !3463
  %11 = ptrtoint i8* %9 to i64, !dbg !3464
  br i1 %10, label %22, label %12, !dbg !3464

12:                                               ; preds = %4
  %13 = icmp eq i8** %1, null, !dbg !3465
  br i1 %13, label %14, label %17, !dbg !3466

14:                                               ; preds = %12
  %15 = load i8, i8* %9, align 1, !dbg !3467, !tbaa !1318
  %16 = icmp eq i8 %15, 0, !dbg !3468
  br i1 %16, label %17, label %27, !dbg !3469

17:                                               ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00, !dbg !3470
  br i1 %18, label %19, label %22, !dbg !3473

19:                                               ; preds = %17
  %20 = load i32, i32* %7, align 4, !dbg !3474, !tbaa !1293
  %21 = icmp ne i32 %20, 34, !dbg !3475
  br label %22, !dbg !3476

22:                                               ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !3455, metadata !DIExpression()), !dbg !3456
  %24 = icmp eq i8** %1, null, !dbg !3477
  br i1 %24, label %27, label %25, !dbg !3479

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8* undef, metadata !3454, metadata !DIExpression()), !dbg !3456
  %26 = bitcast i8** %1 to i64*, !dbg !3480
  store i64 %11, i64* %26, align 8, !dbg !3480, !tbaa !1224
  br label %27, !dbg !3481

27:                                               ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8, !dbg !3482, !tbaa !1312
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #12, !dbg !3483
  ret i1 %28, !dbg !3484
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3485 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3493
  %3 = icmp eq i64 %0, 0, !dbg !3494
  %4 = icmp eq i64 %1, 0, !dbg !3495
  %5 = or i1 %3, %4, !dbg !3496
  br i1 %5, label %11, label %6, !dbg !3496

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3490, metadata !DIExpression()), !dbg !3497
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3498
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3498
  br i1 %8, label %9, label %11, !dbg !3500

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3501
  store i32 12, i32* %10, align 4, !dbg !3503, !tbaa !1293
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %12, metadata !3488, metadata !DIExpression()), !dbg !3493
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #12, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %14, metadata !3489, metadata !DIExpression()), !dbg !3493
  br label %15, !dbg !3505

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3493
  ret i8* %16, !dbg !3506
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3507 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3515, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i64 %2, metadata !3517, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3518, metadata !DIExpression()), !dbg !3524
  %6 = bitcast i32* %5 to i8*, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3525
  %7 = icmp eq i32* %0, null, !dbg !3526
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3528
  call void @llvm.dbg.value(metadata i32* %8, metadata !3515, metadata !DIExpression()), !dbg !3524
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %9, metadata !3519, metadata !DIExpression()), !dbg !3524
  %10 = icmp ugt i64 %9, -3, !dbg !3530
  %11 = icmp ne i64 %2, 0, !dbg !3531
  %12 = and i1 %11, %10, !dbg !3532
  br i1 %12, label %13, label %18, !dbg !3532

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3533
  br i1 %14, label %18, label %15, !dbg !3534

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3535, !tbaa !1318
  call void @llvm.dbg.value(metadata i8 %16, metadata !3521, metadata !DIExpression()), !dbg !3536
  %17 = zext i8 %16 to i32, !dbg !3537
  store i32 %17, i32* %8, align 4, !dbg !3538, !tbaa !1293
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3539
  ret i64 %19, !dbg !3539
}

; Function Attrs: nounwind
declare !dbg !581 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_nanosleep(%struct.timespec* nocapture nonnull readonly %0, %struct.timespec* %1) local_unnamed_addr #8 !dbg !3540 {
  %3 = alloca %struct.timespec, align 8
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !3542, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata %struct.timespec* %1, metadata !3543, metadata !DIExpression()), !dbg !3551
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1, !dbg !3552
  %5 = load i64, i64* %4, align 8, !dbg !3552, !tbaa !3554
  %6 = icmp ugt i64 %5, 999999999, !dbg !3556
  br i1 %6, label %7, label %9, !dbg !3556

7:                                                ; preds = %2
  %8 = tail call i32* @__errno_location() #25, !dbg !3557
  store i32 22, i32* %8, align 4, !dbg !3559, !tbaa !1293
  br label %33, !dbg !3560

9:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 2073600, metadata !3544, metadata !DIExpression()), !dbg !3561
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0, !dbg !3562
  %11 = load i64, i64* %10, align 8, !dbg !3562, !tbaa !3563
  call void @llvm.dbg.value(metadata i64 %11, metadata !3547, metadata !DIExpression()), !dbg !3561
  %12 = bitcast %struct.timespec* %3 to i8*, !dbg !3564
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #12, !dbg !3564
  call void @llvm.dbg.declare(metadata %struct.timespec* %3, metadata !3548, metadata !DIExpression()), !dbg !3565
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 1, !dbg !3566
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0, !dbg !3561
  br label %15, !dbg !3567

15:                                               ; preds = %19, %9
  %16 = phi i64 [ %5, %9 ], [ 0, %19 ], !dbg !3561
  %17 = phi i64 [ %11, %9 ], [ %21, %19 ], !dbg !3561
  store i64 %16, i64* %13, align 8, !dbg !3561, !tbaa !3554
  call void @llvm.dbg.value(metadata i64 %17, metadata !3547, metadata !DIExpression()), !dbg !3561
  %18 = icmp sgt i64 %17, 2073600, !dbg !3568
  br i1 %18, label %19, label %29, !dbg !3567

19:                                               ; preds = %15
  store i64 2073600, i64* %14, align 8, !dbg !3569, !tbaa !3563
  %20 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #12, !dbg !3570
  call void @llvm.dbg.value(metadata i32 %20, metadata !3549, metadata !DIExpression()), !dbg !3571
  %21 = add nsw i64 %17, -2073600, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %21, metadata !3547, metadata !DIExpression()), !dbg !3561
  %22 = icmp eq i32 %20, 0, !dbg !3573
  br i1 %22, label %15, label %23, !dbg !3575

23:                                               ; preds = %19
  %24 = icmp eq %struct.timespec* %1, null, !dbg !3576
  br i1 %24, label %31, label %25, !dbg !3579

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0, !dbg !3580
  %27 = load i64, i64* %26, align 8, !dbg !3581, !tbaa !3563
  %28 = add nsw i64 %27, %21, !dbg !3581
  store i64 %28, i64* %26, align 8, !dbg !3581, !tbaa !3563
  br label %31, !dbg !3582

29:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i64 %17, metadata !3547, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %17, metadata !3547, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %17, metadata !3547, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %17, metadata !3547, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %17, metadata !3547, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %17, metadata !3547, metadata !DIExpression()), !dbg !3561
  store i64 %17, i64* %14, align 8, !dbg !3583, !tbaa !3563
  %30 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #12, !dbg !3584
  br label %31, !dbg !3585

31:                                               ; preds = %25, %23, %29
  %32 = phi i32 [ %30, %29 ], [ %20, %23 ], [ %20, %25 ], !dbg !3561
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #12, !dbg !3586
  br label %33

33:                                               ; preds = %31, %7
  %34 = phi i32 [ -1, %7 ], [ %32, %31 ], !dbg !3551
  ret i32 %34, !dbg !3587
}

declare !dbg !604 i32 @nanosleep(%struct.timespec*, %struct.timespec*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local double @c_strtod(i8* %0, i8** %1) local_unnamed_addr #8 !dbg !3588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3590, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i8** %1, metadata !3591, metadata !DIExpression()), !dbg !3594
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3595, !tbaa !1224
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !3595
  br i1 %4, label %5, label %7, !dbg !3601

5:                                                ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i64 0, i64 0), %struct.__locale_struct* null) #12, !dbg !3602
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3603, !tbaa !1224
  br label %7, !dbg !3604

7:                                                ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !3605, !tbaa !1224
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !3593, metadata !DIExpression()), !dbg !3594
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !3606
  br i1 %9, label %10, label %13, !dbg !3608

10:                                               ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !3609
  br i1 %11, label %15, label %12, !dbg !3612

12:                                               ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !3613, !tbaa !1224
  br label %15, !dbg !3614

13:                                               ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #12, !dbg !3615
  call void @llvm.dbg.value(metadata double %14, metadata !3592, metadata !DIExpression()), !dbg !3594
  br label %15, !dbg !3616

15:                                               ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ], !dbg !3594
  ret double %16, !dbg !3617
}

; Function Attrs: nounwind
declare !dbg !392 %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !365 double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3618 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3624, metadata !DIExpression()), !dbg !3629
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3630
  call void @llvm.dbg.value(metadata i1 undef, metadata !3625, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3631, metadata !DIExpression()), !dbg !3635
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3637
  %4 = load i32, i32* %3, align 8, !dbg !3637, !tbaa !3638
  %5 = and i32 %4, 32, !dbg !3637
  %6 = icmp eq i32 %5, 0, !dbg !3640
  call void @llvm.dbg.value(metadata i1 %6, metadata !3627, metadata !DIExpression()), !dbg !3629
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3641
  %8 = icmp ne i32 %7, 0, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %8, metadata !3628, metadata !DIExpression()), !dbg !3629
  br i1 %6, label %9, label %19, !dbg !3643

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3645
  call void @llvm.dbg.value(metadata i1 %10, metadata !3625, metadata !DIExpression()), !dbg !3629
  %11 = xor i1 %8, true, !dbg !3646
  %12 = or i1 %10, %11, !dbg !3646
  %13 = sext i1 %8 to i32, !dbg !3646
  br i1 %12, label %22, label %14, !dbg !3646

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !3647
  %16 = load i32, i32* %15, align 4, !dbg !3647, !tbaa !1293
  %17 = icmp ne i32 %16, 9, !dbg !3648
  %18 = sext i1 %17 to i32, !dbg !3649
  br label %22, !dbg !3649

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3650

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !3652
  store i32 0, i32* %21, align 4, !dbg !3654, !tbaa !1293
  br label %22, !dbg !3652

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3629
  ret i32 %23, !dbg !3655
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readnone sspstrong uwtable
define dso_local { i64, i64 } @dtotimespec(double %0) local_unnamed_addr #21 !dbg !3656 {
  call void @llvm.dbg.value(metadata double %0, metadata !3664, metadata !DIExpression()), !dbg !3671
  %2 = fcmp ogt double %0, 0xC3E0000000000000, !dbg !3672
  br i1 %2, label %3, label %23, !dbg !3673

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000, !dbg !3674
  br i1 %4, label %5, label %23, !dbg !3675

5:                                                ; preds = %3
  %6 = fptosi double %0 to i64, !dbg !3676
  call void @llvm.dbg.value(metadata i64 %6, metadata !3665, metadata !DIExpression()), !dbg !3677
  %7 = sitofp i64 %6 to double, !dbg !3678
  %8 = fsub double %0, %7, !dbg !3679
  %9 = fmul double %8, 1.000000e+09, !dbg !3680
  call void @llvm.dbg.value(metadata double %9, metadata !3669, metadata !DIExpression()), !dbg !3677
  %10 = fptosi double %9 to i64, !dbg !3681
  call void @llvm.dbg.value(metadata i64 %10, metadata !3670, metadata !DIExpression()), !dbg !3677
  %11 = sitofp i64 %10 to double, !dbg !3682
  %12 = fcmp ogt double %9, %11, !dbg !3683
  %13 = zext i1 %12 to i64, !dbg !3682
  %14 = add nsw i64 %13, %10, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %14, metadata !3670, metadata !DIExpression()), !dbg !3677
  %15 = sdiv i64 %14, 1000000000, !dbg !3685
  %16 = add nsw i64 %15, %6, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %16, metadata !3665, metadata !DIExpression()), !dbg !3677
  %17 = srem i64 %14, 1000000000, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %17, metadata !3670, metadata !DIExpression()), !dbg !3677
  %18 = icmp slt i64 %17, 0, !dbg !3688
  %19 = add nsw i64 %17, 1000000000, !dbg !3690
  %20 = ashr i64 %17, 63, !dbg !3690
  %21 = add nsw i64 %16, %20, !dbg !3690
  %22 = select i1 %18, i64 %19, i64 %17, !dbg !3690
  call void @llvm.dbg.value(metadata i64 %22, metadata !3670, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %21, metadata !3665, metadata !DIExpression()), !dbg !3677
  br label %23

23:                                               ; preds = %3, %1, %5
  %24 = phi i64 [ %21, %5 ], [ -9223372036854775808, %1 ], [ 9223372036854775807, %3 ], !dbg !3691
  %25 = phi i64 [ %22, %5 ], [ 0, %1 ], [ 999999999, %3 ], !dbg !3691
  %26 = insertvalue { i64, i64 } undef, i64 %24, 0, !dbg !3692
  %27 = insertvalue { i64, i64 } %26, i64 %25, 1, !dbg !3692
  ret { i64, i64 } %27, !dbg !3692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3693 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3695, metadata !DIExpression()), !dbg !3700
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3701
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3701
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3696, metadata !DIExpression()), !dbg !3702
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #12, !dbg !3703
  %5 = icmp eq i32 %4, 0, !dbg !3703
  br i1 %5, label %6, label %13, !dbg !3705

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3706
  %8 = load i16, i16* %7, align 16, !dbg !3706
  %9 = icmp eq i16 %8, 67, !dbg !3706
  br i1 %9, label %13, label %10, !dbg !3707

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0), i64 6), !dbg !3708
  %12 = icmp ne i32 %11, 0, !dbg !3709
  br label %13, !dbg !3707

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3700
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3710
  ret i1 %14, !dbg !3710
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3711 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3714
  call void @llvm.dbg.value(metadata i8* %1, metadata !3713, metadata !DIExpression()), !dbg !3715
  %2 = icmp eq i8* %1, null, !dbg !3716
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), i8* %1, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %3, metadata !3713, metadata !DIExpression()), !dbg !3715
  %4 = load i8, i8* %3, align 1, !dbg !3719, !tbaa !1318
  %5 = icmp eq i8 %4, 0, !dbg !3723
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), i8* %3, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %6, metadata !3713, metadata !DIExpression()), !dbg !3715
  ret i8* %6, !dbg !3725
}

; Function Attrs: nounwind
declare !dbg !1058 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3730, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i8* %1, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %2, metadata !3732, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %0, metadata !3734, metadata !DIExpression()) #12, !dbg !3743
  call void @llvm.dbg.value(metadata i8* %1, metadata !3737, metadata !DIExpression()) #12, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %2, metadata !3738, metadata !DIExpression()) #12, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %0, metadata !3745, metadata !DIExpression()) #12, !dbg !3751
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3753
  call void @llvm.dbg.value(metadata i8* %4, metadata !3750, metadata !DIExpression()) #12, !dbg !3751
  call void @llvm.dbg.value(metadata i8* %4, metadata !3739, metadata !DIExpression()) #12, !dbg !3743
  %5 = icmp eq i8* %4, null, !dbg !3754
  br i1 %5, label %6, label %9, !dbg !3755

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3756
  br i1 %7, label %19, label %8, !dbg !3759

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3760, !tbaa !1318
  br label %19, !dbg !3761

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3762
  call void @llvm.dbg.value(metadata i64 %10, metadata !3740, metadata !DIExpression()) #12, !dbg !3763
  %11 = icmp ult i64 %10, %2, !dbg !3764
  br i1 %11, label %12, label %14, !dbg !3766

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3767
  call void @llvm.dbg.value(metadata i8* %1, metadata !3769, metadata !DIExpression()) #12, !dbg !3774
  call void @llvm.dbg.value(metadata i8* %4, metadata !3772, metadata !DIExpression()) #12, !dbg !3774
  call void @llvm.dbg.value(metadata i64 %13, metadata !3773, metadata !DIExpression()) #12, !dbg !3774
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #12, !dbg !3776
  br label %19, !dbg !3777

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3778
  br i1 %15, label %19, label %16, !dbg !3781

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3782
  call void @llvm.dbg.value(metadata i8* %1, metadata !3769, metadata !DIExpression()) #12, !dbg !3784
  call void @llvm.dbg.value(metadata i8* %4, metadata !3772, metadata !DIExpression()) #12, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %17, metadata !3773, metadata !DIExpression()) #12, !dbg !3784
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #12, !dbg !3786
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3787
  store i8 0, i8* %18, align 1, !dbg !3788, !tbaa !1318
  br label %19, !dbg !3789

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3790
  ret i32 %20, !dbg !3791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %0, metadata !3745, metadata !DIExpression()) #12, !dbg !3796
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3798
  call void @llvm.dbg.value(metadata i8* %2, metadata !3750, metadata !DIExpression()) #12, !dbg !3796
  ret i8* %2, !dbg !3799
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3800 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3806, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 0, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 0, metadata !3809, metadata !DIExpression()), !dbg !3810
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %2, metadata !3808, metadata !DIExpression()), !dbg !3810
  %3 = icmp slt i32 %2, 0, !dbg !3812
  br i1 %3, label %4, label %6, !dbg !3814

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3815
  br label %24, !dbg !3816

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3817
  %8 = icmp eq i32 %7, 0, !dbg !3817
  br i1 %8, label %13, label %9, !dbg !3819

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3820
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3821
  %12 = icmp eq i64 %11, -1, !dbg !3822
  br i1 %12, label %16, label %13, !dbg !3823

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3824
  %15 = icmp eq i32 %14, 0, !dbg !3824
  br i1 %15, label %16, label %18, !dbg !3825

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3807, metadata !DIExpression()), !dbg !3810
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3826
  call void @llvm.dbg.value(metadata i32 %21, metadata !3809, metadata !DIExpression()), !dbg !3810
  br label %24, !dbg !3827

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !3828
  %20 = load i32, i32* %19, align 4, !dbg !3828, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 %20, metadata !3807, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 %20, metadata !3807, metadata !DIExpression()), !dbg !3810
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3826
  call void @llvm.dbg.value(metadata i32 %21, metadata !3809, metadata !DIExpression()), !dbg !3810
  %22 = icmp eq i32 %20, 0, !dbg !3829
  br i1 %22, label %24, label %23, !dbg !3827

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3831, !tbaa !1293
  call void @llvm.dbg.value(metadata i32 -1, metadata !3809, metadata !DIExpression()), !dbg !3810
  br label %24, !dbg !3833

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3810
  ret i32 %25, !dbg !3834
}

; Function Attrs: nofree nounwind
declare !dbg !1067 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1102 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1103 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3835 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3841, metadata !DIExpression()), !dbg !3842
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3843
  br i1 %2, label %6, label %3, !dbg !3845

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3846
  %5 = icmp eq i32 %4, 0, !dbg !3846
  br i1 %5, label %6, label %8, !dbg !3847

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3848
  br label %17, !dbg !3849

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3850, metadata !DIExpression()) #12, !dbg !3855
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3857
  %10 = load i32, i32* %9, align 8, !dbg !3857, !tbaa !3638
  %11 = and i32 %10, 256, !dbg !3859
  %12 = icmp eq i32 %11, 0, !dbg !3859
  br i1 %12, label %15, label %13, !dbg !3860

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3861
  br label %15, !dbg !3861

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3862
  br label %17, !dbg !3863

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3842
  ret i32 %18, !dbg !3864
}

; Function Attrs: nofree nounwind
declare !dbg !1110 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3865 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3872, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %1, metadata !3873, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 %2, metadata !3874, metadata !DIExpression()), !dbg !3878
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3879
  %5 = load i8*, i8** %4, align 8, !dbg !3879, !tbaa !3880
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3881
  %7 = load i8*, i8** %6, align 8, !dbg !3881, !tbaa !3882
  %8 = icmp eq i8* %5, %7, !dbg !3883
  br i1 %8, label %9, label %28, !dbg !3884

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3885
  %11 = load i8*, i8** %10, align 8, !dbg !3885, !tbaa !3886
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3887
  %13 = load i8*, i8** %12, align 8, !dbg !3887, !tbaa !3888
  %14 = icmp eq i8* %11, %13, !dbg !3889
  br i1 %14, label %15, label %28, !dbg !3890

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3891
  %17 = load i8*, i8** %16, align 8, !dbg !3891, !tbaa !3892
  %18 = icmp eq i8* %17, null, !dbg !3893
  br i1 %18, label %19, label %28, !dbg !3894

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3895
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %21, metadata !3875, metadata !DIExpression()), !dbg !3897
  %22 = icmp eq i64 %21, -1, !dbg !3898
  br i1 %22, label %30, label %23, !dbg !3900

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3901
  %25 = load i32, i32* %24, align 8, !dbg !3902, !tbaa !3638
  %26 = and i32 %25, -17, !dbg !3902
  store i32 %26, i32* %24, align 8, !dbg !3902, !tbaa !3638
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3903
  store i64 %21, i64* %27, align 8, !dbg !3904, !tbaa !3905
  br label %30, !dbg !3906

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3907
  br label %30, !dbg !3908

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3878
  ret i32 %31, !dbg !3909
}

; Function Attrs: nofree nounwind
declare !dbg !1186 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #12 = { nounwind }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { norecurse nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!398, !2, !475, !11, !95, !101, !169, !211, !480, !354, !522, !543, !546, !573, !576, !578, !597, !362, !615, !654, !661, !668, !1061, !1064, !1107, !1148}
!llvm.ident = !{!1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189, !1189}
!llvm.module.flags = !{!1190, !1191, !1192, !1193, !1194}

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
!100 = distinct !DIGlobalVariable(name: "long_options", scope: !101, file: !102, line: 34, type: !164, isLocal: true, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !103, globals: !163, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !{!104, !119}
!104 = !DISubprogram(name: "getopt_long", scope: !105, file: !105, line: 66, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!105 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!18, !18, !108, !6, !110, !117}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !105, line: 50, size: 256, elements: !113)
!113 = !{!114, !115, !116, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !105, line: 52, baseType: !6, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !112, file: !105, line: 55, baseType: !18, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !112, file: !105, line: 56, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !112, file: !105, line: 57, baseType: !18, size: 32, offset: 192)
!119 = !DISubprogram(name: "version_etc_va", scope: !120, file: !120, line: 63, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!120 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !6, !6, !6, !155}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !124, file: !21, line: 51, baseType: !18, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !124, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !124, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !124, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !124, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !124, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !124, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !124, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !124, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !124, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !124, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !124, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !124, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !124, file: !21, line: 70, baseType: !123, size: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !124, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !124, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !124, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !124, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !124, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !124, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !124, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !124, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !124, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !124, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !124, file: !21, line: 93, baseType: !123, size: 64, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !124, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !124, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !124, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !124, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !102, line: 72, size: 192, elements: !157)
!157 = !{!158, !160, !161, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !156, file: !102, line: 72, baseType: !159, size: 32)
!159 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !156, file: !102, line: 72, baseType: !159, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !156, file: !102, line: 72, baseType: !67, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !156, file: !102, line: 72, baseType: !67, size: 64, offset: 128)
!163 = !{!99}
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 768, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 3)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "program_name", scope: !169, file: !170, line: 33, type: !6, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, globals: !208, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!67, !172, !25}
!172 = !DISubprogram(name: "fputs", scope: !173, file: !173, line: 626, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!173 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!174 = !DISubroutineType(types: !175)
!175 = !{!18, !6, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !177, file: !21, line: 51, baseType: !18, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !177, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !177, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !177, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !177, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !177, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !177, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !177, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !177, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !177, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !177, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !177, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !177, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !177, file: !21, line: 70, baseType: !176, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !177, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !177, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !177, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !177, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !177, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !177, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !177, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !177, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !177, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !177, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !177, file: !21, line: 93, baseType: !176, size: 64, offset: 1344)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !177, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !177, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !177, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !177, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!208 = !{!167}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !211, file: !212, line: 85, type: !348, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !213, retainedTypes: !247, globals: !321, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = !{!214, !227, !232}
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !82, line: 32, baseType: !159, size: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!216 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!220 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!221 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!222 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!223 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!224 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!225 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!226 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !82, line: 242, baseType: !159, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!231 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 46, baseType: !159, size: 32, elements: !234)
!233 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!235 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!236 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!237 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!238 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!239 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!240 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!241 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!242 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!243 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!246 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!247 = !{!248, !254, !270, !274, !18, !47, !277, !69, !294, !298, !77, !304, !308, !25, !312, !315, !318}
!248 = !DISubprogram(name: "xmemdup", scope: !249, file: !249, line: 62, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!249 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!250 = !DISubroutineType(types: !251)
!251 = !{!67, !252, !71}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!254 = !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 342, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!255 = !DISubroutineType(types: !256)
!256 = !{!25, !6, !71, !257, !258}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !212, line: 65, size: 448, elements: !261)
!261 = !{!262, !263, !264, !268, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !260, file: !212, line: 68, baseType: !214, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !212, line: 71, baseType: !18, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !260, file: !212, line: 75, baseType: !265, size: 256, offset: 64)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 8)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !260, file: !212, line: 78, baseType: !6, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !260, file: !212, line: 81, baseType: !6, size: 64, offset: 384)
!270 = !DISubprogram(name: "free", scope: !271, file: !271, line: 565, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!271 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!272 = !DISubroutineType(types: !273)
!273 = !{null, !67}
!274 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 408, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!275 = !DISubroutineType(types: !276)
!276 = !{!25, !18, !6, !6, !6, !71}
!277 = !DISubprogram(name: "rpl_mbrtowc", scope: !278, file: !278, line: 717, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!278 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!279 = !DISubroutineType(types: !280)
!280 = !{!71, !117, !6, !71, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !284)
!283 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !282, file: !283, line: 15, baseType: !18, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !282, file: !283, line: 20, baseType: !287, size: 32, offset: 32)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 16, size: 32, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !287, file: !283, line: 18, baseType: !159, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !287, file: !283, line: 19, baseType: !291, size: 32)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 4)
!294 = !DISubprogram(name: "iswprint", scope: !295, file: !295, line: 120, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!295 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!296 = !DISubroutineType(types: !297)
!297 = !{!18, !159}
!298 = !DISubprogram(name: "mbsinit", scope: !299, file: !299, line: 292, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!299 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!300 = !DISubroutineType(types: !301)
!301 = !{!18, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!304 = !DISubprogram(name: "locale_charset", scope: !305, file: !305, line: 35, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!305 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!306 = !DISubroutineType(types: !307)
!307 = !{!6}
!308 = !DISubprogram(name: "c_strcasecmp", scope: !309, file: !309, line: 42, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!309 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!310 = !DISubroutineType(types: !311)
!311 = !{!18, !6, !6}
!312 = !DISubprogram(name: "xmalloc", scope: !249, file: !249, line: 53, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!313 = !DISubroutineType(types: !314)
!314 = !{!67, !71}
!315 = !DISubprogram(name: "xalloc_die", scope: !249, file: !249, line: 51, type: !316, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!316 = !DISubroutineType(types: !317)
!317 = !{null}
!318 = !DISubprogram(name: "xrealloc", scope: !249, file: !249, line: 59, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!319 = !DISubroutineType(types: !320)
!320 = !{!67, !67, !71}
!321 = !{!209, !322, !328, !330, !332, !337, !344, !346}
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !211, file: !212, line: 101, type: !324, isLocal: false, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 320, elements: !326)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!326 = !{!327}
!327 = !DISubrange(count: 10)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !211, file: !212, line: 1052, type: !260, isLocal: false, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !211, file: !212, line: 116, type: !260, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "slot0", scope: !211, file: !212, line: 842, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 256)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "slotvec", scope: !211, file: !212, line: 845, type: !339, isLocal: true, isDefinition: true)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !212, line: 834, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !212, line: 836, baseType: !69, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !340, file: !212, line: 837, baseType: !25, size: 64, offset: 64)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "nslots", scope: !211, file: !212, line: 843, type: !18, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "slotvec0", scope: !211, file: !212, line: 844, type: !340, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 704, elements: !350)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!350 = !{!351}
!351 = !DISubrange(count: 11)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !354, file: !355, line: 26, type: !357, isLocal: false, isDefinition: true)
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !356, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!356 = !{!352}
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 47)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !362, file: !363, line: 50, type: !397, isLocal: true, isDefinition: true)
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !364, globals: !396, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!364 = !{!25, !365, !389, !392}
!365 = !DISubprogram(name: "strtod_l", scope: !271, file: !271, line: 295, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !6, !369, !370}
!368 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !372, line: 28, size: 1856, elements: !373)
!372 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "")
!373 = !{!374, !380, !383, !386, !387}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !371, file: !372, line: 31, baseType: !375, size: 832)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 832, elements: !378)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !372, line: 31, flags: DIFlagFwdDecl)
!378 = !{!379}
!379 = !DISubrange(count: 13)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !371, file: !372, line: 34, baseType: !381, size: 64, offset: 832)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !371, file: !372, line: 35, baseType: !384, size: 64, offset: 896)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !371, file: !372, line: 36, baseType: !384, size: 64, offset: 960)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !371, file: !372, line: 39, baseType: !388, size: 832, offset: 1024)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 832, elements: !378)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !390, line: 24, baseType: !391)
!390 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !372, line: 42, baseType: !370)
!392 = !DISubprogram(name: "newlocale", scope: !393, file: !393, line: 141, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!393 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!394 = !DISubroutineType(types: !395)
!395 = !{!370, !18, !6, !370}
!396 = !{!360}
!397 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !389)
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !400, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "src/sleep.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!400 = !{!77, !401, !436, !440, !443, !446, !447, !6, !67, !451, !85, !458, !467, !471}
!401 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!402 = !DISubroutineType(types: !403)
!403 = !{!18, !6, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !405, file: !21, line: 51, baseType: !18, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !405, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !405, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !405, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !405, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !405, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !405, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !405, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !405, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !405, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !405, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !405, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !405, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !405, file: !21, line: 70, baseType: !404, size: 64, offset: 832)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !405, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !405, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !405, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !405, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !405, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !405, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !405, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !405, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !405, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !405, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !405, file: !21, line: 93, baseType: !404, size: 64, offset: 1344)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !405, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !405, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !405, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !405, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!436 = !DISubprogram(name: "set_program_name", scope: !437, file: !437, line: 37, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!437 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!438 = !DISubroutineType(types: !439)
!439 = !{null, !6}
!440 = !DISubprogram(name: "setlocale", scope: !393, file: !393, line: 122, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!441 = !DISubroutineType(types: !442)
!442 = !{!25, !18, !6}
!443 = !DISubprogram(name: "bindtextdomain", scope: !78, file: !78, line: 86, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!444 = !DISubroutineType(types: !445)
!445 = !{!25, !6, !6}
!446 = !DISubprogram(name: "textdomain", scope: !78, file: !78, line: 82, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!447 = !DISubprogram(name: "atexit", scope: !271, file: !271, line: 595, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!448 = !DISubroutineType(types: !449)
!449 = !{!18, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!451 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !452, file: !452, line: 33, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!452 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!453 = !DISubroutineType(types: !454)
!454 = !{null, !18, !369, !6, !6, !6, !92, !455, null}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !18}
!458 = !DISubprogram(name: "xstrtod", scope: !459, file: !459, line: 26, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!459 = !DIFile(filename: "./lib/xstrtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!460 = !DISubroutineType(types: !461)
!461 = !{!92, !6, !462, !463, !464}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!368, !6, !369}
!467 = !DISubprogram(name: "quote", scope: !468, file: !468, line: 44, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!468 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!469 = !DISubroutineType(types: !470)
!470 = !{!6, !6}
!471 = !DISubprogram(name: "xnanosleep", scope: !472, file: !472, line: 1, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!472 = !DIFile(filename: "./lib/xnanosleep.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!473 = !DISubroutineType(types: !474)
!474 = !{!18, !368}
!475 = distinct !DICompileUnit(language: DW_LANG_C99, file: !476, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !477, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "lib/cl-strtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!477 = !{!478}
!478 = !DISubprogram(name: "c_strtod", scope: !479, file: !479, line: 40, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!479 = !DIFile(filename: "./lib/c-strtod.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!480 = distinct !DICompileUnit(language: DW_LANG_C99, file: !481, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !482, retainedTypes: !486, splitDebugInlining: false, nameTableKind: None)
!481 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!482 = !{!483}
!483 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !481, line: 40, baseType: !159, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!486 = !{!77, !487, !67}
!487 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!488 = !DISubroutineType(types: !489)
!489 = !{!18, !6, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !491, file: !21, line: 51, baseType: !18, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !491, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !491, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !491, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !491, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !491, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !491, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !491, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !491, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !491, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !491, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !491, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !491, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !491, file: !21, line: 70, baseType: !490, size: 64, offset: 832)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !491, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !491, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !491, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !491, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !491, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !491, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !491, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !491, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !491, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !491, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !491, file: !21, line: 93, baseType: !490, size: 64, offset: 1344)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !491, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !491, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !491, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !491, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !524, retainedTypes: !537, splitDebugInlining: false, nameTableKind: None)
!523 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!524 = !{!525}
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !526, file: !249, line: 186, baseType: !159, size: 32, elements: !535)
!526 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !527, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !530)
!527 = !DISubroutineType(types: !528)
!528 = !{!67, !67, !529, !69}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!530 = !{!531, !532, !533, !534}
!531 = !DILocalVariable(name: "p", arg: 1, scope: !526, file: !249, line: 174, type: !67)
!532 = !DILocalVariable(name: "pn", arg: 2, scope: !526, file: !249, line: 174, type: !529)
!533 = !DILocalVariable(name: "s", arg: 3, scope: !526, file: !249, line: 174, type: !69)
!534 = !DILocalVariable(name: "n", scope: !526, file: !249, line: 176, type: !69)
!535 = !{!536}
!536 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!537 = !{!69, !315, !312, !318, !25, !270, !67, !538, !541}
!538 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!539 = !DISubroutineType(types: !540)
!540 = !{!67, !71, !71}
!541 = !DISubprogram(name: "rpl_calloc", scope: !542, file: !542, line: 688, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!542 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !545, splitDebugInlining: false, nameTableKind: None)
!544 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!545 = !{!77, !85}
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !548, splitDebugInlining: false, nameTableKind: None)
!547 = !DIFile(filename: "lib/xnanosleep.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!548 = !{!549, !552, !556, !566}
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !550, line: 7, baseType: !551)
!550 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "")
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !44, line: 160, baseType: !45)
!552 = !DISubprogram(name: "pause", scope: !553, file: !553, line: 469, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!553 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!554 = !DISubroutineType(types: !555)
!555 = !{!18}
!556 = !DISubprogram(name: "dtotimespec", scope: !557, file: !557, line: 116, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!557 = !DIFile(filename: "./lib/timespec.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !368}
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !561, line: 10, size: 128, elements: !562)
!561 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !560, file: !561, line: 12, baseType: !551, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !560, file: !561, line: 16, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !44, line: 196, baseType: !45)
!566 = !DISubprogram(name: "rpl_nanosleep", scope: !567, file: !567, line: 583, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!567 = !DIFile(filename: "./lib/time.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!568 = !DISubroutineType(types: !569)
!569 = !{!18, !570, !572}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !575, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/xstrtod.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !{!67}
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !575, splitDebugInlining: false, nameTableKind: None)
!577 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !580, splitDebugInlining: false, nameTableKind: None)
!579 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!580 = !{!581, !69, !593}
!581 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!582 = !DISubroutineType(types: !583)
!583 = !{!71, !117, !6, !71, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !585, file: !283, line: 15, baseType: !18, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !585, file: !283, line: 20, baseType: !589, size: 32, offset: 32)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !283, line: 16, size: 32, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !589, file: !283, line: 18, baseType: !159, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !589, file: !283, line: 19, baseType: !291, size: 32)
!593 = !DISubprogram(name: "hard_locale", scope: !594, file: !594, line: 26, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!594 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!595 = !DISubroutineType(types: !596)
!596 = !{!92, !18}
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !599, retainedTypes: !603, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "lib/nanosleep.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!599 = !{!600}
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !598, line: 41, baseType: !159, size: 32, elements: !601)
!601 = !{!602}
!602 = !DIEnumerator(name: "BILLION", value: 1000000000, isUnsigned: true)
!603 = !{!604}
!604 = !DISubprogram(name: "nanosleep", scope: !605, file: !605, line: 205, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!605 = !DIFile(filename: "/usr/include/time.h", directory: "")
!606 = !DISubroutineType(types: !607)
!607 = !{!18, !608, !614}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !561, line: 10, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !610, file: !561, line: 12, baseType: !551, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !610, file: !561, line: 16, baseType: !565, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !617, splitDebugInlining: false, nameTableKind: None)
!616 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!617 = !{!618}
!618 = !DISubprogram(name: "rpl_fclose", scope: !619, file: !619, line: 672, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!619 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!620 = !DISubroutineType(types: !621)
!621 = !{!18, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !623, file: !21, line: 51, baseType: !18, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !623, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !623, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !623, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !623, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !623, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !623, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !623, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !623, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !623, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !623, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !623, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !623, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !623, file: !21, line: 70, baseType: !622, size: 64, offset: 832)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !623, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !623, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !623, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !623, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !623, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !623, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !623, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !623, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !623, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !623, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !623, file: !21, line: 93, baseType: !622, size: 64, offset: 1344)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !623, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !623, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !623, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !623, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !656, retainedTypes: !660, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/dtotimespec.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = !{!657}
!657 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !557, line: 42, baseType: !159, size: 32, elements: !658)
!658 = !{!659}
!659 = !DIEnumerator(name: "TIMESPEC_HZ", value: 1000000000, isUnsigned: true)
!660 = !{!549}
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = !{!664}
!664 = !DISubprogram(name: "setlocale_null_r", scope: !665, file: !665, line: 64, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!665 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!666 = !DISubroutineType(types: !667)
!667 = !{!18, !18, !25, !71}
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !670, retainedTypes: !1057, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!670 = !{!671}
!671 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !672, line: 41, baseType: !159, size: 32, elements: !673)
!672 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056}
!674 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!675 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!676 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!677 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!678 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!679 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!680 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!681 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!682 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!683 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!684 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!685 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!686 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!687 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!688 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!689 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!690 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!691 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!692 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!693 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!694 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!695 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!696 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!697 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!698 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!699 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!700 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!701 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!702 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!703 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!704 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!705 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!706 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!707 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!708 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!709 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!710 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!711 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!712 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!713 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!714 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!715 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!716 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!717 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!718 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!719 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!720 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!721 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!722 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!723 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!782 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!785 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!786 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!787 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!788 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!789 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!790 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!791 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!792 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!793 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!794 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!795 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!796 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!869 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!942 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!943 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!944 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!945 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!946 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!947 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!948 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!949 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!950 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!951 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!952 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!953 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!954 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!955 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!956 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!958 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!959 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!960 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!961 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!962 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!963 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!989 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!990 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!991 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!992 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!993 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!998 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!999 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1000 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1001 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1057 = !{!1058, !67}
!1058 = !DISubprogram(name: "nl_langinfo", scope: !672, file: !672, line: 661, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!25, !18}
!1061 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1062, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1063, splitDebugInlining: false, nameTableKind: None)
!1062 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1063 = !{!67, !440}
!1064 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1065, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1066, splitDebugInlining: false, nameTableKind: None)
!1065 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1066 = !{!1067, !1102, !1103, !1106}
!1067 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!18, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1071, file: !21, line: 51, baseType: !18, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1071, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1071, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1071, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1071, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1071, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1071, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1071, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1071, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1071, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1071, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1071, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1071, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1071, file: !21, line: 70, baseType: !1070, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1071, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1071, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1071, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1071, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1071, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1071, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1071, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1071, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1071, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1071, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1071, file: !21, line: 93, baseType: !1070, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1071, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1071, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1071, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1071, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1102 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1103 = !DISubprogram(name: "lseek", scope: !553, file: !553, line: 334, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!45, !18, !45, !18}
!1106 = !DISubprogram(name: "rpl_fflush", scope: !619, file: !619, line: 718, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1108, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1109, splitDebugInlining: false, nameTableKind: None)
!1108 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1109 = !{!67, !1110, !1145}
!1110 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!18, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1114, file: !21, line: 51, baseType: !18, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1114, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1114, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1114, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1114, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1114, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1114, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1114, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1114, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1114, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1114, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1114, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1114, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1114, file: !21, line: 70, baseType: !1113, size: 64, offset: 832)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1114, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1114, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1114, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1114, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1114, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1114, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1114, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1114, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1114, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1114, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1114, file: !21, line: 93, baseType: !1113, size: 64, offset: 1344)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1114, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1114, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1114, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1114, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1145 = !DISubprogram(name: "rpl_fseeko", scope: !619, file: !619, line: 1034, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!18, !1113, !45, !18}
!1148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1149, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1150, splitDebugInlining: false, nameTableKind: None)
!1149 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1150 = !{!67, !1151, !1103, !1186}
!1151 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!18, !1154}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1155, file: !21, line: 51, baseType: !18, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1155, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1155, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1155, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1155, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1155, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1155, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1155, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1155, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1155, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1155, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1155, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1155, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1155, file: !21, line: 70, baseType: !1154, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1155, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1155, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1155, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1155, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1155, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1155, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1155, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1155, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1155, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1155, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1155, file: !21, line: 93, baseType: !1154, size: 64, offset: 1344)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1155, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1155, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1155, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1155, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1186 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!18, !1154, !45, !18}
!1189 = !{!"clang version 10.0.0 "}
!1190 = !{i32 7, !"Dwarf Version", i32 4}
!1191 = !{i32 2, !"Debug Info Version", i32 3}
!1192 = !{i32 1, !"wchar_size", i32 4}
!1193 = !{i32 7, !"PIC Level", i32 2}
!1194 = !{i32 7, !"PIE Level", i32 2}
!1195 = distinct !DISubprogram(name: "usage", scope: !399, file: !399, line: 38, type: !456, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1196)
!1196 = !{!1197}
!1197 = !DILocalVariable(name: "status", arg: 1, scope: !1195, file: !399, line: 38, type: !18)
!1198 = !DILocalVariable(name: "infomap", scope: !1199, file: !1200, line: 636, type: !1212)
!1199 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1200, file: !1200, line: 634, type: !438, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1201)
!1200 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1201 = !{!1202, !1198, !1203, !1204, !1211}
!1202 = !DILocalVariable(name: "program", arg: 1, scope: !1199, file: !1200, line: 634, type: !6)
!1203 = !DILocalVariable(name: "node", scope: !1199, file: !1200, line: 646, type: !6)
!1204 = !DILocalVariable(name: "map_prog", scope: !1199, file: !1200, line: 647, type: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1199, file: !1200, line: 636, size: 128, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1207, file: !1200, line: 636, baseType: !6, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1207, file: !1200, line: 636, baseType: !6, size: 64, offset: 64)
!1211 = !DILocalVariable(name: "lc_messages", scope: !1199, file: !1200, line: 659, type: !6)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 896, elements: !1213)
!1213 = !{!1214}
!1214 = !DISubrange(count: 7)
!1215 = !DILocation(line: 636, column: 67, scope: !1199, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 56, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !399, line: 43, column: 5)
!1218 = distinct !DILexicalBlock(scope: !1195, file: !399, line: 40, column: 7)
!1219 = !DILocation(line: 0, scope: !1195)
!1220 = !DILocation(line: 40, column: 14, scope: !1218)
!1221 = !DILocation(line: 40, column: 7, scope: !1195)
!1222 = !DILocation(line: 41, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !399, line: 41, column: 5)
!1224 = !{!1225, !1225, i64 0}
!1225 = !{!"any pointer", !1226, i64 0}
!1226 = !{!"omnipotent char", !1227, i64 0}
!1227 = !{!"Simple C/C++ TBAA"}
!1228 = !DILocation(line: 44, column: 7, scope: !1217)
!1229 = !DILocation(line: 54, column: 7, scope: !1217)
!1230 = !DILocation(line: 55, column: 7, scope: !1217)
!1231 = !DILocation(line: 0, scope: !1199, inlinedAt: !1216)
!1232 = !DILocation(line: 636, column: 3, scope: !1199, inlinedAt: !1216)
!1233 = !DILocation(line: 647, column: 36, scope: !1199, inlinedAt: !1216)
!1234 = !DILocation(line: 649, column: 3, scope: !1199, inlinedAt: !1216)
!1235 = !DILocation(line: 649, column: 33, scope: !1199, inlinedAt: !1216)
!1236 = !DILocation(line: 650, column: 13, scope: !1199, inlinedAt: !1216)
!1237 = !DILocation(line: 649, column: 20, scope: !1199, inlinedAt: !1216)
!1238 = !{!1239, !1225, i64 0}
!1239 = !{!"infomap", !1225, i64 0, !1225, i64 8}
!1240 = !DILocation(line: 649, column: 10, scope: !1199, inlinedAt: !1216)
!1241 = !DILocation(line: 649, column: 28, scope: !1199, inlinedAt: !1216)
!1242 = distinct !{!1242, !1234, !1236}
!1243 = !DILocation(line: 652, column: 17, scope: !1244, inlinedAt: !1216)
!1244 = distinct !DILexicalBlock(scope: !1199, file: !1200, line: 652, column: 7)
!1245 = !{!1239, !1225, i64 8}
!1246 = !DILocation(line: 652, column: 7, scope: !1244, inlinedAt: !1216)
!1247 = !DILocation(line: 652, column: 7, scope: !1199, inlinedAt: !1216)
!1248 = !DILocation(line: 655, column: 3, scope: !1199, inlinedAt: !1216)
!1249 = !DILocation(line: 659, column: 29, scope: !1199, inlinedAt: !1216)
!1250 = !DILocation(line: 660, column: 7, scope: !1251, inlinedAt: !1216)
!1251 = distinct !DILexicalBlock(scope: !1199, file: !1200, line: 660, column: 7)
!1252 = !DILocation(line: 660, column: 19, scope: !1251, inlinedAt: !1216)
!1253 = !DILocation(line: 660, column: 22, scope: !1251, inlinedAt: !1216)
!1254 = !DILocation(line: 660, column: 7, scope: !1199, inlinedAt: !1216)
!1255 = !DILocation(line: 666, column: 7, scope: !1256, inlinedAt: !1216)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !1200, line: 661, column: 5)
!1257 = !DILocation(line: 668, column: 5, scope: !1256, inlinedAt: !1216)
!1258 = !DILocation(line: 669, column: 3, scope: !1199, inlinedAt: !1216)
!1259 = !DILocation(line: 671, column: 3, scope: !1199, inlinedAt: !1216)
!1260 = !DILocation(line: 673, column: 1, scope: !1199, inlinedAt: !1216)
!1261 = !DILocation(line: 58, column: 3, scope: !1195)
!1262 = distinct !DISubprogram(name: "main", scope: !399, file: !399, line: 97, type: !1263, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!18, !18, !369}
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1272, !1275}
!1266 = !DILocalVariable(name: "argc", arg: 1, scope: !1262, file: !399, line: 97, type: !18)
!1267 = !DILocalVariable(name: "argv", arg: 2, scope: !1262, file: !399, line: 97, type: !369)
!1268 = !DILocalVariable(name: "seconds", scope: !1262, file: !399, line: 99, type: !368)
!1269 = !DILocalVariable(name: "ok", scope: !1262, file: !399, line: 100, type: !92)
!1270 = !DILocalVariable(name: "i", scope: !1271, file: !399, line: 120, type: !18)
!1271 = distinct !DILexicalBlock(scope: !1262, file: !399, line: 120, column: 3)
!1272 = !DILocalVariable(name: "s", scope: !1273, file: !399, line: 122, type: !368)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !399, line: 121, column: 5)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !399, line: 120, column: 3)
!1275 = !DILocalVariable(name: "p", scope: !1273, file: !399, line: 123, type: !6)
!1276 = !DILocation(line: 0, scope: !1262)
!1277 = !DILocation(line: 103, column: 21, scope: !1262)
!1278 = !DILocation(line: 103, column: 3, scope: !1262)
!1279 = !DILocation(line: 104, column: 3, scope: !1262)
!1280 = !DILocation(line: 105, column: 3, scope: !1262)
!1281 = !DILocation(line: 106, column: 3, scope: !1262)
!1282 = !DILocation(line: 108, column: 3, scope: !1262)
!1283 = !DILocation(line: 111, column: 36, scope: !1262)
!1284 = !DILocation(line: 110, column: 3, scope: !1262)
!1285 = !DILocation(line: 114, column: 12, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1262, file: !399, line: 114, column: 7)
!1287 = !DILocation(line: 114, column: 7, scope: !1262)
!1288 = !DILocation(line: 116, column: 20, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !399, line: 115, column: 5)
!1290 = !DILocation(line: 116, column: 7, scope: !1289)
!1291 = !DILocation(line: 117, column: 7, scope: !1289)
!1292 = !DILocation(line: 120, column: 16, scope: !1271)
!1293 = !{!1294, !1294, i64 0}
!1294 = !{!"int", !1226, i64 0}
!1295 = !DILocation(line: 0, scope: !1271)
!1296 = !DILocation(line: 120, column: 26, scope: !1274)
!1297 = !DILocation(line: 120, column: 3, scope: !1271)
!1298 = !DILocation(line: 0, scope: !1273)
!1299 = !DILocation(line: 139, column: 8, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1262, file: !399, line: 139, column: 7)
!1301 = !DILocation(line: 139, column: 7, scope: !1262)
!1302 = !DILocation(line: 122, column: 7, scope: !1273)
!1303 = !DILocation(line: 123, column: 7, scope: !1273)
!1304 = !DILocation(line: 124, column: 23, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1273, file: !399, line: 124, column: 11)
!1306 = !DILocation(line: 124, column: 14, scope: !1305)
!1307 = !DILocation(line: 124, column: 51, scope: !1305)
!1308 = !DILocation(line: 124, column: 54, scope: !1305)
!1309 = !DILocation(line: 124, column: 60, scope: !1305)
!1310 = !DILocation(line: 126, column: 11, scope: !1305)
!1311 = !DILocation(line: 126, column: 22, scope: !1305)
!1312 = !{!1313, !1313, i64 0}
!1313 = !{!"double", !1226, i64 0}
!1314 = !DILocation(line: 126, column: 19, scope: !1305)
!1315 = !DILocation(line: 128, column: 11, scope: !1305)
!1316 = !DILocation(line: 128, column: 16, scope: !1305)
!1317 = !DILocation(line: 128, column: 15, scope: !1305)
!1318 = !{!1226, !1226, i64 0}
!1319 = !DILocation(line: 128, column: 18, scope: !1305)
!1320 = !DILocation(line: 128, column: 24, scope: !1305)
!1321 = !DILocation(line: 128, column: 21, scope: !1305)
!1322 = !DILocation(line: 130, column: 11, scope: !1305)
!1323 = !DILocalVariable(name: "x", arg: 1, scope: !1324, file: !399, line: 68, type: !463)
!1324 = distinct !DISubprogram(name: "apply_suffix", scope: !399, file: !399, line: 68, type: !1325, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!92, !463, !8}
!1327 = !{!1323, !1328, !1329}
!1328 = !DILocalVariable(name: "suffix_char", arg: 2, scope: !1324, file: !399, line: 68, type: !8)
!1329 = !DILocalVariable(name: "multiplier", scope: !1324, file: !399, line: 70, type: !18)
!1330 = !DILocation(line: 0, scope: !1324, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 130, column: 16, scope: !1305)
!1332 = !DILocation(line: 72, column: 11, scope: !1324, inlinedAt: !1331)
!1333 = !DILocation(line: 72, column: 3, scope: !1324, inlinedAt: !1331)
!1334 = !DILocation(line: 80, column: 7, scope: !1335, inlinedAt: !1331)
!1335 = distinct !DILexicalBlock(scope: !1324, file: !399, line: 73, column: 5)
!1336 = !DILocation(line: 83, column: 7, scope: !1335, inlinedAt: !1331)
!1337 = !DILocation(line: 86, column: 7, scope: !1335, inlinedAt: !1331)
!1338 = !DILocation(line: 91, column: 6, scope: !1324, inlinedAt: !1331)
!1339 = !DILocation(line: 124, column: 11, scope: !1273)
!1340 = !DILocation(line: 132, column: 24, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1305, file: !399, line: 131, column: 9)
!1342 = !DILocation(line: 132, column: 62, scope: !1341)
!1343 = !DILocation(line: 132, column: 55, scope: !1341)
!1344 = !DILocation(line: 132, column: 11, scope: !1341)
!1345 = !DILocation(line: 136, column: 18, scope: !1273)
!1346 = !DILocation(line: 134, column: 9, scope: !1341)
!1347 = !DILocation(line: 136, column: 15, scope: !1273)
!1348 = !DILocation(line: 137, column: 5, scope: !1274)
!1349 = !DILocation(line: 120, column: 35, scope: !1274)
!1350 = distinct !{!1350, !1297, !1351}
!1351 = !DILocation(line: 137, column: 5, scope: !1271)
!1352 = !DILocation(line: 140, column: 5, scope: !1300)
!1353 = !DILocation(line: 142, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1262, file: !399, line: 142, column: 7)
!1355 = !DILocation(line: 142, column: 7, scope: !1262)
!1356 = !DILocation(line: 143, column: 5, scope: !1354)
!1357 = !DILocation(line: 145, column: 3, scope: !1262)
!1358 = distinct !DISubprogram(name: "cl_strtod", scope: !476, file: !476, line: 59, type: !1359, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1362)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!368, !6, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !369)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1370, !1371}
!1363 = !DILocalVariable(name: "nptr", arg: 1, scope: !1358, file: !476, line: 59, type: !6)
!1364 = !DILocalVariable(name: "endptr", arg: 2, scope: !1358, file: !476, line: 59, type: !1361)
!1365 = !DILocalVariable(name: "end", scope: !1358, file: !476, line: 61, type: !25)
!1366 = !DILocalVariable(name: "d", scope: !1358, file: !476, line: 62, type: !368)
!1367 = !DILocalVariable(name: "strtod_errno", scope: !1368, file: !476, line: 65, type: !18)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !476, line: 64, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1358, file: !476, line: 63, column: 7)
!1370 = !DILocalVariable(name: "c_end", scope: !1368, file: !476, line: 66, type: !25)
!1371 = !DILocalVariable(name: "c", scope: !1368, file: !476, line: 67, type: !368)
!1372 = !DILocation(line: 0, scope: !1358)
!1373 = !DILocation(line: 61, column: 3, scope: !1358)
!1374 = !DILocation(line: 62, column: 14, scope: !1358)
!1375 = !DILocation(line: 63, column: 8, scope: !1369)
!1376 = !DILocation(line: 63, column: 7, scope: !1369)
!1377 = !DILocation(line: 63, column: 7, scope: !1358)
!1378 = !DILocation(line: 65, column: 26, scope: !1368)
!1379 = !DILocation(line: 0, scope: !1368)
!1380 = !DILocation(line: 66, column: 7, scope: !1368)
!1381 = !DILocation(line: 67, column: 18, scope: !1368)
!1382 = !DILocation(line: 68, column: 17, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1368, file: !476, line: 68, column: 11)
!1384 = !DILocation(line: 68, column: 15, scope: !1383)
!1385 = !DILocation(line: 68, column: 11, scope: !1368)
!1386 = !DILocation(line: 69, column: 20, scope: !1383)
!1387 = !DILocation(line: 69, column: 9, scope: !1383)
!1388 = !DILocation(line: 71, column: 15, scope: !1383)
!1389 = !DILocation(line: 72, column: 5, scope: !1369)
!1390 = !DILocation(line: 72, column: 5, scope: !1368)
!1391 = !DILocation(line: 73, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1358, file: !476, line: 73, column: 7)
!1393 = !DILocation(line: 73, column: 7, scope: !1358)
!1394 = !DILocation(line: 74, column: 13, scope: !1392)
!1395 = !DILocation(line: 74, column: 5, scope: !1392)
!1396 = !DILocation(line: 76, column: 1, scope: !1358)
!1397 = !DILocation(line: 75, column: 3, scope: !1358)
!1398 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !438, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1399)
!1399 = !{!1400}
!1400 = !DILocalVariable(name: "file", arg: 1, scope: !1398, file: !12, line: 51, type: !6)
!1401 = !DILocation(line: 0, scope: !1398)
!1402 = !DILocation(line: 53, column: 13, scope: !1398)
!1403 = !DILocation(line: 54, column: 1, scope: !1398)
!1404 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1405, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !92}
!1407 = !{!1408}
!1408 = !DILocalVariable(name: "ignore", arg: 1, scope: !1404, file: !12, line: 88, type: !92)
!1409 = !DILocation(line: 0, scope: !1404)
!1410 = !DILocation(line: 90, column: 16, scope: !1404)
!1411 = !{!1412, !1412, i64 0}
!1412 = !{!"_Bool", !1226, i64 0}
!1413 = !DILocation(line: 91, column: 1, scope: !1404)
!1414 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1415)
!1415 = !{!1416}
!1416 = !DILocalVariable(name: "write_error", scope: !1417, file: !12, line: 122, type: !6)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !12, line: 121, column: 5)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !12, line: 119, column: 7)
!1419 = !DILocation(line: 119, column: 21, scope: !1418)
!1420 = !DILocation(line: 119, column: 7, scope: !1418)
!1421 = !DILocation(line: 119, column: 29, scope: !1418)
!1422 = !DILocation(line: 120, column: 7, scope: !1418)
!1423 = !DILocation(line: 120, column: 12, scope: !1418)
!1424 = !{i8 0, i8 2}
!1425 = !DILocation(line: 120, column: 25, scope: !1418)
!1426 = !DILocation(line: 120, column: 28, scope: !1418)
!1427 = !DILocation(line: 120, column: 34, scope: !1418)
!1428 = !DILocation(line: 119, column: 7, scope: !1414)
!1429 = !DILocation(line: 122, column: 33, scope: !1417)
!1430 = !DILocation(line: 0, scope: !1417)
!1431 = !DILocation(line: 123, column: 11, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1417, file: !12, line: 123, column: 11)
!1433 = !DILocation(line: 0, scope: !1432)
!1434 = !DILocation(line: 123, column: 11, scope: !1417)
!1435 = !DILocation(line: 124, column: 36, scope: !1432)
!1436 = !DILocation(line: 124, column: 9, scope: !1432)
!1437 = !DILocation(line: 127, column: 9, scope: !1432)
!1438 = !DILocation(line: 129, column: 14, scope: !1417)
!1439 = !DILocation(line: 129, column: 7, scope: !1417)
!1440 = !DILocation(line: 134, column: 42, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1414, file: !12, line: 134, column: 7)
!1442 = !DILocation(line: 134, column: 28, scope: !1441)
!1443 = !DILocation(line: 134, column: 50, scope: !1441)
!1444 = !DILocation(line: 134, column: 7, scope: !1414)
!1445 = !DILocation(line: 135, column: 12, scope: !1441)
!1446 = !DILocation(line: 135, column: 5, scope: !1441)
!1447 = !DILocation(line: 136, column: 1, scope: !1414)
!1448 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1449, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !18, !369, !6, !6, !6, !455, null}
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1452 = !DILocalVariable(name: "argc", arg: 1, scope: !1448, file: !102, line: 45, type: !18)
!1453 = !DILocalVariable(name: "argv", arg: 2, scope: !1448, file: !102, line: 46, type: !369)
!1454 = !DILocalVariable(name: "command_name", arg: 3, scope: !1448, file: !102, line: 47, type: !6)
!1455 = !DILocalVariable(name: "package", arg: 4, scope: !1448, file: !102, line: 48, type: !6)
!1456 = !DILocalVariable(name: "version", arg: 5, scope: !1448, file: !102, line: 49, type: !6)
!1457 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1448, file: !102, line: 50, type: !455)
!1458 = !DILocalVariable(name: "c", scope: !1448, file: !102, line: 53, type: !18)
!1459 = !DILocalVariable(name: "saved_opterr", scope: !1448, file: !102, line: 54, type: !18)
!1460 = !DILocalVariable(name: "authors", scope: !1461, file: !102, line: 72, type: !1465)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !102, line: 71, column: 11)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !102, line: 65, column: 9)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !102, line: 63, column: 5)
!1464 = distinct !DILexicalBlock(scope: !1448, file: !102, line: 61, column: 7)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1467, line: 32, baseType: !1468)
!1467 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1469)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1470 = !DILocation(line: 0, scope: !1448)
!1471 = !DILocation(line: 56, column: 18, scope: !1448)
!1472 = !DILocation(line: 59, column: 10, scope: !1448)
!1473 = !DILocation(line: 61, column: 12, scope: !1464)
!1474 = !DILocation(line: 62, column: 7, scope: !1464)
!1475 = !DILocation(line: 62, column: 15, scope: !1464)
!1476 = !DILocation(line: 61, column: 7, scope: !1448)
!1477 = !DILocation(line: 67, column: 11, scope: !1462)
!1478 = !DILocation(line: 68, column: 11, scope: !1462)
!1479 = !DILocation(line: 72, column: 13, scope: !1461)
!1480 = !DILocation(line: 72, column: 21, scope: !1461)
!1481 = !DILocation(line: 73, column: 13, scope: !1461)
!1482 = !DILocation(line: 74, column: 29, scope: !1461)
!1483 = !DILocation(line: 74, column: 13, scope: !1461)
!1484 = !DILocation(line: 75, column: 13, scope: !1461)
!1485 = !DILocation(line: 85, column: 10, scope: !1448)
!1486 = !DILocation(line: 89, column: 10, scope: !1448)
!1487 = !DILocation(line: 90, column: 1, scope: !1448)
!1488 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !453, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1490 = !DILocalVariable(name: "argc", arg: 1, scope: !1488, file: !102, line: 98, type: !18)
!1491 = !DILocalVariable(name: "argv", arg: 2, scope: !1488, file: !102, line: 99, type: !369)
!1492 = !DILocalVariable(name: "command_name", arg: 3, scope: !1488, file: !102, line: 100, type: !6)
!1493 = !DILocalVariable(name: "package", arg: 4, scope: !1488, file: !102, line: 101, type: !6)
!1494 = !DILocalVariable(name: "version", arg: 5, scope: !1488, file: !102, line: 102, type: !6)
!1495 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1488, file: !102, line: 103, type: !92)
!1496 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1488, file: !102, line: 104, type: !455)
!1497 = !DILocalVariable(name: "c", scope: !1488, file: !102, line: 107, type: !18)
!1498 = !DILocalVariable(name: "saved_opterr", scope: !1488, file: !102, line: 108, type: !18)
!1499 = !DILocalVariable(name: "optstring", scope: !1488, file: !102, line: 113, type: !6)
!1500 = !DILocalVariable(name: "authors", scope: !1501, file: !102, line: 125, type: !1465)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !102, line: 124, column: 11)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !102, line: 118, column: 9)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !102, line: 116, column: 5)
!1504 = distinct !DILexicalBlock(scope: !1488, file: !102, line: 115, column: 7)
!1505 = !DILocation(line: 0, scope: !1488)
!1506 = !DILocation(line: 108, column: 22, scope: !1488)
!1507 = !DILocation(line: 111, column: 10, scope: !1488)
!1508 = !DILocation(line: 113, column: 27, scope: !1488)
!1509 = !DILocation(line: 115, column: 12, scope: !1504)
!1510 = !DILocation(line: 115, column: 7, scope: !1488)
!1511 = !DILocation(line: 125, column: 13, scope: !1501)
!1512 = !DILocation(line: 125, column: 21, scope: !1501)
!1513 = !DILocation(line: 126, column: 13, scope: !1501)
!1514 = !DILocation(line: 127, column: 29, scope: !1501)
!1515 = !DILocation(line: 127, column: 13, scope: !1501)
!1516 = !DILocation(line: 128, column: 13, scope: !1501)
!1517 = !DILocation(line: 132, column: 26, scope: !1502)
!1518 = !DILocation(line: 133, column: 11, scope: !1502)
!1519 = !DILocation(line: 0, scope: !1502)
!1520 = !DILocation(line: 138, column: 10, scope: !1488)
!1521 = !DILocation(line: 139, column: 1, scope: !1488)
!1522 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !438, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1523)
!1523 = !{!1524, !1525, !1526}
!1524 = !DILocalVariable(name: "argv0", arg: 1, scope: !1522, file: !170, line: 39, type: !6)
!1525 = !DILocalVariable(name: "slash", scope: !1522, file: !170, line: 46, type: !6)
!1526 = !DILocalVariable(name: "base", scope: !1522, file: !170, line: 47, type: !6)
!1527 = !DILocation(line: 0, scope: !1522)
!1528 = !DILocation(line: 51, column: 13, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1522, file: !170, line: 51, column: 7)
!1530 = !DILocation(line: 51, column: 7, scope: !1522)
!1531 = !DILocation(line: 55, column: 14, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !170, line: 52, column: 5)
!1533 = !DILocation(line: 54, column: 7, scope: !1532)
!1534 = !DILocation(line: 56, column: 7, scope: !1532)
!1535 = !DILocation(line: 59, column: 11, scope: !1522)
!1536 = !DILocation(line: 60, column: 17, scope: !1522)
!1537 = !DILocation(line: 60, column: 11, scope: !1522)
!1538 = !DILocation(line: 61, column: 12, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1522, file: !170, line: 61, column: 7)
!1540 = !DILocation(line: 61, column: 20, scope: !1539)
!1541 = !DILocation(line: 61, column: 25, scope: !1539)
!1542 = !DILocation(line: 61, column: 42, scope: !1539)
!1543 = !DILocation(line: 61, column: 28, scope: !1539)
!1544 = !DILocation(line: 61, column: 61, scope: !1539)
!1545 = !DILocation(line: 61, column: 7, scope: !1522)
!1546 = !DILocation(line: 64, column: 11, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !170, line: 64, column: 11)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !170, line: 62, column: 5)
!1549 = !DILocation(line: 64, column: 36, scope: !1547)
!1550 = !DILocation(line: 64, column: 11, scope: !1548)
!1551 = !DILocation(line: 66, column: 24, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !170, line: 65, column: 9)
!1553 = !DILocation(line: 70, column: 41, scope: !1552)
!1554 = !DILocation(line: 72, column: 9, scope: !1552)
!1555 = !DILocation(line: 84, column: 16, scope: !1522)
!1556 = !DILocation(line: 90, column: 27, scope: !1522)
!1557 = !DILocation(line: 92, column: 1, scope: !1522)
!1558 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1559, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1562)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!1561, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1562 = !{!1563, !1564, !1565}
!1563 = !DILocalVariable(name: "o", arg: 1, scope: !1558, file: !212, line: 122, type: !1561)
!1564 = !DILocalVariable(name: "e", scope: !1558, file: !212, line: 124, type: !18)
!1565 = !DILocalVariable(name: "p", scope: !1558, file: !212, line: 125, type: !1561)
!1566 = !DILocation(line: 0, scope: !1558)
!1567 = !DILocation(line: 124, column: 11, scope: !1558)
!1568 = !DILocation(line: 125, column: 40, scope: !1558)
!1569 = !DILocation(line: 125, column: 31, scope: !1558)
!1570 = !DILocation(line: 127, column: 9, scope: !1558)
!1571 = !DILocation(line: 128, column: 3, scope: !1558)
!1572 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1573, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!214, !258}
!1575 = !{!1576}
!1576 = !DILocalVariable(name: "o", arg: 1, scope: !1572, file: !212, line: 133, type: !258)
!1577 = !DILocation(line: 0, scope: !1572)
!1578 = !DILocation(line: 135, column: 11, scope: !1572)
!1579 = !DILocation(line: 135, column: 46, scope: !1572)
!1580 = !{!1581, !1226, i64 0}
!1581 = !{!"quoting_options", !1226, i64 0, !1294, i64 4, !1226, i64 8, !1225, i64 40, !1225, i64 48}
!1582 = !DILocation(line: 135, column: 3, scope: !1572)
!1583 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1584, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1561, !214}
!1586 = !{!1587, !1588}
!1587 = !DILocalVariable(name: "o", arg: 1, scope: !1583, file: !212, line: 141, type: !1561)
!1588 = !DILocalVariable(name: "s", arg: 2, scope: !1583, file: !212, line: 141, type: !214)
!1589 = !DILocation(line: 0, scope: !1583)
!1590 = !DILocation(line: 143, column: 4, scope: !1583)
!1591 = !DILocation(line: 143, column: 39, scope: !1583)
!1592 = !DILocation(line: 143, column: 45, scope: !1583)
!1593 = !DILocation(line: 144, column: 1, scope: !1583)
!1594 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1595, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!18, !1561, !8, !18}
!1597 = !{!1598, !1599, !1600, !1601, !1603, !1605, !1606}
!1598 = !DILocalVariable(name: "o", arg: 1, scope: !1594, file: !212, line: 152, type: !1561)
!1599 = !DILocalVariable(name: "c", arg: 2, scope: !1594, file: !212, line: 152, type: !8)
!1600 = !DILocalVariable(name: "i", arg: 3, scope: !1594, file: !212, line: 152, type: !18)
!1601 = !DILocalVariable(name: "uc", scope: !1594, file: !212, line: 154, type: !1602)
!1602 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1603 = !DILocalVariable(name: "p", scope: !1594, file: !212, line: 155, type: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1605 = !DILocalVariable(name: "shift", scope: !1594, file: !212, line: 157, type: !18)
!1606 = !DILocalVariable(name: "r", scope: !1594, file: !212, line: 158, type: !18)
!1607 = !DILocation(line: 0, scope: !1594)
!1608 = !DILocation(line: 156, column: 6, scope: !1594)
!1609 = !DILocation(line: 156, column: 62, scope: !1594)
!1610 = !DILocation(line: 156, column: 57, scope: !1594)
!1611 = !DILocation(line: 157, column: 15, scope: !1594)
!1612 = !DILocation(line: 158, column: 12, scope: !1594)
!1613 = !DILocation(line: 158, column: 15, scope: !1594)
!1614 = !DILocation(line: 158, column: 25, scope: !1594)
!1615 = !DILocation(line: 159, column: 13, scope: !1594)
!1616 = !DILocation(line: 159, column: 18, scope: !1594)
!1617 = !DILocation(line: 159, column: 23, scope: !1594)
!1618 = !DILocation(line: 159, column: 6, scope: !1594)
!1619 = !DILocation(line: 160, column: 3, scope: !1594)
!1620 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1621, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!18, !1561, !18}
!1623 = !{!1624, !1625, !1626}
!1624 = !DILocalVariable(name: "o", arg: 1, scope: !1620, file: !212, line: 168, type: !1561)
!1625 = !DILocalVariable(name: "i", arg: 2, scope: !1620, file: !212, line: 168, type: !18)
!1626 = !DILocalVariable(name: "r", scope: !1620, file: !212, line: 170, type: !18)
!1627 = !DILocation(line: 0, scope: !1620)
!1628 = !DILocation(line: 171, column: 8, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1620, file: !212, line: 171, column: 7)
!1630 = !DILocation(line: 171, column: 7, scope: !1620)
!1631 = !DILocation(line: 173, column: 10, scope: !1620)
!1632 = !{!1581, !1294, i64 4}
!1633 = !DILocation(line: 174, column: 12, scope: !1620)
!1634 = !DILocation(line: 175, column: 3, scope: !1620)
!1635 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1636, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1561, !6, !6}
!1638 = !{!1639, !1640, !1641}
!1639 = !DILocalVariable(name: "o", arg: 1, scope: !1635, file: !212, line: 179, type: !1561)
!1640 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1635, file: !212, line: 180, type: !6)
!1641 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1635, file: !212, line: 180, type: !6)
!1642 = !DILocation(line: 0, scope: !1635)
!1643 = !DILocation(line: 182, column: 8, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1635, file: !212, line: 182, column: 7)
!1645 = !DILocation(line: 182, column: 7, scope: !1635)
!1646 = !DILocation(line: 184, column: 6, scope: !1635)
!1647 = !DILocation(line: 184, column: 12, scope: !1635)
!1648 = !DILocation(line: 185, column: 8, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1635, file: !212, line: 185, column: 7)
!1650 = !DILocation(line: 185, column: 23, scope: !1649)
!1651 = !DILocation(line: 185, column: 19, scope: !1649)
!1652 = !DILocation(line: 186, column: 5, scope: !1649)
!1653 = !DILocation(line: 187, column: 6, scope: !1635)
!1654 = !DILocation(line: 187, column: 17, scope: !1635)
!1655 = !{!1581, !1225, i64 40}
!1656 = !DILocation(line: 188, column: 6, scope: !1635)
!1657 = !DILocation(line: 188, column: 18, scope: !1635)
!1658 = !{!1581, !1225, i64 48}
!1659 = !DILocation(line: 189, column: 1, scope: !1635)
!1660 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1661, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!69, !25, !69, !6, !69, !258}
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671}
!1664 = !DILocalVariable(name: "buffer", arg: 1, scope: !1660, file: !212, line: 784, type: !25)
!1665 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1660, file: !212, line: 784, type: !69)
!1666 = !DILocalVariable(name: "arg", arg: 3, scope: !1660, file: !212, line: 785, type: !6)
!1667 = !DILocalVariable(name: "argsize", arg: 4, scope: !1660, file: !212, line: 785, type: !69)
!1668 = !DILocalVariable(name: "o", arg: 5, scope: !1660, file: !212, line: 786, type: !258)
!1669 = !DILocalVariable(name: "p", scope: !1660, file: !212, line: 788, type: !258)
!1670 = !DILocalVariable(name: "e", scope: !1660, file: !212, line: 789, type: !18)
!1671 = !DILocalVariable(name: "r", scope: !1660, file: !212, line: 790, type: !69)
!1672 = !DILocation(line: 0, scope: !1660)
!1673 = !DILocation(line: 788, column: 37, scope: !1660)
!1674 = !DILocation(line: 789, column: 11, scope: !1660)
!1675 = !DILocation(line: 791, column: 43, scope: !1660)
!1676 = !DILocation(line: 791, column: 53, scope: !1660)
!1677 = !DILocation(line: 791, column: 60, scope: !1660)
!1678 = !DILocation(line: 792, column: 43, scope: !1660)
!1679 = !DILocation(line: 792, column: 58, scope: !1660)
!1680 = !DILocation(line: 790, column: 14, scope: !1660)
!1681 = !DILocation(line: 793, column: 9, scope: !1660)
!1682 = !DILocation(line: 794, column: 3, scope: !1660)
!1683 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1684, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1688)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!69, !25, !69, !6, !69, !214, !18, !1686, !6, !6}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1713, !1714, !1715, !1716, !1717, !1720, !1721, !1727, !1730, !1731, !1738, !1741, !1742, !1743, !1744, !1745, !1746}
!1689 = !DILocalVariable(name: "buffer", arg: 1, scope: !1683, file: !212, line: 256, type: !25)
!1690 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1683, file: !212, line: 256, type: !69)
!1691 = !DILocalVariable(name: "arg", arg: 3, scope: !1683, file: !212, line: 257, type: !6)
!1692 = !DILocalVariable(name: "argsize", arg: 4, scope: !1683, file: !212, line: 257, type: !69)
!1693 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1683, file: !212, line: 258, type: !214)
!1694 = !DILocalVariable(name: "flags", arg: 6, scope: !1683, file: !212, line: 258, type: !18)
!1695 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1683, file: !212, line: 259, type: !1686)
!1696 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1683, file: !212, line: 260, type: !6)
!1697 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1683, file: !212, line: 261, type: !6)
!1698 = !DILocalVariable(name: "i", scope: !1683, file: !212, line: 263, type: !69)
!1699 = !DILocalVariable(name: "len", scope: !1683, file: !212, line: 264, type: !69)
!1700 = !DILocalVariable(name: "orig_buffersize", scope: !1683, file: !212, line: 265, type: !69)
!1701 = !DILocalVariable(name: "quote_string", scope: !1683, file: !212, line: 266, type: !6)
!1702 = !DILocalVariable(name: "quote_string_len", scope: !1683, file: !212, line: 267, type: !69)
!1703 = !DILocalVariable(name: "backslash_escapes", scope: !1683, file: !212, line: 268, type: !92)
!1704 = !DILocalVariable(name: "unibyte_locale", scope: !1683, file: !212, line: 269, type: !92)
!1705 = !DILocalVariable(name: "elide_outer_quotes", scope: !1683, file: !212, line: 270, type: !92)
!1706 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1683, file: !212, line: 271, type: !92)
!1707 = !DILocalVariable(name: "encountered_single_quote", scope: !1683, file: !212, line: 272, type: !92)
!1708 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1683, file: !212, line: 273, type: !92)
!1709 = !DILocalVariable(name: "c", scope: !1710, file: !212, line: 402, type: !1602)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !212, line: 401, column: 5)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !212, line: 400, column: 3)
!1712 = distinct !DILexicalBlock(scope: !1683, file: !212, line: 400, column: 3)
!1713 = !DILocalVariable(name: "esc", scope: !1710, file: !212, line: 403, type: !1602)
!1714 = !DILocalVariable(name: "is_right_quote", scope: !1710, file: !212, line: 404, type: !92)
!1715 = !DILocalVariable(name: "escaping", scope: !1710, file: !212, line: 405, type: !92)
!1716 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1710, file: !212, line: 406, type: !92)
!1717 = !DILocalVariable(name: "m", scope: !1718, file: !212, line: 610, type: !69)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 608, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1710, file: !212, line: 426, column: 9)
!1720 = !DILocalVariable(name: "printable", scope: !1718, file: !212, line: 612, type: !92)
!1721 = !DILocalVariable(name: "mbstate", scope: !1722, file: !212, line: 621, type: !1724)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !212, line: 620, column: 15)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !212, line: 614, column: 17)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1725, line: 6, baseType: !1726)
!1725 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1727 = !DILocalVariable(name: "w", scope: !1728, file: !212, line: 631, type: !1729)
!1728 = distinct !DILexicalBlock(scope: !1722, file: !212, line: 630, column: 19)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1730 = !DILocalVariable(name: "bytes", scope: !1728, file: !212, line: 632, type: !69)
!1731 = !DILocalVariable(name: "j", scope: !1732, file: !212, line: 657, type: !69)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !212, line: 656, column: 27)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !212, line: 654, column: 29)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !212, line: 649, column: 23)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !212, line: 641, column: 30)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !212, line: 636, column: 30)
!1737 = distinct !DILexicalBlock(scope: !1728, file: !212, line: 634, column: 25)
!1738 = !DILocalVariable(name: "ilim", scope: !1739, file: !212, line: 684, type: !69)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !212, line: 681, column: 15)
!1740 = distinct !DILexicalBlock(scope: !1718, file: !212, line: 680, column: 17)
!1741 = !DILabel(scope: !1683, name: "process_input", file: !212, line: 314)
!1742 = !DILabel(scope: !1719, name: "c_and_shell_escape", file: !212, line: 512)
!1743 = !DILabel(scope: !1719, name: "c_escape", file: !212, line: 517)
!1744 = !DILabel(scope: !1710, name: "store_escape", file: !212, line: 719)
!1745 = !DILabel(scope: !1710, name: "store_c", file: !212, line: 722)
!1746 = !DILabel(scope: !1683, name: "force_outer_quoting_style", file: !212, line: 763)
!1747 = !DILocation(line: 0, scope: !1683)
!1748 = !DILocation(line: 269, column: 25, scope: !1683)
!1749 = !DILocation(line: 269, column: 36, scope: !1683)
!1750 = !DILocation(line: 270, column: 8, scope: !1683)
!1751 = !DILocation(line: 0, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 526, column: 15)
!1753 = !DILocation(line: 0, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !212, line: 462, column: 19)
!1755 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 455, column: 13)
!1756 = !DILocation(line: 0, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !212, line: 449, column: 20)
!1758 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 428, column: 15)
!1759 = !DILocation(line: 0, scope: !1722)
!1760 = !DILocation(line: 0, scope: !1728)
!1761 = !DILocation(line: 0, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1710, file: !212, line: 712, column: 11)
!1763 = !DILocation(line: 273, column: 3, scope: !1683)
!1764 = !DILocation(line: 265, column: 10, scope: !1683)
!1765 = !DILocation(line: 266, column: 15, scope: !1683)
!1766 = !DILocation(line: 267, column: 10, scope: !1683)
!1767 = !DILocation(line: 268, column: 8, scope: !1683)
!1768 = !DILocation(line: 271, column: 8, scope: !1683)
!1769 = !DILocation(line: 272, column: 8, scope: !1683)
!1770 = !DILocation(line: 273, column: 8, scope: !1683)
!1771 = !DILocation(line: 314, column: 2, scope: !1683)
!1772 = !DILocation(line: 316, column: 3, scope: !1683)
!1773 = !DILocation(line: 323, column: 11, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1683, file: !212, line: 317, column: 5)
!1775 = !DILocation(line: 323, column: 12, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1774, file: !212, line: 323, column: 11)
!1777 = !DILocation(line: 324, column: 9, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !212, line: 324, column: 9)
!1779 = distinct !DILexicalBlock(scope: !1776, file: !212, line: 324, column: 9)
!1780 = !DILocation(line: 324, column: 9, scope: !1779)
!1781 = !DILocation(line: 362, column: 26, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !212, line: 340, column: 11)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !212, line: 339, column: 13)
!1784 = distinct !DILexicalBlock(scope: !1774, file: !212, line: 338, column: 7)
!1785 = !DILocation(line: 363, column: 27, scope: !1782)
!1786 = !DILocation(line: 364, column: 11, scope: !1782)
!1787 = !DILocation(line: 365, column: 14, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !212, line: 365, column: 13)
!1789 = !DILocation(line: 365, column: 13, scope: !1784)
!1790 = !DILocation(line: 366, column: 43, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !212, line: 366, column: 11)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !212, line: 366, column: 11)
!1793 = !DILocation(line: 366, column: 11, scope: !1792)
!1794 = !DILocation(line: 367, column: 13, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !212, line: 367, column: 13)
!1796 = distinct !DILexicalBlock(scope: !1791, file: !212, line: 367, column: 13)
!1797 = !DILocation(line: 367, column: 13, scope: !1796)
!1798 = !DILocation(line: 366, column: 70, scope: !1791)
!1799 = distinct !{!1799, !1793, !1800}
!1800 = !DILocation(line: 367, column: 13, scope: !1792)
!1801 = !DILocation(line: 264, column: 10, scope: !1683)
!1802 = !DILocation(line: 370, column: 28, scope: !1784)
!1803 = !DILocation(line: 372, column: 7, scope: !1774)
!1804 = !DILocation(line: 376, column: 7, scope: !1774)
!1805 = !DILocation(line: 379, column: 7, scope: !1774)
!1806 = !DILocation(line: 381, column: 12, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1774, file: !212, line: 381, column: 11)
!1808 = !DILocation(line: 381, column: 11, scope: !1774)
!1809 = !DILocation(line: 386, column: 12, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1774, file: !212, line: 386, column: 11)
!1811 = !DILocation(line: 386, column: 11, scope: !1774)
!1812 = !DILocation(line: 387, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !212, line: 387, column: 9)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !212, line: 387, column: 9)
!1815 = !DILocation(line: 387, column: 9, scope: !1814)
!1816 = !DILocation(line: 394, column: 7, scope: !1774)
!1817 = !DILocation(line: 397, column: 7, scope: !1774)
!1818 = !DILocation(line: 0, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1710, file: !212, line: 408, column: 11)
!1820 = !DILocation(line: 0, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !212, line: 419, column: 15)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !212, line: 418, column: 9)
!1823 = !DILocation(line: 0, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 556, column: 15)
!1825 = !DILocation(line: 0, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 548, column: 15)
!1827 = !DILocation(line: 0, scope: !1733)
!1828 = !DILocation(line: 0, scope: !1740)
!1829 = !DILocation(line: 0, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 509, column: 15)
!1831 = !DILocation(line: 400, column: 8, scope: !1712)
!1832 = !DILocation(line: 0, scope: !1712)
!1833 = !DILocation(line: 400, column: 27, scope: !1711)
!1834 = !DILocation(line: 400, column: 19, scope: !1711)
!1835 = !DILocation(line: 400, column: 41, scope: !1711)
!1836 = !DILocation(line: 400, column: 48, scope: !1711)
!1837 = !DILocation(line: 400, column: 3, scope: !1712)
!1838 = !DILocation(line: 400, column: 60, scope: !1711)
!1839 = !DILocation(line: 0, scope: !1710)
!1840 = !DILocation(line: 409, column: 11, scope: !1819)
!1841 = !DILocation(line: 411, column: 17, scope: !1819)
!1842 = !DILocation(line: 412, column: 39, scope: !1819)
!1843 = !DILocation(line: 416, column: 32, scope: !1819)
!1844 = !DILocation(line: 412, column: 19, scope: !1819)
!1845 = !DILocation(line: 412, column: 15, scope: !1819)
!1846 = !DILocation(line: 417, column: 11, scope: !1819)
!1847 = !DILocation(line: 417, column: 26, scope: !1819)
!1848 = !DILocation(line: 417, column: 14, scope: !1819)
!1849 = !DILocation(line: 417, column: 63, scope: !1819)
!1850 = !DILocation(line: 408, column: 11, scope: !1710)
!1851 = !DILocation(line: 424, column: 11, scope: !1710)
!1852 = !DILocation(line: 425, column: 7, scope: !1710)
!1853 = !DILocation(line: 428, column: 15, scope: !1719)
!1854 = !DILocation(line: 430, column: 15, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !212, line: 430, column: 15)
!1856 = distinct !DILexicalBlock(scope: !1758, file: !212, line: 429, column: 13)
!1857 = !DILocation(line: 430, column: 15, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !212, line: 430, column: 15)
!1859 = !DILocation(line: 430, column: 15, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !212, line: 430, column: 15)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !212, line: 430, column: 15)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !212, line: 430, column: 15)
!1863 = !DILocation(line: 430, column: 15, scope: !1861)
!1864 = !DILocation(line: 430, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !212, line: 430, column: 15)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !212, line: 430, column: 15)
!1867 = !DILocation(line: 430, column: 15, scope: !1866)
!1868 = !DILocation(line: 430, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !212, line: 430, column: 15)
!1870 = distinct !DILexicalBlock(scope: !1862, file: !212, line: 430, column: 15)
!1871 = !DILocation(line: 430, column: 15, scope: !1870)
!1872 = !DILocation(line: 430, column: 15, scope: !1862)
!1873 = !DILocation(line: 430, column: 15, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !212, line: 430, column: 15)
!1875 = distinct !DILexicalBlock(scope: !1855, file: !212, line: 430, column: 15)
!1876 = !DILocation(line: 430, column: 15, scope: !1875)
!1877 = !DILocation(line: 438, column: 19, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1856, file: !212, line: 437, column: 19)
!1879 = !DILocation(line: 438, column: 24, scope: !1878)
!1880 = !DILocation(line: 438, column: 28, scope: !1878)
!1881 = !DILocation(line: 438, column: 38, scope: !1878)
!1882 = !DILocation(line: 438, column: 48, scope: !1878)
!1883 = !DILocation(line: 438, column: 59, scope: !1878)
!1884 = !DILocation(line: 440, column: 19, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !212, line: 440, column: 19)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !212, line: 440, column: 19)
!1887 = distinct !DILexicalBlock(scope: !1878, file: !212, line: 439, column: 17)
!1888 = !DILocation(line: 440, column: 19, scope: !1886)
!1889 = !DILocation(line: 441, column: 19, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !212, line: 441, column: 19)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !212, line: 441, column: 19)
!1892 = !DILocation(line: 441, column: 19, scope: !1891)
!1893 = !DILocation(line: 442, column: 17, scope: !1887)
!1894 = !DILocation(line: 449, column: 20, scope: !1758)
!1895 = !DILocation(line: 454, column: 11, scope: !1719)
!1896 = !DILocation(line: 457, column: 19, scope: !1755)
!1897 = !DILocation(line: 463, column: 19, scope: !1754)
!1898 = !DILocation(line: 463, column: 24, scope: !1754)
!1899 = !DILocation(line: 463, column: 28, scope: !1754)
!1900 = !DILocation(line: 463, column: 38, scope: !1754)
!1901 = !DILocation(line: 463, column: 47, scope: !1754)
!1902 = !DILocation(line: 463, column: 41, scope: !1754)
!1903 = !DILocation(line: 463, column: 52, scope: !1754)
!1904 = !DILocation(line: 462, column: 19, scope: !1755)
!1905 = !DILocation(line: 464, column: 25, scope: !1754)
!1906 = !DILocation(line: 464, column: 17, scope: !1754)
!1907 = !DILocation(line: 471, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1754, file: !212, line: 465, column: 19)
!1909 = !DILocation(line: 475, column: 21, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !212, line: 475, column: 21)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !212, line: 475, column: 21)
!1912 = !DILocation(line: 475, column: 21, scope: !1911)
!1913 = !DILocation(line: 476, column: 21, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !212, line: 476, column: 21)
!1915 = distinct !DILexicalBlock(scope: !1908, file: !212, line: 476, column: 21)
!1916 = !DILocation(line: 476, column: 21, scope: !1915)
!1917 = !DILocation(line: 477, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !212, line: 477, column: 21)
!1919 = distinct !DILexicalBlock(scope: !1908, file: !212, line: 477, column: 21)
!1920 = !DILocation(line: 477, column: 21, scope: !1919)
!1921 = !DILocation(line: 478, column: 21, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !212, line: 478, column: 21)
!1923 = distinct !DILexicalBlock(scope: !1908, file: !212, line: 478, column: 21)
!1924 = !DILocation(line: 478, column: 21, scope: !1923)
!1925 = !DILocation(line: 479, column: 21, scope: !1908)
!1926 = !DILocation(line: 492, column: 31, scope: !1719)
!1927 = !DILocation(line: 493, column: 31, scope: !1719)
!1928 = !DILocation(line: 495, column: 31, scope: !1719)
!1929 = !DILocation(line: 496, column: 31, scope: !1719)
!1930 = !DILocation(line: 497, column: 31, scope: !1719)
!1931 = !DILocation(line: 500, column: 15, scope: !1719)
!1932 = !DILocation(line: 502, column: 19, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !212, line: 501, column: 13)
!1934 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 500, column: 15)
!1935 = !DILocation(line: 509, column: 33, scope: !1830)
!1936 = !DILocation(line: 0, scope: !1719)
!1937 = !DILocation(line: 512, column: 9, scope: !1719)
!1938 = !DILocation(line: 514, column: 15, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 513, column: 15)
!1940 = !DILocation(line: 517, column: 9, scope: !1719)
!1941 = !DILocation(line: 518, column: 15, scope: !1719)
!1942 = !DILocation(line: 526, column: 15, scope: !1719)
!1943 = !DILocation(line: 526, column: 40, scope: !1752)
!1944 = !DILocation(line: 526, column: 47, scope: !1752)
!1945 = !DILocation(line: 526, column: 18, scope: !1752)
!1946 = !DILocation(line: 530, column: 17, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1719, file: !212, line: 530, column: 15)
!1948 = !DILocation(line: 530, column: 15, scope: !1719)
!1949 = !DILocation(line: 535, column: 11, scope: !1719)
!1950 = !DILocation(line: 549, column: 15, scope: !1826)
!1951 = !DILocation(line: 556, column: 15, scope: !1719)
!1952 = !DILocation(line: 558, column: 19, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1824, file: !212, line: 557, column: 13)
!1954 = !DILocation(line: 561, column: 19, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1953, file: !212, line: 561, column: 19)
!1956 = !DILocation(line: 561, column: 35, scope: !1955)
!1957 = !DILocation(line: 561, column: 30, scope: !1955)
!1958 = !DILocation(line: 570, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !212, line: 570, column: 15)
!1960 = distinct !DILexicalBlock(scope: !1953, file: !212, line: 570, column: 15)
!1961 = !DILocation(line: 570, column: 15, scope: !1960)
!1962 = !DILocation(line: 571, column: 15, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !212, line: 571, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1953, file: !212, line: 571, column: 15)
!1965 = !DILocation(line: 571, column: 15, scope: !1964)
!1966 = !DILocation(line: 572, column: 15, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !212, line: 572, column: 15)
!1968 = distinct !DILexicalBlock(scope: !1953, file: !212, line: 572, column: 15)
!1969 = !DILocation(line: 572, column: 15, scope: !1968)
!1970 = !DILocation(line: 574, column: 13, scope: !1953)
!1971 = !DILocation(line: 614, column: 17, scope: !1718)
!1972 = !DILocation(line: 0, scope: !1718)
!1973 = !DILocation(line: 617, column: 29, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1723, file: !212, line: 615, column: 15)
!1975 = !{!1976, !1976, i64 0}
!1976 = !{!"short", !1226, i64 0}
!1977 = !DILocation(line: 617, column: 27, scope: !1974)
!1978 = !DILocation(line: 618, column: 15, scope: !1974)
!1979 = !DILocation(line: 621, column: 17, scope: !1722)
!1980 = !DILocation(line: 621, column: 27, scope: !1722)
!1981 = !DILocalVariable(name: "__dest", arg: 1, scope: !1982, file: !1983, line: 59, type: !67)
!1982 = distinct !DISubprogram(name: "memset", scope: !1983, file: !1983, line: 59, type: !1984, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1986)
!1983 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!67, !67, !18, !69}
!1986 = !{!1981, !1987, !1988}
!1987 = !DILocalVariable(name: "__ch", arg: 2, scope: !1982, file: !1983, line: 59, type: !18)
!1988 = !DILocalVariable(name: "__len", arg: 3, scope: !1982, file: !1983, line: 59, type: !69)
!1989 = !DILocation(line: 0, scope: !1982, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 622, column: 17, scope: !1722)
!1991 = !DILocation(line: 71, column: 10, scope: !1982, inlinedAt: !1990)
!1992 = !DILocation(line: 626, column: 29, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1722, file: !212, line: 626, column: 21)
!1994 = !DILocation(line: 626, column: 21, scope: !1722)
!1995 = !DILocation(line: 627, column: 29, scope: !1993)
!1996 = !DILocation(line: 627, column: 19, scope: !1993)
!1997 = !DILocation(line: 629, column: 17, scope: !1722)
!1998 = !DILocation(line: 624, column: 19, scope: !1722)
!1999 = !DILocation(line: 625, column: 27, scope: !1722)
!2000 = !DILocation(line: 631, column: 21, scope: !1728)
!2001 = !DILocation(line: 632, column: 56, scope: !1728)
!2002 = !DILocation(line: 632, column: 50, scope: !1728)
!2003 = !DILocation(line: 633, column: 53, scope: !1728)
!2004 = !DILocation(line: 632, column: 36, scope: !1728)
!2005 = !DILocation(line: 634, column: 25, scope: !1728)
!2006 = !DILocation(line: 644, column: 38, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1735, file: !212, line: 642, column: 23)
!2008 = !DILocation(line: 644, column: 48, scope: !2007)
!2009 = !DILocation(line: 644, column: 25, scope: !2007)
!2010 = !DILocation(line: 644, column: 51, scope: !2007)
!2011 = !DILocation(line: 645, column: 28, scope: !2007)
!2012 = !DILocation(line: 644, column: 34, scope: !2007)
!2013 = distinct !{!2013, !2009, !2011}
!2014 = !DILocation(line: 658, column: 43, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !212, line: 658, column: 29)
!2016 = distinct !DILexicalBlock(scope: !1732, file: !212, line: 658, column: 29)
!2017 = !DILocation(line: 655, column: 29, scope: !1733)
!2018 = !DILocation(line: 0, scope: !1732)
!2019 = !DILocation(line: 659, column: 49, scope: !2015)
!2020 = !DILocation(line: 659, column: 39, scope: !2015)
!2021 = !DILocation(line: 659, column: 31, scope: !2015)
!2022 = !DILocation(line: 658, column: 53, scope: !2015)
!2023 = !DILocation(line: 658, column: 29, scope: !2016)
!2024 = distinct !{!2024, !2023, !2025}
!2025 = !DILocation(line: 667, column: 33, scope: !2016)
!2026 = !DILocation(line: 674, column: 19, scope: !1722)
!2027 = !DILocation(line: 670, column: 41, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1734, file: !212, line: 670, column: 29)
!2029 = !DILocation(line: 670, column: 31, scope: !2028)
!2030 = !DILocation(line: 670, column: 29, scope: !1734)
!2031 = !DILocation(line: 672, column: 27, scope: !1734)
!2032 = !DILocation(line: 675, column: 26, scope: !1722)
!2033 = !DILocation(line: 675, column: 24, scope: !1722)
!2034 = !DILocation(line: 674, column: 19, scope: !1728)
!2035 = distinct !{!2035, !1997, !2036}
!2036 = !DILocation(line: 675, column: 44, scope: !1722)
!2037 = !DILocation(line: 676, column: 15, scope: !1723)
!2038 = !DILocation(line: 0, scope: !1723)
!2039 = !DILocation(line: 678, column: 40, scope: !1718)
!2040 = !DILocation(line: 680, column: 19, scope: !1740)
!2041 = !DILocation(line: 680, column: 45, scope: !1740)
!2042 = !DILocation(line: 680, column: 23, scope: !1740)
!2043 = !DILocation(line: 684, column: 33, scope: !1739)
!2044 = !DILocation(line: 0, scope: !1739)
!2045 = !DILocation(line: 686, column: 17, scope: !1739)
!2046 = !DILocation(line: 405, column: 12, scope: !1710)
!2047 = !DILocation(line: 688, column: 43, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !212, line: 688, column: 25)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !212, line: 687, column: 19)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !212, line: 686, column: 17)
!2051 = distinct !DILexicalBlock(scope: !1739, file: !212, line: 686, column: 17)
!2052 = !DILocation(line: 690, column: 25, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !212, line: 690, column: 25)
!2054 = distinct !DILexicalBlock(scope: !2048, file: !212, line: 689, column: 23)
!2055 = !DILocation(line: 690, column: 25, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !212, line: 690, column: 25)
!2057 = !DILocation(line: 690, column: 25, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !212, line: 690, column: 25)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !212, line: 690, column: 25)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !212, line: 690, column: 25)
!2061 = !DILocation(line: 690, column: 25, scope: !2059)
!2062 = !DILocation(line: 690, column: 25, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !212, line: 690, column: 25)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !212, line: 690, column: 25)
!2065 = !DILocation(line: 690, column: 25, scope: !2064)
!2066 = !DILocation(line: 690, column: 25, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !212, line: 690, column: 25)
!2068 = distinct !DILexicalBlock(scope: !2060, file: !212, line: 690, column: 25)
!2069 = !DILocation(line: 690, column: 25, scope: !2068)
!2070 = !DILocation(line: 690, column: 25, scope: !2060)
!2071 = !DILocation(line: 690, column: 25, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !212, line: 690, column: 25)
!2073 = distinct !DILexicalBlock(scope: !2053, file: !212, line: 690, column: 25)
!2074 = !DILocation(line: 690, column: 25, scope: !2073)
!2075 = !DILocation(line: 691, column: 25, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !212, line: 691, column: 25)
!2077 = distinct !DILexicalBlock(scope: !2054, file: !212, line: 691, column: 25)
!2078 = !DILocation(line: 691, column: 25, scope: !2077)
!2079 = !DILocation(line: 692, column: 25, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !212, line: 692, column: 25)
!2081 = distinct !DILexicalBlock(scope: !2054, file: !212, line: 692, column: 25)
!2082 = !DILocation(line: 692, column: 25, scope: !2081)
!2083 = !DILocation(line: 693, column: 38, scope: !2054)
!2084 = !DILocation(line: 693, column: 33, scope: !2054)
!2085 = !DILocation(line: 694, column: 23, scope: !2054)
!2086 = !DILocation(line: 695, column: 30, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2048, file: !212, line: 695, column: 30)
!2088 = !DILocation(line: 695, column: 30, scope: !2048)
!2089 = !DILocation(line: 697, column: 25, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !212, line: 697, column: 25)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !212, line: 697, column: 25)
!2092 = distinct !DILexicalBlock(scope: !2087, file: !212, line: 696, column: 23)
!2093 = !DILocation(line: 697, column: 25, scope: !2091)
!2094 = !DILocation(line: 699, column: 23, scope: !2092)
!2095 = !DILocation(line: 700, column: 35, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2049, file: !212, line: 700, column: 25)
!2097 = !DILocation(line: 700, column: 30, scope: !2096)
!2098 = !DILocation(line: 700, column: 25, scope: !2049)
!2099 = !DILocation(line: 702, column: 21, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !212, line: 702, column: 21)
!2101 = distinct !DILexicalBlock(scope: !2049, file: !212, line: 702, column: 21)
!2102 = !DILocation(line: 702, column: 21, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !212, line: 702, column: 21)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !212, line: 702, column: 21)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !212, line: 702, column: 21)
!2106 = !DILocation(line: 702, column: 21, scope: !2104)
!2107 = !DILocation(line: 702, column: 21, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !212, line: 702, column: 21)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !212, line: 702, column: 21)
!2110 = !DILocation(line: 702, column: 21, scope: !2109)
!2111 = !DILocation(line: 702, column: 21, scope: !2105)
!2112 = !DILocation(line: 0, scope: !2049)
!2113 = !DILocation(line: 703, column: 21, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !212, line: 703, column: 21)
!2115 = distinct !DILexicalBlock(scope: !2049, file: !212, line: 703, column: 21)
!2116 = !DILocation(line: 703, column: 21, scope: !2115)
!2117 = !DILocation(line: 704, column: 25, scope: !2049)
!2118 = !DILocation(line: 686, column: 17, scope: !2050)
!2119 = distinct !{!2119, !2120, !2121}
!2120 = !DILocation(line: 686, column: 17, scope: !2051)
!2121 = !DILocation(line: 705, column: 19, scope: !2051)
!2122 = !DILocation(line: 416, column: 30, scope: !1819)
!2123 = !DILocation(line: 712, column: 34, scope: !1762)
!2124 = !DILocation(line: 715, column: 35, scope: !1762)
!2125 = !DILocation(line: 715, column: 17, scope: !1762)
!2126 = !DILocation(line: 715, column: 47, scope: !1762)
!2127 = !DILocation(line: 715, column: 65, scope: !1762)
!2128 = !DILocation(line: 716, column: 15, scope: !1762)
!2129 = !DILocation(line: 716, column: 11, scope: !1762)
!2130 = !DILocation(line: 712, column: 11, scope: !1710)
!2131 = !DILocation(line: 400, column: 10, scope: !1712)
!2132 = !DILocation(line: 719, column: 5, scope: !1710)
!2133 = !DILocation(line: 720, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1710, file: !212, line: 720, column: 7)
!2135 = !DILocation(line: 720, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2134, file: !212, line: 720, column: 7)
!2137 = !DILocation(line: 720, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !212, line: 720, column: 7)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !212, line: 720, column: 7)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !212, line: 720, column: 7)
!2141 = !DILocation(line: 720, column: 7, scope: !2139)
!2142 = !DILocation(line: 720, column: 7, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !212, line: 720, column: 7)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !212, line: 720, column: 7)
!2145 = !DILocation(line: 720, column: 7, scope: !2144)
!2146 = !DILocation(line: 720, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !212, line: 720, column: 7)
!2148 = distinct !DILexicalBlock(scope: !2140, file: !212, line: 720, column: 7)
!2149 = !DILocation(line: 720, column: 7, scope: !2148)
!2150 = !DILocation(line: 720, column: 7, scope: !2140)
!2151 = !DILocation(line: 720, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !212, line: 720, column: 7)
!2153 = distinct !DILexicalBlock(scope: !2134, file: !212, line: 720, column: 7)
!2154 = !DILocation(line: 720, column: 7, scope: !2153)
!2155 = !DILocation(line: 722, column: 5, scope: !1710)
!2156 = !DILocation(line: 723, column: 7, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !212, line: 723, column: 7)
!2158 = distinct !DILexicalBlock(scope: !1710, file: !212, line: 723, column: 7)
!2159 = !DILocation(line: 424, column: 9, scope: !1710)
!2160 = !DILocation(line: 723, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !212, line: 723, column: 7)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !212, line: 723, column: 7)
!2163 = distinct !DILexicalBlock(scope: !2157, file: !212, line: 723, column: 7)
!2164 = !DILocation(line: 723, column: 7, scope: !2162)
!2165 = !DILocation(line: 723, column: 7, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !212, line: 723, column: 7)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !212, line: 723, column: 7)
!2168 = !DILocation(line: 723, column: 7, scope: !2167)
!2169 = !DILocation(line: 723, column: 7, scope: !2163)
!2170 = !DILocation(line: 724, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !212, line: 724, column: 7)
!2172 = distinct !DILexicalBlock(scope: !1710, file: !212, line: 724, column: 7)
!2173 = !DILocation(line: 724, column: 7, scope: !2172)
!2174 = !DILocation(line: 726, column: 13, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1710, file: !212, line: 726, column: 11)
!2176 = !DILocation(line: 726, column: 11, scope: !1710)
!2177 = !DILocation(line: 728, column: 5, scope: !1711)
!2178 = !DILocation(line: 400, column: 75, scope: !1711)
!2179 = !DILocation(line: 400, column: 3, scope: !1711)
!2180 = distinct !{!2180, !1837, !2181}
!2181 = !DILocation(line: 728, column: 5, scope: !1712)
!2182 = !DILocation(line: 730, column: 11, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1683, file: !212, line: 730, column: 7)
!2184 = !DILocation(line: 730, column: 16, scope: !2183)
!2185 = !DILocation(line: 738, column: 51, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1683, file: !212, line: 738, column: 7)
!2187 = !DILocation(line: 739, column: 10, scope: !2186)
!2188 = !DILocation(line: 741, column: 11, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !212, line: 741, column: 11)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !212, line: 740, column: 5)
!2191 = !DILocation(line: 741, column: 11, scope: !2190)
!2192 = !DILocation(line: 742, column: 16, scope: !2189)
!2193 = !DILocation(line: 742, column: 9, scope: !2189)
!2194 = !DILocation(line: 746, column: 18, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2189, file: !212, line: 746, column: 16)
!2196 = !DILocation(line: 746, column: 32, scope: !2195)
!2197 = !DILocation(line: 746, column: 29, scope: !2195)
!2198 = !DILocation(line: 755, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1683, file: !212, line: 755, column: 7)
!2200 = !DILocation(line: 755, column: 20, scope: !2199)
!2201 = !DILocation(line: 756, column: 12, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !212, line: 756, column: 5)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !212, line: 756, column: 5)
!2204 = !DILocation(line: 756, column: 5, scope: !2203)
!2205 = !DILocation(line: 757, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !212, line: 757, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !212, line: 757, column: 7)
!2208 = !DILocation(line: 757, column: 7, scope: !2207)
!2209 = !DILocation(line: 756, column: 39, scope: !2202)
!2210 = distinct !{!2210, !2204, !2211}
!2211 = !DILocation(line: 757, column: 7, scope: !2203)
!2212 = !DILocation(line: 759, column: 11, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !1683, file: !212, line: 759, column: 7)
!2214 = !DILocation(line: 759, column: 7, scope: !1683)
!2215 = !DILocation(line: 760, column: 5, scope: !2213)
!2216 = !DILocation(line: 760, column: 17, scope: !2213)
!2217 = !DILocation(line: 763, column: 2, scope: !1683)
!2218 = !DILocation(line: 766, column: 51, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !1683, file: !212, line: 766, column: 7)
!2220 = !DILocation(line: 766, column: 21, scope: !2219)
!2221 = !DILocation(line: 770, column: 42, scope: !1683)
!2222 = !DILocation(line: 768, column: 10, scope: !1683)
!2223 = !DILocation(line: 768, column: 3, scope: !1683)
!2224 = !DILocation(line: 772, column: 1, scope: !1683)
!2225 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2226, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!6, !6, !214}
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DILocalVariable(name: "msgid", arg: 1, scope: !2225, file: !212, line: 207, type: !6)
!2230 = !DILocalVariable(name: "s", arg: 2, scope: !2225, file: !212, line: 207, type: !214)
!2231 = !DILocalVariable(name: "translation", scope: !2225, file: !212, line: 209, type: !6)
!2232 = !DILocalVariable(name: "locale_code", scope: !2225, file: !212, line: 210, type: !6)
!2233 = !DILocation(line: 0, scope: !2225)
!2234 = !DILocation(line: 209, column: 29, scope: !2225)
!2235 = !DILocation(line: 212, column: 19, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !212, line: 212, column: 7)
!2237 = !DILocation(line: 212, column: 7, scope: !2225)
!2238 = !DILocation(line: 233, column: 17, scope: !2225)
!2239 = !DILocalVariable(name: "s1", arg: 1, scope: !2240, file: !2241, line: 160, type: !6)
!2240 = distinct !DISubprogram(name: "strcaseeq0", scope: !2241, file: !2241, line: 160, type: !2242, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2244)
!2241 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2244 = !{!2239, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254}
!2245 = !DILocalVariable(name: "s2", arg: 2, scope: !2240, file: !2241, line: 160, type: !6)
!2246 = !DILocalVariable(name: "s20", arg: 3, scope: !2240, file: !2241, line: 160, type: !8)
!2247 = !DILocalVariable(name: "s21", arg: 4, scope: !2240, file: !2241, line: 160, type: !8)
!2248 = !DILocalVariable(name: "s22", arg: 5, scope: !2240, file: !2241, line: 160, type: !8)
!2249 = !DILocalVariable(name: "s23", arg: 6, scope: !2240, file: !2241, line: 160, type: !8)
!2250 = !DILocalVariable(name: "s24", arg: 7, scope: !2240, file: !2241, line: 160, type: !8)
!2251 = !DILocalVariable(name: "s25", arg: 8, scope: !2240, file: !2241, line: 160, type: !8)
!2252 = !DILocalVariable(name: "s26", arg: 9, scope: !2240, file: !2241, line: 160, type: !8)
!2253 = !DILocalVariable(name: "s27", arg: 10, scope: !2240, file: !2241, line: 160, type: !8)
!2254 = !DILocalVariable(name: "s28", arg: 11, scope: !2240, file: !2241, line: 160, type: !8)
!2255 = !DILocation(line: 0, scope: !2240, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 234, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2225, file: !212, line: 234, column: 7)
!2258 = !DILocation(line: 162, column: 7, scope: !2259, inlinedAt: !2256)
!2259 = distinct !DILexicalBlock(scope: !2240, file: !2241, line: 162, column: 7)
!2260 = !DILocalVariable(name: "s1", arg: 1, scope: !2261, file: !2241, line: 146, type: !6)
!2261 = distinct !DISubprogram(name: "strcaseeq1", scope: !2241, file: !2241, line: 146, type: !2262, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2264 = !{!2260, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2265 = !DILocalVariable(name: "s2", arg: 2, scope: !2261, file: !2241, line: 146, type: !6)
!2266 = !DILocalVariable(name: "s21", arg: 3, scope: !2261, file: !2241, line: 146, type: !8)
!2267 = !DILocalVariable(name: "s22", arg: 4, scope: !2261, file: !2241, line: 146, type: !8)
!2268 = !DILocalVariable(name: "s23", arg: 5, scope: !2261, file: !2241, line: 146, type: !8)
!2269 = !DILocalVariable(name: "s24", arg: 6, scope: !2261, file: !2241, line: 146, type: !8)
!2270 = !DILocalVariable(name: "s25", arg: 7, scope: !2261, file: !2241, line: 146, type: !8)
!2271 = !DILocalVariable(name: "s26", arg: 8, scope: !2261, file: !2241, line: 146, type: !8)
!2272 = !DILocalVariable(name: "s27", arg: 9, scope: !2261, file: !2241, line: 146, type: !8)
!2273 = !DILocalVariable(name: "s28", arg: 10, scope: !2261, file: !2241, line: 146, type: !8)
!2274 = !DILocation(line: 0, scope: !2261, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 167, column: 16, scope: !2276, inlinedAt: !2256)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !2241, line: 164, column: 11)
!2277 = distinct !DILexicalBlock(scope: !2259, file: !2241, line: 163, column: 5)
!2278 = !DILocation(line: 148, column: 7, scope: !2279, inlinedAt: !2275)
!2279 = distinct !DILexicalBlock(scope: !2261, file: !2241, line: 148, column: 7)
!2280 = !DILocalVariable(name: "s1", arg: 1, scope: !2281, file: !2241, line: 132, type: !6)
!2281 = distinct !DISubprogram(name: "strcaseeq2", scope: !2241, file: !2241, line: 132, type: !2282, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2284 = !{!2280, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292}
!2285 = !DILocalVariable(name: "s2", arg: 2, scope: !2281, file: !2241, line: 132, type: !6)
!2286 = !DILocalVariable(name: "s22", arg: 3, scope: !2281, file: !2241, line: 132, type: !8)
!2287 = !DILocalVariable(name: "s23", arg: 4, scope: !2281, file: !2241, line: 132, type: !8)
!2288 = !DILocalVariable(name: "s24", arg: 5, scope: !2281, file: !2241, line: 132, type: !8)
!2289 = !DILocalVariable(name: "s25", arg: 6, scope: !2281, file: !2241, line: 132, type: !8)
!2290 = !DILocalVariable(name: "s26", arg: 7, scope: !2281, file: !2241, line: 132, type: !8)
!2291 = !DILocalVariable(name: "s27", arg: 8, scope: !2281, file: !2241, line: 132, type: !8)
!2292 = !DILocalVariable(name: "s28", arg: 9, scope: !2281, file: !2241, line: 132, type: !8)
!2293 = !DILocation(line: 0, scope: !2281, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 153, column: 16, scope: !2295, inlinedAt: !2275)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !2241, line: 150, column: 11)
!2296 = distinct !DILexicalBlock(scope: !2279, file: !2241, line: 149, column: 5)
!2297 = !DILocation(line: 134, column: 7, scope: !2298, inlinedAt: !2294)
!2298 = distinct !DILexicalBlock(scope: !2281, file: !2241, line: 134, column: 7)
!2299 = !DILocalVariable(name: "s1", arg: 1, scope: !2300, file: !2241, line: 118, type: !6)
!2300 = distinct !DISubprogram(name: "strcaseeq3", scope: !2241, file: !2241, line: 118, type: !2301, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2303 = !{!2299, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2304 = !DILocalVariable(name: "s2", arg: 2, scope: !2300, file: !2241, line: 118, type: !6)
!2305 = !DILocalVariable(name: "s23", arg: 3, scope: !2300, file: !2241, line: 118, type: !8)
!2306 = !DILocalVariable(name: "s24", arg: 4, scope: !2300, file: !2241, line: 118, type: !8)
!2307 = !DILocalVariable(name: "s25", arg: 5, scope: !2300, file: !2241, line: 118, type: !8)
!2308 = !DILocalVariable(name: "s26", arg: 6, scope: !2300, file: !2241, line: 118, type: !8)
!2309 = !DILocalVariable(name: "s27", arg: 7, scope: !2300, file: !2241, line: 118, type: !8)
!2310 = !DILocalVariable(name: "s28", arg: 8, scope: !2300, file: !2241, line: 118, type: !8)
!2311 = !DILocation(line: 0, scope: !2300, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 139, column: 16, scope: !2313, inlinedAt: !2294)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !2241, line: 136, column: 11)
!2314 = distinct !DILexicalBlock(scope: !2298, file: !2241, line: 135, column: 5)
!2315 = !DILocation(line: 120, column: 7, scope: !2316, inlinedAt: !2312)
!2316 = distinct !DILexicalBlock(scope: !2300, file: !2241, line: 120, column: 7)
!2317 = !DILocation(line: 120, column: 7, scope: !2300, inlinedAt: !2312)
!2318 = !DILocalVariable(name: "s1", arg: 1, scope: !2319, file: !2241, line: 104, type: !6)
!2319 = distinct !DISubprogram(name: "strcaseeq4", scope: !2241, file: !2241, line: 104, type: !2320, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2322 = !{!2318, !2323, !2324, !2325, !2326, !2327, !2328}
!2323 = !DILocalVariable(name: "s2", arg: 2, scope: !2319, file: !2241, line: 104, type: !6)
!2324 = !DILocalVariable(name: "s24", arg: 3, scope: !2319, file: !2241, line: 104, type: !8)
!2325 = !DILocalVariable(name: "s25", arg: 4, scope: !2319, file: !2241, line: 104, type: !8)
!2326 = !DILocalVariable(name: "s26", arg: 5, scope: !2319, file: !2241, line: 104, type: !8)
!2327 = !DILocalVariable(name: "s27", arg: 6, scope: !2319, file: !2241, line: 104, type: !8)
!2328 = !DILocalVariable(name: "s28", arg: 7, scope: !2319, file: !2241, line: 104, type: !8)
!2329 = !DILocation(line: 0, scope: !2319, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 125, column: 16, scope: !2331, inlinedAt: !2312)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !2241, line: 122, column: 11)
!2332 = distinct !DILexicalBlock(scope: !2316, file: !2241, line: 121, column: 5)
!2333 = !DILocation(line: 106, column: 7, scope: !2334, inlinedAt: !2330)
!2334 = distinct !DILexicalBlock(scope: !2319, file: !2241, line: 106, column: 7)
!2335 = !DILocation(line: 106, column: 7, scope: !2319, inlinedAt: !2330)
!2336 = !DILocalVariable(name: "s1", arg: 1, scope: !2337, file: !2241, line: 90, type: !6)
!2337 = distinct !DISubprogram(name: "strcaseeq5", scope: !2241, file: !2241, line: 90, type: !2338, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!18, !6, !6, !8, !8, !8, !8}
!2340 = !{!2336, !2341, !2342, !2343, !2344, !2345}
!2341 = !DILocalVariable(name: "s2", arg: 2, scope: !2337, file: !2241, line: 90, type: !6)
!2342 = !DILocalVariable(name: "s25", arg: 3, scope: !2337, file: !2241, line: 90, type: !8)
!2343 = !DILocalVariable(name: "s26", arg: 4, scope: !2337, file: !2241, line: 90, type: !8)
!2344 = !DILocalVariable(name: "s27", arg: 5, scope: !2337, file: !2241, line: 90, type: !8)
!2345 = !DILocalVariable(name: "s28", arg: 6, scope: !2337, file: !2241, line: 90, type: !8)
!2346 = !DILocation(line: 0, scope: !2337, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 111, column: 16, scope: !2348, inlinedAt: !2330)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !2241, line: 108, column: 11)
!2349 = distinct !DILexicalBlock(scope: !2334, file: !2241, line: 107, column: 5)
!2350 = !DILocation(line: 92, column: 7, scope: !2351, inlinedAt: !2347)
!2351 = distinct !DILexicalBlock(scope: !2337, file: !2241, line: 92, column: 7)
!2352 = !DILocation(line: 92, column: 7, scope: !2337, inlinedAt: !2347)
!2353 = !DILocation(line: 235, column: 12, scope: !2257)
!2354 = !DILocation(line: 235, column: 21, scope: !2257)
!2355 = !DILocation(line: 235, column: 5, scope: !2257)
!2356 = !DILocation(line: 0, scope: !2261, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 167, column: 16, scope: !2276, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 236, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2225, file: !212, line: 236, column: 7)
!2360 = !DILocation(line: 148, column: 7, scope: !2279, inlinedAt: !2357)
!2361 = !DILocation(line: 0, scope: !2281, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 153, column: 16, scope: !2295, inlinedAt: !2357)
!2363 = !DILocation(line: 134, column: 7, scope: !2298, inlinedAt: !2362)
!2364 = !DILocation(line: 134, column: 7, scope: !2281, inlinedAt: !2362)
!2365 = !DILocation(line: 0, scope: !2300, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 139, column: 16, scope: !2313, inlinedAt: !2362)
!2367 = !DILocation(line: 120, column: 7, scope: !2316, inlinedAt: !2366)
!2368 = !DILocation(line: 120, column: 7, scope: !2300, inlinedAt: !2366)
!2369 = !DILocation(line: 0, scope: !2319, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 125, column: 16, scope: !2331, inlinedAt: !2366)
!2371 = !DILocation(line: 106, column: 7, scope: !2334, inlinedAt: !2370)
!2372 = !DILocation(line: 106, column: 7, scope: !2319, inlinedAt: !2370)
!2373 = !DILocation(line: 0, scope: !2337, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 111, column: 16, scope: !2348, inlinedAt: !2370)
!2375 = !DILocation(line: 92, column: 7, scope: !2351, inlinedAt: !2374)
!2376 = !DILocation(line: 92, column: 7, scope: !2337, inlinedAt: !2374)
!2377 = !DILocalVariable(name: "s1", arg: 1, scope: !2378, file: !2241, line: 76, type: !6)
!2378 = distinct !DISubprogram(name: "strcaseeq6", scope: !2241, file: !2241, line: 76, type: !2379, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!18, !6, !6, !8, !8, !8}
!2381 = !{!2377, !2382, !2383, !2384, !2385}
!2382 = !DILocalVariable(name: "s2", arg: 2, scope: !2378, file: !2241, line: 76, type: !6)
!2383 = !DILocalVariable(name: "s26", arg: 3, scope: !2378, file: !2241, line: 76, type: !8)
!2384 = !DILocalVariable(name: "s27", arg: 4, scope: !2378, file: !2241, line: 76, type: !8)
!2385 = !DILocalVariable(name: "s28", arg: 5, scope: !2378, file: !2241, line: 76, type: !8)
!2386 = !DILocation(line: 0, scope: !2378, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 97, column: 16, scope: !2388, inlinedAt: !2374)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !2241, line: 94, column: 11)
!2389 = distinct !DILexicalBlock(scope: !2351, file: !2241, line: 93, column: 5)
!2390 = !DILocation(line: 78, column: 7, scope: !2391, inlinedAt: !2387)
!2391 = distinct !DILexicalBlock(scope: !2378, file: !2241, line: 78, column: 7)
!2392 = !DILocation(line: 78, column: 7, scope: !2378, inlinedAt: !2387)
!2393 = !DILocalVariable(name: "s1", arg: 1, scope: !2394, file: !2241, line: 62, type: !6)
!2394 = distinct !DISubprogram(name: "strcaseeq7", scope: !2241, file: !2241, line: 62, type: !2395, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!18, !6, !6, !8, !8}
!2397 = !{!2393, !2398, !2399, !2400}
!2398 = !DILocalVariable(name: "s2", arg: 2, scope: !2394, file: !2241, line: 62, type: !6)
!2399 = !DILocalVariable(name: "s27", arg: 3, scope: !2394, file: !2241, line: 62, type: !8)
!2400 = !DILocalVariable(name: "s28", arg: 4, scope: !2394, file: !2241, line: 62, type: !8)
!2401 = !DILocation(line: 0, scope: !2394, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 83, column: 16, scope: !2403, inlinedAt: !2387)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !2241, line: 80, column: 11)
!2404 = distinct !DILexicalBlock(scope: !2391, file: !2241, line: 79, column: 5)
!2405 = !DILocation(line: 64, column: 7, scope: !2406, inlinedAt: !2402)
!2406 = distinct !DILexicalBlock(scope: !2394, file: !2241, line: 64, column: 7)
!2407 = !DILocation(line: 236, column: 7, scope: !2225)
!2408 = !DILocation(line: 237, column: 12, scope: !2359)
!2409 = !DILocation(line: 237, column: 21, scope: !2359)
!2410 = !DILocation(line: 237, column: 5, scope: !2359)
!2411 = !DILocation(line: 239, column: 13, scope: !2225)
!2412 = !DILocation(line: 239, column: 11, scope: !2225)
!2413 = !DILocation(line: 239, column: 3, scope: !2225)
!2414 = !DILocation(line: 240, column: 1, scope: !2225)
!2415 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2416, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!25, !6, !69, !258}
!2418 = !{!2419, !2420, !2421}
!2419 = !DILocalVariable(name: "arg", arg: 1, scope: !2415, file: !212, line: 799, type: !6)
!2420 = !DILocalVariable(name: "argsize", arg: 2, scope: !2415, file: !212, line: 799, type: !69)
!2421 = !DILocalVariable(name: "o", arg: 3, scope: !2415, file: !212, line: 800, type: !258)
!2422 = !DILocation(line: 0, scope: !2415)
!2423 = !DILocalVariable(name: "arg", arg: 1, scope: !2424, file: !212, line: 812, type: !6)
!2424 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2425, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!25, !6, !69, !529, !258}
!2427 = !{!2423, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435}
!2428 = !DILocalVariable(name: "argsize", arg: 2, scope: !2424, file: !212, line: 812, type: !69)
!2429 = !DILocalVariable(name: "size", arg: 3, scope: !2424, file: !212, line: 812, type: !529)
!2430 = !DILocalVariable(name: "o", arg: 4, scope: !2424, file: !212, line: 813, type: !258)
!2431 = !DILocalVariable(name: "p", scope: !2424, file: !212, line: 815, type: !258)
!2432 = !DILocalVariable(name: "e", scope: !2424, file: !212, line: 816, type: !18)
!2433 = !DILocalVariable(name: "flags", scope: !2424, file: !212, line: 818, type: !18)
!2434 = !DILocalVariable(name: "bufsize", scope: !2424, file: !212, line: 819, type: !69)
!2435 = !DILocalVariable(name: "buf", scope: !2424, file: !212, line: 823, type: !25)
!2436 = !DILocation(line: 0, scope: !2424, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 802, column: 10, scope: !2415)
!2438 = !DILocation(line: 815, column: 37, scope: !2424, inlinedAt: !2437)
!2439 = !DILocation(line: 816, column: 11, scope: !2424, inlinedAt: !2437)
!2440 = !DILocation(line: 818, column: 18, scope: !2424, inlinedAt: !2437)
!2441 = !DILocation(line: 818, column: 24, scope: !2424, inlinedAt: !2437)
!2442 = !DILocation(line: 819, column: 69, scope: !2424, inlinedAt: !2437)
!2443 = !DILocation(line: 820, column: 53, scope: !2424, inlinedAt: !2437)
!2444 = !DILocation(line: 821, column: 49, scope: !2424, inlinedAt: !2437)
!2445 = !DILocation(line: 822, column: 49, scope: !2424, inlinedAt: !2437)
!2446 = !DILocation(line: 819, column: 20, scope: !2424, inlinedAt: !2437)
!2447 = !DILocation(line: 822, column: 62, scope: !2424, inlinedAt: !2437)
!2448 = !DILocalVariable(name: "n", arg: 1, scope: !2449, file: !249, line: 216, type: !69)
!2449 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2450, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!25, !69}
!2452 = !{!2448}
!2453 = !DILocation(line: 0, scope: !2449, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 823, column: 15, scope: !2424, inlinedAt: !2437)
!2455 = !DILocation(line: 218, column: 10, scope: !2449, inlinedAt: !2454)
!2456 = !DILocation(line: 824, column: 60, scope: !2424, inlinedAt: !2437)
!2457 = !DILocation(line: 826, column: 32, scope: !2424, inlinedAt: !2437)
!2458 = !DILocation(line: 826, column: 47, scope: !2424, inlinedAt: !2437)
!2459 = !DILocation(line: 824, column: 3, scope: !2424, inlinedAt: !2437)
!2460 = !DILocation(line: 827, column: 9, scope: !2424, inlinedAt: !2437)
!2461 = !DILocation(line: 802, column: 3, scope: !2415)
!2462 = !DILocation(line: 0, scope: !2424)
!2463 = !DILocation(line: 815, column: 37, scope: !2424)
!2464 = !DILocation(line: 816, column: 11, scope: !2424)
!2465 = !DILocation(line: 818, column: 18, scope: !2424)
!2466 = !DILocation(line: 818, column: 27, scope: !2424)
!2467 = !DILocation(line: 818, column: 24, scope: !2424)
!2468 = !DILocation(line: 819, column: 69, scope: !2424)
!2469 = !DILocation(line: 820, column: 53, scope: !2424)
!2470 = !DILocation(line: 821, column: 49, scope: !2424)
!2471 = !DILocation(line: 822, column: 49, scope: !2424)
!2472 = !DILocation(line: 819, column: 20, scope: !2424)
!2473 = !DILocation(line: 822, column: 62, scope: !2424)
!2474 = !DILocation(line: 0, scope: !2449, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 823, column: 15, scope: !2424)
!2476 = !DILocation(line: 218, column: 10, scope: !2449, inlinedAt: !2475)
!2477 = !DILocation(line: 824, column: 60, scope: !2424)
!2478 = !DILocation(line: 826, column: 32, scope: !2424)
!2479 = !DILocation(line: 826, column: 47, scope: !2424)
!2480 = !DILocation(line: 824, column: 3, scope: !2424)
!2481 = !DILocation(line: 827, column: 9, scope: !2424)
!2482 = !DILocation(line: 828, column: 7, scope: !2424)
!2483 = !DILocation(line: 829, column: 11, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2424, file: !212, line: 828, column: 7)
!2485 = !{!2486, !2486, i64 0}
!2486 = !{!"long", !1226, i64 0}
!2487 = !DILocation(line: 829, column: 5, scope: !2484)
!2488 = !DILocation(line: 830, column: 3, scope: !2424)
!2489 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2490)
!2490 = !{!2491, !2492}
!2491 = !DILocalVariable(name: "sv", scope: !2489, file: !212, line: 850, type: !339)
!2492 = !DILocalVariable(name: "i", scope: !2489, file: !212, line: 851, type: !18)
!2493 = !DILocation(line: 850, column: 24, scope: !2489)
!2494 = !DILocation(line: 0, scope: !2489)
!2495 = !DILocation(line: 852, column: 19, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !212, line: 852, column: 3)
!2497 = distinct !DILexicalBlock(scope: !2489, file: !212, line: 852, column: 3)
!2498 = !DILocation(line: 852, column: 17, scope: !2496)
!2499 = !DILocation(line: 852, column: 3, scope: !2497)
!2500 = !DILocation(line: 853, column: 17, scope: !2496)
!2501 = !{!2502, !1225, i64 8}
!2502 = !{!"slotvec", !2486, i64 0, !1225, i64 8}
!2503 = !DILocation(line: 853, column: 5, scope: !2496)
!2504 = !DILocation(line: 852, column: 28, scope: !2496)
!2505 = distinct !{!2505, !2499, !2506}
!2506 = !DILocation(line: 853, column: 20, scope: !2497)
!2507 = !DILocation(line: 854, column: 13, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2489, file: !212, line: 854, column: 7)
!2509 = !DILocation(line: 854, column: 17, scope: !2508)
!2510 = !DILocation(line: 854, column: 7, scope: !2489)
!2511 = !DILocation(line: 856, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !212, line: 855, column: 5)
!2513 = !DILocation(line: 857, column: 21, scope: !2512)
!2514 = !{!2502, !2486, i64 0}
!2515 = !DILocation(line: 858, column: 20, scope: !2512)
!2516 = !DILocation(line: 859, column: 5, scope: !2512)
!2517 = !DILocation(line: 860, column: 10, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2489, file: !212, line: 860, column: 7)
!2519 = !DILocation(line: 860, column: 7, scope: !2489)
!2520 = !DILocation(line: 862, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !212, line: 861, column: 5)
!2522 = !DILocation(line: 862, column: 7, scope: !2521)
!2523 = !DILocation(line: 863, column: 15, scope: !2521)
!2524 = !DILocation(line: 864, column: 5, scope: !2521)
!2525 = !DILocation(line: 865, column: 10, scope: !2489)
!2526 = !DILocation(line: 866, column: 1, scope: !2489)
!2527 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !441, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2528)
!2528 = !{!2529, !2530}
!2529 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !212, line: 931, type: !18)
!2530 = !DILocalVariable(name: "arg", arg: 2, scope: !2527, file: !212, line: 931, type: !6)
!2531 = !DILocation(line: 0, scope: !2527)
!2532 = !DILocation(line: 933, column: 10, scope: !2527)
!2533 = !DILocation(line: 933, column: 3, scope: !2527)
!2534 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2535, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!25, !18, !6, !69, !258}
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2543, !2544, !2547, !2548, !2550, !2551, !2552}
!2538 = !DILocalVariable(name: "n", arg: 1, scope: !2534, file: !212, line: 877, type: !18)
!2539 = !DILocalVariable(name: "arg", arg: 2, scope: !2534, file: !212, line: 877, type: !6)
!2540 = !DILocalVariable(name: "argsize", arg: 3, scope: !2534, file: !212, line: 877, type: !69)
!2541 = !DILocalVariable(name: "options", arg: 4, scope: !2534, file: !212, line: 878, type: !258)
!2542 = !DILocalVariable(name: "e", scope: !2534, file: !212, line: 880, type: !18)
!2543 = !DILocalVariable(name: "sv", scope: !2534, file: !212, line: 882, type: !339)
!2544 = !DILocalVariable(name: "preallocated", scope: !2545, file: !212, line: 889, type: !92)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !212, line: 888, column: 5)
!2546 = distinct !DILexicalBlock(scope: !2534, file: !212, line: 887, column: 7)
!2547 = !DILocalVariable(name: "nmax", scope: !2545, file: !212, line: 890, type: !18)
!2548 = !DILocalVariable(name: "size", scope: !2549, file: !212, line: 903, type: !69)
!2549 = distinct !DILexicalBlock(scope: !2534, file: !212, line: 902, column: 3)
!2550 = !DILocalVariable(name: "val", scope: !2549, file: !212, line: 904, type: !25)
!2551 = !DILocalVariable(name: "flags", scope: !2549, file: !212, line: 906, type: !18)
!2552 = !DILocalVariable(name: "qsize", scope: !2549, file: !212, line: 907, type: !69)
!2553 = !DILocation(line: 0, scope: !2534)
!2554 = !DILocation(line: 880, column: 11, scope: !2534)
!2555 = !DILocation(line: 882, column: 24, scope: !2534)
!2556 = !DILocation(line: 884, column: 9, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2534, file: !212, line: 884, column: 7)
!2558 = !DILocation(line: 884, column: 7, scope: !2534)
!2559 = !DILocation(line: 885, column: 5, scope: !2557)
!2560 = !DILocation(line: 887, column: 7, scope: !2546)
!2561 = !DILocation(line: 887, column: 14, scope: !2546)
!2562 = !DILocation(line: 887, column: 7, scope: !2534)
!2563 = !DILocation(line: 889, column: 31, scope: !2545)
!2564 = !DILocation(line: 0, scope: !2545)
!2565 = !DILocation(line: 892, column: 16, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2545, file: !212, line: 892, column: 11)
!2567 = !DILocation(line: 892, column: 11, scope: !2545)
!2568 = !DILocation(line: 893, column: 9, scope: !2566)
!2569 = !DILocation(line: 895, column: 32, scope: !2545)
!2570 = !DILocation(line: 895, column: 61, scope: !2545)
!2571 = !DILocation(line: 895, column: 58, scope: !2545)
!2572 = !DILocation(line: 895, column: 66, scope: !2545)
!2573 = !DILocation(line: 895, column: 22, scope: !2545)
!2574 = !DILocation(line: 895, column: 15, scope: !2545)
!2575 = !DILocation(line: 896, column: 11, scope: !2545)
!2576 = !DILocation(line: 897, column: 15, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2545, file: !212, line: 896, column: 11)
!2578 = !{i64 0, i64 8, !2485, i64 8, i64 8, !1224}
!2579 = !DILocation(line: 897, column: 9, scope: !2577)
!2580 = !DILocation(line: 898, column: 20, scope: !2545)
!2581 = !DILocation(line: 898, column: 18, scope: !2545)
!2582 = !DILocation(line: 898, column: 15, scope: !2545)
!2583 = !DILocation(line: 898, column: 38, scope: !2545)
!2584 = !DILocation(line: 898, column: 31, scope: !2545)
!2585 = !DILocation(line: 898, column: 48, scope: !2545)
!2586 = !DILocation(line: 0, scope: !1982, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 898, column: 7, scope: !2545)
!2588 = !DILocation(line: 71, column: 10, scope: !1982, inlinedAt: !2587)
!2589 = !DILocation(line: 899, column: 14, scope: !2545)
!2590 = !DILocation(line: 900, column: 5, scope: !2545)
!2591 = !DILocation(line: 903, column: 19, scope: !2549)
!2592 = !DILocation(line: 903, column: 25, scope: !2549)
!2593 = !DILocation(line: 0, scope: !2549)
!2594 = !DILocation(line: 904, column: 23, scope: !2549)
!2595 = !DILocation(line: 906, column: 26, scope: !2549)
!2596 = !DILocation(line: 906, column: 32, scope: !2549)
!2597 = !DILocation(line: 908, column: 55, scope: !2549)
!2598 = !DILocation(line: 909, column: 46, scope: !2549)
!2599 = !DILocation(line: 910, column: 55, scope: !2549)
!2600 = !DILocation(line: 911, column: 55, scope: !2549)
!2601 = !DILocation(line: 907, column: 20, scope: !2549)
!2602 = !DILocation(line: 913, column: 14, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2549, file: !212, line: 913, column: 9)
!2604 = !DILocation(line: 913, column: 9, scope: !2549)
!2605 = !DILocation(line: 915, column: 35, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !212, line: 914, column: 7)
!2607 = !DILocation(line: 915, column: 20, scope: !2606)
!2608 = !DILocation(line: 916, column: 17, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !212, line: 916, column: 13)
!2610 = !DILocation(line: 916, column: 13, scope: !2606)
!2611 = !DILocation(line: 917, column: 11, scope: !2609)
!2612 = !DILocation(line: 0, scope: !2449, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 918, column: 27, scope: !2606)
!2614 = !DILocation(line: 218, column: 10, scope: !2449, inlinedAt: !2613)
!2615 = !DILocation(line: 918, column: 19, scope: !2606)
!2616 = !DILocation(line: 919, column: 69, scope: !2606)
!2617 = !DILocation(line: 921, column: 44, scope: !2606)
!2618 = !DILocation(line: 922, column: 44, scope: !2606)
!2619 = !DILocation(line: 919, column: 9, scope: !2606)
!2620 = !DILocation(line: 923, column: 7, scope: !2606)
!2621 = !DILocation(line: 925, column: 11, scope: !2549)
!2622 = !DILocation(line: 926, column: 5, scope: !2549)
!2623 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2624, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!25, !18, !6, !69}
!2626 = !{!2627, !2628, !2629}
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2623, file: !212, line: 937, type: !18)
!2628 = !DILocalVariable(name: "arg", arg: 2, scope: !2623, file: !212, line: 937, type: !6)
!2629 = !DILocalVariable(name: "argsize", arg: 3, scope: !2623, file: !212, line: 937, type: !69)
!2630 = !DILocation(line: 0, scope: !2623)
!2631 = !DILocation(line: 939, column: 10, scope: !2623)
!2632 = !DILocation(line: 939, column: 3, scope: !2623)
!2633 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2634)
!2634 = !{!2635}
!2635 = !DILocalVariable(name: "arg", arg: 1, scope: !2633, file: !212, line: 943, type: !6)
!2636 = !DILocation(line: 0, scope: !2633)
!2637 = !DILocation(line: 0, scope: !2527, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 945, column: 10, scope: !2633)
!2639 = !DILocation(line: 933, column: 10, scope: !2527, inlinedAt: !2638)
!2640 = !DILocation(line: 945, column: 3, scope: !2633)
!2641 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2642, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!25, !6, !69}
!2644 = !{!2645, !2646}
!2645 = !DILocalVariable(name: "arg", arg: 1, scope: !2641, file: !212, line: 949, type: !6)
!2646 = !DILocalVariable(name: "argsize", arg: 2, scope: !2641, file: !212, line: 949, type: !69)
!2647 = !DILocation(line: 0, scope: !2641)
!2648 = !DILocation(line: 0, scope: !2623, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 951, column: 10, scope: !2641)
!2650 = !DILocation(line: 939, column: 10, scope: !2623, inlinedAt: !2649)
!2651 = !DILocation(line: 951, column: 3, scope: !2641)
!2652 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !2653, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!25, !18, !214, !6}
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !212, line: 955, type: !18)
!2657 = !DILocalVariable(name: "s", arg: 2, scope: !2652, file: !212, line: 955, type: !214)
!2658 = !DILocalVariable(name: "arg", arg: 3, scope: !2652, file: !212, line: 955, type: !6)
!2659 = !DILocalVariable(name: "o", scope: !2652, file: !212, line: 957, type: !259)
!2660 = !DILocation(line: 0, scope: !2652)
!2661 = !DILocation(line: 957, column: 3, scope: !2652)
!2662 = !DILocation(line: 957, column: 32, scope: !2652)
!2663 = !DILocalVariable(name: "style", arg: 1, scope: !2664, file: !212, line: 193, type: !214)
!2664 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2665, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!260, !214}
!2667 = !{!2663, !2668}
!2668 = !DILocalVariable(name: "o", scope: !2664, file: !212, line: 195, type: !260)
!2669 = !DILocation(line: 0, scope: !2664, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 957, column: 36, scope: !2652)
!2671 = !DILocation(line: 195, column: 26, scope: !2664, inlinedAt: !2670)
!2672 = !{!2673}
!2673 = distinct !{!2673, !2674, !"quoting_options_from_style: argument 0"}
!2674 = distinct !{!2674, !"quoting_options_from_style"}
!2675 = !DILocation(line: 196, column: 13, scope: !2676, inlinedAt: !2670)
!2676 = distinct !DILexicalBlock(scope: !2664, file: !212, line: 196, column: 7)
!2677 = !DILocation(line: 196, column: 7, scope: !2664, inlinedAt: !2670)
!2678 = !DILocation(line: 197, column: 5, scope: !2676, inlinedAt: !2670)
!2679 = !DILocation(line: 198, column: 5, scope: !2664, inlinedAt: !2670)
!2680 = !DILocation(line: 198, column: 11, scope: !2664, inlinedAt: !2670)
!2681 = !DILocation(line: 958, column: 10, scope: !2652)
!2682 = !DILocation(line: 959, column: 1, scope: !2652)
!2683 = !DILocation(line: 958, column: 3, scope: !2652)
!2684 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2685, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!25, !18, !214, !6, !69}
!2687 = !{!2688, !2689, !2690, !2691, !2692}
!2688 = !DILocalVariable(name: "n", arg: 1, scope: !2684, file: !212, line: 962, type: !18)
!2689 = !DILocalVariable(name: "s", arg: 2, scope: !2684, file: !212, line: 962, type: !214)
!2690 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !212, line: 963, type: !6)
!2691 = !DILocalVariable(name: "argsize", arg: 4, scope: !2684, file: !212, line: 963, type: !69)
!2692 = !DILocalVariable(name: "o", scope: !2684, file: !212, line: 965, type: !259)
!2693 = !DILocation(line: 0, scope: !2684)
!2694 = !DILocation(line: 965, column: 3, scope: !2684)
!2695 = !DILocation(line: 965, column: 32, scope: !2684)
!2696 = !DILocation(line: 0, scope: !2664, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 965, column: 36, scope: !2684)
!2698 = !DILocation(line: 195, column: 26, scope: !2664, inlinedAt: !2697)
!2699 = !{!2700}
!2700 = distinct !{!2700, !2701, !"quoting_options_from_style: argument 0"}
!2701 = distinct !{!2701, !"quoting_options_from_style"}
!2702 = !DILocation(line: 196, column: 13, scope: !2676, inlinedAt: !2697)
!2703 = !DILocation(line: 196, column: 7, scope: !2664, inlinedAt: !2697)
!2704 = !DILocation(line: 197, column: 5, scope: !2676, inlinedAt: !2697)
!2705 = !DILocation(line: 198, column: 5, scope: !2664, inlinedAt: !2697)
!2706 = !DILocation(line: 198, column: 11, scope: !2664, inlinedAt: !2697)
!2707 = !DILocation(line: 966, column: 10, scope: !2684)
!2708 = !DILocation(line: 967, column: 1, scope: !2684)
!2709 = !DILocation(line: 966, column: 3, scope: !2684)
!2710 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !2711, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!25, !214, !6}
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "s", arg: 1, scope: !2710, file: !212, line: 970, type: !214)
!2715 = !DILocalVariable(name: "arg", arg: 2, scope: !2710, file: !212, line: 970, type: !6)
!2716 = !DILocation(line: 195, column: 26, scope: !2664, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 957, column: 36, scope: !2652, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 972, column: 10, scope: !2710)
!2719 = !DILocation(line: 957, column: 32, scope: !2652, inlinedAt: !2718)
!2720 = !DILocation(line: 0, scope: !2710)
!2721 = !DILocation(line: 0, scope: !2652, inlinedAt: !2718)
!2722 = !DILocation(line: 957, column: 3, scope: !2652, inlinedAt: !2718)
!2723 = !DILocation(line: 0, scope: !2664, inlinedAt: !2717)
!2724 = !{!2725}
!2725 = distinct !{!2725, !2726, !"quoting_options_from_style: argument 0"}
!2726 = distinct !{!2726, !"quoting_options_from_style"}
!2727 = !DILocation(line: 196, column: 13, scope: !2676, inlinedAt: !2717)
!2728 = !DILocation(line: 196, column: 7, scope: !2664, inlinedAt: !2717)
!2729 = !DILocation(line: 197, column: 5, scope: !2676, inlinedAt: !2717)
!2730 = !DILocation(line: 198, column: 5, scope: !2664, inlinedAt: !2717)
!2731 = !DILocation(line: 198, column: 11, scope: !2664, inlinedAt: !2717)
!2732 = !DILocation(line: 958, column: 10, scope: !2652, inlinedAt: !2718)
!2733 = !DILocation(line: 959, column: 1, scope: !2652, inlinedAt: !2718)
!2734 = !DILocation(line: 972, column: 3, scope: !2710)
!2735 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2736, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!25, !214, !6, !69}
!2738 = !{!2739, !2740, !2741}
!2739 = !DILocalVariable(name: "s", arg: 1, scope: !2735, file: !212, line: 976, type: !214)
!2740 = !DILocalVariable(name: "arg", arg: 2, scope: !2735, file: !212, line: 976, type: !6)
!2741 = !DILocalVariable(name: "argsize", arg: 3, scope: !2735, file: !212, line: 976, type: !69)
!2742 = !DILocation(line: 195, column: 26, scope: !2664, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 965, column: 36, scope: !2684, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 978, column: 10, scope: !2735)
!2745 = !DILocation(line: 965, column: 32, scope: !2684, inlinedAt: !2744)
!2746 = !DILocation(line: 0, scope: !2735)
!2747 = !DILocation(line: 0, scope: !2684, inlinedAt: !2744)
!2748 = !DILocation(line: 965, column: 3, scope: !2684, inlinedAt: !2744)
!2749 = !DILocation(line: 0, scope: !2664, inlinedAt: !2743)
!2750 = !{!2751}
!2751 = distinct !{!2751, !2752, !"quoting_options_from_style: argument 0"}
!2752 = distinct !{!2752, !"quoting_options_from_style"}
!2753 = !DILocation(line: 196, column: 13, scope: !2676, inlinedAt: !2743)
!2754 = !DILocation(line: 196, column: 7, scope: !2664, inlinedAt: !2743)
!2755 = !DILocation(line: 197, column: 5, scope: !2676, inlinedAt: !2743)
!2756 = !DILocation(line: 198, column: 5, scope: !2664, inlinedAt: !2743)
!2757 = !DILocation(line: 198, column: 11, scope: !2664, inlinedAt: !2743)
!2758 = !DILocation(line: 966, column: 10, scope: !2684, inlinedAt: !2744)
!2759 = !DILocation(line: 967, column: 1, scope: !2684, inlinedAt: !2744)
!2760 = !DILocation(line: 978, column: 3, scope: !2735)
!2761 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2762, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!25, !6, !69, !8}
!2764 = !{!2765, !2766, !2767, !2768}
!2765 = !DILocalVariable(name: "arg", arg: 1, scope: !2761, file: !212, line: 982, type: !6)
!2766 = !DILocalVariable(name: "argsize", arg: 2, scope: !2761, file: !212, line: 982, type: !69)
!2767 = !DILocalVariable(name: "ch", arg: 3, scope: !2761, file: !212, line: 982, type: !8)
!2768 = !DILocalVariable(name: "options", scope: !2761, file: !212, line: 984, type: !260)
!2769 = !DILocation(line: 0, scope: !2761)
!2770 = !DILocation(line: 984, column: 3, scope: !2761)
!2771 = !DILocation(line: 984, column: 26, scope: !2761)
!2772 = !DILocation(line: 985, column: 13, scope: !2761)
!2773 = !{i64 0, i64 4, !1318, i64 4, i64 4, !1293, i64 8, i64 32, !1318, i64 40, i64 8, !1224, i64 48, i64 8, !1224}
!2774 = !DILocation(line: 0, scope: !1594, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 986, column: 3, scope: !2761)
!2776 = !DILocation(line: 156, column: 62, scope: !1594, inlinedAt: !2775)
!2777 = !DILocation(line: 156, column: 57, scope: !1594, inlinedAt: !2775)
!2778 = !DILocation(line: 157, column: 15, scope: !1594, inlinedAt: !2775)
!2779 = !DILocation(line: 158, column: 12, scope: !1594, inlinedAt: !2775)
!2780 = !DILocation(line: 158, column: 15, scope: !1594, inlinedAt: !2775)
!2781 = !DILocation(line: 158, column: 25, scope: !1594, inlinedAt: !2775)
!2782 = !DILocation(line: 159, column: 18, scope: !1594, inlinedAt: !2775)
!2783 = !DILocation(line: 159, column: 23, scope: !1594, inlinedAt: !2775)
!2784 = !DILocation(line: 159, column: 6, scope: !1594, inlinedAt: !2775)
!2785 = !DILocation(line: 987, column: 10, scope: !2761)
!2786 = !DILocation(line: 988, column: 1, scope: !2761)
!2787 = !DILocation(line: 987, column: 3, scope: !2761)
!2788 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2789, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!25, !6, !8}
!2791 = !{!2792, !2793}
!2792 = !DILocalVariable(name: "arg", arg: 1, scope: !2788, file: !212, line: 991, type: !6)
!2793 = !DILocalVariable(name: "ch", arg: 2, scope: !2788, file: !212, line: 991, type: !8)
!2794 = !DILocation(line: 984, column: 26, scope: !2761, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 993, column: 10, scope: !2788)
!2796 = !DILocation(line: 0, scope: !2788)
!2797 = !DILocation(line: 0, scope: !2761, inlinedAt: !2795)
!2798 = !DILocation(line: 984, column: 3, scope: !2761, inlinedAt: !2795)
!2799 = !DILocation(line: 985, column: 13, scope: !2761, inlinedAt: !2795)
!2800 = !DILocation(line: 0, scope: !1594, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 986, column: 3, scope: !2761, inlinedAt: !2795)
!2802 = !DILocation(line: 156, column: 62, scope: !1594, inlinedAt: !2801)
!2803 = !DILocation(line: 156, column: 57, scope: !1594, inlinedAt: !2801)
!2804 = !DILocation(line: 157, column: 15, scope: !1594, inlinedAt: !2801)
!2805 = !DILocation(line: 158, column: 12, scope: !1594, inlinedAt: !2801)
!2806 = !DILocation(line: 158, column: 15, scope: !1594, inlinedAt: !2801)
!2807 = !DILocation(line: 158, column: 25, scope: !1594, inlinedAt: !2801)
!2808 = !DILocation(line: 159, column: 18, scope: !1594, inlinedAt: !2801)
!2809 = !DILocation(line: 159, column: 23, scope: !1594, inlinedAt: !2801)
!2810 = !DILocation(line: 159, column: 6, scope: !1594, inlinedAt: !2801)
!2811 = !DILocation(line: 987, column: 10, scope: !2761, inlinedAt: !2795)
!2812 = !DILocation(line: 988, column: 1, scope: !2761, inlinedAt: !2795)
!2813 = !DILocation(line: 993, column: 3, scope: !2788)
!2814 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2815)
!2815 = !{!2816}
!2816 = !DILocalVariable(name: "arg", arg: 1, scope: !2814, file: !212, line: 997, type: !6)
!2817 = !DILocation(line: 984, column: 26, scope: !2761, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 993, column: 10, scope: !2788, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 999, column: 10, scope: !2814)
!2820 = !DILocation(line: 0, scope: !2814)
!2821 = !DILocation(line: 0, scope: !2788, inlinedAt: !2819)
!2822 = !DILocation(line: 0, scope: !2761, inlinedAt: !2818)
!2823 = !DILocation(line: 984, column: 3, scope: !2761, inlinedAt: !2818)
!2824 = !DILocation(line: 985, column: 13, scope: !2761, inlinedAt: !2818)
!2825 = !DILocation(line: 0, scope: !1594, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 986, column: 3, scope: !2761, inlinedAt: !2818)
!2827 = !DILocation(line: 156, column: 57, scope: !1594, inlinedAt: !2826)
!2828 = !DILocation(line: 158, column: 12, scope: !1594, inlinedAt: !2826)
!2829 = !DILocation(line: 159, column: 6, scope: !1594, inlinedAt: !2826)
!2830 = !DILocation(line: 987, column: 10, scope: !2761, inlinedAt: !2818)
!2831 = !DILocation(line: 988, column: 1, scope: !2761, inlinedAt: !2818)
!2832 = !DILocation(line: 999, column: 3, scope: !2814)
!2833 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2642, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2834)
!2834 = !{!2835, !2836}
!2835 = !DILocalVariable(name: "arg", arg: 1, scope: !2833, file: !212, line: 1003, type: !6)
!2836 = !DILocalVariable(name: "argsize", arg: 2, scope: !2833, file: !212, line: 1003, type: !69)
!2837 = !DILocation(line: 984, column: 26, scope: !2761, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 1005, column: 10, scope: !2833)
!2839 = !DILocation(line: 0, scope: !2833)
!2840 = !DILocation(line: 0, scope: !2761, inlinedAt: !2838)
!2841 = !DILocation(line: 984, column: 3, scope: !2761, inlinedAt: !2838)
!2842 = !DILocation(line: 985, column: 13, scope: !2761, inlinedAt: !2838)
!2843 = !DILocation(line: 0, scope: !1594, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 986, column: 3, scope: !2761, inlinedAt: !2838)
!2845 = !DILocation(line: 156, column: 57, scope: !1594, inlinedAt: !2844)
!2846 = !DILocation(line: 158, column: 12, scope: !1594, inlinedAt: !2844)
!2847 = !DILocation(line: 159, column: 6, scope: !1594, inlinedAt: !2844)
!2848 = !DILocation(line: 987, column: 10, scope: !2761, inlinedAt: !2838)
!2849 = !DILocation(line: 988, column: 1, scope: !2761, inlinedAt: !2838)
!2850 = !DILocation(line: 1005, column: 3, scope: !2833)
!2851 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !2653, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2852)
!2852 = !{!2853, !2854, !2855, !2856}
!2853 = !DILocalVariable(name: "n", arg: 1, scope: !2851, file: !212, line: 1009, type: !18)
!2854 = !DILocalVariable(name: "s", arg: 2, scope: !2851, file: !212, line: 1009, type: !214)
!2855 = !DILocalVariable(name: "arg", arg: 3, scope: !2851, file: !212, line: 1009, type: !6)
!2856 = !DILocalVariable(name: "options", scope: !2851, file: !212, line: 1011, type: !260)
!2857 = !DILocation(line: 195, column: 26, scope: !2664, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 1012, column: 13, scope: !2851)
!2859 = !DILocation(line: 0, scope: !2851)
!2860 = !DILocation(line: 1011, column: 3, scope: !2851)
!2861 = !DILocation(line: 1011, column: 26, scope: !2851)
!2862 = !DILocation(line: 1012, column: 13, scope: !2851)
!2863 = !DILocation(line: 0, scope: !2664, inlinedAt: !2858)
!2864 = !{!2865}
!2865 = distinct !{!2865, !2866, !"quoting_options_from_style: argument 0"}
!2866 = distinct !{!2866, !"quoting_options_from_style"}
!2867 = !DILocation(line: 196, column: 13, scope: !2676, inlinedAt: !2858)
!2868 = !DILocation(line: 196, column: 7, scope: !2664, inlinedAt: !2858)
!2869 = !DILocation(line: 197, column: 5, scope: !2676, inlinedAt: !2858)
!2870 = !DILocation(line: 0, scope: !1594, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 1013, column: 3, scope: !2851)
!2872 = !DILocation(line: 156, column: 57, scope: !1594, inlinedAt: !2871)
!2873 = !DILocation(line: 158, column: 12, scope: !1594, inlinedAt: !2871)
!2874 = !DILocation(line: 159, column: 6, scope: !1594, inlinedAt: !2871)
!2875 = !DILocation(line: 1014, column: 10, scope: !2851)
!2876 = !DILocation(line: 1015, column: 1, scope: !2851)
!2877 = !DILocation(line: 1014, column: 3, scope: !2851)
!2878 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2879, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!25, !18, !6, !6, !6}
!2881 = !{!2882, !2883, !2884, !2885}
!2882 = !DILocalVariable(name: "n", arg: 1, scope: !2878, file: !212, line: 1018, type: !18)
!2883 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2878, file: !212, line: 1018, type: !6)
!2884 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2878, file: !212, line: 1019, type: !6)
!2885 = !DILocalVariable(name: "arg", arg: 4, scope: !2878, file: !212, line: 1019, type: !6)
!2886 = !DILocalVariable(name: "o", scope: !2887, file: !212, line: 1030, type: !260)
!2887 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2888, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!25, !18, !6, !6, !6, !69}
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2886}
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2887, file: !212, line: 1026, type: !18)
!2892 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2887, file: !212, line: 1026, type: !6)
!2893 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2887, file: !212, line: 1027, type: !6)
!2894 = !DILocalVariable(name: "arg", arg: 4, scope: !2887, file: !212, line: 1028, type: !6)
!2895 = !DILocalVariable(name: "argsize", arg: 5, scope: !2887, file: !212, line: 1028, type: !69)
!2896 = !DILocation(line: 1030, column: 26, scope: !2887, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1021, column: 10, scope: !2878)
!2898 = !DILocation(line: 0, scope: !2878)
!2899 = !DILocation(line: 0, scope: !2887, inlinedAt: !2897)
!2900 = !DILocation(line: 1030, column: 3, scope: !2887, inlinedAt: !2897)
!2901 = !DILocation(line: 1030, column: 30, scope: !2887, inlinedAt: !2897)
!2902 = !DILocation(line: 0, scope: !1635, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 1031, column: 3, scope: !2887, inlinedAt: !2897)
!2904 = !DILocation(line: 184, column: 6, scope: !1635, inlinedAt: !2903)
!2905 = !DILocation(line: 184, column: 12, scope: !1635, inlinedAt: !2903)
!2906 = !DILocation(line: 185, column: 8, scope: !1649, inlinedAt: !2903)
!2907 = !DILocation(line: 185, column: 23, scope: !1649, inlinedAt: !2903)
!2908 = !DILocation(line: 185, column: 19, scope: !1649, inlinedAt: !2903)
!2909 = !DILocation(line: 186, column: 5, scope: !1649, inlinedAt: !2903)
!2910 = !DILocation(line: 187, column: 6, scope: !1635, inlinedAt: !2903)
!2911 = !DILocation(line: 187, column: 17, scope: !1635, inlinedAt: !2903)
!2912 = !DILocation(line: 188, column: 6, scope: !1635, inlinedAt: !2903)
!2913 = !DILocation(line: 188, column: 18, scope: !1635, inlinedAt: !2903)
!2914 = !DILocation(line: 1032, column: 10, scope: !2887, inlinedAt: !2897)
!2915 = !DILocation(line: 1033, column: 1, scope: !2887, inlinedAt: !2897)
!2916 = !DILocation(line: 1021, column: 3, scope: !2878)
!2917 = !DILocation(line: 0, scope: !2887)
!2918 = !DILocation(line: 1030, column: 3, scope: !2887)
!2919 = !DILocation(line: 1030, column: 26, scope: !2887)
!2920 = !DILocation(line: 1030, column: 30, scope: !2887)
!2921 = !DILocation(line: 0, scope: !1635, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 1031, column: 3, scope: !2887)
!2923 = !DILocation(line: 184, column: 6, scope: !1635, inlinedAt: !2922)
!2924 = !DILocation(line: 184, column: 12, scope: !1635, inlinedAt: !2922)
!2925 = !DILocation(line: 185, column: 8, scope: !1649, inlinedAt: !2922)
!2926 = !DILocation(line: 185, column: 23, scope: !1649, inlinedAt: !2922)
!2927 = !DILocation(line: 185, column: 19, scope: !1649, inlinedAt: !2922)
!2928 = !DILocation(line: 186, column: 5, scope: !1649, inlinedAt: !2922)
!2929 = !DILocation(line: 187, column: 6, scope: !1635, inlinedAt: !2922)
!2930 = !DILocation(line: 187, column: 17, scope: !1635, inlinedAt: !2922)
!2931 = !DILocation(line: 188, column: 6, scope: !1635, inlinedAt: !2922)
!2932 = !DILocation(line: 188, column: 18, scope: !1635, inlinedAt: !2922)
!2933 = !DILocation(line: 1032, column: 10, scope: !2887)
!2934 = !DILocation(line: 1033, column: 1, scope: !2887)
!2935 = !DILocation(line: 1032, column: 3, scope: !2887)
!2936 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !2937, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!25, !6, !6, !6}
!2939 = !{!2940, !2941, !2942}
!2940 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2936, file: !212, line: 1036, type: !6)
!2941 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2936, file: !212, line: 1036, type: !6)
!2942 = !DILocalVariable(name: "arg", arg: 3, scope: !2936, file: !212, line: 1037, type: !6)
!2943 = !DILocation(line: 1030, column: 26, scope: !2887, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1021, column: 10, scope: !2878, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 1039, column: 10, scope: !2936)
!2946 = !DILocation(line: 0, scope: !2936)
!2947 = !DILocation(line: 0, scope: !2878, inlinedAt: !2945)
!2948 = !DILocation(line: 0, scope: !2887, inlinedAt: !2944)
!2949 = !DILocation(line: 1030, column: 3, scope: !2887, inlinedAt: !2944)
!2950 = !DILocation(line: 1030, column: 30, scope: !2887, inlinedAt: !2944)
!2951 = !DILocation(line: 0, scope: !1635, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 1031, column: 3, scope: !2887, inlinedAt: !2944)
!2953 = !DILocation(line: 184, column: 6, scope: !1635, inlinedAt: !2952)
!2954 = !DILocation(line: 184, column: 12, scope: !1635, inlinedAt: !2952)
!2955 = !DILocation(line: 185, column: 8, scope: !1649, inlinedAt: !2952)
!2956 = !DILocation(line: 185, column: 23, scope: !1649, inlinedAt: !2952)
!2957 = !DILocation(line: 185, column: 19, scope: !1649, inlinedAt: !2952)
!2958 = !DILocation(line: 186, column: 5, scope: !1649, inlinedAt: !2952)
!2959 = !DILocation(line: 187, column: 6, scope: !1635, inlinedAt: !2952)
!2960 = !DILocation(line: 187, column: 17, scope: !1635, inlinedAt: !2952)
!2961 = !DILocation(line: 188, column: 6, scope: !1635, inlinedAt: !2952)
!2962 = !DILocation(line: 188, column: 18, scope: !1635, inlinedAt: !2952)
!2963 = !DILocation(line: 1032, column: 10, scope: !2887, inlinedAt: !2944)
!2964 = !DILocation(line: 1033, column: 1, scope: !2887, inlinedAt: !2944)
!2965 = !DILocation(line: 1039, column: 3, scope: !2936)
!2966 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !2967, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!25, !6, !6, !6, !69}
!2969 = !{!2970, !2971, !2972, !2973}
!2970 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2966, file: !212, line: 1043, type: !6)
!2971 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2966, file: !212, line: 1043, type: !6)
!2972 = !DILocalVariable(name: "arg", arg: 3, scope: !2966, file: !212, line: 1044, type: !6)
!2973 = !DILocalVariable(name: "argsize", arg: 4, scope: !2966, file: !212, line: 1044, type: !69)
!2974 = !DILocation(line: 1030, column: 26, scope: !2887, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1046, column: 10, scope: !2966)
!2976 = !DILocation(line: 0, scope: !2966)
!2977 = !DILocation(line: 0, scope: !2887, inlinedAt: !2975)
!2978 = !DILocation(line: 1030, column: 3, scope: !2887, inlinedAt: !2975)
!2979 = !DILocation(line: 1030, column: 30, scope: !2887, inlinedAt: !2975)
!2980 = !DILocation(line: 0, scope: !1635, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 1031, column: 3, scope: !2887, inlinedAt: !2975)
!2982 = !DILocation(line: 184, column: 6, scope: !1635, inlinedAt: !2981)
!2983 = !DILocation(line: 184, column: 12, scope: !1635, inlinedAt: !2981)
!2984 = !DILocation(line: 185, column: 8, scope: !1649, inlinedAt: !2981)
!2985 = !DILocation(line: 185, column: 23, scope: !1649, inlinedAt: !2981)
!2986 = !DILocation(line: 185, column: 19, scope: !1649, inlinedAt: !2981)
!2987 = !DILocation(line: 186, column: 5, scope: !1649, inlinedAt: !2981)
!2988 = !DILocation(line: 187, column: 6, scope: !1635, inlinedAt: !2981)
!2989 = !DILocation(line: 187, column: 17, scope: !1635, inlinedAt: !2981)
!2990 = !DILocation(line: 188, column: 6, scope: !1635, inlinedAt: !2981)
!2991 = !DILocation(line: 188, column: 18, scope: !1635, inlinedAt: !2981)
!2992 = !DILocation(line: 1032, column: 10, scope: !2887, inlinedAt: !2975)
!2993 = !DILocation(line: 1033, column: 1, scope: !2887, inlinedAt: !2975)
!2994 = !DILocation(line: 1046, column: 3, scope: !2966)
!2995 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !2996, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!6, !18, !6, !69}
!2998 = !{!2999, !3000, !3001}
!2999 = !DILocalVariable(name: "n", arg: 1, scope: !2995, file: !212, line: 1061, type: !18)
!3000 = !DILocalVariable(name: "arg", arg: 2, scope: !2995, file: !212, line: 1061, type: !6)
!3001 = !DILocalVariable(name: "argsize", arg: 3, scope: !2995, file: !212, line: 1061, type: !69)
!3002 = !DILocation(line: 0, scope: !2995)
!3003 = !DILocation(line: 1063, column: 10, scope: !2995)
!3004 = !DILocation(line: 1063, column: 3, scope: !2995)
!3005 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !3006, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!6, !6, !69}
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "arg", arg: 1, scope: !3005, file: !212, line: 1067, type: !6)
!3010 = !DILocalVariable(name: "argsize", arg: 2, scope: !3005, file: !212, line: 1067, type: !69)
!3011 = !DILocation(line: 0, scope: !3005)
!3012 = !DILocation(line: 0, scope: !2995, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 1069, column: 10, scope: !3005)
!3014 = !DILocation(line: 1063, column: 10, scope: !2995, inlinedAt: !3013)
!3015 = !DILocation(line: 1069, column: 3, scope: !3005)
!3016 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !3017, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!6, !18, !6}
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "n", arg: 1, scope: !3016, file: !212, line: 1073, type: !18)
!3021 = !DILocalVariable(name: "arg", arg: 2, scope: !3016, file: !212, line: 1073, type: !6)
!3022 = !DILocation(line: 0, scope: !3016)
!3023 = !DILocation(line: 0, scope: !2995, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 1075, column: 10, scope: !3016)
!3025 = !DILocation(line: 1063, column: 10, scope: !2995, inlinedAt: !3024)
!3026 = !DILocation(line: 1075, column: 3, scope: !3016)
!3027 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !469, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3028)
!3028 = !{!3029}
!3029 = !DILocalVariable(name: "arg", arg: 1, scope: !3027, file: !212, line: 1079, type: !6)
!3030 = !DILocation(line: 0, scope: !3027)
!3031 = !DILocation(line: 0, scope: !3016, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 1081, column: 10, scope: !3027)
!3033 = !DILocation(line: 0, scope: !2995, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 1075, column: 10, scope: !3016, inlinedAt: !3032)
!3035 = !DILocation(line: 1063, column: 10, scope: !2995, inlinedAt: !3034)
!3036 = !DILocation(line: 1081, column: 3, scope: !3027)
!3037 = distinct !DISubprogram(name: "version_etc_arn", scope: !481, file: !481, line: 61, type: !3038, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !3044)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null, !3040, !6, !6, !6, !3043, !69}
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3042, line: 7, baseType: !491)
!3042 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050}
!3045 = !DILocalVariable(name: "stream", arg: 1, scope: !3037, file: !481, line: 61, type: !3040)
!3046 = !DILocalVariable(name: "command_name", arg: 2, scope: !3037, file: !481, line: 62, type: !6)
!3047 = !DILocalVariable(name: "package", arg: 3, scope: !3037, file: !481, line: 62, type: !6)
!3048 = !DILocalVariable(name: "version", arg: 4, scope: !3037, file: !481, line: 63, type: !6)
!3049 = !DILocalVariable(name: "authors", arg: 5, scope: !3037, file: !481, line: 64, type: !3043)
!3050 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3037, file: !481, line: 64, type: !69)
!3051 = !DILocation(line: 0, scope: !3037)
!3052 = !DILocation(line: 66, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3037, file: !481, line: 66, column: 7)
!3054 = !DILocation(line: 66, column: 7, scope: !3037)
!3055 = !DILocation(line: 67, column: 5, scope: !3053)
!3056 = !DILocation(line: 69, column: 5, scope: !3053)
!3057 = !DILocation(line: 83, column: 3, scope: !3037)
!3058 = !DILocation(line: 85, column: 3, scope: !3037)
!3059 = !DILocation(line: 88, column: 3, scope: !3037)
!3060 = !DILocation(line: 95, column: 3, scope: !3037)
!3061 = !DILocation(line: 97, column: 3, scope: !3037)
!3062 = !DILocation(line: 105, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3037, file: !481, line: 98, column: 5)
!3064 = !DILocation(line: 106, column: 7, scope: !3063)
!3065 = !DILocation(line: 109, column: 7, scope: !3063)
!3066 = !DILocation(line: 110, column: 7, scope: !3063)
!3067 = !DILocation(line: 113, column: 7, scope: !3063)
!3068 = !DILocation(line: 115, column: 7, scope: !3063)
!3069 = !DILocation(line: 120, column: 7, scope: !3063)
!3070 = !DILocation(line: 122, column: 7, scope: !3063)
!3071 = !DILocation(line: 127, column: 7, scope: !3063)
!3072 = !DILocation(line: 129, column: 7, scope: !3063)
!3073 = !DILocation(line: 134, column: 7, scope: !3063)
!3074 = !DILocation(line: 137, column: 7, scope: !3063)
!3075 = !DILocation(line: 142, column: 7, scope: !3063)
!3076 = !DILocation(line: 145, column: 7, scope: !3063)
!3077 = !DILocation(line: 150, column: 7, scope: !3063)
!3078 = !DILocation(line: 154, column: 7, scope: !3063)
!3079 = !DILocation(line: 159, column: 7, scope: !3063)
!3080 = !DILocation(line: 163, column: 7, scope: !3063)
!3081 = !DILocation(line: 170, column: 7, scope: !3063)
!3082 = !DILocation(line: 174, column: 7, scope: !3063)
!3083 = !DILocation(line: 176, column: 1, scope: !3037)
!3084 = distinct !DISubprogram(name: "version_etc_ar", scope: !481, file: !481, line: 183, type: !3085, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{null, !3040, !6, !6, !6, !3043}
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093}
!3088 = !DILocalVariable(name: "stream", arg: 1, scope: !3084, file: !481, line: 183, type: !3040)
!3089 = !DILocalVariable(name: "command_name", arg: 2, scope: !3084, file: !481, line: 184, type: !6)
!3090 = !DILocalVariable(name: "package", arg: 3, scope: !3084, file: !481, line: 184, type: !6)
!3091 = !DILocalVariable(name: "version", arg: 4, scope: !3084, file: !481, line: 185, type: !6)
!3092 = !DILocalVariable(name: "authors", arg: 5, scope: !3084, file: !481, line: 185, type: !3043)
!3093 = !DILocalVariable(name: "n_authors", scope: !3084, file: !481, line: 187, type: !69)
!3094 = !DILocation(line: 0, scope: !3084)
!3095 = !DILocation(line: 189, column: 8, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3084, file: !481, line: 189, column: 3)
!3097 = !DILocation(line: 0, scope: !3096)
!3098 = !DILocation(line: 189, column: 23, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3096, file: !481, line: 189, column: 3)
!3100 = !DILocation(line: 189, column: 3, scope: !3096)
!3101 = !DILocation(line: 189, column: 52, scope: !3099)
!3102 = distinct !{!3102, !3100, !3103}
!3103 = !DILocation(line: 190, column: 5, scope: !3096)
!3104 = !DILocation(line: 191, column: 3, scope: !3084)
!3105 = !DILocation(line: 192, column: 1, scope: !3084)
!3106 = distinct !DISubprogram(name: "version_etc_va", scope: !481, file: !481, line: 199, type: !3107, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !3116)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !3040, !6, !6, !6, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !481, line: 192, size: 192, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3115}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3110, file: !481, line: 192, baseType: !159, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3110, file: !481, line: 192, baseType: !159, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3110, file: !481, line: 192, baseType: !67, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3110, file: !481, line: 192, baseType: !67, size: 64, offset: 128)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3117 = !DILocalVariable(name: "stream", arg: 1, scope: !3106, file: !481, line: 199, type: !3040)
!3118 = !DILocalVariable(name: "command_name", arg: 2, scope: !3106, file: !481, line: 200, type: !6)
!3119 = !DILocalVariable(name: "package", arg: 3, scope: !3106, file: !481, line: 200, type: !6)
!3120 = !DILocalVariable(name: "version", arg: 4, scope: !3106, file: !481, line: 201, type: !6)
!3121 = !DILocalVariable(name: "authors", arg: 5, scope: !3106, file: !481, line: 201, type: !3109)
!3122 = !DILocalVariable(name: "n_authors", scope: !3106, file: !481, line: 203, type: !69)
!3123 = !DILocalVariable(name: "authtab", scope: !3106, file: !481, line: 204, type: !3124)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!3125 = !DILocation(line: 0, scope: !3106)
!3126 = !DILocation(line: 204, column: 3, scope: !3106)
!3127 = !DILocation(line: 204, column: 15, scope: !3106)
!3128 = !DILocation(line: 0, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !481, line: 206, column: 3)
!3130 = distinct !DILexicalBlock(scope: !3106, file: !481, line: 206, column: 3)
!3131 = !DILocation(line: 208, column: 35, scope: !3129)
!3132 = !DILocation(line: 208, column: 14, scope: !3129)
!3133 = !DILocation(line: 208, column: 33, scope: !3129)
!3134 = !DILocation(line: 208, column: 67, scope: !3129)
!3135 = !DILocation(line: 206, column: 3, scope: !3130)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 211, column: 3, scope: !3106)
!3138 = !DILocation(line: 213, column: 1, scope: !3106)
!3139 = distinct !DISubprogram(name: "version_etc", scope: !481, file: !481, line: 230, type: !3140, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !3040, !6, !6, !6, null}
!3142 = !{!3143, !3144, !3145, !3146, !3147}
!3143 = !DILocalVariable(name: "stream", arg: 1, scope: !3139, file: !481, line: 230, type: !3040)
!3144 = !DILocalVariable(name: "command_name", arg: 2, scope: !3139, file: !481, line: 231, type: !6)
!3145 = !DILocalVariable(name: "package", arg: 3, scope: !3139, file: !481, line: 231, type: !6)
!3146 = !DILocalVariable(name: "version", arg: 4, scope: !3139, file: !481, line: 232, type: !6)
!3147 = !DILocalVariable(name: "authors", scope: !3139, file: !481, line: 234, type: !3148)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !3149)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1467, line: 32, baseType: !3150)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !481, line: 234, baseType: !3151)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3110, size: 192, elements: !52)
!3152 = !DILocation(line: 0, scope: !3139)
!3153 = !DILocation(line: 234, column: 3, scope: !3139)
!3154 = !DILocation(line: 234, column: 11, scope: !3139)
!3155 = !DILocation(line: 236, column: 3, scope: !3139)
!3156 = !DILocation(line: 237, column: 3, scope: !3139)
!3157 = !DILocation(line: 238, column: 3, scope: !3139)
!3158 = !DILocation(line: 239, column: 1, scope: !3139)
!3159 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !481, file: !481, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !4)
!3160 = !DILocation(line: 244, column: 3, scope: !3159)
!3161 = !DILocation(line: 249, column: 3, scope: !3159)
!3162 = !DILocation(line: 255, column: 3, scope: !3159)
!3163 = !DILocation(line: 260, column: 3, scope: !3159)
!3164 = !DILocation(line: 262, column: 1, scope: !3159)
!3165 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !3166, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!67, !69, !69}
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "n", arg: 1, scope: !3165, file: !249, line: 99, type: !69)
!3170 = !DILocalVariable(name: "s", arg: 2, scope: !3165, file: !249, line: 99, type: !69)
!3171 = !DILocation(line: 0, scope: !3165)
!3172 = !DILocation(line: 101, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3165, file: !249, line: 101, column: 7)
!3174 = !DILocation(line: 101, column: 7, scope: !3165)
!3175 = !DILocation(line: 102, column: 5, scope: !3173)
!3176 = !DILocation(line: 103, column: 21, scope: !3165)
!3177 = !DILocalVariable(name: "n", arg: 1, scope: !3178, file: !523, line: 39, type: !69)
!3178 = distinct !DISubprogram(name: "xmalloc", scope: !523, file: !523, line: 39, type: !3179, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!67, !69}
!3181 = !{!3177, !3182}
!3182 = !DILocalVariable(name: "p", scope: !3178, file: !523, line: 41, type: !67)
!3183 = !DILocation(line: 0, scope: !3178, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 103, column: 10, scope: !3165)
!3185 = !DILocation(line: 41, column: 13, scope: !3178, inlinedAt: !3184)
!3186 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3184)
!3187 = distinct !DILexicalBlock(scope: !3178, file: !523, line: 42, column: 7)
!3188 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3184)
!3189 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3184)
!3190 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3184)
!3191 = !DILocation(line: 103, column: 3, scope: !3165)
!3192 = !DILocation(line: 0, scope: !3178)
!3193 = !DILocation(line: 41, column: 13, scope: !3178)
!3194 = !DILocation(line: 42, column: 8, scope: !3187)
!3195 = !DILocation(line: 42, column: 15, scope: !3187)
!3196 = !DILocation(line: 42, column: 10, scope: !3187)
!3197 = !DILocation(line: 43, column: 5, scope: !3187)
!3198 = !DILocation(line: 44, column: 3, scope: !3178)
!3199 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !3200, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!67, !67, !69, !69}
!3202 = !{!3203, !3204, !3205}
!3203 = !DILocalVariable(name: "p", arg: 1, scope: !3199, file: !249, line: 112, type: !67)
!3204 = !DILocalVariable(name: "n", arg: 2, scope: !3199, file: !249, line: 112, type: !69)
!3205 = !DILocalVariable(name: "s", arg: 3, scope: !3199, file: !249, line: 112, type: !69)
!3206 = !DILocation(line: 0, scope: !3199)
!3207 = !DILocation(line: 114, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3199, file: !249, line: 114, column: 7)
!3209 = !DILocation(line: 114, column: 7, scope: !3199)
!3210 = !DILocation(line: 115, column: 5, scope: !3208)
!3211 = !DILocation(line: 116, column: 25, scope: !3199)
!3212 = !DILocalVariable(name: "p", arg: 1, scope: !3213, file: !523, line: 51, type: !67)
!3213 = distinct !DISubprogram(name: "xrealloc", scope: !523, file: !523, line: 51, type: !3214, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!67, !67, !69}
!3216 = !{!3212, !3217}
!3217 = !DILocalVariable(name: "n", arg: 2, scope: !3213, file: !523, line: 51, type: !69)
!3218 = !DILocation(line: 0, scope: !3213, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 116, column: 10, scope: !3199)
!3220 = !DILocation(line: 53, column: 8, scope: !3221, inlinedAt: !3219)
!3221 = distinct !DILexicalBlock(scope: !3213, file: !523, line: 53, column: 7)
!3222 = !DILocation(line: 53, column: 13, scope: !3221, inlinedAt: !3219)
!3223 = !DILocation(line: 53, column: 10, scope: !3221, inlinedAt: !3219)
!3224 = !DILocation(line: 57, column: 7, scope: !3225, inlinedAt: !3219)
!3225 = distinct !DILexicalBlock(scope: !3221, file: !523, line: 54, column: 5)
!3226 = !DILocation(line: 58, column: 7, scope: !3225, inlinedAt: !3219)
!3227 = !DILocation(line: 61, column: 7, scope: !3213, inlinedAt: !3219)
!3228 = !DILocation(line: 62, column: 8, scope: !3229, inlinedAt: !3219)
!3229 = distinct !DILexicalBlock(scope: !3213, file: !523, line: 62, column: 7)
!3230 = !DILocation(line: 62, column: 13, scope: !3229, inlinedAt: !3219)
!3231 = !DILocation(line: 62, column: 10, scope: !3229, inlinedAt: !3219)
!3232 = !DILocation(line: 63, column: 5, scope: !3229, inlinedAt: !3219)
!3233 = !DILocation(line: 116, column: 3, scope: !3199)
!3234 = !DILocation(line: 0, scope: !3213)
!3235 = !DILocation(line: 53, column: 8, scope: !3221)
!3236 = !DILocation(line: 53, column: 13, scope: !3221)
!3237 = !DILocation(line: 53, column: 10, scope: !3221)
!3238 = !DILocation(line: 57, column: 7, scope: !3225)
!3239 = !DILocation(line: 58, column: 7, scope: !3225)
!3240 = !DILocation(line: 61, column: 7, scope: !3213)
!3241 = !DILocation(line: 62, column: 8, scope: !3229)
!3242 = !DILocation(line: 62, column: 13, scope: !3229)
!3243 = !DILocation(line: 62, column: 10, scope: !3229)
!3244 = !DILocation(line: 63, column: 5, scope: !3229)
!3245 = !DILocation(line: 65, column: 1, scope: !3213)
!3246 = !DILocation(line: 0, scope: !526)
!3247 = !DILocation(line: 176, column: 14, scope: !526)
!3248 = !DILocation(line: 178, column: 9, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !526, file: !249, line: 178, column: 7)
!3250 = !DILocation(line: 178, column: 7, scope: !526)
!3251 = !DILocation(line: 180, column: 13, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !249, line: 180, column: 11)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !249, line: 179, column: 5)
!3254 = !DILocation(line: 180, column: 11, scope: !3253)
!3255 = !DILocation(line: 188, column: 30, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3252, file: !249, line: 181, column: 9)
!3257 = !DILocation(line: 189, column: 16, scope: !3256)
!3258 = !DILocation(line: 189, column: 13, scope: !3256)
!3259 = !DILocation(line: 190, column: 9, scope: !3256)
!3260 = !DILocation(line: 191, column: 11, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3253, file: !249, line: 191, column: 11)
!3262 = !DILocation(line: 191, column: 11, scope: !3253)
!3263 = !DILocation(line: 206, column: 7, scope: !526)
!3264 = !DILocation(line: 207, column: 25, scope: !526)
!3265 = !DILocation(line: 0, scope: !3213, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 207, column: 10, scope: !526)
!3267 = !DILocation(line: 53, column: 10, scope: !3221, inlinedAt: !3266)
!3268 = !DILocation(line: 192, column: 9, scope: !3261)
!3269 = !DILocation(line: 200, column: 69, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !249, line: 200, column: 11)
!3271 = distinct !DILexicalBlock(scope: !3249, file: !249, line: 195, column: 5)
!3272 = !DILocation(line: 201, column: 11, scope: !3270)
!3273 = !DILocation(line: 200, column: 11, scope: !3271)
!3274 = !DILocation(line: 202, column: 9, scope: !3270)
!3275 = !DILocation(line: 203, column: 14, scope: !3271)
!3276 = !DILocation(line: 203, column: 18, scope: !3271)
!3277 = !DILocation(line: 203, column: 9, scope: !3271)
!3278 = !DILocation(line: 53, column: 8, scope: !3221, inlinedAt: !3266)
!3279 = !DILocation(line: 57, column: 7, scope: !3225, inlinedAt: !3266)
!3280 = !DILocation(line: 58, column: 7, scope: !3225, inlinedAt: !3266)
!3281 = !DILocation(line: 61, column: 7, scope: !3213, inlinedAt: !3266)
!3282 = !DILocation(line: 62, column: 8, scope: !3229, inlinedAt: !3266)
!3283 = !DILocation(line: 62, column: 13, scope: !3229, inlinedAt: !3266)
!3284 = !DILocation(line: 62, column: 10, scope: !3229, inlinedAt: !3266)
!3285 = !DILocation(line: 63, column: 5, scope: !3229, inlinedAt: !3266)
!3286 = !DILocation(line: 207, column: 3, scope: !526)
!3287 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2450, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3288)
!3288 = !{!3289}
!3289 = !DILocalVariable(name: "n", arg: 1, scope: !3287, file: !249, line: 216, type: !69)
!3290 = !DILocation(line: 0, scope: !3287)
!3291 = !DILocation(line: 0, scope: !3178, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 218, column: 10, scope: !3287)
!3293 = !DILocation(line: 41, column: 13, scope: !3178, inlinedAt: !3292)
!3294 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3292)
!3295 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3292)
!3296 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3292)
!3297 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3292)
!3298 = !DILocation(line: 218, column: 3, scope: !3287)
!3299 = distinct !DISubprogram(name: "x2realloc", scope: !523, file: !523, line: 74, type: !3300, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!67, !67, !529}
!3302 = !{!3303, !3304}
!3303 = !DILocalVariable(name: "p", arg: 1, scope: !3299, file: !523, line: 74, type: !67)
!3304 = !DILocalVariable(name: "pn", arg: 2, scope: !3299, file: !523, line: 74, type: !529)
!3305 = !DILocation(line: 0, scope: !3299)
!3306 = !DILocation(line: 0, scope: !526, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 76, column: 10, scope: !3299)
!3308 = !DILocation(line: 176, column: 14, scope: !526, inlinedAt: !3307)
!3309 = !DILocation(line: 178, column: 9, scope: !3249, inlinedAt: !3307)
!3310 = !DILocation(line: 178, column: 7, scope: !526, inlinedAt: !3307)
!3311 = !DILocation(line: 180, column: 13, scope: !3252, inlinedAt: !3307)
!3312 = !DILocation(line: 180, column: 11, scope: !3253, inlinedAt: !3307)
!3313 = !DILocation(line: 191, column: 11, scope: !3261, inlinedAt: !3307)
!3314 = !DILocation(line: 191, column: 11, scope: !3253, inlinedAt: !3307)
!3315 = !DILocation(line: 206, column: 7, scope: !526, inlinedAt: !3307)
!3316 = !DILocation(line: 0, scope: !3213, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 207, column: 10, scope: !526, inlinedAt: !3307)
!3318 = !DILocation(line: 53, column: 10, scope: !3221, inlinedAt: !3317)
!3319 = !DILocation(line: 192, column: 9, scope: !3261, inlinedAt: !3307)
!3320 = !DILocation(line: 201, column: 11, scope: !3270, inlinedAt: !3307)
!3321 = !DILocation(line: 200, column: 11, scope: !3271, inlinedAt: !3307)
!3322 = !DILocation(line: 202, column: 9, scope: !3270, inlinedAt: !3307)
!3323 = !DILocation(line: 203, column: 14, scope: !3271, inlinedAt: !3307)
!3324 = !DILocation(line: 203, column: 18, scope: !3271, inlinedAt: !3307)
!3325 = !DILocation(line: 203, column: 9, scope: !3271, inlinedAt: !3307)
!3326 = !DILocation(line: 53, column: 8, scope: !3221, inlinedAt: !3317)
!3327 = !DILocation(line: 57, column: 7, scope: !3225, inlinedAt: !3317)
!3328 = !DILocation(line: 58, column: 7, scope: !3225, inlinedAt: !3317)
!3329 = !DILocation(line: 61, column: 7, scope: !3213, inlinedAt: !3317)
!3330 = !DILocation(line: 62, column: 8, scope: !3229, inlinedAt: !3317)
!3331 = !DILocation(line: 62, column: 13, scope: !3229, inlinedAt: !3317)
!3332 = !DILocation(line: 62, column: 10, scope: !3229, inlinedAt: !3317)
!3333 = !DILocation(line: 63, column: 5, scope: !3229, inlinedAt: !3317)
!3334 = !DILocation(line: 76, column: 3, scope: !3299)
!3335 = distinct !DISubprogram(name: "xzalloc", scope: !523, file: !523, line: 84, type: !3179, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3336)
!3336 = !{!3337}
!3337 = !DILocalVariable(name: "n", arg: 1, scope: !3335, file: !523, line: 84, type: !69)
!3338 = !DILocation(line: 0, scope: !3335)
!3339 = !DILocalVariable(name: "n", arg: 1, scope: !3340, file: !523, line: 93, type: !69)
!3340 = distinct !DISubprogram(name: "xcalloc", scope: !523, file: !523, line: 93, type: !3166, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3341)
!3341 = !{!3339, !3342, !3343}
!3342 = !DILocalVariable(name: "s", arg: 2, scope: !3340, file: !523, line: 93, type: !69)
!3343 = !DILocalVariable(name: "p", scope: !3340, file: !523, line: 95, type: !67)
!3344 = !DILocation(line: 0, scope: !3340, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 86, column: 10, scope: !3335)
!3346 = !DILocation(line: 100, column: 7, scope: !3347, inlinedAt: !3345)
!3347 = distinct !DILexicalBlock(scope: !3340, file: !523, line: 100, column: 7)
!3348 = !DILocation(line: 101, column: 7, scope: !3347, inlinedAt: !3345)
!3349 = !DILocation(line: 101, column: 18, scope: !3347, inlinedAt: !3345)
!3350 = !DILocation(line: 101, column: 16, scope: !3347, inlinedAt: !3345)
!3351 = !DILocation(line: 100, column: 7, scope: !3340, inlinedAt: !3345)
!3352 = !DILocation(line: 102, column: 5, scope: !3347, inlinedAt: !3345)
!3353 = !DILocation(line: 86, column: 3, scope: !3335)
!3354 = !DILocation(line: 0, scope: !3340)
!3355 = !DILocation(line: 100, column: 7, scope: !3347)
!3356 = !DILocation(line: 101, column: 7, scope: !3347)
!3357 = !DILocation(line: 101, column: 18, scope: !3347)
!3358 = !DILocation(line: 101, column: 16, scope: !3347)
!3359 = !DILocation(line: 100, column: 7, scope: !3340)
!3360 = !DILocation(line: 102, column: 5, scope: !3347)
!3361 = !DILocation(line: 103, column: 3, scope: !3340)
!3362 = distinct !DISubprogram(name: "xmemdup", scope: !523, file: !523, line: 111, type: !3363, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!67, !252, !69}
!3365 = !{!3366, !3367}
!3366 = !DILocalVariable(name: "p", arg: 1, scope: !3362, file: !523, line: 111, type: !252)
!3367 = !DILocalVariable(name: "s", arg: 2, scope: !3362, file: !523, line: 111, type: !69)
!3368 = !DILocation(line: 0, scope: !3362)
!3369 = !DILocation(line: 0, scope: !3178, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 113, column: 18, scope: !3362)
!3371 = !DILocation(line: 41, column: 13, scope: !3178, inlinedAt: !3370)
!3372 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3370)
!3373 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3370)
!3374 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3370)
!3375 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3370)
!3376 = !DILocalVariable(name: "__dest", arg: 1, scope: !3377, file: !1983, line: 31, type: !3380)
!3377 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 31, type: !3378, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3382)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!67, !3380, !3381, !69}
!3380 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3381 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!3382 = !{!3376, !3383, !3384}
!3383 = !DILocalVariable(name: "__src", arg: 2, scope: !3377, file: !1983, line: 31, type: !3381)
!3384 = !DILocalVariable(name: "__len", arg: 3, scope: !3377, file: !1983, line: 31, type: !69)
!3385 = !DILocation(line: 0, scope: !3377, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 113, column: 10, scope: !3362)
!3387 = !DILocation(line: 34, column: 10, scope: !3377, inlinedAt: !3386)
!3388 = !DILocation(line: 113, column: 3, scope: !3362)
!3389 = distinct !DISubprogram(name: "xstrdup", scope: !523, file: !523, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3390)
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "string", arg: 1, scope: !3389, file: !523, line: 119, type: !6)
!3392 = !DILocation(line: 0, scope: !3389)
!3393 = !DILocation(line: 121, column: 27, scope: !3389)
!3394 = !DILocation(line: 121, column: 43, scope: !3389)
!3395 = !DILocation(line: 0, scope: !3362, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 121, column: 10, scope: !3389)
!3397 = !DILocation(line: 0, scope: !3178, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 113, column: 18, scope: !3362, inlinedAt: !3396)
!3399 = !DILocation(line: 41, column: 13, scope: !3178, inlinedAt: !3398)
!3400 = !DILocation(line: 42, column: 8, scope: !3187, inlinedAt: !3398)
!3401 = !DILocation(line: 42, column: 15, scope: !3187, inlinedAt: !3398)
!3402 = !DILocation(line: 42, column: 10, scope: !3187, inlinedAt: !3398)
!3403 = !DILocation(line: 43, column: 5, scope: !3187, inlinedAt: !3398)
!3404 = !DILocation(line: 0, scope: !3377, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 113, column: 10, scope: !3362, inlinedAt: !3396)
!3406 = !DILocation(line: 34, column: 10, scope: !3377, inlinedAt: !3405)
!3407 = !DILocation(line: 121, column: 3, scope: !3389)
!3408 = distinct !DISubprogram(name: "xalloc_die", scope: !544, file: !544, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !543, retainedNodes: !4)
!3409 = !DILocation(line: 34, column: 10, scope: !3408)
!3410 = !DILocation(line: 34, column: 33, scope: !3408)
!3411 = !DILocation(line: 34, column: 3, scope: !3408)
!3412 = !DILocation(line: 40, column: 3, scope: !3408)
!3413 = distinct !DISubprogram(name: "xnanosleep", scope: !547, file: !547, line: 40, type: !473, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3414)
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "seconds", arg: 1, scope: !3413, file: !547, line: 40, type: !368)
!3416 = !DILocalVariable(name: "ts_sleep", scope: !3413, file: !547, line: 53, type: !560)
!3417 = !DILocation(line: 0, scope: !3413)
!3418 = !DILocation(line: 43, column: 35, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3413, file: !547, line: 43, column: 7)
!3420 = !DILocation(line: 43, column: 7, scope: !3413)
!3421 = !DILocation(line: 68, column: 7, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !547, line: 56, column: 5)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !547, line: 55, column: 3)
!3424 = distinct !DILexicalBlock(scope: !3413, file: !547, line: 55, column: 3)
!3425 = !DILocation(line: 46, column: 9, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !547, line: 44, column: 5)
!3427 = !DILocation(line: 47, column: 14, scope: !3426)
!3428 = !DILocation(line: 47, column: 20, scope: !3426)
!3429 = distinct !{!3429, !3430, !3431}
!3430 = !DILocation(line: 45, column: 7, scope: !3426)
!3431 = !DILocation(line: 47, column: 28, scope: !3426)
!3432 = !DILocation(line: 53, column: 3, scope: !3413)
!3433 = !DILocation(line: 53, column: 19, scope: !3413)
!3434 = !DILocation(line: 53, column: 30, scope: !3413)
!3435 = !DILocation(line: 68, column: 13, scope: !3422)
!3436 = !DILocation(line: 69, column: 11, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3422, file: !547, line: 69, column: 11)
!3438 = !DILocation(line: 69, column: 44, scope: !3437)
!3439 = !DILocation(line: 69, column: 11, scope: !3422)
!3440 = !DILocation(line: 71, column: 11, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3422, file: !547, line: 71, column: 11)
!3442 = !DILocation(line: 71, column: 26, scope: !3441)
!3443 = distinct !{!3443, !3444, !3445}
!3444 = !DILocation(line: 55, column: 3, scope: !3424)
!3445 = !DILocation(line: 73, column: 5, scope: !3424)
!3446 = !DILocation(line: 76, column: 1, scope: !3413)
!3447 = distinct !DISubprogram(name: "xstrtod", scope: !574, file: !574, line: 44, type: !460, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3448)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3449 = !DILocalVariable(name: "str", arg: 1, scope: !3447, file: !574, line: 44, type: !6)
!3450 = !DILocalVariable(name: "ptr", arg: 2, scope: !3447, file: !574, line: 44, type: !462)
!3451 = !DILocalVariable(name: "result", arg: 3, scope: !3447, file: !574, line: 44, type: !463)
!3452 = !DILocalVariable(name: "convert", arg: 4, scope: !3447, file: !574, line: 45, type: !464)
!3453 = !DILocalVariable(name: "val", scope: !3447, file: !574, line: 47, type: !368)
!3454 = !DILocalVariable(name: "terminator", scope: !3447, file: !574, line: 48, type: !25)
!3455 = !DILocalVariable(name: "ok", scope: !3447, file: !574, line: 49, type: !92)
!3456 = !DILocation(line: 0, scope: !3447)
!3457 = !DILocation(line: 48, column: 3, scope: !3447)
!3458 = !DILocation(line: 51, column: 3, scope: !3447)
!3459 = !DILocation(line: 51, column: 9, scope: !3447)
!3460 = !DILocation(line: 52, column: 9, scope: !3447)
!3461 = !DILocation(line: 55, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3447, file: !574, line: 55, column: 7)
!3463 = !DILocation(line: 55, column: 18, scope: !3462)
!3464 = !DILocation(line: 55, column: 25, scope: !3462)
!3465 = !DILocation(line: 55, column: 33, scope: !3462)
!3466 = !DILocation(line: 55, column: 41, scope: !3462)
!3467 = !DILocation(line: 55, column: 44, scope: !3462)
!3468 = !DILocation(line: 55, column: 56, scope: !3462)
!3469 = !DILocation(line: 55, column: 7, scope: !3447)
!3470 = !DILocation(line: 62, column: 15, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !574, line: 62, column: 11)
!3472 = distinct !DILexicalBlock(scope: !3462, file: !574, line: 58, column: 5)
!3473 = !DILocation(line: 62, column: 20, scope: !3471)
!3474 = !DILocation(line: 62, column: 23, scope: !3471)
!3475 = !DILocation(line: 62, column: 29, scope: !3471)
!3476 = !DILocation(line: 62, column: 11, scope: !3472)
!3477 = !DILocation(line: 66, column: 11, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3447, file: !574, line: 66, column: 7)
!3479 = !DILocation(line: 66, column: 7, scope: !3447)
!3480 = !DILocation(line: 67, column: 10, scope: !3478)
!3481 = !DILocation(line: 67, column: 5, scope: !3478)
!3482 = !DILocation(line: 69, column: 11, scope: !3447)
!3483 = !DILocation(line: 71, column: 1, scope: !3447)
!3484 = !DILocation(line: 70, column: 3, scope: !3447)
!3485 = distinct !DISubprogram(name: "rpl_calloc", scope: !577, file: !577, line: 42, type: !3166, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !3486)
!3486 = !{!3487, !3488, !3489, !3490}
!3487 = !DILocalVariable(name: "n", arg: 1, scope: !3485, file: !577, line: 42, type: !69)
!3488 = !DILocalVariable(name: "s", arg: 2, scope: !3485, file: !577, line: 42, type: !69)
!3489 = !DILocalVariable(name: "result", scope: !3485, file: !577, line: 44, type: !67)
!3490 = !DILocalVariable(name: "bytes", scope: !3491, file: !577, line: 56, type: !69)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !577, line: 53, column: 5)
!3492 = distinct !DILexicalBlock(scope: !3485, file: !577, line: 47, column: 7)
!3493 = !DILocation(line: 0, scope: !3485)
!3494 = !DILocation(line: 47, column: 9, scope: !3492)
!3495 = !DILocation(line: 47, column: 19, scope: !3492)
!3496 = !DILocation(line: 47, column: 14, scope: !3492)
!3497 = !DILocation(line: 0, scope: !3491)
!3498 = !DILocation(line: 57, column: 21, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !577, line: 57, column: 11)
!3500 = !DILocation(line: 57, column: 11, scope: !3491)
!3501 = !DILocation(line: 59, column: 11, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3499, file: !577, line: 58, column: 9)
!3503 = !DILocation(line: 59, column: 17, scope: !3502)
!3504 = !DILocation(line: 65, column: 12, scope: !3485)
!3505 = !DILocation(line: 72, column: 3, scope: !3485)
!3506 = !DILocation(line: 73, column: 1, scope: !3485)
!3507 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !579, file: !579, line: 86, type: !3508, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3514)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!69, !3510, !6, !69, !3511}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1725, line: 6, baseType: !3513)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !585)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521}
!3515 = !DILocalVariable(name: "pwc", arg: 1, scope: !3507, file: !579, line: 86, type: !3510)
!3516 = !DILocalVariable(name: "s", arg: 2, scope: !3507, file: !579, line: 86, type: !6)
!3517 = !DILocalVariable(name: "n", arg: 3, scope: !3507, file: !579, line: 86, type: !69)
!3518 = !DILocalVariable(name: "ps", arg: 4, scope: !3507, file: !579, line: 86, type: !3511)
!3519 = !DILocalVariable(name: "ret", scope: !3507, file: !579, line: 88, type: !69)
!3520 = !DILocalVariable(name: "wc", scope: !3507, file: !579, line: 89, type: !1729)
!3521 = !DILocalVariable(name: "uc", scope: !3522, file: !579, line: 156, type: !1602)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !579, line: 155, column: 5)
!3523 = distinct !DILexicalBlock(scope: !3507, file: !579, line: 154, column: 7)
!3524 = !DILocation(line: 0, scope: !3507)
!3525 = !DILocation(line: 89, column: 3, scope: !3507)
!3526 = !DILocation(line: 105, column: 9, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3507, file: !579, line: 105, column: 7)
!3528 = !DILocation(line: 105, column: 7, scope: !3507)
!3529 = !DILocation(line: 145, column: 9, scope: !3507)
!3530 = !DILocation(line: 154, column: 19, scope: !3523)
!3531 = !DILocation(line: 154, column: 31, scope: !3523)
!3532 = !DILocation(line: 154, column: 26, scope: !3523)
!3533 = !DILocation(line: 154, column: 41, scope: !3523)
!3534 = !DILocation(line: 154, column: 7, scope: !3507)
!3535 = !DILocation(line: 156, column: 26, scope: !3522)
!3536 = !DILocation(line: 0, scope: !3522)
!3537 = !DILocation(line: 157, column: 14, scope: !3522)
!3538 = !DILocation(line: 157, column: 12, scope: !3522)
!3539 = !DILocation(line: 163, column: 1, scope: !3507)
!3540 = distinct !DISubprogram(name: "rpl_nanosleep", scope: !598, file: !598, line: 46, type: !606, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3541)
!3541 = !{!3542, !3543, !3544, !3547, !3548, !3549}
!3542 = !DILocalVariable(name: "requested_delay", arg: 1, scope: !3540, file: !598, line: 46, type: !608)
!3543 = !DILocalVariable(name: "remaining_delay", arg: 2, scope: !3540, file: !598, line: 47, type: !614)
!3544 = !DILocalVariable(name: "limit", scope: !3545, file: !598, line: 65, type: !3546)
!3545 = distinct !DILexicalBlock(scope: !3540, file: !598, line: 62, column: 3)
!3546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!3547 = !DILocalVariable(name: "seconds", scope: !3545, file: !598, line: 66, type: !549)
!3548 = !DILocalVariable(name: "intermediate", scope: !3545, file: !598, line: 67, type: !610)
!3549 = !DILocalVariable(name: "result", scope: !3550, file: !598, line: 72, type: !18)
!3550 = distinct !DILexicalBlock(scope: !3545, file: !598, line: 71, column: 7)
!3551 = !DILocation(line: 0, scope: !3540)
!3552 = !DILocation(line: 56, column: 24, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3540, file: !598, line: 56, column: 7)
!3554 = !{!3555, !2486, i64 8}
!3555 = !{!"timespec", !2486, i64 0, !2486, i64 8}
!3556 = !DILocation(line: 56, column: 36, scope: !3553)
!3557 = !DILocation(line: 58, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3553, file: !598, line: 57, column: 5)
!3559 = !DILocation(line: 58, column: 13, scope: !3558)
!3560 = !DILocation(line: 59, column: 7, scope: !3558)
!3561 = !DILocation(line: 0, scope: !3545)
!3562 = !DILocation(line: 66, column: 39, scope: !3545)
!3563 = !{!3555, !2486, i64 0}
!3564 = !DILocation(line: 67, column: 5, scope: !3545)
!3565 = !DILocation(line: 67, column: 21, scope: !3545)
!3566 = !DILocation(line: 68, column: 18, scope: !3545)
!3567 = !DILocation(line: 70, column: 5, scope: !3545)
!3568 = !DILocation(line: 70, column: 18, scope: !3545)
!3569 = !DILocation(line: 73, column: 29, scope: !3550)
!3570 = !DILocation(line: 74, column: 18, scope: !3550)
!3571 = !DILocation(line: 0, scope: !3550)
!3572 = !DILocation(line: 75, column: 17, scope: !3550)
!3573 = !DILocation(line: 76, column: 13, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3550, file: !598, line: 76, column: 13)
!3575 = !DILocation(line: 76, column: 13, scope: !3550)
!3576 = !DILocation(line: 78, column: 17, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !598, line: 78, column: 17)
!3578 = distinct !DILexicalBlock(scope: !3574, file: !598, line: 77, column: 11)
!3579 = !DILocation(line: 78, column: 17, scope: !3578)
!3580 = !DILocation(line: 79, column: 32, scope: !3577)
!3581 = !DILocation(line: 79, column: 39, scope: !3577)
!3582 = !DILocation(line: 79, column: 15, scope: !3577)
!3583 = !DILocation(line: 84, column: 25, scope: !3545)
!3584 = !DILocation(line: 85, column: 12, scope: !3545)
!3585 = !DILocation(line: 85, column: 5, scope: !3545)
!3586 = !DILocation(line: 86, column: 3, scope: !3540)
!3587 = !DILocation(line: 87, column: 1, scope: !3540)
!3588 = distinct !DISubprogram(name: "c_strtod", scope: !363, file: !363, line: 65, type: !465, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !3589)
!3589 = !{!3590, !3591, !3592, !3593}
!3590 = !DILocalVariable(name: "nptr", arg: 1, scope: !3588, file: !363, line: 65, type: !6)
!3591 = !DILocalVariable(name: "endptr", arg: 2, scope: !3588, file: !363, line: 65, type: !369)
!3592 = !DILocalVariable(name: "r", scope: !3588, file: !363, line: 67, type: !368)
!3593 = !DILocalVariable(name: "locale", scope: !3588, file: !363, line: 73, type: !389)
!3594 = !DILocation(line: 0, scope: !3588)
!3595 = !DILocation(line: 57, column: 8, scope: !3596, inlinedAt: !3600)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !363, line: 57, column: 7)
!3597 = distinct !DISubprogram(name: "c_locale", scope: !363, file: !363, line: 55, type: !3598, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !4)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!389}
!3600 = distinct !DILocation(line: 73, column: 21, scope: !3588)
!3601 = !DILocation(line: 57, column: 7, scope: !3597, inlinedAt: !3600)
!3602 = !DILocation(line: 58, column: 22, scope: !3596, inlinedAt: !3600)
!3603 = !DILocation(line: 58, column: 20, scope: !3596, inlinedAt: !3600)
!3604 = !DILocation(line: 58, column: 5, scope: !3596, inlinedAt: !3600)
!3605 = !DILocation(line: 59, column: 10, scope: !3597, inlinedAt: !3600)
!3606 = !DILocation(line: 74, column: 8, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3588, file: !363, line: 74, column: 7)
!3608 = !DILocation(line: 74, column: 7, scope: !3588)
!3609 = !DILocation(line: 76, column: 11, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !363, line: 76, column: 11)
!3611 = distinct !DILexicalBlock(scope: !3607, file: !363, line: 75, column: 5)
!3612 = !DILocation(line: 76, column: 11, scope: !3611)
!3613 = !DILocation(line: 77, column: 17, scope: !3610)
!3614 = !DILocation(line: 77, column: 9, scope: !3610)
!3615 = !DILocation(line: 83, column: 7, scope: !3588)
!3616 = !DILocation(line: 134, column: 3, scope: !3588)
!3617 = !DILocation(line: 135, column: 1, scope: !3588)
!3618 = distinct !DISubprogram(name: "close_stream", scope: !616, file: !616, line: 56, type: !3619, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3623)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!18, !3621}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3042, line: 7, baseType: !623)
!3623 = !{!3624, !3625, !3627, !3628}
!3624 = !DILocalVariable(name: "stream", arg: 1, scope: !3618, file: !616, line: 56, type: !3621)
!3625 = !DILocalVariable(name: "some_pending", scope: !3618, file: !616, line: 58, type: !3626)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3627 = !DILocalVariable(name: "prev_fail", scope: !3618, file: !616, line: 59, type: !3626)
!3628 = !DILocalVariable(name: "fclose_fail", scope: !3618, file: !616, line: 60, type: !3626)
!3629 = !DILocation(line: 0, scope: !3618)
!3630 = !DILocation(line: 58, column: 30, scope: !3618)
!3631 = !DILocalVariable(name: "__stream", arg: 1, scope: !3632, file: !3633, line: 135, type: !3621)
!3632 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3633, file: !3633, line: 135, type: !3619, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3634)
!3633 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3634 = !{!3631}
!3635 = !DILocation(line: 0, scope: !3632, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 59, column: 27, scope: !3618)
!3637 = !DILocation(line: 137, column: 10, scope: !3632, inlinedAt: !3636)
!3638 = !{!3639, !1294, i64 0}
!3639 = !{!"_IO_FILE", !1294, i64 0, !1225, i64 8, !1225, i64 16, !1225, i64 24, !1225, i64 32, !1225, i64 40, !1225, i64 48, !1225, i64 56, !1225, i64 64, !1225, i64 72, !1225, i64 80, !1225, i64 88, !1225, i64 96, !1225, i64 104, !1294, i64 112, !1294, i64 116, !2486, i64 120, !1976, i64 128, !1226, i64 130, !1226, i64 131, !1225, i64 136, !2486, i64 144, !1225, i64 152, !1225, i64 160, !1225, i64 168, !1225, i64 176, !2486, i64 184, !1294, i64 192, !1226, i64 196}
!3640 = !DILocation(line: 59, column: 43, scope: !3618)
!3641 = !DILocation(line: 60, column: 29, scope: !3618)
!3642 = !DILocation(line: 60, column: 45, scope: !3618)
!3643 = !DILocation(line: 70, column: 17, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3618, file: !616, line: 70, column: 7)
!3645 = !DILocation(line: 58, column: 50, scope: !3618)
!3646 = !DILocation(line: 70, column: 33, scope: !3644)
!3647 = !DILocation(line: 70, column: 53, scope: !3644)
!3648 = !DILocation(line: 70, column: 59, scope: !3644)
!3649 = !DILocation(line: 70, column: 7, scope: !3618)
!3650 = !DILocation(line: 72, column: 11, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3644, file: !616, line: 71, column: 5)
!3652 = !DILocation(line: 73, column: 9, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3651, file: !616, line: 72, column: 11)
!3654 = !DILocation(line: 73, column: 15, scope: !3653)
!3655 = !DILocation(line: 78, column: 1, scope: !3618)
!3656 = distinct !DISubprogram(name: "dtotimespec", scope: !655, file: !655, line: 30, type: !3657, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3663)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!3659, !368}
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !561, line: 10, size: 128, elements: !3660)
!3660 = !{!3661, !3662}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3659, file: !561, line: 12, baseType: !551, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3659, file: !561, line: 16, baseType: !565, size: 64, offset: 64)
!3663 = !{!3664, !3665, !3669, !3670}
!3664 = !DILocalVariable(name: "sec", arg: 1, scope: !3656, file: !655, line: 30, type: !368)
!3665 = !DILocalVariable(name: "s", scope: !3666, file: !655, line: 38, type: !549)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !655, line: 37, column: 5)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !655, line: 34, column: 12)
!3668 = distinct !DILexicalBlock(scope: !3656, file: !655, line: 32, column: 7)
!3669 = !DILocalVariable(name: "frac", scope: !3666, file: !655, line: 39, type: !368)
!3670 = !DILocalVariable(name: "ns", scope: !3666, file: !655, line: 40, type: !45)
!3671 = !DILocation(line: 0, scope: !3656)
!3672 = !DILocation(line: 32, column: 32, scope: !3668)
!3673 = !DILocation(line: 32, column: 7, scope: !3656)
!3674 = !DILocation(line: 34, column: 19, scope: !3667)
!3675 = !DILocation(line: 34, column: 12, scope: !3668)
!3676 = !DILocation(line: 38, column: 18, scope: !3666)
!3677 = !DILocation(line: 0, scope: !3666)
!3678 = !DILocation(line: 39, column: 42, scope: !3666)
!3679 = !DILocation(line: 39, column: 40, scope: !3666)
!3680 = !DILocation(line: 39, column: 33, scope: !3666)
!3681 = !DILocation(line: 40, column: 17, scope: !3666)
!3682 = !DILocation(line: 41, column: 13, scope: !3666)
!3683 = !DILocation(line: 41, column: 16, scope: !3666)
!3684 = !DILocation(line: 41, column: 10, scope: !3666)
!3685 = !DILocation(line: 42, column: 15, scope: !3666)
!3686 = !DILocation(line: 42, column: 9, scope: !3666)
!3687 = !DILocation(line: 43, column: 10, scope: !3666)
!3688 = !DILocation(line: 45, column: 14, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3666, file: !655, line: 45, column: 11)
!3690 = !DILocation(line: 45, column: 11, scope: !3666)
!3691 = !DILocation(line: 0, scope: !3668)
!3692 = !DILocation(line: 53, column: 1, scope: !3656)
!3693 = distinct !DISubprogram(name: "hard_locale", scope: !662, file: !662, line: 27, type: !595, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3694)
!3694 = !{!3695, !3696}
!3695 = !DILocalVariable(name: "category", arg: 1, scope: !3693, file: !662, line: 27, type: !18)
!3696 = !DILocalVariable(name: "locale", scope: !3693, file: !662, line: 29, type: !3697)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3698)
!3698 = !{!3699}
!3699 = !DISubrange(count: 257)
!3700 = !DILocation(line: 0, scope: !3693)
!3701 = !DILocation(line: 29, column: 3, scope: !3693)
!3702 = !DILocation(line: 29, column: 8, scope: !3693)
!3703 = !DILocation(line: 31, column: 7, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3693, file: !662, line: 31, column: 7)
!3705 = !DILocation(line: 31, column: 7, scope: !3693)
!3706 = !DILocation(line: 34, column: 12, scope: !3693)
!3707 = !DILocation(line: 34, column: 38, scope: !3693)
!3708 = !DILocation(line: 34, column: 41, scope: !3693)
!3709 = !DILocation(line: 34, column: 66, scope: !3693)
!3710 = !DILocation(line: 35, column: 1, scope: !3693)
!3711 = distinct !DISubprogram(name: "locale_charset", scope: !669, file: !669, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3712)
!3712 = !{!3713}
!3713 = !DILocalVariable(name: "codeset", scope: !3711, file: !669, line: 833, type: !6)
!3714 = !DILocation(line: 847, column: 13, scope: !3711)
!3715 = !DILocation(line: 0, scope: !3711)
!3716 = !DILocation(line: 911, column: 15, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3711, file: !669, line: 911, column: 7)
!3718 = !DILocation(line: 911, column: 7, scope: !3711)
!3719 = !DILocation(line: 1070, column: 13, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !669, line: 1070, column: 13)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !669, line: 1060, column: 7)
!3722 = distinct !DILexicalBlock(scope: !3711, file: !669, line: 1019, column: 3)
!3723 = !DILocation(line: 1070, column: 24, scope: !3720)
!3724 = !DILocation(line: 1070, column: 13, scope: !3721)
!3725 = !DILocation(line: 1158, column: 3, scope: !3711)
!3726 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1062, file: !1062, line: 269, type: !3727, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1061, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!18, !18, !25, !69}
!3729 = !{!3730, !3731, !3732}
!3730 = !DILocalVariable(name: "category", arg: 1, scope: !3726, file: !1062, line: 269, type: !18)
!3731 = !DILocalVariable(name: "buf", arg: 2, scope: !3726, file: !1062, line: 269, type: !25)
!3732 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3726, file: !1062, line: 269, type: !69)
!3733 = !DILocation(line: 0, scope: !3726)
!3734 = !DILocalVariable(name: "category", arg: 1, scope: !3735, file: !1062, line: 91, type: !18)
!3735 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1062, file: !1062, line: 91, type: !3727, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1061, retainedNodes: !3736)
!3736 = !{!3734, !3737, !3738, !3739, !3740}
!3737 = !DILocalVariable(name: "buf", arg: 2, scope: !3735, file: !1062, line: 91, type: !25)
!3738 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3735, file: !1062, line: 91, type: !69)
!3739 = !DILocalVariable(name: "result", scope: !3735, file: !1062, line: 140, type: !6)
!3740 = !DILocalVariable(name: "length", scope: !3741, file: !1062, line: 154, type: !69)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !1062, line: 153, column: 5)
!3742 = distinct !DILexicalBlock(scope: !3735, file: !1062, line: 142, column: 7)
!3743 = !DILocation(line: 0, scope: !3735, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 274, column: 10, scope: !3726)
!3745 = !DILocalVariable(name: "category", arg: 1, scope: !3746, file: !1062, line: 60, type: !18)
!3746 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1062, file: !1062, line: 60, type: !3747, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1061, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!6, !18}
!3749 = !{!3745, !3750}
!3750 = !DILocalVariable(name: "result", scope: !3746, file: !1062, line: 62, type: !6)
!3751 = !DILocation(line: 0, scope: !3746, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 140, column: 24, scope: !3735, inlinedAt: !3744)
!3753 = !DILocation(line: 62, column: 24, scope: !3746, inlinedAt: !3752)
!3754 = !DILocation(line: 142, column: 14, scope: !3742, inlinedAt: !3744)
!3755 = !DILocation(line: 142, column: 7, scope: !3735, inlinedAt: !3744)
!3756 = !DILocation(line: 145, column: 19, scope: !3757, inlinedAt: !3744)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !1062, line: 145, column: 11)
!3758 = distinct !DILexicalBlock(scope: !3742, file: !1062, line: 143, column: 5)
!3759 = !DILocation(line: 145, column: 11, scope: !3758, inlinedAt: !3744)
!3760 = !DILocation(line: 149, column: 16, scope: !3757, inlinedAt: !3744)
!3761 = !DILocation(line: 149, column: 9, scope: !3757, inlinedAt: !3744)
!3762 = !DILocation(line: 154, column: 23, scope: !3741, inlinedAt: !3744)
!3763 = !DILocation(line: 0, scope: !3741, inlinedAt: !3744)
!3764 = !DILocation(line: 155, column: 18, scope: !3765, inlinedAt: !3744)
!3765 = distinct !DILexicalBlock(scope: !3741, file: !1062, line: 155, column: 11)
!3766 = !DILocation(line: 155, column: 11, scope: !3741, inlinedAt: !3744)
!3767 = !DILocation(line: 157, column: 39, scope: !3768, inlinedAt: !3744)
!3768 = distinct !DILexicalBlock(scope: !3765, file: !1062, line: 156, column: 9)
!3769 = !DILocalVariable(name: "__dest", arg: 1, scope: !3770, file: !1983, line: 31, type: !3380)
!3770 = distinct !DISubprogram(name: "memcpy", scope: !1983, file: !1983, line: 31, type: !3378, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1061, retainedNodes: !3771)
!3771 = !{!3769, !3772, !3773}
!3772 = !DILocalVariable(name: "__src", arg: 2, scope: !3770, file: !1983, line: 31, type: !3381)
!3773 = !DILocalVariable(name: "__len", arg: 3, scope: !3770, file: !1983, line: 31, type: !69)
!3774 = !DILocation(line: 0, scope: !3770, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 157, column: 11, scope: !3768, inlinedAt: !3744)
!3776 = !DILocation(line: 34, column: 10, scope: !3770, inlinedAt: !3775)
!3777 = !DILocation(line: 158, column: 11, scope: !3768, inlinedAt: !3744)
!3778 = !DILocation(line: 162, column: 23, scope: !3779, inlinedAt: !3744)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !1062, line: 162, column: 15)
!3780 = distinct !DILexicalBlock(scope: !3765, file: !1062, line: 161, column: 9)
!3781 = !DILocation(line: 162, column: 15, scope: !3780, inlinedAt: !3744)
!3782 = !DILocation(line: 167, column: 44, scope: !3783, inlinedAt: !3744)
!3783 = distinct !DILexicalBlock(scope: !3779, file: !1062, line: 163, column: 13)
!3784 = !DILocation(line: 0, scope: !3770, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 167, column: 15, scope: !3783, inlinedAt: !3744)
!3786 = !DILocation(line: 34, column: 10, scope: !3770, inlinedAt: !3785)
!3787 = !DILocation(line: 168, column: 15, scope: !3783, inlinedAt: !3744)
!3788 = !DILocation(line: 168, column: 32, scope: !3783, inlinedAt: !3744)
!3789 = !DILocation(line: 169, column: 13, scope: !3783, inlinedAt: !3744)
!3790 = !DILocation(line: 0, scope: !3742, inlinedAt: !3744)
!3791 = !DILocation(line: 274, column: 3, scope: !3726)
!3792 = distinct !DISubprogram(name: "setlocale_null", scope: !1062, file: !1062, line: 301, type: !3747, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1061, retainedNodes: !3793)
!3793 = !{!3794}
!3794 = !DILocalVariable(name: "category", arg: 1, scope: !3792, file: !1062, line: 301, type: !18)
!3795 = !DILocation(line: 0, scope: !3792)
!3796 = !DILocation(line: 0, scope: !3746, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 304, column: 10, scope: !3792)
!3798 = !DILocation(line: 62, column: 24, scope: !3746, inlinedAt: !3797)
!3799 = !DILocation(line: 304, column: 3, scope: !3792)
!3800 = distinct !DISubprogram(name: "rpl_fclose", scope: !1065, file: !1065, line: 58, type: !3801, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1064, retainedNodes: !3805)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!18, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3042, line: 7, baseType: !1071)
!3805 = !{!3806, !3807, !3808, !3809}
!3806 = !DILocalVariable(name: "fp", arg: 1, scope: !3800, file: !1065, line: 58, type: !3803)
!3807 = !DILocalVariable(name: "saved_errno", scope: !3800, file: !1065, line: 60, type: !18)
!3808 = !DILocalVariable(name: "fd", scope: !3800, file: !1065, line: 61, type: !18)
!3809 = !DILocalVariable(name: "result", scope: !3800, file: !1065, line: 62, type: !18)
!3810 = !DILocation(line: 0, scope: !3800)
!3811 = !DILocation(line: 65, column: 8, scope: !3800)
!3812 = !DILocation(line: 66, column: 10, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3800, file: !1065, line: 66, column: 7)
!3814 = !DILocation(line: 66, column: 7, scope: !3800)
!3815 = !DILocation(line: 67, column: 12, scope: !3813)
!3816 = !DILocation(line: 67, column: 5, scope: !3813)
!3817 = !DILocation(line: 72, column: 9, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3800, file: !1065, line: 72, column: 7)
!3819 = !DILocation(line: 72, column: 23, scope: !3818)
!3820 = !DILocation(line: 72, column: 33, scope: !3818)
!3821 = !DILocation(line: 72, column: 26, scope: !3818)
!3822 = !DILocation(line: 72, column: 59, scope: !3818)
!3823 = !DILocation(line: 73, column: 7, scope: !3818)
!3824 = !DILocation(line: 73, column: 10, scope: !3818)
!3825 = !DILocation(line: 72, column: 7, scope: !3800)
!3826 = !DILocation(line: 100, column: 12, scope: !3800)
!3827 = !DILocation(line: 105, column: 7, scope: !3800)
!3828 = !DILocation(line: 74, column: 19, scope: !3818)
!3829 = !DILocation(line: 105, column: 19, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3800, file: !1065, line: 105, column: 7)
!3831 = !DILocation(line: 107, column: 13, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3830, file: !1065, line: 106, column: 5)
!3833 = !DILocation(line: 109, column: 5, scope: !3832)
!3834 = !DILocation(line: 112, column: 1, scope: !3800)
!3835 = distinct !DISubprogram(name: "rpl_fflush", scope: !1108, file: !1108, line: 129, type: !3836, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1107, retainedNodes: !3840)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!18, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3042, line: 7, baseType: !1114)
!3840 = !{!3841}
!3841 = !DILocalVariable(name: "stream", arg: 1, scope: !3835, file: !1108, line: 129, type: !3838)
!3842 = !DILocation(line: 0, scope: !3835)
!3843 = !DILocation(line: 150, column: 14, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3835, file: !1108, line: 150, column: 7)
!3845 = !DILocation(line: 150, column: 22, scope: !3844)
!3846 = !DILocation(line: 150, column: 27, scope: !3844)
!3847 = !DILocation(line: 150, column: 7, scope: !3835)
!3848 = !DILocation(line: 151, column: 12, scope: !3844)
!3849 = !DILocation(line: 151, column: 5, scope: !3844)
!3850 = !DILocalVariable(name: "fp", arg: 1, scope: !3851, file: !1108, line: 41, type: !3838)
!3851 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1108, file: !1108, line: 41, type: !3852, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1107, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3838}
!3854 = !{!3850}
!3855 = !DILocation(line: 0, scope: !3851, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 156, column: 3, scope: !3835)
!3857 = !DILocation(line: 43, column: 11, scope: !3858, inlinedAt: !3856)
!3858 = distinct !DILexicalBlock(scope: !3851, file: !1108, line: 43, column: 7)
!3859 = !DILocation(line: 43, column: 18, scope: !3858, inlinedAt: !3856)
!3860 = !DILocation(line: 43, column: 7, scope: !3851, inlinedAt: !3856)
!3861 = !DILocation(line: 45, column: 5, scope: !3858, inlinedAt: !3856)
!3862 = !DILocation(line: 158, column: 10, scope: !3835)
!3863 = !DILocation(line: 158, column: 3, scope: !3835)
!3864 = !DILocation(line: 235, column: 1, scope: !3835)
!3865 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1149, file: !1149, line: 28, type: !3866, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1148, retainedNodes: !3871)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!18, !3868, !3870, !18}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3042, line: 7, baseType: !1155)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3871 = !{!3872, !3873, !3874, !3875}
!3872 = !DILocalVariable(name: "fp", arg: 1, scope: !3865, file: !1149, line: 28, type: !3868)
!3873 = !DILocalVariable(name: "offset", arg: 2, scope: !3865, file: !1149, line: 28, type: !3870)
!3874 = !DILocalVariable(name: "whence", arg: 3, scope: !3865, file: !1149, line: 28, type: !18)
!3875 = !DILocalVariable(name: "pos", scope: !3876, file: !1149, line: 117, type: !3870)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !1149, line: 113, column: 5)
!3877 = distinct !DILexicalBlock(scope: !3865, file: !1149, line: 52, column: 7)
!3878 = !DILocation(line: 0, scope: !3865)
!3879 = !DILocation(line: 52, column: 11, scope: !3877)
!3880 = !{!3639, !1225, i64 16}
!3881 = !DILocation(line: 52, column: 31, scope: !3877)
!3882 = !{!3639, !1225, i64 8}
!3883 = !DILocation(line: 52, column: 24, scope: !3877)
!3884 = !DILocation(line: 53, column: 7, scope: !3877)
!3885 = !DILocation(line: 53, column: 14, scope: !3877)
!3886 = !{!3639, !1225, i64 40}
!3887 = !DILocation(line: 53, column: 35, scope: !3877)
!3888 = !{!3639, !1225, i64 32}
!3889 = !DILocation(line: 53, column: 28, scope: !3877)
!3890 = !DILocation(line: 54, column: 7, scope: !3877)
!3891 = !DILocation(line: 54, column: 14, scope: !3877)
!3892 = !{!3639, !1225, i64 72}
!3893 = !DILocation(line: 54, column: 28, scope: !3877)
!3894 = !DILocation(line: 52, column: 7, scope: !3865)
!3895 = !DILocation(line: 117, column: 26, scope: !3876)
!3896 = !DILocation(line: 117, column: 19, scope: !3876)
!3897 = !DILocation(line: 0, scope: !3876)
!3898 = !DILocation(line: 118, column: 15, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3876, file: !1149, line: 118, column: 11)
!3900 = !DILocation(line: 118, column: 11, scope: !3876)
!3901 = !DILocation(line: 129, column: 11, scope: !3876)
!3902 = !DILocation(line: 129, column: 18, scope: !3876)
!3903 = !DILocation(line: 130, column: 11, scope: !3876)
!3904 = !DILocation(line: 130, column: 19, scope: !3876)
!3905 = !{!3639, !2486, i64 144}
!3906 = !DILocation(line: 161, column: 7, scope: !3876)
!3907 = !DILocation(line: 163, column: 10, scope: !3865)
!3908 = !DILocation(line: 163, column: 3, scope: !3865)
!3909 = !DILocation(line: 164, column: 1, scope: !3865)
